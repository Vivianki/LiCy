-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
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
-- VERSION		"Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"
-- CREATED		"Sun May 15 20:13:13 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY RSencoder IS 
	PORT
	(
		Clock :  IN  STD_LOGIC;
		Clear :  IN  STD_LOGIC;
		Input :  IN  STD_LOGIC_VECTOR(0 TO 3);
		count :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Output :  OUT  STD_LOGIC_VECTOR(0 TO 3);
		reg1 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		reg2 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		reg3 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		reg4 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		saida_AND :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		saidaMul :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END RSencoder;

ARCHITECTURE bdf_type OF RSencoder IS 

COMPONENT sinalcontrole
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 control : OUT STD_LOGIC;
		 count : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT gf_mult
	PORT(x : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 y : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
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

COMPONENT static_12
	PORT(		 o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT static_15
	PORT(		 o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT static_3
	PORT(		 o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT and4x1
	PORT(b : IN STD_LOGIC;
		 a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 c : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
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

COMPONENT gf_sum
	PORT(a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 c : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT static_1
	PORT(		 o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_28 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_29 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_30 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC_VECTOR(3 DOWNTO 0);


BEGIN 
reg1 <= SYNTHESIZED_WIRE_17;
reg2 <= SYNTHESIZED_WIRE_19;
reg3 <= SYNTHESIZED_WIRE_21;
reg4 <= SYNTHESIZED_WIRE_30;
saida_AND <= SYNTHESIZED_WIRE_27;
saidaMul <= SYNTHESIZED_WIRE_7;
SYNTHESIZED_WIRE_28 <= '1';



b2v_inst : sinalcontrole
PORT MAP(clk => Clock,
		 reset => Clear,
		 control => SYNTHESIZED_WIRE_29,
		 count => count);


b2v_inst10 : gf_mult
PORT MAP(x => SYNTHESIZED_WIRE_27,
		 y => SYNTHESIZED_WIRE_1,
		 o => SYNTHESIZED_WIRE_18);


b2v_inst11 : gf_mult
PORT MAP(x => SYNTHESIZED_WIRE_27,
		 y => SYNTHESIZED_WIRE_3,
		 o => SYNTHESIZED_WIRE_7);


b2v_inst12 : register4b
PORT MAP(ld => SYNTHESIZED_WIRE_28,
		 clr => Clear,
		 clk => Clock,
		 d => SYNTHESIZED_WIRE_5,
		 q => SYNTHESIZED_WIRE_30);


b2v_inst13 : register4b
PORT MAP(ld => SYNTHESIZED_WIRE_28,
		 clr => Clear,
		 clk => Clock,
		 d => SYNTHESIZED_WIRE_7,
		 q => SYNTHESIZED_WIRE_17);


b2v_inst14 : register4b
PORT MAP(ld => SYNTHESIZED_WIRE_28,
		 clr => Clear,
		 clk => Clock,
		 d => SYNTHESIZED_WIRE_9,
		 q => SYNTHESIZED_WIRE_19);


b2v_inst15 : register4b
PORT MAP(ld => SYNTHESIZED_WIRE_28,
		 clr => Clear,
		 clk => Clock,
		 d => SYNTHESIZED_WIRE_11,
		 q => SYNTHESIZED_WIRE_21);


b2v_inst16 : static_12
PORT MAP(		 o => SYNTHESIZED_WIRE_3);


b2v_inst17 : static_15
PORT MAP(		 o => SYNTHESIZED_WIRE_24);


b2v_inst18 : static_3
PORT MAP(		 o => SYNTHESIZED_WIRE_1);


b2v_inst2 : and4x1
PORT MAP(b => SYNTHESIZED_WIRE_29,
		 a => SYNTHESIZED_WIRE_13,
		 c => SYNTHESIZED_WIRE_27);


b2v_inst20 : mux2x1
GENERIC MAP(NB => 4
			)
PORT MAP(Sel => SYNTHESIZED_WIRE_29,
		 I0 => SYNTHESIZED_WIRE_30,
		 I1 => Input,
		 O => Output);



b2v_inst3 : gf_sum
PORT MAP(a => SYNTHESIZED_WIRE_16,
		 b => SYNTHESIZED_WIRE_17,
		 c => SYNTHESIZED_WIRE_9);


b2v_inst4 : gf_sum
PORT MAP(a => SYNTHESIZED_WIRE_18,
		 b => SYNTHESIZED_WIRE_19,
		 c => SYNTHESIZED_WIRE_11);


b2v_inst5 : gf_sum
PORT MAP(a => SYNTHESIZED_WIRE_20,
		 b => SYNTHESIZED_WIRE_21,
		 c => SYNTHESIZED_WIRE_5);


b2v_inst6 : gf_sum
PORT MAP(a => SYNTHESIZED_WIRE_30,
		 b => Input,
		 c => SYNTHESIZED_WIRE_13);


b2v_inst7 : gf_mult
PORT MAP(x => SYNTHESIZED_WIRE_27,
		 y => SYNTHESIZED_WIRE_24,
		 o => SYNTHESIZED_WIRE_20);


b2v_inst8 : gf_mult
PORT MAP(x => SYNTHESIZED_WIRE_27,
		 y => SYNTHESIZED_WIRE_26,
		 o => SYNTHESIZED_WIRE_16);


b2v_inst9 : static_1
PORT MAP(		 o => SYNTHESIZED_WIRE_26);


END bdf_type;