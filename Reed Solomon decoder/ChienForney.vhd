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
-- CREATED		"Fri Sep 30 02:09:55 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY ChienForney IS 
	PORT
	(
		clock :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		inicia :  IN  STD_LOGIC;
		Input :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Lamb0 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Lamb1 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Lamb2 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Lamb3 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Omega0 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Omega1 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Omega2 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Omega3 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		pin_name1 :  OUT  STD_LOGIC;
		Decod :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END ChienForney;

ARCHITECTURE bdf_type OF ChienForney IS 

COMPONENT chien
	PORT(clock : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 inicia : IN STD_LOGIC;
		 Lamb0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Lamb1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Lamb2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Lamb3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Omega0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Omega1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Omega2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Omega3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 muxSel : OUT STD_LOGIC;
		 ResultLocation : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 ResultLocationOdd : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 ResultValue : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT forney
	PORT(Loca : IN STD_LOGIC;
		 Input : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 ResultOdd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Valor : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Decod : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	Result :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(3 DOWNTO 0);


BEGIN 



b2v_inst : chien
PORT MAP(clock => clock,
		 reset => reset,
		 inicia => inicia,
		 Lamb0 => Lamb0,
		 Lamb1 => Lamb1,
		 Lamb2 => Lamb2,
		 Lamb3 => Lamb3,
		 Omega0 => Omega0,
		 Omega1 => Omega1,
		 Omega2 => Omega2,
		 Omega3 => Omega3,
		 muxSel => pin_name1,
		 ResultLocation => Result,
		 ResultLocationOdd => SYNTHESIZED_WIRE_1,
		 ResultValue => SYNTHESIZED_WIRE_2);


b2v_inst2 : forney
PORT MAP(Loca => SYNTHESIZED_WIRE_0,
		 Input => Input,
		 ResultOdd => SYNTHESIZED_WIRE_1,
		 Valor => SYNTHESIZED_WIRE_2,
		 Decod => Decod);


SYNTHESIZED_WIRE_0 <= Result(0) OR Result(2) OR Result(3) OR Result(1);


END bdf_type;