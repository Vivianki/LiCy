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
-- CREATED		"Mon Nov 14 12:18:37 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY all_enc IS 
	PORT
	(
		Clock50MHz :  IN  STD_LOGIC;
		is_enviando_external :  IN  STD_LOGIC;
		UART_RXD :  IN  STD_LOGIC;
		RST_RCV :  IN  STD_LOGIC;
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
		Flag_4 :  OUT  STD_LOGIC;
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
		UART_TXD :  OUT  STD_LOGIC;
		DATA_VLD :  OUT  STD_LOGIC;
		RsFlag :  OUT  STD_LOGIC;
		enable_clock_Uart :  OUT  STD_LOGIC;
		Rst_SR :  OUT  STD_LOGIC;
		FlagPostRegister :  OUT  STD_LOGIC;
		rs_select :  OUT  STD_LOGIC;
		address_interleaver :  OUT  STD_LOGIC_VECTOR(12 DOWNTO 0);
		Buffout :  OUT  STD_LOGIC_VECTOR(23 DOWNTO 0);
		count_control_rs :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		count_data_control :  OUT  STD_LOGIC_VECTOR(0 TO 3);
		Counter_PSDU :  OUT  STD_LOGIC_VECTOR(4 DOWNTO 0);
		DATA_OUT :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		Decod_1 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Decod_2 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Decod_3 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Decod_4 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Output :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Output_data_control_2 :  OUT  STD_LOGIC_VECTOR(0 TO 5);
		Output_Interlv :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Output_Interlv_Aux :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Output_PHR_PSDU :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		OutputUART :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		RSOutput :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		viterbi_input :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END all_enc;

ARCHITECTURE bdf_type OF all_enc IS 

COMPONENT payload_clock_controller
	PORT(entrada : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 clock_select : OUT STD_LOGIC
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

COMPONENT debounce
GENERIC (counter_size : INTEGER
			);
	PORT(clk : IN STD_LOGIC;
		 button : IN STD_LOGIC;
		 result : OUT STD_LOGIC
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

COMPONENT shift_register8x4
	PORT(Clk : IN STD_LOGIC;
		 Rst : IN STD_LOGIC;
		 Input : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 Flag : OUT STD_LOGIC;
		 Buffout : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
	);
END COMPONENT;

COMPONENT shift_register_4b
	PORT(CLK : IN STD_LOGIC;
		 D : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
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
		 OutputManchester : OUT STD_LOGIC;
		 count_data_control : OUT STD_LOGIC_VECTOR(0 TO 3);
		 Output_data_control_2 : OUT STD_LOGIC_VECTOR(0 TO 5)
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

COMPONENT uart
GENERIC (BAUD_RATE : INTEGER;
			CLK_FREQ : INTEGER;
			PARITY_BIT : STRING
			);
	PORT(CLK : IN STD_LOGIC;
		 RST : IN STD_LOGIC;
		 UART_RXD : IN STD_LOGIC;
		 DATA_SEND : IN STD_LOGIC;
		 DATA_IN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 UART_TXD : OUT STD_LOGIC;
		 BUSY : OUT STD_LOGIC;
		 DATA_VLD : OUT STD_LOGIC;
		 FRAME_ERROR : OUT STD_LOGIC;
		 DATA_OUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
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

COMPONENT shift_register4x8
	PORT(Clk : IN STD_LOGIC;
		 Rst : IN STD_LOGIC;
		 Busy : IN STD_LOGIC;
		 Input : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
		 DataSend : OUT STD_LOGIC;
		 Output : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT piso_uart
	PORT(Clk_Rs : IN STD_LOGIC;
		 Rst : IN STD_LOGIC;
		 Start : IN STD_LOGIC;
		 Input : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
		 Flag : OUT STD_LOGIC;
		 Output : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT sipo_uart
	PORT(Clk_Dec : IN STD_LOGIC;
		 Rst : IN STD_LOGIC;
		 Input : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Start : OUT STD_LOGIC;
		 log : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
	);
END COMPONENT;

COMPONENT phr_psdu
	PORT(address : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 D : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT mux_2to1_sync
	PORT(SEL : IN STD_LOGIC;
		 A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 X : OUT STD_LOGIC
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
		 rs_select : OUT STD_LOGIC;
		 count_control_rs : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 OutputRS : OUT STD_LOGIC_VECTOR(0 TO 3)
	);
END COMPONENT;

SIGNAL	I :  STD_LOGIC_VECTOR(59 DOWNTO 0);
SIGNAL	K :  STD_LOGIC_VECTOR(59 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_113 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_114 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_115 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_116 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_117 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_118 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_119 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_120 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_121 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_122 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC_VECTOR(0 TO 3);
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_28 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_123 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_124 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_32 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_33 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_125 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_37 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_39 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_40 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_42 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_126 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_46 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_49 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_52 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_56 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_58 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_127 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_128 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_65 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_68 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_129 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_74 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_75 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_77 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_81 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_82 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_83 :  STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_84 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_130 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_87 :  STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_89 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_90 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_94 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_95 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_131 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_98 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_99 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_110 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_111 :  STD_LOGIC;


BEGIN 
Clk200kHz <= SYNTHESIZED_WIRE_125;
Clk100kHz <= SYNTHESIZED_WIRE_123;
Clk25kH <= SYNTHESIZED_WIRE_124;
Clk25D4kHz <= SYNTHESIZED_WIRE_122;
Flag_2 <= SYNTHESIZED_WIRE_32;
flag_shift_reg <= SYNTHESIZED_WIRE_40;
OutputManchester <= SYNTHESIZED_WIRE_5;
clock_generated <= SYNTHESIZED_WIRE_115;
encoder_output <= SYNTHESIZED_WIRE_118;
flag_viterbi <= SYNTHESIZED_WIRE_52;
viterbi_clock <= SYNTHESIZED_WIRE_117;
flag_viterbi_input <= SYNTHESIZED_WIRE_21;
tdp_detected <= SYNTHESIZED_WIRE_9;
manchester_decoder_clock <= SYNTHESIZED_WIRE_120;
manchester_decoder_output <= SYNTHESIZED_WIRE_16;
clock_deint <= SYNTHESIZED_WIRE_114;
Flag_4 <= SYNTHESIZED_WIRE_77;
pin_name3 <= SYNTHESIZED_WIRE_98;
pin_name5 <= SYNTHESIZED_WIRE_127;
reset_1 <= SYNTHESIZED_WIRE_127;
reset_2 <= SYNTHESIZED_WIRE_65;
reset_3 <= SYNTHESIZED_WIRE_68;
reset_4 <= SYNTHESIZED_WIRE_129;
DATA_VLD <= SYNTHESIZED_WIRE_24;
enable_clock_Uart <= SYNTHESIZED_WIRE_95;
Rst_SR <= SYNTHESIZED_WIRE_119;
FlagPostRegister <= SYNTHESIZED_WIRE_121;
Buffout <= SYNTHESIZED_WIRE_87;
Counter_PSDU <= SYNTHESIZED_WIRE_113;
DATA_OUT <= SYNTHESIZED_WIRE_26;
Decod_3 <= SYNTHESIZED_WIRE_90;
Output <= SYNTHESIZED_WIRE_58;
Output_Interlv <= SYNTHESIZED_WIRE_33;
Output_PHR_PSDU <= SYNTHESIZED_WIRE_110;
OutputUART <= SYNTHESIZED_WIRE_94;
RSOutput(3 DOWNTO 0) <= SYNTHESIZED_WIRE_19(0 TO 3);
viterbi_input <= SYNTHESIZED_WIRE_23;
SYNTHESIZED_WIRE_126 <= '0';
SYNTHESIZED_WIRE_131 <= '0';
SYNTHESIZED_WIRE_99 <= '0';



b2v_inst : payload_clock_controller
PORT MAP(entrada => SYNTHESIZED_WIRE_113,
		 clock_select => SYNTHESIZED_WIRE_95);


b2v_inst10 : deinterleaver_vai
PORT MAP(Flag => SYNTHESIZED_WIRE_1,
		 Clock => SYNTHESIZED_WIRE_114,
		 Input => viterbi_output,
		 Input_payload => SYNTHESIZED_WIRE_3,
		 Flag_2 => SYNTHESIZED_WIRE_77,
		 Output => SYNTHESIZED_WIRE_58);


b2v_inst11 : debounce
GENERIC MAP(counter_size => 19
			)
PORT MAP(clk => Clock50MHz,
		 button => RST_RCV,
		 result => SYNTHESIZED_WIRE_119);


b2v_inst12 : shift_register_60b
PORT MAP(CLK => SYNTHESIZED_WIRE_115,
		 D => K(59),
		 Q => I);


b2v_inst13 : tdp_detector
PORT MAP(entrada => I,
		 tdp_detect => SYNTHESIZED_WIRE_9);


SYNTHESIZED_WIRE_39 <= NOT(SYNTHESIZED_WIRE_5);



b2v_inst15 : divideclockby2
PORT MAP(Clk => SYNTHESIZED_WIRE_115,
		 Rst => SYNTHESIZED_WIRE_116,
		 ClkDiv2 => SYNTHESIZED_WIRE_120);


b2v_inst16 : flag_reg
PORT MAP(clr => SYNTHESIZED_WIRE_8,
		 clk => SYNTHESIZED_WIRE_9,
		 q => SYNTHESIZED_WIRE_21);


b2v_inst17 : divideclockby4
PORT MAP(Clk => SYNTHESIZED_WIRE_117,
		 Rst => SYNTHESIZED_WIRE_116,
		 ClkDiv4 => SYNTHESIZED_WIRE_46);


b2v_inst19 : shift_register_60b
PORT MAP(CLK => SYNTHESIZED_WIRE_115,
		 D => SYNTHESIZED_WIRE_118,
		 Q => K);


b2v_inst2 : divideclockby125
PORT MAP(Clk => Clock50MHz,
		 Rst => SYNTHESIZED_WIRE_119,
		 ClkDiv125 => SYNTHESIZED_WIRE_125);


b2v_inst20 : sipo
PORT MAP(clk => SYNTHESIZED_WIRE_120,
		 si => SYNTHESIZED_WIRE_16,
		 po => SYNTHESIZED_WIRE_28);


b2v_inst21 : interleaver
PORT MAP(Flag => SYNTHESIZED_WIRE_121,
		 Clock => SYNTHESIZED_WIRE_122,
		 InputIntrlv => SYNTHESIZED_WIRE_19,
		 Flag_2 => SYNTHESIZED_WIRE_32,
		 address_interlaver => address_interleaver,
		 Output_Interlv => SYNTHESIZED_WIRE_33,
		 Output_Interlv_Aux => Output_Interlv_Aux);


b2v_inst22 : tdp_detector
PORT MAP(entrada => K,
		 tdp_detect => SYNTHESIZED_WIRE_116);


b2v_inst23 : manchester_encoder
PORT MAP(clk => SYNTHESIZED_WIRE_120,
		 D => I(0),
		 Q => SYNTHESIZED_WIRE_111);


b2v_inst25 : viterbiv2
PORT MAP(flag => SYNTHESIZED_WIRE_21,
		 clk => SYNTHESIZED_WIRE_117,
		 input_manchester => SYNTHESIZED_WIRE_23,
		 viterbi_output => viterbi_output,
		 flag_viterbi => SYNTHESIZED_WIRE_52,
		 viterbi_equal => viterbi_equal);


b2v_inst26 : shift_register8x4
PORT MAP(Clk => SYNTHESIZED_WIRE_24,
		 Rst => SYNTHESIZED_WIRE_119,
		 Input => SYNTHESIZED_WIRE_26,
		 Flag => SYNTHESIZED_WIRE_130,
		 Buffout => SYNTHESIZED_WIRE_87);



b2v_inst28 : shift_register_4b
PORT MAP(CLK => SYNTHESIZED_WIRE_120,
		 D => SYNTHESIZED_WIRE_28,
		 Q => SYNTHESIZED_WIRE_37);


b2v_inst29 : encccencoder
PORT MAP(clock_100kHz => SYNTHESIZED_WIRE_123,
		 clock_igual_interleaver_50D4 => SYNTHESIZED_WIRE_122,
		 clock_50kHz => SYNTHESIZED_WIRE_124,
		 Flag => SYNTHESIZED_WIRE_32,
		 Input_CCencoder => SYNTHESIZED_WIRE_33,
		 so => so,
		 ccEncoderinput => ccEncoderinput,
		 reset_control => reset_control,
		 flag_shift_reg => SYNTHESIZED_WIRE_40,
		 InputManchester => InputManchester,
		 OutputManchester => SYNTHESIZED_WIRE_5,
		 count_data_control => count_data_control,
		 Output_data_control_2 => Output_data_control_2);


b2v_inst3 : divideclockby2
PORT MAP(Clk => SYNTHESIZED_WIRE_125,
		 Rst => SYNTHESIZED_WIRE_119,
		 ClkDiv2 => SYNTHESIZED_WIRE_123);


b2v_inst30 : shift_register_4b
PORT MAP(CLK => SYNTHESIZED_WIRE_120,
		 D => SYNTHESIZED_WIRE_37,
		 Q => SYNTHESIZED_WIRE_23);


b2v_inst31 : addflp_tdp
PORT MAP(CLK => SYNTHESIZED_WIRE_125,
		 D => SYNTHESIZED_WIRE_39,
		 Reset_60b => SYNTHESIZED_WIRE_40,
		 is_enviando_external => is_enviando_external,
		 is_enviando => is_enviando_value,
		 reset_reg => reset_reg,
		 last_reg => SYNTHESIZED_WIRE_118);


b2v_inst32 : shift_register_4b
PORT MAP(CLK => SYNTHESIZED_WIRE_117,
		 D => viterbi_output,
		 Q => SYNTHESIZED_WIRE_56);


b2v_inst33 : register1b_viterbi
PORT MAP(d => SYNTHESIZED_WIRE_42,
		 clr => SYNTHESIZED_WIRE_126,
		 clk => SYNTHESIZED_WIRE_115,
		 q => SYNTHESIZED_WIRE_117);


b2v_inst34 : synchro
PORT MAP(clock_counter => Clock50MHz,
		 input_synchro => SYNTHESIZED_WIRE_118,
		 clock_generated => SYNTHESIZED_WIRE_115);


b2v_inst35 : register1b_viterbi
PORT MAP(d => SYNTHESIZED_WIRE_46,
		 clr => SYNTHESIZED_WIRE_126,
		 clk => SYNTHESIZED_WIRE_117,
		 q => SYNTHESIZED_WIRE_49);


b2v_inst36 : register1b_viterbi
PORT MAP(d => SYNTHESIZED_WIRE_49,
		 clr => SYNTHESIZED_WIRE_126,
		 clk => SYNTHESIZED_WIRE_117,
		 q => SYNTHESIZED_WIRE_114);


b2v_inst37 : register1b_viterbi
PORT MAP(d => SYNTHESIZED_WIRE_52,
		 clr => SYNTHESIZED_WIRE_126,
		 clk => SYNTHESIZED_WIRE_114,
		 q => SYNTHESIZED_WIRE_1);


b2v_inst38 : shift_register_4b
PORT MAP(CLK => SYNTHESIZED_WIRE_117,
		 D => SYNTHESIZED_WIRE_56,
		 Q => SYNTHESIZED_WIRE_3);


b2v_inst39 : shift_register_4b
PORT MAP(CLK => SYNTHESIZED_WIRE_114,
		 D => SYNTHESIZED_WIRE_58,
		 Q => SYNTHESIZED_WIRE_128);


b2v_inst4 : divideclockby4
PORT MAP(Clk => SYNTHESIZED_WIRE_123,
		 Rst => SYNTHESIZED_WIRE_119,
		 ClkDiv4 => SYNTHESIZED_WIRE_124);


b2v_inst40 : rsintegration
PORT MAP(Clock => SYNTHESIZED_WIRE_114,
		 Reset => SYNTHESIZED_WIRE_127,
		 Input => SYNTHESIZED_WIRE_128,
		 pin_name1 => pin_name1,
		 erroro => erroro,
		 Decod => Decod_1);


b2v_inst41 : rsintegration
PORT MAP(Clock => SYNTHESIZED_WIRE_114,
		 Reset => SYNTHESIZED_WIRE_65,
		 Input => SYNTHESIZED_WIRE_128,
		 pin_name1 => pin_name2,
		 erroro => erroro2,
		 Decod => Decod_2);


b2v_inst42 : rsintegration
PORT MAP(Clock => SYNTHESIZED_WIRE_114,
		 Reset => SYNTHESIZED_WIRE_68,
		 Input => SYNTHESIZED_WIRE_128,
		 pin_name1 => SYNTHESIZED_WIRE_98,
		 erroro => erroro3,
		 Decod => SYNTHESIZED_WIRE_90);


b2v_inst43 : rsintegration
PORT MAP(Clock => SYNTHESIZED_WIRE_114,
		 Reset => SYNTHESIZED_WIRE_129,
		 Input => SYNTHESIZED_WIRE_128,
		 pin_name1 => pin_name4,
		 erroro => erroro4,
		 Decod => Decod_4);


b2v_inst44 : uart
GENERIC MAP(BAUD_RATE => 115200,
			CLK_FREQ => 50000000,
			PARITY_BIT => "none"
			)
PORT MAP(CLK => Clock50MHz,
		 RST => SYNTHESIZED_WIRE_119,
		 UART_RXD => UART_RXD,
		 DATA_SEND => SYNTHESIZED_WIRE_74,
		 DATA_IN => SYNTHESIZED_WIRE_75,
		 UART_TXD => UART_TXD,
		 BUSY => SYNTHESIZED_WIRE_82,
		 DATA_VLD => SYNTHESIZED_WIRE_24,
		 DATA_OUT => SYNTHESIZED_WIRE_26);


b2v_inst45 : reset_rsdecoder
PORT MAP(Clk => SYNTHESIZED_WIRE_114,
		 enable => SYNTHESIZED_WIRE_77,
		 rst_rsdecoder1 => SYNTHESIZED_WIRE_127,
		 rst_rsdecoder2 => SYNTHESIZED_WIRE_65,
		 rst_rsdecoder3 => SYNTHESIZED_WIRE_68,
		 rst_rsdecoder4 => SYNTHESIZED_WIRE_129);


SYNTHESIZED_WIRE_8 <= SYNTHESIZED_WIRE_119 OR SYNTHESIZED_WIRE_129;


b2v_inst47 : shift_register4x8
PORT MAP(Clk => SYNTHESIZED_WIRE_114,
		 Rst => SYNTHESIZED_WIRE_81,
		 Busy => SYNTHESIZED_WIRE_82,
		 Input => SYNTHESIZED_WIRE_83,
		 DataSend => SYNTHESIZED_WIRE_74,
		 Output => SYNTHESIZED_WIRE_75);


b2v_inst48 : piso_uart
PORT MAP(Clk_Rs => SYNTHESIZED_WIRE_84,
		 Rst => SYNTHESIZED_WIRE_119,
		 Start => SYNTHESIZED_WIRE_130,
		 Input => SYNTHESIZED_WIRE_87,
		 Flag => RsFlag,
		 Output => SYNTHESIZED_WIRE_94);


b2v_inst49 : sipo_uart
PORT MAP(Clk_Dec => SYNTHESIZED_WIRE_114,
		 Rst => SYNTHESIZED_WIRE_89,
		 Input => SYNTHESIZED_WIRE_90,
		 Start => SYNTHESIZED_WIRE_81,
		 log => SYNTHESIZED_WIRE_83);


b2v_inst5 : divideclockby4
PORT MAP(Clk => SYNTHESIZED_WIRE_124,
		 Rst => SYNTHESIZED_WIRE_119,
		 ClkDiv4 => SYNTHESIZED_WIRE_122);


b2v_inst50 : phr_psdu
PORT MAP(address => SYNTHESIZED_WIRE_113,
		 D => SYNTHESIZED_WIRE_94,
		 Q => SYNTHESIZED_WIRE_110);


b2v_inst52 : mux_2to1_sync
PORT MAP(SEL => SYNTHESIZED_WIRE_95,
		 A => SYNTHESIZED_WIRE_122,
		 B => SYNTHESIZED_WIRE_131,
		 X => SYNTHESIZED_WIRE_84);



b2v_inst54 : register1b_viterbi
PORT MAP(d => SYNTHESIZED_WIRE_98,
		 clr => SYNTHESIZED_WIRE_99,
		 clk => SYNTHESIZED_WIRE_114,
		 q => SYNTHESIZED_WIRE_89);



b2v_inst56 : register1b_viterbi
PORT MAP(d => SYNTHESIZED_WIRE_130,
		 clr => SYNTHESIZED_WIRE_131,
		 clk => SYNTHESIZED_WIRE_122,
		 q => SYNTHESIZED_WIRE_121);


b2v_inst6 : divideclockby4
PORT MAP(Clk => SYNTHESIZED_WIRE_120,
		 Rst => SYNTHESIZED_WIRE_116,
		 ClkDiv4 => SYNTHESIZED_WIRE_42);


b2v_inst7 : counter_phr_psdu
PORT MAP(Clk => SYNTHESIZED_WIRE_122,
		 Flag => SYNTHESIZED_WIRE_121,
		 Q => SYNTHESIZED_WIRE_113);


b2v_inst8 : rsencoder
PORT MAP(Clk => SYNTHESIZED_WIRE_122,
		 Flag => SYNTHESIZED_WIRE_121,
		 InputRS => SYNTHESIZED_WIRE_110,
		 rs_select => rs_select,
		 count_control_rs => count_control_rs,
		 OutputRS => SYNTHESIZED_WIRE_19);


SYNTHESIZED_WIRE_16 <= NOT(SYNTHESIZED_WIRE_111);


manchester_decoder_input <= I(0);

END bdf_type;