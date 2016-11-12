-- Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 16.0.0 Build 211 04/27/2016 SJ Lite Edition"
-- CREATED		"Sat Nov 12 02:43:05 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY deinterleaver_vai IS 
	PORT
	(
		Flag :  IN  STD_LOGIC;
		Clock :  IN  STD_LOGIC;
		Input :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Input_payload :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		readWrite :  OUT  STD_LOGIC;
		depth_counter_carry :  OUT  STD_LOGIC;
		carry_sig :  OUT  STD_LOGIC;
		enable_flush :  OUT  STD_LOGIC;
		flush_counter_carry :  OUT  STD_LOGIC;
		readWrite_2 :  OUT  STD_LOGIC;
		carry_sig2 :  OUT  STD_LOGIC;
		depth_counter_carry2 :  OUT  STD_LOGIC;
		enable_flush2 :  OUT  STD_LOGIC;
		start_flushing :  OUT  STD_LOGIC;
		Flag_2 :  OUT  STD_LOGIC;
		finished_flushing :  OUT  STD_LOGIC;
		address_calc :  OUT  STD_LOGIC_VECTOR(12 DOWNTO 0);
		address_sel :  OUT  STD_LOGIC_VECTOR(12 DOWNTO 0);
		address_sel_payload :  OUT  STD_LOGIC_VECTOR(12 DOWNTO 0);
		depth_count :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		depth_count_payload :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		flush_count :  OUT  STD_LOGIC_VECTOR(12 DOWNTO 0);
		input_deint_heade :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		InputPayload :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		InputSR2 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		iterator_sig :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		iterator_sig_payload :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		Output :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		q_b :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END deinterleaver_vai;

ARCHITECTURE bdf_type OF deinterleaver_vai IS 

COMPONENT static_15_deint
	PORT(		 o : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

COMPONENT flush_counter
	PORT(clock : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 len : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
		 carry : OUT STD_LOGIC;
		 count : OUT STD_LOGIC_VECTOR(12 DOWNTO 0)
	);
END COMPONENT;

COMPONENT interleaver_shared_memory
	PORT(wren_a : IN STD_LOGIC;
		 wren_b : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 address_a : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
		 address_b : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
		 data_a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 data_b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 q_a : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 q_b : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT mux_2to1_deint
	PORT(SEL : IN STD_LOGIC;
		 A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 X : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT register1b
	PORT(d : IN STD_LOGIC;
		 clr : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 q : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT address_calculator_payload_deint
	PORT(clock : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 depth : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 shift_depth : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 carry : OUT STD_LOGIC;
		 select_clock : OUT STD_LOGIC;
		 count : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
		 iterator_out : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

COMPONENT static_1_depth
	PORT(		 o : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

COMPONENT shift_register_4b
	PORT(CLK : IN STD_LOGIC;
		 D : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT register13b_deinterleaver
	PORT(clr : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 d : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(12 DOWNTO 0)
	);
END COMPONENT;

COMPONENT readorwrite
	PORT(depth_count_c : IN STD_LOGIC;
		 depth_count_number : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 readWrite : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT mux2x1_13b
	PORT(SEL : IN STD_LOGIC;
		 A : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
		 B : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
		 X : OUT STD_LOGIC_VECTOR(12 DOWNTO 0)
	);
END COMPONENT;

COMPONENT depth_counter_payload
	PORT(clock : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 depth : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 carry : OUT STD_LOGIC;
		 count : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

COMPONENT address_calculator_header_deint
	PORT(clock : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 depth : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 shift_depth : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 carry : OUT STD_LOGIC;
		 count : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
		 iterator_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT static_44
	PORT(		 o : OUT STD_LOGIC_VECTOR(12 DOWNTO 0)
	);
END COMPONENT;

COMPONENT depth_counter
	PORT(clock : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 depth : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 carry : OUT STD_LOGIC;
		 count : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_44 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_45 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_46 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_47 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_48 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_49 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_28 :  STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_29 :  STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_30 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_32 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_33 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_50 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_36 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_37 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_40 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_51 :  STD_LOGIC;


BEGIN 
InputPayload <= Input_payload;
readWrite <= SYNTHESIZED_WIRE_3;
depth_counter_carry <= SYNTHESIZED_WIRE_44;
carry_sig <= SYNTHESIZED_WIRE_37;
enable_flush <= SYNTHESIZED_WIRE_10;
flush_counter_carry <= SYNTHESIZED_WIRE_51;
readWrite_2 <= SYNTHESIZED_WIRE_4;
carry_sig2 <= SYNTHESIZED_WIRE_9;
depth_counter_carry2 <= SYNTHESIZED_WIRE_49;
enable_flush2 <= SYNTHESIZED_WIRE_47;
start_flushing <= SYNTHESIZED_WIRE_15;
Flag_2 <= SYNTHESIZED_WIRE_1;
finished_flushing <= SYNTHESIZED_WIRE_51;
address_calc <= SYNTHESIZED_WIRE_29;
address_sel <= SYNTHESIZED_WIRE_5;
address_sel_payload <= SYNTHESIZED_WIRE_6;
depth_count <= SYNTHESIZED_WIRE_48;
depth_count_payload <= SYNTHESIZED_WIRE_46;
flush_count <= SYNTHESIZED_WIRE_28;
input_deint_heade <= SYNTHESIZED_WIRE_45;
InputSR2 <= SYNTHESIZED_WIRE_45;
SYNTHESIZED_WIRE_11 <= '0';
SYNTHESIZED_WIRE_17 <= '0';
SYNTHESIZED_WIRE_20 <= '0';



b2v_inst : static_15_deint
PORT MAP(		 o => SYNTHESIZED_WIRE_50);


SYNTHESIZED_WIRE_36 <= NOT(SYNTHESIZED_WIRE_44);



b2v_inst10 : flush_counter
PORT MAP(clock => Clock,
		 enable => SYNTHESIZED_WIRE_1,
		 len => SYNTHESIZED_WIRE_2,
		 carry => SYNTHESIZED_WIRE_51,
		 count => SYNTHESIZED_WIRE_28);


b2v_inst100 : interleaver_shared_memory
PORT MAP(wren_a => SYNTHESIZED_WIRE_3,
		 wren_b => SYNTHESIZED_WIRE_4,
		 clock => Clock,
		 address_a => SYNTHESIZED_WIRE_5,
		 address_b => SYNTHESIZED_WIRE_6,
		 data_a => SYNTHESIZED_WIRE_45,
		 data_b => Input_payload,
		 q_a => Output,
		 q_b => q_b);


b2v_inst11 : mux_2to1_deint
PORT MAP(SEL => SYNTHESIZED_WIRE_8,
		 A => Clock,
		 B => SYNTHESIZED_WIRE_9,
		 X => SYNTHESIZED_WIRE_30);


b2v_inst13 : register1b
PORT MAP(d => SYNTHESIZED_WIRE_10,
		 clr => SYNTHESIZED_WIRE_11,
		 clk => Clock,
		 q => SYNTHESIZED_WIRE_33);


b2v_inst14 : address_calculator_payload_deint
PORT MAP(clock => Clock,
		 enable => SYNTHESIZED_WIRE_12,
		 depth => SYNTHESIZED_WIRE_13,
		 shift_depth => SYNTHESIZED_WIRE_46,
		 carry => SYNTHESIZED_WIRE_9,
		 select_clock => SYNTHESIZED_WIRE_8,
		 count => SYNTHESIZED_WIRE_18,
		 iterator_out => iterator_sig_payload);


SYNTHESIZED_WIRE_16 <= NOT(Flag);



b2v_inst153 : static_1_depth
PORT MAP(		 o => SYNTHESIZED_WIRE_13);


b2v_inst16 : register1b
PORT MAP(d => SYNTHESIZED_WIRE_15,
		 clr => SYNTHESIZED_WIRE_16,
		 clk => Clock,
		 q => SYNTHESIZED_WIRE_1);


b2v_inst17 : shift_register_4b
PORT MAP(CLK => Clock,
		 D => Input,
		 Q => SYNTHESIZED_WIRE_45);



b2v_inst2 : register13b_deinterleaver
PORT MAP(clr => SYNTHESIZED_WIRE_17,
		 clk => Clock,
		 d => SYNTHESIZED_WIRE_18,
		 q => SYNTHESIZED_WIRE_6);


b2v_inst22 : register1b
PORT MAP(d => SYNTHESIZED_WIRE_47,
		 clr => SYNTHESIZED_WIRE_20,
		 clk => Clock,
		 q => SYNTHESIZED_WIRE_12);


b2v_inst25 : readorwrite
PORT MAP(depth_count_c => SYNTHESIZED_WIRE_44,
		 depth_count_number => SYNTHESIZED_WIRE_48,
		 readWrite => SYNTHESIZED_WIRE_3);


b2v_inst26 : readorwrite
PORT MAP(depth_count_c => SYNTHESIZED_WIRE_49,
		 depth_count_number => SYNTHESIZED_WIRE_46,
		 readWrite => SYNTHESIZED_WIRE_4);


SYNTHESIZED_WIRE_15 <= SYNTHESIZED_WIRE_49 AND SYNTHESIZED_WIRE_44;


b2v_inst3 : mux2x1_13b
PORT MAP(SEL => SYNTHESIZED_WIRE_44,
		 A => SYNTHESIZED_WIRE_28,
		 B => SYNTHESIZED_WIRE_29,
		 X => SYNTHESIZED_WIRE_5);


b2v_inst30 : depth_counter_payload
PORT MAP(clock => SYNTHESIZED_WIRE_30,
		 enable => SYNTHESIZED_WIRE_47,
		 depth => SYNTHESIZED_WIRE_32,
		 carry => SYNTHESIZED_WIRE_49,
		 count => SYNTHESIZED_WIRE_46);


b2v_inst4 : address_calculator_header_deint
PORT MAP(clock => Clock,
		 enable => SYNTHESIZED_WIRE_33,
		 depth => SYNTHESIZED_WIRE_50,
		 shift_depth => SYNTHESIZED_WIRE_48,
		 carry => SYNTHESIZED_WIRE_37,
		 count => SYNTHESIZED_WIRE_29,
		 iterator_out => iterator_sig);


b2v_inst477 : static_44
PORT MAP(		 o => SYNTHESIZED_WIRE_2);


SYNTHESIZED_WIRE_40 <= Flag AND SYNTHESIZED_WIRE_36;


b2v_inst5 : depth_counter
PORT MAP(clock => SYNTHESIZED_WIRE_37,
		 enable => Flag,
		 depth => SYNTHESIZED_WIRE_50,
		 carry => SYNTHESIZED_WIRE_44,
		 count => SYNTHESIZED_WIRE_48);


SYNTHESIZED_WIRE_47 <= SYNTHESIZED_WIRE_44 AND Flag;



b2v_inst7 : static_15_deint
PORT MAP(		 o => SYNTHESIZED_WIRE_32);



SYNTHESIZED_WIRE_10 <= SYNTHESIZED_WIRE_40 AND SYNTHESIZED_WIRE_51;


END bdf_type;