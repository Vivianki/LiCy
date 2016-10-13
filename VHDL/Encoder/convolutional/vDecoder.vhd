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
-- CREATED		"Sat Sep 24 20:43:43 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY vDecoder IS 
	PORT
	(
		clear :  IN  STD_LOGIC;
		clock :  IN  STD_LOGIC;
		load :  IN  STD_LOGIC;
		input :  IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
		output :  OUT  STD_LOGIC;
		distance1 :  OUT  STD_LOGIC_VECTOR(9 DOWNTO 0);
		distance2 :  OUT  STD_LOGIC_VECTOR(9 DOWNTO 0);
		longerDistance :  OUT  STD_LOGIC_VECTOR(9 DOWNTO 0);
		NextState :  OUT  STD_LOGIC_VECTOR(5 DOWNTO 0);
		unlikelyState :  OUT  STD_LOGIC_VECTOR(5 DOWNTO 0);
		updatedDistance :  OUT  STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END vDecoder;

ARCHITECTURE bdf_type OF vDecoder IS 

COMPONENT register6b
	PORT(ld : IN STD_LOGIC;
		 clr : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 d : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;

COMPONENT register10b
	PORT(ld : IN STD_LOGIC;
		 clr : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 d : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;

COMPONENT trellistable
	PORT(estado_atual : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 output_esperado0 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
		 output_esperado1 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
		 prox_estado0 : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		 prox_estado1 : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;

COMPONENT distance
	PORT(inputDistance : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 outputDistante : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;

COMPONENT xor3bits
	PORT(a : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 b : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 c : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;

COMPONENT compare
	PORT(distance0 : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		 distance1 : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		 distanceNow : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		 estado0 : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 estado1 : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 equal : OUT STD_LOGIC;
		 nextState0 : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		 nextState1 : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		 updatedDistance0 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		 updatedDistance1 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC_VECTOR(5 DOWNTO 0);


BEGIN 
distance1 <= SYNTHESIZED_WIRE_7;
distance2 <= SYNTHESIZED_WIRE_8;
NextState <= SYNTHESIZED_WIRE_0;
updatedDistance <= SYNTHESIZED_WIRE_1;



b2v_inst : register6b
PORT MAP(ld => load,
		 clr => clear,
		 clk => clock,
		 d => SYNTHESIZED_WIRE_0,
		 q => SYNTHESIZED_WIRE_2);


b2v_inst10 : register10b
PORT MAP(ld => load,
		 clr => clear,
		 clk => clock,
		 d => SYNTHESIZED_WIRE_1,
		 q => SYNTHESIZED_WIRE_9);


b2v_inst4 : trellistable
PORT MAP(estado_atual => SYNTHESIZED_WIRE_2,
		 output_esperado0 => SYNTHESIZED_WIRE_5,
		 output_esperado1 => SYNTHESIZED_WIRE_6,
		 prox_estado0 => SYNTHESIZED_WIRE_10,
		 prox_estado1 => SYNTHESIZED_WIRE_11);


b2v_inst5 : distance
PORT MAP(inputDistance => SYNTHESIZED_WIRE_3,
		 outputDistante => SYNTHESIZED_WIRE_7);


b2v_inst6 : distance
PORT MAP(inputDistance => SYNTHESIZED_WIRE_4,
		 outputDistante => SYNTHESIZED_WIRE_8);


b2v_inst7 : xor3bits
PORT MAP(a => SYNTHESIZED_WIRE_5,
		 b => input,
		 c => SYNTHESIZED_WIRE_3);


b2v_inst8 : xor3bits
PORT MAP(a => SYNTHESIZED_WIRE_6,
		 b => input,
		 c => SYNTHESIZED_WIRE_4);


b2v_inst9 : compare
PORT MAP(distance0 => SYNTHESIZED_WIRE_7,
		 distance1 => SYNTHESIZED_WIRE_8,
		 distanceNow => SYNTHESIZED_WIRE_9,
		 estado0 => SYNTHESIZED_WIRE_10,
		 estado1 => SYNTHESIZED_WIRE_11,
		 equal => output,
		 nextState0 => SYNTHESIZED_WIRE_0,
		 nextState1 => unlikelyState,
		 updatedDistance0 => SYNTHESIZED_WIRE_1,
		 updatedDistance1 => longerDistance);


END bdf_type;