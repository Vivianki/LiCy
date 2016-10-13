-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
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
-- VERSION		"Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"
-- CREATED		"Sat Sep 24 17:28:32 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY ccEncoder IS 
	PORT
	(
		clock :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		clock_enable :  IN  STD_LOGIC;
		input :  IN  STD_LOGIC;
		A0 :  OUT  STD_LOGIC;
		B0 :  OUT  STD_LOGIC;
		C0 :  OUT  STD_LOGIC
	);
END ccEncoder;

ARCHITECTURE bdf_type OF ccEncoder IS 

COMPONENT d_ff_vhdl
	PORT(clk : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 ce : IN STD_LOGIC;
		 d : IN STD_LOGIC;
		 q : OUT STD_LOGIC
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

SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;


BEGIN 



b2v_inst : d_ff_vhdl
PORT MAP(clk => clock,
		 rst => reset,
		 ce => clock_enable,
		 d => SYNTHESIZED_WIRE_17,
		 q => SYNTHESIZED_WIRE_18);


b2v_inst10 : xor5x1
PORT MAP(A1 => input,
		 B1 => SYNTHESIZED_WIRE_17,
		 C1 => SYNTHESIZED_WIRE_18,
		 D1 => SYNTHESIZED_WIRE_19,
		 E1 => SYNTHESIZED_WIRE_20,
		 F => A0);


b2v_inst11 : xor5x1
PORT MAP(A1 => input,
		 B1 => SYNTHESIZED_WIRE_21,
		 C1 => SYNTHESIZED_WIRE_17,
		 D1 => SYNTHESIZED_WIRE_18,
		 E1 => SYNTHESIZED_WIRE_20,
		 F => B0);


b2v_inst12 : xor5x1
PORT MAP(A1 => input,
		 B1 => SYNTHESIZED_WIRE_21,
		 C1 => SYNTHESIZED_WIRE_17,
		 D1 => SYNTHESIZED_WIRE_22,
		 E1 => SYNTHESIZED_WIRE_20,
		 F => C0);


b2v_inst2 : d_ff_vhdl
PORT MAP(clk => clock,
		 rst => reset,
		 ce => clock_enable,
		 d => SYNTHESIZED_WIRE_18,
		 q => SYNTHESIZED_WIRE_22);


b2v_inst3 : d_ff_vhdl
PORT MAP(clk => clock,
		 rst => reset,
		 ce => clock_enable,
		 d => SYNTHESIZED_WIRE_22,
		 q => SYNTHESIZED_WIRE_19);


b2v_inst4 : d_ff_vhdl
PORT MAP(clk => clock,
		 rst => reset,
		 ce => clock_enable,
		 d => SYNTHESIZED_WIRE_19,
		 q => SYNTHESIZED_WIRE_20);


b2v_inst5 : d_ff_vhdl
PORT MAP(clk => clock,
		 rst => reset,
		 ce => clock_enable,
		 d => SYNTHESIZED_WIRE_21,
		 q => SYNTHESIZED_WIRE_17);


b2v_inst6 : d_ff_vhdl
PORT MAP(clk => clock,
		 rst => reset,
		 ce => clock_enable,
		 d => input,
		 q => SYNTHESIZED_WIRE_21);


END bdf_type;