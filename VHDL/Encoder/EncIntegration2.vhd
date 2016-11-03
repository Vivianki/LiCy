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
-- CREATED		"Wed Nov 02 22:40:13 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY EncIntegration2 IS 
	PORT
	(
		Flag :  IN  STD_LOGIC;
		rest_clock :  IN  STD_LOGIC;
		clock_200kHz :  IN  STD_LOGIC;
		control :  OUT  STD_LOGIC;
		clock_sistema :  OUT  STD_LOGIC;
		Flag_2 :  OUT  STD_LOGIC;
		kilo100 :  OUT  STD_LOGIC;
		readWrite :  OUT  STD_LOGIC;
		depth_counter_carry :  OUT  STD_LOGIC;
		carry_sig :  OUT  STD_LOGIC;
		enable_flush :  OUT  STD_LOGIC;
		flush_counter_carry :  OUT  STD_LOGIC;
		readWrite_2 :  OUT  STD_LOGIC;
		carry_sig2 :  OUT  STD_LOGIC;
		depth_counter_carry2 :  OUT  STD_LOGIC;
		enable_flush2 :  OUT  STD_LOGIC;
		start_flushing :  OUT  STD_LOGIC;
		kilo50 :  OUT  STD_LOGIC;
		kilo50D4 :  OUT  STD_LOGIC;
		A0 :  OUT  STD_LOGIC;
		B0 :  OUT  STD_LOGIC;
		output_manchester12 :  OUT  STD_LOGIC;
		C0 :  OUT  STD_LOGIC;
		load_piso :  OUT  STD_LOGIC;
		so :  OUT  STD_LOGIC;
		input_manchester :  OUT  STD_LOGIC;
		ccEncoderinput :  OUT  STD_LOGIC;
		flag_shift_reg :  OUT  STD_LOGIC;
		reset_control :  OUT  STD_LOGIC;
		output_encoder :  OUT  STD_LOGIC;
		address_calc :  OUT  STD_LOGIC_VECTOR(12 DOWNTO 0);
		address_sel :  OUT  STD_LOGIC_VECTOR(12 DOWNTO 0);
		address_sel_payload :  OUT  STD_LOGIC_VECTOR(12 DOWNTO 0);
		count :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		count_control1 :  OUT  STD_LOGIC_VECTOR(0 TO 3);
		count_control2 :  OUT  STD_LOGIC_VECTOR(0 TO 5);
		depth_count :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		depth_count_payload :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		flush_count :  OUT  STD_LOGIC_VECTOR(12 DOWNTO 0);
		Initial_data :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		InputPayload :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		InputSR2 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		iterator_sig :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		iterator_sig_payload :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Output :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		output_rs :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		q_b :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		reg1 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		reg2 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		reg3 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		reg4 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		saida_AND :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Saida_counter_PHR_PSDU :  OUT  STD_LOGIC_VECTOR(4 DOWNTO 0);
		Saida_PHR_PSDU :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		saidaMul :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END EncIntegration2;

ARCHITECTURE bdf_type OF EncIntegration2 IS 

COMPONENT phr_psdu
	PORT(address : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 data : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT encccencoder
	PORT(clock_100kHz : IN STD_LOGIC;
		 clock_50kHz : IN STD_LOGIC;
		 clock_igual_interleaver_50D4 : IN STD_LOGIC;
		 flag : IN STD_LOGIC;
		 Input_CCencoder : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 A0 : OUT STD_LOGIC;
		 B0 : OUT STD_LOGIC;
		 output_manchester : OUT STD_LOGIC;
		 C0 : OUT STD_LOGIC;
		 load_piso : OUT STD_LOGIC;
		 so : OUT STD_LOGIC;
		 input_manchester : OUT STD_LOGIC;
		 ccEncoderinput : OUT STD_LOGIC;
		 flag_shift_reg : OUT STD_LOGIC;
		 reset_control : OUT STD_LOGIC;
		 count_control1 : OUT STD_LOGIC_VECTOR(0 TO 3);
		 count_control2 : OUT STD_LOGIC_VECTOR(0 TO 5)
	);
END COMPONENT;

COMPONENT transformador100d4
	PORT(clk_100khz : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 clk_100D4kHz : OUT STD_LOGIC;
		 selector : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;

COMPONENT transformador100d2
	PORT(clk_100khz : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 clk_100D2kHz : OUT STD_LOGIC;
		 selector : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;

COMPONENT counter_phr_psdu
	PORT(clock : IN STD_LOGIC;
		 clear : IN STD_LOGIC;
		 carry : OUT STD_LOGIC;
		 count : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT rsencoder
	PORT(Clock_RSencoder : IN STD_LOGIC;
		 Initialize_RSencoder : IN STD_LOGIC;
		 input_RSencoder : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 control : OUT STD_LOGIC;
		 clock_sistema : OUT STD_LOGIC;
		 count : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Output : OUT STD_LOGIC_VECTOR(0 TO 3);
		 reg1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 reg2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 reg3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 reg4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 saida_AND : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 saidaMul : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT interleaver_rev4
	PORT(Flag : IN STD_LOGIC;
		 Clock : IN STD_LOGIC;
		 Input : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 readWrite : OUT STD_LOGIC;
		 depth_counter_carry : OUT STD_LOGIC;
		 carry_sig : OUT STD_LOGIC;
		 enable_flush : OUT STD_LOGIC;
		 flush_counter_carry : OUT STD_LOGIC;
		 readWrite_2 : OUT STD_LOGIC;
		 carry_sig2 : OUT STD_LOGIC;
		 depth_counter_carry2 : OUT STD_LOGIC;
		 enable_flush2 : OUT STD_LOGIC;
		 start_flushing : OUT STD_LOGIC;
		 Flag_2 : OUT STD_LOGIC;
		 address_calc : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
		 address_sel : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
		 address_sel_payload : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
		 depth_count : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		 depth_count_payload : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		 flush_count : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
		 InputPayload : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 InputSR2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 iterator_sig : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 iterator_sig_payload : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Output : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 q_b : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT shift_register_60b
	PORT(CLK : IN STD_LOGIC;
		 D : IN STD_LOGIC;
		 Reset_60b : IN STD_LOGIC;
		 shift_regiters_values : OUT STD_LOGIC_VECTOR(59 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	H :  STD_LOGIC_VECTOR(59 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC_VECTOR(0 TO 3);
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;


BEGIN 
Flag_2 <= SYNTHESIZED_WIRE_4;
kilo100 <= SYNTHESIZED_WIRE_19;
kilo50 <= SYNTHESIZED_WIRE_20;
kilo50D4 <= SYNTHESIZED_WIRE_21;
output_manchester12 <= SYNTHESIZED_WIRE_7;
flag_shift_reg <= SYNTHESIZED_WIRE_17;
Initial_data <= SYNTHESIZED_WIRE_22;
Output <= SYNTHESIZED_WIRE_5;
output_rs(3 DOWNTO 0) <= SYNTHESIZED_WIRE_15(0 TO 3);
Saida_counter_PHR_PSDU <= SYNTHESIZED_WIRE_0;
Saida_PHR_PSDU <= SYNTHESIZED_WIRE_22;



b2v_inst : phr_psdu
PORT MAP(address => SYNTHESIZED_WIRE_0,
		 data => SYNTHESIZED_WIRE_22);


SYNTHESIZED_WIRE_12 <= NOT(Flag);



b2v_inst11 : encccencoder
PORT MAP(clock_100kHz => SYNTHESIZED_WIRE_19,
		 clock_50kHz => SYNTHESIZED_WIRE_20,
		 clock_igual_interleaver_50D4 => SYNTHESIZED_WIRE_21,
		 flag => SYNTHESIZED_WIRE_4,
		 Input_CCencoder => SYNTHESIZED_WIRE_5,
		 A0 => A0,
		 B0 => B0,
		 output_manchester => SYNTHESIZED_WIRE_7,
		 C0 => C0,
		 load_piso => load_piso,
		 so => so,
		 input_manchester => input_manchester,
		 ccEncoderinput => ccEncoderinput,
		 flag_shift_reg => SYNTHESIZED_WIRE_17,
		 reset_control => reset_control,
		 count_control1 => count_control1,
		 count_control2 => count_control2);


b2v_inst12 : transformador100d4
PORT MAP(clk_100khz => SYNTHESIZED_WIRE_20,
		 rst => rest_clock,
		 clk_100D4kHz => SYNTHESIZED_WIRE_21);


b2v_inst13 : transformador100d2
PORT MAP(clk_100khz => clock_200kHz,
		 rst => rest_clock,
		 clk_100D2kHz => SYNTHESIZED_WIRE_19);


SYNTHESIZED_WIRE_16 <= NOT(SYNTHESIZED_WIRE_7);



b2v_inst15 : transformador100d4
PORT MAP(clk_100khz => SYNTHESIZED_WIRE_19,
		 rst => rest_clock,
		 clk_100D4kHz => SYNTHESIZED_WIRE_20);


SYNTHESIZED_WIRE_10 <= NOT(Flag);



b2v_inst3 : counter_phr_psdu
PORT MAP(clock => SYNTHESIZED_WIRE_21,
		 clear => SYNTHESIZED_WIRE_10,
		 count => SYNTHESIZED_WIRE_0);


b2v_inst4 : rsencoder
PORT MAP(Clock_RSencoder => SYNTHESIZED_WIRE_21,
		 Initialize_RSencoder => SYNTHESIZED_WIRE_12,
		 input_RSencoder => SYNTHESIZED_WIRE_22,
		 control => control,
		 clock_sistema => clock_sistema,
		 count => count,
		 Output => SYNTHESIZED_WIRE_15,
		 reg1 => reg1,
		 reg2 => reg2,
		 reg3 => reg3,
		 reg4 => reg4,
		 saida_AND => saida_AND,
		 saidaMul => saidaMul);


b2v_inst5 : interleaver_rev4
PORT MAP(Flag => Flag,
		 Clock => SYNTHESIZED_WIRE_21,
		 Input => SYNTHESIZED_WIRE_15,
		 readWrite => readWrite,
		 depth_counter_carry => depth_counter_carry,
		 carry_sig => carry_sig,
		 enable_flush => enable_flush,
		 flush_counter_carry => flush_counter_carry,
		 readWrite_2 => readWrite_2,
		 carry_sig2 => carry_sig2,
		 depth_counter_carry2 => depth_counter_carry2,
		 enable_flush2 => enable_flush2,
		 start_flushing => start_flushing,
		 Flag_2 => SYNTHESIZED_WIRE_4,
		 address_calc => address_calc,
		 address_sel => address_sel,
		 address_sel_payload => address_sel_payload,
		 depth_count => depth_count,
		 depth_count_payload => depth_count_payload,
		 flush_count => flush_count,
		 InputPayload => InputPayload,
		 InputSR2 => InputSR2,
		 iterator_sig => iterator_sig,
		 iterator_sig_payload => iterator_sig_payload,
		 Output => SYNTHESIZED_WIRE_5,
		 q_b => q_b);


b2v_inst8 : shift_register_60b
PORT MAP(CLK => clock_200kHz,
		 D => SYNTHESIZED_WIRE_16,
		 Reset_60b => SYNTHESIZED_WIRE_17,
		 shift_regiters_values => H);


output_encoder <= H(59);

END bdf_type;