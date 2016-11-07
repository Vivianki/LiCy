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
-- CREATED		"Sun Nov 06 18:10:26 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY EncIntegration2 IS 
	PORT
	(
		Flag :  IN  STD_LOGIC;
		clock_200kHz :  IN  STD_LOGIC;
		clock_50MHz :  IN  STD_LOGIC;
		is_enviando_external :  IN  STD_LOGIC;
		Flag_2 :  OUT  STD_LOGIC;
		kilo100 :  OUT  STD_LOGIC;
		kilo50 :  OUT  STD_LOGIC;
		kilo50D4 :  OUT  STD_LOGIC;
		output_manchester12 :  OUT  STD_LOGIC;
		flag_shift_reg :  OUT  STD_LOGIC;
		output_encoder :  OUT  STD_LOGIC;
		is_enviando_value :  OUT  STD_LOGIC;
		outpu_manchester_decoder :  OUT  STD_LOGIC;
		tdp_detected :  OUT  STD_LOGIC;
		input_manchester_encoder :  OUT  STD_LOGIC;
		Flag_3 :  OUT  STD_LOGIC;
		finished_flushing :  OUT  STD_LOGIC;
		readWrite37 :  OUT  STD_LOGIC;
		carry_sig39 :  OUT  STD_LOGIC;
		depth_counter_carry40 :  OUT  STD_LOGIC;
		enable_flush41 :  OUT  STD_LOGIC;
		start_flushing42 :  OUT  STD_LOGIC;
		flush_counter_carry43 :  OUT  STD_LOGIC;
		readWrite_3 :  OUT  STD_LOGIC;
		carry_sig3 :  OUT  STD_LOGIC;
		depth_counter_carry3 :  OUT  STD_LOGIC;
		enable_flush3 :  OUT  STD_LOGIC;
		reset_reg :  OUT  STD_LOGIC;
		so :  OUT  STD_LOGIC;
		input_manchester :  OUT  STD_LOGIC;
		ccEncoderinput :  OUT  STD_LOGIC;
		reset_control :  OUT  STD_LOGIC;
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
		address_calc35 :  OUT  STD_LOGIC_VECTOR(12 DOWNTO 0);
		address_sel31 :  OUT  STD_LOGIC_VECTOR(12 DOWNTO 0);
		address_sel_payload45 :  OUT  STD_LOGIC_VECTOR(12 DOWNTO 0);
		antes_reg :  OUT  STD_LOGIC_VECTOR(9 DOWNTO 0);
		antes_regs :  OUT  STD_LOGIC_VECTOR(9 DOWNTO 0);
		depth_count38 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		depth_count_payload47 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		flush_count32 :  OUT  STD_LOGIC_VECTOR(12 DOWNTO 0);
		in_shift_regs :  OUT  STD_LOGIC_VECTOR(99 DOWNTO 0);
		Initial_data :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		InputPayload44 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		InputSR3 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		iterator_sig36 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		iterator_sig_payload46 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Output :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Output33 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		output_rs :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		pos_reg :  OUT  STD_LOGIC_VECTOR(9 DOWNTO 0);
		pos_regs :  OUT  STD_LOGIC_VECTOR(9 DOWNTO 0);
		q_b :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		q_b34 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Saida_counter_PHR_PSDU :  OUT  STD_LOGIC_VECTOR(4 DOWNTO 0);
		Saida_PHR_PSDU :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		viterb_input :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		viterbi_output :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END EncIntegration2;

ARCHITECTURE bdf_type OF EncIntegration2 IS 

COMPONENT phr_psdu
	PORT(address : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 data : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT synchro
	PORT(clock_counter : IN STD_LOGIC;
		 input_synchro : IN STD_LOGIC;
		 clock_generated : OUT STD_LOGIC;
		 input : OUT STD_LOGIC;
		 count1s : OUT STD_LOGIC;
		 count0s : OUT STD_LOGIC;
		 sinal_analizado : OUT STD_LOGIC;
		 regs1 : OUT STD_LOGIC;
		 regs0 : OUT STD_LOGIC;
		 input_dos_sr : OUT STD_LOGIC;
		 flp : OUT STD_LOGIC;
		 out_400h2z : OUT STD_LOGIC;
		 out_4001hz : OUT STD_LOGIC;
		 rst_shift_regs : OUT STD_LOGIC;
		 clock50MHz : OUT STD_LOGIC;
		 antes_reg : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		 antes_regs : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		 in_shift_regs : OUT STD_LOGIC_VECTOR(99 DOWNTO 0);
		 pos_reg : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		 pos_regs : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
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

COMPONENT d_ff_vhdl
	PORT(clk : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 d : IN STD_LOGIC;
		 q : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT shift_register_60b
	PORT(CLK : IN STD_LOGIC;
		 D : IN STD_LOGIC;
		 Reset_60b : IN STD_LOGIC;
		 is_enviando_external : IN STD_LOGIC;
		 is_enviando_value : OUT STD_LOGIC;
		 reset_reg : OUT STD_LOGIC;
		 shift_regiters_values : OUT STD_LOGIC_VECTOR(169 DOWNTO 0)
	);
END COMPONENT;

COMPONENT shiftreg60b
	PORT(CLK : IN STD_LOGIC;
		 D : IN STD_LOGIC;
		 Reset_60b : IN STD_LOGIC;
		 shift_regiters_values : OUT STD_LOGIC_VECTOR(59 DOWNTO 0)
	);
END COMPONENT;

COMPONENT tdp_detector
	PORT(entrada : IN STD_LOGIC_VECTOR(59 DOWNTO 0);
		 tdp_detect : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT manchester_encoding
	PORT(clk : IN STD_LOGIC;
		 I : IN STD_LOGIC;
		 O : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT sipo
	PORT(clk : IN STD_LOGIC;
		 si : IN STD_LOGIC;
		 po : INOUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT counter_phr_psdu
	PORT(clock : IN STD_LOGIC;
		 clear : IN STD_LOGIC;
		 carry : OUT STD_LOGIC;
		 count : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT deinterleaver_vai
	PORT(Clock : IN STD_LOGIC;
		 Flag : IN STD_LOGIC;
		 Input : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Flag_2 : OUT STD_LOGIC;
		 finished_flushing : OUT STD_LOGIC;
		 readWrite : OUT STD_LOGIC;
		 carry_sig : OUT STD_LOGIC;
		 depth_counter_carry : OUT STD_LOGIC;
		 enable_flush : OUT STD_LOGIC;
		 start_flushing : OUT STD_LOGIC;
		 flush_counter_carry : OUT STD_LOGIC;
		 readWrite_2 : OUT STD_LOGIC;
		 carry_sig2 : OUT STD_LOGIC;
		 depth_counter_carry2 : OUT STD_LOGIC;
		 enable_flush2 : OUT STD_LOGIC;
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

COMPONENT viterbiv2
	PORT(flag : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 input_manchester : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 viterbi_output : INOUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 flag_viterbi : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT encccencoder
	PORT(clock_100kHz : IN STD_LOGIC;
		 clock_50kHz : IN STD_LOGIC;
		 clock_igual_interleaver_50D4 : IN STD_LOGIC;
		 flag : IN STD_LOGIC;
		 Input_CCencoder : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 output_manchester : OUT STD_LOGIC;
		 so : OUT STD_LOGIC;
		 input_manchester : OUT STD_LOGIC;
		 ccEncoderinput : OUT STD_LOGIC;
		 flag_shift_reg : OUT STD_LOGIC;
		 reset_control : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT interleaver_rev4
	PORT(Clock : IN STD_LOGIC;
		 Flag : IN STD_LOGIC;
		 Input : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Flag_2 : OUT STD_LOGIC;
		 Output : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 q_b : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT rsencoder
	PORT(Clock_RSencoder : IN STD_LOGIC;
		 Initialize_RSencoder : IN STD_LOGIC;
		 input_RSencoder : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Output : OUT STD_LOGIC_VECTOR(0 TO 3)
	);
END COMPONENT;

SIGNAL	H :  STD_LOGIC_VECTOR(169 DOWNTO 0);
SIGNAL	I :  STD_LOGIC_VECTOR(59 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_39 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_40 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_41 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_42 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_43 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_44 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_45 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_46 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_31 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_32 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_34 :  STD_LOGIC_VECTOR(0 TO 3);
SIGNAL	SYNTHESIZED_WIRE_36 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_47 :  STD_LOGIC_VECTOR(3 DOWNTO 0);


BEGIN 
Flag_2 <= SYNTHESIZED_WIRE_31;
kilo100 <= SYNTHESIZED_WIRE_41;
kilo50 <= SYNTHESIZED_WIRE_39;
kilo50D4 <= SYNTHESIZED_WIRE_45;
output_manchester12 <= SYNTHESIZED_WIRE_4;
flag_shift_reg <= SYNTHESIZED_WIRE_11;
outpu_manchester_decoder <= SYNTHESIZED_WIRE_16;
tdp_detected <= SYNTHESIZED_WIRE_7;
Initial_data <= SYNTHESIZED_WIRE_47;
Output <= SYNTHESIZED_WIRE_32;
output_rs(3 DOWNTO 0) <= SYNTHESIZED_WIRE_34(0 TO 3);
Saida_counter_PHR_PSDU <= SYNTHESIZED_WIRE_0;
Saida_PHR_PSDU <= SYNTHESIZED_WIRE_47;
viterb_input <= SYNTHESIZED_WIRE_27;
viterbi_output <= SYNTHESIZED_WIRE_23;
SYNTHESIZED_WIRE_40 <= '0';
SYNTHESIZED_WIRE_43 <= '1';
SYNTHESIZED_WIRE_13 <= '0';



b2v_inst : phr_psdu
PORT MAP(address => SYNTHESIZED_WIRE_0,
		 data => SYNTHESIZED_WIRE_47);


SYNTHESIZED_WIRE_36 <= NOT(Flag);



b2v_inst10 : synchro
PORT MAP(clock_counter => H(169),
		 input_synchro => clock_50MHz,
		 clock_generated => SYNTHESIZED_WIRE_44,
		 input => input,
		 count1s => count1s,
		 count0s => count0s,
		 sinal_analizado => sinal_analizado,
		 regs1 => regs1,
		 regs0 => regs0,
		 input_dos_sr => input_dos_sr,
		 flp => flp,
		 out_400h2z => out_400h2z,
		 out_4001hz => out_4001hz,
		 rst_shift_regs => rst_shift_regs,
		 clock50MHz => clock50MHz,
		 antes_reg => antes_reg,
		 antes_regs => antes_regs,
		 in_shift_regs => in_shift_regs,
		 pos_reg => pos_reg,
		 pos_regs => pos_regs);



b2v_inst12 : transformador100d4
PORT MAP(clk_100khz => SYNTHESIZED_WIRE_39,
		 rst => SYNTHESIZED_WIRE_40,
		 clk_100D4kHz => SYNTHESIZED_WIRE_45);


b2v_inst13 : transformador100d2
PORT MAP(clk_100khz => clock_200kHz,
		 rst => SYNTHESIZED_WIRE_40,
		 clk_100D2kHz => SYNTHESIZED_WIRE_41);


SYNTHESIZED_WIRE_10 <= NOT(SYNTHESIZED_WIRE_4);



b2v_inst15 : transformador100d4
PORT MAP(clk_100khz => SYNTHESIZED_WIRE_41,
		 rst => SYNTHESIZED_WIRE_40,
		 clk_100D4kHz => SYNTHESIZED_WIRE_39);


b2v_inst17 : d_ff_vhdl
PORT MAP(clk => SYNTHESIZED_WIRE_7,
		 rst => SYNTHESIZED_WIRE_42,
		 d => SYNTHESIZED_WIRE_43,
		 q => SYNTHESIZED_WIRE_25);


b2v_inst18 : shift_register_60b
PORT MAP(CLK => clock_200kHz,
		 D => SYNTHESIZED_WIRE_10,
		 Reset_60b => SYNTHESIZED_WIRE_11,
		 is_enviando_external => is_enviando_external,
		 is_enviando_value => is_enviando_value,
		 reset_reg => reset_reg,
		 shift_regiters_values => H);


SYNTHESIZED_WIRE_20 <= NOT(Flag);



b2v_inst20 : shiftreg60b
PORT MAP(CLK => SYNTHESIZED_WIRE_44,
		 D => H(169),
		 Reset_60b => SYNTHESIZED_WIRE_13,
		 shift_regiters_values => I);



b2v_inst23 : tdp_detector
PORT MAP(entrada => I,
		 tdp_detect => SYNTHESIZED_WIRE_7);


b2v_inst24 : manchester_encoding
PORT MAP(clk => SYNTHESIZED_WIRE_44,
		 I => I(59),
		 O => SYNTHESIZED_WIRE_16);



b2v_inst28 : sipo
PORT MAP(clk => SYNTHESIZED_WIRE_44,
		 si => SYNTHESIZED_WIRE_16,
		 po => SYNTHESIZED_WIRE_27);


b2v_inst29 : transformador100d4
PORT MAP(clk_100khz => SYNTHESIZED_WIRE_44,
		 rst => SYNTHESIZED_WIRE_42,
		 clk_100D4kHz => SYNTHESIZED_WIRE_46);


b2v_inst3 : counter_phr_psdu
PORT MAP(clock => SYNTHESIZED_WIRE_45,
		 clear => SYNTHESIZED_WIRE_20,
		 count => SYNTHESIZED_WIRE_0);


b2v_inst30 : deinterleaver_vai
PORT MAP(Clock => SYNTHESIZED_WIRE_46,
		 Flag => SYNTHESIZED_WIRE_22,
		 Input => SYNTHESIZED_WIRE_23,
		 Flag_2 => Flag_3,
		 finished_flushing => finished_flushing,
		 readWrite => readWrite37,
		 carry_sig => carry_sig39,
		 depth_counter_carry => depth_counter_carry40,
		 enable_flush => enable_flush41,
		 start_flushing => start_flushing42,
		 flush_counter_carry => flush_counter_carry43,
		 readWrite_2 => readWrite_3,
		 carry_sig2 => carry_sig3,
		 depth_counter_carry2 => depth_counter_carry3,
		 enable_flush2 => enable_flush3,
		 address_calc => address_calc35,
		 address_sel => address_sel31,
		 address_sel_payload => address_sel_payload45,
		 depth_count => depth_count38,
		 depth_count_payload => depth_count_payload47,
		 flush_count => flush_count32,
		 InputPayload => InputPayload44,
		 InputSR2 => InputSR3,
		 iterator_sig => iterator_sig36,
		 iterator_sig_payload => iterator_sig_payload46,
		 Output => Output33,
		 q_b => q_b34);


SYNTHESIZED_WIRE_42 <= NOT(SYNTHESIZED_WIRE_43);



b2v_inst6 : viterbiv2
PORT MAP(flag => SYNTHESIZED_WIRE_25,
		 clk => SYNTHESIZED_WIRE_46,
		 input_manchester => SYNTHESIZED_WIRE_27,
		 viterbi_output => SYNTHESIZED_WIRE_23,
		 flag_viterbi => SYNTHESIZED_WIRE_22);


b2v_inst7 : encccencoder
PORT MAP(clock_100kHz => SYNTHESIZED_WIRE_41,
		 clock_50kHz => SYNTHESIZED_WIRE_39,
		 clock_igual_interleaver_50D4 => SYNTHESIZED_WIRE_45,
		 flag => SYNTHESIZED_WIRE_31,
		 Input_CCencoder => SYNTHESIZED_WIRE_32,
		 output_manchester => SYNTHESIZED_WIRE_4,
		 so => so,
		 input_manchester => input_manchester,
		 ccEncoderinput => ccEncoderinput,
		 flag_shift_reg => SYNTHESIZED_WIRE_11,
		 reset_control => reset_control);


b2v_inst8 : interleaver_rev4
PORT MAP(Clock => SYNTHESIZED_WIRE_45,
		 Flag => Flag,
		 Input => SYNTHESIZED_WIRE_34,
		 Flag_2 => SYNTHESIZED_WIRE_31,
		 Output => SYNTHESIZED_WIRE_32,
		 q_b => q_b);


b2v_inst9 : rsencoder
PORT MAP(Clock_RSencoder => SYNTHESIZED_WIRE_45,
		 Initialize_RSencoder => SYNTHESIZED_WIRE_36,
		 input_RSencoder => SYNTHESIZED_WIRE_47,
		 Output => SYNTHESIZED_WIRE_34);

output_encoder <= H(169);
input_manchester_encoder <= I(59);

END bdf_type;