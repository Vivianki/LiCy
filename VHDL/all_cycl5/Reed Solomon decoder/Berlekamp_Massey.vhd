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
-- CREATED		"Tue Sep 27 22:51:30 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Berlekamp_Massey IS 
	PORT
	(
		DsIn :  IN  STD_LOGIC;
		LoadS :  IN  STD_LOGIC;
		LoadB :  IN  STD_LOGIC;
		LoadC :  IN  STD_LOGIC;
		ClearS :  IN  STD_LOGIC;
		ClearB :  IN  STD_LOGIC;
		ClearC :  IN  STD_LOGIC;
		MuxSel :  IN  STD_LOGIC;
		Clock :  IN  STD_LOGIC;				
		SIn :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Nerror :  OUT  STD_LOGIC;
		B_0 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		B_1 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		B_2 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		B_3 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		B_mux :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		DS_reg :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Lamb1 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Lamb2 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Lamb3 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Lamb4 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		OmegaOut :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		S0 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		S1 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		S2 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		S3 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		S4 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END Berlekamp_Massey;

ARCHITECTURE bdf_type OF Berlekamp_Massey IS 

COMPONENT register4b_decoder
	PORT(ld : IN STD_LOGIC;
		 clr : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 d : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT gf_mult_decoder
	PORT(x : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 y : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
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

COMPONENT gf_inv
	PORT(x : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	ds :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_54 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_55 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_56 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_57 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_58 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_59 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_60 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_61 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_62 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_63 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_64 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_65 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_66 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_28 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_29 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_31 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_33 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_36 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_38 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_45 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_46 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_49 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_50 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_51 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_52 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_53 :  STD_LOGIC_VECTOR(3 DOWNTO 0);


BEGIN 
B_0 <= SYNTHESIZED_WIRE_63;
B_1 <= SYNTHESIZED_WIRE_64;
B_2 <= SYNTHESIZED_WIRE_65;
B_3 <= SYNTHESIZED_WIRE_66;
B_mux <= SYNTHESIZED_WIRE_53;
DS_reg <= SYNTHESIZED_WIRE_38;
Lamb1 <= SYNTHESIZED_WIRE_55;
Lamb2 <= SYNTHESIZED_WIRE_57;
Lamb3 <= SYNTHESIZED_WIRE_59;
Lamb4 <= SYNTHESIZED_WIRE_61;
S0 <= SYNTHESIZED_WIRE_54;
S1 <= SYNTHESIZED_WIRE_56;
S2 <= SYNTHESIZED_WIRE_58;
S3 <= SYNTHESIZED_WIRE_60;
S4 <= SYNTHESIZED_WIRE_10;



b2v_inst : register4b_decoder
PORT MAP(ld => LoadS,
		 clr => ClearS,
		 clk => Clock,
		 d => SIn,
		 q => SYNTHESIZED_WIRE_54);


b2v_inst1 : register4b_decoder
PORT MAP(ld => LoadS,
		 clr => ClearS,
		 clk => Clock,
		 d => SYNTHESIZED_WIRE_54,
		 q => SYNTHESIZED_WIRE_56);


b2v_inst10 : register4b_decoder
PORT MAP(ld => LoadB,
		 clr => ClearB,
		 clk => Clock,
		 d => SYNTHESIZED_WIRE_1,
		 q => SYNTHESIZED_WIRE_64);


b2v_inst11 : register4b_decoder
PORT MAP(ld => LoadB,
		 clr => ClearB,
		 clk => Clock,
		 d => SYNTHESIZED_WIRE_2,
		 q => SYNTHESIZED_WIRE_65);


b2v_inst13 : gf_mult_decoder
PORT MAP(x => SYNTHESIZED_WIRE_55,
		 y => SYNTHESIZED_WIRE_56,
		 o => SYNTHESIZED_WIRE_26);


b2v_inst14 : gf_mult_decoder
PORT MAP(x => SYNTHESIZED_WIRE_57,
		 y => SYNTHESIZED_WIRE_58,
		 o => SYNTHESIZED_WIRE_25);


b2v_inst15 : gf_mult_decoder
PORT MAP(x => SYNTHESIZED_WIRE_59,
		 y => SYNTHESIZED_WIRE_60,
		 o => SYNTHESIZED_WIRE_24);


b2v_inst16 : gf_mult_decoder
PORT MAP(x => SYNTHESIZED_WIRE_61,
		 y => SYNTHESIZED_WIRE_10,
		 o => SYNTHESIZED_WIRE_23);


b2v_inst17 : gf_mult_decoder
PORT MAP(x => SYNTHESIZED_WIRE_62,
		 y => SYNTHESIZED_WIRE_63,
		 o => SYNTHESIZED_WIRE_29);


b2v_inst18 : gf_mult_decoder
PORT MAP(x => SYNTHESIZED_WIRE_62,
		 y => SYNTHESIZED_WIRE_64,
		 o => SYNTHESIZED_WIRE_31);


b2v_inst19 : gf_mult_decoder
PORT MAP(x => SYNTHESIZED_WIRE_62,
		 y => SYNTHESIZED_WIRE_65,
		 o => SYNTHESIZED_WIRE_33);


b2v_inst2 : register4b_decoder
PORT MAP(ld => LoadS,
		 clr => ClearS,
		 clk => Clock,
		 d => SYNTHESIZED_WIRE_56,
		 q => SYNTHESIZED_WIRE_58);


b2v_inst20 : gf_mult_decoder
PORT MAP(x => SYNTHESIZED_WIRE_62,
		 y => SYNTHESIZED_WIRE_66,
		 o => SYNTHESIZED_WIRE_36);


b2v_inst21 : gf_mult_decoder
PORT MAP(x => SYNTHESIZED_WIRE_20,
		 y => ds,
		 o => SYNTHESIZED_WIRE_62);


b2v_inst22 : mux2x1
GENERIC MAP(NB => 4
			)
PORT MAP(Sel => MuxSel,
		 I0 => SYNTHESIZED_WIRE_66,
		 I1 => SYNTHESIZED_WIRE_22,
		 O => SYNTHESIZED_WIRE_53);


b2v_inst23 : gf_sum_decoder
PORT MAP(a => SYNTHESIZED_WIRE_23,
		 b => SYNTHESIZED_WIRE_24,
		 c => SYNTHESIZED_WIRE_27);


b2v_inst24 : gf_sum_decoder
PORT MAP(a => SYNTHESIZED_WIRE_25,
		 b => SYNTHESIZED_WIRE_26,
		 c => SYNTHESIZED_WIRE_28);


b2v_inst25 : gf_sum_decoder
PORT MAP(a => SYNTHESIZED_WIRE_27,
		 b => SYNTHESIZED_WIRE_28,
		 c => SYNTHESIZED_WIRE_46);


b2v_inst26 : register4b_decoder
PORT MAP(ld => DsIn,
		 clr => ClearC,
		 clk => Clock,
		 d => ds,
		 q => SYNTHESIZED_WIRE_38);


b2v_inst27 : gf_sum_decoder
PORT MAP(a => SYNTHESIZED_WIRE_29,
		 b => SYNTHESIZED_WIRE_55,
		 c => SYNTHESIZED_WIRE_49);


b2v_inst28 : gf_sum_decoder
PORT MAP(a => SYNTHESIZED_WIRE_31,
		 b => SYNTHESIZED_WIRE_57,
		 c => SYNTHESIZED_WIRE_50);


b2v_inst29 : gf_sum_decoder
PORT MAP(a => SYNTHESIZED_WIRE_33,
		 b => SYNTHESIZED_WIRE_59,
		 c => SYNTHESIZED_WIRE_51);


b2v_inst3 : register4b_decoder
PORT MAP(ld => LoadS,
		 clr => ClearS,
		 clk => Clock,
		 d => SYNTHESIZED_WIRE_58,
		 q => SYNTHESIZED_WIRE_60);


b2v_inst30 : gf_sum_decoder
PORT MAP(a => SYNTHESIZED_WIRE_36,
		 b => SYNTHESIZED_WIRE_61,
		 c => SYNTHESIZED_WIRE_52);


b2v_inst31 : static_1_decoder
PORT MAP(		 o => SYNTHESIZED_WIRE_22);


b2v_inst32 : gf_inv
PORT MAP(x => SYNTHESIZED_WIRE_38,
		 o => SYNTHESIZED_WIRE_20);


b2v_inst33 : mux2x1
GENERIC MAP(NB => 4
			)
PORT MAP(Sel => MuxSel,
		 I0 => SYNTHESIZED_WIRE_65,
		 I1 => SYNTHESIZED_WIRE_59,
		 O => SYNTHESIZED_WIRE_45);


b2v_inst34 : mux2x1
GENERIC MAP(NB => 4
			)
PORT MAP(Sel => MuxSel,
		 I0 => SYNTHESIZED_WIRE_64,
		 I1 => SYNTHESIZED_WIRE_57,
		 O => SYNTHESIZED_WIRE_2);


b2v_inst35 : mux2x1
GENERIC MAP(NB => 4
			)
PORT MAP(Sel => MuxSel,
		 I0 => SYNTHESIZED_WIRE_63,
		 I1 => SYNTHESIZED_WIRE_55,
		 O => SYNTHESIZED_WIRE_1);


b2v_inst36 : register4b_decoder
PORT MAP(ld => LoadB,
		 clr => ClearB,
		 clk => Clock,
		 d => SYNTHESIZED_WIRE_45,
		 q => SYNTHESIZED_WIRE_66);


b2v_inst37 : gf_sum_decoder
PORT MAP(a => SYNTHESIZED_WIRE_46,
		 b => SYNTHESIZED_WIRE_54,
		 c => ds);


b2v_inst4 : register4b_decoder
PORT MAP(ld => LoadS,
		 clr => ClearS,
		 clk => Clock,
		 d => SYNTHESIZED_WIRE_60,
		 q => SYNTHESIZED_WIRE_10);


b2v_inst5 : register4b_decoder
PORT MAP(ld => LoadC,
		 clr => ClearC,
		 clk => Clock,
		 d => SYNTHESIZED_WIRE_49,
		 q => SYNTHESIZED_WIRE_55);


b2v_inst6 : register4b_decoder
PORT MAP(ld => LoadC,
		 clr => ClearC,
		 clk => Clock,
		 d => SYNTHESIZED_WIRE_50,
		 q => SYNTHESIZED_WIRE_57);


b2v_inst7 : register4b_decoder
PORT MAP(ld => LoadC,
		 clr => ClearC,
		 clk => Clock,
		 d => SYNTHESIZED_WIRE_51,
		 q => SYNTHESIZED_WIRE_59);


b2v_inst8 : register4b_decoder
PORT MAP(ld => LoadC,
		 clr => ClearC,
		 clk => Clock,
		 d => SYNTHESIZED_WIRE_52,
		 q => SYNTHESIZED_WIRE_61);


b2v_inst9 : register4b_decoder
PORT MAP(ld => LoadB,
		 clr => ClearB,
		 clk => Clock,
		 d => SYNTHESIZED_WIRE_53,
		 q => SYNTHESIZED_WIRE_63);


Nerror <= NOT(ds(3) OR ds(1) OR ds(2) OR ds(0));

OmegaOut <= ds;

END bdf_type;