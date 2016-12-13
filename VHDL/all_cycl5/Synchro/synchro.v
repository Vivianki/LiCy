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
// CREATED		"Fri Nov 11 18:04:48 2016"

module synchro(
	clock_counter,
	input_synchro,
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
	clock50MHz,
	antes_reg,
	antes_regs,
	in_shift_regs,
	pos_reg,
	pos_regs
);


input wire	clock_counter;
input wire	input_synchro;
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
output wire	clock50MHz;
output wire	[9:0] antes_reg;
output wire	[9:0] antes_regs;
output wire	[199:0] in_shift_regs;
output wire	[9:0] pos_reg;
output wire	[9:0] pos_regs;

wire	[9:0] A;
wire	[9:0] B;
wire	[199:0] C;
wire	[9:0] D;
wire	[9:0] E;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_20;

assign	input = input_synchro;
assign	clock50MHz = clock_counter;
assign	sinal_analizado = SYNTHESIZED_WIRE_12;
assign	input_dos_sr = SYNTHESIZED_WIRE_13;
assign	flp = SYNTHESIZED_WIRE_10;
assign	out_400h2z = SYNTHESIZED_WIRE_2;
assign	out_4001hz = SYNTHESIZED_WIRE_1;
assign	rst_shift_regs = SYNTHESIZED_WIRE_14;
assign	SYNTHESIZED_WIRE_20 = 0;




mux_2to1_sync	b2v_inst(
	.SEL(SYNTHESIZED_WIRE_0),
	.A(SYNTHESIZED_WIRE_1),
	.B(SYNTHESIZED_WIRE_2),
	.X(SYNTHESIZED_WIRE_12));

assign	SYNTHESIZED_WIRE_16 =  ~input_synchro;

assign	SYNTHESIZED_WIRE_14 = SYNTHESIZED_WIRE_3 | SYNTHESIZED_WIRE_4;

assign	SYNTHESIZED_WIRE_5 =  ~input_synchro;

assign	SYNTHESIZED_WIRE_6 = ~(D[7] & input_synchro);

assign	SYNTHESIZED_WIRE_7 = E[7] & SYNTHESIZED_WIRE_5;

assign	SYNTHESIZED_WIRE_13 = SYNTHESIZED_WIRE_6 | SYNTHESIZED_WIRE_7;


shift_register_3b	b2v_inst20(
	.CLK(clock_counter),
	.D(SYNTHESIZED_WIRE_19),
	.Q(SYNTHESIZED_WIRE_4));


scale_clock_400kHZ	b2v_inst21(
	.clk_50Mhz(clock_counter),
	.rst(input_synchro),
	.clk_400kHz(SYNTHESIZED_WIRE_1));


scale_clock_400kHZ	b2v_inst22(
	.clk_50Mhz(clock_counter),
	.rst(SYNTHESIZED_WIRE_9),
	.clk_400kHz(SYNTHESIZED_WIRE_2));


flp_detector	b2v_inst23(
	.entrada(C),
	.flp_detect(SYNTHESIZED_WIRE_10));

assign	SYNTHESIZED_WIRE_9 =  ~input_synchro;

assign	SYNTHESIZED_WIRE_3 = D[8] | E[8];

assign	SYNTHESIZED_WIRE_0 =  ~input_synchro;

assign	SYNTHESIZED_WIRE_19 = input_synchro & SYNTHESIZED_WIRE_10;


scale_clock	b2v_inst35(
	.clk_50Mhz(clock_counter),
	.rst(SYNTHESIZED_WIRE_19),
	.clk_200kHz(clock_generated));


shiftreg200b	b2v_inst4(
	.CLK(SYNTHESIZED_WIRE_12),
	.D(SYNTHESIZED_WIRE_13),
	.Reset_200b(SYNTHESIZED_WIRE_14),
	.shift_regiters_values(C));


CounterWEnable	b2v_inst41(
	.enable(input_synchro),
	.Clock(clock_counter),
	.Output(B));


CounterWEnable	b2v_inst42(
	.enable(SYNTHESIZED_WIRE_15),
	.Clock(clock_counter),
	.Output(A));


register1	b2v_inst43(
	.ld(SYNTHESIZED_WIRE_16),
	.clr(SYNTHESIZED_WIRE_20),
	.clk(clock_counter),
	.d(B),
	.q(D));


register1	b2v_inst44(
	.ld(input_synchro),
	.clr(SYNTHESIZED_WIRE_20),
	.clk(clock_counter),
	.d(A),
	.q(E));

assign	SYNTHESIZED_WIRE_15 =  ~input_synchro;


assign	count1s = A[0];
assign	count0s = B[0];
assign	regs1 = E[7];
assign	regs0 = D[7];
assign	antes_reg = A;
assign	antes_regs = B;
assign	in_shift_regs = C;
assign	pos_reg = E;
assign	pos_regs = D;

endmodule
