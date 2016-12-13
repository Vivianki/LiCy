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
-- CREATED		"Fri Nov 25 20:47:04 2016"

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
		flag_rsDecoder :  OUT  STD_LOGIC;
		Output :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
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

COMPONENT depth_counter_payload_deint
	PORT(clock : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 depth : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 carry : OUT STD_LOGIC;
		 count : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
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

COMPONENT readorwrite_deint
	PORT(depth_count_c : IN STD_LOGIC;
		 depth_count_number : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 readWrite : OUT STD_LOGIC
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

SIGNAL	SYNTHESIZED_WIRE_42 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_43 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_44 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_45 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_46 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_31 :  STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_32 :  STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_33 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_47 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_36 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_37 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_40 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_41 :  STD_LOGIC;


BEGIN 
flag_rsDecoder <= SYNTHESIZED_WIRE_1;
SYNTHESIZED_WIRE_14 <= '0';
SYNTHESIZED_WIRE_22 <= '0';
SYNTHESIZED_WIRE_25 <= '0';



b2v_inst : static_15_deint
PORT MAP(		 o => SYNTHESIZED_WIRE_47);


SYNTHESIZED_WIRE_36 <= NOT(SYNTHESIZED_WIRE_42);



b2v_inst10 : flush_counter
PORT MAP(clock => Clock,
		 enable => SYNTHESIZED_WIRE_1,
		 len => SYNTHESIZED_WIRE_2,
		 carry => SYNTHESIZED_WIRE_41,
		 count => SYNTHESIZED_WIRE_31);


b2v_inst100 : interleaver_shared_memory
PORT MAP(wren_a => SYNTHESIZED_WIRE_3,
		 wren_b => SYNTHESIZED_WIRE_4,
		 clock => Clock,
		 address_a => SYNTHESIZED_WIRE_5,
		 address_b => SYNTHESIZED_WIRE_6,
		 data_a => SYNTHESIZED_WIRE_7,
		 data_b => Input_payload,
		 q_a => Output);


b2v_inst11 : mux_2to1_deint
PORT MAP(SEL => SYNTHESIZED_WIRE_8,
		 A => Clock,
		 B => SYNTHESIZED_WIRE_9,
		 X => SYNTHESIZED_WIRE_10);


b2v_inst12 : depth_counter_payload_deint
PORT MAP(clock => SYNTHESIZED_WIRE_10,
		 enable => SYNTHESIZED_WIRE_43,
		 depth => SYNTHESIZED_WIRE_12,
		 carry => SYNTHESIZED_WIRE_45,
		 count => SYNTHESIZED_WIRE_44);


b2v_inst13 : register1b
PORT MAP(d => SYNTHESIZED_WIRE_13,
		 clr => SYNTHESIZED_WIRE_14,
		 clk => Clock,
		 q => SYNTHESIZED_WIRE_33);


b2v_inst14 : address_calculator_payload_deint
PORT MAP(clock => Clock,
		 enable => SYNTHESIZED_WIRE_15,
		 depth => SYNTHESIZED_WIRE_16,
		 shift_depth => SYNTHESIZED_WIRE_44,
		 carry => SYNTHESIZED_WIRE_9,
		 select_clock => SYNTHESIZED_WIRE_8,
		 count => SYNTHESIZED_WIRE_23);


SYNTHESIZED_WIRE_19 <= NOT(Flag);



b2v_inst153 : static_1_depth
PORT MAP(		 o => SYNTHESIZED_WIRE_16);


b2v_inst16 : register1b
PORT MAP(d => SYNTHESIZED_WIRE_18,
		 clr => SYNTHESIZED_WIRE_19,
		 clk => Clock,
		 q => SYNTHESIZED_WIRE_1);


b2v_inst17 : shift_register_4b
PORT MAP(CLK => Clock,
		 D => Input,
		 Q => SYNTHESIZED_WIRE_7);


b2v_inst18 : readorwrite_deint
PORT MAP(depth_count_c => SYNTHESIZED_WIRE_45,
		 depth_count_number => SYNTHESIZED_WIRE_44,
		 readWrite => SYNTHESIZED_WIRE_4);



b2v_inst2 : register13b_deinterleaver
PORT MAP(clr => SYNTHESIZED_WIRE_22,
		 clk => Clock,
		 d => SYNTHESIZED_WIRE_23,
		 q => SYNTHESIZED_WIRE_6);


b2v_inst22 : register1b
PORT MAP(d => SYNTHESIZED_WIRE_43,
		 clr => SYNTHESIZED_WIRE_25,
		 clk => Clock,
		 q => SYNTHESIZED_WIRE_15);


b2v_inst25 : readorwrite
PORT MAP(depth_count_c => SYNTHESIZED_WIRE_42,
		 depth_count_number => SYNTHESIZED_WIRE_46,
		 readWrite => SYNTHESIZED_WIRE_3);


SYNTHESIZED_WIRE_18 <= SYNTHESIZED_WIRE_45 AND SYNTHESIZED_WIRE_42;


b2v_inst3 : mux2x1_13b
PORT MAP(SEL => SYNTHESIZED_WIRE_42,
		 A => SYNTHESIZED_WIRE_31,
		 B => SYNTHESIZED_WIRE_32,
		 X => SYNTHESIZED_WIRE_5);


b2v_inst4 : address_calculator_header_deint
PORT MAP(clock => Clock,
		 enable => SYNTHESIZED_WIRE_33,
		 depth => SYNTHESIZED_WIRE_47,
		 shift_depth => SYNTHESIZED_WIRE_46,
		 carry => SYNTHESIZED_WIRE_37,
		 count => SYNTHESIZED_WIRE_32);


b2v_inst477 : static_44
PORT MAP(		 o => SYNTHESIZED_WIRE_2);


SYNTHESIZED_WIRE_40 <= Flag AND SYNTHESIZED_WIRE_36;


b2v_inst5 : depth_counter
PORT MAP(clock => SYNTHESIZED_WIRE_37,
		 enable => Flag,
		 depth => SYNTHESIZED_WIRE_47,
		 carry => SYNTHESIZED_WIRE_42,
		 count => SYNTHESIZED_WIRE_46);


SYNTHESIZED_WIRE_43 <= SYNTHESIZED_WIRE_42 AND Flag;



b2v_inst7 : static_15_deint
PORT MAP(		 o => SYNTHESIZED_WIRE_12);



SYNTHESIZED_WIRE_13 <= SYNTHESIZED_WIRE_40 AND SYNTHESIZED_WIRE_41;


END bdf_type;