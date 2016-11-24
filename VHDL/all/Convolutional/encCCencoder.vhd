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
-- CREATED		"Fri Nov 18 15:41:17 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY encCCencoder IS 
	PORT
	(
		clock_100kHz :  IN  STD_LOGIC;
		clock_igual_interleaver_50D4 :  IN  STD_LOGIC;
		clock_50kHz :  IN  STD_LOGIC;
		Flag :  IN  STD_LOGIC;
		Input_CCencoder :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		so :  OUT  STD_LOGIC;
		ccEncoderinput :  OUT  STD_LOGIC;
		reset_control :  OUT  STD_LOGIC;
		flag_shift_reg :  OUT  STD_LOGIC;
		InputManchester :  OUT  STD_LOGIC;
		OutputManchester :  OUT  STD_LOGIC;
		Q1 :  OUT  STD_LOGIC;
		count_data_control :  OUT  STD_LOGIC_VECTOR(0 TO 3);
		Output_data_control_2 :  OUT  STD_LOGIC_VECTOR(0 TO 5)
	);
END encCCencoder;

ARCHITECTURE bdf_type OF encCCencoder IS 

COMPONENT shift_register_zeroes
	PORT(D : IN STD_LOGIC;
		 CLK : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 Q : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT manchester_encoder
	PORT(clk : IN STD_LOGIC;
		 D : IN STD_LOGIC;
		 Q : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT register1b_viterbi
	PORT(d : IN STD_LOGIC;
		 clr : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 q : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT ccencoder
	PORT(clock : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 input : IN STD_LOGIC;
		 A0 : OUT STD_LOGIC;
		 B0 : OUT STD_LOGIC;
		 C0 : OUT STD_LOGIC;
		 Q1 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT piso
	PORT(clk : IN STD_LOGIC;
		 load : IN STD_LOGIC;
		 pi : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 so : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT conv_input_data_control
	PORT(Clock : IN STD_LOGIC;
		 Reset : IN STD_LOGIC;
		 load : OUT STD_LOGIC;
		 Output : OUT STD_LOGIC_VECTOR(0 TO 3)
	);
END COMPONENT;

COMPONENT conv_input_data_control2
	PORT(Clock : IN STD_LOGIC;
		 Reset : IN STD_LOGIC;
		 carry : OUT STD_LOGIC;
		 Output : OUT STD_LOGIC_VECTOR(0 TO 5)
	);
END COMPONENT;

COMPONENT mux_2to1_top
	PORT(SEL : IN STD_LOGIC;
		 A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 X : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;


BEGIN 
so <= SYNTHESIZED_WIRE_23;
ccEncoderinput <= SYNTHESIZED_WIRE_8;
reset_control <= SYNTHESIZED_WIRE_25;
flag_shift_reg <= SYNTHESIZED_WIRE_25;
InputManchester <= SYNTHESIZED_WIRE_3;
SYNTHESIZED_WIRE_0 <= '1';
SYNTHESIZED_WIRE_24 <= '0';



SYNTHESIZED_WIRE_2 <= NOT(clock_100kHz);



SYNTHESIZED_WIRE_6 <= NOT(clock_50kHz);



b2v_inst11 : shift_register_zeroes
PORT MAP(D => Flag,
		 CLK => clock_igual_interleaver_50D4,
		 reset => SYNTHESIZED_WIRE_0,
		 Q => SYNTHESIZED_WIRE_1);


SYNTHESIZED_WIRE_25 <= SYNTHESIZED_WIRE_1 OR Flag;



b2v_inst14 : manchester_encoder
PORT MAP(clk => SYNTHESIZED_WIRE_2,
		 D => SYNTHESIZED_WIRE_3,
		 Q => OutputManchester);


b2v_inst16 : register1b_viterbi
PORT MAP(d => SYNTHESIZED_WIRE_23,
		 clr => SYNTHESIZED_WIRE_24,
		 clk => SYNTHESIZED_WIRE_6,
		 q => SYNTHESIZED_WIRE_16);


b2v_inst18 : ccencoder
PORT MAP(clock => clock_50kHz,
		 reset => SYNTHESIZED_WIRE_25,
		 input => SYNTHESIZED_WIRE_8,
		 A0 => SYNTHESIZED_WIRE_12,
		 B0 => SYNTHESIZED_WIRE_13,
		 Q1 => Q1);


b2v_inst2 : piso
PORT MAP(clk => clock_50kHz,
		 load => SYNTHESIZED_WIRE_9,
		 pi => Input_CCencoder,
		 so => SYNTHESIZED_WIRE_23);


b2v_inst3 : conv_input_data_control
PORT MAP(Clock => clock_100kHz,
		 Reset => SYNTHESIZED_WIRE_25,
		 load => SYNTHESIZED_WIRE_9,
		 Output => count_data_control);


b2v_inst4 : conv_input_data_control2
PORT MAP(Clock => clock_igual_interleaver_50D4,
		 Reset => SYNTHESIZED_WIRE_25,
		 carry => SYNTHESIZED_WIRE_26,
		 Output => Output_data_control_2);


b2v_inst5 : mux_2to1_top
PORT MAP(SEL => clock_50kHz,
		 A => SYNTHESIZED_WIRE_12,
		 B => SYNTHESIZED_WIRE_13,
		 X => SYNTHESIZED_WIRE_3);


b2v_inst6 : mux_2to1_top
PORT MAP(SEL => SYNTHESIZED_WIRE_26,
		 A => SYNTHESIZED_WIRE_24,
		 B => SYNTHESIZED_WIRE_16,
		 X => SYNTHESIZED_WIRE_20);


b2v_inst7 : mux_2to1_top
PORT MAP(SEL => SYNTHESIZED_WIRE_26,
		 A => SYNTHESIZED_WIRE_23,
		 B => SYNTHESIZED_WIRE_19,
		 X => SYNTHESIZED_WIRE_8);


b2v_inst8 : shift_register_zeroes
PORT MAP(D => SYNTHESIZED_WIRE_20,
		 CLK => clock_50kHz,
		 reset => SYNTHESIZED_WIRE_25,
		 Q => SYNTHESIZED_WIRE_19);



END bdf_type;