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
-- CREATED		"Mon Oct 03 10:00:48 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Syndrome IS 
	PORT
	(
		Clear :  IN  STD_LOGIC;
		Clock :  IN  STD_LOGIC;
		Input :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		S0 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		S1 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		S2 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		S3 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		S4 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		S5 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		S6 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		S7 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END Syndrome;

ARCHITECTURE bdf_type OF Syndrome IS 

COMPONENT static_3_decoder
	PORT(		 o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT gf_sum_decoder
	PORT(a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 c : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT gf_mult_decoder
	PORT(x : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 y : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT register4b_decoder
	PORT(ld : IN STD_LOGIC;
		 clr : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 d : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT static_11_decoder
	PORT(		 o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT static_2_decoder
	PORT(		 o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT static_6_decoder
	PORT(		 o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT static_4_decoder
	PORT(		 o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT static_8_decoder
	PORT(		 o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT static_12_decoder
	PORT(		 o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT static_1_decoder
	PORT(		 o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_40 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_28 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_29 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_31 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_32 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_33 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_34 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_36 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_37 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_38 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_39 :  STD_LOGIC_VECTOR(3 DOWNTO 0);


BEGIN 
S0 <= SYNTHESIZED_WIRE_1;
S1 <= SYNTHESIZED_WIRE_3;
S2 <= SYNTHESIZED_WIRE_5;
S3 <= SYNTHESIZED_WIRE_7;
S4 <= SYNTHESIZED_WIRE_11;
S5 <= SYNTHESIZED_WIRE_13;
S6 <= SYNTHESIZED_WIRE_27;
S7 <= SYNTHESIZED_WIRE_32;
SYNTHESIZED_WIRE_40 <= '1';




b2v_inst1 : static_3_decoder
PORT MAP(		 o => SYNTHESIZED_WIRE_12);


b2v_inst10 : gf_sum_decoder
PORT MAP(a => SYNTHESIZED_WIRE_0,
		 b => Input,
		 c => SYNTHESIZED_WIRE_26);


b2v_inst11 : gf_mult_decoder
PORT MAP(x => SYNTHESIZED_WIRE_1,
		 y => SYNTHESIZED_WIRE_2,
		 o => SYNTHESIZED_WIRE_21);


b2v_inst12 : gf_mult_decoder
PORT MAP(x => SYNTHESIZED_WIRE_3,
		 y => SYNTHESIZED_WIRE_4,
		 o => SYNTHESIZED_WIRE_22);


b2v_inst13 : gf_mult_decoder
PORT MAP(x => SYNTHESIZED_WIRE_5,
		 y => SYNTHESIZED_WIRE_6,
		 o => SYNTHESIZED_WIRE_37);


b2v_inst14 : gf_mult_decoder
PORT MAP(x => SYNTHESIZED_WIRE_7,
		 y => SYNTHESIZED_WIRE_8,
		 o => SYNTHESIZED_WIRE_38);


b2v_inst15 : register4b_decoder
PORT MAP(ld => SYNTHESIZED_WIRE_40,
		 clr => Clear,
		 clk => Clock,
		 d => SYNTHESIZED_WIRE_10,
		 q => SYNTHESIZED_WIRE_1);


b2v_inst16 : gf_mult_decoder
PORT MAP(x => SYNTHESIZED_WIRE_11,
		 y => SYNTHESIZED_WIRE_12,
		 o => SYNTHESIZED_WIRE_39);


b2v_inst17 : gf_mult_decoder
PORT MAP(x => SYNTHESIZED_WIRE_13,
		 y => SYNTHESIZED_WIRE_14,
		 o => SYNTHESIZED_WIRE_0);


b2v_inst18 : static_11_decoder
PORT MAP(		 o => SYNTHESIZED_WIRE_33);


b2v_inst19 : register4b_decoder
PORT MAP(ld => SYNTHESIZED_WIRE_40,
		 clr => Clear,
		 clk => Clock,
		 d => SYNTHESIZED_WIRE_16,
		 q => SYNTHESIZED_WIRE_3);


b2v_inst2 : static_2_decoder
PORT MAP(		 o => SYNTHESIZED_WIRE_4);


b2v_inst20 : register4b_decoder
PORT MAP(ld => SYNTHESIZED_WIRE_40,
		 clr => Clear,
		 clk => Clock,
		 d => SYNTHESIZED_WIRE_18,
		 q => SYNTHESIZED_WIRE_5);


b2v_inst21 : register4b_decoder
PORT MAP(ld => SYNTHESIZED_WIRE_40,
		 clr => Clear,
		 clk => Clock,
		 d => SYNTHESIZED_WIRE_20,
		 q => SYNTHESIZED_WIRE_7);


b2v_inst22 : gf_sum_decoder
PORT MAP(a => SYNTHESIZED_WIRE_21,
		 b => Input,
		 c => SYNTHESIZED_WIRE_10);


b2v_inst23 : gf_sum_decoder
PORT MAP(a => SYNTHESIZED_WIRE_22,
		 b => Input,
		 c => SYNTHESIZED_WIRE_16);


b2v_inst24 : register4b_decoder
PORT MAP(ld => SYNTHESIZED_WIRE_40,
		 clr => Clear,
		 clk => Clock,
		 d => SYNTHESIZED_WIRE_24,
		 q => SYNTHESIZED_WIRE_11);


b2v_inst25 : register4b_decoder
PORT MAP(ld => SYNTHESIZED_WIRE_40,
		 clr => Clear,
		 clk => Clock,
		 d => SYNTHESIZED_WIRE_26,
		 q => SYNTHESIZED_WIRE_13);


b2v_inst26 : gf_mult_decoder
PORT MAP(x => SYNTHESIZED_WIRE_27,
		 y => SYNTHESIZED_WIRE_28,
		 o => SYNTHESIZED_WIRE_29);


b2v_inst27 : gf_sum_decoder
PORT MAP(a => SYNTHESIZED_WIRE_29,
		 b => Input,
		 c => SYNTHESIZED_WIRE_31);


b2v_inst28 : register4b_decoder
PORT MAP(ld => SYNTHESIZED_WIRE_40,
		 clr => Clear,
		 clk => Clock,
		 d => SYNTHESIZED_WIRE_31,
		 q => SYNTHESIZED_WIRE_27);


b2v_inst29 : static_6_decoder
PORT MAP(		 o => SYNTHESIZED_WIRE_14);


b2v_inst3 : static_4_decoder
PORT MAP(		 o => SYNTHESIZED_WIRE_6);


b2v_inst30 : gf_mult_decoder
PORT MAP(x => SYNTHESIZED_WIRE_32,
		 y => SYNTHESIZED_WIRE_33,
		 o => SYNTHESIZED_WIRE_34);


b2v_inst31 : gf_sum_decoder
PORT MAP(a => SYNTHESIZED_WIRE_34,
		 b => Input,
		 c => SYNTHESIZED_WIRE_36);


b2v_inst32 : register4b_decoder
PORT MAP(ld => SYNTHESIZED_WIRE_40,
		 clr => Clear,
		 clk => Clock,
		 d => SYNTHESIZED_WIRE_36,
		 q => SYNTHESIZED_WIRE_32);


b2v_inst4 : static_8_decoder
PORT MAP(		 o => SYNTHESIZED_WIRE_8);


b2v_inst5 : gf_sum_decoder
PORT MAP(a => SYNTHESIZED_WIRE_37,
		 b => Input,
		 c => SYNTHESIZED_WIRE_18);


b2v_inst6 : gf_sum_decoder
PORT MAP(a => SYNTHESIZED_WIRE_38,
		 b => Input,
		 c => SYNTHESIZED_WIRE_20);


b2v_inst7 : gf_sum_decoder
PORT MAP(a => SYNTHESIZED_WIRE_39,
		 b => Input,
		 c => SYNTHESIZED_WIRE_24);


b2v_inst8 : static_12_decoder
PORT MAP(		 o => SYNTHESIZED_WIRE_28);


b2v_inst9 : static_1_decoder
PORT MAP(		 o => SYNTHESIZED_WIRE_2);


END bdf_type;