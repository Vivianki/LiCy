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
// CREATED		"Thu Oct 20 01:15:34 2016"

module EncIntegration2(
	Flag,
	clock_50MHz,
	rest_clock,
	control,
	clock_sistema,
	Flag_2,
	kilo100,
	kilo25,
	kilo25D4,
	readWrite,
	depth_counter_carry,
	carry_sig,
	enable_flush,
	flush_counter_carry,
	readWrite_2,
	carry_sig2,
	depth_counter_carry2,
	enable_flush2,
	start_flushing,
	output_manchester,
	C0,
	load_piso,
	so,
	input_manchester,
	ccEncoderinput,
	address_calc,
	address_sel,
	address_sel_payload,
	count,
	count_control1,
	count_control2,
	depth_count,
	depth_count_payload,
	flush_count,
	Initial_data,
	InputPayload,
	InputSR2,
	iterator_sig,
	iterator_sig_payload,
	Output,
	output_rs,
	q_b,
	reg1,
	reg2,
	reg3,
	reg4,
	saida_AND,
	Saida_counter_PHR_PSDU,
	Saida_PHR_PSDU,
	saidaMul
);


input wire	Flag;
input wire	clock_50MHz;
input wire	rest_clock;
output wire	control;
output wire	clock_sistema;
output wire	Flag_2;
output wire	kilo100;
output wire	kilo25;
output wire	kilo25D4;
output wire	readWrite;
output wire	depth_counter_carry;
output wire	carry_sig;
output wire	enable_flush;
output wire	flush_counter_carry;
output wire	readWrite_2;
output wire	carry_sig2;
output wire	depth_counter_carry2;
output wire	enable_flush2;
output wire	start_flushing;
output wire	output_manchester;
output wire	C0;
output wire	load_piso;
output wire	so;
output wire	input_manchester;
output wire	ccEncoderinput;
output wire	[12:0] address_calc;
output wire	[12:0] address_sel;
output wire	[12:0] address_sel_payload;
output wire	[3:0] count;
output wire	[0:3] count_control1;
output wire	[0:5] count_control2;
output wire	[6:0] depth_count;
output wire	[6:0] depth_count_payload;
output wire	[12:0] flush_count;
output wire	[3:0] Initial_data;
output wire	[3:0] InputPayload;
output wire	[3:0] InputSR2;
output wire	[3:0] iterator_sig;
output wire	[3:0] iterator_sig_payload;
output wire	[3:0] Output;
output wire	[3:0] output_rs;
output wire	[3:0] q_b;
output wire	[3:0] reg1;
output wire	[3:0] reg2;
output wire	[3:0] reg3;
output wire	[3:0] reg4;
output wire	[3:0] saida_AND;
output wire	[4:0] Saida_counter_PHR_PSDU;
output wire	[3:0] Saida_PHR_PSDU;
output wire	[3:0] saidaMul;

wire	[4:0] SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_6;
wire	[3:0] SYNTHESIZED_WIRE_20;
wire	[0:3] SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_14;
wire	[3:0] SYNTHESIZED_WIRE_15;

assign	Flag_2 = SYNTHESIZED_WIRE_14;
assign	kilo100 = SYNTHESIZED_WIRE_17;
assign	kilo25 = SYNTHESIZED_WIRE_18;
assign	kilo25D4 = SYNTHESIZED_WIRE_19;
assign	Initial_data = SYNTHESIZED_WIRE_20;
assign	Output = SYNTHESIZED_WIRE_15;
assign	output_rs[3:0] = SYNTHESIZED_WIRE_9[0:3];
assign	Saida_counter_PHR_PSDU = SYNTHESIZED_WIRE_0;
assign	Saida_PHR_PSDU = SYNTHESIZED_WIRE_20;
assign	SYNTHESIZED_WIRE_12 = 1;




PHR_PSDU	b2v_inst(
	.address(SYNTHESIZED_WIRE_0),
	.data(SYNTHESIZED_WIRE_20));

assign	SYNTHESIZED_WIRE_6 =  ~Flag;


transformador100D4	b2v_inst11(
	.clk_100khz(SYNTHESIZED_WIRE_17),
	.rst(rest_clock),
	.clk_100D4kHz(SYNTHESIZED_WIRE_18)
	);


transformador100D4	b2v_inst12(
	.clk_100khz(SYNTHESIZED_WIRE_18),
	.rst(rest_clock),
	.clk_100D4kHz(SYNTHESIZED_WIRE_19)
	);

assign	SYNTHESIZED_WIRE_4 =  ~Flag;


counter_PHR_PSDU	b2v_inst3(
	.clock(SYNTHESIZED_WIRE_19),
	.clear(SYNTHESIZED_WIRE_4),
	
	.count(SYNTHESIZED_WIRE_0));


RSencoder	b2v_inst4(
	.Clock_RSencoder(SYNTHESIZED_WIRE_19),
	.Initialize_RSencoder(SYNTHESIZED_WIRE_6),
	.input_RSencoder(SYNTHESIZED_WIRE_20),
	.control(control),
	.clock_sistema(clock_sistema),
	.count(count),
	.Output(SYNTHESIZED_WIRE_9),
	.reg1(reg1),
	.reg2(reg2),
	.reg3(reg3),
	.reg4(reg4),
	.saida_AND(saida_AND),
	.saidaMul(saidaMul));


interleaver_rev4	b2v_inst5(
	.Flag(Flag),
	.Clock(SYNTHESIZED_WIRE_19),
	.Input(SYNTHESIZED_WIRE_9),
	.readWrite(readWrite),
	.depth_counter_carry(depth_counter_carry),
	.carry_sig(carry_sig),
	.enable_flush(enable_flush),
	.flush_counter_carry(flush_counter_carry),
	.readWrite_2(readWrite_2),
	.carry_sig2(carry_sig2),
	.depth_counter_carry2(depth_counter_carry2),
	.enable_flush2(enable_flush2),
	.start_flushing(start_flushing),
	.Flag_2(SYNTHESIZED_WIRE_14),
	.address_calc(address_calc),
	.address_sel(address_sel),
	.address_sel_payload(address_sel_payload),
	.depth_count(depth_count),
	.depth_count_payload(depth_count_payload),
	.flush_count(flush_count),
	.InputPayload(InputPayload),
	.InputSR2(InputSR2),
	.iterator_sig(iterator_sig),
	.iterator_sig_payload(iterator_sig_payload),
	.Output(SYNTHESIZED_WIRE_15),
	.q_b(q_b));


scale_clock_100kHz	b2v_inst6(
	.clk_50Mhz(clock_50MHz),
	.rst(rest_clock),
	.clk_100kHz(SYNTHESIZED_WIRE_17));



encCCencoder	b2v_inst8(
	.clock_100kHz(SYNTHESIZED_WIRE_17),
	.clock_25kHz(SYNTHESIZED_WIRE_18),
	.clock_enable(SYNTHESIZED_WIRE_12),
	.clock_igual_interleaver_25D4(SYNTHESIZED_WIRE_19),
	.flag(SYNTHESIZED_WIRE_14),
	.Input_CCencoder(SYNTHESIZED_WIRE_15),
	.output_manchester(output_manchester),
	.C0(C0),
	.load_piso(load_piso),
	.so(so),
	.input_manchester(input_manchester),
	.ccEncoderinput(ccEncoderinput),
	.count_control1(count_control1),
	.count_control2(count_control2));


endmodule
