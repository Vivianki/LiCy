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
-- CREATED		"Fri Sep 30 01:06:28 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Chien IS 
	PORT
	(
		clock :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		inicia :  IN  STD_LOGIC;
		Lamb0 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Lamb1 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Lamb2 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Lamb3 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Omega0 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Omega1 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Omega2 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Omega3 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		muxSel :  OUT  STD_LOGIC;
		ResultLocation :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		ResultLocationOdd :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		ResultValue :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END Chien;

ARCHITECTURE bdf_type OF Chien IS 

COMPONENT chiencontroller
	PORT(clock : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 inicia : IN STD_LOGIC;
		 load : OUT STD_LOGIC;
		 clear : OUT STD_LOGIC;
		 muxSel : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT chiensearchlocation
	PORT(MuxSel : IN STD_LOGIC;
		 Clear : IN STD_LOGIC;
		 Load : IN STD_LOGIC;
		 Clock : IN STD_LOGIC;
		 Lamb0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Lamb1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Lamb2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Lamb3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Result : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 ResultOdd : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT chiensearchvalue
	PORT(MuxSel : IN STD_LOGIC;
		 Load : IN STD_LOGIC;
		 Clock : IN STD_LOGIC;
		 Clear : IN STD_LOGIC;
		 Lamb0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Lamb1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Lamb2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Lamb3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Result : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;


BEGIN 
muxSel <= SYNTHESIZED_WIRE_6;



b2v_inst : chiencontroller
PORT MAP(clock => clock,
		 reset => reset,
		 inicia => inicia,
		 load => SYNTHESIZED_WIRE_8,
		 clear => SYNTHESIZED_WIRE_7,
		 muxSel => SYNTHESIZED_WIRE_6);


b2v_inst2 : chiensearchlocation
PORT MAP(MuxSel => SYNTHESIZED_WIRE_6,
		 Clear => SYNTHESIZED_WIRE_7,
		 Load => SYNTHESIZED_WIRE_8,
		 Clock => clock,
		 Lamb0 => Lamb0,
		 Lamb1 => Lamb1,
		 Lamb2 => Lamb2,
		 Lamb3 => Lamb3,
		 Result => ResultLocation,
		 ResultOdd => ResultLocationOdd);


b2v_inst3 : chiensearchvalue
PORT MAP(MuxSel => SYNTHESIZED_WIRE_6,
		 Load => SYNTHESIZED_WIRE_8,
		 Clock => clock,
		 Clear => SYNTHESIZED_WIRE_7,
		 Lamb0 => Omega0,
		 Lamb1 => Omega1,
		 Lamb2 => Omega2,
		 Lamb3 => Omega3,
		 Result => ResultValue);


END bdf_type;