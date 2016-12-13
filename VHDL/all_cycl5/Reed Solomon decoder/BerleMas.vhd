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
-- CREATED		"Tue Sep 27 22:48:59 2016"

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
		di :  OUT  STD_LOGIC;
		loadS :  OUT  STD_LOGIC;
		loadB :  OUT  STD_LOGIC;
		loadC :  OUT  STD_LOGIC;
		clearS :  OUT  STD_LOGIC;
		clearB :  OUT  STD_LOGIC;
		clearC :  OUT  STD_LOGIC;
		MuxSel :  OUT  STD_LOGIC;
		Nerror :  OUT  STD_LOGIC;
		B_0 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		B_1 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		B_2 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		B_3 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		B_mux :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		DS_reg :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Lambda1 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Lambda2 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Lambda3 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Lambda4 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Omega :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		S0 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		S1 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		S2 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		S3 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		S4 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Test_state :  OUT  STD_LOGIC_VECTOR(4 DOWNTO 0)
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
		 registra : OUT STD_LOGIC;
		 test_state : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT berlekamp_massey
	PORT(DsIn : IN STD_LOGIC;
		 LoadS : IN STD_LOGIC;
		 LoadB : IN STD_LOGIC;
		 LoadC : IN STD_LOGIC;
		 ClearS : IN STD_LOGIC;
		 ClearB : IN STD_LOGIC;
		 ClearC : IN STD_LOGIC;
		 MuxSel : IN STD_LOGIC;
		 Clock : IN STD_LOGIC;
		 SIn : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Nerror : OUT STD_LOGIC;
		 B_0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 B_1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 B_2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 B_3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 B_mux : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 DS_reg : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Lamb1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Lamb2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Lamb3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Lamb4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 OmegaOut : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 S0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 S1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 S2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 S3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 S4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
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
di <= SYNTHESIZED_WIRE_1;
loadS <= SYNTHESIZED_WIRE_2;
loadB <= SYNTHESIZED_WIRE_3;
loadC <= SYNTHESIZED_WIRE_4;
clearS <= SYNTHESIZED_WIRE_5;
clearB <= SYNTHESIZED_WIRE_6;
clearC <= SYNTHESIZED_WIRE_7;
MuxSel <= SYNTHESIZED_WIRE_8;
Nerror <= SYNTHESIZED_WIRE_0;



b2v_inst : berlekampcontroller
PORT MAP(clock => Clock,
		 reset => Reset,
		 ds => SYNTHESIZED_WIRE_0,
		 impar => Impar,
		 count4 => Count4,
		 count8 => Count8,
		 inicia => Inicia,
		 di => SYNTHESIZED_WIRE_1,
		 loadS => SYNTHESIZED_WIRE_2,
		 loadB => SYNTHESIZED_WIRE_3,
		 loadC => SYNTHESIZED_WIRE_4,
		 clearS => SYNTHESIZED_WIRE_5,
		 clearB => SYNTHESIZED_WIRE_6,
		 clearC => SYNTHESIZED_WIRE_7,
		 muxSel => SYNTHESIZED_WIRE_8,
		 registra => Registra,
		 test_state => Test_state);


b2v_inst2 : berlekamp_massey
PORT MAP(DsIn => SYNTHESIZED_WIRE_1,
		 LoadS => SYNTHESIZED_WIRE_2,
		 LoadB => SYNTHESIZED_WIRE_3,
		 LoadC => SYNTHESIZED_WIRE_4,
		 ClearS => SYNTHESIZED_WIRE_5,
		 ClearB => SYNTHESIZED_WIRE_6,
		 ClearC => SYNTHESIZED_WIRE_7,
		 MuxSel => SYNTHESIZED_WIRE_8,
		 Clock => Clock,
		 SIn => Input,
		 Nerror => SYNTHESIZED_WIRE_0,
		 B_0 => B_0,
		 B_1 => B_1,
		 B_2 => B_2,
		 B_3 => B_3,
		 B_mux => B_mux,
		 DS_reg => DS_reg,
		 Lamb1 => Lambda1,
		 Lamb2 => Lambda2,
		 Lamb3 => Lambda3,
		 Lamb4 => Lambda4,
		 OmegaOut => Omega,
		 S0 => S0,
		 S1 => S1,
		 S2 => S2,
		 S3 => S3,
		 S4 => S4);


END bdf_type;