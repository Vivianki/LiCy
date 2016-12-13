// Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, the Altera Quartus Prime License Agreement,
// the Altera MegaCore Function License Agreement, or other 
// applicable license agreement, including, without limitation, 
// that your use is for the sole purpose of programming logic 
// devices manufactured by Altera and sold by Altera or its 
// authorized distributors.  Please refer to the applicable 
// agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 16.0.0 Build 211 04/27/2016 SJ Lite Edition"
// CREATED		"Tue Nov 08 15:47:07 2016"

module all_enc(
	Flag,
	Clock50MHz,
	is_enviando_external,
	reset_clock,
	Clk200kHz,
	Clk100kHz,
	Clk25kH,
	Clk25D4kHz,
	Flag_2,
	so,
	ccEncoderinput,
	reset_control,
	flag_shift_reg,
	InputManchester,
	OutputManchester,
	is_enviando_value,
	reset_reg,
	clock_generated,
	input,
	count1s,
	count0s,
	sinal_analizado,
	regs1,
	regs0,
	input_dos_sr,
	flp,
	out_400h2z,
	out_4001hz,
	rst_shift_regs,
	clock50MHz12,
	encoder_output,
	flag_viterbi,
	tdp_detected,
	viterbi_clock,
	flag_viterbi_input,
	antes_reg,
	antes_regs,
	in_shift_regs,
	Output_Interlv,
	Output_Interlv_Aux,
	Output_PHR_PSDU,
	pos_reg,
	pos_regs,
	RSOutput,
	viterbi_input,
	viterbi_output
);


input wire	Flag;
input wire	Clock50MHz;
input wire	is_enviando_external;
input wire	reset_clock;
output wire	Clk200kHz;
output wire	Clk100kHz;
output wire	Clk25kH;
output wire	Clk25D4kHz;
output wire	Flag_2;
output wire	so;
output wire	ccEncoderinput;
output wire	reset_control;
output wire	flag_shift_reg;
output wire	InputManchester;
output wire	OutputManchester;
output wire	is_enviando_value;
output wire	reset_reg;
output wire	clock_generated;
output wire	input;
output wire	count1s;
output wire	count0s;
output wire	sinal_analizado;
output wire	regs1;
output wire	regs0;
output wire	input_dos_sr;
output wire	flp;
output wire	out_400h2z;
output wire	out_4001hz;
output wire	rst_shift_regs;
output wire	clock50MHz12;
output wire	encoder_output;
output wire	flag_viterbi;
output wire	tdp_detected;
output wire	viterbi_clock;
output wire	flag_viterbi_input;
output wire	[9:0] antes_reg;
output wire	[9:0] antes_regs;
output wire	[99:0] in_shift_regs;
output wire	[3:0] Output_Interlv;
output wire	[3:0] Output_Interlv_Aux;
output wire	[3:0] Output_PHR_PSDU;
output wire	[9:0] pos_reg;
output wire	[9:0] pos_regs;
output wire	[3:0] RSOutput;
output wire	[3:0] viterbi_input;
inout wire	[3:0] viterbi_output;

wire	[169:0] H;
wire	[4:0] SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_4;
wire	[3:0] SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_33;
wire	[59:0] SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_15;
wire	[3:0] SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_23;
wire	[3:0] SYNTHESIZED_WIRE_26;
wire	[0:3] SYNTHESIZED_WIRE_28;

assign	Clk200kHz = SYNTHESIZED_WIRE_32;
assign	Clk100kHz = SYNTHESIZED_WIRE_29;
assign	Clk25kH = SYNTHESIZED_WIRE_31;
assign	Clk25D4kHz = SYNTHESIZED_WIRE_30;
assign	Flag_2 = SYNTHESIZED_WIRE_4;
assign	flag_shift_reg = SYNTHESIZED_WIRE_8;
assign	OutputManchester = SYNTHESIZED_WIRE_11;
assign	clock_generated = SYNTHESIZED_WIRE_33;
assign	tdp_detected = SYNTHESIZED_WIRE_13;
assign	viterbi_clock = SYNTHESIZED_WIRE_15;
assign	flag_viterbi_input = SYNTHESIZED_WIRE_34;
assign	Output_Interlv = SYNTHESIZED_WIRE_5;
assign	Output_PHR_PSDU = SYNTHESIZED_WIRE_26;
assign	RSOutput[3:0] = SYNTHESIZED_WIRE_28[0:3];
assign	viterbi_input = SYNTHESIZED_WIRE_16;
assign	SYNTHESIZED_WIRE_12 = 0;




PHR_PSDU	b2v_inst(
	.address(SYNTHESIZED_WIRE_0),
	.Q(SYNTHESIZED_WIRE_26));


