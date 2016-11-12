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
-- CREATED		"Sat Nov 12 18:59:36 2016"

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
		encoder_output :  OUT  STD_LOGIC;
		flag_viterbi :  OUT  STD_LOGIC;
		viterbi_clock :  OUT  STD_LOGIC;
		flag_viterbi_input :  OUT  STD_LOGIC;
		tdp_detected :  OUT  STD_LOGIC;
		manchester_decoder_input :  OUT  STD_LOGIC;
		manchester_decoder_clock :  OUT  STD_LOGIC;
		manchester_decoder_output :  OUT  STD_LOGIC;
		viterbi_equal :  OUT  STD_LOGIC;
		clock_deint :  OUT  STD_LOGIC;
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
		Flag_4 :  OUT  STD_LOGIC;
		finished_flushing :  OUT  STD_LOGIC;
		pin_name1 :  OUT  STD_LOGIC;
		erroro :  OUT  STD_LOGIC;
		pin_name2 :  OUT  STD_LOGIC;
		pin_name3 :  OUT  STD_LOGIC;
		pin_name4 :  OUT  STD_LOGIC;
		pin_name5 :  OUT  STD_LOGIC;
		reset_1 :  OUT  STD_LOGIC;
		reset_2 :  OUT  STD_LOGIC;
		reset_3 :  OUT  STD_LOGIC;
		reset_4 :  OUT  STD_LOGIC;
		erroro2 :  OUT  STD_LOGIC;
		erroro3 :  OUT  STD_LOGIC;
		erroro4 :  OUT  STD_LOGIC;
		address_interleaver :  OUT  STD_LOGIC_VECTOR(12 DOWNTO 0);
		address_sel :  OUT  STD_LOGIC_VECTOR(12 DOWNTO 0);
		address_sel_payload :  OUT  STD_LOGIC_VECTOR(12 DOWNTO 0);
		Decod_1 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Decod_2 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Decod_3 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Decod_4 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		depth_count :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		depth_count_payload :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		input_deint_heade :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		InputPayload :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Output :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Output_Interlv :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Output_Interlv_Aux :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Output_PHR_PSDU :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		q_b :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
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

