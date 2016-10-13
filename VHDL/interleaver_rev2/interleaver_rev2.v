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
// CREATED		"Sat Oct 01 13:42:53 2016"

module interleaver_rev2(
	Clock,
	Flag,
	wren_b,
	Addb,
	Db,
	Depth,
	InputInter,
	Len,
	carry_sig,
	enable_flush,
	flush_counter_carry,
	depth_counter_enable,
	depth_counter_carry,
	readWrite,
	signal_readWrite,
	address_calc,
	depth_count,
	flush_count,
	iterator_sig,
	OutputInter,
	saida_mux
);


input wire	Clock;
input wire	Flag;
input wire	wren_b;
input wire	[11:0] Addb;
input wire	[3:0] Db;
input wire	[6:0] Depth;
input wire	[3:0] InputInter;
input wire	[11:0] Len;
output wire	carry_sig;
output wire	enable_flush;
output wire	flush_counter_carry;
output wire	depth_counter_enable;
output wire	depth_counter_carry;
output wire	readWrite;
output wire	signal_readWrite;
output wire	[11:0] address_calc;
output wire	[6:0] depth_count;
output wire	[11:0] flush_count;
output wire	[3:0] iterator_sig;
output wire	[3:0] OutputInter;
output wire	[11:0] saida_mux;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	[6:0] SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_20;
wire	[11:0] SYNTHESIZED_WIRE_12;
wire	[11:0] SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_21;
wire	[11:0] SYNTHESIZED_WIRE_15;

assign	depth_counter_enable = Flag;
assign	carry_sig = SYNTHESIZED_WIRE_10;
assign	enable_flush = SYNTHESIZED_WIRE_0;
assign	flush_counter_carry = SYNTHESIZED_WIRE_20;
assign	depth_counter_carry = SYNTHESIZED_WIRE_19;
assign	readWrite = SYNTHESIZED_WIRE_21;
assign	signal_readWrite = SYNTHESIZED_WIRE_21;
assign	address_calc = SYNTHESIZED_WIRE_13;
assign	depth_count = SYNTHESIZED_WIRE_18;
assign	flush_count = SYNTHESIZED_WIRE_12;
assign	saida_mux = SYNTHESIZED_WIRE_15;
assign	SYNTHESIZED_WIRE_1 = 0;




register1b	b2v_inst(
	.d(SYNTHESIZED_WIRE_0),
	.clr(SYNTHESIZED_WIRE_1),
	.clk(Clock),
	.q(SYNTHESIZED_WIRE_2));


address_calculator	b2v_inst1(
	.clock(Clock),
	.enable(SYNTHESIZED_WIRE_2),
	.depth(Depth),
	.shift_depth(SYNTHESIZED_WIRE_18),
	.carry(SYNTHESIZED_WIRE_10),
	.count(SYNTHESIZED_WIRE_13),
	.iterator_out(iterator_sig));


flush_counter	b2v_inst10(
	.clock(Clock),
	.enable(SYNTHESIZED_WIRE_4),
	.len(Len),
	.carry(SYNTHESIZED_WIRE_20),
	.count(SYNTHESIZED_WIRE_12));

assign	SYNTHESIZED_WIRE_6 = SYNTHESIZED_WIRE_19 & Flag;

assign	SYNTHESIZED_WIRE_7 =  ~Flag;


register1b	b2v_inst16(
	.d(SYNTHESIZED_WIRE_6),
	.clr(SYNTHESIZED_WIRE_7),
	.clk(Clock),
	.q(SYNTHESIZED_WIRE_4));


readOrWrite	b2v_inst25(
	.depth_count_c(SYNTHESIZED_WIRE_19),
	.depth_count_number(SYNTHESIZED_WIRE_18),
	.readWrite(SYNTHESIZED_WIRE_21));


depth_counter	b2v_inst3(
	.clock(SYNTHESIZED_WIRE_10),
	.enable(Flag),
	.depth(Depth),
	.carry(SYNTHESIZED_WIRE_19),
	.count(SYNTHESIZED_WIRE_18));


mux2x1_12b	b2v_inst4(
	.SEL(SYNTHESIZED_WIRE_20),
	.A(SYNTHESIZED_WIRE_12),
	.B(SYNTHESIZED_WIRE_13),
	.X(SYNTHESIZED_WIRE_15));



interleaver_shared_memory	b2v_inst6(
	.wren_a(SYNTHESIZED_WIRE_21),
	.wren_b(wren_b),
	.clock(Clock),
	.address_a(SYNTHESIZED_WIRE_15),
	.address_b(Addb),
	.data_a(InputInter),
	.data_b(Db),
	.q_a(OutputInter)
	);

assign	SYNTHESIZED_WIRE_0 = SYNTHESIZED_WIRE_20 & Flag;


endmodule
