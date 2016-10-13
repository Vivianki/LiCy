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
-- CREATED		"Sat Sep 24 17:25:55 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY xor5x1 IS 
	PORT
	(
		A1 :  IN  STD_LOGIC;
		B1 :  IN  STD_LOGIC;
		C1 :  IN  STD_LOGIC;
		D1 :  IN  STD_LOGIC;
		E1 :  IN  STD_LOGIC;
		F :  OUT  STD_LOGIC
	);
END xor5x1;

ARCHITECTURE bdf_type OF xor5x1 IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_1 <= A1 XOR B1;


SYNTHESIZED_WIRE_0 <= C1 XOR D1;


SYNTHESIZED_WIRE_2 <= SYNTHESIZED_WIRE_0 XOR E1;


F <= SYNTHESIZED_WIRE_1 XOR SYNTHESIZED_WIRE_2;


END bdf_type;