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
// CREATED		"Sat Sep 03 18:54:08 2016"

module synchro(
	clock_counter,
	clock_mem,
	clear_mem,
	clear_registers_count,
	enable_clock_generator,
	carry,
	input,
	sinal,
	reset_shift_registers,
	output,
	clock_generated,
	flp,
	count0,
	count0_reg,
	count1,
	count1_reg,
	shift_registers
);


input wire	clock_counter;
input wire	clock_mem;
input wire	clear_mem;
input wire	clear_registers_count;
input wire	enable_clock_generator;
output wire	carry;
output wire	input;
output wire	sinal;
output wire	reset_shift_registers;
output wire	output;
output wire	clock_generated;
output wire	flp;
output wire	[5:0] count0;
output wire	[5:0] count0_reg;
output wire	[5:0] count1;
output wire	[5:0] count1_reg;
output wire	[63:0] shift_registers;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_17;
wire	[63:0] SYNTHESIZED_WIRE_4;
wire	[5:0] SYNTHESIZED_WIRE_6;
wire	[5:0] SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_9;
wire	[7:0] SYNTHESIZED_WIRE_10;
wire	[5:0] SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	[5:0] SYNTHESIZED_WIRE_15;

assign	input = SYNTHESIZED_WIRE_17;
assign	sinal = SYNTHESIZED_WIRE_1;
assign	output = SYNTHESIZED_WIRE_2;
assign	flp = SYNTHESIZED_WIRE_9;
assign	count0 = SYNTHESIZED_WIRE_13;
assign	count0_reg = SYNTHESIZED_WIRE_6;
assign	count1 = SYNTHESIZED_WIRE_15;
assign	count1_reg = SYNTHESIZED_WIRE_7;
assign	shift_registers = SYNTHESIZED_WIRE_4;




CounterWEnable	b2v_inst(
	.enable(SYNTHESIZED_WIRE_0),
	.Clock(clock_counter),
	.Output(SYNTHESIZED_WIRE_13));


shift_register_top	b2v_inst1(
	.CLK(SYNTHESIZED_WIRE_1),
	.D(SYNTHESIZED_WIRE_2),
	.shift_regiters_values(SYNTHESIZED_WIRE_4));

assign	SYNTHESIZED_WIRE_14 =  ~SYNTHESIZED_WIRE_17;


flp_detector	b2v_inst2(
	.entrada(SYNTHESIZED_WIRE_4),
	.flp_detect(SYNTHESIZED_WIRE_9));


counter	b2v_inst3(
	.clock(clock_mem),
	.clear(clear_mem),
	.carry(carry),
	.count(SYNTHESIZED_WIRE_10));
	defparam	b2v_inst3.n = 8;


count_analyzer	b2v_inst30(
	.clk(clock_counter),
	.reset(clear_registers_count),
	.input(SYNTHESIZED_WIRE_17),
	.count0(SYNTHESIZED_WIRE_6),
	.count1(SYNTHESIZED_WIRE_7),
	.sinal(SYNTHESIZED_WIRE_1),
	.reset_shift_registers(reset_shift_registers),
	.output(SYNTHESIZED_WIRE_2));


clock_generator	b2v_inst31(
	.clk(clock_counter),
	.reset(enable_clock_generator),
	.input(SYNTHESIZED_WIRE_17),
	.flp(SYNTHESIZED_WIRE_9),
	.output(clock_generated));


ROM	b2v_inst5(
	.address(SYNTHESIZED_WIRE_10),
	.data(SYNTHESIZED_WIRE_17));

assign	SYNTHESIZED_WIRE_0 =  ~SYNTHESIZED_WIRE_17;


register1	b2v_inst7(
	.ld(SYNTHESIZED_WIRE_17),
	.clr(clear_registers_count),
	.clk(clock_counter),
	.d(SYNTHESIZED_WIRE_13),
	.q(SYNTHESIZED_WIRE_6));


register1	b2v_inst8(
	.ld(SYNTHESIZED_WIRE_14),
	.clr(clear_registers_count),
	.clk(clock_counter),
	.d(SYNTHESIZED_WIRE_15),
	.q(SYNTHESIZED_WIRE_7));


CounterWEnable	b2v_inst9(
	.enable(SYNTHESIZED_WIRE_17),
	.Clock(clock_counter),
	.Output(SYNTHESIZED_WIRE_15));


endmodule
