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
-- CREATED		"Wed Sep 07 21:51:54 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY synchro IS 
	PORT
	(
		clock_counter :  IN  STD_LOGIC;
		clear_mem :  IN  STD_LOGIC;
		clear_registers_count :  IN  STD_LOGIC;
		enable_clock_generator :  IN  STD_LOGIC;
		clocj_200k :  IN  STD_LOGIC;
		carry :  OUT  STD_LOGIC;
		sinal :  OUT  STD_LOGIC;
		clock_generated :  OUT  STD_LOGIC;
		flp :  OUT  STD_LOGIC;
		output_count_analyzer :  OUT  STD_LOGIC;
		input :  OUT  STD_LOGIC;
		reset_shift_registers :  OUT  STD_LOGIC;
		count0 :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		count0_reg :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		count1 :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		count1_reg :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		shift_registers :  OUT  STD_LOGIC_VECTOR(63 DOWNTO 0)
	);
END synchro;

ARCHITECTURE bdf_type OF synchro IS 

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

COMPONENT counterwenable
	PORT(enable : IN STD_LOGIC;
		 Clock : IN STD_LOGIC;
		 Output : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT register1
	PORT(ld : IN STD_LOGIC;
		 clr : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 d : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT flp_detector
	PORT(entrada : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
		 flp_detect : OUT STD_LOGIC
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

COMPONENT clock_generator
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 input : IN STD_LOGIC;
		 flp : IN STD_LOGIC;
		 reset_shift_regs : OUT STD_LOGIC;
		 output : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT rom
	PORT(address : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 data : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT count_analyzer
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 input : IN STD_LOGIC;
		 count0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 count1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 sinal : OUT STD_LOGIC;
		 reset_shift_registers : OUT STD_LOGIC;
		 output : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC_VECTOR(7 DOWNTO 0);


BEGIN 
sinal <= SYNTHESIZED_WIRE_0;
flp <= SYNTHESIZED_WIRE_15;
output_count_analyzer <= SYNTHESIZED_WIRE_1;
input <= SYNTHESIZED_WIRE_21;
reset_shift_registers <= SYNTHESIZED_WIRE_4;
count0 <= SYNTHESIZED_WIRE_11;
count0_reg <= SYNTHESIZED_WIRE_19;
count1 <= SYNTHESIZED_WIRE_9;
count1_reg <= SYNTHESIZED_WIRE_20;
shift_registers <= SYNTHESIZED_WIRE_12;



b2v_inst1 : shift_register_top
PORT MAP(CLK => SYNTHESIZED_WIRE_0,
		 D => SYNTHESIZED_WIRE_1,
		 Reset_64b => SYNTHESIZED_WIRE_2,
		 shift_regiters_values => SYNTHESIZED_WIRE_12);


SYNTHESIZED_WIRE_8 <= NOT(SYNTHESIZED_WIRE_21);



SYNTHESIZED_WIRE_2 <= SYNTHESIZED_WIRE_4 OR SYNTHESIZED_WIRE_5;


b2v_inst12 : scale_clock
PORT MAP(clk_50Mhz => clock_counter,
		 rst => clear_mem,
		 clk_200kHz => SYNTHESIZED_WIRE_13);


b2v_inst13 : counterwenable
PORT MAP(enable => SYNTHESIZED_WIRE_6,
		 Clock => clock_counter,
		 Output => SYNTHESIZED_WIRE_11);


b2v_inst14 : counterwenable
PORT MAP(enable => SYNTHESIZED_WIRE_21,
		 Clock => clock_counter,
		 Output => SYNTHESIZED_WIRE_9);


b2v_inst15 : register1
PORT MAP(ld => SYNTHESIZED_WIRE_8,
		 clr => clear_registers_count,
		 clk => clock_counter,
		 d => SYNTHESIZED_WIRE_9,
		 q => SYNTHESIZED_WIRE_20);


b2v_inst16 : register1
PORT MAP(ld => SYNTHESIZED_WIRE_21,
		 clr => clear_registers_count,
		 clk => clock_counter,
		 d => SYNTHESIZED_WIRE_11,
		 q => SYNTHESIZED_WIRE_19);


b2v_inst2 : flp_detector
PORT MAP(entrada => SYNTHESIZED_WIRE_12,
		 flp_detect => SYNTHESIZED_WIRE_15);


b2v_inst3 : counter
GENERIC MAP(n => 8
			)
PORT MAP(clock => SYNTHESIZED_WIRE_13,
		 clear => clear_mem,
		 carry => carry,
		 count => SYNTHESIZED_WIRE_16);


b2v_inst4 : clock_generator
PORT MAP(clk => clock_counter,
		 reset => enable_clock_generator,
		 input => SYNTHESIZED_WIRE_21,
		 flp => SYNTHESIZED_WIRE_15,
		 reset_shift_regs => SYNTHESIZED_WIRE_5,
		 output => clock_generated);


b2v_inst5 : rom
PORT MAP(address => SYNTHESIZED_WIRE_16,
		 data => SYNTHESIZED_WIRE_21);


SYNTHESIZED_WIRE_6 <= NOT(SYNTHESIZED_WIRE_21);



b2v_inst7 : count_analyzer
PORT MAP(clk => clock_counter,
		 reset => clear_registers_count,
		 input => SYNTHESIZED_WIRE_21,
		 count0 => SYNTHESIZED_WIRE_19,
		 count1 => SYNTHESIZED_WIRE_20,
		 sinal => SYNTHESIZED_WIRE_0,
		 reset_shift_registers => SYNTHESIZED_WIRE_4,
		 output => SYNTHESIZED_WIRE_1);


END bdf_type;