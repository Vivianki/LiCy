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
-- CREATED		"Tue Nov 08 17:44:20 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY all_enc IS 
	PORT
	(
		Flag :  IN  STD_LOGIC;
		Clock50MHz :  IN  STD_LOGIC;
		is_enviando_external :  IN  STD_LOGIC;
		reset_clock :  IN  STD_LOGIC;
		viterbi_output :  INOUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Clk200kHz :  OUT  STD_LOGIC;
		Clk100kHz :  OUT  STD_LOGIC;
		Clk25kH :  OUT  STD_LOGIC;
		Clk25D4kHz :  OUT  STD_LOGIC;
		Flag_2 :  OUT  STD_LOGIC;
		so :  OUT  STD_LOGIC;
		ccEncoderinput :  OUT  STD_LOGIC;
		reset_control :  OUT  STD_LOGIC;
		flag_shift_reg :  OUT  STD_LOGIC;
		InputManchester :  OUT  STD_LOGIC;
		OutputManchester :  OUT  STD_LOGIC;
		is_enviando_value :  OUT  STD_LOGIC;
		reset_reg :  OUT  STD_LOGIC;
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
		clock50MHz12 :  OUT  STD_LOGIC;
		encoder_output :  OUT  STD_LOGIC;
		flag_viterbi :  OUT  STD_LOGIC;
		viterbi_clock :  OUT  STD_LOGIC;
		flag_viterbi_input :  OUT  STD_LOGIC;
		tdp_detected :  OUT  STD_LOGIC;
		manchester_decoder_input :  OUT  STD_LOGIC;
		manchester_decoder_clock :  OUT  STD_LOGIC;
		manchester_decoder_output :  OUT  STD_LOGIC;
		viterbi_equal :  OUT  STD_LOGIC;
		antes_reg :  OUT  STD_LOGIC_VECTOR(9 DOWNTO 0);
		antes_regs :  OUT  STD_LOGIC_VECTOR(9 DOWNTO 0);
		in_shift_regs :  OUT  STD_LOGIC_VECTOR(99 DOWNTO 0);
		Output_Interlv :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Output_Interlv_Aux :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Output_PHR_PSDU :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		pos_reg :  OUT  STD_LOGIC_VECTOR(9 DOWNTO 0);
		pos_regs :  OUT  STD_LOGIC_VECTOR(9 DOWNTO 0);
		RSOutput :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		viterbi_input :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END all_enc;

ARCHITECTURE bdf_type OF all_enc IS 

COMPONENT phr_psdu
	PORT(address : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT encccencoder
	PORT(clock_100kHz : IN STD_LOGIC;
		 clock_igual_interleaver_50D4 : IN STD_LOGIC;
		 clock_50kHz : IN STD_LOGIC;
		 Flag : IN STD_LOGIC;
		 Input_CCencoder : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 so : OUT STD_LOGIC;
		 ccEncoderinput : OUT STD_LOGIC;
		 reset_control : OUT STD_LOGIC;
		 flag_shift_reg : OUT STD_LOGIC;
		 InputManchester : OUT STD_LOGIC;
		 OutputManchester : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT addflp_tdp
	PORT(CLK : IN STD_LOGIC;
		 D : IN STD_LOGIC;
		 Reset_60b : IN STD_LOGIC;
		 is_enviando_external : IN STD_LOGIC;
		 is_enviando_value : OUT STD_LOGIC;
		 reset_reg : OUT STD_LOGIC;
		 shift_regiters_values : OUT STD_LOGIC_VECTOR(169 DOWNTO 0)
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

COMPONENT shift_register_60b
	PORT(CLK : IN STD_LOGIC;
		 D : IN STD_LOGIC;
		 Q : OUT STD_LOGIC_VECTOR(59 DOWNTO 0)
	);
END COMPONENT;

COMPONENT tdp_detector
	PORT(entrada : IN STD_LOGIC_VECTOR(59 DOWNTO 0);
		 tdp_detect : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT divideclockby2
	PORT(Clk : IN STD_LOGIC;
		 Rst : IN STD_LOGIC;
		 ClkDiv2 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT flag_reg
	PORT(clr : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 q : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT divideclockby125
	PORT(Clk : IN STD_LOGIC;
		 Rst : IN STD_LOGIC;
		 ClkDiv125 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT sipo
	PORT(clk : IN STD_LOGIC;
		 si : IN STD_LOGIC;
		 po : INOUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT manchester_encoder
	PORT(clk : IN STD_LOGIC;
		 D : IN STD_LOGIC;
		 Q : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT viterbiv2
	PORT(flag : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 input_manchester : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 viterbi_output : INOUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 flag_viterbi : OUT STD_LOGIC;
		 viterbi_equal : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT register1b_viterbi
	PORT(d : IN STD_LOGIC;
		 clr : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 q : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT divideclockby4
	PORT(Clk : IN STD_LOGIC;
		 Rst : IN STD_LOGIC;
		 ClkDiv4 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT counter_phr_psdu
	PORT(Clk : IN STD_LOGIC;
		 Flag : IN STD_LOGIC;
		 Q : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT rsencoder
	PORT(Clk : IN STD_LOGIC;
		 Flag : IN STD_LOGIC;
		 InputRS : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 OutputRS : OUT STD_LOGIC_VECTOR(0 TO 3)
	);
END COMPONENT;

COMPONENT interleaver
	PORT(Flag : IN STD_LOGIC;
		 Clock : IN STD_LOGIC;
		 InputIntrlv : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Flag_2 : OUT STD_LOGIC;
		 Output_Interlv : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Output_Interlv_Aux : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	H :  STD_LOGIC_VECTOR(169 DOWNTO 0);
SIGNAL	I :  STD_LOGIC_VECTOR(59 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_35 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_36 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_37 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_38 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_39 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_40 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_41 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_42 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_32 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_34 :  STD_LOGIC_VECTOR(0 TO 3);


BEGIN 
Clk200kHz <= SYNTHESIZED_WIRE_38;
Clk100kHz <= SYNTHESIZED_WIRE_35;
Clk25kH <= SYNTHESIZED_WIRE_37;
Clk25D4kHz <= SYNTHESIZED_WIRE_36;
Flag_2 <= SYNTHESIZED_WIRE_4;
flag_shift_reg <= SYNTHESIZED_WIRE_8;
OutputManchester <= SYNTHESIZED_WIRE_10;
clock_generated <= SYNTHESIZED_WIRE_39;
viterbi_clock <= SYNTHESIZED_WIRE_20;
flag_viterbi_input <= SYNTHESIZED_WIRE_41;
tdp_detected <= SYNTHESIZED_WIRE_14;
manchester_decoder_clock <= SYNTHESIZED_WIRE_42;
manchester_decoder_output <= SYNTHESIZED_WIRE_17;
Output_Interlv <= SYNTHESIZED_WIRE_5;
Output_PHR_PSDU <= SYNTHESIZED_WIRE_32;
RSOutput(3 DOWNTO 0) <= SYNTHESIZED_WIRE_34(0 TO 3);
viterbi_input <= SYNTHESIZED_WIRE_21;
SYNTHESIZED_WIRE_13 <= '0';
SYNTHESIZED_WIRE_23 <= '0';



b2v_inst : phr_psdu
PORT MAP(address => SYNTHESIZED_WIRE_0,
		 Q => SYNTHESIZED_WIRE_32);


b2v_inst1 : encccencoder
PORT MAP(clock_100kHz => SYNTHESIZED_WIRE_35,
		 clock_igual_interleaver_50D4 => SYNTHESIZED_WIRE_36,
		 clock_50kHz => SYNTHESIZED_WIRE_37,
		 Flag => SYNTHESIZED_WIRE_4,
		 Input_CCencoder => SYNTHESIZED_WIRE_5,
		 so => so,
		 ccEncoderinput => ccEncoderinput,
		 reset_control => reset_control,
		 flag_shift_reg => SYNTHESIZED_WIRE_8,
		 InputManchester => InputManchester,
		 OutputManchester => SYNTHESIZED_WIRE_10);


b2v_inst10 : addflp_tdp
PORT MAP(CLK => SYNTHESIZED_WIRE_38,
		 D => SYNTHESIZED_WIRE_7,
		 Reset_60b => SYNTHESIZED_WIRE_8,
		 is_enviando_external => is_enviando_external,
		 is_enviando_value => is_enviando_value,
		 reset_reg => reset_reg,
		 shift_regiters_values => H);


b2v_inst11 : synchro
PORT MAP(clock_counter => Clock50MHz,
		 input_synchro => H(169),
		 clock_generated => SYNTHESIZED_WIRE_39,
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
		 clock50MHz => clock50MHz12,
		 antes_reg => antes_reg,
		 antes_regs => antes_regs,
		 in_shift_regs => in_shift_regs,
		 pos_reg => pos_reg,
		 pos_regs => pos_regs);


b2v_inst12 : shift_register_60b
PORT MAP(CLK => SYNTHESIZED_WIRE_39,
		 D => H(169),
		 Q => I);


b2v_inst13 : tdp_detector
PORT MAP(entrada => I,
		 tdp_detect => SYNTHESIZED_WIRE_14);


SYNTHESIZED_WIRE_7 <= NOT(SYNTHESIZED_WIRE_10);



b2v_inst15 : divideclockby2
PORT MAP(Clk => SYNTHESIZED_WIRE_39,
		 Rst => SYNTHESIZED_WIRE_40,
		 ClkDiv2 => SYNTHESIZED_WIRE_42);


b2v_inst16 : flag_reg
PORT MAP(clr => SYNTHESIZED_WIRE_13,
		 clk => SYNTHESIZED_WIRE_14,
		 q => SYNTHESIZED_WIRE_41);


SYNTHESIZED_WIRE_40 <= NOT(SYNTHESIZED_WIRE_41);



b2v_inst2 : divideclockby125
PORT MAP(Clk => Clock50MHz,
		 Rst => reset_clock,
		 ClkDiv125 => SYNTHESIZED_WIRE_38);


b2v_inst20 : sipo
PORT MAP(clk => SYNTHESIZED_WIRE_42,
		 si => SYNTHESIZED_WIRE_17,
		 po => SYNTHESIZED_WIRE_21);



b2v_inst23 : manchester_encoder
PORT MAP(clk => SYNTHESIZED_WIRE_42,
		 D => I(0),
		 Q => SYNTHESIZED_WIRE_17);


b2v_inst25 : viterbiv2
PORT MAP(flag => SYNTHESIZED_WIRE_41,
		 clk => SYNTHESIZED_WIRE_20,
		 input_manchester => SYNTHESIZED_WIRE_21,
		 viterbi_output => viterbi_output,
		 flag_viterbi => flag_viterbi,
		 viterbi_equal => viterbi_equal);


b2v_inst26 : register1b_viterbi
PORT MAP(d => SYNTHESIZED_WIRE_22,
		 clr => SYNTHESIZED_WIRE_23,
		 clk => SYNTHESIZED_WIRE_39,
		 q => SYNTHESIZED_WIRE_20);



b2v_inst3 : divideclockby2
PORT MAP(Clk => SYNTHESIZED_WIRE_38,
		 Rst => reset_clock,
		 ClkDiv2 => SYNTHESIZED_WIRE_35);


b2v_inst4 : divideclockby4
PORT MAP(Clk => SYNTHESIZED_WIRE_35,
		 Rst => reset_clock,
		 ClkDiv4 => SYNTHESIZED_WIRE_37);


b2v_inst5 : divideclockby4
PORT MAP(Clk => SYNTHESIZED_WIRE_37,
		 Rst => reset_clock,
		 ClkDiv4 => SYNTHESIZED_WIRE_36);


b2v_inst6 : divideclockby4
PORT MAP(Clk => SYNTHESIZED_WIRE_42,
		 Rst => SYNTHESIZED_WIRE_40,
		 ClkDiv4 => SYNTHESIZED_WIRE_22);


b2v_inst7 : counter_phr_psdu
PORT MAP(Clk => SYNTHESIZED_WIRE_36,
		 Flag => Flag,
		 Q => SYNTHESIZED_WIRE_0);


b2v_inst8 : rsencoder
PORT MAP(Clk => SYNTHESIZED_WIRE_36,
		 Flag => Flag,
		 InputRS => SYNTHESIZED_WIRE_32,
		 OutputRS => SYNTHESIZED_WIRE_34);


b2v_inst9 : interleaver
PORT MAP(Flag => Flag,
		 Clock => SYNTHESIZED_WIRE_36,
		 InputIntrlv => SYNTHESIZED_WIRE_34,
		 Flag_2 => SYNTHESIZED_WIRE_4,
		 Output_Interlv => SYNTHESIZED_WIRE_5,
		 Output_Interlv_Aux => Output_Interlv_Aux);

encoder_output <= H(169);
manchester_decoder_input <= I(0);

END bdf_type;