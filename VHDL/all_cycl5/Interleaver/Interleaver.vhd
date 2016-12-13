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
-- CREATED		"Sat Nov 26 11:54:50 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Interleaver IS 
	PORT
	(
		Flag :  IN  STD_LOGIC;
		Clock :  IN  STD_LOGIC;
		InputIntrlv :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		length :  IN  STD_LOGIC_VECTOR(12 DOWNTO 0);
		PSDU_depth :  IN  STD_LOGIC_VECTOR(6 DOWNTO 0);
		Flag_ccEncoder :  OUT  STD_LOGIC;
		Output_Interlv :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END Interleaver;

ARCHITECTURE bdf_type OF Interleaver IS 

COMPONENT address_calculator_payload
	PORT(clock : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 depth : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 shift_depth : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 carry : OUT STD_LOGIC;
		 count : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
		 iterator_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT flush_counter
	PORT(clock : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 len : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
		 carry : OUT STD_LOGIC;
		 count : OUT STD_LOGIC_VECTOR(12 DOWNTO 0)
	);
END COMPONENT;

COMPONENT interleaver_shared_memory
	PORT(wren_a : IN STD_LOGIC;
		 wren_b : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 address_a : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
		 address_b : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
		 data_a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 data_b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 q_a : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 q_b : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT register1b
	PORT(d : IN STD_LOGIC;
		 clr : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 q : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT static_2
	PORT(		 o : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

COMPONENT shift_register_4b
	PORT(CLK : IN STD_LOGIC;
		 D : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT readorwrite
	PORT(depth_count_c : IN STD_LOGIC;
		 depth_count_number : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 readWrite : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT mux2x1_13b
	PORT(SEL : IN STD_LOGIC;
		 A : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
		 B : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
		 X : OUT STD_LOGIC_VECTOR(12 DOWNTO 0)
	);
END COMPONENT;

COMPONENT depth_counter_payload
	PORT(clock : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 depth : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 carry : OUT STD_LOGIC;
		 count : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
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

COMPONENT address_calculator
	PORT(clock : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 depth : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 shift_depth : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 carry : OUT STD_LOGIC;
		 count : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
		 iterator_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_38 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_39 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_40 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_41 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_42 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_43 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_44 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_29 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_30 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_45 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_33 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_36 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_11 <= '0';
SYNTHESIZED_WIRE_16 <= '0';



b2v_inst : address_calculator_payload
PORT MAP(clock => Clock,
		 enable => SYNTHESIZED_WIRE_0,
		 depth => PSDU_depth,
		 shift_depth => SYNTHESIZED_WIRE_38,
		 carry => SYNTHESIZED_WIRE_26,
		 count => SYNTHESIZED_WIRE_7);


SYNTHESIZED_WIRE_29 <= NOT(SYNTHESIZED_WIRE_39);



b2v_inst10 : flush_counter
PORT MAP(clock => Clock,
		 enable => SYNTHESIZED_WIRE_3,
		 len => length,
		 carry => SYNTHESIZED_WIRE_44,
		 count => SYNTHESIZED_WIRE_24);


b2v_inst100 : interleaver_shared_memory
PORT MAP(wren_a => SYNTHESIZED_WIRE_4,
		 wren_b => SYNTHESIZED_WIRE_5,
		 clock => Clock,
		 address_a => SYNTHESIZED_WIRE_6,
		 address_b => SYNTHESIZED_WIRE_7,
		 data_a => SYNTHESIZED_WIRE_40,
		 data_b => SYNTHESIZED_WIRE_9,
		 q_a => Output_Interlv);


b2v_inst13 : register1b
PORT MAP(d => SYNTHESIZED_WIRE_10,
		 clr => SYNTHESIZED_WIRE_11,
		 clk => Clock,
		 q => SYNTHESIZED_WIRE_33);


b2v_inst14 : static_2
PORT MAP(		 o => SYNTHESIZED_WIRE_45);


SYNTHESIZED_WIRE_13 <= NOT(Flag);



b2v_inst16 : register1b
PORT MAP(d => SYNTHESIZED_WIRE_12,
		 clr => SYNTHESIZED_WIRE_13,
		 clk => Clock,
		 q => SYNTHESIZED_WIRE_3);


b2v_inst17 : shift_register_4b
PORT MAP(CLK => Clock,
		 D => InputIntrlv,
		 Q => SYNTHESIZED_WIRE_40);



b2v_inst20 : shift_register_4b
PORT MAP(CLK => Clock,
		 D => SYNTHESIZED_WIRE_40,
		 Q => SYNTHESIZED_WIRE_9);


b2v_inst22 : register1b
PORT MAP(d => SYNTHESIZED_WIRE_41,
		 clr => SYNTHESIZED_WIRE_16,
		 clk => Clock,
		 q => SYNTHESIZED_WIRE_0);


b2v_inst25 : readorwrite
PORT MAP(depth_count_c => SYNTHESIZED_WIRE_39,
		 depth_count_number => SYNTHESIZED_WIRE_42,
		 readWrite => SYNTHESIZED_WIRE_4);


b2v_inst26 : readorwrite
PORT MAP(depth_count_c => SYNTHESIZED_WIRE_43,
		 depth_count_number => SYNTHESIZED_WIRE_38,
		 readWrite => SYNTHESIZED_WIRE_5);


SYNTHESIZED_WIRE_12 <= SYNTHESIZED_WIRE_43 AND SYNTHESIZED_WIRE_39;


b2v_inst3 : mux2x1_13b
PORT MAP(SEL => SYNTHESIZED_WIRE_39,
		 A => SYNTHESIZED_WIRE_24,
		 B => SYNTHESIZED_WIRE_25,
		 X => SYNTHESIZED_WIRE_6);


b2v_inst30 : depth_counter_payload
PORT MAP(clock => SYNTHESIZED_WIRE_26,
		 enable => SYNTHESIZED_WIRE_41,
		 depth => PSDU_depth,
		 carry => SYNTHESIZED_WIRE_43,
		 count => SYNTHESIZED_WIRE_38);


Flag_ccEncoder <= NOT(SYNTHESIZED_WIRE_44);



SYNTHESIZED_WIRE_36 <= Flag AND SYNTHESIZED_WIRE_29;


b2v_inst5 : depth_counter
PORT MAP(clock => SYNTHESIZED_WIRE_30,
		 enable => Flag,
		 depth => SYNTHESIZED_WIRE_45,
		 carry => SYNTHESIZED_WIRE_39,
		 count => SYNTHESIZED_WIRE_42);


SYNTHESIZED_WIRE_41 <= SYNTHESIZED_WIRE_39 AND Flag;


b2v_inst7 : address_calculator
PORT MAP(clock => Clock,
		 enable => SYNTHESIZED_WIRE_33,
		 depth => SYNTHESIZED_WIRE_45,
		 shift_depth => SYNTHESIZED_WIRE_42,
		 carry => SYNTHESIZED_WIRE_30,
		 count => SYNTHESIZED_WIRE_25);



SYNTHESIZED_WIRE_10 <= SYNTHESIZED_WIRE_36 AND SYNTHESIZED_WIRE_44;


END bdf_type;