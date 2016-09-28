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
// CREATED		"Wed Sep 28 00:31:24 2016"

module Chien Search value(
	MuxSel,
	Load,
	Clock,
	Clear,
	Lamb0,
	Lamb1,
	Lamb2,
	Lamb3,
	Result
);


input wire	MuxSel;
input wire	Load;
input wire	Clock;
input wire	Clear;
input wire	[3:0] Lamb0;
input wire	[3:0] Lamb1;
input wire	[3:0] Lamb2;
input wire	[3:0] Lamb3;
output wire	[3:0] Result;

wire	[3:0] SYNTHESIZED_WIRE_0;
wire	[3:0] SYNTHESIZED_WIRE_18;
wire	[3:0] SYNTHESIZED_WIRE_2;
wire	[3:0] SYNTHESIZED_WIRE_19;
wire	[3:0] SYNTHESIZED_WIRE_20;
wire	[3:0] SYNTHESIZED_WIRE_5;
wire	[3:0] SYNTHESIZED_WIRE_6;
wire	[3:0] SYNTHESIZED_WIRE_7;
wire	[3:0] SYNTHESIZED_WIRE_9;
wire	[3:0] SYNTHESIZED_WIRE_10;
wire	[3:0] SYNTHESIZED_WIRE_11;
wire	[3:0] SYNTHESIZED_WIRE_12;
wire	[3:0] SYNTHESIZED_WIRE_13;
wire	[3:0] SYNTHESIZED_WIRE_15;
wire	[3:0] SYNTHESIZED_WIRE_17;





static_4	b2v_inst(
	.o(SYNTHESIZED_WIRE_2));


Mux2x1	b2v_inst1(
	.Sel(MuxSel),
	.I0(Lamb2),
	.I1(SYNTHESIZED_WIRE_0),
	.O(SYNTHESIZED_WIRE_11));
	defparam	b2v_inst1.NB = 4;


gf_mult	b2v_inst11(
	.x(SYNTHESIZED_WIRE_18),
	.y(SYNTHESIZED_WIRE_2),
	.o(SYNTHESIZED_WIRE_0));


static_2	b2v_inst12(
	.o(SYNTHESIZED_WIRE_15));


gf_sum	b2v_inst13(
	.a(SYNTHESIZED_WIRE_19),
	.b(SYNTHESIZED_WIRE_20),
	.c(SYNTHESIZED_WIRE_5));


gf_sum	b2v_inst14(
	.a(SYNTHESIZED_WIRE_5),
	.b(SYNTHESIZED_WIRE_6),
	.c(Result));


gf_sum	b2v_inst15(
	.a(SYNTHESIZED_WIRE_7),
	.b(SYNTHESIZED_WIRE_18),
	.c(SYNTHESIZED_WIRE_6));


static_8	b2v_inst16(
	.o(SYNTHESIZED_WIRE_17));


Mux2x1	b2v_inst2(
	.Sel(MuxSel),
	.I0(Lamb1),
	.I1(SYNTHESIZED_WIRE_9),
	.O(SYNTHESIZED_WIRE_12));
	defparam	b2v_inst2.NB = 4;


Mux2x1	b2v_inst3(
	.Sel(MuxSel),
	.I0(Lamb3),
	.I1(SYNTHESIZED_WIRE_10),
	.O(SYNTHESIZED_WIRE_13));
	defparam	b2v_inst3.NB = 4;


register4b	b2v_inst4(
	.ld(Load),
	.clr(Clear),
	.clk(Clock),
	.d(SYNTHESIZED_WIRE_11),
	.q(SYNTHESIZED_WIRE_18));


register4b	b2v_inst5(
	.ld(Load),
	.clr(Clear),
	.clk(Clock),
	.d(Lamb0),
	.q(SYNTHESIZED_WIRE_7));


register4b	b2v_inst6(
	.ld(Load),
	.clr(Clear),
	.clk(Clock),
	.d(SYNTHESIZED_WIRE_12),
	.q(SYNTHESIZED_WIRE_19));


register4b	b2v_inst7(
	.ld(Load),
	.clr(Clear),
	.clk(Clock),
	.d(SYNTHESIZED_WIRE_13),
	.q(SYNTHESIZED_WIRE_20));


gf_mult	b2v_inst8(
	.x(SYNTHESIZED_WIRE_19),
	.y(SYNTHESIZED_WIRE_15),
	.o(SYNTHESIZED_WIRE_9));


gf_mult	b2v_inst9(
	.x(SYNTHESIZED_WIRE_20),
	.y(SYNTHESIZED_WIRE_17),
	.o(SYNTHESIZED_WIRE_10));


endmodule
