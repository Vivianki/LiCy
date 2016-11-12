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
-- CREATED		"Wed Sep 28 00:45:02 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY ChienSearchLocation IS 
	PORT
	(
		MuxSel :  IN  STD_LOGIC;
		Clear :  IN  STD_LOGIC;
		Load :  IN  STD_LOGIC;
		Clock :  IN  STD_LOGIC;
		Lamb0 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Lamb1 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Lamb2 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Lamb3 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Result :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		ResultOdd :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END ChienSearchLocation;

ARCHITECTURE bdf_type OF ChienSearchLocation IS 

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

COMPONENT gf_sum_decoder
	PORT(a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 c : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT static_1_decoder
	PORT(		 o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT static_2_decoder
	PORT(		 o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT static_8_decoder
	PORT(		 o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT static_4_decoder
	PORT(		 o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT static_3_decoder
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
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC_VECTOR(3 DOWNTO 0);


BEGIN 
ResultOdd <= SYNTHESIZED_WIRE_11;



b2v_inst : mux2x1
GENERIC MAP(NB => 4
			)
PORT MAP(Sel => MuxSel,
		 I0 => Lamb0,
		 I1 => SYNTHESIZED_WIRE_0,
		 O => SYNTHESIZED_WIRE_17);


b2v_inst1 : mux2x1
GENERIC MAP(NB => 4
			)
PORT MAP(Sel => MuxSel,
		 I0 => Lamb2,
		 I1 => SYNTHESIZED_WIRE_1,
		 O => SYNTHESIZED_WIRE_16);


b2v_inst10 : gf_mult_decoder
PORT MAP(x => SYNTHESIZED_WIRE_24,
		 y => SYNTHESIZED_WIRE_3,
		 o => SYNTHESIZED_WIRE_0);


b2v_inst11 : gf_mult_decoder
PORT MAP(x => SYNTHESIZED_WIRE_25,
		 y => SYNTHESIZED_WIRE_5,
		 o => SYNTHESIZED_WIRE_1);


b2v_inst12 : gf_sum_decoder
PORT MAP(a => SYNTHESIZED_WIRE_6,
		 b => SYNTHESIZED_WIRE_26,
		 c => SYNTHESIZED_WIRE_8);


b2v_inst13 : gf_sum_decoder
PORT MAP(a => SYNTHESIZED_WIRE_8,
		 b => SYNTHESIZED_WIRE_27,
		 c => SYNTHESIZED_WIRE_10);


b2v_inst14 : gf_sum_decoder
PORT MAP(a => SYNTHESIZED_WIRE_10,
		 b => SYNTHESIZED_WIRE_11,
		 c => Result);


b2v_inst15 : gf_sum_decoder
PORT MAP(a => SYNTHESIZED_WIRE_24,
		 b => SYNTHESIZED_WIRE_25,
		 c => SYNTHESIZED_WIRE_11);


b2v_inst16 : static_1_decoder
PORT MAP(		 o => SYNTHESIZED_WIRE_6);


b2v_inst17 : static_2_decoder
PORT MAP(		 o => SYNTHESIZED_WIRE_3);


b2v_inst18 : static_8_decoder
PORT MAP(		 o => SYNTHESIZED_WIRE_5);


b2v_inst19 : static_4_decoder
PORT MAP(		 o => SYNTHESIZED_WIRE_21);


b2v_inst2 : mux2x1
GENERIC MAP(NB => 4
			)
PORT MAP(Sel => MuxSel,
		 I0 => Lamb1,
		 I1 => SYNTHESIZED_WIRE_14,
		 O => SYNTHESIZED_WIRE_18);


b2v_inst20 : static_3_decoder
PORT MAP(		 o => SYNTHESIZED_WIRE_23);


b2v_inst3 : mux2x1
GENERIC MAP(NB => 4
			)
PORT MAP(Sel => MuxSel,
		 I0 => Lamb3,
		 I1 => SYNTHESIZED_WIRE_15,
		 O => SYNTHESIZED_WIRE_19);


b2v_inst4 : register4b_decoder
PORT MAP(ld => Load,
		 clr => Clear,
		 clk => Clock,
		 d => SYNTHESIZED_WIRE_16,
		 q => SYNTHESIZED_WIRE_25);


b2v_inst5 : register4b_decoder
PORT MAP(ld => Load,
		 clr => Clear,
		 clk => Clock,
		 d => SYNTHESIZED_WIRE_17,
		 q => SYNTHESIZED_WIRE_24);


b2v_inst6 : register4b_decoder
PORT MAP(ld => Load,
		 clr => Clear,
		 clk => Clock,
		 d => SYNTHESIZED_WIRE_18,
		 q => SYNTHESIZED_WIRE_26);


b2v_inst7 : register4b_decoder
PORT MAP(ld => Load,
		 clr => Clear,
		 clk => Clock,
		 d => SYNTHESIZED_WIRE_19,
		 q => SYNTHESIZED_WIRE_27);


b2v_inst8 : gf_mult_decoder
PORT MAP(x => SYNTHESIZED_WIRE_26,
		 y => SYNTHESIZED_WIRE_21,
		 o => SYNTHESIZED_WIRE_14);


b2v_inst9 : gf_mult_decoder
PORT MAP(x => SYNTHESIZED_WIRE_27,
		 y => SYNTHESIZED_WIRE_23,
		 o => SYNTHESIZED_WIRE_15);


END bdf_type;