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
-- CREATED		"Sat Sep 24 18:28:40 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY BerleMas IS 
	PORT
	(
		Clock :  IN  STD_LOGIC;
		Reset :  IN  STD_LOGIC;
		Impar :  IN  STD_LOGIC;
		Count4 :  IN  STD_LOGIC;
		Count8 :  IN  STD_LOGIC;
		Inicia :  IN  STD_LOGIC;
		Input :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Registra :  OUT  STD_LOGIC;
		Lambda1 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Lambda2 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Lambda3 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Lambda4 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Omega :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END BerleMas;

ARCHITECTURE bdf_type OF BerleMas IS 

COMPONENT berlekampcontroller
	PORT(clock : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 ds : IN STD_LOGIC;
		 impar : IN STD_LOGIC;
		 count4 : IN STD_LOGIC;
		 count8 : IN STD_LOGIC;
		 inicia : IN STD_LOGIC;
		 di : OUT STD_LOGIC;
		 loadS : OUT STD_LOGIC;
		 loadB : OUT STD_LOGIC;
		 loadC : OUT STD_LOGIC;
		 clearS : OUT STD_LOGIC;
		 clearB : OUT STD_LOGIC;
		 clearC : OUT STD_LOGIC;
		 muxSel : OUT STD_LOGIC;
		 registra : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT berlekamp_massey
	PORT(MuxSel : IN STD_LOGIC;
		 LoadB : IN STD_LOGIC;
		 ClearB : IN STD_LOGIC;
		 Clock : IN STD_LOGIC;
		 LoadC : IN STD_LOGIC;
		 DsIn : IN STD_LOGIC;
		 ClearC : IN STD_LOGIC;
		 LoadS : IN STD_LOGIC;
		 ClearS : IN STD_LOGIC;
		 SIn : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 ds : OUT STD_LOGIC;
		 Lamb1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Lamb2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Lamb3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Lamb4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 OmegaOut : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;


BEGIN 



b2v_inst3 : berlekampcontroller
PORT MAP(clock => Clock,
		 reset => Reset,
		 ds => SYNTHESIZED_WIRE_0,
		 impar => Impar,
		 count4 => Count4,
		 count8 => Count8,
		 inicia => Inicia,
		 di => SYNTHESIZED_WIRE_8,
		 loadS => SYNTHESIZED_WIRE_1,
		 loadB => SYNTHESIZED_WIRE_2,
		 loadC => SYNTHESIZED_WIRE_3,
		 clearS => SYNTHESIZED_WIRE_4,
		 clearB => SYNTHESIZED_WIRE_5,
		 clearC => SYNTHESIZED_WIRE_6,
		 muxSel => SYNTHESIZED_WIRE_7,
		 registra => Registra);


b2v_inst5 : berlekamp_massey
PORT MAP(MuxSel => SYNTHESIZED_WIRE_1,
		 LoadB => SYNTHESIZED_WIRE_2,
		 ClearB => SYNTHESIZED_WIRE_3,
		 Clock => SYNTHESIZED_WIRE_4,
		 LoadC => SYNTHESIZED_WIRE_5,
		 DsIn => SYNTHESIZED_WIRE_6,
		 ClearC => SYNTHESIZED_WIRE_7,
		 LoadS => SYNTHESIZED_WIRE_8,
		 ClearS => Clock,
		 SIn => Input,
		 ds => SYNTHESIZED_WIRE_0,
		 Lamb1 => Lambda1,
		 Lamb2 => Lambda2,
		 Lamb3 => Lambda3,
		 Lamb4 => Lambda4,
		 OmegaOut => Omega);


END bdf_type;