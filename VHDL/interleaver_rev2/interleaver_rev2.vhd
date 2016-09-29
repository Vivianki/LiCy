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
-- CREATED		"Wed Sep 28 17:24:54 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY interleaver_rev2 IS 
	PORT
	(
		Clock :  IN  STD_LOGIC;
		Flag :  IN  STD_LOGIC;
		wren_b :  IN  STD_LOGIC;
		Addb :  IN  STD_LOGIC_VECTOR(11 DOWNTO 0);
		Db :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Depth :  IN  STD_LOGIC_VECTOR(6 DOWNTO 0);
		Input :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Len :  IN  STD_LOGIC_VECTOR(11 DOWNTO 0);
		carry_sig :  OUT  STD_LOGIC;
		address_calc :  OUT  STD_LOGIC_VECTOR(11 DOWNTO 0);
		depth_count :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		flush_count :  OUT  STD_LOGIC_VECTOR(11 DOWNTO 0);
		iterator_sig :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Output :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		saida_mux :  OUT  STD_LOGIC_VECTOR(11 DOWNTO 0)
	);
END interleaver_rev2;

ARCHITECTURE bdf_type OF interleaver_rev2 IS 

COMPONENT address_calculator
	PORT(clock : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 depth : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 shift_depth : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 carry : OUT STD_LOGIC;
		 count : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
		 iterator_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT flush_counter
	PORT(clock : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 len : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
		 carry : OUT STD_LOGIC;
		 count : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
	);
END COMPONENT;

COMPONENT depth_counter
	PORT(clock : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 depth : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 carry : OUT STD_LOGIC;
		 count : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

COMPONENT mux2x1_12b
	PORT(SEL : IN STD_LOGIC;
		 A : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
		 B : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
		 X : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
	);
END COMPONENT;

COMPONENT interleaver_shared_memory
	PORT(wren_a : IN STD_LOGIC;
		 wren_b : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 address_a : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
		 address_b : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
		 data_a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 data_b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 q_a : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 q_b : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;


BEGIN 
carry_sig <= SYNTHESIZED_WIRE_3;
address_calc <= SYNTHESIZED_WIRE_7;
depth_count <= SYNTHESIZED_WIRE_1;
flush_count <= SYNTHESIZED_WIRE_6;
saida_mux <= SYNTHESIZED_WIRE_9;



b2v_inst1 : address_calculator
PORT MAP(clock => Clock,
		 enable => SYNTHESIZED_WIRE_13,
		 depth => Depth,
		 shift_depth => SYNTHESIZED_WIRE_1,
		 carry => SYNTHESIZED_WIRE_3,
		 count => SYNTHESIZED_WIRE_7,
		 iterator_out => iterator_sig);


b2v_inst10 : flush_counter
PORT MAP(clock => Clock,
		 enable => SYNTHESIZED_WIRE_2,
		 len => Len,
		 carry => SYNTHESIZED_WIRE_4,
		 count => SYNTHESIZED_WIRE_6);


b2v_inst3 : depth_counter
PORT MAP(clock => SYNTHESIZED_WIRE_3,
		 enable => SYNTHESIZED_WIRE_4,
		 depth => Depth,
		 carry => SYNTHESIZED_WIRE_11,
		 count => SYNTHESIZED_WIRE_1);


b2v_inst4 : mux2x1_12b
PORT MAP(SEL => SYNTHESIZED_WIRE_13,
		 A => SYNTHESIZED_WIRE_6,
		 B => SYNTHESIZED_WIRE_7,
		 X => SYNTHESIZED_WIRE_9);


b2v_inst6 : interleaver_shared_memory
PORT MAP(wren_a => SYNTHESIZED_WIRE_13,
		 wren_b => wren_b,
		 clock => Clock,
		 address_a => SYNTHESIZED_WIRE_9,
		 address_b => Addb,
		 data_a => Input,
		 data_b => Db,
		 q_a => Output);


SYNTHESIZED_WIRE_2 <= NOT(SYNTHESIZED_WIRE_13);



SYNTHESIZED_WIRE_12 <= NOT(SYNTHESIZED_WIRE_11);



SYNTHESIZED_WIRE_13 <= SYNTHESIZED_WIRE_12 AND Flag;


END bdf_type;