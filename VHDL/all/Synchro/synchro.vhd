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
-- CREATED		"Fri Nov 11 22:46:04 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY synchro IS 
	PORT
	(
		clock_counter :  IN  STD_LOGIC;
		input_synchro :  IN  STD_LOGIC;
		clock_generated :  OUT  STD_LOGIC;
		input :  OUT  STD_LOGIC;
		count1s :  OUT  STD_LOGIC;
		count0s :  OUT  STD_LOGIC;
		sinal_analizado :  OUT  STD_LOGIC;
		regs1 :  OUT  STD_LOGIC;
		regs0 :  OUT  STD_LOGIC;
		input_dos_sr :  OUT  STD_LOGIC;
		flp :  OUT  STD_LOGIC;
		out_400h2z :  OUT  STD_LOGIC;
		out_4001hz :  OUT  STD_LOGIC;
		rst_shift_regs :  OUT  STD_LOGIC;
		clock50MHz :  OUT  STD_LOGIC;
		antes_reg :  OUT  STD_LOGIC_VECTOR(9 DOWNTO 0);
		antes_regs :  OUT  STD_LOGIC_VECTOR(9 DOWNTO 0);
		FLP_OUT :  OUT  STD_LOGIC_VECTOR(100 DOWNTO 0);
		pos_reg :  OUT  STD_LOGIC_VECTOR(9 DOWNTO 0);
		pos_regs :  OUT  STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END synchro;

ARCHITECTURE bdf_type OF synchro IS 

COMPONENT mux_2to1_sync
	PORT(SEL : IN STD_LOGIC;
		 A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 X : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT shift_register_3b
	PORT(CLK : IN STD_LOGIC;
		 D : IN STD_LOGIC;
		 Q : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT scale_clock_400khz
	PORT(clk_50Mhz : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 clk_400kHz : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT flp_detector
	PORT(entrada : IN STD_LOGIC_VECTOR(199 DOWNTO 0);
		 flp_detect : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT scale_clock
	PORT(clk_50Mhz : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 clk_200kHz : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT shiftreg200b
	PORT(CLK : IN STD_LOGIC;
		 D : IN STD_LOGIC;
		 Reset_200b : IN STD_LOGIC;
		 shift_regiters_values : OUT STD_LOGIC_VECTOR(199 DOWNTO 0)
	);
END COMPONENT;

COMPONENT counterwenable
	PORT(enable : IN STD_LOGIC;
		 Clock : IN STD_LOGIC;
		 Output : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;

COMPONENT register1
	PORT(ld : IN STD_LOGIC;
		 clr : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 d : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	A :  STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL	B :  STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL	D :  STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL	E :  STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL	flprs :  STD_LOGIC_VECTOR(199 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;


BEGIN 
input <= input_synchro;
clock50MHz <= clock_counter;
sinal_analizado <= SYNTHESIZED_WIRE_12;
input_dos_sr <= SYNTHESIZED_WIRE_13;
flp <= SYNTHESIZED_WIRE_10;
out_400h2z <= SYNTHESIZED_WIRE_2;
out_4001hz <= SYNTHESIZED_WIRE_1;
rst_shift_regs <= SYNTHESIZED_WIRE_14;
SYNTHESIZED_WIRE_20 <= '0';



b2v_inst : mux_2to1_sync
PORT MAP(SEL => SYNTHESIZED_WIRE_0,
		 A => SYNTHESIZED_WIRE_1,
		 B => SYNTHESIZED_WIRE_2,
		 X => SYNTHESIZED_WIRE_12);


SYNTHESIZED_WIRE_16 <= NOT(input_synchro);



SYNTHESIZED_WIRE_14 <= SYNTHESIZED_WIRE_3 OR SYNTHESIZED_WIRE_4;


SYNTHESIZED_WIRE_5 <= NOT(input_synchro);



SYNTHESIZED_WIRE_6 <= NOT(D(7) AND input_synchro);


SYNTHESIZED_WIRE_7 <= E(7) AND SYNTHESIZED_WIRE_5;


SYNTHESIZED_WIRE_13 <= SYNTHESIZED_WIRE_6 OR SYNTHESIZED_WIRE_7;


b2v_inst20 : shift_register_3b
PORT MAP(CLK => clock_counter,
		 D => SYNTHESIZED_WIRE_19,
		 Q => SYNTHESIZED_WIRE_4);


b2v_inst21 : scale_clock_400khz
PORT MAP(clk_50Mhz => clock_counter,
		 rst => input_synchro,
		 clk_400kHz => SYNTHESIZED_WIRE_1);


b2v_inst22 : scale_clock_400khz
PORT MAP(clk_50Mhz => clock_counter,
		 rst => SYNTHESIZED_WIRE_9,
		 clk_400kHz => SYNTHESIZED_WIRE_2);


b2v_inst23 : flp_detector
PORT MAP(entrada => flprs,
		 flp_detect => SYNTHESIZED_WIRE_10);


SYNTHESIZED_WIRE_9 <= NOT(input_synchro);



SYNTHESIZED_WIRE_3 <= D(8) OR E(8);


SYNTHESIZED_WIRE_0 <= NOT(input_synchro);



SYNTHESIZED_WIRE_19 <= input_synchro AND SYNTHESIZED_WIRE_10;


b2v_inst35 : scale_clock
PORT MAP(clk_50Mhz => clock_counter,
		 rst => SYNTHESIZED_WIRE_19,
		 clk_200kHz => clock_generated);


b2v_inst4 : shiftreg200b
PORT MAP(CLK => SYNTHESIZED_WIRE_12,
		 D => SYNTHESIZED_WIRE_13,
		 Reset_200b => SYNTHESIZED_WIRE_14,
		 shift_regiters_values => flprs);


b2v_inst41 : counterwenable
PORT MAP(enable => input_synchro,
		 Clock => clock_counter,
		 Output => B);


b2v_inst42 : counterwenable
PORT MAP(enable => SYNTHESIZED_WIRE_15,
		 Clock => clock_counter,
		 Output => A);


b2v_inst43 : register1
PORT MAP(ld => SYNTHESIZED_WIRE_16,
		 clr => SYNTHESIZED_WIRE_20,
		 clk => clock_counter,
		 d => B,
		 q => D);


b2v_inst44 : register1
PORT MAP(ld => input_synchro,
		 clr => SYNTHESIZED_WIRE_20,
		 clk => clock_counter,
		 d => A,
		 q => E);


SYNTHESIZED_WIRE_15 <= NOT(input_synchro);



count1s <= A(0);
count0s <= B(0);
regs1 <= E(7);
regs0 <= D(7);
antes_reg <= A;
antes_regs <= B;
FLP_OUT(100 DOWNTO 0) <= flprs(100 DOWNTO 0);
pos_reg <= E;
pos_regs <= D;

END bdf_type;