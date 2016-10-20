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
-- CREATED		"Thu Oct 20 01:15:50 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY EncIntegration2 IS 
	PORT
	(
		Flag :  IN  STD_LOGIC;
		clock_50MHz :  IN  STD_LOGIC;
		rest_clock :  IN  STD_LOGIC;
		control :  OUT  STD_LOGIC;
		clock_sistema :  OUT  STD_LOGIC;
		Flag_2 :  OUT  STD_LOGIC;
		kilo100 :  OUT  STD_LOGIC;
		kilo25 :  OUT  STD_LOGIC;
		kilo25D4 :  OUT  STD_LOGIC;
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
		output_manchester :  OUT  STD_LOGIC;
		C0 :  OUT  STD_LOGIC;
		load_piso :  OUT  STD_LOGIC;
		so :  OUT  STD_LOGIC;
		input_manchester :  OUT  STD_LOGIC;
		ccEncoderinput :  OUT  STD_LOGIC;
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

COMPONENT transformador100d4
	PORT(clk_100khz : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 clk_100D4kHz : OUT STD_LOGIC;
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

COMPONENT scale_clock_100khz
	PORT(clk_50Mhz : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 clk_100kHz : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT encccencoder
	PORT(clock_100kHz : IN STD_LOGIC;
		 clock_25kHz : IN STD_LOGIC;
		 clock_enable : IN STD_LOGIC;
		 clock_igual_interleaver_25D4 : IN STD_LOGIC;
		 flag : IN STD_LOGIC;
		 Input_CCencoder : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 output_manchester : OUT STD_LOGIC;
		 C0 : OUT STD_LOGIC;
		 load_piso : OUT STD_LOGIC;
		 so : OUT STD_LOGIC;
		 input_manchester : OUT STD_LOGIC;
		 ccEncoderinput : OUT STD_LOGIC;
		 count_control1 : OUT STD_LOGIC_VECTOR(0 TO 3);
		 count_control2 : OUT STD_LOGIC_VECTOR(0 TO 5)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC_VECTOR(0 TO 3);
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC_VECTOR(3 DOWNTO 0);


BEGIN 
Flag_2 <= SYNTHESIZED_WIRE_14;
kilo100 <= SYNTHESIZED_WIRE_17;
kilo25 <= SYNTHESIZED_WIRE_18;
kilo25D4 <= SYNTHESIZED_WIRE_19;
Initial_data <= SYNTHESIZED_WIRE_20;
Output <= SYNTHESIZED_WIRE_15;
output_rs(3 DOWNTO 0) <= SYNTHESIZED_WIRE_9(0 TO 3);
Saida_counter_PHR_PSDU <= SYNTHESIZED_WIRE_0;
Saida_PHR_PSDU <= SYNTHESIZED_WIRE_20;
SYNTHESIZED_WIRE_12 <= '1';



b2v_inst : phr_psdu
PORT MAP(address => SYNTHESIZED_WIRE_0,
		 data => SYNTHESIZED_WIRE_20);


SYNTHESIZED_WIRE_6 <= NOT(Flag);



b2v_inst11 : transformador100d4
PORT MAP(clk_100khz => SYNTHESIZED_WIRE_17,
		 rst => rest_clock,
		 clk_100D4kHz => SYNTHESIZED_WIRE_18);


b2v_inst12 : transformador100d4
PORT MAP(clk_100khz => SYNTHESIZED_WIRE_18,
		 rst => rest_clock,
		 clk_100D4kHz => SYNTHESIZED_WIRE_19);


SYNTHESIZED_WIRE_4 <= NOT(Flag);



b2v_inst3 : counter_phr_psdu
PORT MAP(clock => SYNTHESIZED_WIRE_19,
		 clear => SYNTHESIZED_WIRE_4,
		 count => SYNTHESIZED_WIRE_0);


b2v_inst4 : rsencoder
PORT MAP(Clock_RSencoder => SYNTHESIZED_WIRE_19,
		 Initialize_RSencoder => SYNTHESIZED_WIRE_6,
		 input_RSencoder => SYNTHESIZED_WIRE_20,
		 control => control,
		 clock_sistema => clock_sistema,
		 count => count,
		 Output => SYNTHESIZED_WIRE_9,
		 reg1 => reg1,
		 reg2 => reg2,
		 reg3 => reg3,
		 reg4 => reg4,
		 saida_AND => saida_AND,
		 saidaMul => saidaMul);


b2v_inst5 : interleaver_rev4
PORT MAP(Flag => Flag,
		 Clock => SYNTHESIZED_WIRE_19,
		 Input => SYNTHESIZED_WIRE_9,
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
		 Flag_2 => SYNTHESIZED_WIRE_14,
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
		 Output => SYNTHESIZED_WIRE_15,
		 q_b => q_b);


b2v_inst6 : scale_clock_100khz
PORT MAP(clk_50Mhz => clock_50MHz,
		 rst => rest_clock,
		 clk_100kHz => SYNTHESIZED_WIRE_17);



b2v_inst8 : encccencoder
PORT MAP(clock_100kHz => SYNTHESIZED_WIRE_17,
		 clock_25kHz => SYNTHESIZED_WIRE_18,
		 clock_enable => SYNTHESIZED_WIRE_12,
		 clock_igual_interleaver_25D4 => SYNTHESIZED_WIRE_19,
		 flag => SYNTHESIZED_WIRE_14,
		 Input_CCencoder => SYNTHESIZED_WIRE_15,
		 output_manchester => output_manchester,
		 C0 => C0,
		 load_piso => load_piso,
		 so => so,
		 input_manchester => input_manchester,
		 ccEncoderinput => ccEncoderinput,
		 count_control1 => count_control1,
		 count_control2 => count_control2);


END bdf_type;