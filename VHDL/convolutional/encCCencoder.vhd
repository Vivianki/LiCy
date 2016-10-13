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
-- CREATED		"Thu Oct 13 17:03:47 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY encCCencoder IS 
	PORT
	(
		clock_25kHz :  IN  STD_LOGIC;
		clock_enable :  IN  STD_LOGIC;
		flag :  IN  STD_LOGIC;
		clock_100kHz :  IN  STD_LOGIC;
		clock_igual_interleaver_25D4 :  IN  STD_LOGIC;
		Input_CCencoder :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		C0 :  OUT  STD_LOGIC;
		output_manchester :  OUT  STD_LOGIC;
		so :  OUT  STD_LOGIC;
		ccEncoderinput :  OUT  STD_LOGIC;
		count_control1 :  OUT  STD_LOGIC_VECTOR(0 TO 3);
		count_control2 :  OUT  STD_LOGIC_VECTOR(0 TO 5)
	);
END encCCencoder;

ARCHITECTURE bdf_type OF encCCencoder IS 

COMPONENT ccencoder
	PORT(clock : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 clock_enable : IN STD_LOGIC;
		 input : IN STD_LOGIC;
		 A0 : OUT STD_LOGIC;
		 B0 : OUT STD_LOGIC;
		 C0 : OUT STD_LOGIC
	);
END COMPONENT;

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
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;


BEGIN 
so <= SYNTHESIZED_WIRE_21;
ccEncoderinput <= SYNTHESIZED_WIRE_1;
SYNTHESIZED_WIRE_3 <= '1';
SYNTHESIZED_WIRE_13 <= '0';



b2v_inst : ccencoder
PORT MAP(clock => clock_25kHz,
		 reset => SYNTHESIZED_WIRE_0,
		 clock_enable => clock_enable,
		 input => SYNTHESIZED_WIRE_1,
		 A0 => SYNTHESIZED_WIRE_9,
		 B0 => SYNTHESIZED_WIRE_10,
		 C0 => C0);


SYNTHESIZED_WIRE_0 <= NOT(SYNTHESIZED_WIRE_19);



b2v_inst11 : shift_register_zeroes
PORT MAP(D => flag,
		 CLK => clock_igual_interleaver_25D4,
		 reset => SYNTHESIZED_WIRE_3,
		 Q => SYNTHESIZED_WIRE_4);


SYNTHESIZED_WIRE_19 <= SYNTHESIZED_WIRE_4 OR flag;



b2v_inst14 : manchester_encoder
PORT MAP(clk => clock_100kHz,
		 D => SYNTHESIZED_WIRE_5,
		 Q => output_manchester);


b2v_inst2 : piso
PORT MAP(clk => clock_25kHz,
		 load => SYNTHESIZED_WIRE_6,
		 pi => Input_CCencoder,
		 so => SYNTHESIZED_WIRE_21);


b2v_inst3 : conv_input_data_control
PORT MAP(Clock => clock_25kHz,
		 Reset => SYNTHESIZED_WIRE_19,
		 load => SYNTHESIZED_WIRE_6,
		 Output => count_control1);


b2v_inst4 : conv_input_data_control2
PORT MAP(Clock => clock_igual_interleaver_25D4,
		 Reset => SYNTHESIZED_WIRE_19,
		 carry => SYNTHESIZED_WIRE_20,
		 Output => count_control2);


b2v_inst5 : mux_2to1_top
PORT MAP(SEL => clock_25kHz,
		 A => SYNTHESIZED_WIRE_9,
		 B => SYNTHESIZED_WIRE_10,
		 X => SYNTHESIZED_WIRE_5);


b2v_inst6 : mux_2to1_top
PORT MAP(SEL => SYNTHESIZED_WIRE_20,
		 A => SYNTHESIZED_WIRE_21,
		 B => SYNTHESIZED_WIRE_13,
		 X => SYNTHESIZED_WIRE_17);


b2v_inst7 : mux_2to1_top
PORT MAP(SEL => SYNTHESIZED_WIRE_20,
		 A => SYNTHESIZED_WIRE_21,
		 B => SYNTHESIZED_WIRE_16,
		 X => SYNTHESIZED_WIRE_1);


b2v_inst8 : shift_register_zeroes
PORT MAP(D => SYNTHESIZED_WIRE_17,
		 CLK => clock_25kHz,
		 reset => SYNTHESIZED_WIRE_19,
		 Q => SYNTHESIZED_WIRE_16);



END bdf_type;