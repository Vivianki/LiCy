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
-- CREATED		"Wed Nov 02 22:14:25 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY interleaver_rev4 IS 
	PORT
	(
		Flag :  IN  STD_LOGIC;
		Clock :  IN  STD_LOGIC;
		Input :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
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
		address_calc :  OUT  STD_LOGIC_VECTOR(12 DOWNTO 0);
		address_sel :  OUT  STD_LOGIC_VECTOR(12 DOWNTO 0);
		address_sel_payload :  OUT  STD_LOGIC_VECTOR(12 DOWNTO 0);
		depth_count :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		depth_count_payload :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		flush_count :  OUT  STD_LOGIC_VECTOR(12 DOWNTO 0);
		InputPayload :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		InputSR2 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		iterator_sig :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		iterator_sig_payload :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Output :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		q_b :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END interleaver_rev4;

ARCHITECTURE bdf_type OF interleaver_rev4 IS 

COMPONENT address_calculator_payload
	PORT(clock : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 depth : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 shift_depth : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 carry : OUT STD_LOGIC;
		 count : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
		 iterator_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
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

COMPONENT register1b
	PORT(d : IN STD_LOGIC;
		 clr : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 q : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT static_2
	PORT(		 o : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
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

COMPONENT address_calculator
	PORT(clock : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 depth : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 shift_depth : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 carry : OUT STD_LOGIC;
		 count : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
		 iterator_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_41 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_42 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_43 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_44 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_45 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_46 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_47 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_28 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_48 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_32 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_33 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_49 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_36 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_39 :  STD_LOGIC;


BEGIN 
readWrite <= SYNTHESIZED_WIRE_6;
depth_counter_carry <= SYNTHESIZED_WIRE_43;
carry_sig <= SYNTHESIZED_WIRE_33;
enable_flush <= SYNTHESIZED_WIRE_12;
flush_counter_carry <= SYNTHESIZED_WIRE_48;
readWrite_2 <= SYNTHESIZED_WIRE_7;
carry_sig2 <= SYNTHESIZED_WIRE_28;
depth_counter_carry2 <= SYNTHESIZED_WIRE_47;
enable_flush2 <= SYNTHESIZED_WIRE_45;
start_flushing <= SYNTHESIZED_WIRE_14;
address_calc <= SYNTHESIZED_WIRE_27;
address_sel <= SYNTHESIZED_WIRE_8;
address_sel_payload <= SYNTHESIZED_WIRE_9;
depth_count <= SYNTHESIZED_WIRE_46;
depth_count_payload <= SYNTHESIZED_WIRE_42;
flush_count <= SYNTHESIZED_WIRE_26;
InputPayload <= SYNTHESIZED_WIRE_11;
InputSR2 <= SYNTHESIZED_WIRE_44;
SYNTHESIZED_WIRE_13 <= '0';
SYNTHESIZED_WIRE_18 <= '0';



b2v_inst : address_calculator_payload
PORT MAP(clock => Clock,
		 enable => SYNTHESIZED_WIRE_0,
		 depth => SYNTHESIZED_WIRE_41,
		 shift_depth => SYNTHESIZED_WIRE_42,
		 carry => SYNTHESIZED_WIRE_28,
		 count => SYNTHESIZED_WIRE_9,
		 iterator_out => iterator_sig_payload);


SYNTHESIZED_WIRE_32 <= NOT(SYNTHESIZED_WIRE_43);



b2v_inst10 : flush_counter
PORT MAP(clock => Clock,
		 enable => SYNTHESIZED_WIRE_4,
		 len => SYNTHESIZED_WIRE_5,
		 carry => SYNTHESIZED_WIRE_48,
		 count => SYNTHESIZED_WIRE_26);


b2v_inst100 : interleaver_shared_memory
PORT MAP(wren_a => SYNTHESIZED_WIRE_6,
		 wren_b => SYNTHESIZED_WIRE_7,
		 clock => Clock,
		 address_a => SYNTHESIZED_WIRE_8,
		 address_b => SYNTHESIZED_WIRE_9,
		 data_a => SYNTHESIZED_WIRE_44,
		 data_b => SYNTHESIZED_WIRE_11,
		 q_a => Output,
		 q_b => q_b);


b2v_inst13 : register1b
PORT MAP(d => SYNTHESIZED_WIRE_12,
		 clr => SYNTHESIZED_WIRE_13,
		 clk => Clock,
		 q => SYNTHESIZED_WIRE_36);


b2v_inst14 : static_2
PORT MAP(		 o => SYNTHESIZED_WIRE_49);


SYNTHESIZED_WIRE_15 <= NOT(Flag);



b2v_inst153 : static_1_depth
PORT MAP(		 o => SYNTHESIZED_WIRE_41);


b2v_inst16 : register1b
PORT MAP(d => SYNTHESIZED_WIRE_14,
		 clr => SYNTHESIZED_WIRE_15,
		 clk => Clock,
		 q => SYNTHESIZED_WIRE_4);


b2v_inst17 : shift_register_4b
PORT MAP(CLK => Clock,
		 D => Input,
		 Q => SYNTHESIZED_WIRE_44);



b2v_inst20 : shift_register_4b
PORT MAP(CLK => Clock,
		 D => SYNTHESIZED_WIRE_44,
		 Q => SYNTHESIZED_WIRE_11);


b2v_inst22 : register1b
PORT MAP(d => SYNTHESIZED_WIRE_45,
		 clr => SYNTHESIZED_WIRE_18,
		 clk => Clock,
		 q => SYNTHESIZED_WIRE_0);


b2v_inst25 : readorwrite
PORT MAP(depth_count_c => SYNTHESIZED_WIRE_43,
		 depth_count_number => SYNTHESIZED_WIRE_46,
		 readWrite => SYNTHESIZED_WIRE_6);


b2v_inst26 : readorwrite
PORT MAP(depth_count_c => SYNTHESIZED_WIRE_47,
		 depth_count_number => SYNTHESIZED_WIRE_42,
		 readWrite => SYNTHESIZED_WIRE_7);


SYNTHESIZED_WIRE_14 <= SYNTHESIZED_WIRE_47 AND SYNTHESIZED_WIRE_43;


b2v_inst3 : mux2x1_13b
PORT MAP(SEL => SYNTHESIZED_WIRE_43,
		 A => SYNTHESIZED_WIRE_26,
		 B => SYNTHESIZED_WIRE_27,
		 X => SYNTHESIZED_WIRE_8);


b2v_inst30 : depth_counter_payload
PORT MAP(clock => SYNTHESIZED_WIRE_28,
		 enable => SYNTHESIZED_WIRE_45,
		 depth => SYNTHESIZED_WIRE_41,
		 carry => SYNTHESIZED_WIRE_47,
		 count => SYNTHESIZED_WIRE_42);


Flag_2 <= NOT(SYNTHESIZED_WIRE_48);



b2v_inst477 : static_44
PORT MAP(		 o => SYNTHESIZED_WIRE_5);


SYNTHESIZED_WIRE_39 <= Flag AND SYNTHESIZED_WIRE_32;


b2v_inst5 : depth_counter
PORT MAP(clock => SYNTHESIZED_WIRE_33,
		 enable => Flag,
		 depth => SYNTHESIZED_WIRE_49,
		 carry => SYNTHESIZED_WIRE_43,
		 count => SYNTHESIZED_WIRE_46);


SYNTHESIZED_WIRE_45 <= SYNTHESIZED_WIRE_43 AND Flag;


b2v_inst7 : address_calculator
PORT MAP(clock => Clock,
		 enable => SYNTHESIZED_WIRE_36,
		 depth => SYNTHESIZED_WIRE_49,
		 shift_depth => SYNTHESIZED_WIRE_46,
		 carry => SYNTHESIZED_WIRE_33,
		 count => SYNTHESIZED_WIRE_27,
		 iterator_out => iterator_sig);



SYNTHESIZED_WIRE_12 <= SYNTHESIZED_WIRE_39 AND SYNTHESIZED_WIRE_48;


END bdf_type;