encCCencoder	b2v_inst1(
	.clock_100kHz(SYNTHESIZED_WIRE_29),
	.clock_igual_interleaver_50D4(SYNTHESIZED_WIRE_30),
	.clock_50kHz(SYNTHESIZED_WIRE_31),
	.Flag(SYNTHESIZED_WIRE_4),
	.Input_CCencoder(SYNTHESIZED_WIRE_5),
	.so(so),
	.ccEncoderinput(ccEncoderinput),
	.reset_control(reset_control),
	.flag_shift_reg(SYNTHESIZED_WIRE_8),
	.InputManchester(InputManchester),
	.OutputManchester(SYNTHESIZED_WIRE_11));


AddFLP_TDP	b2v_inst10(
	.CLK(SYNTHESIZED_WIRE_32),
	.D(SYNTHESIZED_WIRE_7),
	.Reset_60b(SYNTHESIZED_WIRE_8),
	.is_enviando_external(is_enviando_external),
	.is_enviando_value(is_enviando_value),
	.reset_reg(reset_reg),
	.shift_regiters_values(H));


synchro	b2v_inst11(
	.clock_counter(Clock50MHz),
	.input_synchro(H[169]),
	.clock_generated(SYNTHESIZED_WIRE_33),
	.input(input),
	.count1s(count1s),
	.count0s(count0s),
	.sinal_analizado(sinal_analizado),
	.regs1(regs1),
	.regs0(regs0),
	.input_dos_sr(input_dos_sr),
	.flp(flp),
	.out_400h2z(out_400h2z),
	.out_4001hz(out_4001hz),
	.rst_shift_regs(rst_shift_regs),
	.clock50MHz(clock50MHz12),
	.antes_reg(antes_reg),
	.antes_regs(antes_regs),
	.in_shift_regs(in_shift_regs),
	.pos_reg(pos_reg),
	.pos_regs(pos_regs));


shift_register_60b	b2v_inst12(
	.CLK(SYNTHESIZED_WIRE_33),
	.D(H[169]),
	.Q(SYNTHESIZED_WIRE_10));


tdp_detector	b2v_inst13(
	.entrada(SYNTHESIZED_WIRE_10),
	.tdp_detect(SYNTHESIZED_WIRE_13));

assign	SYNTHESIZED_WIRE_7 =  ~SYNTHESIZED_WIRE_11;


flag_reg	b2v_inst16(
	.clr(SYNTHESIZED_WIRE_12),
	.clk(SYNTHESIZED_WIRE_13),
	.q(SYNTHESIZED_WIRE_34));


viterbiv2	b2v_inst18(
	.flag(SYNTHESIZED_WIRE_34),
	.clk(SYNTHESIZED_WIRE_15),
	.input_manchester(SYNTHESIZED_WIRE_16),
	.viterbi_output(viterbi_output),
	.flag_viterbi(flag_viterbi)
	);

assign	SYNTHESIZED_WIRE_23 =  ~SYNTHESIZED_WIRE_34;


DivideClockBy125	b2v_inst2(
	.Clk(Clock50MHz),
	.Rst(reset_clock),
	.ClkDiv125(SYNTHESIZED_WIRE_32));


sipo	b2v_inst20(
	.clk(SYNTHESIZED_WIRE_33),
	.si(H[169]),
	.po(SYNTHESIZED_WIRE_16)
	);



DivideClockBy2	b2v_inst3(
	.Clk(SYNTHESIZED_WIRE_32),
	.Rst(reset_clock),
	.ClkDiv2(SYNTHESIZED_WIRE_29));


DivideClockBy4	b2v_inst4(
	.Clk(SYNTHESIZED_WIRE_29),
	.Rst(reset_clock),
	.ClkDiv4(SYNTHESIZED_WIRE_31));


DivideClockBy4	b2v_inst5(
	.Clk(SYNTHESIZED_WIRE_31),
	.Rst(reset_clock),
	.ClkDiv4(SYNTHESIZED_WIRE_30));


DivideClockBy4	b2v_inst6(
	.Clk(SYNTHESIZED_WIRE_33),
	.Rst(SYNTHESIZED_WIRE_23),
	.ClkDiv4(SYNTHESIZED_WIRE_15));


counter_PHR_PSDU	b2v_inst7(
	.Clk(SYNTHESIZED_WIRE_30),
	.Flag(Flag),
	.Q(SYNTHESIZED_WIRE_0));


RSencoder	b2v_inst8(
	.Clk(SYNTHESIZED_WIRE_30),
	.Flag(Flag),
	.InputRS(SYNTHESIZED_WIRE_26),
	.OutputRS(SYNTHESIZED_WIRE_28));


Interleaver	b2v_inst9(
	.Flag(Flag),
	.Clock(SYNTHESIZED_WIRE_30),
	.InputIntrlv(SYNTHESIZED_WIRE_28),
	.Flag_2(SYNTHESIZED_WIRE_4),
	.Output_Interlv(SYNTHESIZED_WIRE_5),
	.Output_Interlv_Aux(Output_Interlv_Aux));

assign	encoder_output = H[169];

endmodule
