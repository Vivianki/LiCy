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
-- CREATED		"Sun Aug 21 22:26:10 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY memcount IS 
	PORT
	(
		clock :  IN  STD_LOGIC;
		clear :  IN  STD_LOGIC;
		data :  OUT  STD_LOGIC;
		carry :  OUT  STD_LOGIC;
		count :  OUT  STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END memcount;

ARCHITECTURE bdf_type OF memcount IS 

COMPONENT counter
GENERIC (n : INTEGER
			);
	PORT(clock : IN STD_LOGIC;
		 clear : IN STD_LOGIC;
		 carry : OUT STD_LOGIC;
		 count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;

COMPONENT memory
	PORT(address : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 data : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(5 DOWNTO 0);


BEGIN 
count <= SYNTHESIZED_WIRE_0;



b2v_inst : counter
GENERIC MAP(n => 6
			)
PORT MAP(clock => clock,
		 clear => clear,
		 carry => carry,
		 count => SYNTHESIZED_WIRE_0);


b2v_inst2 : memory
PORT MAP(address => SYNTHESIZED_WIRE_0,
		 data => data);


END bdf_type;