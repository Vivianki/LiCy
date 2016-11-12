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
-- CREATED		"Thu Sep 29 21:45:38 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Forney IS 
	PORT
	(
		Loca :  IN  STD_LOGIC;
		Input :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		ResultOdd :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Valor :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Decod :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END Forney;

ARCHITECTURE bdf_type OF Forney IS 

COMPONENT gf_inv
	PORT(x : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
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

COMPONENT mux2x1
GENERIC (NB : INTEGER
			);
	PORT(Sel : IN STD_LOGIC;
		 I0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 I1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 O : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT static_0_decoder
	PORT(		 o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(3 DOWNTO 0);


BEGIN 



b2v_inst : gf_inv
PORT MAP(x => ResultOdd,
		 o => SYNTHESIZED_WIRE_1);


b2v_inst1 : gf_sum_decoder
PORT MAP(a => SYNTHESIZED_WIRE_0,
		 b => Input,
		 c => Decod);


b2v_inst2 : gf_mult_decoder
PORT MAP(x => SYNTHESIZED_WIRE_1,
		 y => Valor,
		 o => SYNTHESIZED_WIRE_2);


b2v_inst3 : mux2x1
GENERIC MAP(NB => 4
			)
PORT MAP(Sel => Loca,
		 I0 => SYNTHESIZED_WIRE_2,
		 I1 => SYNTHESIZED_WIRE_3,
		 O => SYNTHESIZED_WIRE_0);


b2v_inst5 : static_0_decoder
PORT MAP(		 o => SYNTHESIZED_WIRE_3);


END bdf_type;