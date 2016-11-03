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
-- CREATED		"Wed Sep 21 22:19:26 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY synchro IS 
	PORT
	(
		clock_counter :  IN  STD_LOGIC;
		carry :  OUT  STD_LOGIC;
		clock_generated :  OUT  STD_LOGIC;
		input :  OUT  STD_LOGIC;
		gnd :  OUT  STD_LOGIC;
		clock200 :  OUT  STD_LOGIC;
		count1s :  OUT  STD_LOGIC;
		count0s :  OUT  STD_LOGIC;
		sinal_analizado :  OUT  STD_LOGIC;
		pin_name1 :  OUT  STD_LOGIC;
		regs1 :  OUT  STD_LOGIC;
		regs0 :  OUT  STD_LOGIC;
		regs8 :  OUT  STD_LOGIC;
		regs9 :  OUT  STD_LOGIC;
		input_dos_sr :  OUT  STD_LOGIC;
		clock10MHz :  OUT  STD_LOGIC;
		flp :  OUT  STD_LOGIC;
		out_400h2z :  OUT  STD_LOGIC;
		out_4001hz :  OUT  STD_LOGIC;
		rst_shift_regs :  OUT  STD_LOGIC;
		antes_reg :  OUT  STD_LOGIC_VECTOR(9 DOWNTO 0);
		antes_regs :  OUT  STD_LOGIC_VECTOR(9 DOWNTO 0);
		in_shift_regs :  OUT  STD_LOGIC_VECTOR(63 DOWNTO 0);
		pos_reg :  OUT  STD_LOGIC_VECTOR(9 DOWNTO 0);
		pos_regs :  OUT  STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END synchro;

ARCHITECTURE bdf_type OF synchro IS 

COMPONENT mux_2to1_top
	PORT(SEL : IN STD_LOGIC;
		 A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 X : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT shift_register_top
	PORT(CLK : IN STD_LOGIC;
		 D : IN STD_LOGIC;
		 Reset_64b : IN STD_LOGIC;
		 shift_regiters_values : OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
	);
END COMPONENT;

COMPONENT scale_clock
	PORT(clk_50Mhz : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 clk_200kHz : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT flp_detector
	PORT(entrada : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
		 flp_detect : OUT STD_LOGIC
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

COMPONENT counter
GENERIC (n : INTEGER
			);
	PORT(clock : IN STD_LOGIC;
		 clear : IN STD_LOGIC;
		 carry : OUT STD_LOGIC;
		 count : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
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

COMPONENT rom
	PORT(address : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 data : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	A :  STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL	B :  STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL	C :  STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL	D :  STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL	E :  STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_33 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_34 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_35 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_36 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_31 :  STD_LOGIC_VECTOR(7 DOWNTO 0);


BEGIN 
gnd <= '0';
clock10MHz <= clock_counter;
input <= SYNTHESIZED_WIRE_33;
clock200 <= SYNTHESIZED_WIRE_22;
sinal_analizado <= SYNTHESIZED_WIRE_3;
input_dos_sr <= SYNTHESIZED_WIRE_4;
flp <= SYNTHESIZED_WIRE_21;
out_400h2z <= SYNTHESIZED_WIRE_2;
out_4001hz <= SYNTHESIZED_WIRE_1;
rst_shift_regs <= SYNTHESIZED_WIRE_5;
SYNTHESIZED_WIRE_34 <= '0';
SYNTHESIZED_WIRE_36 <= '0';



b2v_inst : mux_2to1_top
PORT MAP(SEL => SYNTHESIZED_WIRE_0,
		 A => SYNTHESIZED_WIRE_1,
		 B => SYNTHESIZED_WIRE_2,
		 X => SYNTHESIZED_WIRE_3);


b2v_inst1 : shift_register_top
PORT MAP(CLK => SYNTHESIZED_WIRE_3,
		 D => SYNTHESIZED_WIRE_4,
		 Reset_64b => SYNTHESIZED_WIRE_5,
		 shift_regiters_values => C);


SYNTHESIZED_WIRE_27 <= NOT(SYNTHESIZED_WIRE_33);



SYNTHESIZED_WIRE_5 <= SYNTHESIZED_WIRE_7 OR SYNTHESIZED_WIRE_8;


b2v_inst12 : scale_clock
PORT MAP(clk_50Mhz => clock_counter,
		 rst => SYNTHESIZED_WIRE_34,
		 clk_200kHz => SYNTHESIZED_WIRE_22);


SYNTHESIZED_WIRE_12 <= NOT(SYNTHESIZED_WIRE_33);



SYNTHESIZED_WIRE_13 <= NOT(D(7) AND SYNTHESIZED_WIRE_33);


SYNTHESIZED_WIRE_14 <= E(7) AND SYNTHESIZED_WIRE_12;


SYNTHESIZED_WIRE_4 <= SYNTHESIZED_WIRE_13 OR SYNTHESIZED_WIRE_14;


b2v_inst2 : flp_detector
PORT MAP(entrada => C,
		 flp_detect => SYNTHESIZED_WIRE_21);


b2v_inst20 : shift_register_3b
PORT MAP(CLK => clock_counter,
		 D => SYNTHESIZED_WIRE_35,
		 Q => SYNTHESIZED_WIRE_8);


b2v_inst21 : scale_clock_400khz
PORT MAP(clk_50Mhz => clock_counter,
		 rst => SYNTHESIZED_WIRE_33,
		 clk_400kHz => SYNTHESIZED_WIRE_1);


b2v_inst22 : scale_clock_400khz
PORT MAP(clk_50Mhz => clock_counter,
		 rst => SYNTHESIZED_WIRE_17,
		 clk_400kHz => SYNTHESIZED_WIRE_2);


SYNTHESIZED_WIRE_17 <= NOT(SYNTHESIZED_WIRE_33);



SYNTHESIZED_WIRE_7 <= D(8) OR E(8);


SYNTHESIZED_WIRE_0 <= NOT(SYNTHESIZED_WIRE_33);



SYNTHESIZED_WIRE_35 <= SYNTHESIZED_WIRE_33 AND SYNTHESIZED_WIRE_21;


b2v_inst3 : counter
GENERIC MAP(n => 8
			)
PORT MAP(clock => SYNTHESIZED_WIRE_22,
		 clear => SYNTHESIZED_WIRE_34,
		 carry => carry,
		 count => SYNTHESIZED_WIRE_31);



b2v_inst35 : scale_clock
PORT MAP(clk_50Mhz => clock_counter,
		 rst => SYNTHESIZED_WIRE_35,
		 clk_200kHz => clock_generated);


b2v_inst41 : counterwenable
PORT MAP(enable => SYNTHESIZED_WIRE_33,
		 Clock => clock_counter,
		 Output => B);


b2v_inst42 : counterwenable
PORT MAP(enable => SYNTHESIZED_WIRE_26,
		 Clock => clock_counter,
		 Output => A);


b2v_inst43 : register1
PORT MAP(ld => SYNTHESIZED_WIRE_27,
		 clr => SYNTHESIZED_WIRE_36,
		 clk => clock_counter,
		 d => B,
		 q => D);


b2v_inst44 : register1
PORT MAP(ld => SYNTHESIZED_WIRE_33,
		 clr => SYNTHESIZED_WIRE_36,
		 clk => clock_counter,
		 d => A,
		 q => E);


b2v_inst5 : rom
PORT MAP(address => SYNTHESIZED_WIRE_31,
		 data => SYNTHESIZED_WIRE_33);


SYNTHESIZED_WIRE_26 <= NOT(SYNTHESIZED_WIRE_33);



count1s <= A(0);
count0s <= B(0);
pin_name1 <= C(0);
regs1 <= E(7);
regs0 <= D(7);
regs8 <= E(8);
regs9 <= E(3);
antes_reg <= A;
antes_regs <= B;
in_shift_regs <= C;
pos_reg <= E;
pos_regs <= D;

END bdf_type;