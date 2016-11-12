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
-- CREATED		"Sat Nov 12 15:52:27 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY ChienSearchValue IS 
	PORT
	(
		MuxSel :  IN  STD_LOGIC;
		Load :  IN  STD_LOGIC;
		Clock :  IN  STD_LOGIC;
		Clear :  IN  STD_LOGIC;
		Lamb0 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Lamb1 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Lamb2 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Lamb3 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Result :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END ChienSearchValue;

ARCHITECTURE bdf_type OF ChienSearchValue IS 

COMPONENT static_4_decoder
	PORT(		 o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT mux2x1
GENERIC (NB : INTEGER
			);
	PORT(Sel : IN STD_LOGIC;
		 I0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 I1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 O : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT gf_mult_decoder
	PORT(x : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 y : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT static_2_decoder
	PORT(		 o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT gf_sum_decoder
	PORT(a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 c : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT static_8_decoder
	PORT(		 o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
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

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC_VECTOR(3 DOWNTO 0);


BEGIN 



b2v_inst : static_4_decoder
PORT MAP(		 o => SYNTHESIZED_WIRE_2);


b2v_inst1 : mux2x1
GENERIC MAP(NB => 4
			)
PORT MAP(Sel => MuxSel,
		 I0 => Lamb2,
		 I1 => SYNTHESIZED_WIRE_0,
		 O => SYNTHESIZED_WIRE_11);


b2v_inst11 : gf_mult_decoder
PORT MAP(x => SYNTHESIZED_WIRE_18,
		 y => SYNTHESIZED_WIRE_2,
		 o => SYNTHESIZED_WIRE_0);


b2v_inst12 : static_2_decoder
PORT MAP(		 o => SYNTHESIZED_WIRE_15);


b2v_inst13 : gf_sum_decoder
PORT MAP(a => SYNTHESIZED_WIRE_19,
		 b => SYNTHESIZED_WIRE_20,
		 c => SYNTHESIZED_WIRE_5);


b2v_inst14 : gf_sum_decoder
PORT MAP(a => SYNTHESIZED_WIRE_5,
		 b => SYNTHESIZED_WIRE_6,
		 c => Result);


b2v_inst15 : gf_sum_decoder
PORT MAP(a => SYNTHESIZED_WIRE_7,
		 b => SYNTHESIZED_WIRE_18,
		 c => SYNTHESIZED_WIRE_6);


b2v_inst16 : static_8_decoder
PORT MAP(		 o => SYNTHESIZED_WIRE_17);


b2v_inst2 : mux2x1
GENERIC MAP(NB => 4
			)
PORT MAP(Sel => MuxSel,
		 I0 => Lamb1,
		 I1 => SYNTHESIZED_WIRE_9,
		 O => SYNTHESIZED_WIRE_12);


b2v_inst3 : mux2x1
GENERIC MAP(NB => 4
			)
PORT MAP(Sel => MuxSel,
		 I0 => Lamb3,
		 I1 => SYNTHESIZED_WIRE_10,
		 O => SYNTHESIZED_WIRE_13);


b2v_inst4 : register4b_decoder
PORT MAP(ld => Load,
		 clr => Clear,
		 clk => Clock,
		 d => SYNTHESIZED_WIRE_11,
		 q => SYNTHESIZED_WIRE_18);


b2v_inst5 : register4b_decoder
PORT MAP(ld => Load,
		 clr => Clear,
		 clk => Clock,
		 d => Lamb0,
		 q => SYNTHESIZED_WIRE_7);


b2v_inst6 : register4b_decoder
PORT MAP(ld => Load,
		 clr => Clear,
		 clk => Clock,
		 d => SYNTHESIZED_WIRE_12,
		 q => SYNTHESIZED_WIRE_19);


b2v_inst7 : register4b_decoder
PORT MAP(ld => Load,
		 clr => Clear,
		 clk => Clock,
		 d => SYNTHESIZED_WIRE_13,
		 q => SYNTHESIZED_WIRE_20);


b2v_inst8 : gf_mult_decoder
PORT MAP(x => SYNTHESIZED_WIRE_19,
		 y => SYNTHESIZED_WIRE_15,
		 o => SYNTHESIZED_WIRE_9);


b2v_inst9 : gf_mult_decoder
PORT MAP(x => SYNTHESIZED_WIRE_20,
		 y => SYNTHESIZED_WIRE_17,
		 o => SYNTHESIZED_WIRE_10);


END bdf_type;