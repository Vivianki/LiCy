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
-- CREATED		"Sat Oct 01 02:58:36 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY RSIntegration IS 
	PORT
	(
		Clock :  IN  STD_LOGIC;
		Reset :  IN  STD_LOGIC;
		Impar :  IN  STD_LOGIC;
		Count4 :  IN  STD_LOGIC;
		Count8 :  IN  STD_LOGIC;
		Inicia :  IN  STD_LOGIC;
		Input :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Mensagem :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
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
		pin_name1 :  OUT  STD_LOGIC;
		B_0 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		B_1 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		B_2 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		B_3 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		B_mux :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Decod :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		DS_reg :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Lambda1 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Lambda2 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Lambda3 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Lambda4 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Omega0 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Omega1 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Omega2 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Omega3 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Omega4 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		S0 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		S1 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		S2 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		S3 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		S4 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Test_state :  OUT  STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END RSIntegration;

ARCHITECTURE bdf_type OF RSIntegration IS 

COMPONENT berlemas
	PORT(Clock : IN STD_LOGIC;
		 Reset : IN STD_LOGIC;
		 Impar : IN STD_LOGIC;
		 Count4 : IN STD_LOGIC;
		 Count8 : IN STD_LOGIC;
		 Inicia : IN STD_LOGIC;
		 Input : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Registra : OUT STD_LOGIC;
		 di : OUT STD_LOGIC;
		 loadS : OUT STD_LOGIC;
		 loadB : OUT STD_LOGIC;
		 loadC : OUT STD_LOGIC;
		 clearS : OUT STD_LOGIC;
		 clearB : OUT STD_LOGIC;
		 clearC : OUT STD_LOGIC;
		 MuxSel : OUT STD_LOGIC;
		 Nerror : OUT STD_LOGIC;
		 B_0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 B_1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 B_2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 B_3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 B_mux : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 DS_reg : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Lambda1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Lambda2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Lambda3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Lambda4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Omega : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 S0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 S1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 S2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 S3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 S4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Test_state : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT register4b
	PORT(ld : IN STD_LOGIC;
		 clr : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 d : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT chienforney
	PORT(clock : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 inicia : IN STD_LOGIC;
		 Input : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Lamb0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Lamb1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Lamb2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Lamb3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Omega0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Omega1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Omega2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Omega3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 pin_name1 : OUT STD_LOGIC;
		 Decod : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_28 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_29 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC_VECTOR(3 DOWNTO 0);


BEGIN 
Registra <= SYNTHESIZED_WIRE_15;
loadS <= SYNTHESIZED_WIRE_24;
clearS <= SYNTHESIZED_WIRE_25;
Lambda1 <= SYNTHESIZED_WIRE_16;
Lambda2 <= SYNTHESIZED_WIRE_17;
Lambda3 <= SYNTHESIZED_WIRE_18;
Lambda4 <= SYNTHESIZED_WIRE_19;
Omega0 <= SYNTHESIZED_WIRE_29;
Omega1 <= SYNTHESIZED_WIRE_28;
Omega2 <= SYNTHESIZED_WIRE_27;
Omega3 <= SYNTHESIZED_WIRE_26;



b2v_inst : berlemas
PORT MAP(Clock => Clock,
		 Reset => Reset,
		 Impar => Impar,
		 Count4 => Count4,
		 Count8 => Count8,
		 Inicia => Inicia,
		 Input => Input,
		 Registra => SYNTHESIZED_WIRE_15,
		 di => di,
		 loadS => SYNTHESIZED_WIRE_24,
		 loadB => loadB,
		 loadC => loadC,
		 clearS => SYNTHESIZED_WIRE_25,
		 clearB => clearB,
		 clearC => clearC,
		 MuxSel => MuxSel,
		 Nerror => Nerror,
		 B_0 => B_0,
		 B_1 => B_1,
		 B_2 => B_2,
		 B_3 => B_3,
		 B_mux => B_mux,
		 DS_reg => DS_reg,
		 Lambda1 => SYNTHESIZED_WIRE_16,
		 Lambda2 => SYNTHESIZED_WIRE_17,
		 Lambda3 => SYNTHESIZED_WIRE_18,
		 Lambda4 => SYNTHESIZED_WIRE_19,
		 Omega => SYNTHESIZED_WIRE_2,
		 S0 => S0,
		 S1 => S1,
		 S2 => S2,
		 S3 => S3,
		 S4 => S4,
		 Test_state => Test_state);


b2v_inst2 : register4b
PORT MAP(ld => SYNTHESIZED_WIRE_24,
		 clr => SYNTHESIZED_WIRE_25,
		 clk => Clock,
		 d => SYNTHESIZED_WIRE_2,
		 q => SYNTHESIZED_WIRE_26);


b2v_inst3 : register4b
PORT MAP(ld => SYNTHESIZED_WIRE_24,
		 clr => SYNTHESIZED_WIRE_25,
		 clk => Clock,
		 d => SYNTHESIZED_WIRE_26,
		 q => SYNTHESIZED_WIRE_27);


b2v_inst4 : register4b
PORT MAP(ld => SYNTHESIZED_WIRE_24,
		 clr => SYNTHESIZED_WIRE_25,
		 clk => Clock,
		 d => SYNTHESIZED_WIRE_27,
		 q => SYNTHESIZED_WIRE_28);


b2v_inst5 : register4b
PORT MAP(ld => SYNTHESIZED_WIRE_24,
		 clr => SYNTHESIZED_WIRE_25,
		 clk => Clock,
		 d => SYNTHESIZED_WIRE_28,
		 q => SYNTHESIZED_WIRE_29);


b2v_inst6 : register4b
PORT MAP(ld => SYNTHESIZED_WIRE_24,
		 clr => SYNTHESIZED_WIRE_25,
		 clk => Clock,
		 d => SYNTHESIZED_WIRE_29,
		 q => Omega4);


b2v_inst8 : chienforney
PORT MAP(clock => Clock,
		 reset => Reset,
		 inicia => SYNTHESIZED_WIRE_15,
		 Input => Mensagem,
		 Lamb0 => SYNTHESIZED_WIRE_16,
		 Lamb1 => SYNTHESIZED_WIRE_17,
		 Lamb2 => SYNTHESIZED_WIRE_18,
		 Lamb3 => SYNTHESIZED_WIRE_19,
		 Omega0 => SYNTHESIZED_WIRE_29,
		 Omega1 => SYNTHESIZED_WIRE_28,
		 Omega2 => SYNTHESIZED_WIRE_27,
		 Omega3 => SYNTHESIZED_WIRE_26,
		 pin_name1 => pin_name1,
		 Decod => Decod);


END bdf_type;