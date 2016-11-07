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
-- CREATED		"Sun Nov 06 22:08:18 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY all_enc IS 
	PORT
	(
		Flag :  IN  STD_LOGIC;
		Clock50MHz :  IN  STD_LOGIC;
		Clk200kHz :  OUT  STD_LOGIC;
		Clk100kHz :  OUT  STD_LOGIC;
		Clk25kH :  OUT  STD_LOGIC;
		Clk25D4kHz :  OUT  STD_LOGIC;
		Flag_2 :  OUT  STD_LOGIC;
		Output_Interlv :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Output_Interlv_Aux :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Output_PHR_PSDU :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		RSOutput :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END all_enc;

ARCHITECTURE bdf_type OF all_enc IS 

COMPONENT phr_psdu
	PORT(address : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT divideclockby125
	PORT(Clk : IN STD_LOGIC;
		 Rst : IN STD_LOGIC;
		 ClkDiv125 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT divideclockby2
	PORT(Clk : IN STD_LOGIC;
		 Rst : IN STD_LOGIC;
		 ClkDiv2 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT divideclockby4
	PORT(Clk : IN STD_LOGIC;
		 Rst : IN STD_LOGIC;
		 ClkDiv4 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT counter_phr_psdu
	PORT(Clk : IN STD_LOGIC;
		 Flag : IN STD_LOGIC;
		 Q : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT rsencoder
	PORT(Clk : IN STD_LOGIC;
		 Flag : IN STD_LOGIC;
		 InputRS : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 OutputRS : OUT STD_LOGIC_VECTOR(0 TO 3)
	);
END COMPONENT;

COMPONENT interleaver
	PORT(Flag : IN STD_LOGIC;
		 Clock : IN STD_LOGIC;
		 InputIntrlv : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Flag_2 : OUT STD_LOGIC;
		 Output_Interlv : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Output_Interlv_Aux : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC_VECTOR(0 TO 3);


BEGIN 
Clk200kHz <= SYNTHESIZED_WIRE_2;
Clk100kHz <= SYNTHESIZED_WIRE_4;
Clk25kH <= SYNTHESIZED_WIRE_6;
Clk25D4kHz <= SYNTHESIZED_WIRE_14;
Output_PHR_PSDU <= SYNTHESIZED_WIRE_10;
RSOutput(3 DOWNTO 0) <= SYNTHESIZED_WIRE_12(0 TO 3);
SYNTHESIZED_WIRE_13 <= '0';



b2v_inst : phr_psdu
PORT MAP(address => SYNTHESIZED_WIRE_0,
		 Q => SYNTHESIZED_WIRE_10);


b2v_inst2 : divideclockby125
PORT MAP(Clk => Clock50MHz,
		 Rst => SYNTHESIZED_WIRE_13,
		 ClkDiv125 => SYNTHESIZED_WIRE_2);


b2v_inst3 : divideclockby2
PORT MAP(Clk => SYNTHESIZED_WIRE_2,
		 Rst => SYNTHESIZED_WIRE_13,
		 ClkDiv2 => SYNTHESIZED_WIRE_4);


b2v_inst4 : divideclockby4
PORT MAP(Clk => SYNTHESIZED_WIRE_4,
		 Rst => SYNTHESIZED_WIRE_13,
		 ClkDiv4 => SYNTHESIZED_WIRE_6);


b2v_inst5 : divideclockby4
PORT MAP(Clk => SYNTHESIZED_WIRE_6,
		 Rst => SYNTHESIZED_WIRE_13,
		 ClkDiv4 => SYNTHESIZED_WIRE_14);



b2v_inst7 : counter_phr_psdu
PORT MAP(Clk => SYNTHESIZED_WIRE_14,
		 Flag => Flag,
		 Q => SYNTHESIZED_WIRE_0);


b2v_inst8 : rsencoder
PORT MAP(Clk => SYNTHESIZED_WIRE_14,
		 Flag => Flag,
		 InputRS => SYNTHESIZED_WIRE_10,
		 OutputRS => SYNTHESIZED_WIRE_12);


b2v_inst9 : interleaver
PORT MAP(Flag => Flag,
		 Clock => SYNTHESIZED_WIRE_14,
		 InputIntrlv => SYNTHESIZED_WIRE_12,
		 Flag_2 => Flag_2,
		 Output_Interlv => Output_Interlv,
		 Output_Interlv_Aux => Output_Interlv_Aux);


END bdf_type;