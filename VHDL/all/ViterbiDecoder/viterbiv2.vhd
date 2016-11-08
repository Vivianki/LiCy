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
-- CREATED		"Tue Nov 08 17:37:18 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY viterbiv2 IS 
	PORT
	(
		flag :  IN  STD_LOGIC;
		clk :  IN  STD_LOGIC;
		input_manchester :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		viterbi_output :  INOUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		flag_viterbi :  OUT  STD_LOGIC;
		viterbi_equal :  OUT  STD_LOGIC
	);
END viterbiv2;

ARCHITECTURE bdf_type OF viterbiv2 IS 

COMPONENT mux4x1_3b
	PORT(A : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 B : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 C : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 D : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 SEL : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 X : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;

COMPONENT sipo
	PORT(clk : IN STD_LOGIC;
		 si : IN STD_LOGIC;
		 po : INOUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT comparev2
	PORT(distance0 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 distance1 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 estado0 : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 estado1 : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 equal : OUT STD_LOGIC;
		 nextState : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;

COMPONENT register1b_viterbi
	PORT(d : IN STD_LOGIC;
		 clr : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 q : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT register6b_viterbi
	PORT(ld : IN STD_LOGIC;
		 clr : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 d : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;

COMPONENT branch_metrics
	PORT(input_manchester : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 output_00a : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
		 output_00b : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
		 output_01a : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
		 output_01b : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
		 output_10a : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
		 output_10b : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
		 output_11a : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
		 output_11b : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;

COMPONENT adder
	PORT(a : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 b : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 c : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;

COMPONENT trellistablev2
	PORT(estado_atual : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 output_esperado0 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		 output_esperado1 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		 prox_estado0 : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		 prox_estado1 : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_28 :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_29 :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_30 :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_31 :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC_VECTOR(1 DOWNTO 0);


BEGIN 
viterbi_equal <= SYNTHESIZED_WIRE_5;
SYNTHESIZED_WIRE_10 <= '0';
SYNTHESIZED_WIRE_11 <= '1';



SYNTHESIZED_WIRE_12 <= NOT(flag);



b2v_inst10 : mux4x1_3b
PORT MAP(A => SYNTHESIZED_WIRE_28,
		 B => SYNTHESIZED_WIRE_29,
		 C => SYNTHESIZED_WIRE_30,
		 D => SYNTHESIZED_WIRE_31,
		 SEL => SYNTHESIZED_WIRE_4,
		 X => SYNTHESIZED_WIRE_7);


b2v_inst11 : sipo
PORT MAP(clk => clk,
		 si => SYNTHESIZED_WIRE_5,
		 po => viterbi_output);


b2v_inst12 : comparev2
PORT MAP(distance0 => SYNTHESIZED_WIRE_6,
		 distance1 => SYNTHESIZED_WIRE_7,
		 estado0 => SYNTHESIZED_WIRE_8,
		 estado1 => SYNTHESIZED_WIRE_9,
		 equal => SYNTHESIZED_WIRE_5,
		 nextState => SYNTHESIZED_WIRE_13);


b2v_inst13 : register1b_viterbi
PORT MAP(d => flag,
		 clr => SYNTHESIZED_WIRE_10,
		 clk => clk,
		 q => flag_viterbi);




b2v_inst2 : register6b_viterbi
PORT MAP(ld => SYNTHESIZED_WIRE_11,
		 clr => SYNTHESIZED_WIRE_12,
		 clk => clk,
		 d => SYNTHESIZED_WIRE_13,
		 q => SYNTHESIZED_WIRE_22);


b2v_inst3 : branch_metrics
PORT MAP(input_manchester => input_manchester,
		 output_00a => SYNTHESIZED_WIRE_14,
		 output_00b => SYNTHESIZED_WIRE_15,
		 output_01a => SYNTHESIZED_WIRE_16,
		 output_01b => SYNTHESIZED_WIRE_17,
		 output_10a => SYNTHESIZED_WIRE_18,
		 output_10b => SYNTHESIZED_WIRE_19,
		 output_11a => SYNTHESIZED_WIRE_20,
		 output_11b => SYNTHESIZED_WIRE_21);


b2v_inst4 : adder
PORT MAP(a => SYNTHESIZED_WIRE_14,
		 b => SYNTHESIZED_WIRE_15,
		 c => SYNTHESIZED_WIRE_28);


b2v_inst5 : adder
PORT MAP(a => SYNTHESIZED_WIRE_16,
		 b => SYNTHESIZED_WIRE_17,
		 c => SYNTHESIZED_WIRE_29);


b2v_inst6 : adder
PORT MAP(a => SYNTHESIZED_WIRE_18,
		 b => SYNTHESIZED_WIRE_19,
		 c => SYNTHESIZED_WIRE_30);


b2v_inst7 : adder
PORT MAP(a => SYNTHESIZED_WIRE_20,
		 b => SYNTHESIZED_WIRE_21,
		 c => SYNTHESIZED_WIRE_31);


b2v_inst8 : trellistablev2
PORT MAP(estado_atual => SYNTHESIZED_WIRE_22,
		 output_esperado0 => SYNTHESIZED_WIRE_27,
		 output_esperado1 => SYNTHESIZED_WIRE_4,
		 prox_estado0 => SYNTHESIZED_WIRE_8,
		 prox_estado1 => SYNTHESIZED_WIRE_9);


b2v_inst9 : mux4x1_3b
PORT MAP(A => SYNTHESIZED_WIRE_28,
		 B => SYNTHESIZED_WIRE_29,
		 C => SYNTHESIZED_WIRE_30,
		 D => SYNTHESIZED_WIRE_31,
		 SEL => SYNTHESIZED_WIRE_27,
		 X => SYNTHESIZED_WIRE_6);


END bdf_type;