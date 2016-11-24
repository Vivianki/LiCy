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
-- CREATED		"Wed Nov 16 16:55:44 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY ccEncoder IS 
	PORT
	(
		clock :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		input :  IN  STD_LOGIC;
		A0 :  OUT  STD_LOGIC;
		B0 :  OUT  STD_LOGIC;
		C0 :  OUT  STD_LOGIC;
		Q1 :  OUT  STD_LOGIC
	);
END ccEncoder;

ARCHITECTURE bdf_type OF ccEncoder IS 

COMPONENT shift_register_convolutional
	PORT(D : IN STD_LOGIC;
		 CLK : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 Q1 : OUT STD_LOGIC;
		 Q2 : OUT STD_LOGIC;
		 Q3 : OUT STD_LOGIC;
		 Q4 : OUT STD_LOGIC;
		 Q5 : OUT STD_LOGIC;
		 Q6 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT xor5x1
	PORT(A1 : IN STD_LOGIC;
		 B1 : IN STD_LOGIC;
		 C1 : IN STD_LOGIC;
		 D1 : IN STD_LOGIC;
		 E1 : IN STD_LOGIC;
		 F : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT register1b_viterbi
	PORT(d : IN STD_LOGIC;
		 clr : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 q : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;


BEGIN 
Q1 <= SYNTHESIZED_WIRE_18;



b2v_inst : shift_register_convolutional
PORT MAP(D => SYNTHESIZED_WIRE_0,
		 CLK => clock,
		 reset => reset,
		 Q1 => SYNTHESIZED_WIRE_18,
		 Q2 => SYNTHESIZED_WIRE_15,
		 Q3 => SYNTHESIZED_WIRE_16,
		 Q4 => SYNTHESIZED_WIRE_11,
		 Q5 => SYNTHESIZED_WIRE_3,
		 Q6 => SYNTHESIZED_WIRE_17);


b2v_inst10 : xor5x1
PORT MAP(A1 => input,
		 B1 => SYNTHESIZED_WIRE_15,
		 C1 => SYNTHESIZED_WIRE_16,
		 D1 => SYNTHESIZED_WIRE_3,
		 E1 => SYNTHESIZED_WIRE_17,
		 F => A0);


b2v_inst11 : xor5x1
PORT MAP(A1 => input,
		 B1 => SYNTHESIZED_WIRE_18,
		 C1 => SYNTHESIZED_WIRE_15,
		 D1 => SYNTHESIZED_WIRE_16,
		 E1 => SYNTHESIZED_WIRE_17,
		 F => B0);


b2v_inst12 : xor5x1
PORT MAP(A1 => input,
		 B1 => SYNTHESIZED_WIRE_18,
		 C1 => SYNTHESIZED_WIRE_15,
		 D1 => SYNTHESIZED_WIRE_11,
		 E1 => SYNTHESIZED_WIRE_17,
		 F => C0);


SYNTHESIZED_WIRE_14 <= NOT(clock);



b2v_inst3 : register1b_viterbi
PORT MAP(d => input,
		 clr => SYNTHESIZED_WIRE_13,
		 clk => SYNTHESIZED_WIRE_14,
		 q => SYNTHESIZED_WIRE_0);


SYNTHESIZED_WIRE_13 <= NOT(reset);



END bdf_type;