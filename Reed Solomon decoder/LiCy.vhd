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
-- CREATED		"Fri May 06 10:53:58 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY LiCy IS 
	PORT
	(
		areset :  IN  STD_LOGIC;
		inclk0 :  IN  STD_LOGIC;
		c0 :  OUT  STD_LOGIC;
		locked :  OUT  STD_LOGIC
	);
END LiCy;

ARCHITECTURE bdf_type OF LiCy IS 

COMPONENT pll
	PORT(areset : IN STD_LOGIC;
		 inclk0 : IN STD_LOGIC;
		 c0 : OUT STD_LOGIC;
		 locked : OUT STD_LOGIC
	);
END COMPONENT;



BEGIN 



b2v_inst1 : pll
PORT MAP(areset => areset,
		 inclk0 => inclk0,
		 c0 => c0,
		 locked => locked);


END bdf_type;