COMPONENT deinterleaver_vai
	PORT(Flag : IN STD_LOGIC;
		 Clock : IN STD_LOGIC;
		 Input : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Input_payload : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
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
		 finished_flushing : OUT STD_LOGIC;
		 address_calc : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
		 address_sel : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
		 address_sel_payload : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
		 depth_count : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		 depth_count_payload : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		 flush_count : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
		 input_deint_heade : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 InputPayload : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 InputSR2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 iterator_sig : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 iterator_sig_payload : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		 Output : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 q_b : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
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

COMPONENT divideclockby4
	PORT(Clk : IN STD_LOGIC;
		 Rst : IN STD_LOGIC;
		 ClkDiv4 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT interleaver
	PORT(Flag : IN STD_LOGIC;
		 Clock : IN STD_LOGIC;
		 InputIntrlv : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Flag_2 : OUT STD_LOGIC;
		 address_interlaver : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
		 Output_Interlv : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Output_Interlv_Aux : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
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

COMPONENT shift_register_4b
	PORT(CLK : IN STD_LOGIC;
		 D : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT addflp_tdp
	PORT(CLK : IN STD_LOGIC;
		 D : IN STD_LOGIC;
		 Reset_60b : IN STD_LOGIC;
		 is_enviando_external : IN STD_LOGIC;
		 is_enviando : OUT STD_LOGIC;
		 reset_reg : OUT STD_LOGIC;
		 last_reg : OUT STD_LOGIC;
		 tdp_counter : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;

COMPONENT register1b_viterbi
	PORT(d : IN STD_LOGIC;
		 clr : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 q : OUT STD_LOGIC
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
		 FLP_OUT : OUT STD_LOGIC_VECTOR(100 DOWNTO 0);
		 pos_reg : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		 pos_regs : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;

COMPONENT rsintegration
	PORT(Clock : IN STD_LOGIC;
		 Reset : IN STD_LOGIC;
		 Input : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 pin_name1 : OUT STD_LOGIC;
		 erroro : OUT STD_LOGIC;
		 Decod : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT reset_rsdecoder
	PORT(Clk : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 rst_rsdecoder1 : OUT STD_LOGIC;
		 rst_rsdecoder2 : OUT STD_LOGIC;
		 rst_rsdecoder3 : OUT STD_LOGIC;
		 rst_rsdecoder4 : OUT STD_LOGIC
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

SIGNAL	I :  STD_LOGIC_VECTOR(59 DOWNTO 0);
SIGNAL	K :  STD_LOGIC_VECTOR(59 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_76 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_77 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_78 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_79 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_80 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_81 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_82 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC_VECTOR(0 TO 3);
SIGNAL	SYNTHESIZED_WIRE_83 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_84 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_28 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_85 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_31 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_33 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_34 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_36 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_86 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_40 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_43 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_46 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_50 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_52 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_87 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_88 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_58 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_61 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_64 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_67 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_73 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_74 :  STD_LOGIC;


BEGIN 
Clk200kHz <= SYNTHESIZED_WIRE_85;
Clk100kHz <= SYNTHESIZED_WIRE_76;
Clk25kH <= SYNTHESIZED_WIRE_78;
Clk25D4kHz <= SYNTHESIZED_WIRE_77;
Flag_2 <= SYNTHESIZED_WIRE_4;
flag_shift_reg <= SYNTHESIZED_WIRE_34;
OutputManchester <= SYNTHESIZED_WIRE_10;
clock_generated <= SYNTHESIZED_WIRE_80;
encoder_output <= SYNTHESIZED_WIRE_83;
flag_viterbi <= SYNTHESIZED_WIRE_46;
viterbi_clock <= SYNTHESIZED_WIRE_82;
flag_viterbi_input <= SYNTHESIZED_WIRE_24;
tdp_detected <= SYNTHESIZED_WIRE_14;
manchester_decoder_clock <= SYNTHESIZED_WIRE_84;
manchester_decoder_output <= SYNTHESIZED_WIRE_22;
clock_deint <= SYNTHESIZED_WIRE_79;
Flag_4 <= SYNTHESIZED_WIRE_67;
pin_name5 <= SYNTHESIZED_WIRE_87;
reset_1 <= SYNTHESIZED_WIRE_87;
reset_2 <= SYNTHESIZED_WIRE_58;
reset_3 <= SYNTHESIZED_WIRE_61;
reset_4 <= SYNTHESIZED_WIRE_64;
Output <= SYNTHESIZED_WIRE_52;
Output_Interlv <= SYNTHESIZED_WIRE_5;
Output_PHR_PSDU <= SYNTHESIZED_WIRE_73;
RSOutput(3 DOWNTO 0) <= SYNTHESIZED_WIRE_18(0 TO 3);
viterbi_input <= SYNTHESIZED_WIRE_26;
SYNTHESIZED_WIRE_13 <= '0';
SYNTHESIZED_WIRE_86 <= '0';



b2v_inst : phr_psdu
PORT MAP(address => SYNTHESIZED_WIRE_0,
		 Q => SYNTHESIZED_WIRE_73);


b2v_inst1 : encccencoder
PORT MAP(clock_100kHz => SYNTHESIZED_WIRE_76,
		 clock_igual_interleaver_50D4 => SYNTHESIZED_WIRE_77,
		 clock_50kHz => SYNTHESIZED_WIRE_78,
		 Flag => SYNTHESIZED_WIRE_4,
		 Input_CCencoder => SYNTHESIZED_WIRE_5,
		 so => so,
		 ccEncoderinput => ccEncoderinput,
		 reset_control => reset_control,
		 flag_shift_reg => SYNTHESIZED_WIRE_34,
		 InputManchester => InputManchester,
		 OutputManchester => SYNTHESIZED_WIRE_10);


b2v_inst10 : deinterleaver_vai
PORT MAP(Flag => SYNTHESIZED_WIRE_6,
		 Clock => SYNTHESIZED_WIRE_79,
		 Input => viterbi_output,
		 Input_payload => SYNTHESIZED_WIRE_8,
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
		 Flag_2 => SYNTHESIZED_WIRE_67,
		 finished_flushing => finished_flushing,
		 address_sel => address_sel,
		 address_sel_payload => address_sel_payload,
		 depth_count => depth_count,
		 depth_count_payload => depth_count_payload,
		 input_deint_heade => input_deint_heade,
		 InputPayload => InputPayload,
		 Output => SYNTHESIZED_WIRE_52,
		 q_b => q_b);


b2v_inst12 : shift_register_60b
PORT MAP(CLK => SYNTHESIZED_WIRE_80,
		 D => K(59),
		 Q => I);


b2v_inst13 : tdp_detector
PORT MAP(entrada => I,
		 tdp_detect => SYNTHESIZED_WIRE_14);


SYNTHESIZED_WIRE_33 <= NOT(SYNTHESIZED_WIRE_10);



b2v_inst15 : divideclockby2
PORT MAP(Clk => SYNTHESIZED_WIRE_80,
		 Rst => SYNTHESIZED_WIRE_81,
		 ClkDiv2 => SYNTHESIZED_WIRE_84);


b2v_inst16 : flag_reg
PORT MAP(clr => SYNTHESIZED_WIRE_13,
		 clk => SYNTHESIZED_WIRE_14,
		 q => SYNTHESIZED_WIRE_24);


b2v_inst17 : divideclockby4
PORT MAP(Clk => SYNTHESIZED_WIRE_82,
		 Rst => SYNTHESIZED_WIRE_81,
		 ClkDiv4 => SYNTHESIZED_WIRE_40);


b2v_inst18 : interleaver
PORT MAP(Flag => Flag,
		 Clock => SYNTHESIZED_WIRE_77,
		 InputIntrlv => SYNTHESIZED_WIRE_18,
		 Flag_2 => SYNTHESIZED_WIRE_4,
		 address_interlaver => address_interleaver,
		 Output_Interlv => SYNTHESIZED_WIRE_5,
		 Output_Interlv_Aux => Output_Interlv_Aux);


b2v_inst19 : shift_register_60b
PORT MAP(CLK => SYNTHESIZED_WIRE_80,
		 D => SYNTHESIZED_WIRE_83,
		 Q => K);


b2v_inst2 : divideclockby125
PORT MAP(Clk => Clock50MHz,
		 Rst => reset_clock,
		 ClkDiv125 => SYNTHESIZED_WIRE_85);


b2v_inst20 : sipo
PORT MAP(clk => SYNTHESIZED_WIRE_84,
		 si => SYNTHESIZED_WIRE_22,
		 po => SYNTHESIZED_WIRE_28);



b2v_inst22 : tdp_detector
PORT MAP(entrada => K,
		 tdp_detect => SYNTHESIZED_WIRE_81);


b2v_inst23 : manchester_encoder
PORT MAP(clk => SYNTHESIZED_WIRE_84,
		 D => I(0),
		 Q => SYNTHESIZED_WIRE_74);


b2v_inst25 : viterbiv2
PORT MAP(flag => SYNTHESIZED_WIRE_24,
		 clk => SYNTHESIZED_WIRE_82,
		 input_manchester => SYNTHESIZED_WIRE_26,
		 viterbi_output => viterbi_output,
		 flag_viterbi => SYNTHESIZED_WIRE_46,
		 viterbi_equal => viterbi_equal);



b2v_inst28 : shift_register_4b
PORT MAP(CLK => SYNTHESIZED_WIRE_84,
		 D => SYNTHESIZED_WIRE_28,
		 Q => SYNTHESIZED_WIRE_31);


b2v_inst3 : divideclockby2
PORT MAP(Clk => SYNTHESIZED_WIRE_85,
		 Rst => reset_clock,
		 ClkDiv2 => SYNTHESIZED_WIRE_76);


b2v_inst30 : shift_register_4b
PORT MAP(CLK => SYNTHESIZED_WIRE_84,
		 D => SYNTHESIZED_WIRE_31,
		 Q => SYNTHESIZED_WIRE_26);


b2v_inst31 : addflp_tdp
PORT MAP(CLK => SYNTHESIZED_WIRE_85,
		 D => SYNTHESIZED_WIRE_33,
		 Reset_60b => SYNTHESIZED_WIRE_34,
		 is_enviando_external => is_enviando_external,
		 is_enviando => is_enviando_value,
		 reset_reg => reset_reg,
		 last_reg => SYNTHESIZED_WIRE_83);


b2v_inst32 : shift_register_4b
PORT MAP(CLK => SYNTHESIZED_WIRE_82,
		 D => viterbi_output,
		 Q => SYNTHESIZED_WIRE_50);


b2v_inst33 : register1b_viterbi
PORT MAP(d => SYNTHESIZED_WIRE_36,
		 clr => SYNTHESIZED_WIRE_86,
		 clk => SYNTHESIZED_WIRE_80,
		 q => SYNTHESIZED_WIRE_82);


b2v_inst34 : synchro
PORT MAP(clock_counter => Clock50MHz,
		 input_synchro => SYNTHESIZED_WIRE_83,
		 clock_generated => SYNTHESIZED_WIRE_80);


b2v_inst35 : register1b_viterbi
PORT MAP(d => SYNTHESIZED_WIRE_40,
		 clr => SYNTHESIZED_WIRE_86,
		 clk => SYNTHESIZED_WIRE_82,
		 q => SYNTHESIZED_WIRE_43);


b2v_inst36 : register1b_viterbi
PORT MAP(d => SYNTHESIZED_WIRE_43,
		 clr => SYNTHESIZED_WIRE_86,
		 clk => SYNTHESIZED_WIRE_82,
		 q => SYNTHESIZED_WIRE_79);


b2v_inst37 : register1b_viterbi
PORT MAP(d => SYNTHESIZED_WIRE_46,
		 clr => SYNTHESIZED_WIRE_86,
		 clk => SYNTHESIZED_WIRE_79,
		 q => SYNTHESIZED_WIRE_6);


b2v_inst38 : shift_register_4b
PORT MAP(CLK => SYNTHESIZED_WIRE_82,
		 D => SYNTHESIZED_WIRE_50,
		 Q => SYNTHESIZED_WIRE_8);


b2v_inst39 : shift_register_4b
PORT MAP(CLK => SYNTHESIZED_WIRE_79,
		 D => SYNTHESIZED_WIRE_52,
		 Q => SYNTHESIZED_WIRE_88);


b2v_inst4 : divideclockby4
PORT MAP(Clk => SYNTHESIZED_WIRE_76,
		 Rst => reset_clock,
		 ClkDiv4 => SYNTHESIZED_WIRE_78);


b2v_inst40 : rsintegration
PORT MAP(Clock => SYNTHESIZED_WIRE_79,
		 Reset => SYNTHESIZED_WIRE_87,
		 Input => SYNTHESIZED_WIRE_88,
		 pin_name1 => pin_name1,
		 erroro => erroro,
		 Decod => Decod_1);


b2v_inst41 : rsintegration
PORT MAP(Clock => SYNTHESIZED_WIRE_79,
		 Reset => SYNTHESIZED_WIRE_58,
		 Input => SYNTHESIZED_WIRE_88,
		 pin_name1 => pin_name2,
		 erroro => erroro2,
		 Decod => Decod_2);


b2v_inst42 : rsintegration
PORT MAP(Clock => SYNTHESIZED_WIRE_79,
		 Reset => SYNTHESIZED_WIRE_61,
		 Input => SYNTHESIZED_WIRE_88,
		 pin_name1 => pin_name3,
		 erroro => erroro3,
		 Decod => Decod_3);


b2v_inst43 : rsintegration
PORT MAP(Clock => SYNTHESIZED_WIRE_79,
		 Reset => SYNTHESIZED_WIRE_64,
		 Input => SYNTHESIZED_WIRE_88,
		 pin_name1 => pin_name4,
		 erroro => erroro4,
		 Decod => Decod_4);


b2v_inst45 : reset_rsdecoder
PORT MAP(Clk => SYNTHESIZED_WIRE_79,
		 enable => SYNTHESIZED_WIRE_67,
		 rst_rsdecoder1 => SYNTHESIZED_WIRE_87,
		 rst_rsdecoder2 => SYNTHESIZED_WIRE_58,
		 rst_rsdecoder3 => SYNTHESIZED_WIRE_61,
		 rst_rsdecoder4 => SYNTHESIZED_WIRE_64);


b2v_inst5 : divideclockby4
PORT MAP(Clk => SYNTHESIZED_WIRE_78,
		 Rst => reset_clock,
		 ClkDiv4 => SYNTHESIZED_WIRE_77);


b2v_inst6 : divideclockby4
PORT MAP(Clk => SYNTHESIZED_WIRE_84,
		 Rst => SYNTHESIZED_WIRE_81,
		 ClkDiv4 => SYNTHESIZED_WIRE_36);


b2v_inst7 : counter_phr_psdu
PORT MAP(Clk => SYNTHESIZED_WIRE_77,
		 Flag => Flag,
		 Q => SYNTHESIZED_WIRE_0);


b2v_inst8 : rsencoder
PORT MAP(Clk => SYNTHESIZED_WIRE_77,
		 Flag => Flag,
		 InputRS => SYNTHESIZED_WIRE_73,
		 OutputRS => SYNTHESIZED_WIRE_18);


SYNTHESIZED_WIRE_22 <= NOT(SYNTHESIZED_WIRE_74);


manchester_decoder_input <= I(0);

END bdf_type;