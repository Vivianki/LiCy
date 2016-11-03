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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.0.0 Build 211 04/27/2016 SJ Lite Edition"

-- DATE "11/02/2016 22:22:15"

-- 
-- Device: Altera EP4CE30F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	RSIntegration IS
    PORT (
	Clock : IN std_logic;
	Reset : IN std_logic;
	Input : IN std_logic_vector(3 DOWNTO 0);
	Registra : OUT std_logic;
	di : OUT std_logic;
	loadS : OUT std_logic;
	loadB : OUT std_logic;
	loadC : OUT std_logic;
	clearS : OUT std_logic;
	clearB : OUT std_logic;
	clearC : OUT std_logic;
	MuxSel : OUT std_logic;
	Nerror : OUT std_logic;
	pin_name1 : OUT std_logic;
	Impar : OUT std_logic;
	Count_4 : OUT std_logic;
	Count_8 : OUT std_logic;
	startSReg : OUT std_logic;
	startBerle : OUT std_logic;
	error_enable : OUT std_logic;
	error_reset : OUT std_logic;
	error_syndrome : OUT std_logic;
	Error : OUT std_logic;
	error_corrected : OUT std_logic;
	erroro : OUT std_logic;
	B_0 : OUT std_logic_vector(3 DOWNTO 0);
	B_1 : OUT std_logic_vector(3 DOWNTO 0);
	B_2 : OUT std_logic_vector(3 DOWNTO 0);
	B_3 : OUT std_logic_vector(3 DOWNTO 0);
	B_mux : OUT std_logic_vector(3 DOWNTO 0);
	count : OUT std_logic_vector(3 DOWNTO 0);
	debug : OUT std_logic_vector(27 DOWNTO 0);
	deco0 : OUT std_logic_vector(3 DOWNTO 0);
	deco1 : OUT std_logic_vector(3 DOWNTO 0);
	deco2 : OUT std_logic_vector(3 DOWNTO 0);
	deco3 : OUT std_logic_vector(3 DOWNTO 0);
	deco4 : OUT std_logic_vector(3 DOWNTO 0);
	deco5 : OUT std_logic_vector(3 DOWNTO 0);
	deco6 : OUT std_logic_vector(3 DOWNTO 0);
	Decod : OUT std_logic_vector(3 DOWNTO 0);
	DS_reg : OUT std_logic_vector(3 DOWNTO 0);
	Lambda1 : OUT std_logic_vector(3 DOWNTO 0);
	Lambda2 : OUT std_logic_vector(3 DOWNTO 0);
	Lambda3 : OUT std_logic_vector(3 DOWNTO 0);
	Lambda4 : OUT std_logic_vector(3 DOWNTO 0);
	Mensagem : OUT std_logic_vector(3 DOWNTO 0);
	Number_errors : OUT std_logic_vector(3 DOWNTO 0);
	Omega0 : OUT std_logic_vector(3 DOWNTO 0);
	Omega1 : OUT std_logic_vector(3 DOWNTO 0);
	Omega2 : OUT std_logic_vector(3 DOWNTO 0);
	Omega3 : OUT std_logic_vector(3 DOWNTO 0);
	Omega4 : OUT std_logic_vector(3 DOWNTO 0);
	S0 : OUT std_logic_vector(3 DOWNTO 0);
	S1 : OUT std_logic_vector(3 DOWNTO 0);
	S2 : OUT std_logic_vector(3 DOWNTO 0);
	S3 : OUT std_logic_vector(3 DOWNTO 0);
	S4 : OUT std_logic_vector(3 DOWNTO 0);
	Syn0 : OUT std_logic_vector(3 DOWNTO 0);
	Syn1 : OUT std_logic_vector(3 DOWNTO 0);
	Syn2 : OUT std_logic_vector(3 DOWNTO 0);
	Syn3 : OUT std_logic_vector(3 DOWNTO 0);
	Syn4 : OUT std_logic_vector(3 DOWNTO 0);
	Syn5 : OUT std_logic_vector(3 DOWNTO 0);
	Syn6 : OUT std_logic_vector(3 DOWNTO 0);
	Syn7 : OUT std_logic_vector(3 DOWNTO 0);
	SyndromeOut : OUT std_logic_vector(3 DOWNTO 0);
	Test_state : OUT std_logic_vector(4 DOWNTO 0)
	);
END RSIntegration;

-- Design Ports Information
-- Registra	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- loadS	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- loadB	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- loadC	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clearS	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clearB	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clearC	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxSel	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Nerror	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name1	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Impar	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count_4	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count_8	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- startSReg	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- startBerle	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- error_enable	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- error_reset	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- error_syndrome	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Error	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- error_corrected	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- erroro	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_0[0]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_0[1]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_0[2]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_0[3]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_1[0]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_1[1]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_1[2]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_1[3]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_2[0]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_2[1]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_2[2]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_2[3]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_3[0]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_3[1]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_3[2]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_3[3]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_mux[0]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_mux[1]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_mux[2]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_mux[3]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[0]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[1]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[2]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[3]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[0]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[1]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[2]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[3]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[4]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[5]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[6]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[7]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[8]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[9]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[10]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[11]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[12]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[13]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[14]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[15]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[16]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[17]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[18]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[19]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[20]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[21]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[22]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[23]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[24]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[25]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[26]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[27]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- deco0[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- deco0[1]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- deco0[2]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- deco0[3]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- deco1[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- deco1[1]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- deco1[2]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- deco1[3]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- deco2[0]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- deco2[1]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- deco2[2]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- deco2[3]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- deco3[0]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- deco3[1]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- deco3[2]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- deco3[3]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- deco4[0]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- deco4[1]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- deco4[2]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- deco4[3]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- deco5[0]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- deco5[1]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- deco5[2]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- deco5[3]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- deco6[0]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- deco6[1]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- deco6[2]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- deco6[3]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Decod[0]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Decod[1]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Decod[2]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Decod[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS_reg[0]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS_reg[1]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS_reg[2]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS_reg[3]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda1[0]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda1[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda1[2]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda1[3]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda2[0]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda2[1]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda2[2]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda2[3]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda3[0]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda3[1]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda3[2]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda3[3]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda4[0]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda4[1]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda4[2]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda4[3]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mensagem[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mensagem[1]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mensagem[2]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mensagem[3]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Number_errors[0]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Number_errors[1]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Number_errors[2]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Number_errors[3]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega0[0]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega0[1]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega0[2]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega0[3]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega1[0]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega1[1]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega1[2]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega1[3]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega2[0]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega2[1]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega2[2]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega2[3]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega3[0]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega3[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega3[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega3[3]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega4[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega4[1]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega4[2]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega4[3]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0[1]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0[2]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0[3]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[3]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2[0]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2[1]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2[3]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3[0]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3[1]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3[2]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3[3]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4[0]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4[1]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4[2]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4[3]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Syn0[0]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Syn0[1]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Syn0[2]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Syn0[3]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Syn1[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Syn1[1]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Syn1[2]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Syn1[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Syn2[0]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Syn2[1]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Syn2[2]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Syn2[3]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Syn3[0]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Syn3[1]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Syn3[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Syn3[3]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Syn4[0]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Syn4[1]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Syn4[2]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Syn4[3]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Syn5[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Syn5[1]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Syn5[2]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Syn5[3]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Syn6[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Syn6[1]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Syn6[2]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Syn6[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Syn7[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Syn7[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Syn7[2]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Syn7[3]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SyndromeOut[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SyndromeOut[1]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SyndromeOut[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SyndromeOut[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Test_state[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Test_state[1]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Test_state[2]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Test_state[3]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Test_state[4]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[0]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[1]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[2]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[3]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RSIntegration IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Input : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Registra : std_logic;
SIGNAL ww_di : std_logic;
SIGNAL ww_loadS : std_logic;
SIGNAL ww_loadB : std_logic;
SIGNAL ww_loadC : std_logic;
SIGNAL ww_clearS : std_logic;
SIGNAL ww_clearB : std_logic;
SIGNAL ww_clearC : std_logic;
SIGNAL ww_MuxSel : std_logic;
SIGNAL ww_Nerror : std_logic;
SIGNAL ww_pin_name1 : std_logic;
SIGNAL ww_Impar : std_logic;
SIGNAL ww_Count_4 : std_logic;
SIGNAL ww_Count_8 : std_logic;
SIGNAL ww_startSReg : std_logic;
SIGNAL ww_startBerle : std_logic;
SIGNAL ww_error_enable : std_logic;
SIGNAL ww_error_reset : std_logic;
SIGNAL ww_error_syndrome : std_logic;
SIGNAL ww_Error : std_logic;
SIGNAL ww_error_corrected : std_logic;
SIGNAL ww_erroro : std_logic;
SIGNAL ww_B_0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B_1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B_2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B_3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B_mux : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_count : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_debug : std_logic_vector(27 DOWNTO 0);
SIGNAL ww_deco0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_deco1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_deco2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_deco3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_deco4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_deco5 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_deco6 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Decod : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DS_reg : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Lambda1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Lambda2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Lambda3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Lambda4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Mensagem : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Number_errors : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Omega0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Omega1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Omega2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Omega3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Omega4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Syn0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Syn1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Syn2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Syn3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Syn4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Syn5 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Syn6 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Syn7 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SyndromeOut : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Test_state : std_logic_vector(4 DOWNTO 0);
SIGNAL \b2v_inst19|messages~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst|estadoAtual.store~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Registra~output_o\ : std_logic;
SIGNAL \di~output_o\ : std_logic;
SIGNAL \loadS~output_o\ : std_logic;
SIGNAL \loadB~output_o\ : std_logic;
SIGNAL \loadC~output_o\ : std_logic;
SIGNAL \clearS~output_o\ : std_logic;
SIGNAL \clearB~output_o\ : std_logic;
SIGNAL \clearC~output_o\ : std_logic;
SIGNAL \MuxSel~output_o\ : std_logic;
SIGNAL \Nerror~output_o\ : std_logic;
SIGNAL \pin_name1~output_o\ : std_logic;
SIGNAL \Impar~output_o\ : std_logic;
SIGNAL \Count_4~output_o\ : std_logic;
SIGNAL \Count_8~output_o\ : std_logic;
SIGNAL \startSReg~output_o\ : std_logic;
SIGNAL \startBerle~output_o\ : std_logic;
SIGNAL \error_enable~output_o\ : std_logic;
SIGNAL \error_reset~output_o\ : std_logic;
SIGNAL \error_syndrome~output_o\ : std_logic;
SIGNAL \Error~output_o\ : std_logic;
SIGNAL \error_corrected~output_o\ : std_logic;
SIGNAL \erroro~output_o\ : std_logic;
SIGNAL \B_0[0]~output_o\ : std_logic;
SIGNAL \B_0[1]~output_o\ : std_logic;
SIGNAL \B_0[2]~output_o\ : std_logic;
SIGNAL \B_0[3]~output_o\ : std_logic;
SIGNAL \B_1[0]~output_o\ : std_logic;
SIGNAL \B_1[1]~output_o\ : std_logic;
SIGNAL \B_1[2]~output_o\ : std_logic;
SIGNAL \B_1[3]~output_o\ : std_logic;
SIGNAL \B_2[0]~output_o\ : std_logic;
SIGNAL \B_2[1]~output_o\ : std_logic;
SIGNAL \B_2[2]~output_o\ : std_logic;
SIGNAL \B_2[3]~output_o\ : std_logic;
SIGNAL \B_3[0]~output_o\ : std_logic;
SIGNAL \B_3[1]~output_o\ : std_logic;
SIGNAL \B_3[2]~output_o\ : std_logic;
SIGNAL \B_3[3]~output_o\ : std_logic;
SIGNAL \B_mux[0]~output_o\ : std_logic;
SIGNAL \B_mux[1]~output_o\ : std_logic;
SIGNAL \B_mux[2]~output_o\ : std_logic;
SIGNAL \B_mux[3]~output_o\ : std_logic;
SIGNAL \count[0]~output_o\ : std_logic;
SIGNAL \count[1]~output_o\ : std_logic;
SIGNAL \count[2]~output_o\ : std_logic;
SIGNAL \count[3]~output_o\ : std_logic;
SIGNAL \debug[0]~output_o\ : std_logic;
SIGNAL \debug[1]~output_o\ : std_logic;
SIGNAL \debug[2]~output_o\ : std_logic;
SIGNAL \debug[3]~output_o\ : std_logic;
SIGNAL \debug[4]~output_o\ : std_logic;
SIGNAL \debug[5]~output_o\ : std_logic;
SIGNAL \debug[6]~output_o\ : std_logic;
SIGNAL \debug[7]~output_o\ : std_logic;
SIGNAL \debug[8]~output_o\ : std_logic;
SIGNAL \debug[9]~output_o\ : std_logic;
SIGNAL \debug[10]~output_o\ : std_logic;
SIGNAL \debug[11]~output_o\ : std_logic;
SIGNAL \debug[12]~output_o\ : std_logic;
SIGNAL \debug[13]~output_o\ : std_logic;
SIGNAL \debug[14]~output_o\ : std_logic;
SIGNAL \debug[15]~output_o\ : std_logic;
SIGNAL \debug[16]~output_o\ : std_logic;
SIGNAL \debug[17]~output_o\ : std_logic;
SIGNAL \debug[18]~output_o\ : std_logic;
SIGNAL \debug[19]~output_o\ : std_logic;
SIGNAL \debug[20]~output_o\ : std_logic;
SIGNAL \debug[21]~output_o\ : std_logic;
SIGNAL \debug[22]~output_o\ : std_logic;
SIGNAL \debug[23]~output_o\ : std_logic;
SIGNAL \debug[24]~output_o\ : std_logic;
SIGNAL \debug[25]~output_o\ : std_logic;
SIGNAL \debug[26]~output_o\ : std_logic;
SIGNAL \debug[27]~output_o\ : std_logic;
SIGNAL \deco0[0]~output_o\ : std_logic;
SIGNAL \deco0[1]~output_o\ : std_logic;
SIGNAL \deco0[2]~output_o\ : std_logic;
SIGNAL \deco0[3]~output_o\ : std_logic;
SIGNAL \deco1[0]~output_o\ : std_logic;
SIGNAL \deco1[1]~output_o\ : std_logic;
SIGNAL \deco1[2]~output_o\ : std_logic;
SIGNAL \deco1[3]~output_o\ : std_logic;
SIGNAL \deco2[0]~output_o\ : std_logic;
SIGNAL \deco2[1]~output_o\ : std_logic;
SIGNAL \deco2[2]~output_o\ : std_logic;
SIGNAL \deco2[3]~output_o\ : std_logic;
SIGNAL \deco3[0]~output_o\ : std_logic;
SIGNAL \deco3[1]~output_o\ : std_logic;
SIGNAL \deco3[2]~output_o\ : std_logic;
SIGNAL \deco3[3]~output_o\ : std_logic;
SIGNAL \deco4[0]~output_o\ : std_logic;
SIGNAL \deco4[1]~output_o\ : std_logic;
SIGNAL \deco4[2]~output_o\ : std_logic;
SIGNAL \deco4[3]~output_o\ : std_logic;
SIGNAL \deco5[0]~output_o\ : std_logic;
SIGNAL \deco5[1]~output_o\ : std_logic;
SIGNAL \deco5[2]~output_o\ : std_logic;
SIGNAL \deco5[3]~output_o\ : std_logic;
SIGNAL \deco6[0]~output_o\ : std_logic;
SIGNAL \deco6[1]~output_o\ : std_logic;
SIGNAL \deco6[2]~output_o\ : std_logic;
SIGNAL \deco6[3]~output_o\ : std_logic;
SIGNAL \Decod[0]~output_o\ : std_logic;
SIGNAL \Decod[1]~output_o\ : std_logic;
SIGNAL \Decod[2]~output_o\ : std_logic;
SIGNAL \Decod[3]~output_o\ : std_logic;
SIGNAL \DS_reg[0]~output_o\ : std_logic;
SIGNAL \DS_reg[1]~output_o\ : std_logic;
SIGNAL \DS_reg[2]~output_o\ : std_logic;
SIGNAL \DS_reg[3]~output_o\ : std_logic;
SIGNAL \Lambda1[0]~output_o\ : std_logic;
SIGNAL \Lambda1[1]~output_o\ : std_logic;
SIGNAL \Lambda1[2]~output_o\ : std_logic;
SIGNAL \Lambda1[3]~output_o\ : std_logic;
SIGNAL \Lambda2[0]~output_o\ : std_logic;
SIGNAL \Lambda2[1]~output_o\ : std_logic;
SIGNAL \Lambda2[2]~output_o\ : std_logic;
SIGNAL \Lambda2[3]~output_o\ : std_logic;
SIGNAL \Lambda3[0]~output_o\ : std_logic;
SIGNAL \Lambda3[1]~output_o\ : std_logic;
SIGNAL \Lambda3[2]~output_o\ : std_logic;
SIGNAL \Lambda3[3]~output_o\ : std_logic;
SIGNAL \Lambda4[0]~output_o\ : std_logic;
SIGNAL \Lambda4[1]~output_o\ : std_logic;
SIGNAL \Lambda4[2]~output_o\ : std_logic;
SIGNAL \Lambda4[3]~output_o\ : std_logic;
SIGNAL \Mensagem[0]~output_o\ : std_logic;
SIGNAL \Mensagem[1]~output_o\ : std_logic;
SIGNAL \Mensagem[2]~output_o\ : std_logic;
SIGNAL \Mensagem[3]~output_o\ : std_logic;
SIGNAL \Number_errors[0]~output_o\ : std_logic;
SIGNAL \Number_errors[1]~output_o\ : std_logic;
SIGNAL \Number_errors[2]~output_o\ : std_logic;
SIGNAL \Number_errors[3]~output_o\ : std_logic;
SIGNAL \Omega0[0]~output_o\ : std_logic;
SIGNAL \Omega0[1]~output_o\ : std_logic;
SIGNAL \Omega0[2]~output_o\ : std_logic;
SIGNAL \Omega0[3]~output_o\ : std_logic;
SIGNAL \Omega1[0]~output_o\ : std_logic;
SIGNAL \Omega1[1]~output_o\ : std_logic;
SIGNAL \Omega1[2]~output_o\ : std_logic;
SIGNAL \Omega1[3]~output_o\ : std_logic;
SIGNAL \Omega2[0]~output_o\ : std_logic;
SIGNAL \Omega2[1]~output_o\ : std_logic;
SIGNAL \Omega2[2]~output_o\ : std_logic;
SIGNAL \Omega2[3]~output_o\ : std_logic;
SIGNAL \Omega3[0]~output_o\ : std_logic;
SIGNAL \Omega3[1]~output_o\ : std_logic;
SIGNAL \Omega3[2]~output_o\ : std_logic;
SIGNAL \Omega3[3]~output_o\ : std_logic;
SIGNAL \Omega4[0]~output_o\ : std_logic;
SIGNAL \Omega4[1]~output_o\ : std_logic;
SIGNAL \Omega4[2]~output_o\ : std_logic;
SIGNAL \Omega4[3]~output_o\ : std_logic;
SIGNAL \S0[0]~output_o\ : std_logic;
SIGNAL \S0[1]~output_o\ : std_logic;
SIGNAL \S0[2]~output_o\ : std_logic;
SIGNAL \S0[3]~output_o\ : std_logic;
SIGNAL \S1[0]~output_o\ : std_logic;
SIGNAL \S1[1]~output_o\ : std_logic;
SIGNAL \S1[2]~output_o\ : std_logic;
SIGNAL \S1[3]~output_o\ : std_logic;
SIGNAL \S2[0]~output_o\ : std_logic;
SIGNAL \S2[1]~output_o\ : std_logic;
SIGNAL \S2[2]~output_o\ : std_logic;
SIGNAL \S2[3]~output_o\ : std_logic;
SIGNAL \S3[0]~output_o\ : std_logic;
SIGNAL \S3[1]~output_o\ : std_logic;
SIGNAL \S3[2]~output_o\ : std_logic;
SIGNAL \S3[3]~output_o\ : std_logic;
SIGNAL \S4[0]~output_o\ : std_logic;
SIGNAL \S4[1]~output_o\ : std_logic;
SIGNAL \S4[2]~output_o\ : std_logic;
SIGNAL \S4[3]~output_o\ : std_logic;
SIGNAL \Syn0[0]~output_o\ : std_logic;
SIGNAL \Syn0[1]~output_o\ : std_logic;
SIGNAL \Syn0[2]~output_o\ : std_logic;
SIGNAL \Syn0[3]~output_o\ : std_logic;
SIGNAL \Syn1[0]~output_o\ : std_logic;
SIGNAL \Syn1[1]~output_o\ : std_logic;
SIGNAL \Syn1[2]~output_o\ : std_logic;
SIGNAL \Syn1[3]~output_o\ : std_logic;
SIGNAL \Syn2[0]~output_o\ : std_logic;
SIGNAL \Syn2[1]~output_o\ : std_logic;
SIGNAL \Syn2[2]~output_o\ : std_logic;
SIGNAL \Syn2[3]~output_o\ : std_logic;
SIGNAL \Syn3[0]~output_o\ : std_logic;
SIGNAL \Syn3[1]~output_o\ : std_logic;
SIGNAL \Syn3[2]~output_o\ : std_logic;
SIGNAL \Syn3[3]~output_o\ : std_logic;
SIGNAL \Syn4[0]~output_o\ : std_logic;
SIGNAL \Syn4[1]~output_o\ : std_logic;
SIGNAL \Syn4[2]~output_o\ : std_logic;
SIGNAL \Syn4[3]~output_o\ : std_logic;
SIGNAL \Syn5[0]~output_o\ : std_logic;
SIGNAL \Syn5[1]~output_o\ : std_logic;
SIGNAL \Syn5[2]~output_o\ : std_logic;
SIGNAL \Syn5[3]~output_o\ : std_logic;
SIGNAL \Syn6[0]~output_o\ : std_logic;
SIGNAL \Syn6[1]~output_o\ : std_logic;
SIGNAL \Syn6[2]~output_o\ : std_logic;
SIGNAL \Syn6[3]~output_o\ : std_logic;
SIGNAL \Syn7[0]~output_o\ : std_logic;
SIGNAL \Syn7[1]~output_o\ : std_logic;
SIGNAL \Syn7[2]~output_o\ : std_logic;
SIGNAL \Syn7[3]~output_o\ : std_logic;
SIGNAL \SyndromeOut[0]~output_o\ : std_logic;
SIGNAL \SyndromeOut[1]~output_o\ : std_logic;
SIGNAL \SyndromeOut[2]~output_o\ : std_logic;
SIGNAL \SyndromeOut[3]~output_o\ : std_logic;
SIGNAL \Test_state[0]~output_o\ : std_logic;
SIGNAL \Test_state[1]~output_o\ : std_logic;
SIGNAL \Test_state[2]~output_o\ : std_logic;
SIGNAL \Test_state[3]~output_o\ : std_logic;
SIGNAL \Test_state[4]~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst1|Pre_Q[0]~3_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst1|Pre_Q[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Pre_Q[2]~1_combout\ : std_logic;
SIGNAL \b2v_inst1|Pre_Q[3]~2_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux1~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Count_4~q\ : std_logic;
SIGNAL \b2v_inst19|estadoAtual.idle~feeder_combout\ : std_logic;
SIGNAL \b2v_inst19|estadoAtual.idle~q\ : std_logic;
SIGNAL \b2v_inst11|counter[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst11|Selector1~0_combout\ : std_logic;
SIGNAL \b2v_inst11|Add0~0_combout\ : std_logic;
SIGNAL \b2v_inst11|Selector0~0_combout\ : std_logic;
SIGNAL \b2v_inst11|Selector7~0_combout\ : std_logic;
SIGNAL \b2v_inst11|Equal1~0_combout\ : std_logic;
SIGNAL \b2v_inst11|estadoAtual.wait1~q\ : std_logic;
SIGNAL \b2v_inst11|Selector5~0_combout\ : std_logic;
SIGNAL \b2v_inst11|estadoAtual.shift1~q\ : std_logic;
SIGNAL \b2v_inst11|proximoEstado.wait2~0_combout\ : std_logic;
SIGNAL \b2v_inst11|estadoAtual.wait2~q\ : std_logic;
SIGNAL \b2v_inst11|Selector6~0_combout\ : std_logic;
SIGNAL \b2v_inst11|estadoAtual.shift2~q\ : std_logic;
SIGNAL \b2v_inst11|counter[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst11|Selector3~0_combout\ : std_logic;
SIGNAL \b2v_inst11|Selector2~0_combout\ : std_logic;
SIGNAL \b2v_inst11|proximoEstado.iniciou~0_combout\ : std_logic;
SIGNAL \b2v_inst11|Selector4~0_combout\ : std_logic;
SIGNAL \b2v_inst11|estadoAtual.contagem~q\ : std_logic;
SIGNAL \b2v_inst11|proximoEstado.iniciou~1_combout\ : std_logic;
SIGNAL \b2v_inst11|estadoAtual.iniciou~q\ : std_logic;
SIGNAL \b2v_inst1|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Count_8~q\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|Selector1~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|estadoAtual.idle~q\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|Selector3~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|estadoAtual.localizador~q\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|proximoEstado.clearSyn~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|estadoAtual.clearSyn~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|estadoAtual.clearSyn~q\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|Selector4~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|estadoAtual.avaliador~q\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|Selector1~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|estadoAtual.store~q\ : std_logic;
SIGNAL \b2v_inst1|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Impar~q\ : std_logic;
SIGNAL \Input[3]~input_o\ : std_logic;
SIGNAL \Input[2]~input_o\ : std_logic;
SIGNAL \Input[1]~input_o\ : std_logic;
SIGNAL \b2v_inst7|b2v_inst23|c[1]~0_combout\ : std_logic;
SIGNAL \Input[0]~input_o\ : std_logic;
SIGNAL \b2v_inst7|b2v_inst27|c[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst7|b2v_inst27|c[2]~0_combout\ : std_logic;
SIGNAL \b2v_inst7|b2v_inst31|c[2]~0_combout\ : std_logic;
SIGNAL \b2v_inst7|b2v_inst31|c[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst10|Syndrome~5_combout\ : std_logic;
SIGNAL \b2v_inst11|estadoAtual.ready~0_combout\ : std_logic;
SIGNAL \b2v_inst11|estadoAtual.ready~q\ : std_logic;
SIGNAL \b2v_inst10|Syndrome[24]~1_combout\ : std_logic;
SIGNAL \b2v_inst10|Syndrome[24]~2_combout\ : std_logic;
SIGNAL \b2v_inst10|Syndrome~9_combout\ : std_logic;
SIGNAL \b2v_inst7|b2v_inst10|c[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst7|b2v_inst10|c[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst7|b2v_inst10|c[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst7|b2v_inst10|c[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst10|Syndrome~13_combout\ : std_logic;
SIGNAL \b2v_inst7|b2v_inst7|c[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst7|b2v_inst7|c[2]~1_combout\ : std_logic;
SIGNAL \b2v_inst7|b2v_inst7|c[3]~2_combout\ : std_logic;
SIGNAL \b2v_inst10|Syndrome~17_combout\ : std_logic;
SIGNAL \b2v_inst7|b2v_inst6|c[3]~2_combout\ : std_logic;
SIGNAL \b2v_inst7|b2v_inst6|c[2]~1_combout\ : std_logic;
SIGNAL \b2v_inst7|b2v_inst6|c[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst10|Syndrome~21_combout\ : std_logic;
SIGNAL \b2v_inst7|b2v_inst5|c[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst7|b2v_inst5|c[2]~1_combout\ : std_logic;
SIGNAL \b2v_inst10|Syndrome~25_combout\ : std_logic;
SIGNAL \b2v_inst10|Syndrome~29_combout\ : std_logic;
SIGNAL \b2v_inst7|b2v_inst15|q[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst10|DATA~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|clearS~combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|loadS~combout\ : std_logic;
SIGNAL \b2v_inst10|Syndrome~0_combout\ : std_logic;
SIGNAL \b2v_inst10|Syndrome~6_combout\ : std_logic;
SIGNAL \b2v_inst10|Syndrome~10_combout\ : std_logic;
SIGNAL \b2v_inst10|Syndrome~14_combout\ : std_logic;
SIGNAL \b2v_inst10|Syndrome~18_combout\ : std_logic;
SIGNAL \b2v_inst10|Syndrome~22_combout\ : std_logic;
SIGNAL \b2v_inst10|Syndrome~26_combout\ : std_logic;
SIGNAL \b2v_inst10|DATA~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst|q[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst1|q[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst26|q[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst10|Syndrome~3_combout\ : std_logic;
SIGNAL \b2v_inst10|Syndrome~7_combout\ : std_logic;
SIGNAL \b2v_inst10|Syndrome~11_combout\ : std_logic;
SIGNAL \b2v_inst10|Syndrome~15_combout\ : std_logic;
SIGNAL \b2v_inst10|Syndrome~19_combout\ : std_logic;
SIGNAL \b2v_inst10|Syndrome~23_combout\ : std_logic;
SIGNAL \b2v_inst10|Syndrome~27_combout\ : std_logic;
SIGNAL \b2v_inst10|DATA~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst|q[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst3|q[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[3]~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[0]~17_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[1]~22_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[1]~23_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[1]~24_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[1]~25_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[1]~26_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|Mux7~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[2]~24_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[2]~25_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[2]~26_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[2]~27_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[2]~30_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[2]~31_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[2]~28_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[2]~29_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst6|q[2]~6_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst6|q[2]~7_combout\ : std_logic;
SIGNAL \b2v_inst10|Syndrome~4_combout\ : std_logic;
SIGNAL \b2v_inst10|Syndrome~8_combout\ : std_logic;
SIGNAL \b2v_inst10|Syndrome~12_combout\ : std_logic;
SIGNAL \b2v_inst10|Syndrome~16_combout\ : std_logic;
SIGNAL \b2v_inst10|Syndrome~20_combout\ : std_logic;
SIGNAL \b2v_inst10|Syndrome~24_combout\ : std_logic;
SIGNAL \b2v_inst10|Syndrome~28_combout\ : std_logic;
SIGNAL \b2v_inst7|b2v_inst15|q[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst10|DATA~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[0]~9_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|Mux8~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[0]~10_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[0]~7_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[0]~8_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[0]~11_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[2]~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[2]~5_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[0]~6_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst22|O[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|Mux7~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[2]~24_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[2]~25_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[2]~26_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[2]~27_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[2]~28_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[2]~29_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[2]~30_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[2]~31_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst5|q[2]~6_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst5|q[2]~7_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst5|q[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[1]~12_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[1]~13_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[1]~14_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[1]~15_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst5|q[1]~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|Mux5~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[1]~8_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[1]~9_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[1]~10_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[1]~11_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst5|q[1]~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[1]~10_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[1]~8_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[0]~5_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[0]~6_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[1]~7_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[0]~9_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[0]~11_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[0]~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|Mux8~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[0]~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[0]~12_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst37|c[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|Mux4~4_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[3]~31_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[3]~32_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[3]~33_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[3]~34_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[3]~37_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[3]~38_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[3]~35_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[3]~36_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[3]~39_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[3]~33_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[3]~34_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[3]~35_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[3]~36_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[3]~37_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[3]~38_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[3]~39_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[3]~40_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[3]~41_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[3]~42_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst37|c[3]~9_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[1]~16_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[1]~17_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[1]~18_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[1]~19_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[1]~20_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[1]~13_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[1]~14_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[1]~15_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[1]~16_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[1]~17_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[1]~18_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[1]~19_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[1]~20_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[1]~21_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[1]~22_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[1]~12_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[1]~13_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[1]~14_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[1]~15_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst37|c[1]~12_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[2]~33_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[2]~34_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[2]~31_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[2]~32_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst8|q[2]~6_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|Mux7~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[2]~27_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[2]~28_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[2]~29_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[2]~30_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst8|q[2]~7_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst8|q[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[2]~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[1]~17_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[1]~18_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[1]~19_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[1]~20_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[1]~12_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[1]~13_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[1]~14_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[1]~15_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[1]~16_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst37|c[1]~11_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|Mux7~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|Mux7~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[1]~27_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[1]~28_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[1]~29_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[1]~30_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[1]~12_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[1]~13_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst34|O[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[1]~14_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[1]~15_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst7|q[1]~4_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|Mux7~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|Mux5~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[1]~8_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[1]~9_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[1]~10_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[1]~11_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst7|q[1]~5_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst33|O[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst22|O[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst35|O[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[1]~12_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[1]~13_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[1]~14_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[1]~15_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst6|q[1]~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|Mux5~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[1]~8_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[1]~9_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[1]~10_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[1]~11_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst6|q[1]~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst34|O[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[2]~24_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[2]~25_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[2]~26_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[2]~27_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[2]~30_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[2]~31_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[2]~28_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[2]~29_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst7|q[2]~8_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst7|q[2]~9_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst7|q[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst33|O[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst22|O[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst35|O[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[3]~5_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[3]~6_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[3]~7_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst6|q[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[3]~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst6|q[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[2]~26_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[2]~27_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[2]~28_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[2]~29_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[2]~23_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[2]~24_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[2]~21_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[2]~22_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[2]~25_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[2]~30_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[2]~23_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[2]~24_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[2]~25_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[2]~26_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[2]~27_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[2]~28_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[2]~29_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[2]~30_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[2]~31_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[2]~32_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst37|c[2]~13_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|Mux5~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[0]~18_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[0]~19_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[0]~20_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[0]~14_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[0]~15_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[0]~12_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[0]~13_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[0]~16_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[0]~22_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[0]~23_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[0]~20_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[0]~21_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst5|q[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[0]~16_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[0]~17_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[0]~18_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[0]~19_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst5|q[0]~5_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst5|q[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst35|O[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[0]~16_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[0]~17_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[0]~18_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[0]~19_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[0]~22_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[0]~23_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[0]~20_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[0]~21_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst6|q[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst6|q[0]~5_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst6|q[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst34|O[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[0]~16_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[0]~17_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[0]~18_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[0]~19_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[0]~20_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[0]~21_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[0]~22_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[0]~23_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst7|q[0]~6_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst7|q[0]~7_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst7|q[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst33|O[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst22|O[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[3]~5_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[3]~6_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[3]~7_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst5|q[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[3]~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst5|q[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst5|q[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst35|O[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst34|O[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst33|O[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|Mux5~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[0]~19_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[0]~20_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[0]~21_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[0]~22_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[0]~23_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[0]~24_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[0]~25_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[0]~26_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst8|q[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst8|q[0]~5_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst8|q[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[3]~30_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[3]~31_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[3]~32_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[3]~33_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[3]~36_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[3]~37_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|Mux8~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[3]~34_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[3]~35_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[3]~38_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[3]~10_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[3]~8_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[3]~7_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[3]~38_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[3]~39_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[3]~40_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[3]~41_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|Mux8~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[3]~33_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[3]~34_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[3]~35_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[3]~36_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[3]~37_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[3]~42_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst37|c[3]~8_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[2]~32_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[2]~33_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[2]~34_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[2]~35_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[2]~36_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[2]~37_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[2]~38_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[2]~39_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[2]~40_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[1]~15_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[1]~16_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[1]~17_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[1]~18_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst8|q[1]~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[1]~11_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[1]~12_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[1]~13_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[1]~14_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst8|q[1]~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[2]~5_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[0]~6_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[0]~9_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[0]~10_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[0]~7_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[0]~8_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[0]~11_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[0]~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[0]~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[0]~5_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[0]~6_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[0]~9_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[0]~11_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[0]~12_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst37|c[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst26|q[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[3]~5_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[3]~6_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[3]~9_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[3]~10_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[3]~7_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[3]~8_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[3]~11_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[3]~7_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[3]~8_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[3]~9_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[3]~10_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst8|q[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[3]~5_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[3]~6_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst8|q[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst8|q[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[2]~27_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[2]~28_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[2]~25_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[2]~26_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[2]~29_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[2]~21_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[2]~22_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[2]~23_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[2]~24_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[2]~23_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[2]~24_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[2]~25_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[2]~26_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[2]~27_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[2]~28_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[2]~29_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[2]~30_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[2]~31_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[2]~32_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst37|c[2]~6_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[3]~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[3]~5_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[3]~6_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[3]~7_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst7|q[3]~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst7|q[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst7|q[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[1]~18_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[1]~19_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[1]~20_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[1]~21_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[1]~13_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[1]~14_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[1]~15_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[1]~16_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[1]~17_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[1]~22_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst37|c[1]~4_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst37|c[1]~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|Nerror~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|di~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst|proximoEstado.mux~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux~q\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux2~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux2~q\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux3~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux3~q\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux4~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux4~q\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux5~q\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux6~q\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux7~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux7~q\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux8~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux8~q\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux9~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux9~q\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst|Selector0~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\ : std_logic;
SIGNAL \b2v_inst11|startSReg~combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|estadoAtual.store~clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst9|q[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst1|O[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst9|q[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst1|O[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst9|q[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst1|O[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst9|q[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst1|O[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst10|o[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst10|o[0]~2_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst11|q[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst10|o[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst11|q[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst11|q[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst|O[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst11|q[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst|O[2]~1_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst12|q[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst3|O[3]~6_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst12|q[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst3|O[0]~7_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst9|o[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst12|q[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst3|O[1]~4_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst12|q[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst3|O[2]~5_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst8|q[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst2|O[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst8|q[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst2|O[3]~2_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst8|o[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst8|q[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst2|O[2]~1_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst14|c[2]~1_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst14|c[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst8|SYNTHESIZED_WIRE_5~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst14|c[3]~2_combout\ : std_logic;
SIGNAL \b2v_inst8|SYNTHESIZED_WIRE_5~1_combout\ : std_logic;
SIGNAL \b2v_inst8|SYNTHESIZED_WIRE_0~combout\ : std_logic;
SIGNAL \b2v_inst10|error~8_combout\ : std_logic;
SIGNAL \b2v_inst10|error~9_combout\ : std_logic;
SIGNAL \b2v_inst10|error~3_combout\ : std_logic;
SIGNAL \b2v_inst10|error~1_combout\ : std_logic;
SIGNAL \b2v_inst10|error~2_combout\ : std_logic;
SIGNAL \b2v_inst10|error~0_combout\ : std_logic;
SIGNAL \b2v_inst10|error~4_combout\ : std_logic;
SIGNAL \b2v_inst10|error~5_combout\ : std_logic;
SIGNAL \b2v_inst10|error~6_combout\ : std_logic;
SIGNAL \b2v_inst10|error~7_combout\ : std_logic;
SIGNAL \b2v_inst10|error~combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst1|Pre_Q[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst1|Pre_Q[1]~3_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst1|Pre_Q[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst1|Pre_Q[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst1|Pre_Q[3]~1_combout\ : std_logic;
SIGNAL \SYNTHESIZED_WIRE_21~0_combout\ : std_logic;
SIGNAL \SYNTHESIZED_WIRE_21~combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst1|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst15|erroro~q\ : std_logic;
SIGNAL \b2v_inst19|Selector7~0_combout\ : std_logic;
SIGNAL \b2v_inst19|estadoAtual.wait1~feeder_combout\ : std_logic;
SIGNAL \b2v_inst19|estadoAtual.wait1~q\ : std_logic;
SIGNAL \b2v_inst19|Selector8~0_combout\ : std_logic;
SIGNAL \b2v_inst19|estadoAtual.release~feeder_combout\ : std_logic;
SIGNAL \b2v_inst19|estadoAtual.release~q\ : std_logic;
SIGNAL \b2v_inst19|Selector4~0_combout\ : std_logic;
SIGNAL \b2v_inst19|messages~0_combout\ : std_logic;
SIGNAL \b2v_inst19|Selector3~0_combout\ : std_logic;
SIGNAL \b2v_inst19|Selector2~2_combout\ : std_logic;
SIGNAL \b2v_inst19|Selector2~3_combout\ : std_logic;
SIGNAL \b2v_inst19|Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst19|Selector6~0_combout\ : std_logic;
SIGNAL \b2v_inst19|estadoAtual.save~q\ : std_logic;
SIGNAL \b2v_inst19|Selector5~0_combout\ : std_logic;
SIGNAL \b2v_inst19|Selector37~0_combout\ : std_logic;
SIGNAL \b2v_inst19|estadoAtual.wait2~0_combout\ : std_logic;
SIGNAL \b2v_inst19|estadoAtual.wait2~q\ : std_logic;
SIGNAL \b2v_inst19|messages~1_combout\ : std_logic;
SIGNAL \b2v_inst19|messages~1clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst19|Selector32~0_combout\ : std_logic;
SIGNAL \b2v_inst19|Selector28~0_combout\ : std_logic;
SIGNAL \b2v_inst19|Selector24~0_combout\ : std_logic;
SIGNAL \b2v_inst19|Selector20~0_combout\ : std_logic;
SIGNAL \b2v_inst19|Selector16~0_combout\ : std_logic;
SIGNAL \b2v_inst19|Selector14~1_combout\ : std_logic;
SIGNAL \b2v_inst19|Selector38~0_combout\ : std_logic;
SIGNAL \b2v_inst19|Selector33~0_combout\ : std_logic;
SIGNAL \b2v_inst19|Selector29~0_combout\ : std_logic;
SIGNAL \b2v_inst19|Selector25~0_combout\ : std_logic;
SIGNAL \b2v_inst19|Selector21~0_combout\ : std_logic;
SIGNAL \b2v_inst19|Selector17~0_combout\ : std_logic;
SIGNAL \b2v_inst19|Selector13~1_combout\ : std_logic;
SIGNAL \b2v_inst19|Selector39~0_combout\ : std_logic;
SIGNAL \b2v_inst19|Selector34~0_combout\ : std_logic;
SIGNAL \b2v_inst19|Selector30~0_combout\ : std_logic;
SIGNAL \b2v_inst19|Selector26~0_combout\ : std_logic;
SIGNAL \b2v_inst19|Selector22~0_combout\ : std_logic;
SIGNAL \b2v_inst19|Selector18~0_combout\ : std_logic;
SIGNAL \b2v_inst19|Selector12~1_combout\ : std_logic;
SIGNAL \b2v_inst19|Selector40~0_combout\ : std_logic;
SIGNAL \b2v_inst19|Selector35~0_combout\ : std_logic;
SIGNAL \b2v_inst19|Selector31~0_combout\ : std_logic;
SIGNAL \b2v_inst19|Selector27~0_combout\ : std_logic;
SIGNAL \b2v_inst19|Selector23~0_combout\ : std_logic;
SIGNAL \b2v_inst19|Selector19~0_combout\ : std_logic;
SIGNAL \b2v_inst19|Selector11~3_combout\ : std_logic;
SIGNAL \b2v_inst2|q[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst6|q[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst3|O[2]~1_combout\ : std_logic;
SIGNAL \b2v_inst2|q[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst6|q[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst3|O[1]~3_combout\ : std_logic;
SIGNAL \b2v_inst2|q[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst6|q[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst3|O[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst2|q[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst6|q[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst3|O[3]~2_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst11|o[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst3|q[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst5|q[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst3|q[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst5|q[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst1|O[2]~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst5|q[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst1|O[1]~2_combout\ : std_logic;
SIGNAL \b2v_inst3|q[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst5|q[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst1|O[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst4|q[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst5|q[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst1|q[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[0]~2_combout\ : std_logic;
SIGNAL \b2v_inst4|q[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst4|q[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst2|O[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst8|o[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst4|q[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst8|o[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[2]~1_combout\ : std_logic;
SIGNAL \b2v_inst4|q[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst4|q[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst4|q[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst2|O[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst5|q[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst1|q[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~10_combout\ : std_logic;
SIGNAL \b2v_inst5|q[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst1|q[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst2|Mux8~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~11_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst1|q[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst2|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst2|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst2|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst2|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~8_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~9_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst|o[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~12_combout\ : std_logic;
SIGNAL \b2v_inst19|Selector14~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~5_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~3_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst2|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst2|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~2_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~6_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~7_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~20_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~21_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~18_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~19_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~22_combout\ : std_logic;
SIGNAL \b2v_inst19|Selector13~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst2|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst2|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~13_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst2|Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~14_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~15_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~16_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~17_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~28_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~29_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~30_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~31_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~32_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~23_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~24_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~25_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~26_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~27_combout\ : std_logic;
SIGNAL \b2v_inst19|Selector12~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~38_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~39_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~40_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~41_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~42_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~33_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~34_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~35_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~36_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~37_combout\ : std_logic;
SIGNAL \b2v_inst19|Selector11~4_combout\ : std_logic;
SIGNAL \b2v_inst19|Selector11~2_combout\ : std_logic;
SIGNAL \b2v_inst15|deco0[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst15|deco1[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst15|deco1[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst15|deco1[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst15|deco1[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst15|deco2[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst15|deco3[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst15|deco3[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst15|deco3[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst15|deco4[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst15|deco4[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst15|deco4[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst15|deco5[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst15|deco5[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst15|deco6[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst15|deco6[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst6|q[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst6|q[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|Selector1~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|Selector1~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|Selector0~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|Selector0~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|test_state~4_combout\ : std_logic;
SIGNAL \b2v_inst15|deco5\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst2|b2v_inst|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst2|b2v_inst11|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst7|b2v_inst27|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst2|b2v_inst3|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst15|deco0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst2|b2v_inst1|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst2|b2v_inst8|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst7|b2v_inst7|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst8|b2v_inst|b2v_inst8|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst2|b2v_inst4|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst8|b2v_inst|b2v_inst12|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst1|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst2|b2v_inst7|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst8|b2v_inst|b2v_inst11|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst2|b2v_inst6|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst2|b2v_inst2|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst8|b2v_inst|b2v_inst1|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst8|b2v_inst|b2v_inst9|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst19|messages\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst2|b2v_inst5|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst7|b2v_inst6|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst8|b2v_inst|b2v_inst6|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst10|Syndrome\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \b2v_inst8|b2v_inst1|Pre_Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst1|Pre_Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst2|b2v_inst9|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst5|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst2|b2v_inst10|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst7|b2v_inst5|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst8|b2v_inst|b2v_inst5|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst15|deco4\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst2|b2v_inst36|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst7|b2v_inst20|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst19|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst15|deco1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst15|deco2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst15|deco3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst15|deco6\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst7|b2v_inst25|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst2|b2v_inst26|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst5|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst4|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst3|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst2|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst6|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst7|b2v_inst15|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst7|b2v_inst19|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst7|b2v_inst21|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst7|b2v_inst24|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst7|b2v_inst28|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst8|b2v_inst|b2v_inst4|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst7|b2v_inst32|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst|test_state\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \b2v_inst11|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst7|b2v_inst22|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst7|b2v_inst23|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst7|b2v_inst31|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_muxSel~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|ALT_INV_clearS~combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|ALT_INV_estadoAtual.idle~q\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|ALT_INV_Nerror~0_combout\ : std_logic;
SIGNAL \b2v_inst8|ALT_INV_SYNTHESIZED_WIRE_0~combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|ALT_INV_test_state~4_combout\ : std_logic;
SIGNAL \ALT_INV_Reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_Clock <= Clock;
ww_Reset <= Reset;
ww_Input <= Input;
Registra <= ww_Registra;
di <= ww_di;
loadS <= ww_loadS;
loadB <= ww_loadB;
loadC <= ww_loadC;
clearS <= ww_clearS;
clearB <= ww_clearB;
clearC <= ww_clearC;
MuxSel <= ww_MuxSel;
Nerror <= ww_Nerror;
pin_name1 <= ww_pin_name1;
Impar <= ww_Impar;
Count_4 <= ww_Count_4;
Count_8 <= ww_Count_8;
startSReg <= ww_startSReg;
startBerle <= ww_startBerle;
error_enable <= ww_error_enable;
error_reset <= ww_error_reset;
error_syndrome <= ww_error_syndrome;
Error <= ww_Error;
error_corrected <= ww_error_corrected;
erroro <= ww_erroro;
B_0 <= ww_B_0;
B_1 <= ww_B_1;
B_2 <= ww_B_2;
B_3 <= ww_B_3;
B_mux <= ww_B_mux;
count <= ww_count;
debug <= ww_debug;
deco0 <= ww_deco0;
deco1 <= ww_deco1;
deco2 <= ww_deco2;
deco3 <= ww_deco3;
deco4 <= ww_deco4;
deco5 <= ww_deco5;
deco6 <= ww_deco6;
Decod <= ww_Decod;
DS_reg <= ww_DS_reg;
Lambda1 <= ww_Lambda1;
Lambda2 <= ww_Lambda2;
Lambda3 <= ww_Lambda3;
Lambda4 <= ww_Lambda4;
Mensagem <= ww_Mensagem;
Number_errors <= ww_Number_errors;
Omega0 <= ww_Omega0;
Omega1 <= ww_Omega1;
Omega2 <= ww_Omega2;
Omega3 <= ww_Omega3;
Omega4 <= ww_Omega4;
S0 <= ww_S0;
S1 <= ww_S1;
S2 <= ww_S2;
S3 <= ww_S3;
S4 <= ww_S4;
Syn0 <= ww_Syn0;
Syn1 <= ww_Syn1;
Syn2 <= ww_Syn2;
Syn3 <= ww_Syn3;
Syn4 <= ww_Syn4;
Syn5 <= ww_Syn5;
Syn6 <= ww_Syn6;
Syn7 <= ww_Syn7;
SyndromeOut <= ww_SyndromeOut;
Test_state <= ww_Test_state;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\b2v_inst19|messages~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \b2v_inst19|messages~1_combout\);

\b2v_inst|b2v_inst|estadoAtual.store~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \b2v_inst|b2v_inst|estadoAtual.store~q\);

\Reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset~input_o\);

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);
\b2v_inst8|b2v_inst|b2v_inst|ALT_INV_muxSel~0_combout\ <= NOT \b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\;
\b2v_inst|b2v_inst|ALT_INV_clearS~combout\ <= NOT \b2v_inst|b2v_inst|clearS~combout\;
\b2v_inst|b2v_inst|ALT_INV_estadoAtual.idle~q\ <= NOT \b2v_inst|b2v_inst|estadoAtual.idle~q\;
\b2v_inst|b2v_inst2|ALT_INV_Nerror~0_combout\ <= NOT \b2v_inst|b2v_inst2|Nerror~0_combout\;
\b2v_inst8|ALT_INV_SYNTHESIZED_WIRE_0~combout\ <= NOT \b2v_inst8|SYNTHESIZED_WIRE_0~combout\;
\b2v_inst|b2v_inst|ALT_INV_test_state~4_combout\ <= NOT \b2v_inst|b2v_inst|test_state~4_combout\;
\ALT_INV_Reset~inputclkctrl_outclk\ <= NOT \Reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X27_Y0_N9
\Registra~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst|estadoAtual.store~q\,
	devoe => ww_devoe,
	o => \Registra~output_o\);

-- Location: IOOBUF_X67_Y10_N2
\di~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst|di~0_combout\,
	devoe => ww_devoe,
	o => \di~output_o\);

-- Location: IOOBUF_X38_Y0_N30
\loadS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst|loadS~combout\,
	devoe => ww_devoe,
	o => \loadS~output_o\);

-- Location: IOOBUF_X25_Y43_N16
\loadB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst|estadoAtual.localizador~q\,
	devoe => ww_devoe,
	o => \loadB~output_o\);

-- Location: IOOBUF_X29_Y43_N23
\loadC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst|estadoAtual.localizador~q\,
	devoe => ww_devoe,
	o => \loadC~output_o\);

-- Location: IOOBUF_X38_Y0_N16
\clearS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst|clearS~combout\,
	devoe => ww_devoe,
	o => \clearS~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\clearB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst|ALT_INV_estadoAtual.idle~q\,
	devoe => ww_devoe,
	o => \clearB~output_o\);

-- Location: IOOBUF_X50_Y0_N2
\clearC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst|ALT_INV_estadoAtual.idle~q\,
	devoe => ww_devoe,
	o => \clearC~output_o\);

-- Location: IOOBUF_X67_Y10_N9
\MuxSel~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst|di~0_combout\,
	devoe => ww_devoe,
	o => \MuxSel~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\Nerror~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|ALT_INV_Nerror~0_combout\,
	devoe => ww_devoe,
	o => \Nerror~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\pin_name1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_muxSel~0_combout\,
	devoe => ww_devoe,
	o => \pin_name1~output_o\);

-- Location: IOOBUF_X65_Y0_N30
\Impar~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst1|Impar~q\,
	devoe => ww_devoe,
	o => \Impar~output_o\);

-- Location: IOOBUF_X59_Y0_N30
\Count_4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst1|Count_4~q\,
	devoe => ww_devoe,
	o => \Count_4~output_o\);

-- Location: IOOBUF_X43_Y0_N16
\Count_8~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst1|Count_8~q\,
	devoe => ww_devoe,
	o => \Count_8~output_o\);

-- Location: IOOBUF_X36_Y43_N23
\startSReg~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst11|startSReg~combout\,
	devoe => ww_devoe,
	o => \startSReg~output_o\);

-- Location: IOOBUF_X32_Y43_N30
\startBerle~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst11|estadoAtual.iniciou~q\,
	devoe => ww_devoe,
	o => \startBerle~output_o\);

-- Location: IOOBUF_X27_Y0_N2
\error_enable~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst8|SYNTHESIZED_WIRE_5~1_combout\,
	devoe => ww_devoe,
	o => \error_enable~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\error_reset~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst8|SYNTHESIZED_WIRE_0~combout\,
	devoe => ww_devoe,
	o => \error_reset~output_o\);

-- Location: IOOBUF_X11_Y43_N30
\error_syndrome~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst10|error~combout\,
	devoe => ww_devoe,
	o => \error_syndrome~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\Error~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SYNTHESIZED_WIRE_21~combout\,
	devoe => ww_devoe,
	o => \Error~output_o\);

-- Location: IOOBUF_X25_Y43_N2
\error_corrected~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst8|b2v_inst1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \error_corrected~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\erroro~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst15|erroro~q\,
	devoe => ww_devoe,
	o => \erroro~output_o\);

-- Location: IOOBUF_X67_Y13_N9
\B_0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst9|q\(0),
	devoe => ww_devoe,
	o => \B_0[0]~output_o\);

-- Location: IOOBUF_X50_Y0_N16
\B_0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst9|q\(1),
	devoe => ww_devoe,
	o => \B_0[1]~output_o\);

-- Location: IOOBUF_X67_Y14_N23
\B_0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst9|q\(2),
	devoe => ww_devoe,
	o => \B_0[2]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\B_0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst9|q\(3),
	devoe => ww_devoe,
	o => \B_0[3]~output_o\);

-- Location: IOOBUF_X61_Y0_N30
\B_1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst10|q\(0),
	devoe => ww_devoe,
	o => \B_1[0]~output_o\);

-- Location: IOOBUF_X67_Y17_N23
\B_1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst10|q\(1),
	devoe => ww_devoe,
	o => \B_1[1]~output_o\);

-- Location: IOOBUF_X67_Y17_N16
\B_1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst10|q\(2),
	devoe => ww_devoe,
	o => \B_1[2]~output_o\);

-- Location: IOOBUF_X67_Y19_N16
\B_1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst10|q\(3),
	devoe => ww_devoe,
	o => \B_1[3]~output_o\);

-- Location: IOOBUF_X45_Y0_N2
\B_2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst11|q\(0),
	devoe => ww_devoe,
	o => \B_2[0]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\B_2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst11|q\(1),
	devoe => ww_devoe,
	o => \B_2[1]~output_o\);

-- Location: IOOBUF_X50_Y0_N23
\B_2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst11|q\(2),
	devoe => ww_devoe,
	o => \B_2[2]~output_o\);

-- Location: IOOBUF_X48_Y0_N30
\B_2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst11|q\(3),
	devoe => ww_devoe,
	o => \B_2[3]~output_o\);

-- Location: IOOBUF_X67_Y9_N9
\B_3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst36|q\(0),
	devoe => ww_devoe,
	o => \B_3[0]~output_o\);

-- Location: IOOBUF_X43_Y0_N30
\B_3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst36|q\(1),
	devoe => ww_devoe,
	o => \B_3[1]~output_o\);

-- Location: IOOBUF_X67_Y12_N16
\B_3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst36|q\(2),
	devoe => ww_devoe,
	o => \B_3[2]~output_o\);

-- Location: IOOBUF_X50_Y0_N9
\B_3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst36|q\(3),
	devoe => ww_devoe,
	o => \B_3[3]~output_o\);

-- Location: IOOBUF_X67_Y7_N2
\B_mux[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst22|O[0]~0_combout\,
	devoe => ww_devoe,
	o => \B_mux[0]~output_o\);

-- Location: IOOBUF_X50_Y0_N30
\B_mux[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst22|O[1]~1_combout\,
	devoe => ww_devoe,
	o => \B_mux[1]~output_o\);

-- Location: IOOBUF_X67_Y19_N9
\B_mux[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst22|O[2]~2_combout\,
	devoe => ww_devoe,
	o => \B_mux[2]~output_o\);

-- Location: IOOBUF_X67_Y18_N9
\B_mux[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst22|O[3]~3_combout\,
	devoe => ww_devoe,
	o => \B_mux[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\count[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|counter\(0),
	devoe => ww_devoe,
	o => \count[0]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\count[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|counter\(1),
	devoe => ww_devoe,
	o => \count[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\count[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|counter\(2),
	devoe => ww_devoe,
	o => \count[2]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\count[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|counter\(3),
	devoe => ww_devoe,
	o => \count[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N30
\debug[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|messages\(0),
	devoe => ww_devoe,
	o => \debug[0]~output_o\);

-- Location: IOOBUF_X0_Y28_N2
\debug[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|messages\(1),
	devoe => ww_devoe,
	o => \debug[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\debug[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|messages\(2),
	devoe => ww_devoe,
	o => \debug[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N30
\debug[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|messages\(3),
	devoe => ww_devoe,
	o => \debug[3]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\debug[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|messages\(4),
	devoe => ww_devoe,
	o => \debug[4]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\debug[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|messages\(5),
	devoe => ww_devoe,
	o => \debug[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\debug[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|messages\(6),
	devoe => ww_devoe,
	o => \debug[6]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\debug[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|messages\(7),
	devoe => ww_devoe,
	o => \debug[7]~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\debug[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|messages\(8),
	devoe => ww_devoe,
	o => \debug[8]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\debug[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|messages\(9),
	devoe => ww_devoe,
	o => \debug[9]~output_o\);

-- Location: IOOBUF_X29_Y0_N30
\debug[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|messages\(10),
	devoe => ww_devoe,
	o => \debug[10]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\debug[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|messages\(11),
	devoe => ww_devoe,
	o => \debug[11]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\debug[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|messages\(12),
	devoe => ww_devoe,
	o => \debug[12]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\debug[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|messages\(13),
	devoe => ww_devoe,
	o => \debug[13]~output_o\);

-- Location: IOOBUF_X25_Y43_N30
\debug[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|messages\(14),
	devoe => ww_devoe,
	o => \debug[14]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\debug[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|messages\(15),
	devoe => ww_devoe,
	o => \debug[15]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\debug[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|messages\(16),
	devoe => ww_devoe,
	o => \debug[16]~output_o\);

-- Location: IOOBUF_X22_Y0_N16
\debug[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|messages\(17),
	devoe => ww_devoe,
	o => \debug[17]~output_o\);

-- Location: IOOBUF_X0_Y30_N16
\debug[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|messages\(18),
	devoe => ww_devoe,
	o => \debug[18]~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\debug[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|messages\(19),
	devoe => ww_devoe,
	o => \debug[19]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\debug[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|messages\(20),
	devoe => ww_devoe,
	o => \debug[20]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\debug[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|messages\(21),
	devoe => ww_devoe,
	o => \debug[21]~output_o\);

-- Location: IOOBUF_X67_Y11_N9
\debug[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|messages\(22),
	devoe => ww_devoe,
	o => \debug[22]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\debug[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|messages\(23),
	devoe => ww_devoe,
	o => \debug[23]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\debug[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|messages\(24),
	devoe => ww_devoe,
	o => \debug[24]~output_o\);

-- Location: IOOBUF_X1_Y0_N30
\debug[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|messages\(25),
	devoe => ww_devoe,
	o => \debug[25]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\debug[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|messages\(26),
	devoe => ww_devoe,
	o => \debug[26]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\debug[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|messages\(27),
	devoe => ww_devoe,
	o => \debug[27]~output_o\);

-- Location: IOOBUF_X3_Y0_N30
\deco0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst15|deco0\(0),
	devoe => ww_devoe,
	o => \deco0[0]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\deco0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst15|deco0\(1),
	devoe => ww_devoe,
	o => \deco0[1]~output_o\);

-- Location: IOOBUF_X0_Y5_N9
\deco0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst15|deco0\(2),
	devoe => ww_devoe,
	o => \deco0[2]~output_o\);

-- Location: IOOBUF_X0_Y19_N16
\deco0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst15|deco0\(3),
	devoe => ww_devoe,
	o => \deco0[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\deco1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst15|deco1\(0),
	devoe => ww_devoe,
	o => \deco1[0]~output_o\);

-- Location: IOOBUF_X0_Y16_N2
\deco1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst15|deco1\(1),
	devoe => ww_devoe,
	o => \deco1[1]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\deco1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst15|deco1\(2),
	devoe => ww_devoe,
	o => \deco1[2]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\deco1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst15|deco1\(3),
	devoe => ww_devoe,
	o => \deco1[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\deco2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst15|deco2\(0),
	devoe => ww_devoe,
	o => \deco2[0]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\deco2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst15|deco2\(1),
	devoe => ww_devoe,
	o => \deco2[1]~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\deco2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst15|deco2\(2),
	devoe => ww_devoe,
	o => \deco2[2]~output_o\);

-- Location: IOOBUF_X0_Y17_N23
\deco2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst15|deco2\(3),
	devoe => ww_devoe,
	o => \deco2[3]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\deco3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst15|deco3\(0),
	devoe => ww_devoe,
	o => \deco3[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\deco3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst15|deco3\(1),
	devoe => ww_devoe,
	o => \deco3[1]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\deco3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst15|deco3\(2),
	devoe => ww_devoe,
	o => \deco3[2]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\deco3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst15|deco3\(3),
	devoe => ww_devoe,
	o => \deco3[3]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\deco4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst15|deco4\(0),
	devoe => ww_devoe,
	o => \deco4[0]~output_o\);

-- Location: IOOBUF_X0_Y16_N9
\deco4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst15|deco4\(1),
	devoe => ww_devoe,
	o => \deco4[1]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\deco4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst15|deco4\(2),
	devoe => ww_devoe,
	o => \deco4[2]~output_o\);

-- Location: IOOBUF_X0_Y20_N23
\deco4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst15|deco4\(3),
	devoe => ww_devoe,
	o => \deco4[3]~output_o\);

-- Location: IOOBUF_X0_Y5_N2
\deco5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst15|deco5\(0),
	devoe => ww_devoe,
	o => \deco5[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\deco5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst15|deco5\(1),
	devoe => ww_devoe,
	o => \deco5[1]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\deco5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst15|deco5\(2),
	devoe => ww_devoe,
	o => \deco5[2]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\deco5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst15|deco5\(3),
	devoe => ww_devoe,
	o => \deco5[3]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\deco6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst15|deco6\(0),
	devoe => ww_devoe,
	o => \deco6[0]~output_o\);

-- Location: IOOBUF_X0_Y19_N9
\deco6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst15|deco6\(1),
	devoe => ww_devoe,
	o => \deco6[1]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\deco6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst15|deco6\(2),
	devoe => ww_devoe,
	o => \deco6[2]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\deco6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst15|deco6\(3),
	devoe => ww_devoe,
	o => \deco6[3]~output_o\);

-- Location: IOOBUF_X27_Y43_N2
\Decod[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst8|b2v_inst2|b2v_inst1|c\(0),
	devoe => ww_devoe,
	o => \Decod[0]~output_o\);

-- Location: IOOBUF_X25_Y43_N9
\Decod[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst8|b2v_inst2|b2v_inst1|c\(1),
	devoe => ww_devoe,
	o => \Decod[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\Decod[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst8|b2v_inst2|b2v_inst1|c\(2),
	devoe => ww_devoe,
	o => \Decod[2]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\Decod[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst8|b2v_inst2|b2v_inst1|c\(3),
	devoe => ww_devoe,
	o => \Decod[3]~output_o\);

-- Location: IOOBUF_X45_Y0_N9
\DS_reg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst26|q\(0),
	devoe => ww_devoe,
	o => \DS_reg[0]~output_o\);

-- Location: IOOBUF_X67_Y25_N16
\DS_reg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst26|q\(1),
	devoe => ww_devoe,
	o => \DS_reg[1]~output_o\);

-- Location: IOOBUF_X61_Y0_N9
\DS_reg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst26|q\(2),
	devoe => ww_devoe,
	o => \DS_reg[2]~output_o\);

-- Location: IOOBUF_X38_Y43_N2
\DS_reg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst26|q\(3),
	devoe => ww_devoe,
	o => \DS_reg[3]~output_o\);

-- Location: IOOBUF_X67_Y15_N2
\Lambda1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	devoe => ww_devoe,
	o => \Lambda1[0]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\Lambda1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	devoe => ww_devoe,
	o => \Lambda1[1]~output_o\);

-- Location: IOOBUF_X67_Y13_N16
\Lambda1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst5|q\(2),
	devoe => ww_devoe,
	o => \Lambda1[2]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\Lambda1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst5|q\(3),
	devoe => ww_devoe,
	o => \Lambda1[3]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\Lambda2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	devoe => ww_devoe,
	o => \Lambda2[0]~output_o\);

-- Location: IOOBUF_X43_Y0_N2
\Lambda2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	devoe => ww_devoe,
	o => \Lambda2[1]~output_o\);

-- Location: IOOBUF_X67_Y18_N23
\Lambda2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst6|q\(2),
	devoe => ww_devoe,
	o => \Lambda2[2]~output_o\);

-- Location: IOOBUF_X67_Y13_N2
\Lambda2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst6|q\(3),
	devoe => ww_devoe,
	o => \Lambda2[3]~output_o\);

-- Location: IOOBUF_X67_Y7_N16
\Lambda3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	devoe => ww_devoe,
	o => \Lambda3[0]~output_o\);

-- Location: IOOBUF_X67_Y14_N2
\Lambda3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	devoe => ww_devoe,
	o => \Lambda3[1]~output_o\);

-- Location: IOOBUF_X67_Y7_N9
\Lambda3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst7|q\(2),
	devoe => ww_devoe,
	o => \Lambda3[2]~output_o\);

-- Location: IOOBUF_X48_Y0_N23
\Lambda3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst7|q\(3),
	devoe => ww_devoe,
	o => \Lambda3[3]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\Lambda4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	devoe => ww_devoe,
	o => \Lambda4[0]~output_o\);

-- Location: IOOBUF_X38_Y0_N23
\Lambda4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	devoe => ww_devoe,
	o => \Lambda4[1]~output_o\);

-- Location: IOOBUF_X41_Y0_N30
\Lambda4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst8|q\(2),
	devoe => ww_devoe,
	o => \Lambda4[2]~output_o\);

-- Location: IOOBUF_X34_Y0_N30
\Lambda4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst8|q\(3),
	devoe => ww_devoe,
	o => \Lambda4[3]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\Mensagem[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|Selector14~0_combout\,
	devoe => ww_devoe,
	o => \Mensagem[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\Mensagem[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|Selector13~0_combout\,
	devoe => ww_devoe,
	o => \Mensagem[1]~output_o\);

-- Location: IOOBUF_X25_Y43_N23
\Mensagem[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|Selector12~0_combout\,
	devoe => ww_devoe,
	o => \Mensagem[2]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\Mensagem[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|Selector11~2_combout\,
	devoe => ww_devoe,
	o => \Mensagem[3]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\Number_errors[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst8|b2v_inst1|Pre_Q\(0),
	devoe => ww_devoe,
	o => \Number_errors[0]~output_o\);

-- Location: IOOBUF_X22_Y43_N2
\Number_errors[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst8|b2v_inst1|Pre_Q\(1),
	devoe => ww_devoe,
	o => \Number_errors[1]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\Number_errors[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst8|b2v_inst1|Pre_Q\(2),
	devoe => ww_devoe,
	o => \Number_errors[2]~output_o\);

-- Location: IOOBUF_X0_Y19_N23
\Number_errors[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst8|b2v_inst1|Pre_Q\(3),
	devoe => ww_devoe,
	o => \Number_errors[3]~output_o\);

-- Location: IOOBUF_X67_Y10_N23
\Omega0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst5|q\(0),
	devoe => ww_devoe,
	o => \Omega0[0]~output_o\);

-- Location: IOOBUF_X67_Y9_N16
\Omega0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst5|q\(1),
	devoe => ww_devoe,
	o => \Omega0[1]~output_o\);

-- Location: IOOBUF_X67_Y10_N16
\Omega0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst5|q\(2),
	devoe => ww_devoe,
	o => \Omega0[2]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\Omega0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst5|q\(3),
	devoe => ww_devoe,
	o => \Omega0[3]~output_o\);

-- Location: IOOBUF_X63_Y0_N30
\Omega1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|q\(0),
	devoe => ww_devoe,
	o => \Omega1[0]~output_o\);

-- Location: IOOBUF_X61_Y0_N23
\Omega1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|q\(1),
	devoe => ww_devoe,
	o => \Omega1[1]~output_o\);

-- Location: IOOBUF_X67_Y26_N23
\Omega1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|q\(2),
	devoe => ww_devoe,
	o => \Omega1[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\Omega1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|q\(3),
	devoe => ww_devoe,
	o => \Omega1[3]~output_o\);

-- Location: IOOBUF_X61_Y0_N16
\Omega2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst3|q\(0),
	devoe => ww_devoe,
	o => \Omega2[0]~output_o\);

-- Location: IOOBUF_X61_Y0_N2
\Omega2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst3|q\(1),
	devoe => ww_devoe,
	o => \Omega2[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\Omega2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst3|q\(2),
	devoe => ww_devoe,
	o => \Omega2[2]~output_o\);

-- Location: IOOBUF_X63_Y0_N9
\Omega2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst3|q\(3),
	devoe => ww_devoe,
	o => \Omega2[3]~output_o\);

-- Location: IOOBUF_X59_Y0_N2
\Omega3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|q\(0),
	devoe => ww_devoe,
	o => \Omega3[0]~output_o\);

-- Location: IOOBUF_X67_Y6_N16
\Omega3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|q\(1),
	devoe => ww_devoe,
	o => \Omega3[1]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\Omega3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|q\(2),
	devoe => ww_devoe,
	o => \Omega3[2]~output_o\);

-- Location: IOOBUF_X29_Y43_N2
\Omega3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|q\(3),
	devoe => ww_devoe,
	o => \Omega3[3]~output_o\);

-- Location: IOOBUF_X67_Y11_N2
\Omega4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst6|q\(0),
	devoe => ww_devoe,
	o => \Omega4[0]~output_o\);

-- Location: IOOBUF_X67_Y25_N23
\Omega4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst6|q\(1),
	devoe => ww_devoe,
	o => \Omega4[1]~output_o\);

-- Location: IOOBUF_X43_Y0_N9
\Omega4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst6|q\(2),
	devoe => ww_devoe,
	o => \Omega4[2]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\Omega4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst6|q\(3),
	devoe => ww_devoe,
	o => \Omega4[3]~output_o\);

-- Location: IOOBUF_X54_Y0_N30
\S0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst|q\(0),
	devoe => ww_devoe,
	o => \S0[0]~output_o\);

-- Location: IOOBUF_X67_Y11_N23
\S0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst|q\(1),
	devoe => ww_devoe,
	o => \S0[1]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\S0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst|q\(2),
	devoe => ww_devoe,
	o => \S0[2]~output_o\);

-- Location: IOOBUF_X67_Y27_N16
\S0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst|q\(3),
	devoe => ww_devoe,
	o => \S0[3]~output_o\);

-- Location: IOOBUF_X0_Y18_N9
\S1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst1|q\(0),
	devoe => ww_devoe,
	o => \S1[0]~output_o\);

-- Location: IOOBUF_X67_Y18_N2
\S1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst1|q\(1),
	devoe => ww_devoe,
	o => \S1[1]~output_o\);

-- Location: IOOBUF_X32_Y43_N9
\S1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst1|q\(2),
	devoe => ww_devoe,
	o => \S1[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\S1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst1|q\(3),
	devoe => ww_devoe,
	o => \S1[3]~output_o\);

-- Location: IOOBUF_X67_Y19_N23
\S2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst2|q\(0),
	devoe => ww_devoe,
	o => \S2[0]~output_o\);

-- Location: IOOBUF_X67_Y14_N9
\S2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst2|q\(1),
	devoe => ww_devoe,
	o => \S2[1]~output_o\);

-- Location: IOOBUF_X67_Y18_N16
\S2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst2|q\(2),
	devoe => ww_devoe,
	o => \S2[2]~output_o\);

-- Location: IOOBUF_X32_Y43_N2
\S2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst2|q\(3),
	devoe => ww_devoe,
	o => \S2[3]~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\S3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst3|q\(0),
	devoe => ww_devoe,
	o => \S3[0]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\S3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst3|q\(1),
	devoe => ww_devoe,
	o => \S3[1]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\S3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst3|q\(2),
	devoe => ww_devoe,
	o => \S3[2]~output_o\);

-- Location: IOOBUF_X67_Y15_N9
\S3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst3|q\(3),
	devoe => ww_devoe,
	o => \S3[3]~output_o\);

-- Location: IOOBUF_X67_Y12_N23
\S4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst4|q\(0),
	devoe => ww_devoe,
	o => \S4[0]~output_o\);

-- Location: IOOBUF_X67_Y8_N23
\S4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst4|q\(1),
	devoe => ww_devoe,
	o => \S4[1]~output_o\);

-- Location: IOOBUF_X9_Y0_N30
\S4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	devoe => ww_devoe,
	o => \S4[2]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\S4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	devoe => ww_devoe,
	o => \S4[3]~output_o\);

-- Location: IOOBUF_X56_Y43_N16
\Syn0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|b2v_inst15|q\(0),
	devoe => ww_devoe,
	o => \Syn0[0]~output_o\);

-- Location: IOOBUF_X61_Y43_N16
\Syn0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|b2v_inst15|q\(1),
	devoe => ww_devoe,
	o => \Syn0[1]~output_o\);

-- Location: IOOBUF_X54_Y43_N16
\Syn0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|b2v_inst15|q\(2),
	devoe => ww_devoe,
	o => \Syn0[2]~output_o\);

-- Location: IOOBUF_X54_Y43_N30
\Syn0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|b2v_inst15|q\(3),
	devoe => ww_devoe,
	o => \Syn0[3]~output_o\);

-- Location: IOOBUF_X54_Y43_N9
\Syn1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|b2v_inst19|q\(0),
	devoe => ww_devoe,
	o => \Syn1[0]~output_o\);

-- Location: IOOBUF_X54_Y43_N2
\Syn1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|b2v_inst19|q\(1),
	devoe => ww_devoe,
	o => \Syn1[1]~output_o\);

-- Location: IOOBUF_X61_Y43_N2
\Syn1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|b2v_inst19|q\(2),
	devoe => ww_devoe,
	o => \Syn1[2]~output_o\);

-- Location: IOOBUF_X54_Y43_N23
\Syn1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|b2v_inst19|q\(3),
	devoe => ww_devoe,
	o => \Syn1[3]~output_o\);

-- Location: IOOBUF_X52_Y43_N16
\Syn2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|b2v_inst20|q\(0),
	devoe => ww_devoe,
	o => \Syn2[0]~output_o\);

-- Location: IOOBUF_X41_Y43_N16
\Syn2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|b2v_inst20|q\(1),
	devoe => ww_devoe,
	o => \Syn2[1]~output_o\);

-- Location: IOOBUF_X56_Y43_N9
\Syn2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|b2v_inst20|q\(2),
	devoe => ww_devoe,
	o => \Syn2[2]~output_o\);

-- Location: IOOBUF_X45_Y43_N2
\Syn2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|b2v_inst20|q\(3),
	devoe => ww_devoe,
	o => \Syn2[3]~output_o\);

-- Location: IOOBUF_X50_Y43_N2
\Syn3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|b2v_inst21|q\(0),
	devoe => ww_devoe,
	o => \Syn3[0]~output_o\);

-- Location: IOOBUF_X59_Y43_N16
\Syn3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|b2v_inst21|q\(1),
	devoe => ww_devoe,
	o => \Syn3[1]~output_o\);

-- Location: IOOBUF_X56_Y43_N23
\Syn3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|b2v_inst21|q\(2),
	devoe => ww_devoe,
	o => \Syn3[2]~output_o\);

-- Location: IOOBUF_X59_Y43_N2
\Syn3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|b2v_inst21|q\(3),
	devoe => ww_devoe,
	o => \Syn3[3]~output_o\);

-- Location: IOOBUF_X50_Y43_N23
\Syn4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|b2v_inst24|q\(0),
	devoe => ww_devoe,
	o => \Syn4[0]~output_o\);

-- Location: IOOBUF_X52_Y43_N30
\Syn4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|b2v_inst24|q\(1),
	devoe => ww_devoe,
	o => \Syn4[1]~output_o\);

-- Location: IOOBUF_X48_Y43_N9
\Syn4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|b2v_inst24|q\(2),
	devoe => ww_devoe,
	o => \Syn4[2]~output_o\);

-- Location: IOOBUF_X20_Y43_N9
\Syn4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|b2v_inst24|q\(3),
	devoe => ww_devoe,
	o => \Syn4[3]~output_o\);

-- Location: IOOBUF_X32_Y43_N16
\Syn5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|b2v_inst25|q\(0),
	devoe => ww_devoe,
	o => \Syn5[0]~output_o\);

-- Location: IOOBUF_X41_Y43_N9
\Syn5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|b2v_inst25|q\(1),
	devoe => ww_devoe,
	o => \Syn5[1]~output_o\);

-- Location: IOOBUF_X67_Y39_N23
\Syn5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|b2v_inst25|q\(2),
	devoe => ww_devoe,
	o => \Syn5[2]~output_o\);

-- Location: IOOBUF_X38_Y43_N30
\Syn5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|b2v_inst25|q\(3),
	devoe => ww_devoe,
	o => \Syn5[3]~output_o\);

-- Location: IOOBUF_X45_Y43_N30
\Syn6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|b2v_inst28|q\(0),
	devoe => ww_devoe,
	o => \Syn6[0]~output_o\);

-- Location: IOOBUF_X22_Y43_N30
\Syn6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|b2v_inst28|q\(1),
	devoe => ww_devoe,
	o => \Syn6[1]~output_o\);

-- Location: IOOBUF_X59_Y43_N9
\Syn6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|b2v_inst28|q\(2),
	devoe => ww_devoe,
	o => \Syn6[2]~output_o\);

-- Location: IOOBUF_X50_Y43_N16
\Syn6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|b2v_inst28|q\(3),
	devoe => ww_devoe,
	o => \Syn6[3]~output_o\);

-- Location: IOOBUF_X45_Y43_N16
\Syn7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|b2v_inst32|q\(0),
	devoe => ww_devoe,
	o => \Syn7[0]~output_o\);

-- Location: IOOBUF_X45_Y43_N23
\Syn7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|b2v_inst32|q\(1),
	devoe => ww_devoe,
	o => \Syn7[1]~output_o\);

-- Location: IOOBUF_X45_Y43_N9
\Syn7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|b2v_inst32|q\(2),
	devoe => ww_devoe,
	o => \Syn7[2]~output_o\);

-- Location: IOOBUF_X36_Y43_N16
\Syn7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|b2v_inst32|q\(3),
	devoe => ww_devoe,
	o => \Syn7[3]~output_o\);

-- Location: IOOBUF_X38_Y43_N23
\SyndromeOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst10|Syndrome\(0),
	devoe => ww_devoe,
	o => \SyndromeOut[0]~output_o\);

-- Location: IOOBUF_X67_Y34_N2
\SyndromeOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst10|Syndrome\(1),
	devoe => ww_devoe,
	o => \SyndromeOut[1]~output_o\);

-- Location: IOOBUF_X36_Y43_N9
\SyndromeOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst10|Syndrome\(2),
	devoe => ww_devoe,
	o => \SyndromeOut[2]~output_o\);

-- Location: IOOBUF_X20_Y43_N2
\SyndromeOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst10|Syndrome\(3),
	devoe => ww_devoe,
	o => \SyndromeOut[3]~output_o\);

-- Location: IOOBUF_X32_Y43_N23
\Test_state[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst|Selector1~2_combout\,
	devoe => ww_devoe,
	o => \Test_state[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\Test_state[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst|Selector0~1_combout\,
	devoe => ww_devoe,
	o => \Test_state[1]~output_o\);

-- Location: IOOBUF_X67_Y7_N23
\Test_state[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst|test_state\(2),
	devoe => ww_devoe,
	o => \Test_state[2]~output_o\);

-- Location: IOOBUF_X63_Y0_N2
\Test_state[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst|ALT_INV_test_state~4_combout\,
	devoe => ww_devoe,
	o => \Test_state[3]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\Test_state[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst|estadoAtual.store~q\,
	devoe => ww_devoe,
	o => \Test_state[4]~output_o\);

-- Location: IOIBUF_X0_Y21_N8
\Clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G2
\Clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X36_Y11_N12
\b2v_inst1|Pre_Q[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Pre_Q[0]~3_combout\ = !\b2v_inst1|Pre_Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|Pre_Q\(0),
	combout => \b2v_inst1|Pre_Q[0]~3_combout\);

-- Location: IOIBUF_X0_Y21_N15
\Reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: CLKCTRL_G1
\Reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset~inputclkctrl_outclk\);

-- Location: FF_X36_Y11_N13
\b2v_inst1|Pre_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|Pre_Q[0]~3_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|Pre_Q\(0));

-- Location: LCCOMB_X36_Y11_N0
\b2v_inst1|Pre_Q[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Pre_Q[1]~0_combout\ = \b2v_inst1|Pre_Q\(1) $ (\b2v_inst1|Pre_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|Pre_Q\(1),
	datad => \b2v_inst1|Pre_Q\(0),
	combout => \b2v_inst1|Pre_Q[1]~0_combout\);

-- Location: FF_X36_Y11_N1
\b2v_inst1|Pre_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|Pre_Q[1]~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|Pre_Q\(1));

-- Location: LCCOMB_X36_Y11_N14
\b2v_inst1|Pre_Q[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Pre_Q[2]~1_combout\ = \b2v_inst1|Pre_Q\(2) $ (((\b2v_inst1|Pre_Q\(1) & \b2v_inst1|Pre_Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Pre_Q\(1),
	datac => \b2v_inst1|Pre_Q\(2),
	datad => \b2v_inst1|Pre_Q\(0),
	combout => \b2v_inst1|Pre_Q[2]~1_combout\);

-- Location: FF_X36_Y11_N15
\b2v_inst1|Pre_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|Pre_Q[2]~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|Pre_Q\(2));

-- Location: LCCOMB_X36_Y11_N20
\b2v_inst1|Pre_Q[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Pre_Q[3]~2_combout\ = \b2v_inst1|Pre_Q\(3) $ (((\b2v_inst1|Pre_Q\(0) & (\b2v_inst1|Pre_Q\(2) & \b2v_inst1|Pre_Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Pre_Q\(0),
	datab => \b2v_inst1|Pre_Q\(2),
	datac => \b2v_inst1|Pre_Q\(3),
	datad => \b2v_inst1|Pre_Q\(1),
	combout => \b2v_inst1|Pre_Q[3]~2_combout\);

-- Location: FF_X36_Y11_N21
\b2v_inst1|Pre_Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|Pre_Q[3]~2_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|Pre_Q\(3));

-- Location: LCCOMB_X36_Y11_N6
\b2v_inst1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux1~0_combout\ = (!\b2v_inst1|Pre_Q\(0) & (\b2v_inst1|Pre_Q\(2) & (\b2v_inst1|Pre_Q\(3) $ (!\b2v_inst1|Pre_Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Pre_Q\(0),
	datab => \b2v_inst1|Pre_Q\(3),
	datac => \b2v_inst1|Pre_Q\(2),
	datad => \b2v_inst1|Pre_Q\(1),
	combout => \b2v_inst1|Mux1~0_combout\);

-- Location: FF_X36_Y11_N7
\b2v_inst1|Count_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|Mux1~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|Count_4~q\);

-- Location: LCCOMB_X41_Y11_N12
\b2v_inst19|estadoAtual.idle~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|estadoAtual.idle~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \b2v_inst19|estadoAtual.idle~feeder_combout\);

-- Location: FF_X41_Y11_N13
\b2v_inst19|estadoAtual.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst19|estadoAtual.idle~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|estadoAtual.idle~q\);

-- Location: LCCOMB_X41_Y35_N2
\b2v_inst11|counter[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|counter[3]~1_combout\ = (\b2v_inst11|estadoAtual.contagem~q\ & ((\b2v_inst11|proximoEstado.iniciou~0_combout\))) # (!\b2v_inst11|estadoAtual.contagem~q\ & (\b2v_inst11|counter[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|counter[3]~0_combout\,
	datab => \b2v_inst11|estadoAtual.contagem~q\,
	datad => \b2v_inst11|proximoEstado.iniciou~0_combout\,
	combout => \b2v_inst11|counter[3]~1_combout\);

-- Location: LCCOMB_X41_Y35_N28
\b2v_inst11|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|Selector1~0_combout\ = (!\b2v_inst11|counter[3]~1_combout\ & (\b2v_inst11|counter\(2) $ (((\b2v_inst11|counter\(1) & \b2v_inst11|counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|counter\(1),
	datab => \b2v_inst11|counter\(0),
	datac => \b2v_inst11|counter\(2),
	datad => \b2v_inst11|counter[3]~1_combout\,
	combout => \b2v_inst11|Selector1~0_combout\);

-- Location: FF_X41_Y35_N29
\b2v_inst11|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst11|Selector1~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|counter\(2));

-- Location: LCCOMB_X41_Y35_N26
\b2v_inst11|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|Add0~0_combout\ = \b2v_inst11|counter\(3) $ (((\b2v_inst11|counter\(1) & (\b2v_inst11|counter\(2) & \b2v_inst11|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|counter\(1),
	datab => \b2v_inst11|counter\(2),
	datac => \b2v_inst11|counter\(0),
	datad => \b2v_inst11|counter\(3),
	combout => \b2v_inst11|Add0~0_combout\);

-- Location: LCCOMB_X41_Y35_N18
\b2v_inst11|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|Selector0~0_combout\ = (\b2v_inst11|Add0~0_combout\ & ((\b2v_inst11|estadoAtual.contagem~q\ & ((!\b2v_inst11|proximoEstado.iniciou~0_combout\))) # (!\b2v_inst11|estadoAtual.contagem~q\ & (!\b2v_inst11|counter[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|counter[3]~0_combout\,
	datab => \b2v_inst11|estadoAtual.contagem~q\,
	datac => \b2v_inst11|Add0~0_combout\,
	datad => \b2v_inst11|proximoEstado.iniciou~0_combout\,
	combout => \b2v_inst11|Selector0~0_combout\);

-- Location: FF_X41_Y35_N19
\b2v_inst11|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst11|Selector0~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|counter\(3));

-- Location: LCCOMB_X41_Y35_N8
\b2v_inst11|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|Selector7~0_combout\ = (\b2v_inst11|counter\(1) & (\b2v_inst11|counter\(2) & (!\b2v_inst11|counter\(0) & !\b2v_inst11|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|counter\(1),
	datab => \b2v_inst11|counter\(2),
	datac => \b2v_inst11|counter\(0),
	datad => \b2v_inst11|counter\(3),
	combout => \b2v_inst11|Selector7~0_combout\);

-- Location: LCCOMB_X41_Y35_N14
\b2v_inst11|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|Equal1~0_combout\ = (\b2v_inst11|counter\(1) & (\b2v_inst11|counter\(2) & (\b2v_inst11|counter\(0) & !\b2v_inst11|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|counter\(1),
	datab => \b2v_inst11|counter\(2),
	datac => \b2v_inst11|counter\(0),
	datad => \b2v_inst11|counter\(3),
	combout => \b2v_inst11|Equal1~0_combout\);

-- Location: FF_X41_Y35_N1
\b2v_inst11|estadoAtual.wait1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst11|estadoAtual.iniciou~q\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|estadoAtual.wait1~q\);

-- Location: LCCOMB_X41_Y35_N16
\b2v_inst11|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|Selector5~0_combout\ = (\b2v_inst11|estadoAtual.wait1~q\) # ((!\b2v_inst11|Equal1~0_combout\ & \b2v_inst11|estadoAtual.shift1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst11|Equal1~0_combout\,
	datac => \b2v_inst11|estadoAtual.shift1~q\,
	datad => \b2v_inst11|estadoAtual.wait1~q\,
	combout => \b2v_inst11|Selector5~0_combout\);

-- Location: FF_X41_Y35_N17
\b2v_inst11|estadoAtual.shift1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst11|Selector5~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|estadoAtual.shift1~q\);

-- Location: LCCOMB_X41_Y35_N10
\b2v_inst11|proximoEstado.wait2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|proximoEstado.wait2~0_combout\ = (\b2v_inst11|estadoAtual.shift1~q\ & \b2v_inst11|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst11|estadoAtual.shift1~q\,
	datac => \b2v_inst11|Equal1~0_combout\,
	combout => \b2v_inst11|proximoEstado.wait2~0_combout\);

-- Location: FF_X41_Y35_N11
\b2v_inst11|estadoAtual.wait2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst11|proximoEstado.wait2~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|estadoAtual.wait2~q\);

-- Location: LCCOMB_X41_Y35_N30
\b2v_inst11|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|Selector6~0_combout\ = (\b2v_inst11|estadoAtual.wait2~q\) # ((!\b2v_inst11|Selector7~0_combout\ & \b2v_inst11|estadoAtual.shift2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst11|Selector7~0_combout\,
	datac => \b2v_inst11|estadoAtual.shift2~q\,
	datad => \b2v_inst11|estadoAtual.wait2~q\,
	combout => \b2v_inst11|Selector6~0_combout\);

-- Location: FF_X41_Y35_N31
\b2v_inst11|estadoAtual.shift2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst11|Selector6~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|estadoAtual.shift2~q\);

-- Location: LCCOMB_X41_Y35_N12
\b2v_inst11|counter[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|counter[3]~0_combout\ = (\b2v_inst11|estadoAtual.shift2~q\ & (\b2v_inst11|Selector7~0_combout\)) # (!\b2v_inst11|estadoAtual.shift2~q\ & (((\b2v_inst11|Equal1~0_combout\) # (!\b2v_inst11|estadoAtual.shift1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|estadoAtual.shift2~q\,
	datab => \b2v_inst11|Selector7~0_combout\,
	datac => \b2v_inst11|Equal1~0_combout\,
	datad => \b2v_inst11|estadoAtual.shift1~q\,
	combout => \b2v_inst11|counter[3]~0_combout\);

-- Location: LCCOMB_X41_Y35_N4
\b2v_inst11|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|Selector3~0_combout\ = (!\b2v_inst11|counter\(0) & ((\b2v_inst11|estadoAtual.contagem~q\ & ((!\b2v_inst11|proximoEstado.iniciou~0_combout\))) # (!\b2v_inst11|estadoAtual.contagem~q\ & (!\b2v_inst11|counter[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|counter[3]~0_combout\,
	datab => \b2v_inst11|estadoAtual.contagem~q\,
	datac => \b2v_inst11|counter\(0),
	datad => \b2v_inst11|proximoEstado.iniciou~0_combout\,
	combout => \b2v_inst11|Selector3~0_combout\);

-- Location: FF_X41_Y35_N5
\b2v_inst11|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst11|Selector3~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|counter\(0));

-- Location: LCCOMB_X41_Y35_N22
\b2v_inst11|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|Selector2~0_combout\ = (!\b2v_inst11|counter[3]~1_combout\ & (\b2v_inst11|counter\(0) $ (\b2v_inst11|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst11|counter\(0),
	datac => \b2v_inst11|counter\(1),
	datad => \b2v_inst11|counter[3]~1_combout\,
	combout => \b2v_inst11|Selector2~0_combout\);

-- Location: FF_X41_Y35_N23
\b2v_inst11|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst11|Selector2~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|counter\(1));

-- Location: LCCOMB_X41_Y35_N6
\b2v_inst11|proximoEstado.iniciou~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|proximoEstado.iniciou~0_combout\ = (\b2v_inst11|counter\(1) & (\b2v_inst11|counter\(2) & (!\b2v_inst11|counter\(0) & \b2v_inst11|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|counter\(1),
	datab => \b2v_inst11|counter\(2),
	datac => \b2v_inst11|counter\(0),
	datad => \b2v_inst11|counter\(3),
	combout => \b2v_inst11|proximoEstado.iniciou~0_combout\);

-- Location: LCCOMB_X41_Y35_N24
\b2v_inst11|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|Selector4~0_combout\ = (\Reset~input_o\ & (((\b2v_inst11|estadoAtual.contagem~q\ & !\b2v_inst11|proximoEstado.iniciou~0_combout\)))) # (!\Reset~input_o\ & (((\b2v_inst11|estadoAtual.contagem~q\ & !\b2v_inst11|proximoEstado.iniciou~0_combout\)) 
-- # (!\b2v_inst19|estadoAtual.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset~input_o\,
	datab => \b2v_inst19|estadoAtual.idle~q\,
	datac => \b2v_inst11|estadoAtual.contagem~q\,
	datad => \b2v_inst11|proximoEstado.iniciou~0_combout\,
	combout => \b2v_inst11|Selector4~0_combout\);

-- Location: FF_X41_Y35_N25
\b2v_inst11|estadoAtual.contagem\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst11|Selector4~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|estadoAtual.contagem~q\);

-- Location: LCCOMB_X44_Y39_N4
\b2v_inst11|proximoEstado.iniciou~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|proximoEstado.iniciou~1_combout\ = (\b2v_inst11|estadoAtual.contagem~q\ & \b2v_inst11|proximoEstado.iniciou~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst11|estadoAtual.contagem~q\,
	datad => \b2v_inst11|proximoEstado.iniciou~0_combout\,
	combout => \b2v_inst11|proximoEstado.iniciou~1_combout\);

-- Location: FF_X44_Y39_N5
\b2v_inst11|estadoAtual.iniciou\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst11|proximoEstado.iniciou~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|estadoAtual.iniciou~q\);

-- Location: LCCOMB_X36_Y11_N30
\b2v_inst1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux2~0_combout\ = (!\b2v_inst1|Pre_Q\(0) & (\b2v_inst1|Pre_Q\(3) & (!\b2v_inst1|Pre_Q\(2) & !\b2v_inst1|Pre_Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Pre_Q\(0),
	datab => \b2v_inst1|Pre_Q\(3),
	datac => \b2v_inst1|Pre_Q\(2),
	datad => \b2v_inst1|Pre_Q\(1),
	combout => \b2v_inst1|Mux2~0_combout\);

-- Location: FF_X36_Y11_N31
\b2v_inst1|Count_8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|Mux2~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|Count_8~q\);

-- Location: LCCOMB_X37_Y14_N0
\b2v_inst|b2v_inst|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst|Selector1~1_combout\ = (!\b2v_inst|b2v_inst|estadoAtual.store~q\ & ((\b2v_inst11|estadoAtual.iniciou~q\) # (\b2v_inst|b2v_inst|estadoAtual.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst11|estadoAtual.iniciou~q\,
	datac => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	datad => \b2v_inst|b2v_inst|estadoAtual.store~q\,
	combout => \b2v_inst|b2v_inst|Selector1~1_combout\);

-- Location: FF_X37_Y14_N1
\b2v_inst|b2v_inst|estadoAtual.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst|Selector1~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst|estadoAtual.idle~q\);

-- Location: LCCOMB_X41_Y14_N12
\b2v_inst|b2v_inst|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst|Selector3~0_combout\ = (\b2v_inst11|estadoAtual.iniciou~q\ & (((!\b2v_inst1|Count_8~q\ & \b2v_inst|b2v_inst|estadoAtual.localizador~q\)) # (!\b2v_inst|b2v_inst|estadoAtual.idle~q\))) # (!\b2v_inst11|estadoAtual.iniciou~q\ & 
-- (!\b2v_inst1|Count_8~q\ & (\b2v_inst|b2v_inst|estadoAtual.localizador~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|estadoAtual.iniciou~q\,
	datab => \b2v_inst1|Count_8~q\,
	datac => \b2v_inst|b2v_inst|estadoAtual.localizador~q\,
	datad => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	combout => \b2v_inst|b2v_inst|Selector3~0_combout\);

-- Location: FF_X41_Y14_N13
\b2v_inst|b2v_inst|estadoAtual.localizador\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst|Selector3~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst|estadoAtual.localizador~q\);

-- Location: LCCOMB_X41_Y14_N18
\b2v_inst|b2v_inst|proximoEstado.clearSyn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst|proximoEstado.clearSyn~0_combout\ = (\b2v_inst|b2v_inst|estadoAtual.localizador~q\ & \b2v_inst1|Count_8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst|estadoAtual.localizador~q\,
	datac => \b2v_inst1|Count_8~q\,
	combout => \b2v_inst|b2v_inst|proximoEstado.clearSyn~0_combout\);

-- Location: LCCOMB_X37_Y14_N22
\b2v_inst|b2v_inst|estadoAtual.clearSyn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst|estadoAtual.clearSyn~feeder_combout\ = \b2v_inst|b2v_inst|proximoEstado.clearSyn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst|proximoEstado.clearSyn~0_combout\,
	combout => \b2v_inst|b2v_inst|estadoAtual.clearSyn~feeder_combout\);

-- Location: FF_X37_Y14_N23
\b2v_inst|b2v_inst|estadoAtual.clearSyn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst|estadoAtual.clearSyn~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst|estadoAtual.clearSyn~q\);

-- Location: LCCOMB_X36_Y11_N26
\b2v_inst|b2v_inst|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst|Selector4~0_combout\ = (\b2v_inst|b2v_inst|estadoAtual.clearSyn~q\) # ((\b2v_inst|b2v_inst|estadoAtual.avaliador~q\ & !\b2v_inst1|Count_4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst|estadoAtual.clearSyn~q\,
	datac => \b2v_inst|b2v_inst|estadoAtual.avaliador~q\,
	datad => \b2v_inst1|Count_4~q\,
	combout => \b2v_inst|b2v_inst|Selector4~0_combout\);

-- Location: FF_X36_Y11_N27
\b2v_inst|b2v_inst|estadoAtual.avaliador\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst|Selector4~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst|estadoAtual.avaliador~q\);

-- Location: LCCOMB_X36_Y11_N8
\b2v_inst|b2v_inst|Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst|Selector1~3_combout\ = (\b2v_inst1|Count_4~q\ & \b2v_inst|b2v_inst|estadoAtual.avaliador~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Count_4~q\,
	datac => \b2v_inst|b2v_inst|estadoAtual.avaliador~q\,
	combout => \b2v_inst|b2v_inst|Selector1~3_combout\);

-- Location: FF_X36_Y11_N9
\b2v_inst|b2v_inst|estadoAtual.store\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst|Selector1~3_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst|estadoAtual.store~q\);

-- Location: LCCOMB_X36_Y11_N16
\b2v_inst1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux0~0_combout\ = (\b2v_inst1|Pre_Q\(0) & (((!\b2v_inst1|Pre_Q\(1)) # (!\b2v_inst1|Pre_Q\(2))) # (!\b2v_inst1|Pre_Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Pre_Q\(0),
	datab => \b2v_inst1|Pre_Q\(3),
	datac => \b2v_inst1|Pre_Q\(2),
	datad => \b2v_inst1|Pre_Q\(1),
	combout => \b2v_inst1|Mux0~0_combout\);

-- Location: FF_X36_Y11_N17
\b2v_inst1|Impar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|Mux0~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|Impar~q\);

-- Location: IOIBUF_X50_Y43_N8
\Input[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(3),
	o => \Input[3]~input_o\);

-- Location: IOIBUF_X11_Y43_N15
\Input[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(2),
	o => \Input[2]~input_o\);

-- Location: IOIBUF_X67_Y22_N1
\Input[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(1),
	o => \Input[1]~input_o\);

-- Location: LCCOMB_X46_Y40_N6
\b2v_inst7|b2v_inst23|c[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|b2v_inst23|c[1]~0_combout\ = \b2v_inst7|b2v_inst19|q\(3) $ (\b2v_inst7|b2v_inst19|q\(0) $ (\Input[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|b2v_inst19|q\(3),
	datab => \b2v_inst7|b2v_inst19|q\(0),
	datac => \Input[1]~input_o\,
	combout => \b2v_inst7|b2v_inst23|c[1]~0_combout\);

-- Location: FF_X46_Y40_N7
\b2v_inst7|b2v_inst19|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst7|b2v_inst23|c[1]~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|b2v_inst19|q\(1));

-- Location: LCCOMB_X46_Y40_N12
\b2v_inst7|b2v_inst23|c[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|b2v_inst23|c\(2) = \Input[2]~input_o\ $ (\b2v_inst7|b2v_inst19|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[2]~input_o\,
	datac => \b2v_inst7|b2v_inst19|q\(1),
	combout => \b2v_inst7|b2v_inst23|c\(2));

-- Location: FF_X46_Y40_N13
\b2v_inst7|b2v_inst19|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst7|b2v_inst23|c\(2),
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|b2v_inst19|q\(2));

-- Location: LCCOMB_X46_Y40_N26
\b2v_inst7|b2v_inst23|c[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|b2v_inst23|c\(3) = \Input[3]~input_o\ $ (\b2v_inst7|b2v_inst19|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[3]~input_o\,
	datad => \b2v_inst7|b2v_inst19|q\(2),
	combout => \b2v_inst7|b2v_inst23|c\(3));

-- Location: FF_X46_Y40_N27
\b2v_inst7|b2v_inst19|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst7|b2v_inst23|c\(3),
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|b2v_inst19|q\(3));

-- Location: IOIBUF_X67_Y22_N8
\Input[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(0),
	o => \Input[0]~input_o\);

-- Location: LCCOMB_X46_Y40_N16
\b2v_inst7|b2v_inst23|c[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|b2v_inst23|c\(0) = \b2v_inst7|b2v_inst19|q\(3) $ (\Input[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|b2v_inst19|q\(3),
	datac => \Input[0]~input_o\,
	combout => \b2v_inst7|b2v_inst23|c\(0));

-- Location: FF_X46_Y40_N17
\b2v_inst7|b2v_inst19|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst7|b2v_inst23|c\(0),
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|b2v_inst19|q\(0));

-- Location: LCCOMB_X45_Y40_N2
\b2v_inst7|b2v_inst27|c[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|b2v_inst27|c[3]~1_combout\ = \Input[3]~input_o\ $ (\b2v_inst7|b2v_inst28|q\(0) $ (\b2v_inst7|b2v_inst28|q\(3) $ (\b2v_inst7|b2v_inst28|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input[3]~input_o\,
	datab => \b2v_inst7|b2v_inst28|q\(0),
	datac => \b2v_inst7|b2v_inst28|q\(3),
	datad => \b2v_inst7|b2v_inst28|q\(1),
	combout => \b2v_inst7|b2v_inst27|c[3]~1_combout\);

-- Location: FF_X45_Y40_N3
\b2v_inst7|b2v_inst28|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst7|b2v_inst27|c[3]~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|b2v_inst28|q\(3));

-- Location: LCCOMB_X45_Y40_N26
\b2v_inst7|b2v_inst27|c[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|b2v_inst27|c\(1) = \Input[1]~input_o\ $ (\b2v_inst7|b2v_inst28|q\(1) $ (\b2v_inst7|b2v_inst28|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[1]~input_o\,
	datac => \b2v_inst7|b2v_inst28|q\(1),
	datad => \b2v_inst7|b2v_inst28|q\(3),
	combout => \b2v_inst7|b2v_inst27|c\(1));

-- Location: FF_X45_Y40_N27
\b2v_inst7|b2v_inst28|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst7|b2v_inst27|c\(1),
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|b2v_inst28|q\(1));

-- Location: LCCOMB_X45_Y40_N24
\b2v_inst7|b2v_inst27|c[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|b2v_inst27|c[2]~0_combout\ = \Input[2]~input_o\ $ (\b2v_inst7|b2v_inst28|q\(0) $ (\b2v_inst7|b2v_inst28|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input[2]~input_o\,
	datab => \b2v_inst7|b2v_inst28|q\(0),
	datac => \b2v_inst7|b2v_inst28|q\(2),
	combout => \b2v_inst7|b2v_inst27|c[2]~0_combout\);

-- Location: FF_X45_Y40_N25
\b2v_inst7|b2v_inst28|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst7|b2v_inst27|c[2]~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|b2v_inst28|q\(2));

-- Location: LCCOMB_X45_Y40_N4
\b2v_inst7|b2v_inst27|c[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|b2v_inst27|c\(0) = \Input[0]~input_o\ $ (\b2v_inst7|b2v_inst28|q\(1) $ (\b2v_inst7|b2v_inst28|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[0]~input_o\,
	datac => \b2v_inst7|b2v_inst28|q\(1),
	datad => \b2v_inst7|b2v_inst28|q\(2),
	combout => \b2v_inst7|b2v_inst27|c\(0));

-- Location: FF_X45_Y40_N5
\b2v_inst7|b2v_inst28|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst7|b2v_inst27|c\(0),
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|b2v_inst28|q\(0));

-- Location: LCCOMB_X45_Y40_N6
\b2v_inst7|b2v_inst31|c[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|b2v_inst31|c\(1) = \b2v_inst7|b2v_inst32|q\(3) $ (\b2v_inst7|b2v_inst32|q\(0) $ (\Input[1]~input_o\ $ (\b2v_inst7|b2v_inst32|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|b2v_inst32|q\(3),
	datab => \b2v_inst7|b2v_inst32|q\(0),
	datac => \Input[1]~input_o\,
	datad => \b2v_inst7|b2v_inst32|q\(2),
	combout => \b2v_inst7|b2v_inst31|c\(1));

-- Location: FF_X45_Y40_N7
\b2v_inst7|b2v_inst32|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst7|b2v_inst31|c\(1),
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|b2v_inst32|q\(1));

-- Location: LCCOMB_X45_Y40_N0
\b2v_inst7|b2v_inst31|c[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|b2v_inst31|c[2]~0_combout\ = \b2v_inst7|b2v_inst32|q\(3) $ (\Input[2]~input_o\ $ (\b2v_inst7|b2v_inst32|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst7|b2v_inst32|q\(3),
	datac => \Input[2]~input_o\,
	datad => \b2v_inst7|b2v_inst32|q\(1),
	combout => \b2v_inst7|b2v_inst31|c[2]~0_combout\);

-- Location: FF_X45_Y40_N1
\b2v_inst7|b2v_inst32|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst7|b2v_inst31|c[2]~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|b2v_inst32|q\(2));

-- Location: LCCOMB_X45_Y40_N14
\b2v_inst7|b2v_inst31|c[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|b2v_inst31|c[3]~1_combout\ = \b2v_inst7|b2v_inst32|q\(0) $ (\Input[3]~input_o\ $ (\b2v_inst7|b2v_inst32|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst7|b2v_inst32|q\(0),
	datac => \Input[3]~input_o\,
	datad => \b2v_inst7|b2v_inst32|q\(2),
	combout => \b2v_inst7|b2v_inst31|c[3]~1_combout\);

-- Location: FF_X45_Y40_N15
\b2v_inst7|b2v_inst32|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst7|b2v_inst31|c[3]~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|b2v_inst32|q\(3));

-- Location: LCCOMB_X45_Y40_N28
\b2v_inst7|b2v_inst31|c[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|b2v_inst31|c\(0) = \b2v_inst7|b2v_inst32|q\(3) $ (\Input[0]~input_o\ $ (\b2v_inst7|b2v_inst32|q\(0) $ (\b2v_inst7|b2v_inst32|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|b2v_inst32|q\(3),
	datab => \Input[0]~input_o\,
	datac => \b2v_inst7|b2v_inst32|q\(0),
	datad => \b2v_inst7|b2v_inst32|q\(1),
	combout => \b2v_inst7|b2v_inst31|c\(0));

-- Location: FF_X45_Y40_N29
\b2v_inst7|b2v_inst32|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst7|b2v_inst31|c\(0),
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|b2v_inst32|q\(0));

-- Location: LCCOMB_X46_Y39_N24
\b2v_inst10|Syndrome~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Syndrome~5_combout\ = (\b2v_inst11|estadoAtual.contagem~q\ & (((\b2v_inst7|b2v_inst32|q\(0))))) # (!\b2v_inst11|estadoAtual.contagem~q\ & ((\b2v_inst11|estadoAtual.iniciou~q\ & ((\b2v_inst7|b2v_inst32|q\(0)))) # 
-- (!\b2v_inst11|estadoAtual.iniciou~q\ & (\b2v_inst10|Syndrome\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|Syndrome\(0),
	datab => \b2v_inst11|estadoAtual.contagem~q\,
	datac => \b2v_inst7|b2v_inst32|q\(0),
	datad => \b2v_inst11|estadoAtual.iniciou~q\,
	combout => \b2v_inst10|Syndrome~5_combout\);

-- Location: LCCOMB_X41_Y35_N20
\b2v_inst11|estadoAtual.ready~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|estadoAtual.ready~0_combout\ = (\b2v_inst11|estadoAtual.ready~q\) # ((\b2v_inst11|estadoAtual.shift2~q\ & \b2v_inst11|Selector7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|estadoAtual.shift2~q\,
	datab => \b2v_inst11|Selector7~0_combout\,
	datac => \b2v_inst11|estadoAtual.ready~q\,
	combout => \b2v_inst11|estadoAtual.ready~0_combout\);

-- Location: FF_X41_Y35_N21
\b2v_inst11|estadoAtual.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst11|estadoAtual.ready~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|estadoAtual.ready~q\);

-- Location: LCCOMB_X41_Y35_N0
\b2v_inst10|Syndrome[24]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Syndrome[24]~1_combout\ = (\b2v_inst11|estadoAtual.wait2~q\) # (((\b2v_inst11|estadoAtual.wait1~q\) # (\b2v_inst11|estadoAtual.ready~q\)) # (!\b2v_inst19|estadoAtual.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|estadoAtual.wait2~q\,
	datab => \b2v_inst19|estadoAtual.idle~q\,
	datac => \b2v_inst11|estadoAtual.wait1~q\,
	datad => \b2v_inst11|estadoAtual.ready~q\,
	combout => \b2v_inst10|Syndrome[24]~1_combout\);

-- Location: LCCOMB_X44_Y39_N6
\b2v_inst10|Syndrome[24]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Syndrome[24]~2_combout\ = (\b2v_inst11|estadoAtual.contagem~q\) # ((\b2v_inst11|estadoAtual.iniciou~q\) # (!\b2v_inst10|Syndrome[24]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|estadoAtual.contagem~q\,
	datac => \b2v_inst11|estadoAtual.iniciou~q\,
	datad => \b2v_inst10|Syndrome[24]~1_combout\,
	combout => \b2v_inst10|Syndrome[24]~2_combout\);

-- Location: FF_X46_Y39_N25
\b2v_inst10|Syndrome[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst10|Syndrome~5_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \b2v_inst10|Syndrome[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|Syndrome\(28));

-- Location: LCCOMB_X45_Y39_N30
\b2v_inst10|Syndrome~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Syndrome~9_combout\ = (\b2v_inst11|estadoAtual.contagem~q\ & (((\b2v_inst7|b2v_inst28|q\(0))))) # (!\b2v_inst11|estadoAtual.contagem~q\ & ((\b2v_inst11|estadoAtual.iniciou~q\ & (\b2v_inst7|b2v_inst28|q\(0))) # 
-- (!\b2v_inst11|estadoAtual.iniciou~q\ & ((\b2v_inst10|Syndrome\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|estadoAtual.contagem~q\,
	datab => \b2v_inst11|estadoAtual.iniciou~q\,
	datac => \b2v_inst7|b2v_inst28|q\(0),
	datad => \b2v_inst10|Syndrome\(28),
	combout => \b2v_inst10|Syndrome~9_combout\);

-- Location: FF_X45_Y39_N31
\b2v_inst10|Syndrome[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst10|Syndrome~9_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \b2v_inst10|Syndrome[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|Syndrome\(24));

-- Location: LCCOMB_X45_Y40_N22
\b2v_inst7|b2v_inst10|c[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|b2v_inst10|c[1]~1_combout\ = \b2v_inst7|b2v_inst25|q\(0) $ (\Input[1]~input_o\ $ (\b2v_inst7|b2v_inst25|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|b2v_inst25|q\(0),
	datac => \Input[1]~input_o\,
	datad => \b2v_inst7|b2v_inst25|q\(2),
	combout => \b2v_inst7|b2v_inst10|c[1]~1_combout\);

-- Location: FF_X45_Y40_N23
\b2v_inst7|b2v_inst25|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst7|b2v_inst10|c[1]~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|b2v_inst25|q\(1));

-- Location: LCCOMB_X45_Y40_N10
\b2v_inst7|b2v_inst10|c[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|b2v_inst10|c[3]~3_combout\ = \b2v_inst7|b2v_inst25|q\(1) $ (\Input[3]~input_o\ $ (\b2v_inst7|b2v_inst25|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst7|b2v_inst25|q\(1),
	datac => \Input[3]~input_o\,
	datad => \b2v_inst7|b2v_inst25|q\(2),
	combout => \b2v_inst7|b2v_inst10|c[3]~3_combout\);

-- Location: FF_X45_Y40_N11
\b2v_inst7|b2v_inst25|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst7|b2v_inst10|c[3]~3_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|b2v_inst25|q\(3));

-- Location: LCCOMB_X45_Y40_N20
\b2v_inst7|b2v_inst10|c[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|b2v_inst10|c[2]~2_combout\ = \b2v_inst7|b2v_inst25|q\(0) $ (\b2v_inst7|b2v_inst25|q\(1) $ (\Input[2]~input_o\ $ (\b2v_inst7|b2v_inst25|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|b2v_inst25|q\(0),
	datab => \b2v_inst7|b2v_inst25|q\(1),
	datac => \Input[2]~input_o\,
	datad => \b2v_inst7|b2v_inst25|q\(3),
	combout => \b2v_inst7|b2v_inst10|c[2]~2_combout\);

-- Location: FF_X45_Y40_N21
\b2v_inst7|b2v_inst25|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst7|b2v_inst10|c[2]~2_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|b2v_inst25|q\(2));

-- Location: LCCOMB_X45_Y40_N12
\b2v_inst7|b2v_inst10|c[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|b2v_inst10|c[0]~0_combout\ = \b2v_inst7|b2v_inst25|q\(2) $ (\Input[0]~input_o\ $ (\b2v_inst7|b2v_inst25|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst7|b2v_inst25|q\(2),
	datac => \Input[0]~input_o\,
	datad => \b2v_inst7|b2v_inst25|q\(3),
	combout => \b2v_inst7|b2v_inst10|c[0]~0_combout\);

-- Location: FF_X45_Y40_N13
\b2v_inst7|b2v_inst25|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst7|b2v_inst10|c[0]~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|b2v_inst25|q\(0));

-- Location: LCCOMB_X44_Y39_N8
\b2v_inst10|Syndrome~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Syndrome~13_combout\ = (\b2v_inst11|estadoAtual.iniciou~q\ & (((\b2v_inst7|b2v_inst25|q\(0))))) # (!\b2v_inst11|estadoAtual.iniciou~q\ & ((\b2v_inst11|estadoAtual.contagem~q\ & ((\b2v_inst7|b2v_inst25|q\(0)))) # 
-- (!\b2v_inst11|estadoAtual.contagem~q\ & (\b2v_inst10|Syndrome\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|Syndrome\(24),
	datab => \b2v_inst11|estadoAtual.iniciou~q\,
	datac => \b2v_inst11|estadoAtual.contagem~q\,
	datad => \b2v_inst7|b2v_inst25|q\(0),
	combout => \b2v_inst10|Syndrome~13_combout\);

-- Location: FF_X44_Y39_N9
\b2v_inst10|Syndrome[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst10|Syndrome~13_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \b2v_inst10|Syndrome[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|Syndrome\(20));

-- Location: LCCOMB_X46_Y40_N30
\b2v_inst7|b2v_inst7|c[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|b2v_inst7|c[1]~0_combout\ = \b2v_inst7|b2v_inst24|q\(0) $ (\Input[1]~input_o\ $ (\b2v_inst7|b2v_inst24|q\(1) $ (\b2v_inst7|b2v_inst24|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|b2v_inst24|q\(0),
	datab => \Input[1]~input_o\,
	datac => \b2v_inst7|b2v_inst24|q\(1),
	datad => \b2v_inst7|b2v_inst24|q\(3),
	combout => \b2v_inst7|b2v_inst7|c[1]~0_combout\);

-- Location: FF_X46_Y40_N31
\b2v_inst7|b2v_inst24|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst7|b2v_inst7|c[1]~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|b2v_inst24|q\(1));

-- Location: LCCOMB_X46_Y40_N28
\b2v_inst7|b2v_inst7|c[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|b2v_inst7|c[2]~1_combout\ = \b2v_inst7|b2v_inst24|q\(1) $ (\Input[2]~input_o\ $ (\b2v_inst7|b2v_inst24|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|b2v_inst24|q\(1),
	datab => \Input[2]~input_o\,
	datac => \b2v_inst7|b2v_inst24|q\(2),
	combout => \b2v_inst7|b2v_inst7|c[2]~1_combout\);

-- Location: FF_X46_Y40_N29
\b2v_inst7|b2v_inst24|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst7|b2v_inst7|c[2]~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|b2v_inst24|q\(2));

-- Location: LCCOMB_X46_Y40_N22
\b2v_inst7|b2v_inst7|c[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|b2v_inst7|c[3]~2_combout\ = \Input[3]~input_o\ $ (\b2v_inst7|b2v_inst24|q\(3) $ (\b2v_inst7|b2v_inst24|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[3]~input_o\,
	datac => \b2v_inst7|b2v_inst24|q\(3),
	datad => \b2v_inst7|b2v_inst24|q\(2),
	combout => \b2v_inst7|b2v_inst7|c[3]~2_combout\);

-- Location: FF_X46_Y40_N23
\b2v_inst7|b2v_inst24|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst7|b2v_inst7|c[3]~2_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|b2v_inst24|q\(3));

-- Location: LCCOMB_X46_Y40_N24
\b2v_inst7|b2v_inst7|c[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|b2v_inst7|c\(0) = \Input[0]~input_o\ $ (\b2v_inst7|b2v_inst24|q\(0) $ (\b2v_inst7|b2v_inst24|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[0]~input_o\,
	datac => \b2v_inst7|b2v_inst24|q\(0),
	datad => \b2v_inst7|b2v_inst24|q\(3),
	combout => \b2v_inst7|b2v_inst7|c\(0));

-- Location: FF_X46_Y40_N25
\b2v_inst7|b2v_inst24|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst7|b2v_inst7|c\(0),
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|b2v_inst24|q\(0));

-- Location: LCCOMB_X44_Y39_N16
\b2v_inst10|Syndrome~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Syndrome~17_combout\ = (\b2v_inst11|estadoAtual.contagem~q\ & (((\b2v_inst7|b2v_inst24|q\(0))))) # (!\b2v_inst11|estadoAtual.contagem~q\ & ((\b2v_inst11|estadoAtual.iniciou~q\ & ((\b2v_inst7|b2v_inst24|q\(0)))) # 
-- (!\b2v_inst11|estadoAtual.iniciou~q\ & (\b2v_inst10|Syndrome\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|estadoAtual.contagem~q\,
	datab => \b2v_inst10|Syndrome\(20),
	datac => \b2v_inst7|b2v_inst24|q\(0),
	datad => \b2v_inst11|estadoAtual.iniciou~q\,
	combout => \b2v_inst10|Syndrome~17_combout\);

-- Location: FF_X44_Y39_N17
\b2v_inst10|Syndrome[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst10|Syndrome~17_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \b2v_inst10|Syndrome[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|Syndrome\(16));

-- Location: LCCOMB_X46_Y40_N14
\b2v_inst7|b2v_inst6|c[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|b2v_inst6|c[3]~2_combout\ = \Input[3]~input_o\ $ (\b2v_inst7|b2v_inst21|q\(3) $ (\b2v_inst7|b2v_inst21|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[3]~input_o\,
	datac => \b2v_inst7|b2v_inst21|q\(3),
	datad => \b2v_inst7|b2v_inst21|q\(0),
	combout => \b2v_inst7|b2v_inst6|c[3]~2_combout\);

-- Location: FF_X46_Y40_N15
\b2v_inst7|b2v_inst21|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst7|b2v_inst6|c[3]~2_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|b2v_inst21|q\(3));

-- Location: LCCOMB_X46_Y40_N4
\b2v_inst7|b2v_inst6|c[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|b2v_inst6|c[2]~1_combout\ = \Input[2]~input_o\ $ (\b2v_inst7|b2v_inst21|q\(2) $ (\b2v_inst7|b2v_inst21|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[2]~input_o\,
	datac => \b2v_inst7|b2v_inst21|q\(2),
	datad => \b2v_inst7|b2v_inst21|q\(3),
	combout => \b2v_inst7|b2v_inst6|c[2]~1_combout\);

-- Location: FF_X46_Y40_N5
\b2v_inst7|b2v_inst21|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst7|b2v_inst6|c[2]~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|b2v_inst21|q\(2));

-- Location: LCCOMB_X46_Y40_N10
\b2v_inst7|b2v_inst6|c[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|b2v_inst6|c[1]~0_combout\ = \Input[1]~input_o\ $ (\b2v_inst7|b2v_inst21|q\(1) $ (\b2v_inst7|b2v_inst21|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[1]~input_o\,
	datac => \b2v_inst7|b2v_inst21|q\(1),
	datad => \b2v_inst7|b2v_inst21|q\(2),
	combout => \b2v_inst7|b2v_inst6|c[1]~0_combout\);

-- Location: FF_X46_Y40_N11
\b2v_inst7|b2v_inst21|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst7|b2v_inst6|c[1]~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|b2v_inst21|q\(1));

-- Location: LCCOMB_X46_Y40_N0
\b2v_inst7|b2v_inst6|c[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|b2v_inst6|c\(0) = \Input[0]~input_o\ $ (\b2v_inst7|b2v_inst21|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Input[0]~input_o\,
	datad => \b2v_inst7|b2v_inst21|q\(1),
	combout => \b2v_inst7|b2v_inst6|c\(0));

-- Location: FF_X46_Y40_N1
\b2v_inst7|b2v_inst21|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst7|b2v_inst6|c\(0),
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|b2v_inst21|q\(0));

-- Location: LCCOMB_X45_Y39_N8
\b2v_inst10|Syndrome~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Syndrome~21_combout\ = (\b2v_inst11|estadoAtual.contagem~q\ & (((\b2v_inst7|b2v_inst21|q\(0))))) # (!\b2v_inst11|estadoAtual.contagem~q\ & ((\b2v_inst11|estadoAtual.iniciou~q\ & ((\b2v_inst7|b2v_inst21|q\(0)))) # 
-- (!\b2v_inst11|estadoAtual.iniciou~q\ & (\b2v_inst10|Syndrome\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|Syndrome\(16),
	datab => \b2v_inst7|b2v_inst21|q\(0),
	datac => \b2v_inst11|estadoAtual.contagem~q\,
	datad => \b2v_inst11|estadoAtual.iniciou~q\,
	combout => \b2v_inst10|Syndrome~21_combout\);

-- Location: FF_X45_Y39_N9
\b2v_inst10|Syndrome[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst10|Syndrome~21_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \b2v_inst10|Syndrome[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|Syndrome\(12));

-- Location: LCCOMB_X45_Y40_N18
\b2v_inst7|b2v_inst5|c[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|b2v_inst5|c[1]~0_combout\ = \b2v_inst7|b2v_inst20|q\(3) $ (\b2v_inst7|b2v_inst20|q\(2) $ (\Input[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|b2v_inst20|q\(3),
	datab => \b2v_inst7|b2v_inst20|q\(2),
	datac => \Input[1]~input_o\,
	combout => \b2v_inst7|b2v_inst5|c[1]~0_combout\);

-- Location: FF_X45_Y40_N19
\b2v_inst7|b2v_inst20|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst7|b2v_inst5|c[1]~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|b2v_inst20|q\(1));

-- Location: LCCOMB_X45_Y40_N30
\b2v_inst7|b2v_inst5|c[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|b2v_inst5|c\(3) = \Input[3]~input_o\ $ (\b2v_inst7|b2v_inst20|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Input[3]~input_o\,
	datad => \b2v_inst7|b2v_inst20|q\(1),
	combout => \b2v_inst7|b2v_inst5|c\(3));

-- Location: FF_X45_Y40_N31
\b2v_inst7|b2v_inst20|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst7|b2v_inst5|c\(3),
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|b2v_inst20|q\(3));

-- Location: LCCOMB_X45_Y40_N8
\b2v_inst7|b2v_inst5|c[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|b2v_inst5|c[2]~1_combout\ = \b2v_inst7|b2v_inst20|q\(3) $ (\b2v_inst7|b2v_inst20|q\(0) $ (\Input[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|b2v_inst20|q\(3),
	datab => \b2v_inst7|b2v_inst20|q\(0),
	datac => \Input[2]~input_o\,
	combout => \b2v_inst7|b2v_inst5|c[2]~1_combout\);

-- Location: FF_X45_Y40_N9
\b2v_inst7|b2v_inst20|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst7|b2v_inst5|c[2]~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|b2v_inst20|q\(2));

-- Location: LCCOMB_X45_Y40_N16
\b2v_inst7|b2v_inst5|c[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|b2v_inst5|c\(0) = \b2v_inst7|b2v_inst20|q\(2) $ (\Input[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst7|b2v_inst20|q\(2),
	datac => \Input[0]~input_o\,
	combout => \b2v_inst7|b2v_inst5|c\(0));

-- Location: FF_X45_Y40_N17
\b2v_inst7|b2v_inst20|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst7|b2v_inst5|c\(0),
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|b2v_inst20|q\(0));

-- Location: LCCOMB_X45_Y39_N18
\b2v_inst10|Syndrome~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Syndrome~25_combout\ = (\b2v_inst11|estadoAtual.contagem~q\ & (((\b2v_inst7|b2v_inst20|q\(0))))) # (!\b2v_inst11|estadoAtual.contagem~q\ & ((\b2v_inst11|estadoAtual.iniciou~q\ & ((\b2v_inst7|b2v_inst20|q\(0)))) # 
-- (!\b2v_inst11|estadoAtual.iniciou~q\ & (\b2v_inst10|Syndrome\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|estadoAtual.contagem~q\,
	datab => \b2v_inst11|estadoAtual.iniciou~q\,
	datac => \b2v_inst10|Syndrome\(12),
	datad => \b2v_inst7|b2v_inst20|q\(0),
	combout => \b2v_inst10|Syndrome~25_combout\);

-- Location: FF_X45_Y39_N19
\b2v_inst10|Syndrome[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst10|Syndrome~25_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \b2v_inst10|Syndrome[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|Syndrome\(8));

-- Location: LCCOMB_X46_Y39_N4
\b2v_inst10|Syndrome~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Syndrome~29_combout\ = (\b2v_inst11|estadoAtual.iniciou~q\ & (\b2v_inst7|b2v_inst19|q\(0))) # (!\b2v_inst11|estadoAtual.iniciou~q\ & ((\b2v_inst11|estadoAtual.contagem~q\ & (\b2v_inst7|b2v_inst19|q\(0))) # (!\b2v_inst11|estadoAtual.contagem~q\ 
-- & ((\b2v_inst10|Syndrome\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|b2v_inst19|q\(0),
	datab => \b2v_inst10|Syndrome\(8),
	datac => \b2v_inst11|estadoAtual.iniciou~q\,
	datad => \b2v_inst11|estadoAtual.contagem~q\,
	combout => \b2v_inst10|Syndrome~29_combout\);

-- Location: FF_X46_Y39_N5
\b2v_inst10|Syndrome[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst10|Syndrome~29_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \b2v_inst10|Syndrome[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|Syndrome\(4));

-- Location: LCCOMB_X46_Y40_N8
\b2v_inst7|b2v_inst15|q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|b2v_inst15|q[0]~0_combout\ = \Input[0]~input_o\ $ (\b2v_inst7|b2v_inst15|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[0]~input_o\,
	datac => \b2v_inst7|b2v_inst15|q\(0),
	combout => \b2v_inst7|b2v_inst15|q[0]~0_combout\);

-- Location: FF_X46_Y40_N9
\b2v_inst7|b2v_inst15|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst7|b2v_inst15|q[0]~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|b2v_inst15|q\(0));

-- Location: LCCOMB_X46_Y39_N30
\b2v_inst10|DATA~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|DATA~3_combout\ = (\b2v_inst11|estadoAtual.iniciou~q\ & (((\b2v_inst7|b2v_inst15|q\(0))))) # (!\b2v_inst11|estadoAtual.iniciou~q\ & ((\b2v_inst11|estadoAtual.contagem~q\ & ((\b2v_inst7|b2v_inst15|q\(0)))) # 
-- (!\b2v_inst11|estadoAtual.contagem~q\ & (\b2v_inst10|Syndrome\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|estadoAtual.iniciou~q\,
	datab => \b2v_inst11|estadoAtual.contagem~q\,
	datac => \b2v_inst10|Syndrome\(4),
	datad => \b2v_inst7|b2v_inst15|q\(0),
	combout => \b2v_inst10|DATA~3_combout\);

-- Location: FF_X46_Y39_N31
\b2v_inst10|Syndrome[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst10|DATA~3_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \b2v_inst10|Syndrome[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|Syndrome\(0));

-- Location: LCCOMB_X37_Y14_N26
\b2v_inst|b2v_inst|clearS\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst|clearS~combout\ = (\b2v_inst|b2v_inst|estadoAtual.clearSyn~q\) # (!\b2v_inst|b2v_inst|estadoAtual.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst|estadoAtual.clearSyn~q\,
	datad => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	combout => \b2v_inst|b2v_inst|clearS~combout\);

-- Location: LCCOMB_X36_Y13_N30
\b2v_inst|b2v_inst|loadS\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst|loadS~combout\ = (\b2v_inst|b2v_inst|estadoAtual.avaliador~q\) # (\b2v_inst|b2v_inst|estadoAtual.localizador~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst|estadoAtual.avaliador~q\,
	datad => \b2v_inst|b2v_inst|estadoAtual.localizador~q\,
	combout => \b2v_inst|b2v_inst|loadS~combout\);

-- Location: FF_X37_Y14_N17
\b2v_inst|b2v_inst2|b2v_inst|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst10|Syndrome\(0),
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	sload => VCC,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst|q\(0));

-- Location: LCCOMB_X46_Y40_N18
\b2v_inst7|b2v_inst22|c[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|b2v_inst22|c\(3) = \b2v_inst7|b2v_inst15|q\(3) $ (\Input[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst7|b2v_inst15|q\(3),
	datad => \Input[3]~input_o\,
	combout => \b2v_inst7|b2v_inst22|c\(3));

-- Location: FF_X46_Y40_N19
\b2v_inst7|b2v_inst15|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst7|b2v_inst22|c\(3),
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|b2v_inst15|q\(3));

-- Location: LCCOMB_X44_Y39_N24
\b2v_inst10|Syndrome~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Syndrome~0_combout\ = (\b2v_inst11|estadoAtual.contagem~q\ & (((\b2v_inst7|b2v_inst32|q\(3))))) # (!\b2v_inst11|estadoAtual.contagem~q\ & ((\b2v_inst11|estadoAtual.iniciou~q\ & ((\b2v_inst7|b2v_inst32|q\(3)))) # 
-- (!\b2v_inst11|estadoAtual.iniciou~q\ & (\b2v_inst10|Syndrome\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|Syndrome\(3),
	datab => \b2v_inst7|b2v_inst32|q\(3),
	datac => \b2v_inst11|estadoAtual.contagem~q\,
	datad => \b2v_inst11|estadoAtual.iniciou~q\,
	combout => \b2v_inst10|Syndrome~0_combout\);

-- Location: FF_X44_Y39_N25
\b2v_inst10|Syndrome[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst10|Syndrome~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \b2v_inst10|Syndrome[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|Syndrome\(31));

-- Location: LCCOMB_X44_Y39_N14
\b2v_inst10|Syndrome~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Syndrome~6_combout\ = (\b2v_inst11|estadoAtual.contagem~q\ & (((\b2v_inst7|b2v_inst28|q\(3))))) # (!\b2v_inst11|estadoAtual.contagem~q\ & ((\b2v_inst11|estadoAtual.iniciou~q\ & ((\b2v_inst7|b2v_inst28|q\(3)))) # 
-- (!\b2v_inst11|estadoAtual.iniciou~q\ & (\b2v_inst10|Syndrome\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|estadoAtual.contagem~q\,
	datab => \b2v_inst10|Syndrome\(31),
	datac => \b2v_inst11|estadoAtual.iniciou~q\,
	datad => \b2v_inst7|b2v_inst28|q\(3),
	combout => \b2v_inst10|Syndrome~6_combout\);

-- Location: FF_X44_Y39_N15
\b2v_inst10|Syndrome[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst10|Syndrome~6_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \b2v_inst10|Syndrome[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|Syndrome\(27));

-- Location: LCCOMB_X44_Y39_N30
\b2v_inst10|Syndrome~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Syndrome~10_combout\ = (\b2v_inst11|estadoAtual.contagem~q\ & (((\b2v_inst7|b2v_inst25|q\(3))))) # (!\b2v_inst11|estadoAtual.contagem~q\ & ((\b2v_inst11|estadoAtual.iniciou~q\ & ((\b2v_inst7|b2v_inst25|q\(3)))) # 
-- (!\b2v_inst11|estadoAtual.iniciou~q\ & (\b2v_inst10|Syndrome\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|estadoAtual.contagem~q\,
	datab => \b2v_inst11|estadoAtual.iniciou~q\,
	datac => \b2v_inst10|Syndrome\(27),
	datad => \b2v_inst7|b2v_inst25|q\(3),
	combout => \b2v_inst10|Syndrome~10_combout\);

-- Location: FF_X44_Y39_N31
\b2v_inst10|Syndrome[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst10|Syndrome~10_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \b2v_inst10|Syndrome[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|Syndrome\(23));

-- Location: LCCOMB_X44_Y39_N12
\b2v_inst10|Syndrome~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Syndrome~14_combout\ = (\b2v_inst11|estadoAtual.contagem~q\ & (\b2v_inst7|b2v_inst24|q\(3))) # (!\b2v_inst11|estadoAtual.contagem~q\ & ((\b2v_inst11|estadoAtual.iniciou~q\ & (\b2v_inst7|b2v_inst24|q\(3))) # (!\b2v_inst11|estadoAtual.iniciou~q\ 
-- & ((\b2v_inst10|Syndrome\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|estadoAtual.contagem~q\,
	datab => \b2v_inst7|b2v_inst24|q\(3),
	datac => \b2v_inst10|Syndrome\(23),
	datad => \b2v_inst11|estadoAtual.iniciou~q\,
	combout => \b2v_inst10|Syndrome~14_combout\);

-- Location: FF_X44_Y39_N13
\b2v_inst10|Syndrome[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst10|Syndrome~14_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \b2v_inst10|Syndrome[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|Syndrome\(19));

-- Location: LCCOMB_X45_Y39_N2
\b2v_inst10|Syndrome~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Syndrome~18_combout\ = (\b2v_inst11|estadoAtual.iniciou~q\ & (((\b2v_inst7|b2v_inst21|q\(3))))) # (!\b2v_inst11|estadoAtual.iniciou~q\ & ((\b2v_inst11|estadoAtual.contagem~q\ & ((\b2v_inst7|b2v_inst21|q\(3)))) # 
-- (!\b2v_inst11|estadoAtual.contagem~q\ & (\b2v_inst10|Syndrome\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|Syndrome\(19),
	datab => \b2v_inst11|estadoAtual.iniciou~q\,
	datac => \b2v_inst7|b2v_inst21|q\(3),
	datad => \b2v_inst11|estadoAtual.contagem~q\,
	combout => \b2v_inst10|Syndrome~18_combout\);

-- Location: FF_X45_Y39_N3
\b2v_inst10|Syndrome[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst10|Syndrome~18_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \b2v_inst10|Syndrome[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|Syndrome\(15));

-- Location: LCCOMB_X45_Y39_N16
\b2v_inst10|Syndrome~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Syndrome~22_combout\ = (\b2v_inst11|estadoAtual.contagem~q\ & (((\b2v_inst7|b2v_inst20|q\(3))))) # (!\b2v_inst11|estadoAtual.contagem~q\ & ((\b2v_inst11|estadoAtual.iniciou~q\ & (\b2v_inst7|b2v_inst20|q\(3))) # 
-- (!\b2v_inst11|estadoAtual.iniciou~q\ & ((\b2v_inst10|Syndrome\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|estadoAtual.contagem~q\,
	datab => \b2v_inst11|estadoAtual.iniciou~q\,
	datac => \b2v_inst7|b2v_inst20|q\(3),
	datad => \b2v_inst10|Syndrome\(15),
	combout => \b2v_inst10|Syndrome~22_combout\);

-- Location: FF_X45_Y39_N17
\b2v_inst10|Syndrome[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst10|Syndrome~22_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \b2v_inst10|Syndrome[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|Syndrome\(11));

-- Location: LCCOMB_X46_Y39_N18
\b2v_inst10|Syndrome~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Syndrome~26_combout\ = (\b2v_inst11|estadoAtual.iniciou~q\ & (((\b2v_inst7|b2v_inst19|q\(3))))) # (!\b2v_inst11|estadoAtual.iniciou~q\ & ((\b2v_inst11|estadoAtual.contagem~q\ & ((\b2v_inst7|b2v_inst19|q\(3)))) # 
-- (!\b2v_inst11|estadoAtual.contagem~q\ & (\b2v_inst10|Syndrome\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|estadoAtual.iniciou~q\,
	datab => \b2v_inst11|estadoAtual.contagem~q\,
	datac => \b2v_inst10|Syndrome\(11),
	datad => \b2v_inst7|b2v_inst19|q\(3),
	combout => \b2v_inst10|Syndrome~26_combout\);

-- Location: FF_X46_Y39_N19
\b2v_inst10|Syndrome[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst10|Syndrome~26_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \b2v_inst10|Syndrome[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|Syndrome\(7));

-- Location: LCCOMB_X46_Y39_N20
\b2v_inst10|DATA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|DATA~0_combout\ = (\b2v_inst11|estadoAtual.iniciou~q\ & (\b2v_inst7|b2v_inst15|q\(3))) # (!\b2v_inst11|estadoAtual.iniciou~q\ & ((\b2v_inst11|estadoAtual.contagem~q\ & (\b2v_inst7|b2v_inst15|q\(3))) # (!\b2v_inst11|estadoAtual.contagem~q\ & 
-- ((\b2v_inst10|Syndrome\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|b2v_inst15|q\(3),
	datab => \b2v_inst10|Syndrome\(7),
	datac => \b2v_inst11|estadoAtual.iniciou~q\,
	datad => \b2v_inst11|estadoAtual.contagem~q\,
	combout => \b2v_inst10|DATA~0_combout\);

-- Location: FF_X46_Y39_N21
\b2v_inst10|Syndrome[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst10|DATA~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \b2v_inst10|Syndrome[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|Syndrome\(3));

-- Location: LCCOMB_X38_Y14_N16
\b2v_inst|b2v_inst2|b2v_inst|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst|q[3]~feeder_combout\ = \b2v_inst10|Syndrome\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst10|Syndrome\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst|q[3]~feeder_combout\);

-- Location: FF_X38_Y14_N17
\b2v_inst|b2v_inst2|b2v_inst|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst|q[3]~feeder_combout\,
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst|q\(3));

-- Location: LCCOMB_X36_Y16_N16
\b2v_inst|b2v_inst2|b2v_inst1|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst1|q[3]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst1|q[3]~feeder_combout\);

-- Location: FF_X36_Y16_N17
\b2v_inst|b2v_inst2|b2v_inst1|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst1|q[3]~feeder_combout\,
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst1|q\(3));

-- Location: FF_X36_Y17_N31
\b2v_inst|b2v_inst2|b2v_inst2|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|b2v_inst2|b2v_inst1|q\(3),
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	sload => VCC,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst2|q\(3));

-- Location: FF_X37_Y15_N1
\b2v_inst|b2v_inst2|b2v_inst3|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|b2v_inst2|b2v_inst2|q\(3),
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	sload => VCC,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst3|q\(3));

-- Location: FF_X35_Y12_N27
\b2v_inst|b2v_inst2|b2v_inst4|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|b2v_inst2|b2v_inst3|q\(3),
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	sload => VCC,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst4|q\(3));

-- Location: FF_X35_Y16_N17
\b2v_inst|b2v_inst2|b2v_inst1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|b2v_inst2|b2v_inst|q\(0),
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	sload => VCC,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst1|q\(0));

-- Location: FF_X36_Y17_N29
\b2v_inst|b2v_inst2|b2v_inst2|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|b2v_inst2|b2v_inst1|q\(0),
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	sload => VCC,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst2|q\(0));

-- Location: FF_X37_Y15_N27
\b2v_inst|b2v_inst2|b2v_inst3|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|b2v_inst2|b2v_inst2|q\(0),
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	sload => VCC,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst3|q\(0));

-- Location: FF_X35_Y12_N5
\b2v_inst|b2v_inst2|b2v_inst4|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|b2v_inst2|b2v_inst3|q\(0),
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	sload => VCC,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst4|q\(0));

-- Location: LCCOMB_X39_Y14_N8
\b2v_inst|b2v_inst2|b2v_inst26|q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst26|q[1]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst26|q[1]~feeder_combout\);

-- Location: FF_X39_Y14_N9
\b2v_inst|b2v_inst2|b2v_inst26|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst26|q[1]~feeder_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	ena => \b2v_inst|b2v_inst|di~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst26|q\(1));

-- Location: LCCOMB_X46_Y40_N20
\b2v_inst7|b2v_inst22|c[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|b2v_inst22|c\(2) = \b2v_inst7|b2v_inst15|q\(2) $ (\Input[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst7|b2v_inst15|q\(2),
	datad => \Input[2]~input_o\,
	combout => \b2v_inst7|b2v_inst22|c\(2));

-- Location: FF_X46_Y40_N21
\b2v_inst7|b2v_inst15|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst7|b2v_inst22|c\(2),
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|b2v_inst15|q\(2));

-- Location: LCCOMB_X46_Y39_N8
\b2v_inst10|Syndrome~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Syndrome~3_combout\ = (\b2v_inst11|estadoAtual.contagem~q\ & (((\b2v_inst7|b2v_inst32|q\(2))))) # (!\b2v_inst11|estadoAtual.contagem~q\ & ((\b2v_inst11|estadoAtual.iniciou~q\ & ((\b2v_inst7|b2v_inst32|q\(2)))) # 
-- (!\b2v_inst11|estadoAtual.iniciou~q\ & (\b2v_inst10|Syndrome\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|Syndrome\(2),
	datab => \b2v_inst11|estadoAtual.contagem~q\,
	datac => \b2v_inst11|estadoAtual.iniciou~q\,
	datad => \b2v_inst7|b2v_inst32|q\(2),
	combout => \b2v_inst10|Syndrome~3_combout\);

-- Location: FF_X46_Y39_N9
\b2v_inst10|Syndrome[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst10|Syndrome~3_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \b2v_inst10|Syndrome[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|Syndrome\(30));

-- Location: LCCOMB_X45_Y39_N26
\b2v_inst10|Syndrome~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Syndrome~7_combout\ = (\b2v_inst11|estadoAtual.contagem~q\ & (((\b2v_inst7|b2v_inst28|q\(2))))) # (!\b2v_inst11|estadoAtual.contagem~q\ & ((\b2v_inst11|estadoAtual.iniciou~q\ & ((\b2v_inst7|b2v_inst28|q\(2)))) # 
-- (!\b2v_inst11|estadoAtual.iniciou~q\ & (\b2v_inst10|Syndrome\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|estadoAtual.contagem~q\,
	datab => \b2v_inst11|estadoAtual.iniciou~q\,
	datac => \b2v_inst10|Syndrome\(30),
	datad => \b2v_inst7|b2v_inst28|q\(2),
	combout => \b2v_inst10|Syndrome~7_combout\);

-- Location: FF_X45_Y39_N27
\b2v_inst10|Syndrome[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst10|Syndrome~7_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \b2v_inst10|Syndrome[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|Syndrome\(26));

-- Location: LCCOMB_X44_Y39_N28
\b2v_inst10|Syndrome~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Syndrome~11_combout\ = (\b2v_inst11|estadoAtual.contagem~q\ & (((\b2v_inst7|b2v_inst25|q\(2))))) # (!\b2v_inst11|estadoAtual.contagem~q\ & ((\b2v_inst11|estadoAtual.iniciou~q\ & ((\b2v_inst7|b2v_inst25|q\(2)))) # 
-- (!\b2v_inst11|estadoAtual.iniciou~q\ & (\b2v_inst10|Syndrome\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|estadoAtual.contagem~q\,
	datab => \b2v_inst10|Syndrome\(26),
	datac => \b2v_inst11|estadoAtual.iniciou~q\,
	datad => \b2v_inst7|b2v_inst25|q\(2),
	combout => \b2v_inst10|Syndrome~11_combout\);

-- Location: FF_X44_Y39_N29
\b2v_inst10|Syndrome[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst10|Syndrome~11_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \b2v_inst10|Syndrome[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|Syndrome\(22));

-- Location: LCCOMB_X45_Y39_N12
\b2v_inst10|Syndrome~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Syndrome~15_combout\ = (\b2v_inst11|estadoAtual.contagem~q\ & (((\b2v_inst7|b2v_inst24|q\(2))))) # (!\b2v_inst11|estadoAtual.contagem~q\ & ((\b2v_inst11|estadoAtual.iniciou~q\ & ((\b2v_inst7|b2v_inst24|q\(2)))) # 
-- (!\b2v_inst11|estadoAtual.iniciou~q\ & (\b2v_inst10|Syndrome\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|estadoAtual.contagem~q\,
	datab => \b2v_inst11|estadoAtual.iniciou~q\,
	datac => \b2v_inst10|Syndrome\(22),
	datad => \b2v_inst7|b2v_inst24|q\(2),
	combout => \b2v_inst10|Syndrome~15_combout\);

-- Location: FF_X45_Y39_N13
\b2v_inst10|Syndrome[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst10|Syndrome~15_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \b2v_inst10|Syndrome[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|Syndrome\(18));

-- Location: LCCOMB_X45_Y39_N24
\b2v_inst10|Syndrome~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Syndrome~19_combout\ = (\b2v_inst11|estadoAtual.contagem~q\ & (((\b2v_inst7|b2v_inst21|q\(2))))) # (!\b2v_inst11|estadoAtual.contagem~q\ & ((\b2v_inst11|estadoAtual.iniciou~q\ & (\b2v_inst7|b2v_inst21|q\(2))) # 
-- (!\b2v_inst11|estadoAtual.iniciou~q\ & ((\b2v_inst10|Syndrome\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|estadoAtual.contagem~q\,
	datab => \b2v_inst11|estadoAtual.iniciou~q\,
	datac => \b2v_inst7|b2v_inst21|q\(2),
	datad => \b2v_inst10|Syndrome\(18),
	combout => \b2v_inst10|Syndrome~19_combout\);

-- Location: FF_X45_Y39_N25
\b2v_inst10|Syndrome[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst10|Syndrome~19_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \b2v_inst10|Syndrome[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|Syndrome\(14));

-- Location: LCCOMB_X45_Y39_N22
\b2v_inst10|Syndrome~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Syndrome~23_combout\ = (\b2v_inst11|estadoAtual.contagem~q\ & (((\b2v_inst7|b2v_inst20|q\(2))))) # (!\b2v_inst11|estadoAtual.contagem~q\ & ((\b2v_inst11|estadoAtual.iniciou~q\ & ((\b2v_inst7|b2v_inst20|q\(2)))) # 
-- (!\b2v_inst11|estadoAtual.iniciou~q\ & (\b2v_inst10|Syndrome\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|estadoAtual.contagem~q\,
	datab => \b2v_inst10|Syndrome\(14),
	datac => \b2v_inst7|b2v_inst20|q\(2),
	datad => \b2v_inst11|estadoAtual.iniciou~q\,
	combout => \b2v_inst10|Syndrome~23_combout\);

-- Location: FF_X45_Y39_N23
\b2v_inst10|Syndrome[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst10|Syndrome~23_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \b2v_inst10|Syndrome[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|Syndrome\(10));

-- Location: LCCOMB_X46_Y39_N16
\b2v_inst10|Syndrome~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Syndrome~27_combout\ = (\b2v_inst11|estadoAtual.iniciou~q\ & (((\b2v_inst7|b2v_inst19|q\(2))))) # (!\b2v_inst11|estadoAtual.iniciou~q\ & ((\b2v_inst11|estadoAtual.contagem~q\ & (\b2v_inst7|b2v_inst19|q\(2))) # 
-- (!\b2v_inst11|estadoAtual.contagem~q\ & ((\b2v_inst10|Syndrome\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|estadoAtual.iniciou~q\,
	datab => \b2v_inst11|estadoAtual.contagem~q\,
	datac => \b2v_inst7|b2v_inst19|q\(2),
	datad => \b2v_inst10|Syndrome\(10),
	combout => \b2v_inst10|Syndrome~27_combout\);

-- Location: FF_X46_Y39_N17
\b2v_inst10|Syndrome[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst10|Syndrome~27_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \b2v_inst10|Syndrome[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|Syndrome\(6));

-- Location: LCCOMB_X46_Y39_N6
\b2v_inst10|DATA~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|DATA~1_combout\ = (\b2v_inst11|estadoAtual.iniciou~q\ & (\b2v_inst7|b2v_inst15|q\(2))) # (!\b2v_inst11|estadoAtual.iniciou~q\ & ((\b2v_inst11|estadoAtual.contagem~q\ & (\b2v_inst7|b2v_inst15|q\(2))) # (!\b2v_inst11|estadoAtual.contagem~q\ & 
-- ((\b2v_inst10|Syndrome\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|b2v_inst15|q\(2),
	datab => \b2v_inst10|Syndrome\(6),
	datac => \b2v_inst11|estadoAtual.iniciou~q\,
	datad => \b2v_inst11|estadoAtual.contagem~q\,
	combout => \b2v_inst10|DATA~1_combout\);

-- Location: FF_X46_Y39_N7
\b2v_inst10|Syndrome[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst10|DATA~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \b2v_inst10|Syndrome[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|Syndrome\(2));

-- Location: LCCOMB_X36_Y14_N20
\b2v_inst|b2v_inst2|b2v_inst|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst|q[2]~feeder_combout\ = \b2v_inst10|Syndrome\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst10|Syndrome\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst|q[2]~feeder_combout\);

-- Location: FF_X36_Y14_N21
\b2v_inst|b2v_inst2|b2v_inst|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst|q[2]~feeder_combout\,
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst|q\(2));

-- Location: FF_X36_Y16_N7
\b2v_inst|b2v_inst2|b2v_inst1|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|b2v_inst2|b2v_inst|q\(2),
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	sload => VCC,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst1|q\(2));

-- Location: FF_X36_Y17_N25
\b2v_inst|b2v_inst2|b2v_inst2|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|b2v_inst2|b2v_inst1|q\(2),
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	sload => VCC,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst2|q\(2));

-- Location: LCCOMB_X37_Y15_N6
\b2v_inst|b2v_inst2|b2v_inst3|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst3|q[2]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst2|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst2|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst3|q[2]~feeder_combout\);

-- Location: FF_X37_Y15_N7
\b2v_inst|b2v_inst2|b2v_inst3|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst3|q[2]~feeder_combout\,
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst3|q\(2));

-- Location: FF_X35_Y12_N17
\b2v_inst|b2v_inst2|b2v_inst4|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|b2v_inst2|b2v_inst3|q\(2),
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	sload => VCC,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst4|q\(2));

-- Location: LCCOMB_X39_Y14_N2
\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ = (\b2v_inst|b2v_inst2|b2v_inst26|q\(2) & ((\b2v_inst|b2v_inst2|b2v_inst26|q\(1) & (!\b2v_inst|b2v_inst2|b2v_inst26|q\(0))) # (!\b2v_inst|b2v_inst2|b2v_inst26|q\(1) & 
-- ((!\b2v_inst|b2v_inst2|b2v_inst26|q\(3)))))) # (!\b2v_inst|b2v_inst2|b2v_inst26|q\(2) & (\b2v_inst|b2v_inst2|b2v_inst26|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst26|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst26|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst26|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst26|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst26|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst26|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\);

-- Location: LCCOMB_X39_Y14_N4
\b2v_inst|b2v_inst2|b2v_inst21|o[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[3]~2_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~2_combout\);

-- Location: LCCOMB_X39_Y14_N22
\b2v_inst|b2v_inst2|b2v_inst21|o[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[3]~3_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~3_combout\);

-- Location: LCCOMB_X37_Y13_N30
\b2v_inst|b2v_inst2|b2v_inst21|o[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[0]~17_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & (\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & (\b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\ $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & \b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~17_combout\);

-- Location: LCCOMB_X39_Y14_N12
\b2v_inst|b2v_inst2|b2v_inst21|o[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[1]~22_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\ $ 
-- (((!\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & \b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~22_combout\);

-- Location: LCCOMB_X39_Y14_N10
\b2v_inst|b2v_inst2|b2v_inst21|o[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[1]~23_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\ & !\b2v_inst|b2v_inst2|b2v_inst21|o[1]~22_combout\))))) 
-- # (!\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~22_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~23_combout\);

-- Location: LCCOMB_X37_Y14_N6
\b2v_inst|b2v_inst2|b2v_inst21|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|Mux5~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[2]~6_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[2]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~6_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~13_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|Mux5~0_combout\);

-- Location: LCCOMB_X38_Y13_N4
\b2v_inst|b2v_inst2|b2v_inst21|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|Mux2~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|Mux2~0_combout\);

-- Location: LCCOMB_X38_Y13_N6
\b2v_inst|b2v_inst2|b2v_inst21|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|Mux9~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|Mux9~0_combout\);

-- Location: LCCOMB_X38_Y13_N24
\b2v_inst|b2v_inst2|b2v_inst21|o[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[1]~24_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & (\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst21|Mux9~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst21|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|Mux2~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|Mux9~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~24_combout\);

-- Location: LCCOMB_X38_Y13_N2
\b2v_inst|b2v_inst2|b2v_inst21|o[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[1]~25_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~24_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|Mux5~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~24_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|Mux5~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~24_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~25_combout\);

-- Location: LCCOMB_X38_Y14_N4
\b2v_inst|b2v_inst2|b2v_inst21|o[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[1]~26_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\ & (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~23_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~23_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~25_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~26_combout\);

-- Location: LCCOMB_X38_Y14_N10
\b2v_inst|b2v_inst2|b2v_inst20|o[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\ = (!\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~26_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~30_combout\ & 
-- !\b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~30_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~26_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\);

-- Location: LCCOMB_X38_Y17_N24
\b2v_inst|b2v_inst2|b2v_inst18|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|Mux7~1_combout\ = \b2v_inst|b2v_inst2|b2v_inst10|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst10|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst10|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst10|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst10|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst10|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst18|Mux7~1_combout\);

-- Location: LCCOMB_X38_Y17_N26
\b2v_inst|b2v_inst2|b2v_inst18|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|Mux4~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst10|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst10|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst10|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst10|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst18|Mux4~0_combout\);

-- Location: LCCOMB_X39_Y15_N12
\b2v_inst|b2v_inst2|b2v_inst18|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|Mux5~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst10|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst10|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst10|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst10|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst10|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst10|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst18|Mux5~0_combout\);

-- Location: LCCOMB_X38_Y17_N28
\b2v_inst|b2v_inst2|b2v_inst18|o[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[2]~24_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst18|Mux5~0_combout\) # (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst18|Mux4~0_combout\ & ((!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst18|Mux4~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst18|Mux5~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[2]~24_combout\);

-- Location: LCCOMB_X38_Y17_N30
\b2v_inst|b2v_inst2|b2v_inst18|o[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[2]~25_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst18|o[2]~24_combout\ & (\b2v_inst|b2v_inst2|b2v_inst18|Mux9~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst18|o[2]~24_combout\ 
-- & ((\b2v_inst|b2v_inst2|b2v_inst18|Mux7~1_combout\))))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst18|o[2]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst18|Mux9~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst18|Mux7~1_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst18|o[2]~24_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[2]~25_combout\);

-- Location: LCCOMB_X38_Y14_N28
\b2v_inst|b2v_inst2|b2v_inst20|o[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\ = (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\) # (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\);

-- Location: LCCOMB_X38_Y14_N22
\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & \b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\);

-- Location: LCCOMB_X38_Y17_N20
\b2v_inst|b2v_inst2|b2v_inst18|o[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[2]~26_combout\ = (\b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\ & (\b2v_inst|b2v_inst2|b2v_inst18|o[2]~25_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst10|q\(2)))))) # (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst18|o[2]~25_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst10|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[2]~26_combout\);

-- Location: LCCOMB_X38_Y17_N6
\b2v_inst|b2v_inst2|b2v_inst18|o[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[2]~27_combout\ = (\b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst10|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst10|q\(2) & \b2v_inst|b2v_inst2|b2v_inst18|o[2]~26_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst18|o[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst10|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst10|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst18|o[2]~26_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[2]~27_combout\);

-- Location: LCCOMB_X39_Y17_N10
\b2v_inst|b2v_inst2|b2v_inst18|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|Mux0~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst10|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst10|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst10|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst10|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst18|Mux0~0_combout\);

-- Location: LCCOMB_X39_Y15_N2
\b2v_inst|b2v_inst2|b2v_inst18|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|Mux3~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst10|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst10|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst10|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst10|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst10|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst10|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst18|Mux3~0_combout\);

-- Location: LCCOMB_X39_Y17_N4
\b2v_inst|b2v_inst2|b2v_inst18|o[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[2]~30_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst18|Mux3~0_combout\) # (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst18|Mux0~0_combout\ & ((!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst18|Mux0~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst18|Mux3~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[2]~30_combout\);

-- Location: LCCOMB_X39_Y17_N26
\b2v_inst|b2v_inst2|b2v_inst18|o[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[2]~31_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst10|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst10|q\(1) & \b2v_inst|b2v_inst2|b2v_inst18|o[2]~30_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst18|o[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst10|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst10|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst18|o[2]~30_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[2]~31_combout\);

-- Location: LCCOMB_X38_Y17_N0
\b2v_inst|b2v_inst2|b2v_inst18|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|Mux7~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst10|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst10|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst10|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst10|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst18|Mux7~0_combout\);

-- Location: LCCOMB_X38_Y17_N16
\b2v_inst|b2v_inst2|b2v_inst18|o[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[2]~28_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst10|q\(0) $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst10|q\(2) & !\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst10|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst10|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[2]~28_combout\);

-- Location: LCCOMB_X38_Y17_N14
\b2v_inst|b2v_inst2|b2v_inst18|o[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[2]~29_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst18|Mux7~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst10|q\(2) & !\b2v_inst|b2v_inst2|b2v_inst18|o[2]~28_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst18|o[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst10|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst18|Mux7~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst18|o[2]~28_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[2]~29_combout\);

-- Location: LCCOMB_X39_Y17_N20
\b2v_inst|b2v_inst2|b2v_inst6|q[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst6|q[2]~6_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst18|o[2]~29_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst18|o[2]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst18|o[2]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst18|o[2]~29_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst6|q[2]~6_combout\);

-- Location: LCCOMB_X39_Y17_N14
\b2v_inst|b2v_inst2|b2v_inst6|q[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst6|q[2]~7_combout\ = \b2v_inst|b2v_inst2|b2v_inst6|q\(2) $ (((\b2v_inst|b2v_inst2|b2v_inst6|q[2]~6_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst18|o[2]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst18|o[2]~27_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst6|q[2]~6_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst6|q[2]~7_combout\);

-- Location: FF_X39_Y17_N11
\b2v_inst|b2v_inst2|b2v_inst6|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|b2v_inst2|b2v_inst6|q[2]~7_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst6|q\(2));

-- Location: LCCOMB_X46_Y39_N2
\b2v_inst10|Syndrome~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Syndrome~4_combout\ = (\b2v_inst11|estadoAtual.contagem~q\ & (((\b2v_inst7|b2v_inst32|q\(1))))) # (!\b2v_inst11|estadoAtual.contagem~q\ & ((\b2v_inst11|estadoAtual.iniciou~q\ & ((\b2v_inst7|b2v_inst32|q\(1)))) # 
-- (!\b2v_inst11|estadoAtual.iniciou~q\ & (\b2v_inst10|Syndrome\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|Syndrome\(1),
	datab => \b2v_inst11|estadoAtual.contagem~q\,
	datac => \b2v_inst11|estadoAtual.iniciou~q\,
	datad => \b2v_inst7|b2v_inst32|q\(1),
	combout => \b2v_inst10|Syndrome~4_combout\);

-- Location: FF_X46_Y39_N3
\b2v_inst10|Syndrome[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst10|Syndrome~4_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \b2v_inst10|Syndrome[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|Syndrome\(29));

-- Location: LCCOMB_X45_Y39_N28
\b2v_inst10|Syndrome~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Syndrome~8_combout\ = (\b2v_inst11|estadoAtual.contagem~q\ & (((\b2v_inst7|b2v_inst28|q\(1))))) # (!\b2v_inst11|estadoAtual.contagem~q\ & ((\b2v_inst11|estadoAtual.iniciou~q\ & (\b2v_inst7|b2v_inst28|q\(1))) # 
-- (!\b2v_inst11|estadoAtual.iniciou~q\ & ((\b2v_inst10|Syndrome\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|estadoAtual.contagem~q\,
	datab => \b2v_inst11|estadoAtual.iniciou~q\,
	datac => \b2v_inst7|b2v_inst28|q\(1),
	datad => \b2v_inst10|Syndrome\(29),
	combout => \b2v_inst10|Syndrome~8_combout\);

-- Location: FF_X45_Y39_N29
\b2v_inst10|Syndrome[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst10|Syndrome~8_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \b2v_inst10|Syndrome[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|Syndrome\(25));

-- Location: LCCOMB_X44_Y39_N18
\b2v_inst10|Syndrome~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Syndrome~12_combout\ = (\b2v_inst11|estadoAtual.contagem~q\ & (((\b2v_inst7|b2v_inst25|q\(1))))) # (!\b2v_inst11|estadoAtual.contagem~q\ & ((\b2v_inst11|estadoAtual.iniciou~q\ & ((\b2v_inst7|b2v_inst25|q\(1)))) # 
-- (!\b2v_inst11|estadoAtual.iniciou~q\ & (\b2v_inst10|Syndrome\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|estadoAtual.contagem~q\,
	datab => \b2v_inst10|Syndrome\(25),
	datac => \b2v_inst11|estadoAtual.iniciou~q\,
	datad => \b2v_inst7|b2v_inst25|q\(1),
	combout => \b2v_inst10|Syndrome~12_combout\);

-- Location: FF_X44_Y39_N19
\b2v_inst10|Syndrome[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst10|Syndrome~12_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \b2v_inst10|Syndrome[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|Syndrome\(21));

-- Location: LCCOMB_X44_Y39_N22
\b2v_inst10|Syndrome~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Syndrome~16_combout\ = (\b2v_inst11|estadoAtual.iniciou~q\ & (\b2v_inst7|b2v_inst24|q\(1))) # (!\b2v_inst11|estadoAtual.iniciou~q\ & ((\b2v_inst11|estadoAtual.contagem~q\ & (\b2v_inst7|b2v_inst24|q\(1))) # (!\b2v_inst11|estadoAtual.contagem~q\ 
-- & ((\b2v_inst10|Syndrome\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|b2v_inst24|q\(1),
	datab => \b2v_inst11|estadoAtual.iniciou~q\,
	datac => \b2v_inst11|estadoAtual.contagem~q\,
	datad => \b2v_inst10|Syndrome\(21),
	combout => \b2v_inst10|Syndrome~16_combout\);

-- Location: FF_X44_Y39_N23
\b2v_inst10|Syndrome[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst10|Syndrome~16_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \b2v_inst10|Syndrome[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|Syndrome\(17));

-- Location: LCCOMB_X45_Y39_N6
\b2v_inst10|Syndrome~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Syndrome~20_combout\ = (\b2v_inst11|estadoAtual.iniciou~q\ & (\b2v_inst7|b2v_inst21|q\(1))) # (!\b2v_inst11|estadoAtual.iniciou~q\ & ((\b2v_inst11|estadoAtual.contagem~q\ & (\b2v_inst7|b2v_inst21|q\(1))) # (!\b2v_inst11|estadoAtual.contagem~q\ 
-- & ((\b2v_inst10|Syndrome\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|b2v_inst21|q\(1),
	datab => \b2v_inst11|estadoAtual.iniciou~q\,
	datac => \b2v_inst11|estadoAtual.contagem~q\,
	datad => \b2v_inst10|Syndrome\(17),
	combout => \b2v_inst10|Syndrome~20_combout\);

-- Location: FF_X45_Y39_N7
\b2v_inst10|Syndrome[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst10|Syndrome~20_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \b2v_inst10|Syndrome[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|Syndrome\(13));

-- Location: LCCOMB_X45_Y39_N4
\b2v_inst10|Syndrome~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Syndrome~24_combout\ = (\b2v_inst11|estadoAtual.contagem~q\ & (((\b2v_inst7|b2v_inst20|q\(1))))) # (!\b2v_inst11|estadoAtual.contagem~q\ & ((\b2v_inst11|estadoAtual.iniciou~q\ & (\b2v_inst7|b2v_inst20|q\(1))) # 
-- (!\b2v_inst11|estadoAtual.iniciou~q\ & ((\b2v_inst10|Syndrome\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|estadoAtual.contagem~q\,
	datab => \b2v_inst11|estadoAtual.iniciou~q\,
	datac => \b2v_inst7|b2v_inst20|q\(1),
	datad => \b2v_inst10|Syndrome\(13),
	combout => \b2v_inst10|Syndrome~24_combout\);

-- Location: FF_X45_Y39_N5
\b2v_inst10|Syndrome[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst10|Syndrome~24_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \b2v_inst10|Syndrome[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|Syndrome\(9));

-- Location: LCCOMB_X46_Y39_N26
\b2v_inst10|Syndrome~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|Syndrome~28_combout\ = (\b2v_inst11|estadoAtual.iniciou~q\ & (((\b2v_inst7|b2v_inst19|q\(1))))) # (!\b2v_inst11|estadoAtual.iniciou~q\ & ((\b2v_inst11|estadoAtual.contagem~q\ & ((\b2v_inst7|b2v_inst19|q\(1)))) # 
-- (!\b2v_inst11|estadoAtual.contagem~q\ & (\b2v_inst10|Syndrome\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|estadoAtual.iniciou~q\,
	datab => \b2v_inst10|Syndrome\(9),
	datac => \b2v_inst7|b2v_inst19|q\(1),
	datad => \b2v_inst11|estadoAtual.contagem~q\,
	combout => \b2v_inst10|Syndrome~28_combout\);

-- Location: FF_X46_Y39_N27
\b2v_inst10|Syndrome[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst10|Syndrome~28_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \b2v_inst10|Syndrome[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|Syndrome\(5));

-- Location: LCCOMB_X46_Y40_N2
\b2v_inst7|b2v_inst15|q[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|b2v_inst15|q[1]~1_combout\ = \Input[1]~input_o\ $ (\b2v_inst7|b2v_inst15|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[1]~input_o\,
	datac => \b2v_inst7|b2v_inst15|q\(1),
	combout => \b2v_inst7|b2v_inst15|q[1]~1_combout\);

-- Location: FF_X46_Y40_N3
\b2v_inst7|b2v_inst15|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst7|b2v_inst15|q[1]~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|b2v_inst15|q\(1));

-- Location: LCCOMB_X46_Y39_N12
\b2v_inst10|DATA~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|DATA~2_combout\ = (\b2v_inst11|estadoAtual.iniciou~q\ & (((\b2v_inst7|b2v_inst15|q\(1))))) # (!\b2v_inst11|estadoAtual.iniciou~q\ & ((\b2v_inst11|estadoAtual.contagem~q\ & ((\b2v_inst7|b2v_inst15|q\(1)))) # 
-- (!\b2v_inst11|estadoAtual.contagem~q\ & (\b2v_inst10|Syndrome\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|estadoAtual.iniciou~q\,
	datab => \b2v_inst11|estadoAtual.contagem~q\,
	datac => \b2v_inst10|Syndrome\(5),
	datad => \b2v_inst7|b2v_inst15|q\(1),
	combout => \b2v_inst10|DATA~2_combout\);

-- Location: FF_X46_Y39_N13
\b2v_inst10|Syndrome[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst10|DATA~2_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \b2v_inst10|Syndrome[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|Syndrome\(1));

-- Location: FF_X37_Y13_N1
\b2v_inst|b2v_inst2|b2v_inst|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst10|Syndrome\(1),
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	sload => VCC,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst|q\(1));

-- Location: FF_X37_Y16_N13
\b2v_inst|b2v_inst2|b2v_inst1|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|b2v_inst2|b2v_inst|q\(1),
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	sload => VCC,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst1|q\(1));

-- Location: FF_X36_Y17_N1
\b2v_inst|b2v_inst2|b2v_inst2|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|b2v_inst2|b2v_inst1|q\(1),
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	sload => VCC,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst2|q\(1));

-- Location: LCCOMB_X35_Y17_N22
\b2v_inst|b2v_inst2|b2v_inst14|o[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[0]~9_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst6|q\(1))))) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst2|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst2|q\(3) & 
-- \b2v_inst|b2v_inst2|b2v_inst6|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst2|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst2|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[0]~9_combout\);

-- Location: LCCOMB_X35_Y17_N28
\b2v_inst|b2v_inst2|b2v_inst14|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|Mux8~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst2|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst2|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst2|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst2|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|Mux8~0_combout\);

-- Location: LCCOMB_X35_Y17_N14
\b2v_inst|b2v_inst2|b2v_inst14|o[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[0]~10_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst14|Mux8~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst2|q\(3) & \b2v_inst|b2v_inst2|b2v_inst14|o[0]~9_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst14|o[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst2|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|o[0]~9_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|Mux8~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[0]~10_combout\);

-- Location: LCCOMB_X36_Y17_N6
\b2v_inst|b2v_inst2|b2v_inst14|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|Mux3~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst2|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst2|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst2|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst2|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst2|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst2|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|Mux3~0_combout\);

-- Location: LCCOMB_X36_Y17_N30
\b2v_inst|b2v_inst2|b2v_inst14|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|Mux9~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst2|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst2|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst2|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst2|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst2|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst2|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst2|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst2|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|Mux9~0_combout\);

-- Location: LCCOMB_X36_Y17_N0
\b2v_inst|b2v_inst2|b2v_inst14|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|Mux2~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst2|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst2|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst2|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst2|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|Mux2~0_combout\);

-- Location: LCCOMB_X35_Y17_N12
\b2v_inst|b2v_inst2|b2v_inst14|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|Mux10~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst2|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst2|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst2|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst2|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst2|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst2|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|Mux10~0_combout\);

-- Location: LCCOMB_X35_Y17_N18
\b2v_inst|b2v_inst2|b2v_inst14|o[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[0]~7_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst6|q\(0))) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & 
-- ((\b2v_inst|b2v_inst2|b2v_inst14|Mux10~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst14|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|Mux2~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|Mux10~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[0]~7_combout\);

-- Location: LCCOMB_X35_Y17_N16
\b2v_inst|b2v_inst2|b2v_inst14|o[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[0]~8_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst14|o[0]~7_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst14|Mux9~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst14|o[0]~7_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst14|Mux3~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst14|o[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst14|Mux3~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst14|Mux9~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[0]~7_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[0]~8_combout\);

-- Location: LCCOMB_X35_Y17_N4
\b2v_inst|b2v_inst2|b2v_inst14|o[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[0]~11_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(3) & ((\b2v_inst|b2v_inst2|b2v_inst6|q\(2) & ((\b2v_inst|b2v_inst2|b2v_inst14|o[0]~8_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(2) & 
-- (\b2v_inst|b2v_inst2|b2v_inst14|o[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|o[0]~10_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[0]~8_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[0]~11_combout\);

-- Location: LCCOMB_X37_Y17_N12
\b2v_inst|b2v_inst2|b2v_inst14|o[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[2]~3_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(2)) # ((\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & \b2v_inst|b2v_inst2|b2v_inst6|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst6|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~3_combout\);

-- Location: LCCOMB_X37_Y17_N18
\b2v_inst|b2v_inst2|b2v_inst14|o[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[2]~2_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(2)) # ((\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & !\b2v_inst|b2v_inst2|b2v_inst6|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst6|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~2_combout\);

-- Location: LCCOMB_X36_Y17_N14
\b2v_inst|b2v_inst2|b2v_inst14|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|Mux0~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst2|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst2|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst2|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst2|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|Mux0~0_combout\);

-- Location: LCCOMB_X36_Y17_N28
\b2v_inst|b2v_inst2|b2v_inst14|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|Mux5~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst2|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst2|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst2|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst2|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst2|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst2|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|Mux5~0_combout\);

-- Location: LCCOMB_X37_Y17_N2
\b2v_inst|b2v_inst2|b2v_inst14|o[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[0]~0_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst6|q\(0))))) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst2|q\(2) $ (((\b2v_inst|b2v_inst2|b2v_inst2|q\(0) & 
-- \b2v_inst|b2v_inst2|b2v_inst6|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst2|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst2|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[0]~0_combout\);

-- Location: LCCOMB_X37_Y17_N28
\b2v_inst|b2v_inst2|b2v_inst14|o[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[0]~1_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst14|o[0]~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst14|Mux5~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst14|o[0]~0_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst14|Mux0~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst14|o[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst14|Mux0~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|Mux5~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[0]~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[0]~1_combout\);

-- Location: LCCOMB_X37_Y17_N30
\b2v_inst|b2v_inst2|b2v_inst14|o[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[0]~4_combout\ = (\b2v_inst|b2v_inst2|b2v_inst14|o[2]~3_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst14|o[0]~1_combout\) # (!\b2v_inst|b2v_inst2|b2v_inst14|o[2]~2_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst14|o[2]~3_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst2|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst14|o[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~3_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst2|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[0]~1_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[0]~4_combout\);

-- Location: LCCOMB_X37_Y17_N16
\b2v_inst|b2v_inst2|b2v_inst14|o[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[2]~5_combout\ = (!\b2v_inst|b2v_inst2|b2v_inst6|q\(2) & \b2v_inst|b2v_inst2|b2v_inst6|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst6|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~5_combout\);

-- Location: LCCOMB_X37_Y17_N14
\b2v_inst|b2v_inst2|b2v_inst14|o[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[0]~6_combout\ = (\b2v_inst|b2v_inst2|b2v_inst14|o[2]~5_combout\ & (\b2v_inst|b2v_inst2|b2v_inst2|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst2|q\(0) & \b2v_inst|b2v_inst2|b2v_inst14|o[0]~4_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst14|o[2]~5_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst14|o[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst2|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst2|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|o[0]~4_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~5_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[0]~6_combout\);

-- Location: LCCOMB_X41_Y14_N30
\b2v_inst|b2v_inst2|b2v_inst22|O[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst22|O[3]~3_combout\ = (!\b2v_inst|b2v_inst|di~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst36|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst|di~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst36|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst22|O[3]~3_combout\);

-- Location: FF_X41_Y14_N31
\b2v_inst|b2v_inst2|b2v_inst9|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst22|O[3]~3_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	ena => \b2v_inst|b2v_inst|estadoAtual.localizador~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst9|q\(3));

-- Location: LCCOMB_X39_Y16_N6
\b2v_inst|b2v_inst2|b2v_inst17|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|Mux7~1_combout\ = \b2v_inst|b2v_inst2|b2v_inst9|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst9|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst9|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst9|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst9|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst17|Mux7~1_combout\);

-- Location: LCCOMB_X39_Y13_N2
\b2v_inst|b2v_inst2|b2v_inst17|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|Mux9~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst9|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst9|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst9|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst9|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst9|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst9|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst9|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst17|Mux9~0_combout\);

-- Location: LCCOMB_X39_Y16_N4
\b2v_inst|b2v_inst2|b2v_inst17|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|Mux4~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst9|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst9|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst9|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst17|Mux4~0_combout\);

-- Location: LCCOMB_X41_Y16_N12
\b2v_inst|b2v_inst2|b2v_inst17|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|Mux5~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst9|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst9|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst9|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst9|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst9|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst17|Mux5~0_combout\);

-- Location: LCCOMB_X39_Y16_N0
\b2v_inst|b2v_inst2|b2v_inst17|o[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[2]~24_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst17|Mux5~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst17|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst17|Mux4~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst17|Mux5~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[2]~24_combout\);

-- Location: LCCOMB_X39_Y16_N26
\b2v_inst|b2v_inst2|b2v_inst17|o[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[2]~25_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst17|o[2]~24_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst17|Mux9~0_combout\))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst17|o[2]~24_combout\ & (\b2v_inst|b2v_inst2|b2v_inst17|Mux7~1_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst17|o[2]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst17|Mux7~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst17|Mux9~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[2]~24_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[2]~25_combout\);

-- Location: LCCOMB_X39_Y16_N12
\b2v_inst|b2v_inst2|b2v_inst17|o[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[2]~26_combout\ = (\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst17|o[2]~25_combout\) # (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\ & (\b2v_inst|b2v_inst2|b2v_inst9|q\(2) & ((\b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst17|o[2]~25_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[2]~26_combout\);

-- Location: LCCOMB_X39_Y16_N30
\b2v_inst|b2v_inst2|b2v_inst17|o[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[2]~27_combout\ = (\b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst9|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst9|q\(2) & \b2v_inst|b2v_inst2|b2v_inst17|o[2]~26_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst17|o[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst9|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst9|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[2]~26_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[2]~27_combout\);

-- Location: LCCOMB_X39_Y13_N24
\b2v_inst|b2v_inst2|b2v_inst17|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|Mux7~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst9|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst9|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst9|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst9|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst17|Mux7~0_combout\);

-- Location: LCCOMB_X38_Y16_N16
\b2v_inst|b2v_inst2|b2v_inst17|o[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[2]~28_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst9|q\(0) $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst9|q\(2) & !\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst9|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[2]~28_combout\);

-- Location: LCCOMB_X38_Y16_N26
\b2v_inst|b2v_inst2|b2v_inst17|o[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[2]~29_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst17|Mux7~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst9|q\(2) & !\b2v_inst|b2v_inst2|b2v_inst17|o[2]~28_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst17|o[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst17|Mux7~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[2]~28_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[2]~29_combout\);

-- Location: LCCOMB_X39_Y13_N20
\b2v_inst|b2v_inst2|b2v_inst17|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|Mux3~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst9|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst9|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst9|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst9|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst9|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst9|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst17|Mux3~0_combout\);

-- Location: LCCOMB_X39_Y13_N26
\b2v_inst|b2v_inst2|b2v_inst17|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|Mux0~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst9|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst9|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst9|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst9|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst17|Mux0~0_combout\);

-- Location: LCCOMB_X39_Y13_N16
\b2v_inst|b2v_inst2|b2v_inst17|o[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[2]~30_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst17|Mux3~0_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst17|Mux0~0_combout\ & !\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst17|Mux3~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst17|Mux0~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[2]~30_combout\);

-- Location: LCCOMB_X39_Y13_N22
\b2v_inst|b2v_inst2|b2v_inst17|o[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[2]~31_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst9|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst9|q\(1) & \b2v_inst|b2v_inst2|b2v_inst17|o[2]~30_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst17|o[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst9|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst9|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[2]~30_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[2]~31_combout\);

-- Location: LCCOMB_X38_Y16_N20
\b2v_inst|b2v_inst2|b2v_inst5|q[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst5|q[2]~6_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & (\b2v_inst|b2v_inst2|b2v_inst17|o[2]~29_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst17|o[2]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst17|o[2]~29_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[2]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst5|q[2]~6_combout\);

-- Location: LCCOMB_X38_Y16_N14
\b2v_inst|b2v_inst2|b2v_inst5|q[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst5|q[2]~7_combout\ = \b2v_inst|b2v_inst2|b2v_inst5|q\(2) $ (((\b2v_inst|b2v_inst2|b2v_inst5|q[2]~6_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst17|o[2]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst17|o[2]~27_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst5|q[2]~6_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst5|q[2]~7_combout\);

-- Location: LCCOMB_X38_Y16_N24
\b2v_inst|b2v_inst2|b2v_inst5|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst5|q[2]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst5|q[2]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst5|q[2]~7_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst5|q[2]~feeder_combout\);

-- Location: FF_X38_Y16_N25
\b2v_inst|b2v_inst2|b2v_inst5|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst5|q[2]~feeder_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst5|q\(2));

-- Location: LCCOMB_X39_Y16_N16
\b2v_inst|b2v_inst2|b2v_inst17|o[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[1]~12_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst9|q\(3) $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst9|q\(1) & !\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst9|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[1]~12_combout\);

-- Location: LCCOMB_X39_Y16_N10
\b2v_inst|b2v_inst2|b2v_inst17|o[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[1]~13_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst9|q\(0) $ (((\b2v_inst|b2v_inst2|b2v_inst9|q\(1) & !\b2v_inst|b2v_inst2|b2v_inst17|o[1]~12_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst17|o[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst9|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst9|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[1]~12_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[1]~13_combout\);

-- Location: LCCOMB_X39_Y13_N18
\b2v_inst|b2v_inst2|b2v_inst17|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|Mux2~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst9|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst9|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst9|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst9|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst17|Mux2~0_combout\);

-- Location: LCCOMB_X39_Y16_N24
\b2v_inst|b2v_inst2|b2v_inst17|o[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[1]~14_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst17|Mux9~0_combout\) # (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst17|Mux2~0_combout\ & ((!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst17|Mux2~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst17|Mux9~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[1]~14_combout\);

-- Location: LCCOMB_X39_Y16_N18
\b2v_inst|b2v_inst2|b2v_inst17|o[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[1]~15_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst17|o[1]~14_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst17|Mux5~0_combout\))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst17|o[1]~14_combout\ & (\b2v_inst|b2v_inst2|b2v_inst9|q\(2))))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst17|o[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst17|Mux5~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[1]~14_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[1]~15_combout\);

-- Location: LCCOMB_X39_Y16_N8
\b2v_inst|b2v_inst2|b2v_inst5|q[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst5|q[1]~2_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & (\b2v_inst|b2v_inst2|b2v_inst17|o[1]~13_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst17|o[1]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst17|o[1]~13_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[1]~15_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst5|q[1]~2_combout\);

-- Location: LCCOMB_X41_Y16_N26
\b2v_inst|b2v_inst2|b2v_inst17|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|Mux5~1_combout\ = \b2v_inst|b2v_inst2|b2v_inst9|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst9|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst9|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst17|Mux5~1_combout\);

-- Location: LCCOMB_X39_Y16_N20
\b2v_inst|b2v_inst2|b2v_inst17|o[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[1]~8_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst17|Mux5~1_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst17|Mux0~0_combout\ & !\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst17|Mux5~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst17|Mux0~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[1]~8_combout\);

-- Location: LCCOMB_X39_Y16_N14
\b2v_inst|b2v_inst2|b2v_inst17|o[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[1]~9_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst17|o[1]~8_combout\ & (\b2v_inst|b2v_inst2|b2v_inst17|Mux10~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst17|o[1]~8_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst17|Mux3~0_combout\))))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst17|o[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst17|Mux10~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst17|Mux3~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[1]~8_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[1]~9_combout\);

-- Location: LCCOMB_X39_Y16_N28
\b2v_inst|b2v_inst2|b2v_inst17|o[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[1]~10_combout\ = (\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst17|o[1]~9_combout\) # (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\ & (\b2v_inst|b2v_inst2|b2v_inst9|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst17|o[1]~9_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[1]~10_combout\);

-- Location: LCCOMB_X39_Y16_N2
\b2v_inst|b2v_inst2|b2v_inst17|o[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[1]~11_combout\ = (\b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst17|o[1]~10_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst17|Mux7~1_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst17|o[1]~10_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst17|Mux4~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst17|o[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst17|Mux4~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst17|Mux7~1_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[1]~10_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[1]~11_combout\);

-- Location: LCCOMB_X39_Y16_N22
\b2v_inst|b2v_inst2|b2v_inst5|q[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst5|q[1]~3_combout\ = \b2v_inst|b2v_inst2|b2v_inst5|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst5|q[1]~2_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst17|o[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst5|q[1]~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[1]~11_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst5|q[1]~3_combout\);

-- Location: FF_X39_Y16_N5
\b2v_inst|b2v_inst2|b2v_inst5|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|b2v_inst2|b2v_inst5|q[1]~3_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst5|q\(1));

-- Location: LCCOMB_X34_Y16_N4
\b2v_inst|b2v_inst2|b2v_inst13|o[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[1]~10_combout\ = (!\b2v_inst|b2v_inst2|b2v_inst5|q\(2) & \b2v_inst|b2v_inst2|b2v_inst5|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst5|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~10_combout\);

-- Location: LCCOMB_X35_Y16_N12
\b2v_inst|b2v_inst2|b2v_inst13|o[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[1]~8_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(2)) # ((\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & \b2v_inst|b2v_inst2|b2v_inst5|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst5|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~8_combout\);

-- Location: LCCOMB_X36_Y16_N0
\b2v_inst|b2v_inst2|b2v_inst13|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|Mux0~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst1|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst1|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst1|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst1|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|Mux0~0_combout\);

-- Location: LCCOMB_X36_Y16_N10
\b2v_inst|b2v_inst2|b2v_inst13|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|Mux5~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst1|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst1|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst1|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst1|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst1|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst1|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|Mux5~0_combout\);

-- Location: LCCOMB_X35_Y16_N28
\b2v_inst|b2v_inst2|b2v_inst13|o[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[0]~5_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst5|q\(0))))) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst1|q\(2) $ (((\b2v_inst|b2v_inst2|b2v_inst1|q\(0) & 
-- \b2v_inst|b2v_inst2|b2v_inst5|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst1|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst1|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~5_combout\);

-- Location: LCCOMB_X35_Y16_N30
\b2v_inst|b2v_inst2|b2v_inst13|o[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[0]~6_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst13|o[0]~5_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst13|Mux5~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst13|o[0]~5_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst13|Mux0~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst13|o[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst13|Mux0~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst13|Mux5~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~5_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~6_combout\);

-- Location: LCCOMB_X34_Y16_N22
\b2v_inst|b2v_inst2|b2v_inst13|o[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[1]~7_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(2)) # ((!\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & \b2v_inst|b2v_inst2|b2v_inst5|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst5|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~7_combout\);

-- Location: LCCOMB_X35_Y16_N2
\b2v_inst|b2v_inst2|b2v_inst13|o[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[0]~9_combout\ = (\b2v_inst|b2v_inst2|b2v_inst13|o[1]~8_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst13|o[0]~6_combout\) # (!\b2v_inst|b2v_inst2|b2v_inst13|o[1]~7_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst13|o[1]~8_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst1|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst13|o[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~8_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst1|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~6_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~7_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~9_combout\);

-- Location: LCCOMB_X35_Y16_N4
\b2v_inst|b2v_inst2|b2v_inst13|o[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[0]~11_combout\ = (\b2v_inst|b2v_inst2|b2v_inst13|o[1]~10_combout\ & (\b2v_inst|b2v_inst2|b2v_inst1|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst1|q\(0) & \b2v_inst|b2v_inst2|b2v_inst13|o[0]~9_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst13|o[1]~10_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst13|o[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst1|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst1|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~10_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~9_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~11_combout\);

-- Location: LCCOMB_X35_Y16_N26
\b2v_inst|b2v_inst2|b2v_inst13|o[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[0]~2_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst5|q\(1))))) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst1|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst1|q\(3) & 
-- \b2v_inst|b2v_inst2|b2v_inst5|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst1|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst1|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~2_combout\);

-- Location: LCCOMB_X37_Y16_N12
\b2v_inst|b2v_inst2|b2v_inst13|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|Mux8~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst1|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst1|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst1|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst1|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|Mux8~0_combout\);

-- Location: LCCOMB_X35_Y16_N8
\b2v_inst|b2v_inst2|b2v_inst13|o[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[0]~3_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst13|Mux8~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst1|q\(3) & \b2v_inst|b2v_inst2|b2v_inst13|o[0]~2_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst13|o[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst1|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|Mux8~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~3_combout\);

-- Location: LCCOMB_X37_Y16_N18
\b2v_inst|b2v_inst2|b2v_inst13|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|Mux3~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst1|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst1|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst1|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst1|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst1|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst1|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|Mux3~0_combout\);

-- Location: LCCOMB_X34_Y16_N16
\b2v_inst|b2v_inst2|b2v_inst13|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|Mux9~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst1|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst1|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst1|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst1|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst1|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst1|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst1|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst1|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|Mux9~0_combout\);

-- Location: LCCOMB_X37_Y16_N30
\b2v_inst|b2v_inst2|b2v_inst13|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|Mux2~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst1|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst1|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst1|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst1|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|Mux2~0_combout\);

-- Location: LCCOMB_X37_Y16_N8
\b2v_inst|b2v_inst2|b2v_inst13|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|Mux10~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst1|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst1|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst1|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst1|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst1|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst1|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|Mux10~0_combout\);

-- Location: LCCOMB_X35_Y16_N6
\b2v_inst|b2v_inst2|b2v_inst13|o[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[0]~0_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst5|q\(0))) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & 
-- ((\b2v_inst|b2v_inst2|b2v_inst13|Mux10~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst13|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|Mux2~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|Mux10~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~0_combout\);

-- Location: LCCOMB_X35_Y16_N20
\b2v_inst|b2v_inst2|b2v_inst13|o[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[0]~1_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst13|o[0]~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst13|Mux9~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst13|o[0]~0_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst13|Mux3~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst13|o[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst13|Mux3~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst13|Mux9~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~1_combout\);

-- Location: LCCOMB_X35_Y16_N18
\b2v_inst|b2v_inst2|b2v_inst13|o[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[0]~4_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(3) & ((\b2v_inst|b2v_inst2|b2v_inst5|q\(2) & ((\b2v_inst|b2v_inst2|b2v_inst13|o[0]~1_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(2) & 
-- (\b2v_inst|b2v_inst2|b2v_inst13|o[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst5|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~3_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~1_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~4_combout\);

-- Location: LCCOMB_X35_Y16_N14
\b2v_inst|b2v_inst2|b2v_inst13|o[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[0]~12_combout\ = (\b2v_inst|b2v_inst2|b2v_inst13|o[0]~4_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst5|q\(3) & \b2v_inst|b2v_inst2|b2v_inst13|o[0]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst5|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~11_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~4_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~12_combout\);

-- Location: LCCOMB_X36_Y13_N2
\b2v_inst|b2v_inst2|b2v_inst37|c[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst37|c[0]~1_combout\ = \b2v_inst|b2v_inst2|b2v_inst13|o[0]~12_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst14|o[0]~11_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst6|q\(3) & \b2v_inst|b2v_inst2|b2v_inst14|o[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst14|o[0]~11_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst14|o[0]~6_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~12_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst37|c[0]~1_combout\);

-- Location: LCCOMB_X37_Y14_N16
\b2v_inst|b2v_inst2|b2v_inst21|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|Mux4~4_combout\ = \b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[0]~0_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst37|c[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst37|c[0]~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[0]~1_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|Mux4~4_combout\);

-- Location: LCCOMB_X37_Y17_N0
\b2v_inst|b2v_inst2|b2v_inst14|o[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[3]~31_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst6|q\(0))) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst2|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & 
-- \b2v_inst|b2v_inst2|b2v_inst2|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst2|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst2|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~31_combout\);

-- Location: LCCOMB_X37_Y17_N6
\b2v_inst|b2v_inst2|b2v_inst14|o[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[3]~32_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst14|Mux2~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst2|q\(3) & \b2v_inst|b2v_inst2|b2v_inst14|o[3]~31_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst14|o[3]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst2|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|Mux2~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~32_combout\);

-- Location: LCCOMB_X37_Y17_N8
\b2v_inst|b2v_inst2|b2v_inst14|o[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[3]~33_combout\ = (\b2v_inst|b2v_inst2|b2v_inst14|o[2]~3_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst14|o[3]~32_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst14|o[2]~2_combout\))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst14|o[2]~3_combout\ & (\b2v_inst|b2v_inst2|b2v_inst14|o[2]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst2|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~3_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~2_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst2|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~32_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~33_combout\);

-- Location: LCCOMB_X37_Y17_N26
\b2v_inst|b2v_inst2|b2v_inst14|o[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[3]~34_combout\ = (\b2v_inst|b2v_inst2|b2v_inst14|o[2]~5_combout\ & (\b2v_inst|b2v_inst2|b2v_inst2|q\(2) $ (((\b2v_inst|b2v_inst2|b2v_inst2|q\(3) & \b2v_inst|b2v_inst2|b2v_inst14|o[3]~33_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst14|o[2]~5_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst14|o[3]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst2|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst2|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~33_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~5_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~34_combout\);

-- Location: LCCOMB_X36_Y17_N24
\b2v_inst|b2v_inst2|b2v_inst14|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|Mux4~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst2|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst2|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst2|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst2|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|Mux4~0_combout\);

-- Location: LCCOMB_X35_Y17_N2
\b2v_inst|b2v_inst2|b2v_inst14|o[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[3]~37_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst6|q\(0)) # (\b2v_inst|b2v_inst2|b2v_inst14|Mux5~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & 
-- (\b2v_inst|b2v_inst2|b2v_inst14|Mux4~0_combout\ & (!\b2v_inst|b2v_inst2|b2v_inst6|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst14|Mux4~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst14|Mux5~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~37_combout\);

-- Location: LCCOMB_X35_Y17_N8
\b2v_inst|b2v_inst2|b2v_inst14|o[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[3]~38_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst2|q\(0) $ (((\b2v_inst|b2v_inst2|b2v_inst2|q\(2) & \b2v_inst|b2v_inst2|b2v_inst14|o[3]~37_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst14|o[3]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst2|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst2|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~37_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~38_combout\);

-- Location: LCCOMB_X35_Y17_N6
\b2v_inst|b2v_inst2|b2v_inst14|o[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[3]~35_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst6|q\(0))) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst14|Mux8~0_combout\ $ 
-- (((!\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & \b2v_inst|b2v_inst2|b2v_inst2|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst2|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst14|Mux8~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~35_combout\);

-- Location: LCCOMB_X35_Y17_N20
\b2v_inst|b2v_inst2|b2v_inst14|o[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[3]~36_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst14|o[3]~35_combout\ & (\b2v_inst|b2v_inst2|b2v_inst14|Mux10~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst14|o[3]~35_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst14|Mux9~0_combout\))))) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst14|o[3]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst14|Mux10~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst14|Mux9~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~35_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~36_combout\);

-- Location: LCCOMB_X35_Y17_N30
\b2v_inst|b2v_inst2|b2v_inst14|o[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[3]~39_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(3) & ((\b2v_inst|b2v_inst2|b2v_inst6|q\(2) & ((\b2v_inst|b2v_inst2|b2v_inst14|o[3]~36_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(2) & 
-- (\b2v_inst|b2v_inst2|b2v_inst14|o[3]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~38_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~36_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~39_combout\);

-- Location: LCCOMB_X37_Y16_N2
\b2v_inst|b2v_inst2|b2v_inst13|o[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[3]~33_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst5|q\(0))))) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst13|Mux8~0_combout\ $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst1|q\(3) & !\b2v_inst|b2v_inst2|b2v_inst5|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst1|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|Mux8~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[3]~33_combout\);

-- Location: LCCOMB_X37_Y16_N20
\b2v_inst|b2v_inst2|b2v_inst13|o[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[3]~34_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst13|o[3]~33_combout\ & (\b2v_inst|b2v_inst2|b2v_inst13|Mux10~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst13|o[3]~33_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst13|Mux9~0_combout\))))) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst13|o[3]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst13|Mux10~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst13|Mux9~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[3]~33_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[3]~34_combout\);

-- Location: LCCOMB_X35_Y16_N16
\b2v_inst|b2v_inst2|b2v_inst13|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|Mux4~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst1|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst1|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst1|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst1|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|Mux4~0_combout\);

-- Location: LCCOMB_X36_Y16_N30
\b2v_inst|b2v_inst2|b2v_inst13|o[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[3]~35_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst13|Mux5~0_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst5|q\(0))))) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & 
-- (((\b2v_inst|b2v_inst2|b2v_inst13|Mux4~0_combout\ & !\b2v_inst|b2v_inst2|b2v_inst5|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst13|Mux5~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|Mux4~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[3]~35_combout\);

-- Location: LCCOMB_X36_Y16_N8
\b2v_inst|b2v_inst2|b2v_inst13|o[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[3]~36_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst1|q\(0) $ (((\b2v_inst|b2v_inst2|b2v_inst13|o[3]~35_combout\ & \b2v_inst|b2v_inst2|b2v_inst1|q\(2)))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst13|o[3]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst1|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|o[3]~35_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst1|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[3]~36_combout\);

-- Location: LCCOMB_X36_Y16_N26
\b2v_inst|b2v_inst2|b2v_inst13|o[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[3]~37_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(3) & ((\b2v_inst|b2v_inst2|b2v_inst5|q\(2) & (\b2v_inst|b2v_inst2|b2v_inst13|o[3]~34_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(2) & 
-- ((\b2v_inst|b2v_inst2|b2v_inst13|o[3]~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst5|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|o[3]~34_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[3]~36_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[3]~37_combout\);

-- Location: LCCOMB_X34_Y16_N24
\b2v_inst|b2v_inst2|b2v_inst13|o[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[3]~38_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst5|q\(0))))) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst1|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst1|q\(3) & 
-- \b2v_inst|b2v_inst2|b2v_inst5|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst1|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst1|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[3]~38_combout\);

-- Location: LCCOMB_X34_Y16_N6
\b2v_inst|b2v_inst2|b2v_inst13|o[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[3]~39_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst13|Mux2~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst1|q\(3) & \b2v_inst|b2v_inst2|b2v_inst13|o[3]~38_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst13|o[3]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst1|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|Mux2~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[3]~38_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[3]~39_combout\);

-- Location: LCCOMB_X34_Y16_N28
\b2v_inst|b2v_inst2|b2v_inst13|o[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[3]~40_combout\ = (\b2v_inst|b2v_inst2|b2v_inst13|o[1]~7_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst13|o[1]~8_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst13|o[3]~39_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst13|o[1]~8_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst1|q\(3))))) # (!\b2v_inst|b2v_inst2|b2v_inst13|o[1]~7_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst13|o[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~7_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst1|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~8_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[3]~39_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[3]~40_combout\);

-- Location: LCCOMB_X36_Y16_N12
\b2v_inst|b2v_inst2|b2v_inst13|o[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[3]~41_combout\ = (\b2v_inst|b2v_inst2|b2v_inst13|o[1]~10_combout\ & (\b2v_inst|b2v_inst2|b2v_inst1|q\(2) $ (((\b2v_inst|b2v_inst2|b2v_inst1|q\(3) & \b2v_inst|b2v_inst2|b2v_inst13|o[3]~40_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst13|o[1]~10_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst13|o[3]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst1|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~10_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst1|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[3]~40_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[3]~41_combout\);

-- Location: LCCOMB_X36_Y16_N2
\b2v_inst|b2v_inst2|b2v_inst13|o[3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[3]~42_combout\ = (\b2v_inst|b2v_inst2|b2v_inst13|o[3]~37_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst5|q\(3) & \b2v_inst|b2v_inst2|b2v_inst13|o[3]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst5|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|o[3]~37_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[3]~41_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[3]~42_combout\);

-- Location: LCCOMB_X36_Y16_N24
\b2v_inst|b2v_inst2|b2v_inst37|c[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst37|c[3]~9_combout\ = \b2v_inst|b2v_inst2|b2v_inst13|o[3]~42_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst14|o[3]~39_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst14|o[3]~34_combout\ & !\b2v_inst|b2v_inst2|b2v_inst6|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~34_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~39_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[3]~42_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~9_combout\);

-- Location: LCCOMB_X36_Y17_N16
\b2v_inst|b2v_inst2|b2v_inst14|o[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[1]~16_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst6|q\(0))))) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst2|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst2|q\(1) & 
-- !\b2v_inst|b2v_inst2|b2v_inst6|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst2|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst2|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[1]~16_combout\);

-- Location: LCCOMB_X36_Y17_N22
\b2v_inst|b2v_inst2|b2v_inst14|o[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[1]~17_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst2|q\(0) $ (((\b2v_inst|b2v_inst2|b2v_inst2|q\(1) & !\b2v_inst|b2v_inst2|b2v_inst14|o[1]~16_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst14|o[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst2|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst2|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|o[1]~16_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[1]~17_combout\);

-- Location: LCCOMB_X36_Y17_N8
\b2v_inst|b2v_inst2|b2v_inst14|o[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[1]~18_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst6|q\(1))) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & 
-- ((\b2v_inst|b2v_inst2|b2v_inst14|Mux9~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst14|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|Mux2~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|Mux9~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[1]~18_combout\);

-- Location: LCCOMB_X36_Y17_N26
\b2v_inst|b2v_inst2|b2v_inst14|o[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[1]~19_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst14|o[1]~18_combout\ & (\b2v_inst|b2v_inst2|b2v_inst14|Mux5~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst14|o[1]~18_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst2|q\(2)))))) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst14|o[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst14|Mux5~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|o[1]~18_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst2|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[1]~19_combout\);

-- Location: LCCOMB_X36_Y17_N20
\b2v_inst|b2v_inst2|b2v_inst14|o[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[1]~20_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(3) & ((\b2v_inst|b2v_inst2|b2v_inst6|q\(2) & (\b2v_inst|b2v_inst2|b2v_inst14|o[1]~17_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(2) & 
-- ((\b2v_inst|b2v_inst2|b2v_inst14|o[1]~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst14|o[1]~17_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|o[1]~19_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst6|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[1]~20_combout\);

-- Location: LCCOMB_X37_Y16_N0
\b2v_inst|b2v_inst2|b2v_inst13|o[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[1]~13_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst5|q\(0))))) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst1|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst1|q\(1) & 
-- !\b2v_inst|b2v_inst2|b2v_inst5|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst1|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst1|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~13_combout\);

-- Location: LCCOMB_X37_Y16_N22
\b2v_inst|b2v_inst2|b2v_inst13|o[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[1]~14_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst1|q\(0) $ (((\b2v_inst|b2v_inst2|b2v_inst1|q\(1) & !\b2v_inst|b2v_inst2|b2v_inst13|o[1]~13_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst13|o[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst1|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst1|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~13_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~14_combout\);

-- Location: LCCOMB_X34_Y16_N26
\b2v_inst|b2v_inst2|b2v_inst13|o[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[1]~15_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst5|q\(1))) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & 
-- ((\b2v_inst|b2v_inst2|b2v_inst13|Mux9~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst13|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|Mux2~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|Mux9~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~15_combout\);

-- Location: LCCOMB_X34_Y16_N20
\b2v_inst|b2v_inst2|b2v_inst13|o[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[1]~16_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst13|o[1]~15_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst13|Mux5~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst13|o[1]~15_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst1|q\(2))))) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst13|o[1]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst1|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~15_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|Mux5~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~16_combout\);

-- Location: LCCOMB_X34_Y16_N14
\b2v_inst|b2v_inst2|b2v_inst13|o[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[1]~17_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(3) & ((\b2v_inst|b2v_inst2|b2v_inst5|q\(2) & (\b2v_inst|b2v_inst2|b2v_inst13|o[1]~14_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(2) & 
-- ((\b2v_inst|b2v_inst2|b2v_inst13|o[1]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst5|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~14_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~16_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~17_combout\);

-- Location: LCCOMB_X35_Y16_N24
\b2v_inst|b2v_inst2|b2v_inst13|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|Mux7~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst1|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst1|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst1|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst1|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst1|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst1|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|Mux7~0_combout\);

-- Location: LCCOMB_X34_Y16_N8
\b2v_inst|b2v_inst2|b2v_inst13|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|Mux6~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst1|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst1|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst1|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst1|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|Mux6~0_combout\);

-- Location: LCCOMB_X34_Y16_N10
\b2v_inst|b2v_inst2|b2v_inst13|o[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[1]~18_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst5|q\(1)) # ((\b2v_inst|b2v_inst2|b2v_inst13|Mux3~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & 
-- (!\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst13|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|Mux0~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|Mux3~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~18_combout\);

-- Location: LCCOMB_X34_Y16_N0
\b2v_inst|b2v_inst2|b2v_inst13|o[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[1]~19_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst13|o[1]~18_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst13|Mux10~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst13|o[1]~18_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst13|Mux6~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst13|o[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst13|Mux6~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst13|Mux10~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~18_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~19_combout\);

-- Location: LCCOMB_X34_Y16_N18
\b2v_inst|b2v_inst2|b2v_inst13|o[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[1]~20_combout\ = (\b2v_inst|b2v_inst2|b2v_inst13|o[1]~8_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst13|o[1]~19_combout\) # (!\b2v_inst|b2v_inst2|b2v_inst13|o[1]~7_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst13|o[1]~8_combout\ & (\b2v_inst|b2v_inst2|b2v_inst1|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst13|o[1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst1|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~8_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~7_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~19_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~20_combout\);

-- Location: LCCOMB_X34_Y16_N12
\b2v_inst|b2v_inst2|b2v_inst13|o[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[1]~21_combout\ = (\b2v_inst|b2v_inst2|b2v_inst13|o[1]~10_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst13|o[1]~20_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst13|Mux7~0_combout\))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst13|o[1]~20_combout\ & (\b2v_inst|b2v_inst2|b2v_inst13|Mux4~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst13|o[1]~10_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst13|o[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst13|Mux4~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~10_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst13|Mux7~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~20_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~21_combout\);

-- Location: LCCOMB_X34_Y16_N30
\b2v_inst|b2v_inst2|b2v_inst13|o[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[1]~22_combout\ = (\b2v_inst|b2v_inst2|b2v_inst13|o[1]~17_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst5|q\(3) & \b2v_inst|b2v_inst2|b2v_inst13|o[1]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~17_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~22_combout\);

-- Location: LCCOMB_X36_Y17_N12
\b2v_inst|b2v_inst2|b2v_inst14|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|Mux7~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst2|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst2|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst2|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst2|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst2|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst2|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|Mux7~0_combout\);

-- Location: LCCOMB_X37_Y17_N4
\b2v_inst|b2v_inst2|b2v_inst14|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|Mux6~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst2|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst2|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst2|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst2|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|Mux6~0_combout\);

-- Location: LCCOMB_X36_Y17_N2
\b2v_inst|b2v_inst2|b2v_inst14|o[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[1]~12_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst6|q\(1)) # (\b2v_inst|b2v_inst2|b2v_inst14|Mux3~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & 
-- (\b2v_inst|b2v_inst2|b2v_inst14|Mux0~0_combout\ & (!\b2v_inst|b2v_inst2|b2v_inst6|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst14|Mux0~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst14|Mux3~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[1]~12_combout\);

-- Location: LCCOMB_X37_Y13_N10
\b2v_inst|b2v_inst2|b2v_inst14|o[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[1]~13_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst14|o[1]~12_combout\ & (\b2v_inst|b2v_inst2|b2v_inst14|Mux10~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst14|o[1]~12_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst14|Mux6~0_combout\))))) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst14|o[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst14|Mux10~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|Mux6~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[1]~12_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[1]~13_combout\);

-- Location: LCCOMB_X37_Y13_N16
\b2v_inst|b2v_inst2|b2v_inst14|o[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[1]~14_combout\ = (\b2v_inst|b2v_inst2|b2v_inst14|o[2]~2_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst14|o[2]~3_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst14|o[1]~13_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst14|o[2]~3_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst2|q\(1))))) # (!\b2v_inst|b2v_inst2|b2v_inst14|o[2]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst14|o[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~2_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst2|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~3_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[1]~13_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[1]~14_combout\);

-- Location: LCCOMB_X37_Y13_N6
\b2v_inst|b2v_inst2|b2v_inst14|o[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[1]~15_combout\ = (\b2v_inst|b2v_inst2|b2v_inst14|o[2]~5_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst14|o[1]~14_combout\ & (\b2v_inst|b2v_inst2|b2v_inst14|Mux7~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst14|o[1]~14_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst14|Mux4~0_combout\))))) # (!\b2v_inst|b2v_inst2|b2v_inst14|o[2]~5_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst14|o[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst14|Mux7~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst14|Mux4~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~5_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[1]~14_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[1]~15_combout\);

-- Location: LCCOMB_X37_Y13_N14
\b2v_inst|b2v_inst2|b2v_inst37|c[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst37|c[1]~12_combout\ = \b2v_inst|b2v_inst2|b2v_inst13|o[1]~22_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst14|o[1]~20_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst6|q\(3) & \b2v_inst|b2v_inst2|b2v_inst14|o[1]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst14|o[1]~20_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~22_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[1]~15_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~12_combout\);

-- Location: LCCOMB_X35_Y12_N12
\b2v_inst|b2v_inst2|b2v_inst16|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|Mux4~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst4|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst4|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst4|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst16|Mux4~0_combout\);

-- Location: FF_X37_Y15_N21
\b2v_inst|b2v_inst2|b2v_inst3|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|b2v_inst2|b2v_inst2|q\(1),
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	sload => VCC,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst3|q\(1));

-- Location: FF_X35_Y12_N29
\b2v_inst|b2v_inst2|b2v_inst4|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|b2v_inst2|b2v_inst3|q\(1),
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	sload => VCC,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst4|q\(1));

-- Location: LCCOMB_X35_Y12_N6
\b2v_inst|b2v_inst2|b2v_inst16|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|Mux7~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst4|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst4|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst4|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst4|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst4|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst16|Mux7~0_combout\);

-- Location: LCCOMB_X37_Y12_N20
\b2v_inst|b2v_inst2|b2v_inst20|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|Mux3~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst36|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst36|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst36|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst36|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst36|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst36|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst20|Mux3~0_combout\);

-- Location: LCCOMB_X34_Y14_N8
\b2v_inst|b2v_inst2|b2v_inst20|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|Mux0~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst36|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst36|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst36|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst36|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst20|Mux0~0_combout\);

-- Location: LCCOMB_X34_Y14_N14
\b2v_inst|b2v_inst2|b2v_inst20|o[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[2]~33_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|Mux3~0_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|Mux0~0_combout\ & !\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst20|Mux3~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst20|Mux0~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[2]~33_combout\);

-- Location: LCCOMB_X34_Y14_N4
\b2v_inst|b2v_inst2|b2v_inst20|o[2]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[2]~34_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst36|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst36|q\(1) & \b2v_inst|b2v_inst2|b2v_inst20|o[2]~33_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|o[2]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst36|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst36|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst20|o[2]~33_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[2]~34_combout\);

-- Location: LCCOMB_X34_Y14_N30
\b2v_inst|b2v_inst2|b2v_inst20|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|Mux7~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst36|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst36|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst36|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst36|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst20|Mux7~0_combout\);

-- Location: LCCOMB_X34_Y14_N2
\b2v_inst|b2v_inst2|b2v_inst20|o[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[2]~31_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst36|q\(0) $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst36|q\(2) & !\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst36|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst36|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[2]~31_combout\);

-- Location: LCCOMB_X34_Y14_N28
\b2v_inst|b2v_inst2|b2v_inst20|o[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[2]~32_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst20|Mux7~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst36|q\(2) & !\b2v_inst|b2v_inst2|b2v_inst20|o[2]~31_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|o[2]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst20|Mux7~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst36|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[2]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[2]~32_combout\);

-- Location: LCCOMB_X34_Y14_N22
\b2v_inst|b2v_inst2|b2v_inst8|q[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst8|q[2]~6_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|o[2]~32_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst20|o[2]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst20|o[2]~34_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[2]~32_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst8|q[2]~6_combout\);

-- Location: LCCOMB_X34_Y14_N26
\b2v_inst|b2v_inst2|b2v_inst20|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|Mux7~1_combout\ = \b2v_inst|b2v_inst2|b2v_inst36|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst36|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst36|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst36|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst36|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst36|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst20|Mux7~1_combout\);

-- Location: LCCOMB_X37_Y12_N16
\b2v_inst|b2v_inst2|b2v_inst20|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|Mux9~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst36|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst36|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst36|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst36|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst36|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst36|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst36|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst36|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst20|Mux9~0_combout\);

-- Location: LCCOMB_X37_Y12_N26
\b2v_inst|b2v_inst2|b2v_inst20|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|Mux5~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst36|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst36|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst36|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst36|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst36|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst36|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst20|Mux5~0_combout\);

-- Location: LCCOMB_X34_Y14_N24
\b2v_inst|b2v_inst2|b2v_inst20|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|Mux4~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst36|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst36|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst36|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst36|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst20|Mux4~0_combout\);

-- Location: LCCOMB_X34_Y14_N10
\b2v_inst|b2v_inst2|b2v_inst20|o[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[2]~27_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst20|Mux5~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst20|Mux5~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst20|Mux4~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[2]~27_combout\);

-- Location: LCCOMB_X34_Y14_N0
\b2v_inst|b2v_inst2|b2v_inst20|o[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[2]~28_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|o[2]~27_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|Mux9~0_combout\))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst20|o[2]~27_combout\ & (\b2v_inst|b2v_inst2|b2v_inst20|Mux7~1_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|o[2]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst20|Mux7~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst20|Mux9~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[2]~27_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[2]~28_combout\);

-- Location: LCCOMB_X34_Y14_N6
\b2v_inst|b2v_inst2|b2v_inst20|o[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[2]~29_combout\ = (\b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|o[2]~28_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst36|q\(2))))) # (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst36|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst20|o[2]~28_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[2]~29_combout\);

-- Location: LCCOMB_X34_Y14_N20
\b2v_inst|b2v_inst2|b2v_inst20|o[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[2]~30_combout\ = (\b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst36|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst36|q\(2) & \b2v_inst|b2v_inst2|b2v_inst20|o[2]~29_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|o[2]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst36|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst36|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[2]~29_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[2]~30_combout\);

-- Location: LCCOMB_X34_Y14_N16
\b2v_inst|b2v_inst2|b2v_inst8|q[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst8|q[2]~7_combout\ = \b2v_inst|b2v_inst2|b2v_inst8|q\(2) $ (((\b2v_inst|b2v_inst2|b2v_inst8|q[2]~6_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst20|o[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst8|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst8|q[2]~6_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[2]~30_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst8|q[2]~7_combout\);

-- Location: LCCOMB_X34_Y14_N12
\b2v_inst|b2v_inst2|b2v_inst8|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst8|q[2]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst8|q[2]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst8|q[2]~7_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst8|q[2]~feeder_combout\);

-- Location: FF_X34_Y14_N13
\b2v_inst|b2v_inst2|b2v_inst8|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst8|q[2]~feeder_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst8|q\(2));

-- Location: LCCOMB_X36_Y12_N30
\b2v_inst|b2v_inst2|b2v_inst16|o[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[2]~3_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(2)) # ((\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & \b2v_inst|b2v_inst2|b2v_inst8|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst8|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~3_combout\);

-- Location: LCCOMB_X35_Y12_N20
\b2v_inst|b2v_inst2|b2v_inst16|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|Mux6~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst4|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst4|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst4|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst16|Mux6~0_combout\);

-- Location: LCCOMB_X35_Y12_N26
\b2v_inst|b2v_inst2|b2v_inst16|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|Mux10~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst4|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst4|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst4|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst4|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst4|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst16|Mux10~0_combout\);

-- Location: LCCOMB_X35_Y12_N10
\b2v_inst|b2v_inst2|b2v_inst16|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|Mux0~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst4|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst4|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst16|Mux0~0_combout\);

-- Location: LCCOMB_X35_Y12_N30
\b2v_inst|b2v_inst2|b2v_inst16|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|Mux3~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst4|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst4|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst4|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst4|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst16|Mux3~0_combout\);

-- Location: LCCOMB_X37_Y12_N6
\b2v_inst|b2v_inst2|b2v_inst16|o[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[1]~17_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst8|q\(1)) # ((\b2v_inst|b2v_inst2|b2v_inst16|Mux3~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & 
-- (!\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst16|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst16|Mux0~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst16|Mux3~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[1]~17_combout\);

-- Location: LCCOMB_X37_Y12_N28
\b2v_inst|b2v_inst2|b2v_inst16|o[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[1]~18_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst16|o[1]~17_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst16|Mux10~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst16|o[1]~17_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst16|Mux6~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst16|o[1]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst16|Mux6~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst16|Mux10~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[1]~17_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[1]~18_combout\);

-- Location: LCCOMB_X36_Y12_N20
\b2v_inst|b2v_inst2|b2v_inst16|o[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[1]~19_combout\ = (\b2v_inst|b2v_inst2|b2v_inst16|o[2]~3_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst16|o[1]~18_combout\) # (!\b2v_inst|b2v_inst2|b2v_inst16|o[2]~2_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst16|o[2]~3_combout\ & (\b2v_inst|b2v_inst2|b2v_inst4|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst16|o[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~3_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst4|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[1]~18_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[1]~19_combout\);

-- Location: LCCOMB_X36_Y12_N2
\b2v_inst|b2v_inst2|b2v_inst16|o[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[1]~20_combout\ = (\b2v_inst|b2v_inst2|b2v_inst16|o[2]~5_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst16|o[1]~19_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst16|Mux7~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst16|o[1]~19_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst16|Mux4~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst16|o[2]~5_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst16|o[1]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst16|Mux4~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst16|Mux7~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~5_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[1]~19_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[1]~20_combout\);

-- Location: LCCOMB_X34_Y12_N2
\b2v_inst|b2v_inst2|b2v_inst16|o[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[1]~12_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst8|q\(0))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst4|q\(3) $ (((!\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & 
-- \b2v_inst|b2v_inst2|b2v_inst4|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst4|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[1]~12_combout\);

-- Location: LCCOMB_X34_Y12_N8
\b2v_inst|b2v_inst2|b2v_inst16|o[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[1]~13_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst4|q\(0) $ (((\b2v_inst|b2v_inst2|b2v_inst4|q\(1) & !\b2v_inst|b2v_inst2|b2v_inst16|o[1]~12_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst16|o[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst4|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst4|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[1]~12_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[1]~13_combout\);

-- Location: LCCOMB_X35_Y12_N4
\b2v_inst|b2v_inst2|b2v_inst16|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|Mux5~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst4|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst4|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst4|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst4|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst16|Mux5~0_combout\);

-- Location: LCCOMB_X35_Y12_N16
\b2v_inst|b2v_inst2|b2v_inst16|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|Mux9~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst4|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst4|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst4|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst4|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst4|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst4|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst16|Mux9~0_combout\);

-- Location: LCCOMB_X36_Y12_N14
\b2v_inst|b2v_inst2|b2v_inst16|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|Mux2~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst4|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst4|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst4|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst16|Mux2~0_combout\);

-- Location: LCCOMB_X34_Y12_N6
\b2v_inst|b2v_inst2|b2v_inst16|o[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[1]~14_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst16|Mux9~0_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst8|q\(0))))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & 
-- (((!\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & \b2v_inst|b2v_inst2|b2v_inst16|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst16|Mux9~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst16|Mux2~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[1]~14_combout\);

-- Location: LCCOMB_X34_Y12_N16
\b2v_inst|b2v_inst2|b2v_inst16|o[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[1]~15_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst16|o[1]~14_combout\ & (\b2v_inst|b2v_inst2|b2v_inst16|Mux5~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst16|o[1]~14_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst4|q\(2)))))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst16|o[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst16|Mux5~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[1]~14_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[1]~15_combout\);

-- Location: LCCOMB_X34_Y12_N26
\b2v_inst|b2v_inst2|b2v_inst16|o[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[1]~16_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(3) & ((\b2v_inst|b2v_inst2|b2v_inst8|q\(2) & (\b2v_inst|b2v_inst2|b2v_inst16|o[1]~13_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(2) & 
-- ((\b2v_inst|b2v_inst2|b2v_inst16|o[1]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst8|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst16|o[1]~13_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[1]~15_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[1]~16_combout\);

-- Location: LCCOMB_X37_Y13_N8
\b2v_inst|b2v_inst2|b2v_inst37|c[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst37|c[1]~11_combout\ = \b2v_inst|b2v_inst2|b2v_inst15|o[1]~22_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst16|o[1]~16_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst16|o[1]~20_combout\ & !\b2v_inst|b2v_inst2|b2v_inst8|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst16|o[1]~20_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst16|o[1]~16_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst8|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~22_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~11_combout\);

-- Location: LCCOMB_X37_Y13_N20
\b2v_inst|b2v_inst2|b2v_inst21|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|Mux7~2_combout\ = \b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[1]~12_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[1]~11_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~12_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~11_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst21|Mux7~2_combout\);

-- Location: LCCOMB_X38_Y14_N14
\b2v_inst|b2v_inst2|b2v_inst21|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|Mux7~3_combout\ = \b2v_inst|b2v_inst2|b2v_inst|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst37|c[3]~8_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[3]~9_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst21|Mux7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~8_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~9_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|Mux7~2_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|Mux7~3_combout\);

-- Location: LCCOMB_X36_Y14_N6
\b2v_inst|b2v_inst2|b2v_inst21|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|Mux3~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst37|c[2]~6_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[2]~13_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~6_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~13_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|Mux3~0_combout\);

-- Location: LCCOMB_X37_Y14_N28
\b2v_inst|b2v_inst2|b2v_inst21|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|Mux0~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst37|c[2]~6_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[2]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~6_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~13_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|Mux0~0_combout\);

-- Location: LCCOMB_X37_Y14_N30
\b2v_inst|b2v_inst2|b2v_inst21|o[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[1]~27_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst21|Mux3~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ 
-- & (!\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|Mux3~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|Mux0~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~27_combout\);

-- Location: LCCOMB_X37_Y13_N22
\b2v_inst|b2v_inst2|b2v_inst21|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|Mux10~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst21|Mux7~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|Mux7~2_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|Mux10~0_combout\);

-- Location: LCCOMB_X37_Y14_N24
\b2v_inst|b2v_inst2|b2v_inst21|o[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[1]~28_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~27_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|Mux10~0_combout\))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~27_combout\ & (\b2v_inst|b2v_inst2|b2v_inst21|Mux5~1_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|Mux5~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~27_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|Mux10~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~28_combout\);

-- Location: LCCOMB_X37_Y14_N14
\b2v_inst|b2v_inst2|b2v_inst21|o[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[1]~29_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[3]~2_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[3]~3_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~28_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[3]~3_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[3]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~2_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~3_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~28_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~29_combout\);

-- Location: LCCOMB_X38_Y14_N6
\b2v_inst|b2v_inst2|b2v_inst21|o[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[1]~30_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[3]~5_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~29_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|Mux7~3_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~29_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst21|Mux4~4_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[3]~5_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|Mux4~4_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~5_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|Mux7~3_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~29_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~30_combout\);

-- Location: LCCOMB_X38_Y14_N0
\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~26_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst21|o[1]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~26_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~30_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\);

-- Location: LCCOMB_X38_Y15_N12
\b2v_inst|b2v_inst2|b2v_inst19|o[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[1]~12_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst11|q\(3) $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst11|q\(1) & !\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst11|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[1]~12_combout\);

-- Location: LCCOMB_X38_Y15_N18
\b2v_inst|b2v_inst2|b2v_inst19|o[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[1]~13_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst11|q\(0) $ (((\b2v_inst|b2v_inst2|b2v_inst11|q\(1) & !\b2v_inst|b2v_inst2|b2v_inst19|o[1]~12_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|o[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst11|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst11|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[1]~12_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[1]~13_combout\);

-- Location: LCCOMB_X41_Y14_N6
\b2v_inst|b2v_inst2|b2v_inst34|O[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst34|O[2]~2_combout\ = (\b2v_inst|b2v_inst|di~0_combout\ & (\b2v_inst|b2v_inst2|b2v_inst6|q\(2))) # (!\b2v_inst|b2v_inst|di~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst10|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(2),
	datac => \b2v_inst|b2v_inst|di~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst10|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst34|O[2]~2_combout\);

-- Location: FF_X41_Y14_N7
\b2v_inst|b2v_inst2|b2v_inst11|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst34|O[2]~2_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	ena => \b2v_inst|b2v_inst|estadoAtual.localizador~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst11|q\(2));

-- Location: LCCOMB_X39_Y11_N12
\b2v_inst|b2v_inst2|b2v_inst19|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|Mux5~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst11|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst11|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst11|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst11|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst11|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst19|Mux5~0_combout\);

-- Location: LCCOMB_X38_Y15_N10
\b2v_inst|b2v_inst2|b2v_inst19|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|Mux9~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst11|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst11|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst11|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst11|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst11|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst11|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst11|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst19|Mux9~0_combout\);

-- Location: LCCOMB_X38_Y11_N2
\b2v_inst|b2v_inst2|b2v_inst19|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|Mux2~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst11|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst11|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst11|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst11|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst19|Mux2~0_combout\);

-- Location: LCCOMB_X38_Y15_N24
\b2v_inst|b2v_inst2|b2v_inst19|o[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[1]~14_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst19|Mux9~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst19|Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst19|Mux9~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst19|Mux2~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[1]~14_combout\);

-- Location: LCCOMB_X38_Y15_N22
\b2v_inst|b2v_inst2|b2v_inst19|o[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[1]~15_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst19|o[1]~14_combout\ & (\b2v_inst|b2v_inst2|b2v_inst19|Mux5~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst19|o[1]~14_combout\ 
-- & ((\b2v_inst|b2v_inst2|b2v_inst11|q\(2)))))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|o[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst19|Mux5~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[1]~14_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[1]~15_combout\);

-- Location: LCCOMB_X38_Y15_N4
\b2v_inst|b2v_inst2|b2v_inst7|q[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst7|q[1]~4_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & (\b2v_inst|b2v_inst2|b2v_inst19|o[1]~13_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst19|o[1]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst19|o[1]~13_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[1]~15_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst7|q[1]~4_combout\);

-- Location: LCCOMB_X39_Y11_N30
\b2v_inst|b2v_inst2|b2v_inst19|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|Mux4~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst11|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst11|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst11|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst11|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst19|Mux4~0_combout\);

-- Location: LCCOMB_X38_Y15_N2
\b2v_inst|b2v_inst2|b2v_inst19|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|Mux7~1_combout\ = \b2v_inst|b2v_inst2|b2v_inst11|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst11|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst11|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst11|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst11|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst19|Mux7~1_combout\);

-- Location: LCCOMB_X38_Y15_N16
\b2v_inst|b2v_inst2|b2v_inst19|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|Mux5~1_combout\ = \b2v_inst|b2v_inst2|b2v_inst11|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst11|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst11|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst11|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst19|Mux5~1_combout\);

-- Location: LCCOMB_X38_Y15_N20
\b2v_inst|b2v_inst2|b2v_inst19|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|Mux10~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst11|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst11|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst11|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst11|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst11|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst19|Mux10~0_combout\);

-- Location: LCCOMB_X38_Y11_N18
\b2v_inst|b2v_inst2|b2v_inst19|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|Mux3~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst11|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst11|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst11|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst11|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst11|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst19|Mux3~0_combout\);

-- Location: LCCOMB_X39_Y11_N28
\b2v_inst|b2v_inst2|b2v_inst19|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|Mux0~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst11|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst11|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst11|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst11|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst19|Mux0~0_combout\);

-- Location: LCCOMB_X38_Y15_N8
\b2v_inst|b2v_inst2|b2v_inst19|o[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[1]~8_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst19|Mux3~0_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|Mux0~0_combout\ & !\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst19|Mux3~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst19|Mux0~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[1]~8_combout\);

-- Location: LCCOMB_X38_Y15_N30
\b2v_inst|b2v_inst2|b2v_inst19|o[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[1]~9_combout\ = (\b2v_inst|b2v_inst2|b2v_inst19|o[1]~8_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|Mux10~0_combout\) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst19|o[1]~8_combout\ & (\b2v_inst|b2v_inst2|b2v_inst19|Mux5~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst19|Mux5~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst19|Mux10~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[1]~8_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[1]~9_combout\);

-- Location: LCCOMB_X38_Y15_N0
\b2v_inst|b2v_inst2|b2v_inst19|o[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[1]~10_combout\ = (\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst19|o[1]~9_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst11|q\(1) & \b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst19|o[1]~9_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[1]~10_combout\);

-- Location: LCCOMB_X38_Y15_N6
\b2v_inst|b2v_inst2|b2v_inst19|o[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[1]~11_combout\ = (\b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst19|o[1]~10_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst19|Mux7~1_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst19|o[1]~10_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst19|Mux4~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|o[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst19|Mux4~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst19|Mux7~1_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[1]~10_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[1]~11_combout\);

-- Location: LCCOMB_X38_Y15_N14
\b2v_inst|b2v_inst2|b2v_inst7|q[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst7|q[1]~5_combout\ = \b2v_inst|b2v_inst2|b2v_inst7|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst7|q[1]~4_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst19|o[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst7|q[1]~4_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[1]~11_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst7|q[1]~5_combout\);

-- Location: FF_X38_Y15_N17
\b2v_inst|b2v_inst2|b2v_inst7|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|b2v_inst2|b2v_inst7|q[1]~5_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst7|q\(1));

-- Location: LCCOMB_X41_Y14_N10
\b2v_inst|b2v_inst2|b2v_inst33|O[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst33|O[1]~1_combout\ = (\b2v_inst|b2v_inst|di~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst7|q\(1)))) # (!\b2v_inst|b2v_inst|di~0_combout\ & (\b2v_inst|b2v_inst2|b2v_inst11|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(1),
	datac => \b2v_inst|b2v_inst|di~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst33|O[1]~1_combout\);

-- Location: FF_X41_Y14_N11
\b2v_inst|b2v_inst2|b2v_inst36|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst33|O[1]~1_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	ena => \b2v_inst|b2v_inst|estadoAtual.localizador~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst36|q\(1));

-- Location: LCCOMB_X41_Y14_N14
\b2v_inst|b2v_inst2|b2v_inst22|O[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst22|O[1]~1_combout\ = (!\b2v_inst|b2v_inst|di~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst36|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst|di~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst36|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst22|O[1]~1_combout\);

-- Location: FF_X41_Y14_N15
\b2v_inst|b2v_inst2|b2v_inst9|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst22|O[1]~1_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	ena => \b2v_inst|b2v_inst|estadoAtual.localizador~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst9|q\(1));

-- Location: LCCOMB_X41_Y14_N2
\b2v_inst|b2v_inst2|b2v_inst35|O[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst35|O[1]~1_combout\ = (\b2v_inst|b2v_inst|di~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst5|q\(1)))) # (!\b2v_inst|b2v_inst|di~0_combout\ & (\b2v_inst|b2v_inst2|b2v_inst9|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst|di~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst9|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst35|O[1]~1_combout\);

-- Location: FF_X41_Y14_N3
\b2v_inst|b2v_inst2|b2v_inst10|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst35|O[1]~1_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	ena => \b2v_inst|b2v_inst|estadoAtual.localizador~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst10|q\(1));

-- Location: LCCOMB_X39_Y17_N12
\b2v_inst|b2v_inst2|b2v_inst18|o[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[1]~12_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst10|q\(3) $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst10|q\(1) & !\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst10|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst10|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[1]~12_combout\);

-- Location: LCCOMB_X39_Y17_N18
\b2v_inst|b2v_inst2|b2v_inst18|o[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[1]~13_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst10|q\(0) $ (((\b2v_inst|b2v_inst2|b2v_inst10|q\(1) & !\b2v_inst|b2v_inst2|b2v_inst18|o[1]~12_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst18|o[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst10|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst10|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst18|o[1]~12_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[1]~13_combout\);

-- Location: LCCOMB_X41_Y15_N24
\b2v_inst|b2v_inst2|b2v_inst18|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|Mux2~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst10|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst10|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst10|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst10|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst18|Mux2~0_combout\);

-- Location: LCCOMB_X39_Y17_N0
\b2v_inst|b2v_inst2|b2v_inst18|o[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[1]~14_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst18|Mux9~0_combout\) # (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst18|Mux2~0_combout\ & ((!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst18|Mux2~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst18|Mux9~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[1]~14_combout\);

-- Location: LCCOMB_X39_Y17_N2
\b2v_inst|b2v_inst2|b2v_inst18|o[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[1]~15_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst18|o[1]~14_combout\ & (\b2v_inst|b2v_inst2|b2v_inst18|Mux5~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst18|o[1]~14_combout\ 
-- & ((\b2v_inst|b2v_inst2|b2v_inst10|q\(2)))))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst18|o[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst18|Mux5~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst10|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst18|o[1]~14_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[1]~15_combout\);

-- Location: LCCOMB_X39_Y17_N8
\b2v_inst|b2v_inst2|b2v_inst6|q[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst6|q[1]~2_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & (\b2v_inst|b2v_inst2|b2v_inst18|o[1]~13_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst18|o[1]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst18|o[1]~13_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst18|o[1]~15_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst6|q[1]~2_combout\);

-- Location: LCCOMB_X39_Y15_N24
\b2v_inst|b2v_inst2|b2v_inst18|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|Mux10~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst10|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst10|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst10|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst10|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst10|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst10|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst18|Mux10~0_combout\);

-- Location: LCCOMB_X39_Y17_N16
\b2v_inst|b2v_inst2|b2v_inst18|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|Mux5~1_combout\ = \b2v_inst|b2v_inst2|b2v_inst10|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst10|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst10|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst10|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst18|Mux5~1_combout\);

-- Location: LCCOMB_X39_Y17_N28
\b2v_inst|b2v_inst2|b2v_inst18|o[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[1]~8_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst18|Mux5~1_combout\) # (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst18|Mux0~0_combout\ & ((!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst18|Mux0~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst18|Mux5~1_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[1]~8_combout\);

-- Location: LCCOMB_X39_Y17_N22
\b2v_inst|b2v_inst2|b2v_inst18|o[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[1]~9_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst18|o[1]~8_combout\ & (\b2v_inst|b2v_inst2|b2v_inst18|Mux10~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst18|o[1]~8_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst18|Mux3~0_combout\))))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst18|o[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst18|Mux10~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst18|Mux3~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst18|o[1]~8_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[1]~9_combout\);

-- Location: LCCOMB_X39_Y17_N24
\b2v_inst|b2v_inst2|b2v_inst18|o[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[1]~10_combout\ = (\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst18|o[1]~9_combout\) # (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\ & (\b2v_inst|b2v_inst2|b2v_inst10|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst10|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst18|o[1]~9_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[1]~10_combout\);

-- Location: LCCOMB_X39_Y17_N6
\b2v_inst|b2v_inst2|b2v_inst18|o[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[1]~11_combout\ = (\b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst18|o[1]~10_combout\ & (\b2v_inst|b2v_inst2|b2v_inst18|Mux7~1_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst18|o[1]~10_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst18|Mux4~0_combout\))))) # (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst18|o[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst18|Mux7~1_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst18|Mux4~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst18|o[1]~10_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[1]~11_combout\);

-- Location: LCCOMB_X39_Y17_N30
\b2v_inst|b2v_inst2|b2v_inst6|q[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst6|q[1]~3_combout\ = \b2v_inst|b2v_inst2|b2v_inst6|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst6|q[1]~2_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst18|o[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst6|q[1]~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst18|o[1]~11_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst6|q[1]~3_combout\);

-- Location: FF_X39_Y17_N17
\b2v_inst|b2v_inst2|b2v_inst6|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|b2v_inst2|b2v_inst6|q[1]~3_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst6|q\(1));

-- Location: LCCOMB_X41_Y14_N8
\b2v_inst|b2v_inst2|b2v_inst34|O[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst34|O[1]~1_combout\ = (\b2v_inst|b2v_inst|di~0_combout\ & (\b2v_inst|b2v_inst2|b2v_inst6|q\(1))) # (!\b2v_inst|b2v_inst|di~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst10|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	datac => \b2v_inst|b2v_inst|di~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst10|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst34|O[1]~1_combout\);

-- Location: FF_X41_Y14_N9
\b2v_inst|b2v_inst2|b2v_inst11|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst34|O[1]~1_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	ena => \b2v_inst|b2v_inst|estadoAtual.localizador~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst11|q\(1));

-- Location: LCCOMB_X38_Y15_N28
\b2v_inst|b2v_inst2|b2v_inst19|o[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[2]~24_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|Mux5~0_combout\) # (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst19|Mux4~0_combout\ & ((!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst19|Mux4~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst19|Mux5~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[2]~24_combout\);

-- Location: LCCOMB_X38_Y15_N26
\b2v_inst|b2v_inst2|b2v_inst19|o[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[2]~25_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst19|o[2]~24_combout\ & (\b2v_inst|b2v_inst2|b2v_inst19|Mux9~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst19|o[2]~24_combout\ 
-- & ((\b2v_inst|b2v_inst2|b2v_inst19|Mux7~1_combout\))))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|o[2]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst19|Mux9~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst19|Mux7~1_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[2]~24_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[2]~25_combout\);

-- Location: LCCOMB_X37_Y11_N24
\b2v_inst|b2v_inst2|b2v_inst19|o[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[2]~26_combout\ = (\b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst19|o[2]~25_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst11|q\(2))))) # (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst11|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[2]~25_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[2]~26_combout\);

-- Location: LCCOMB_X37_Y11_N22
\b2v_inst|b2v_inst2|b2v_inst19|o[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[2]~27_combout\ = (\b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst11|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst11|q\(2) & \b2v_inst|b2v_inst2|b2v_inst19|o[2]~26_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|o[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst11|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[2]~26_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[2]~27_combout\);

-- Location: LCCOMB_X38_Y11_N12
\b2v_inst|b2v_inst2|b2v_inst19|o[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[2]~30_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|Mux3~0_combout\) # (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst19|Mux0~0_combout\ & ((!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst19|Mux0~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst19|Mux3~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[2]~30_combout\);

-- Location: LCCOMB_X38_Y11_N30
\b2v_inst|b2v_inst2|b2v_inst19|o[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[2]~31_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst11|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst11|q\(1) & \b2v_inst|b2v_inst2|b2v_inst19|o[2]~30_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|o[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst11|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst11|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[2]~30_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[2]~31_combout\);

-- Location: LCCOMB_X38_Y11_N26
\b2v_inst|b2v_inst2|b2v_inst19|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|Mux7~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst11|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst11|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst11|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst11|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst19|Mux7~0_combout\);

-- Location: LCCOMB_X38_Y11_N0
\b2v_inst|b2v_inst2|b2v_inst19|o[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[2]~28_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst11|q\(0) $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst11|q\(2) & !\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst11|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[2]~28_combout\);

-- Location: LCCOMB_X38_Y11_N6
\b2v_inst|b2v_inst2|b2v_inst19|o[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[2]~29_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst19|Mux7~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst11|q\(2) & !\b2v_inst|b2v_inst2|b2v_inst19|o[2]~28_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|o[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst19|Mux7~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[2]~28_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[2]~29_combout\);

-- Location: LCCOMB_X37_Y11_N12
\b2v_inst|b2v_inst2|b2v_inst7|q[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst7|q[2]~8_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst19|o[2]~29_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst19|o[2]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[2]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[2]~29_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst7|q[2]~8_combout\);

-- Location: LCCOMB_X37_Y11_N6
\b2v_inst|b2v_inst2|b2v_inst7|q[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst7|q[2]~9_combout\ = \b2v_inst|b2v_inst2|b2v_inst7|q\(2) $ (((\b2v_inst|b2v_inst2|b2v_inst7|q[2]~8_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst19|o[2]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[2]~27_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q[2]~8_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst7|q[2]~9_combout\);

-- Location: LCCOMB_X37_Y11_N4
\b2v_inst|b2v_inst2|b2v_inst7|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst7|q[2]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst7|q[2]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q[2]~9_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst7|q[2]~feeder_combout\);

-- Location: FF_X37_Y11_N5
\b2v_inst|b2v_inst2|b2v_inst7|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst7|q[2]~feeder_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst7|q\(2));

-- Location: LCCOMB_X41_Y14_N28
\b2v_inst|b2v_inst2|b2v_inst33|O[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst33|O[2]~2_combout\ = (\b2v_inst|b2v_inst|di~0_combout\ & (\b2v_inst|b2v_inst2|b2v_inst7|q\(2))) # (!\b2v_inst|b2v_inst|di~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst11|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(2),
	datac => \b2v_inst|b2v_inst|di~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst11|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst33|O[2]~2_combout\);

-- Location: FF_X41_Y14_N29
\b2v_inst|b2v_inst2|b2v_inst36|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst33|O[2]~2_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	ena => \b2v_inst|b2v_inst|estadoAtual.localizador~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst36|q\(2));

-- Location: LCCOMB_X41_Y14_N4
\b2v_inst|b2v_inst2|b2v_inst22|O[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst22|O[2]~2_combout\ = (!\b2v_inst|b2v_inst|di~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst36|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst|di~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst36|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst22|O[2]~2_combout\);

-- Location: FF_X41_Y14_N5
\b2v_inst|b2v_inst2|b2v_inst9|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst22|O[2]~2_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	ena => \b2v_inst|b2v_inst|estadoAtual.localizador~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst9|q\(2));

-- Location: LCCOMB_X41_Y14_N16
\b2v_inst|b2v_inst2|b2v_inst35|O[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst35|O[2]~2_combout\ = (\b2v_inst|b2v_inst|di~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst5|q\(2)))) # (!\b2v_inst|b2v_inst|di~0_combout\ & (\b2v_inst|b2v_inst2|b2v_inst9|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst9|q\(2),
	datac => \b2v_inst|b2v_inst|di~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst5|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst35|O[2]~2_combout\);

-- Location: FF_X41_Y14_N17
\b2v_inst|b2v_inst2|b2v_inst10|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst35|O[2]~2_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	ena => \b2v_inst|b2v_inst|estadoAtual.localizador~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst10|q\(2));

-- Location: LCCOMB_X39_Y15_N30
\b2v_inst|b2v_inst2|b2v_inst18|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|Mux9~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst10|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst10|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst10|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst10|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst10|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst10|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst10|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst10|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst18|Mux9~0_combout\);

-- Location: LCCOMB_X39_Y15_N28
\b2v_inst|b2v_inst2|b2v_inst18|o[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[3]~4_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst18|Mux7~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst10|q\(3) & !\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst18|Mux7~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst10|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[3]~4_combout\);

-- Location: LCCOMB_X39_Y15_N14
\b2v_inst|b2v_inst2|b2v_inst18|o[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[3]~5_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst18|o[3]~4_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst18|Mux10~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst18|o[3]~4_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst18|Mux9~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst18|o[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst18|Mux9~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst18|Mux10~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst18|o[3]~4_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[3]~5_combout\);

-- Location: LCCOMB_X39_Y15_N10
\b2v_inst|b2v_inst2|b2v_inst18|o[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[3]~6_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst18|Mux5~0_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst18|Mux4~0_combout\ & !\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst18|Mux5~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst18|Mux4~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[3]~6_combout\);

-- Location: LCCOMB_X39_Y15_N16
\b2v_inst|b2v_inst2|b2v_inst18|o[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[3]~7_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst10|q\(0) $ (((\b2v_inst|b2v_inst2|b2v_inst10|q\(2) & \b2v_inst|b2v_inst2|b2v_inst18|o[3]~6_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst18|o[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst10|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst10|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst18|o[3]~6_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[3]~7_combout\);

-- Location: LCCOMB_X39_Y15_N22
\b2v_inst|b2v_inst2|b2v_inst6|q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst6|q[3]~0_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & (\b2v_inst|b2v_inst2|b2v_inst18|o[3]~5_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst18|o[3]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst18|o[3]~5_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst18|o[3]~7_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst6|q[3]~0_combout\);

-- Location: LCCOMB_X39_Y15_N6
\b2v_inst|b2v_inst2|b2v_inst18|o[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[3]~0_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst10|q\(1) $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst10|q\(3) & \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst10|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst10|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[3]~0_combout\);

-- Location: LCCOMB_X39_Y15_N4
\b2v_inst|b2v_inst2|b2v_inst18|o[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[3]~1_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst18|Mux2~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst10|q\(3) & \b2v_inst|b2v_inst2|b2v_inst18|o[3]~0_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst18|o[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst18|Mux2~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst10|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst18|o[3]~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[3]~1_combout\);

-- Location: LCCOMB_X39_Y15_N18
\b2v_inst|b2v_inst2|b2v_inst18|o[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[3]~2_combout\ = (\b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst18|o[3]~1_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst10|q\(3))))) # (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst10|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst18|o[3]~1_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[3]~2_combout\);

-- Location: LCCOMB_X39_Y15_N0
\b2v_inst|b2v_inst2|b2v_inst18|o[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[3]~3_combout\ = (\b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst10|q\(2) $ (((\b2v_inst|b2v_inst2|b2v_inst10|q\(3) & \b2v_inst|b2v_inst2|b2v_inst18|o[3]~2_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst18|o[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst10|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst10|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst18|o[3]~2_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[3]~3_combout\);

-- Location: LCCOMB_X39_Y15_N8
\b2v_inst|b2v_inst2|b2v_inst6|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst6|q[3]~1_combout\ = \b2v_inst|b2v_inst2|b2v_inst6|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst6|q[3]~0_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst18|o[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst6|q[3]~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst18|o[3]~3_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst6|q[3]~1_combout\);

-- Location: FF_X39_Y15_N25
\b2v_inst|b2v_inst2|b2v_inst6|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|b2v_inst2|b2v_inst6|q[3]~1_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst6|q\(3));

-- Location: LCCOMB_X36_Y17_N18
\b2v_inst|b2v_inst2|b2v_inst14|o[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[2]~26_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst14|Mux7~0_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst6|q\(0))))) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & 
-- (((!\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & \b2v_inst|b2v_inst2|b2v_inst14|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst14|Mux7~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst14|Mux4~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~26_combout\);

-- Location: LCCOMB_X36_Y17_N4
\b2v_inst|b2v_inst2|b2v_inst14|o[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[2]~27_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst14|o[2]~26_combout\ & (\b2v_inst|b2v_inst2|b2v_inst14|Mux9~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst14|o[2]~26_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst14|Mux5~0_combout\))))) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst14|o[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst14|Mux9~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst14|Mux5~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~26_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~27_combout\);

-- Location: LCCOMB_X36_Y17_N10
\b2v_inst|b2v_inst2|b2v_inst14|o[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[2]~28_combout\ = (\b2v_inst|b2v_inst2|b2v_inst14|o[2]~3_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst14|o[2]~27_combout\) # (!\b2v_inst|b2v_inst2|b2v_inst14|o[2]~2_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst14|o[2]~3_combout\ & (\b2v_inst|b2v_inst2|b2v_inst2|q\(2) & ((\b2v_inst|b2v_inst2|b2v_inst14|o[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst2|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~3_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~27_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~2_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~28_combout\);

-- Location: LCCOMB_X36_Y14_N26
\b2v_inst|b2v_inst2|b2v_inst14|o[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[2]~29_combout\ = (\b2v_inst|b2v_inst2|b2v_inst14|o[2]~5_combout\ & (\b2v_inst|b2v_inst2|b2v_inst2|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst2|q\(2) & \b2v_inst|b2v_inst2|b2v_inst14|o[2]~28_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst14|o[2]~5_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst14|o[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst2|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst2|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~28_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~5_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~29_combout\);

-- Location: LCCOMB_X35_Y17_N24
\b2v_inst|b2v_inst2|b2v_inst14|o[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[2]~23_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst6|q\(0)) # ((\b2v_inst|b2v_inst2|b2v_inst14|Mux3~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & 
-- (!\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst14|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|Mux0~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|Mux3~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~23_combout\);

-- Location: LCCOMB_X35_Y17_N26
\b2v_inst|b2v_inst2|b2v_inst14|o[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[2]~24_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst2|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst2|q\(1) & \b2v_inst|b2v_inst2|b2v_inst14|o[2]~23_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst14|o[2]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst2|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst2|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~23_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~24_combout\);

-- Location: LCCOMB_X37_Y17_N22
\b2v_inst|b2v_inst2|b2v_inst14|o[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[2]~21_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst6|q\(0))))) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst2|q\(0) $ (((!\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & 
-- \b2v_inst|b2v_inst2|b2v_inst2|q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst2|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst2|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~21_combout\);

-- Location: LCCOMB_X35_Y17_N10
\b2v_inst|b2v_inst2|b2v_inst14|o[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[2]~22_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst14|Mux8~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst2|q\(2) & !\b2v_inst|b2v_inst2|b2v_inst14|o[2]~21_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst14|o[2]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst2|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|Mux8~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~22_combout\);

-- Location: LCCOMB_X35_Y17_N0
\b2v_inst|b2v_inst2|b2v_inst14|o[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[2]~25_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(3) & ((\b2v_inst|b2v_inst2|b2v_inst6|q\(2) & ((\b2v_inst|b2v_inst2|b2v_inst14|o[2]~22_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(2) & 
-- (\b2v_inst|b2v_inst2|b2v_inst14|o[2]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~24_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~22_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~25_combout\);

-- Location: LCCOMB_X36_Y14_N8
\b2v_inst|b2v_inst2|b2v_inst14|o[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[2]~30_combout\ = (\b2v_inst|b2v_inst2|b2v_inst14|o[2]~25_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst6|q\(3) & \b2v_inst|b2v_inst2|b2v_inst14|o[2]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~29_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~25_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~30_combout\);

-- Location: LCCOMB_X37_Y16_N28
\b2v_inst|b2v_inst2|b2v_inst13|o[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[2]~23_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst5|q\(0))) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst1|q\(0) $ (((!\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & 
-- \b2v_inst|b2v_inst2|b2v_inst1|q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst1|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst1|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[2]~23_combout\);

-- Location: LCCOMB_X37_Y16_N26
\b2v_inst|b2v_inst2|b2v_inst13|o[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[2]~24_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst13|Mux8~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst1|q\(2) & !\b2v_inst|b2v_inst2|b2v_inst13|o[2]~23_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst13|o[2]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst1|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|Mux8~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[2]~23_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[2]~24_combout\);

-- Location: LCCOMB_X37_Y16_N16
\b2v_inst|b2v_inst2|b2v_inst13|o[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[2]~25_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst5|q\(1))) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & 
-- ((\b2v_inst|b2v_inst2|b2v_inst13|Mux3~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst13|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|Mux0~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|Mux3~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[2]~25_combout\);

-- Location: LCCOMB_X37_Y16_N6
\b2v_inst|b2v_inst2|b2v_inst13|o[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[2]~26_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst1|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst1|q\(1) & \b2v_inst|b2v_inst2|b2v_inst13|o[2]~25_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst13|o[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst1|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst1|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[2]~25_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[2]~26_combout\);

-- Location: LCCOMB_X37_Y16_N24
\b2v_inst|b2v_inst2|b2v_inst13|o[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[2]~27_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(3) & ((\b2v_inst|b2v_inst2|b2v_inst5|q\(2) & (\b2v_inst|b2v_inst2|b2v_inst13|o[2]~24_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(2) & 
-- ((\b2v_inst|b2v_inst2|b2v_inst13|o[2]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst5|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|o[2]~24_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[2]~26_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[2]~27_combout\);

-- Location: LCCOMB_X35_Y16_N10
\b2v_inst|b2v_inst2|b2v_inst13|o[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[2]~28_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst5|q\(0)) # ((\b2v_inst|b2v_inst2|b2v_inst13|Mux7~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & 
-- (!\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst13|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|Mux4~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|Mux7~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[2]~28_combout\);

-- Location: LCCOMB_X35_Y16_N0
\b2v_inst|b2v_inst2|b2v_inst13|o[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[2]~29_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst13|o[2]~28_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst13|Mux9~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst13|o[2]~28_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst13|Mux5~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst13|o[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst13|Mux5~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst13|Mux9~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[2]~28_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[2]~29_combout\);

-- Location: LCCOMB_X35_Y16_N22
\b2v_inst|b2v_inst2|b2v_inst13|o[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[2]~30_combout\ = (\b2v_inst|b2v_inst2|b2v_inst13|o[1]~8_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst13|o[2]~29_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst13|o[1]~7_combout\))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst13|o[1]~8_combout\ & (\b2v_inst|b2v_inst2|b2v_inst13|o[1]~7_combout\ & (\b2v_inst|b2v_inst2|b2v_inst1|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~8_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~7_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst1|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[2]~29_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[2]~30_combout\);

-- Location: LCCOMB_X36_Y14_N2
\b2v_inst|b2v_inst2|b2v_inst13|o[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[2]~31_combout\ = (\b2v_inst|b2v_inst2|b2v_inst13|o[1]~10_combout\ & (\b2v_inst|b2v_inst2|b2v_inst1|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst1|q\(2) & \b2v_inst|b2v_inst2|b2v_inst13|o[2]~30_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst13|o[1]~10_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst13|o[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst1|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst1|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~10_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[2]~30_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[2]~31_combout\);

-- Location: LCCOMB_X36_Y14_N24
\b2v_inst|b2v_inst2|b2v_inst13|o[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[2]~32_combout\ = (\b2v_inst|b2v_inst2|b2v_inst13|o[2]~27_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst5|q\(3) & \b2v_inst|b2v_inst2|b2v_inst13|o[2]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst5|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|o[2]~27_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[2]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[2]~32_combout\);

-- Location: LCCOMB_X36_Y14_N28
\b2v_inst|b2v_inst2|b2v_inst37|c[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst37|c[2]~13_combout\ = \b2v_inst|b2v_inst2|b2v_inst|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst14|o[2]~30_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst13|o[2]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~30_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[2]~32_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~13_combout\);

-- Location: LCCOMB_X36_Y14_N16
\b2v_inst|b2v_inst2|b2v_inst21|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|Mux5~1_combout\ = \b2v_inst|b2v_inst2|b2v_inst37|c[2]~13_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[2]~6_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~13_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~6_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|Mux5~1_combout\);

-- Location: LCCOMB_X37_Y13_N28
\b2v_inst|b2v_inst2|b2v_inst21|o[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[0]~18_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & (\b2v_inst|b2v_inst2|b2v_inst21|Mux5~1_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~17_combout\ & \b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\))))) 
-- # (!\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~17_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|Mux5~1_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~18_combout\);

-- Location: LCCOMB_X37_Y13_N18
\b2v_inst|b2v_inst2|b2v_inst21|o[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[0]~19_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[3]~2_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[3]~3_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~18_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[3]~3_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[3]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst21|o[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~2_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~3_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~18_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~19_combout\);

-- Location: LCCOMB_X37_Y13_N4
\b2v_inst|b2v_inst2|b2v_inst21|o[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[0]~20_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[3]~5_combout\ & (\b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\ & \b2v_inst|b2v_inst2|b2v_inst21|o[0]~19_combout\))))) 
-- # (!\b2v_inst|b2v_inst2|b2v_inst21|o[3]~5_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~5_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~19_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~20_combout\);

-- Location: LCCOMB_X38_Y13_N8
\b2v_inst|b2v_inst2|b2v_inst21|o[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[0]~14_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & (\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & (\b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\ $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & \b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~14_combout\);

-- Location: LCCOMB_X38_Y13_N30
\b2v_inst|b2v_inst2|b2v_inst21|o[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[0]~15_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & (\b2v_inst|b2v_inst2|b2v_inst21|Mux7~2_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\ & \b2v_inst|b2v_inst2|b2v_inst21|o[0]~14_combout\))))) 
-- # (!\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~14_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|Mux7~2_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~15_combout\);

-- Location: LCCOMB_X37_Y13_N24
\b2v_inst|b2v_inst2|b2v_inst21|o[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[0]~12_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst21|Mux10~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|Mux10~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|Mux2~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~12_combout\);

-- Location: LCCOMB_X37_Y13_N2
\b2v_inst|b2v_inst2|b2v_inst21|o[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[0]~13_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~12_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|Mux9~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~12_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst21|Mux3~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|Mux3~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|Mux9~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~12_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~13_combout\);

-- Location: LCCOMB_X37_Y13_N12
\b2v_inst|b2v_inst2|b2v_inst21|o[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[0]~16_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~13_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~15_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~13_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~16_combout\);

-- Location: LCCOMB_X37_Y13_N26
\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~16_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst21|o[0]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~20_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~16_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\);

-- Location: LCCOMB_X39_Y13_N12
\b2v_inst|b2v_inst2|b2v_inst17|o[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[0]~22_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst9|q\(1) $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst9|q\(3) & \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst9|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[0]~22_combout\);

-- Location: LCCOMB_X39_Y13_N10
\b2v_inst|b2v_inst2|b2v_inst17|o[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[0]~23_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst17|Mux7~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst9|q\(3) & \b2v_inst|b2v_inst2|b2v_inst17|o[0]~22_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst17|o[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst17|Mux7~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst9|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[0]~22_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[0]~23_combout\);

-- Location: LCCOMB_X39_Y13_N28
\b2v_inst|b2v_inst2|b2v_inst17|o[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[0]~20_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst17|Mux10~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst17|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst17|Mux2~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst17|Mux10~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[0]~20_combout\);

-- Location: LCCOMB_X39_Y13_N6
\b2v_inst|b2v_inst2|b2v_inst17|o[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[0]~21_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst17|o[0]~20_combout\ & (\b2v_inst|b2v_inst2|b2v_inst17|Mux9~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst17|o[0]~20_combout\ 
-- & ((\b2v_inst|b2v_inst2|b2v_inst17|Mux3~0_combout\))))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst17|o[0]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst17|Mux9~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst17|Mux3~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[0]~20_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[0]~21_combout\);

-- Location: LCCOMB_X38_Y16_N8
\b2v_inst|b2v_inst2|b2v_inst5|q[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst5|q[0]~4_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst17|o[0]~21_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst17|o[0]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst17|o[0]~23_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst5|q[0]~4_combout\);

-- Location: LCCOMB_X41_Y16_N28
\b2v_inst|b2v_inst2|b2v_inst17|o[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[0]~16_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst9|q\(2) $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst9|q\(3) & \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst9|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[0]~16_combout\);

-- Location: LCCOMB_X41_Y16_N6
\b2v_inst|b2v_inst2|b2v_inst17|o[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[0]~17_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst17|Mux5~1_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst9|q\(3) & \b2v_inst|b2v_inst2|b2v_inst17|o[0]~16_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst17|o[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst17|Mux5~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst9|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[0]~16_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[0]~17_combout\);

-- Location: LCCOMB_X38_Y16_N0
\b2v_inst|b2v_inst2|b2v_inst17|o[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[0]~18_combout\ = (\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst17|o[0]~17_combout\) # (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\ & (\b2v_inst|b2v_inst2|b2v_inst9|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[0]~17_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[0]~18_combout\);

-- Location: LCCOMB_X38_Y16_N10
\b2v_inst|b2v_inst2|b2v_inst17|o[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[0]~19_combout\ = (\b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst9|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst9|q\(0) & \b2v_inst|b2v_inst2|b2v_inst17|o[0]~18_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst17|o[0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst9|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[0]~18_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[0]~19_combout\);

-- Location: LCCOMB_X38_Y16_N2
\b2v_inst|b2v_inst2|b2v_inst5|q[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst5|q[0]~5_combout\ = \b2v_inst|b2v_inst2|b2v_inst5|q\(0) $ (((\b2v_inst|b2v_inst2|b2v_inst5|q[0]~4_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst17|o[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst5|q[0]~4_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[0]~19_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst5|q[0]~5_combout\);

-- Location: LCCOMB_X38_Y16_N30
\b2v_inst|b2v_inst2|b2v_inst5|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst5|q[0]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst5|q[0]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst5|q[0]~5_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst5|q[0]~feeder_combout\);

-- Location: FF_X38_Y16_N31
\b2v_inst|b2v_inst2|b2v_inst5|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst5|q[0]~feeder_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst5|q\(0));

-- Location: LCCOMB_X41_Y14_N0
\b2v_inst|b2v_inst2|b2v_inst35|O[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst35|O[0]~0_combout\ = (\b2v_inst|b2v_inst|di~0_combout\ & (\b2v_inst|b2v_inst2|b2v_inst5|q\(0))) # (!\b2v_inst|b2v_inst|di~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst9|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	datac => \b2v_inst|b2v_inst|di~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst9|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst35|O[0]~0_combout\);

-- Location: FF_X41_Y14_N1
\b2v_inst|b2v_inst2|b2v_inst10|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst35|O[0]~0_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	ena => \b2v_inst|b2v_inst|estadoAtual.localizador~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst10|q\(0));

-- Location: LCCOMB_X38_Y17_N2
\b2v_inst|b2v_inst2|b2v_inst18|o[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[0]~16_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst10|q\(2) $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst10|q\(3) & \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst10|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst10|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[0]~16_combout\);

-- Location: LCCOMB_X38_Y17_N8
\b2v_inst|b2v_inst2|b2v_inst18|o[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[0]~17_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst18|Mux5~1_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst10|q\(3) & \b2v_inst|b2v_inst2|b2v_inst18|o[0]~16_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst18|o[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst10|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst18|Mux5~1_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst18|o[0]~16_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[0]~17_combout\);

-- Location: LCCOMB_X38_Y17_N10
\b2v_inst|b2v_inst2|b2v_inst18|o[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[0]~18_combout\ = (\b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst18|o[0]~17_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst10|q\(0))))) # (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst10|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst18|o[0]~17_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[0]~18_combout\);

-- Location: LCCOMB_X38_Y17_N12
\b2v_inst|b2v_inst2|b2v_inst18|o[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[0]~19_combout\ = (\b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst10|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst10|q\(0) & \b2v_inst|b2v_inst2|b2v_inst18|o[0]~18_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst18|o[0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst10|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst10|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst18|o[0]~18_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[0]~19_combout\);

-- Location: LCCOMB_X38_Y17_N18
\b2v_inst|b2v_inst2|b2v_inst18|o[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[0]~22_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst10|q\(1) $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst10|q\(3) & \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst10|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst10|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[0]~22_combout\);

-- Location: LCCOMB_X38_Y17_N4
\b2v_inst|b2v_inst2|b2v_inst18|o[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[0]~23_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst18|Mux7~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst10|q\(3) & \b2v_inst|b2v_inst2|b2v_inst18|o[0]~22_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst18|o[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst10|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst18|Mux7~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst18|o[0]~22_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[0]~23_combout\);

-- Location: LCCOMB_X39_Y15_N20
\b2v_inst|b2v_inst2|b2v_inst18|o[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[0]~20_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst18|Mux10~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst18|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst18|Mux2~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst18|Mux10~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[0]~20_combout\);

-- Location: LCCOMB_X39_Y15_N26
\b2v_inst|b2v_inst2|b2v_inst18|o[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[0]~21_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst18|o[0]~20_combout\ & (\b2v_inst|b2v_inst2|b2v_inst18|Mux9~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst18|o[0]~20_combout\ 
-- & ((\b2v_inst|b2v_inst2|b2v_inst18|Mux3~0_combout\))))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst18|o[0]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst18|Mux9~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst18|Mux3~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst18|o[0]~20_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[0]~21_combout\);

-- Location: LCCOMB_X38_Y17_N22
\b2v_inst|b2v_inst2|b2v_inst6|q[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst6|q[0]~4_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst18|o[0]~21_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst18|o[0]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst18|o[0]~23_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst18|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst6|q[0]~4_combout\);

-- Location: LCCOMB_X37_Y17_N24
\b2v_inst|b2v_inst2|b2v_inst6|q[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst6|q[0]~5_combout\ = \b2v_inst|b2v_inst2|b2v_inst6|q\(0) $ (((\b2v_inst|b2v_inst2|b2v_inst6|q[0]~4_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst18|o[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst18|o[0]~19_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst6|q[0]~4_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst6|q[0]~5_combout\);

-- Location: LCCOMB_X37_Y17_N20
\b2v_inst|b2v_inst2|b2v_inst6|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst6|q[0]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst6|q[0]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst6|q[0]~5_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst6|q[0]~feeder_combout\);

-- Location: FF_X37_Y17_N21
\b2v_inst|b2v_inst2|b2v_inst6|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst6|q[0]~feeder_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst6|q\(0));

-- Location: LCCOMB_X41_Y14_N22
\b2v_inst|b2v_inst2|b2v_inst34|O[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst34|O[0]~0_combout\ = (\b2v_inst|b2v_inst|di~0_combout\ & (\b2v_inst|b2v_inst2|b2v_inst6|q\(0))) # (!\b2v_inst|b2v_inst|di~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst10|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datac => \b2v_inst|b2v_inst|di~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst10|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst34|O[0]~0_combout\);

-- Location: FF_X41_Y14_N23
\b2v_inst|b2v_inst2|b2v_inst11|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst34|O[0]~0_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	ena => \b2v_inst|b2v_inst|estadoAtual.localizador~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst11|q\(0));

-- Location: LCCOMB_X37_Y11_N20
\b2v_inst|b2v_inst2|b2v_inst19|o[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[0]~16_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst11|q\(2) $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & \b2v_inst|b2v_inst2|b2v_inst11|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst11|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~16_combout\);

-- Location: LCCOMB_X37_Y11_N18
\b2v_inst|b2v_inst2|b2v_inst19|o[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[0]~17_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst19|Mux5~1_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst11|q\(3) & \b2v_inst|b2v_inst2|b2v_inst19|o[0]~16_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|o[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst11|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst19|Mux5~1_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~16_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~17_combout\);

-- Location: LCCOMB_X37_Y11_N28
\b2v_inst|b2v_inst2|b2v_inst19|o[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[0]~18_combout\ = (\b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst19|o[0]~17_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst11|q\(0))))) # (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst11|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~17_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~18_combout\);

-- Location: LCCOMB_X37_Y11_N26
\b2v_inst|b2v_inst2|b2v_inst19|o[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[0]~19_combout\ = (\b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst11|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst11|q\(0) & \b2v_inst|b2v_inst2|b2v_inst19|o[0]~18_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|o[0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst11|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~18_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~19_combout\);

-- Location: LCCOMB_X38_Y11_N28
\b2v_inst|b2v_inst2|b2v_inst19|o[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[0]~20_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst19|Mux10~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst19|Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst19|Mux10~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst19|Mux2~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~20_combout\);

-- Location: LCCOMB_X38_Y11_N10
\b2v_inst|b2v_inst2|b2v_inst19|o[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[0]~21_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst19|o[0]~20_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst19|Mux9~0_combout\))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~20_combout\ & (\b2v_inst|b2v_inst2|b2v_inst19|Mux3~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|o[0]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst19|Mux3~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst19|Mux9~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~20_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~21_combout\);

-- Location: LCCOMB_X38_Y11_N24
\b2v_inst|b2v_inst2|b2v_inst19|o[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[0]~22_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst11|q\(1) $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst11|q\(3) & \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst11|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~22_combout\);

-- Location: LCCOMB_X38_Y11_N22
\b2v_inst|b2v_inst2|b2v_inst19|o[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[0]~23_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst19|Mux7~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst11|q\(3) & \b2v_inst|b2v_inst2|b2v_inst19|o[0]~22_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|o[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst19|Mux7~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst11|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~22_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~23_combout\);

-- Location: LCCOMB_X37_Y11_N16
\b2v_inst|b2v_inst2|b2v_inst7|q[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst7|q[0]~6_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~21_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst19|o[0]~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~23_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst7|q[0]~6_combout\);

-- Location: LCCOMB_X37_Y11_N14
\b2v_inst|b2v_inst2|b2v_inst7|q[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst7|q[0]~7_combout\ = \b2v_inst|b2v_inst2|b2v_inst7|q\(0) $ (((\b2v_inst|b2v_inst2|b2v_inst7|q[0]~6_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst19|o[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~19_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q[0]~6_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst7|q[0]~7_combout\);

-- Location: LCCOMB_X37_Y11_N30
\b2v_inst|b2v_inst2|b2v_inst7|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst7|q[0]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst7|q[0]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst7|q[0]~7_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst7|q[0]~feeder_combout\);

-- Location: FF_X37_Y11_N31
\b2v_inst|b2v_inst2|b2v_inst7|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst7|q[0]~feeder_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst7|q\(0));

-- Location: LCCOMB_X41_Y14_N20
\b2v_inst|b2v_inst2|b2v_inst33|O[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst33|O[0]~0_combout\ = (\b2v_inst|b2v_inst|di~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst7|q\(0)))) # (!\b2v_inst|b2v_inst|di~0_combout\ & (\b2v_inst|b2v_inst2|b2v_inst11|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst11|q\(0),
	datac => \b2v_inst|b2v_inst|di~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst33|O[0]~0_combout\);

-- Location: FF_X41_Y14_N21
\b2v_inst|b2v_inst2|b2v_inst36|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst33|O[0]~0_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	ena => \b2v_inst|b2v_inst|estadoAtual.localizador~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst36|q\(0));

-- Location: LCCOMB_X41_Y14_N24
\b2v_inst|b2v_inst2|b2v_inst22|O[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst22|O[0]~0_combout\ = (\b2v_inst|b2v_inst|di~0_combout\) # (\b2v_inst|b2v_inst2|b2v_inst36|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst|di~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst36|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst22|O[0]~0_combout\);

-- Location: FF_X41_Y14_N25
\b2v_inst|b2v_inst2|b2v_inst9|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst22|O[0]~0_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	ena => \b2v_inst|b2v_inst|estadoAtual.localizador~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst9|q\(0));

-- Location: LCCOMB_X39_Y13_N14
\b2v_inst|b2v_inst2|b2v_inst17|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|Mux10~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst9|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst9|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst9|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst9|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst9|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst9|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst17|Mux10~0_combout\);

-- Location: LCCOMB_X37_Y16_N10
\b2v_inst|b2v_inst2|b2v_inst17|o[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[3]~4_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst17|Mux7~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst9|q\(3) & !\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst17|Mux7~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[3]~4_combout\);

-- Location: LCCOMB_X38_Y16_N22
\b2v_inst|b2v_inst2|b2v_inst17|o[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[3]~5_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst17|o[3]~4_combout\ & (\b2v_inst|b2v_inst2|b2v_inst17|Mux10~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst17|o[3]~4_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst17|Mux9~0_combout\))))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst17|o[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst17|Mux10~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst17|Mux9~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[3]~4_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[3]~5_combout\);

-- Location: LCCOMB_X37_Y16_N4
\b2v_inst|b2v_inst2|b2v_inst17|o[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[3]~6_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst17|Mux5~0_combout\) # (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst17|Mux4~0_combout\ & ((!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst17|Mux4~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst17|Mux5~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[3]~6_combout\);

-- Location: LCCOMB_X37_Y16_N14
\b2v_inst|b2v_inst2|b2v_inst17|o[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[3]~7_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst9|q\(0) $ (((\b2v_inst|b2v_inst2|b2v_inst17|o[3]~6_combout\ & \b2v_inst|b2v_inst2|b2v_inst9|q\(2)))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst17|o[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst17|o[3]~6_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst9|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[3]~7_combout\);

-- Location: LCCOMB_X38_Y16_N4
\b2v_inst|b2v_inst2|b2v_inst5|q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst5|q[3]~0_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & (\b2v_inst|b2v_inst2|b2v_inst17|o[3]~5_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst17|o[3]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst17|o[3]~5_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[3]~7_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst5|q[3]~0_combout\);

-- Location: LCCOMB_X39_Y13_N0
\b2v_inst|b2v_inst2|b2v_inst17|o[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[3]~0_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst9|q\(1) $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst9|q\(3) & \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst9|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[3]~0_combout\);

-- Location: LCCOMB_X39_Y13_N4
\b2v_inst|b2v_inst2|b2v_inst17|o[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[3]~1_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst17|Mux2~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst9|q\(3) & \b2v_inst|b2v_inst2|b2v_inst17|o[3]~0_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst17|o[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst17|Mux2~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst9|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[3]~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[3]~1_combout\);

-- Location: LCCOMB_X38_Y16_N6
\b2v_inst|b2v_inst2|b2v_inst17|o[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[3]~2_combout\ = (\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst17|o[3]~1_combout\) # (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst9|q\(3) & (\b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[3]~1_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[3]~2_combout\);

-- Location: LCCOMB_X38_Y16_N28
\b2v_inst|b2v_inst2|b2v_inst17|o[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[3]~3_combout\ = (\b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst9|q\(2) $ (((\b2v_inst|b2v_inst2|b2v_inst9|q\(3) & \b2v_inst|b2v_inst2|b2v_inst17|o[3]~2_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst17|o[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst9|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[3]~2_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[3]~3_combout\);

-- Location: LCCOMB_X38_Y16_N18
\b2v_inst|b2v_inst2|b2v_inst5|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst5|q[3]~1_combout\ = \b2v_inst|b2v_inst2|b2v_inst5|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst5|q[3]~0_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst17|o[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst5|q[3]~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[3]~3_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst5|q[3]~1_combout\);

-- Location: LCCOMB_X38_Y16_N12
\b2v_inst|b2v_inst2|b2v_inst5|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst5|q[3]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst5|q[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst5|q[3]~1_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst5|q[3]~feeder_combout\);

-- Location: FF_X38_Y16_N13
\b2v_inst|b2v_inst2|b2v_inst5|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst5|q[3]~feeder_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst5|q\(3));

-- Location: LCCOMB_X36_Y16_N28
\b2v_inst|b2v_inst2|b2v_inst35|O[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst35|O[3]~3_combout\ = (\b2v_inst|b2v_inst|di~0_combout\ & (\b2v_inst|b2v_inst2|b2v_inst5|q\(3))) # (!\b2v_inst|b2v_inst|di~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst9|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst5|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst9|q\(3),
	datad => \b2v_inst|b2v_inst|di~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst35|O[3]~3_combout\);

-- Location: FF_X36_Y16_N29
\b2v_inst|b2v_inst2|b2v_inst10|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst35|O[3]~3_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	ena => \b2v_inst|b2v_inst|estadoAtual.localizador~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst10|q\(3));

-- Location: LCCOMB_X36_Y16_N22
\b2v_inst|b2v_inst2|b2v_inst34|O[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst34|O[3]~3_combout\ = (\b2v_inst|b2v_inst|di~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst6|q\(3)))) # (!\b2v_inst|b2v_inst|di~0_combout\ & (\b2v_inst|b2v_inst2|b2v_inst10|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst10|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst6|q\(3),
	datad => \b2v_inst|b2v_inst|di~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst34|O[3]~3_combout\);

-- Location: FF_X36_Y16_N23
\b2v_inst|b2v_inst2|b2v_inst11|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst34|O[3]~3_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	ena => \b2v_inst|b2v_inst|estadoAtual.localizador~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst11|q\(3));

-- Location: LCCOMB_X36_Y11_N2
\b2v_inst|b2v_inst2|b2v_inst33|O[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst33|O[3]~3_combout\ = (\b2v_inst|b2v_inst|di~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst7|q\(3)))) # (!\b2v_inst|b2v_inst|di~0_combout\ & (\b2v_inst|b2v_inst2|b2v_inst11|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst7|q\(3),
	datad => \b2v_inst|b2v_inst|di~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst33|O[3]~3_combout\);

-- Location: FF_X36_Y11_N3
\b2v_inst|b2v_inst2|b2v_inst36|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst33|O[3]~3_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	ena => \b2v_inst|b2v_inst|estadoAtual.localizador~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst36|q\(3));

-- Location: LCCOMB_X38_Y12_N6
\b2v_inst|b2v_inst2|b2v_inst20|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|Mux5~1_combout\ = \b2v_inst|b2v_inst2|b2v_inst36|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst36|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst36|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst36|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst20|Mux5~1_combout\);

-- Location: LCCOMB_X39_Y12_N28
\b2v_inst|b2v_inst2|b2v_inst20|o[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[0]~19_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst36|q\(2) $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst36|q\(3) & \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst36|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst36|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[0]~19_combout\);

-- Location: LCCOMB_X39_Y12_N6
\b2v_inst|b2v_inst2|b2v_inst20|o[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[0]~20_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst20|Mux5~1_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst36|q\(3) & \b2v_inst|b2v_inst2|b2v_inst20|o[0]~19_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|o[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst20|Mux5~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst36|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[0]~19_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[0]~20_combout\);

-- Location: LCCOMB_X39_Y12_N0
\b2v_inst|b2v_inst2|b2v_inst20|o[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[0]~21_combout\ = (\b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|o[0]~20_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst36|q\(0))))) # (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst36|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[0]~20_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[0]~21_combout\);

-- Location: LCCOMB_X39_Y12_N30
\b2v_inst|b2v_inst2|b2v_inst20|o[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[0]~22_combout\ = (\b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst36|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst36|q\(0) & \b2v_inst|b2v_inst2|b2v_inst20|o[0]~21_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|o[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst36|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst36|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[0]~22_combout\);

-- Location: LCCOMB_X39_Y12_N26
\b2v_inst|b2v_inst2|b2v_inst20|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|Mux10~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst36|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst36|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst36|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst36|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst36|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst36|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst20|Mux10~0_combout\);

-- Location: LCCOMB_X37_Y12_N14
\b2v_inst|b2v_inst2|b2v_inst20|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|Mux2~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst36|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst36|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst36|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst36|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst20|Mux2~0_combout\);

-- Location: LCCOMB_X39_Y12_N4
\b2v_inst|b2v_inst2|b2v_inst20|o[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[0]~23_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst20|Mux10~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst20|Mux10~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst20|Mux2~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[0]~23_combout\);

-- Location: LCCOMB_X39_Y12_N22
\b2v_inst|b2v_inst2|b2v_inst20|o[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[0]~24_combout\ = (\b2v_inst|b2v_inst2|b2v_inst20|o[0]~23_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|Mux9~0_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst20|o[0]~23_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|Mux3~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst20|Mux9~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst20|Mux3~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst20|o[0]~23_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[0]~24_combout\);

-- Location: LCCOMB_X39_Y12_N16
\b2v_inst|b2v_inst2|b2v_inst20|o[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[0]~25_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst36|q\(1) $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & \b2v_inst|b2v_inst2|b2v_inst36|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst36|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst36|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[0]~25_combout\);

-- Location: LCCOMB_X39_Y12_N18
\b2v_inst|b2v_inst2|b2v_inst20|o[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[0]~26_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst20|Mux7~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst36|q\(3) & \b2v_inst|b2v_inst2|b2v_inst20|o[0]~25_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|o[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst20|Mux7~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst36|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[0]~25_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[0]~26_combout\);

-- Location: LCCOMB_X39_Y12_N20
\b2v_inst|b2v_inst2|b2v_inst8|q[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst8|q[0]~4_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & (\b2v_inst|b2v_inst2|b2v_inst20|o[0]~24_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst20|o[0]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst20|o[0]~24_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[0]~26_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst8|q[0]~4_combout\);

-- Location: LCCOMB_X39_Y12_N2
\b2v_inst|b2v_inst2|b2v_inst8|q[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst8|q[0]~5_combout\ = \b2v_inst|b2v_inst2|b2v_inst8|q\(0) $ (((\b2v_inst|b2v_inst2|b2v_inst8|q[0]~4_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst20|o[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst20|o[0]~22_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst8|q[0]~4_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst8|q[0]~5_combout\);

-- Location: LCCOMB_X39_Y12_N24
\b2v_inst|b2v_inst2|b2v_inst8|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst8|q[0]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst8|q[0]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst8|q[0]~5_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst8|q[0]~feeder_combout\);

-- Location: FF_X39_Y12_N25
\b2v_inst|b2v_inst2|b2v_inst8|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst8|q[0]~feeder_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst8|q\(0));

-- Location: LCCOMB_X36_Y12_N8
\b2v_inst|b2v_inst2|b2v_inst16|o[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[2]~2_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(2)) # ((!\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & \b2v_inst|b2v_inst2|b2v_inst8|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst8|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~2_combout\);

-- Location: LCCOMB_X36_Y12_N24
\b2v_inst|b2v_inst2|b2v_inst16|o[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[3]~30_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst8|q\(0))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst4|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & 
-- \b2v_inst|b2v_inst2|b2v_inst4|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst4|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~30_combout\);

-- Location: LCCOMB_X36_Y12_N6
\b2v_inst|b2v_inst2|b2v_inst16|o[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[3]~31_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst16|Mux2~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst4|q\(3) & \b2v_inst|b2v_inst2|b2v_inst16|o[3]~30_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst16|o[3]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst16|Mux2~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~30_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~31_combout\);

-- Location: LCCOMB_X36_Y12_N12
\b2v_inst|b2v_inst2|b2v_inst16|o[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[3]~32_combout\ = (\b2v_inst|b2v_inst2|b2v_inst16|o[2]~2_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst16|o[2]~3_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst16|o[3]~31_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst16|o[2]~3_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst4|q\(3))))) # (!\b2v_inst|b2v_inst2|b2v_inst16|o[2]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst16|o[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~2_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~3_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~32_combout\);

-- Location: LCCOMB_X36_Y12_N26
\b2v_inst|b2v_inst2|b2v_inst16|o[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[3]~33_combout\ = (\b2v_inst|b2v_inst2|b2v_inst16|o[2]~5_combout\ & (\b2v_inst|b2v_inst2|b2v_inst4|q\(2) $ (((\b2v_inst|b2v_inst2|b2v_inst4|q\(3) & \b2v_inst|b2v_inst2|b2v_inst16|o[3]~32_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst16|o[2]~5_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst16|o[3]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~5_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~32_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~33_combout\);

-- Location: LCCOMB_X34_Y12_N24
\b2v_inst|b2v_inst2|b2v_inst16|o[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[3]~36_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst8|q\(1))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & 
-- ((\b2v_inst|b2v_inst2|b2v_inst16|Mux5~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst16|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst16|Mux4~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst16|Mux5~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~36_combout\);

-- Location: LCCOMB_X34_Y12_N30
\b2v_inst|b2v_inst2|b2v_inst16|o[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[3]~37_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst4|q\(0) $ (((\b2v_inst|b2v_inst2|b2v_inst4|q\(2) & \b2v_inst|b2v_inst2|b2v_inst16|o[3]~36_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst16|o[3]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst4|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~36_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~37_combout\);

-- Location: LCCOMB_X35_Y12_N28
\b2v_inst|b2v_inst2|b2v_inst16|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|Mux8~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst4|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst4|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst4|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst4|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst16|Mux8~0_combout\);

-- Location: LCCOMB_X34_Y12_N4
\b2v_inst|b2v_inst2|b2v_inst16|o[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[3]~34_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst8|q\(0))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst16|Mux8~0_combout\ $ 
-- (((!\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & \b2v_inst|b2v_inst2|b2v_inst4|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst16|Mux8~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~34_combout\);

-- Location: LCCOMB_X34_Y12_N18
\b2v_inst|b2v_inst2|b2v_inst16|o[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[3]~35_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst16|o[3]~34_combout\ & (\b2v_inst|b2v_inst2|b2v_inst16|Mux10~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst16|o[3]~34_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst16|Mux9~0_combout\))))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst16|o[3]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst16|Mux10~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~34_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst16|Mux9~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~35_combout\);

-- Location: LCCOMB_X34_Y12_N20
\b2v_inst|b2v_inst2|b2v_inst16|o[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[3]~38_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(3) & ((\b2v_inst|b2v_inst2|b2v_inst8|q\(2) & ((\b2v_inst|b2v_inst2|b2v_inst16|o[3]~35_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(2) & 
-- (\b2v_inst|b2v_inst2|b2v_inst16|o[3]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst8|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~37_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~35_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~38_combout\);

-- Location: LCCOMB_X35_Y15_N18
\b2v_inst|b2v_inst2|b2v_inst15|o[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[3]~10_combout\ = (!\b2v_inst|b2v_inst2|b2v_inst7|q\(2) & \b2v_inst|b2v_inst2|b2v_inst7|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst7|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~10_combout\);

-- Location: LCCOMB_X35_Y15_N8
\b2v_inst|b2v_inst2|b2v_inst15|o[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[3]~8_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(2)) # ((\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & \b2v_inst|b2v_inst2|b2v_inst7|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst7|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~8_combout\);

-- Location: LCCOMB_X35_Y15_N30
\b2v_inst|b2v_inst2|b2v_inst15|o[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[3]~7_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(2)) # ((!\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & \b2v_inst|b2v_inst2|b2v_inst7|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst7|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~7_combout\);

-- Location: LCCOMB_X35_Y15_N4
\b2v_inst|b2v_inst2|b2v_inst15|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|Mux2~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst3|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst3|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst3|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst3|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|Mux2~0_combout\);

-- Location: LCCOMB_X35_Y15_N2
\b2v_inst|b2v_inst2|b2v_inst15|o[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[3]~38_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst7|q\(0))))) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst3|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst3|q\(3) & 
-- \b2v_inst|b2v_inst2|b2v_inst7|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst3|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst3|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~38_combout\);

-- Location: LCCOMB_X35_Y15_N28
\b2v_inst|b2v_inst2|b2v_inst15|o[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[3]~39_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst15|Mux2~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst3|q\(3) & \b2v_inst|b2v_inst2|b2v_inst15|o[3]~38_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst15|o[3]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst3|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|Mux2~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~38_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~39_combout\);

-- Location: LCCOMB_X35_Y15_N10
\b2v_inst|b2v_inst2|b2v_inst15|o[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[3]~40_combout\ = (\b2v_inst|b2v_inst2|b2v_inst15|o[3]~8_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst15|o[3]~39_combout\) # (!\b2v_inst|b2v_inst2|b2v_inst15|o[3]~7_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst15|o[3]~8_combout\ & (\b2v_inst|b2v_inst2|b2v_inst3|q\(3) & (\b2v_inst|b2v_inst2|b2v_inst15|o[3]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst3|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~8_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~7_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~39_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~40_combout\);

-- Location: LCCOMB_X35_Y15_N0
\b2v_inst|b2v_inst2|b2v_inst15|o[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[3]~41_combout\ = (\b2v_inst|b2v_inst2|b2v_inst15|o[3]~10_combout\ & (\b2v_inst|b2v_inst2|b2v_inst3|q\(2) $ (((\b2v_inst|b2v_inst2|b2v_inst3|q\(3) & \b2v_inst|b2v_inst2|b2v_inst15|o[3]~40_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst15|o[3]~10_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst15|o[3]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst3|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~10_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst3|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~40_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~41_combout\);

-- Location: LCCOMB_X37_Y15_N4
\b2v_inst|b2v_inst2|b2v_inst15|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|Mux9~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst3|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst3|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst3|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst3|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst3|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst3|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst3|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst3|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|Mux9~0_combout\);

-- Location: LCCOMB_X37_Y15_N26
\b2v_inst|b2v_inst2|b2v_inst15|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|Mux10~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst3|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst3|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst3|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst3|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst3|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst3|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|Mux10~0_combout\);

-- Location: LCCOMB_X37_Y15_N20
\b2v_inst|b2v_inst2|b2v_inst15|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|Mux8~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst3|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst3|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst3|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst3|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|Mux8~0_combout\);

-- Location: LCCOMB_X37_Y15_N24
\b2v_inst|b2v_inst2|b2v_inst15|o[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[3]~33_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst7|q\(0))) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst15|Mux8~0_combout\ $ 
-- (((!\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & \b2v_inst|b2v_inst2|b2v_inst3|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst3|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|Mux8~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~33_combout\);

-- Location: LCCOMB_X37_Y15_N14
\b2v_inst|b2v_inst2|b2v_inst15|o[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[3]~34_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst15|o[3]~33_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst15|Mux10~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst15|o[3]~33_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst15|Mux9~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst15|o[3]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst15|Mux9~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|Mux10~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~33_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~34_combout\);

-- Location: LCCOMB_X37_Y15_N12
\b2v_inst|b2v_inst2|b2v_inst15|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|Mux4~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst3|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst3|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst3|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst3|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|Mux4~0_combout\);

-- Location: LCCOMB_X37_Y15_N28
\b2v_inst|b2v_inst2|b2v_inst15|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|Mux5~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst3|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst3|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst3|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst3|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst3|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst3|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|Mux5~0_combout\);

-- Location: LCCOMB_X36_Y15_N16
\b2v_inst|b2v_inst2|b2v_inst15|o[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[3]~35_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst7|q\(0)) # (\b2v_inst|b2v_inst2|b2v_inst15|Mux5~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & 
-- (\b2v_inst|b2v_inst2|b2v_inst15|Mux4~0_combout\ & (!\b2v_inst|b2v_inst2|b2v_inst7|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst15|Mux4~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst15|Mux5~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~35_combout\);

-- Location: LCCOMB_X36_Y15_N2
\b2v_inst|b2v_inst2|b2v_inst15|o[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[3]~36_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst3|q\(0) $ (((\b2v_inst|b2v_inst2|b2v_inst3|q\(2) & \b2v_inst|b2v_inst2|b2v_inst15|o[3]~35_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst15|o[3]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst3|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst3|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~35_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~36_combout\);

-- Location: LCCOMB_X36_Y16_N20
\b2v_inst|b2v_inst2|b2v_inst15|o[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[3]~37_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(3) & ((\b2v_inst|b2v_inst2|b2v_inst7|q\(2) & (\b2v_inst|b2v_inst2|b2v_inst15|o[3]~34_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(2) & 
-- ((\b2v_inst|b2v_inst2|b2v_inst15|o[3]~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~34_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~36_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~37_combout\);

-- Location: LCCOMB_X36_Y16_N18
\b2v_inst|b2v_inst2|b2v_inst15|o[3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[3]~42_combout\ = (\b2v_inst|b2v_inst2|b2v_inst15|o[3]~37_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst7|q\(3) & \b2v_inst|b2v_inst2|b2v_inst15|o[3]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~41_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~37_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~42_combout\);

-- Location: LCCOMB_X36_Y16_N4
\b2v_inst|b2v_inst2|b2v_inst37|c[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst37|c[3]~8_combout\ = \b2v_inst|b2v_inst2|b2v_inst15|o[3]~42_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst16|o[3]~38_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst8|q\(3) & \b2v_inst|b2v_inst2|b2v_inst16|o[3]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst8|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~33_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~38_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~42_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~8_combout\);

-- Location: LCCOMB_X36_Y16_N14
\b2v_inst|b2v_inst2|b2v_inst37|c[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\ = \b2v_inst|b2v_inst2|b2v_inst|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst37|c[3]~8_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[3]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~8_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~9_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\);

-- Location: FF_X39_Y14_N1
\b2v_inst|b2v_inst2|b2v_inst26|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => VCC,
	ena => \b2v_inst|b2v_inst|di~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst26|q\(3));

-- Location: LCCOMB_X39_Y14_N16
\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ = (\b2v_inst|b2v_inst2|b2v_inst26|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst26|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst26|q\(2)) # (\b2v_inst|b2v_inst2|b2v_inst26|q\(1)))))) # (!\b2v_inst|b2v_inst2|b2v_inst26|q\(0) 
-- & ((\b2v_inst|b2v_inst2|b2v_inst26|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst26|q\(2))) # (!\b2v_inst|b2v_inst2|b2v_inst26|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst26|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst26|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst26|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst26|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst26|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\);

-- Location: LCCOMB_X38_Y14_N26
\b2v_inst|b2v_inst2|b2v_inst21|o[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[2]~32_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\ $ 
-- (((!\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & \b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~32_combout\);

-- Location: LCCOMB_X38_Y14_N12
\b2v_inst|b2v_inst2|b2v_inst21|o[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[2]~33_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst21|Mux7~2_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\ & !\b2v_inst|b2v_inst2|b2v_inst21|o[2]~32_combout\))))) 
-- # (!\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~32_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|Mux7~2_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~33_combout\);

-- Location: LCCOMB_X37_Y14_N8
\b2v_inst|b2v_inst2|b2v_inst21|o[2]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[2]~34_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & (\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst21|Mux3~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|Mux3~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|Mux0~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~34_combout\);

-- Location: LCCOMB_X37_Y14_N18
\b2v_inst|b2v_inst2|b2v_inst21|o[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[2]~35_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & (\b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~34_combout\ & \b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\))))) 
-- # (!\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~34_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~35_combout\);

-- Location: LCCOMB_X38_Y14_N30
\b2v_inst|b2v_inst2|b2v_inst21|o[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[2]~36_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\ & (\b2v_inst|b2v_inst2|b2v_inst21|o[2]~33_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~33_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~35_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~36_combout\);

-- Location: LCCOMB_X38_Y14_N8
\b2v_inst|b2v_inst2|b2v_inst21|o[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[2]~37_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ 
-- & ((\b2v_inst|b2v_inst2|b2v_inst21|Mux5~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & (\b2v_inst|b2v_inst2|b2v_inst21|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|Mux4~4_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|Mux5~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~37_combout\);

-- Location: LCCOMB_X38_Y14_N18
\b2v_inst|b2v_inst2|b2v_inst21|o[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[2]~38_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~37_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|Mux9~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[2]~37_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst21|Mux7~3_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst21|o[2]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~37_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|Mux7~3_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|Mux9~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~38_combout\);

-- Location: LCCOMB_X38_Y14_N24
\b2v_inst|b2v_inst2|b2v_inst21|o[2]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[2]~39_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[3]~2_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[3]~3_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~38_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[3]~3_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[3]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst21|o[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~2_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~3_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~38_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~39_combout\);

-- Location: LCCOMB_X38_Y14_N2
\b2v_inst|b2v_inst2|b2v_inst21|o[2]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[2]~40_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[3]~5_combout\ & (\b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\ & \b2v_inst|b2v_inst2|b2v_inst21|o[2]~39_combout\))))) 
-- # (!\b2v_inst|b2v_inst2|b2v_inst21|o[3]~5_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~5_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~39_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~40_combout\);

-- Location: LCCOMB_X38_Y14_N20
\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[2]~36_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst21|o[2]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~36_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~40_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\);

-- Location: LCCOMB_X37_Y12_N4
\b2v_inst|b2v_inst2|b2v_inst20|o[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[1]~15_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst36|q\(3) $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst36|q\(1) & !\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst36|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst36|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[1]~15_combout\);

-- Location: LCCOMB_X37_Y12_N18
\b2v_inst|b2v_inst2|b2v_inst20|o[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[1]~16_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst36|q\(0) $ (((\b2v_inst|b2v_inst2|b2v_inst36|q\(1) & !\b2v_inst|b2v_inst2|b2v_inst20|o[1]~15_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|o[1]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst36|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst20|o[1]~15_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst36|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[1]~16_combout\);

-- Location: LCCOMB_X37_Y12_N24
\b2v_inst|b2v_inst2|b2v_inst20|o[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[1]~17_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|Mux9~0_combout\) # (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst20|Mux2~0_combout\ & ((!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst20|Mux2~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst20|Mux9~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[1]~17_combout\);

-- Location: LCCOMB_X37_Y12_N10
\b2v_inst|b2v_inst2|b2v_inst20|o[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[1]~18_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|o[1]~17_combout\ & (\b2v_inst|b2v_inst2|b2v_inst20|Mux5~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst20|o[1]~17_combout\ 
-- & ((\b2v_inst|b2v_inst2|b2v_inst36|q\(2)))))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|o[1]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst20|Mux5~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst36|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[1]~17_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[1]~18_combout\);

-- Location: LCCOMB_X37_Y12_N8
\b2v_inst|b2v_inst2|b2v_inst8|q[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst8|q[1]~2_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & (\b2v_inst|b2v_inst2|b2v_inst20|o[1]~16_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst20|o[1]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst20|o[1]~16_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[1]~18_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst8|q[1]~2_combout\);

-- Location: LCCOMB_X37_Y12_N0
\b2v_inst|b2v_inst2|b2v_inst20|o[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[1]~11_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|Mux5~1_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|Mux0~0_combout\ & !\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst20|Mux5~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst20|Mux0~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[1]~11_combout\);

-- Location: LCCOMB_X37_Y12_N22
\b2v_inst|b2v_inst2|b2v_inst20|o[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[1]~12_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|o[1]~11_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|Mux10~0_combout\))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst20|o[1]~11_combout\ & (\b2v_inst|b2v_inst2|b2v_inst20|Mux3~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|o[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst20|Mux3~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst20|Mux10~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[1]~11_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[1]~12_combout\);

-- Location: LCCOMB_X37_Y12_N12
\b2v_inst|b2v_inst2|b2v_inst20|o[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[1]~13_combout\ = (\b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|o[1]~12_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst36|q\(1))))) # (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst36|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst20|o[1]~12_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[1]~13_combout\);

-- Location: LCCOMB_X37_Y12_N2
\b2v_inst|b2v_inst2|b2v_inst20|o[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[1]~14_combout\ = (\b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|o[1]~13_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|Mux7~1_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst20|o[1]~13_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst20|Mux4~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|o[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst20|Mux4~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst20|Mux7~1_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[1]~13_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[1]~14_combout\);

-- Location: LCCOMB_X37_Y12_N30
\b2v_inst|b2v_inst2|b2v_inst8|q[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst8|q[1]~3_combout\ = \b2v_inst|b2v_inst2|b2v_inst8|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst8|q[1]~2_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst20|o[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst8|q[1]~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[1]~14_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst8|q[1]~3_combout\);

-- Location: FF_X37_Y12_N21
\b2v_inst|b2v_inst2|b2v_inst8|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|b2v_inst2|b2v_inst8|q[1]~3_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst8|q\(1));

-- Location: LCCOMB_X36_Y12_N22
\b2v_inst|b2v_inst2|b2v_inst16|o[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[2]~5_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & !\b2v_inst|b2v_inst2|b2v_inst8|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst8|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~5_combout\);

-- Location: LCCOMB_X35_Y12_N24
\b2v_inst|b2v_inst2|b2v_inst16|o[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[0]~0_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst8|q\(0))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst4|q\(2) $ (((\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & 
-- \b2v_inst|b2v_inst2|b2v_inst4|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst4|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[0]~0_combout\);

-- Location: LCCOMB_X35_Y12_N14
\b2v_inst|b2v_inst2|b2v_inst16|o[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[0]~1_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst16|o[0]~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst16|Mux5~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst16|o[0]~0_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst16|Mux0~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst16|o[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst16|Mux0~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst16|Mux5~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[0]~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[0]~1_combout\);

-- Location: LCCOMB_X36_Y12_N28
\b2v_inst|b2v_inst2|b2v_inst16|o[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[0]~4_combout\ = (\b2v_inst|b2v_inst2|b2v_inst16|o[2]~3_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst16|o[0]~1_combout\) # (!\b2v_inst|b2v_inst2|b2v_inst16|o[2]~2_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst16|o[2]~3_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst4|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst16|o[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~3_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst4|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[0]~1_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[0]~4_combout\);

-- Location: LCCOMB_X36_Y12_N0
\b2v_inst|b2v_inst2|b2v_inst16|o[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[0]~6_combout\ = (\b2v_inst|b2v_inst2|b2v_inst16|o[2]~5_combout\ & (\b2v_inst|b2v_inst2|b2v_inst4|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst4|q\(0) & \b2v_inst|b2v_inst2|b2v_inst16|o[0]~4_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst16|o[2]~5_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst16|o[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst4|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~5_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[0]~4_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[0]~6_combout\);

-- Location: LCCOMB_X34_Y12_N28
\b2v_inst|b2v_inst2|b2v_inst16|o[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[0]~9_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst8|q\(1))))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst4|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst4|q\(3) & 
-- \b2v_inst|b2v_inst2|b2v_inst8|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst4|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[0]~9_combout\);

-- Location: LCCOMB_X34_Y12_N22
\b2v_inst|b2v_inst2|b2v_inst16|o[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[0]~10_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst16|Mux8~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst4|q\(3) & \b2v_inst|b2v_inst2|b2v_inst16|o[0]~9_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst16|o[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst16|Mux8~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[0]~9_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[0]~10_combout\);

-- Location: LCCOMB_X34_Y12_N12
\b2v_inst|b2v_inst2|b2v_inst16|o[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[0]~7_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst8|q\(0))))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & 
-- (\b2v_inst|b2v_inst2|b2v_inst16|Mux10~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst16|Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst16|Mux10~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst16|Mux2~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[0]~7_combout\);

-- Location: LCCOMB_X34_Y12_N10
\b2v_inst|b2v_inst2|b2v_inst16|o[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[0]~8_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst16|o[0]~7_combout\ & (\b2v_inst|b2v_inst2|b2v_inst16|Mux9~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst16|o[0]~7_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst16|Mux3~0_combout\))))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst16|o[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst16|Mux9~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst16|Mux3~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[0]~7_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[0]~8_combout\);

-- Location: LCCOMB_X34_Y12_N0
\b2v_inst|b2v_inst2|b2v_inst16|o[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[0]~11_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(3) & ((\b2v_inst|b2v_inst2|b2v_inst8|q\(2) & ((\b2v_inst|b2v_inst2|b2v_inst16|o[0]~8_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(2) & 
-- (\b2v_inst|b2v_inst2|b2v_inst16|o[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst8|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst16|o[0]~10_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[0]~8_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[0]~11_combout\);

-- Location: LCCOMB_X37_Y15_N2
\b2v_inst|b2v_inst2|b2v_inst15|o[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[0]~2_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst7|q\(1))) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst3|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & 
-- \b2v_inst|b2v_inst2|b2v_inst3|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst3|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst3|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[0]~2_combout\);

-- Location: LCCOMB_X36_Y13_N8
\b2v_inst|b2v_inst2|b2v_inst15|o[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[0]~3_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst15|Mux8~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst3|q\(3) & \b2v_inst|b2v_inst2|b2v_inst15|o[0]~2_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst15|o[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst15|Mux8~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst3|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[0]~2_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[0]~3_combout\);

-- Location: LCCOMB_X36_Y15_N24
\b2v_inst|b2v_inst2|b2v_inst15|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|Mux3~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst3|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst3|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst3|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst3|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst3|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst3|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|Mux3~0_combout\);

-- Location: LCCOMB_X36_Y13_N24
\b2v_inst|b2v_inst2|b2v_inst15|o[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[0]~0_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst7|q\(1)) # ((\b2v_inst|b2v_inst2|b2v_inst15|Mux10~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & 
-- (!\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst15|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|Mux10~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|Mux2~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[0]~0_combout\);

-- Location: LCCOMB_X36_Y13_N18
\b2v_inst|b2v_inst2|b2v_inst15|o[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[0]~1_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst15|o[0]~0_combout\ & (\b2v_inst|b2v_inst2|b2v_inst15|Mux9~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst15|o[0]~0_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst15|Mux3~0_combout\))))) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst15|o[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst15|Mux9~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|Mux3~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[0]~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[0]~1_combout\);

-- Location: LCCOMB_X36_Y13_N22
\b2v_inst|b2v_inst2|b2v_inst15|o[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[0]~4_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(3) & ((\b2v_inst|b2v_inst2|b2v_inst7|q\(2) & ((\b2v_inst|b2v_inst2|b2v_inst15|o[0]~1_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(2) & 
-- (\b2v_inst|b2v_inst2|b2v_inst15|o[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|o[0]~3_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[0]~1_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[0]~4_combout\);

-- Location: LCCOMB_X37_Y15_N8
\b2v_inst|b2v_inst2|b2v_inst15|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|Mux0~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst3|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst3|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst3|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst3|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|Mux0~0_combout\);

-- Location: LCCOMB_X37_Y15_N10
\b2v_inst|b2v_inst2|b2v_inst15|o[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[0]~5_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst7|q\(0))))) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst3|q\(2) $ (((\b2v_inst|b2v_inst2|b2v_inst3|q\(0) & 
-- \b2v_inst|b2v_inst2|b2v_inst7|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst3|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst3|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[0]~5_combout\);

-- Location: LCCOMB_X36_Y13_N28
\b2v_inst|b2v_inst2|b2v_inst15|o[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[0]~6_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst15|o[0]~5_combout\ & (\b2v_inst|b2v_inst2|b2v_inst15|Mux5~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst15|o[0]~5_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst15|Mux0~0_combout\))))) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst15|o[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst15|Mux5~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst15|Mux0~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[0]~5_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[0]~6_combout\);

-- Location: LCCOMB_X36_Y13_N6
\b2v_inst|b2v_inst2|b2v_inst15|o[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[0]~9_combout\ = (\b2v_inst|b2v_inst2|b2v_inst15|o[3]~8_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst15|o[0]~6_combout\) # (!\b2v_inst|b2v_inst2|b2v_inst15|o[3]~7_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst15|o[3]~8_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst3|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst15|o[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst3|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst15|o[0]~6_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~8_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~7_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[0]~9_combout\);

-- Location: LCCOMB_X36_Y13_N20
\b2v_inst|b2v_inst2|b2v_inst15|o[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[0]~11_combout\ = (\b2v_inst|b2v_inst2|b2v_inst15|o[3]~10_combout\ & (\b2v_inst|b2v_inst2|b2v_inst3|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst3|q\(0) & \b2v_inst|b2v_inst2|b2v_inst15|o[0]~9_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst15|o[3]~10_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst15|o[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst3|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst3|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~10_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[0]~9_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[0]~11_combout\);

-- Location: LCCOMB_X36_Y13_N10
\b2v_inst|b2v_inst2|b2v_inst15|o[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[0]~12_combout\ = (\b2v_inst|b2v_inst2|b2v_inst15|o[0]~4_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst7|q\(3) & \b2v_inst|b2v_inst2|b2v_inst15|o[0]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|o[0]~4_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[0]~11_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[0]~12_combout\);

-- Location: LCCOMB_X36_Y13_N4
\b2v_inst|b2v_inst2|b2v_inst37|c[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst37|c[0]~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst15|o[0]~12_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst16|o[0]~11_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst8|q\(3) & \b2v_inst|b2v_inst2|b2v_inst16|o[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst8|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst16|o[0]~6_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst16|o[0]~11_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[0]~12_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst37|c[0]~0_combout\);

-- Location: LCCOMB_X36_Y13_N0
\b2v_inst|b2v_inst2|b2v_inst37|c[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\ = \b2v_inst|b2v_inst2|b2v_inst|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst37|c[0]~0_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[0]~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[0]~1_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\);

-- Location: LCCOMB_X39_Y14_N18
\b2v_inst|b2v_inst2|b2v_inst26|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst26|q[0]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst26|q[0]~feeder_combout\);

-- Location: FF_X39_Y14_N19
\b2v_inst|b2v_inst2|b2v_inst26|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst26|q[0]~feeder_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	ena => \b2v_inst|b2v_inst|di~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst26|q\(0));

-- Location: LCCOMB_X39_Y14_N26
\b2v_inst|b2v_inst2|b2v_inst32|o[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\ = (\b2v_inst|b2v_inst2|b2v_inst26|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst26|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst26|q\(2) & \b2v_inst|b2v_inst2|b2v_inst26|q\(3)))))) # (!\b2v_inst|b2v_inst2|b2v_inst26|q\(0) & 
-- (\b2v_inst|b2v_inst2|b2v_inst26|q\(2) $ (((\b2v_inst|b2v_inst2|b2v_inst26|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst26|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst26|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst26|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst26|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\);

-- Location: LCCOMB_X39_Y14_N6
\b2v_inst|b2v_inst2|b2v_inst21|o[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[3]~5_combout\ = (!\b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\ & \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~5_combout\);

-- Location: LCCOMB_X39_Y14_N14
\b2v_inst|b2v_inst2|b2v_inst21|o[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[3]~0_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\ $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & \b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~0_combout\);

-- Location: LCCOMB_X39_Y14_N20
\b2v_inst|b2v_inst2|b2v_inst21|o[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[3]~1_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst21|Mux2~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\ & \b2v_inst|b2v_inst2|b2v_inst21|o[3]~0_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|Mux2~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~1_combout\);

-- Location: LCCOMB_X39_Y14_N28
\b2v_inst|b2v_inst2|b2v_inst21|o[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[3]~4_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[3]~3_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[3]~1_combout\) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[3]~2_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[3]~3_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\ & (\b2v_inst|b2v_inst2|b2v_inst21|o[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~3_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~1_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~4_combout\);

-- Location: LCCOMB_X39_Y14_N30
\b2v_inst|b2v_inst2|b2v_inst21|o[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[3]~6_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[3]~5_combout\ & (\b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\ & \b2v_inst|b2v_inst2|b2v_inst21|o[3]~4_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[3]~5_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~5_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~4_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~6_combout\);

-- Location: LCCOMB_X37_Y14_N4
\b2v_inst|b2v_inst2|b2v_inst21|o[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[3]~9_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst21|Mux5~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|Mux4~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|Mux5~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|Mux4~4_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~9_combout\);

-- Location: LCCOMB_X37_Y14_N10
\b2v_inst|b2v_inst2|b2v_inst21|o[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[3]~10_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & (\b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst21|o[3]~9_combout\ & \b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & (\b2v_inst|b2v_inst2|b2v_inst21|o[3]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~9_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~10_combout\);

-- Location: LCCOMB_X38_Y13_N20
\b2v_inst|b2v_inst2|b2v_inst21|o[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[3]~7_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst21|Mux7~2_combout\ $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\ & !\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|Mux7~2_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~7_combout\);

-- Location: LCCOMB_X38_Y13_N10
\b2v_inst|b2v_inst2|b2v_inst21|o[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[3]~8_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[3]~7_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|Mux10~0_combout\) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[3]~7_combout\ & (\b2v_inst|b2v_inst2|b2v_inst21|Mux9~0_combout\ & (\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|Mux9~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~7_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|Mux10~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~8_combout\);

-- Location: LCCOMB_X38_Y13_N12
\b2v_inst|b2v_inst2|b2v_inst21|o[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[3]~11_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[3]~8_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst21|o[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~10_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~8_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~11_combout\);

-- Location: LCCOMB_X38_Y13_N16
\b2v_inst|b2v_inst2|b2v_inst7|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\ = (\b2v_inst|b2v_inst|estadoAtual.localizador~q\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[3]~11_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst21|o[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst|estadoAtual.localizador~q\,
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~6_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~11_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\);

-- Location: LCCOMB_X38_Y12_N30
\b2v_inst|b2v_inst2|b2v_inst20|o[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[3]~7_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst20|Mux7~0_combout\ $ 
-- (((!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & \b2v_inst|b2v_inst2|b2v_inst36|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst20|Mux7~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst36|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~7_combout\);

-- Location: LCCOMB_X38_Y12_N8
\b2v_inst|b2v_inst2|b2v_inst20|o[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[3]~8_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|o[3]~7_combout\ & (\b2v_inst|b2v_inst2|b2v_inst20|Mux10~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~7_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst20|Mux9~0_combout\))))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|o[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst20|Mux10~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~7_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|Mux9~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~8_combout\);

-- Location: LCCOMB_X38_Y12_N10
\b2v_inst|b2v_inst2|b2v_inst20|o[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[3]~9_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|Mux5~0_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|Mux4~0_combout\ & !\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst20|Mux5~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst20|Mux4~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~9_combout\);

-- Location: LCCOMB_X38_Y12_N24
\b2v_inst|b2v_inst2|b2v_inst20|o[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[3]~10_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst36|q\(0) $ (((\b2v_inst|b2v_inst2|b2v_inst36|q\(2) & \b2v_inst|b2v_inst2|b2v_inst20|o[3]~9_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|o[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst36|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst36|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~9_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~10_combout\);

-- Location: LCCOMB_X38_Y12_N26
\b2v_inst|b2v_inst2|b2v_inst8|q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst8|q[3]~0_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & (\b2v_inst|b2v_inst2|b2v_inst20|o[3]~8_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst20|o[3]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~8_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~10_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst8|q[3]~0_combout\);

-- Location: LCCOMB_X38_Y12_N22
\b2v_inst|b2v_inst2|b2v_inst20|o[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[3]~0_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst36|q\(1) $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & \b2v_inst|b2v_inst2|b2v_inst36|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst36|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst36|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~0_combout\);

-- Location: LCCOMB_X38_Y12_N12
\b2v_inst|b2v_inst2|b2v_inst20|o[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[3]~1_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst20|Mux2~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst36|q\(3) & \b2v_inst|b2v_inst2|b2v_inst20|o[3]~0_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|o[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst36|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst20|Mux2~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~1_combout\);

-- Location: LCCOMB_X38_Y12_N2
\b2v_inst|b2v_inst2|b2v_inst20|o[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[3]~5_combout\ = (\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|o[3]~1_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\ 
-- & (((\b2v_inst|b2v_inst2|b2v_inst36|q\(3) & \b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst36|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~5_combout\);

-- Location: LCCOMB_X38_Y12_N16
\b2v_inst|b2v_inst2|b2v_inst20|o[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[3]~6_combout\ = (\b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst36|q\(2) $ (((\b2v_inst|b2v_inst2|b2v_inst36|q\(3) & \b2v_inst|b2v_inst2|b2v_inst20|o[3]~5_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|o[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst36|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst36|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~5_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~6_combout\);

-- Location: LCCOMB_X38_Y12_N20
\b2v_inst|b2v_inst2|b2v_inst8|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst8|q[3]~1_combout\ = \b2v_inst|b2v_inst2|b2v_inst8|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst8|q[3]~0_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst20|o[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst8|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst8|q[3]~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~6_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst8|q[3]~1_combout\);

-- Location: LCCOMB_X38_Y12_N28
\b2v_inst|b2v_inst2|b2v_inst8|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst8|q[3]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst8|q[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst8|q[3]~1_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst8|q[3]~feeder_combout\);

-- Location: FF_X38_Y12_N29
\b2v_inst|b2v_inst2|b2v_inst8|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst8|q[3]~feeder_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst8|q\(3));

-- Location: LCCOMB_X35_Y12_N22
\b2v_inst|b2v_inst2|b2v_inst16|o[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[2]~27_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst16|Mux3~0_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst8|q\(0))))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & 
-- (((!\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & \b2v_inst|b2v_inst2|b2v_inst16|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst16|Mux3~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst16|Mux0~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~27_combout\);

-- Location: LCCOMB_X35_Y12_N8
\b2v_inst|b2v_inst2|b2v_inst16|o[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[2]~28_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst4|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst4|q\(1) & \b2v_inst|b2v_inst2|b2v_inst16|o[2]~27_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst16|o[2]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst4|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~27_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~28_combout\);

-- Location: LCCOMB_X35_Y12_N2
\b2v_inst|b2v_inst2|b2v_inst16|o[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[2]~25_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst8|q\(0))))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst4|q\(0) $ (((\b2v_inst|b2v_inst2|b2v_inst4|q\(2) & 
-- !\b2v_inst|b2v_inst2|b2v_inst8|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst4|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~25_combout\);

-- Location: LCCOMB_X35_Y12_N0
\b2v_inst|b2v_inst2|b2v_inst16|o[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[2]~26_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst16|Mux8~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst4|q\(2) & !\b2v_inst|b2v_inst2|b2v_inst16|o[2]~25_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst16|o[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst16|Mux8~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~25_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~26_combout\);

-- Location: LCCOMB_X35_Y12_N18
\b2v_inst|b2v_inst2|b2v_inst16|o[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[2]~29_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(3) & ((\b2v_inst|b2v_inst2|b2v_inst8|q\(2) & ((\b2v_inst|b2v_inst2|b2v_inst16|o[2]~26_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(2) & 
-- (\b2v_inst|b2v_inst2|b2v_inst16|o[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst8|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~28_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~26_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~29_combout\);

-- Location: LCCOMB_X36_Y12_N4
\b2v_inst|b2v_inst2|b2v_inst16|o[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[2]~21_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst8|q\(1))))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & 
-- (\b2v_inst|b2v_inst2|b2v_inst16|Mux7~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst16|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst16|Mux7~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst16|Mux4~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~21_combout\);

-- Location: LCCOMB_X36_Y12_N18
\b2v_inst|b2v_inst2|b2v_inst16|o[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[2]~22_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst16|o[2]~21_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst16|Mux9~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst16|o[2]~21_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst16|Mux5~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst16|o[2]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst16|Mux5~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst16|Mux9~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~22_combout\);

-- Location: LCCOMB_X36_Y12_N16
\b2v_inst|b2v_inst2|b2v_inst16|o[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[2]~23_combout\ = (\b2v_inst|b2v_inst2|b2v_inst16|o[2]~2_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst16|o[2]~3_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst16|o[2]~22_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst16|o[2]~3_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst4|q\(2))))) # (!\b2v_inst|b2v_inst2|b2v_inst16|o[2]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst16|o[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~2_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~3_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~22_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~23_combout\);

-- Location: LCCOMB_X36_Y12_N10
\b2v_inst|b2v_inst2|b2v_inst16|o[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[2]~24_combout\ = (\b2v_inst|b2v_inst2|b2v_inst16|o[2]~5_combout\ & (\b2v_inst|b2v_inst2|b2v_inst4|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst4|q\(2) & \b2v_inst|b2v_inst2|b2v_inst16|o[2]~23_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst16|o[2]~5_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst16|o[2]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~5_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst4|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~23_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~24_combout\);

-- Location: LCCOMB_X36_Y15_N6
\b2v_inst|b2v_inst2|b2v_inst15|o[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[2]~23_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst7|q\(0))))) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst3|q\(0) $ (((!\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & 
-- \b2v_inst|b2v_inst2|b2v_inst3|q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst3|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst3|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~23_combout\);

-- Location: LCCOMB_X36_Y15_N20
\b2v_inst|b2v_inst2|b2v_inst15|o[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[2]~24_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst15|Mux8~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst3|q\(2) & !\b2v_inst|b2v_inst2|b2v_inst15|o[2]~23_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst15|o[2]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst15|Mux8~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst3|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~23_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~24_combout\);

-- Location: LCCOMB_X36_Y15_N18
\b2v_inst|b2v_inst2|b2v_inst15|o[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[2]~25_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst7|q\(1))))) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & 
-- (\b2v_inst|b2v_inst2|b2v_inst15|Mux3~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst15|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst15|Mux3~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst15|Mux0~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~25_combout\);

-- Location: LCCOMB_X36_Y15_N28
\b2v_inst|b2v_inst2|b2v_inst15|o[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[2]~26_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst3|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst3|q\(1) & \b2v_inst|b2v_inst2|b2v_inst15|o[2]~25_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst15|o[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst3|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst3|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~25_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~26_combout\);

-- Location: LCCOMB_X36_Y15_N30
\b2v_inst|b2v_inst2|b2v_inst15|o[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[2]~27_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(3) & ((\b2v_inst|b2v_inst2|b2v_inst7|q\(2) & (\b2v_inst|b2v_inst2|b2v_inst15|o[2]~24_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(2) & 
-- ((\b2v_inst|b2v_inst2|b2v_inst15|o[2]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~24_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst7|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~26_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~27_combout\);

-- Location: LCCOMB_X37_Y15_N18
\b2v_inst|b2v_inst2|b2v_inst15|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|Mux7~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst3|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst3|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst3|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst3|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst3|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst3|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|Mux7~0_combout\);

-- Location: LCCOMB_X37_Y15_N16
\b2v_inst|b2v_inst2|b2v_inst15|o[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[2]~28_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst7|q\(0)) # (\b2v_inst|b2v_inst2|b2v_inst15|Mux7~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & 
-- (\b2v_inst|b2v_inst2|b2v_inst15|Mux4~0_combout\ & (!\b2v_inst|b2v_inst2|b2v_inst7|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst15|Mux4~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst15|Mux7~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~28_combout\);

-- Location: LCCOMB_X37_Y15_N30
\b2v_inst|b2v_inst2|b2v_inst15|o[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[2]~29_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst15|o[2]~28_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst15|Mux9~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst15|o[2]~28_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst15|Mux5~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst15|o[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst15|Mux5~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst15|Mux9~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~28_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~29_combout\);

-- Location: LCCOMB_X36_Y14_N12
\b2v_inst|b2v_inst2|b2v_inst15|o[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[2]~30_combout\ = (\b2v_inst|b2v_inst2|b2v_inst15|o[3]~8_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst15|o[2]~29_combout\) # (!\b2v_inst|b2v_inst2|b2v_inst15|o[3]~7_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst15|o[3]~8_combout\ & (\b2v_inst|b2v_inst2|b2v_inst3|q\(2) & ((\b2v_inst|b2v_inst2|b2v_inst15|o[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst3|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~29_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~8_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~7_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~30_combout\);

-- Location: LCCOMB_X36_Y14_N18
\b2v_inst|b2v_inst2|b2v_inst15|o[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[2]~31_combout\ = (\b2v_inst|b2v_inst2|b2v_inst15|o[3]~10_combout\ & (\b2v_inst|b2v_inst2|b2v_inst3|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst3|q\(2) & \b2v_inst|b2v_inst2|b2v_inst15|o[2]~30_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst15|o[3]~10_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst15|o[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst3|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst3|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~10_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~30_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~31_combout\);

-- Location: LCCOMB_X36_Y14_N0
\b2v_inst|b2v_inst2|b2v_inst15|o[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[2]~32_combout\ = (\b2v_inst|b2v_inst2|b2v_inst15|o[2]~27_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst7|q\(3) & \b2v_inst|b2v_inst2|b2v_inst15|o[2]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~27_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~32_combout\);

-- Location: LCCOMB_X36_Y14_N22
\b2v_inst|b2v_inst2|b2v_inst37|c[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst37|c[2]~6_combout\ = \b2v_inst|b2v_inst2|b2v_inst15|o[2]~32_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst16|o[2]~29_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst8|q\(3) & \b2v_inst|b2v_inst2|b2v_inst16|o[2]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst8|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~29_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~24_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~32_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~6_combout\);

-- Location: LCCOMB_X36_Y14_N30
\b2v_inst|b2v_inst2|b2v_inst37|c[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\ = \b2v_inst|b2v_inst2|b2v_inst37|c[2]~6_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst14|o[2]~30_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst13|o[2]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~6_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~30_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[2]~32_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\);

-- Location: FF_X39_Y14_N7
\b2v_inst|b2v_inst2|b2v_inst26|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => VCC,
	ena => \b2v_inst|b2v_inst|di~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst26|q\(2));

-- Location: LCCOMB_X39_Y14_N0
\b2v_inst|b2v_inst2|b2v_inst32|o[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\ = (\b2v_inst|b2v_inst2|b2v_inst26|q\(3) & (\b2v_inst|b2v_inst2|b2v_inst26|q\(0) $ (((!\b2v_inst|b2v_inst2|b2v_inst26|q\(1)) # (!\b2v_inst|b2v_inst2|b2v_inst26|q\(2)))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst26|q\(3) & (\b2v_inst|b2v_inst2|b2v_inst26|q\(2) $ ((\b2v_inst|b2v_inst2|b2v_inst26|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst26|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst26|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst26|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst26|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\);

-- Location: LCCOMB_X38_Y13_N26
\b2v_inst|b2v_inst2|b2v_inst7|q[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\ = (\b2v_inst|b2v_inst|estadoAtual.localizador~q\ & (!\b2v_inst|b2v_inst2|b2v_inst21|o[3]~11_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst|estadoAtual.localizador~q\,
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~6_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~11_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\);

-- Location: LCCOMB_X38_Y11_N20
\b2v_inst|b2v_inst2|b2v_inst19|o[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[3]~0_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst11|q\(1) $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst11|q\(3) & \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst11|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[3]~0_combout\);

-- Location: LCCOMB_X38_Y11_N16
\b2v_inst|b2v_inst2|b2v_inst19|o[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[3]~1_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst19|Mux2~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst11|q\(3) & \b2v_inst|b2v_inst2|b2v_inst19|o[3]~0_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|o[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst11|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst19|Mux2~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[3]~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[3]~1_combout\);

-- Location: LCCOMB_X37_Y11_N2
\b2v_inst|b2v_inst2|b2v_inst19|o[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[3]~2_combout\ = (\b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst19|o[3]~1_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst11|q\(3))))) # (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst11|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[3]~1_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[3]~2_combout\);

-- Location: LCCOMB_X37_Y11_N8
\b2v_inst|b2v_inst2|b2v_inst19|o[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[3]~3_combout\ = (\b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst11|q\(2) $ (((\b2v_inst|b2v_inst2|b2v_inst11|q\(3) & \b2v_inst|b2v_inst2|b2v_inst19|o[3]~2_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|o[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst11|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[3]~2_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[3]~3_combout\);

-- Location: LCCOMB_X38_Y11_N8
\b2v_inst|b2v_inst2|b2v_inst19|o[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[3]~4_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst19|Mux7~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst11|q\(3) & !\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst19|Mux7~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[3]~4_combout\);

-- Location: LCCOMB_X38_Y11_N14
\b2v_inst|b2v_inst2|b2v_inst19|o[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[3]~5_combout\ = (\b2v_inst|b2v_inst2|b2v_inst19|o[3]~4_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst19|Mux10~0_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst19|o[3]~4_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|Mux9~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst19|Mux10~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst19|Mux9~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[3]~4_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[3]~5_combout\);

-- Location: LCCOMB_X39_Y11_N20
\b2v_inst|b2v_inst2|b2v_inst19|o[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[3]~6_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst19|Mux5~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst19|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst19|Mux5~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst19|Mux4~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[3]~6_combout\);

-- Location: LCCOMB_X39_Y11_N6
\b2v_inst|b2v_inst2|b2v_inst19|o[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[3]~7_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst11|q\(0) $ (((\b2v_inst|b2v_inst2|b2v_inst11|q\(2) & \b2v_inst|b2v_inst2|b2v_inst19|o[3]~6_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|o[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst11|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[3]~6_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[3]~7_combout\);

-- Location: LCCOMB_X38_Y11_N4
\b2v_inst|b2v_inst2|b2v_inst7|q[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst7|q[3]~2_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & (\b2v_inst|b2v_inst2|b2v_inst19|o[3]~5_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst19|o[3]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[3]~5_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[3]~7_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~2_combout\);

-- Location: LCCOMB_X37_Y11_N10
\b2v_inst|b2v_inst2|b2v_inst7|q[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst7|q[3]~3_combout\ = \b2v_inst|b2v_inst2|b2v_inst7|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst7|q[3]~2_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst19|o[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[3]~3_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~2_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~3_combout\);

-- Location: LCCOMB_X37_Y11_N0
\b2v_inst|b2v_inst2|b2v_inst7|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst7|q[3]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst7|q[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~3_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~feeder_combout\);

-- Location: FF_X37_Y11_N1
\b2v_inst|b2v_inst2|b2v_inst7|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~feeder_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst7|q\(3));

-- Location: LCCOMB_X36_Y15_N22
\b2v_inst|b2v_inst2|b2v_inst15|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|Mux6~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst3|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst3|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst3|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst3|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|Mux6~0_combout\);

-- Location: LCCOMB_X36_Y15_N12
\b2v_inst|b2v_inst2|b2v_inst15|o[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[1]~18_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst15|Mux3~0_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst7|q\(1))))) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & 
-- (((\b2v_inst|b2v_inst2|b2v_inst15|Mux0~0_combout\ & !\b2v_inst|b2v_inst2|b2v_inst7|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst15|Mux3~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst15|Mux0~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~18_combout\);

-- Location: LCCOMB_X36_Y15_N14
\b2v_inst|b2v_inst2|b2v_inst15|o[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[1]~19_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst15|o[1]~18_combout\ & (\b2v_inst|b2v_inst2|b2v_inst15|Mux10~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst15|o[1]~18_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst15|Mux6~0_combout\))))) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst15|o[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst15|Mux10~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|Mux6~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~18_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~19_combout\);

-- Location: LCCOMB_X36_Y15_N8
\b2v_inst|b2v_inst2|b2v_inst15|o[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[1]~20_combout\ = (\b2v_inst|b2v_inst2|b2v_inst15|o[3]~8_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst15|o[1]~19_combout\) # (!\b2v_inst|b2v_inst2|b2v_inst15|o[3]~7_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst15|o[3]~8_combout\ & (\b2v_inst|b2v_inst2|b2v_inst3|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst15|o[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~8_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst3|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~19_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~7_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~20_combout\);

-- Location: LCCOMB_X36_Y15_N26
\b2v_inst|b2v_inst2|b2v_inst15|o[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[1]~21_combout\ = (\b2v_inst|b2v_inst2|b2v_inst15|o[1]~20_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst15|Mux7~0_combout\) # (!\b2v_inst|b2v_inst2|b2v_inst15|o[3]~10_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst15|o[1]~20_combout\ & (\b2v_inst|b2v_inst2|b2v_inst15|Mux4~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst15|o[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst15|Mux4~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst15|Mux7~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~20_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~10_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~21_combout\);

-- Location: LCCOMB_X37_Y15_N0
\b2v_inst|b2v_inst2|b2v_inst15|o[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[1]~13_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst7|q\(0))) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst3|q\(3) $ (((!\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & 
-- \b2v_inst|b2v_inst2|b2v_inst3|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst3|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst3|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~13_combout\);

-- Location: LCCOMB_X37_Y15_N22
\b2v_inst|b2v_inst2|b2v_inst15|o[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[1]~14_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst3|q\(0) $ (((\b2v_inst|b2v_inst2|b2v_inst3|q\(1) & !\b2v_inst|b2v_inst2|b2v_inst15|o[1]~13_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst15|o[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst3|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst3|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~13_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~14_combout\);

-- Location: LCCOMB_X35_Y15_N16
\b2v_inst|b2v_inst2|b2v_inst15|o[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[1]~15_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst15|Mux9~0_combout\) # (\b2v_inst|b2v_inst2|b2v_inst7|q\(0))))) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & 
-- (\b2v_inst|b2v_inst2|b2v_inst15|Mux2~0_combout\ & ((!\b2v_inst|b2v_inst2|b2v_inst7|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst15|Mux2~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst15|Mux9~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~15_combout\);

-- Location: LCCOMB_X36_Y15_N10
\b2v_inst|b2v_inst2|b2v_inst15|o[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[1]~16_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst15|o[1]~15_combout\ & (\b2v_inst|b2v_inst2|b2v_inst15|Mux5~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst15|o[1]~15_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst3|q\(2)))))) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst15|o[1]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst15|Mux5~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~15_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst3|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~16_combout\);

-- Location: LCCOMB_X36_Y15_N0
\b2v_inst|b2v_inst2|b2v_inst15|o[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[1]~17_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(3) & ((\b2v_inst|b2v_inst2|b2v_inst7|q\(2) & (\b2v_inst|b2v_inst2|b2v_inst15|o[1]~14_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(2) & 
-- ((\b2v_inst|b2v_inst2|b2v_inst15|o[1]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~14_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~16_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~17_combout\);

-- Location: LCCOMB_X36_Y15_N4
\b2v_inst|b2v_inst2|b2v_inst15|o[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[1]~22_combout\ = (\b2v_inst|b2v_inst2|b2v_inst15|o[1]~17_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst7|q\(3) & \b2v_inst|b2v_inst2|b2v_inst15|o[1]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~17_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~22_combout\);

-- Location: LCCOMB_X37_Y14_N2
\b2v_inst|b2v_inst2|b2v_inst37|c[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst37|c[1]~4_combout\ = (\b2v_inst|b2v_inst2|b2v_inst16|o[1]~16_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst8|q\(3) & \b2v_inst|b2v_inst2|b2v_inst16|o[1]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst8|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst16|o[1]~20_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[1]~16_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~4_combout\);

-- Location: LCCOMB_X37_Y13_N0
\b2v_inst|b2v_inst2|b2v_inst37|c[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst37|c[1]~3_combout\ = \b2v_inst|b2v_inst2|b2v_inst|q\(1) $ (((!\b2v_inst|b2v_inst2|b2v_inst14|o[1]~20_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst6|q\(3)) # (!\b2v_inst|b2v_inst2|b2v_inst14|o[1]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst14|o[1]~15_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[1]~20_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~3_combout\);

-- Location: LCCOMB_X37_Y14_N20
\b2v_inst|b2v_inst2|b2v_inst37|c[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\ = \b2v_inst|b2v_inst2|b2v_inst15|o[1]~22_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[1]~4_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst13|o[1]~22_combout\ $ (!\b2v_inst|b2v_inst2|b2v_inst37|c[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~22_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~4_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~22_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~3_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\);

-- Location: LCCOMB_X39_Y14_N24
\b2v_inst|b2v_inst2|Nerror~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|Nerror~0_combout\ = (\b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\) # (\b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\,
	combout => \b2v_inst|b2v_inst2|Nerror~0_combout\);

-- Location: LCCOMB_X41_Y14_N26
\b2v_inst|b2v_inst|di~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst|di~0_combout\ = (\b2v_inst1|Impar~q\ & (!\b2v_inst1|Count_8~q\ & (\b2v_inst|b2v_inst|estadoAtual.localizador~q\ & \b2v_inst|b2v_inst2|Nerror~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Impar~q\,
	datab => \b2v_inst1|Count_8~q\,
	datac => \b2v_inst|b2v_inst|estadoAtual.localizador~q\,
	datad => \b2v_inst|b2v_inst2|Nerror~0_combout\,
	combout => \b2v_inst|b2v_inst|di~0_combout\);

-- Location: LCCOMB_X35_Y14_N22
\b2v_inst8|b2v_inst|b2v_inst|proximoEstado.mux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst|proximoEstado.mux~0_combout\ = (\b2v_inst|b2v_inst|estadoAtual.store~q\ & !\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst|estadoAtual.store~q\,
	datad => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	combout => \b2v_inst8|b2v_inst|b2v_inst|proximoEstado.mux~0_combout\);

-- Location: LCCOMB_X35_Y14_N20
\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux~feeder_combout\ = \b2v_inst8|b2v_inst|b2v_inst|proximoEstado.mux~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|b2v_inst|b2v_inst|proximoEstado.mux~0_combout\,
	combout => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux~feeder_combout\);

-- Location: FF_X35_Y14_N21
\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux~q\);

-- Location: LCCOMB_X35_Y14_N10
\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux2~feeder_combout\ = \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux~q\,
	combout => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux2~feeder_combout\);

-- Location: FF_X35_Y14_N11
\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux2~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux2~q\);

-- Location: LCCOMB_X35_Y14_N12
\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux3~feeder_combout\ = \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux2~q\,
	combout => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux3~feeder_combout\);

-- Location: FF_X35_Y14_N13
\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux3~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux3~q\);

-- Location: LCCOMB_X35_Y14_N30
\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux4~feeder_combout\ = \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux3~q\,
	combout => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux4~feeder_combout\);

-- Location: FF_X35_Y14_N31
\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux4~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux4~q\);

-- Location: FF_X35_Y14_N9
\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux4~q\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux5~q\);

-- Location: FF_X35_Y14_N19
\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux5~q\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux6~q\);

-- Location: LCCOMB_X35_Y14_N28
\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux7~feeder_combout\ = \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux6~q\,
	combout => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux7~feeder_combout\);

-- Location: FF_X35_Y14_N29
\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux7~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux7~q\);

-- Location: LCCOMB_X35_Y14_N2
\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux8~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux8~feeder_combout\ = \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux7~q\,
	combout => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux8~feeder_combout\);

-- Location: FF_X35_Y14_N3
\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux8~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux8~q\);

-- Location: LCCOMB_X34_Y14_N18
\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux9~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux9~feeder_combout\ = \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux8~q\,
	combout => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux9~feeder_combout\);

-- Location: FF_X34_Y14_N19
\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux9~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux9~q\);

-- Location: LCCOMB_X34_Y10_N24
\b2v_inst8|b2v_inst|b2v_inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst|Selector0~0_combout\ = (!\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux9~q\ & ((\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\) # (\b2v_inst|b2v_inst|estadoAtual.store~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux9~q\,
	datac => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	datad => \b2v_inst|b2v_inst|estadoAtual.store~q\,
	combout => \b2v_inst8|b2v_inst|b2v_inst|Selector0~0_combout\);

-- Location: FF_X34_Y10_N25
\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst|Selector0~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\);

-- Location: LCCOMB_X35_Y14_N26
\b2v_inst8|b2v_inst|b2v_inst|muxSel~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\ = (\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux~q\) # (!\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	datad => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux~q\,
	combout => \b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\);

-- Location: LCCOMB_X44_Y39_N10
\b2v_inst11|startSReg\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|startSReg~combout\ = (\b2v_inst11|estadoAtual.contagem~q\) # (\b2v_inst11|estadoAtual.iniciou~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|estadoAtual.contagem~q\,
	datac => \b2v_inst11|estadoAtual.iniciou~q\,
	combout => \b2v_inst11|startSReg~combout\);

-- Location: CLKCTRL_G17
\b2v_inst|b2v_inst|estadoAtual.store~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \b2v_inst|b2v_inst|estadoAtual.store~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \b2v_inst|b2v_inst|estadoAtual.store~clkctrl_outclk\);

-- Location: LCCOMB_X35_Y13_N16
\b2v_inst8|b2v_inst|b2v_inst9|q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst9|q[1]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst7|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	combout => \b2v_inst8|b2v_inst|b2v_inst9|q[1]~feeder_combout\);

-- Location: FF_X35_Y13_N17
\b2v_inst8|b2v_inst|b2v_inst9|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|b2v_inst|estadoAtual.store~clkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst9|q[1]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst9|q\(1));

-- Location: LCCOMB_X35_Y13_N10
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst1|O[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst1|O[1]~0_combout\ = (\b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\ & (((\b2v_inst8|b2v_inst|b2v_inst9|q\(1))))) # (!\b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\ & (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(2) $ 
-- ((\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\,
	datab => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(1),
	datad => \b2v_inst8|b2v_inst|b2v_inst9|q\(1),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst1|O[1]~0_combout\);

-- Location: FF_X35_Y13_N11
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst1|O[1]~0_combout\,
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(1));

-- Location: LCCOMB_X34_Y13_N28
\b2v_inst8|b2v_inst|b2v_inst9|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst9|q[0]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst7|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	combout => \b2v_inst8|b2v_inst|b2v_inst9|q[0]~feeder_combout\);

-- Location: FF_X34_Y13_N29
\b2v_inst8|b2v_inst|b2v_inst9|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|b2v_inst|estadoAtual.store~clkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst9|q[0]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst9|q\(0));

-- Location: LCCOMB_X34_Y13_N26
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst1|O[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst1|O[0]~1_combout\ = (\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux~q\ & (((\b2v_inst8|b2v_inst|b2v_inst9|q\(0))))) # (!\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux~q\ & 
-- ((\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\ & (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(1))) # (!\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\ & ((\b2v_inst8|b2v_inst|b2v_inst9|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux~q\,
	datab => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(1),
	datad => \b2v_inst8|b2v_inst|b2v_inst9|q\(0),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst1|O[0]~1_combout\);

-- Location: FF_X34_Y13_N27
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst1|O[0]~1_combout\,
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(0));

-- Location: LCCOMB_X35_Y13_N20
\b2v_inst8|b2v_inst|b2v_inst9|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst9|q[3]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst7|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst7|q\(3),
	combout => \b2v_inst8|b2v_inst|b2v_inst9|q[3]~feeder_combout\);

-- Location: FF_X35_Y13_N21
\b2v_inst8|b2v_inst|b2v_inst9|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|b2v_inst|estadoAtual.store~clkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst9|q[3]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst9|q\(3));

-- Location: LCCOMB_X35_Y13_N8
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst1|O[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst1|O[3]~3_combout\ = (\b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\ & (((\b2v_inst8|b2v_inst|b2v_inst9|q\(3))))) # (!\b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\ & (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(0) $ 
-- ((\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\,
	datab => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(0),
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	datad => \b2v_inst8|b2v_inst|b2v_inst9|q\(3),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst1|O[3]~3_combout\);

-- Location: FF_X35_Y13_N9
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst1|O[3]~3_combout\,
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(3));

-- Location: LCCOMB_X35_Y13_N24
\b2v_inst8|b2v_inst|b2v_inst9|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst9|q[2]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst7|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst7|q\(2),
	combout => \b2v_inst8|b2v_inst|b2v_inst9|q[2]~feeder_combout\);

-- Location: FF_X35_Y13_N25
\b2v_inst8|b2v_inst|b2v_inst9|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|b2v_inst|estadoAtual.store~clkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst9|q[2]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst9|q\(2));

-- Location: LCCOMB_X35_Y13_N4
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst1|O[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst1|O[2]~2_combout\ = (\b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\ & (((\b2v_inst8|b2v_inst|b2v_inst9|q\(2))))) # (!\b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\ & (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(3) $ 
-- ((\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\,
	datab => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	datad => \b2v_inst8|b2v_inst|b2v_inst9|q\(2),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst1|O[2]~2_combout\);

-- Location: FF_X35_Y13_N5
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst1|O[2]~2_combout\,
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(2));

-- Location: LCCOMB_X35_Y13_N28
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst10|o[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst10|o[0]~1_combout\ = (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(1) & \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(2),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst10|o[0]~1_combout\);

-- Location: LCCOMB_X35_Y13_N0
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst10|o[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst10|o[0]~2_combout\ = (((\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(2) & \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(1))) # (!\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(0))) # 
-- (!\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(2),
	datab => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(3),
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst10|o[0]~2_combout\);

-- Location: LCCOMB_X35_Y13_N2
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q[3]~1_combout\ = (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst10|o[0]~1_combout\ & ((\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst10|o[0]~2_combout\))) # (!\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst10|o[0]~1_combout\ & 
-- (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(2),
	datab => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst10|o[0]~1_combout\,
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst10|o[0]~2_combout\,
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q[3]~1_combout\);

-- Location: LCCOMB_X35_Y13_N30
\b2v_inst8|b2v_inst|b2v_inst11|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst11|q[3]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst5|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst5|q\(3),
	combout => \b2v_inst8|b2v_inst|b2v_inst11|q[3]~feeder_combout\);

-- Location: FF_X35_Y13_N31
\b2v_inst8|b2v_inst|b2v_inst11|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|b2v_inst|estadoAtual.store~clkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst11|q[3]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst11|q\(3));

-- Location: FF_X35_Y13_N3
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q[3]~1_combout\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst11|q\(3),
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(3));

-- Location: LCCOMB_X35_Y13_N22
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst10|o[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst10|o[0]~0_combout\ = ((\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(0) & ((!\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(1)) # (!\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(2))))) # 
-- (!\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(2),
	datab => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(3),
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst10|o[0]~0_combout\);

-- Location: LCCOMB_X35_Y13_N18
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q[0]~0_combout\ = (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst10|o[0]~1_combout\ & (!\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst10|o[0]~0_combout\)) # (!\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst10|o[0]~1_combout\ & 
-- ((\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst10|o[0]~0_combout\,
	datab => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(3),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst10|o[0]~1_combout\,
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q[0]~0_combout\);

-- Location: LCCOMB_X35_Y13_N14
\b2v_inst8|b2v_inst|b2v_inst11|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst11|q[0]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst5|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	combout => \b2v_inst8|b2v_inst|b2v_inst11|q[0]~feeder_combout\);

-- Location: FF_X35_Y13_N15
\b2v_inst8|b2v_inst|b2v_inst11|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|b2v_inst|estadoAtual.store~clkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst11|q[0]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst11|q\(0));

-- Location: FF_X35_Y13_N19
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q[0]~0_combout\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst11|q\(0),
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(0));

-- Location: LCCOMB_X35_Y13_N12
\b2v_inst8|b2v_inst|b2v_inst11|q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst11|q[1]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst5|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	combout => \b2v_inst8|b2v_inst|b2v_inst11|q[1]~feeder_combout\);

-- Location: FF_X35_Y13_N13
\b2v_inst8|b2v_inst|b2v_inst11|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|b2v_inst|estadoAtual.store~clkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst11|q[1]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst11|q\(1));

-- Location: LCCOMB_X35_Y13_N26
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst|O[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst|O[1]~0_combout\ = (\b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\ & (((\b2v_inst8|b2v_inst|b2v_inst11|q\(1))))) # (!\b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\ & (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(0) $ 
-- ((\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\,
	datab => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(3),
	datad => \b2v_inst8|b2v_inst|b2v_inst11|q\(1),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst|O[1]~0_combout\);

-- Location: FF_X35_Y13_N27
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst|O[1]~0_combout\,
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(1));

-- Location: LCCOMB_X34_Y13_N10
\b2v_inst8|b2v_inst|b2v_inst11|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst11|q[2]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst5|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst5|q\(2),
	combout => \b2v_inst8|b2v_inst|b2v_inst11|q[2]~feeder_combout\);

-- Location: FF_X34_Y13_N11
\b2v_inst8|b2v_inst|b2v_inst11|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|b2v_inst|estadoAtual.store~clkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst11|q[2]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst11|q\(2));

-- Location: LCCOMB_X34_Y13_N8
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst|O[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst|O[2]~1_combout\ = (\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\ & ((\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux~q\ & ((\b2v_inst8|b2v_inst|b2v_inst11|q\(2)))) # (!\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux~q\ 
-- & (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(1))))) # (!\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\ & (((\b2v_inst8|b2v_inst|b2v_inst11|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	datab => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	datac => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux~q\,
	datad => \b2v_inst8|b2v_inst|b2v_inst11|q\(2),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst|O[2]~1_combout\);

-- Location: FF_X34_Y13_N9
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst|O[2]~1_combout\,
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(2));

-- Location: LCCOMB_X38_Y10_N16
\b2v_inst8|b2v_inst|b2v_inst12|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst12|q[3]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst8|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst8|q\(3),
	combout => \b2v_inst8|b2v_inst|b2v_inst12|q[3]~feeder_combout\);

-- Location: FF_X38_Y10_N17
\b2v_inst8|b2v_inst|b2v_inst12|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|b2v_inst|estadoAtual.store~clkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst12|q[3]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst12|q\(3));

-- Location: LCCOMB_X38_Y10_N18
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst3|O[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst3|O[3]~6_combout\ = (\b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\ & (((\b2v_inst8|b2v_inst|b2v_inst12|q\(3))))) # (!\b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\ & (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(2) $ 
-- ((\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\,
	datab => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(2),
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(3),
	datad => \b2v_inst8|b2v_inst|b2v_inst12|q\(3),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst3|O[3]~6_combout\);

-- Location: FF_X38_Y10_N19
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst3|O[3]~6_combout\,
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(3));

-- Location: LCCOMB_X38_Y10_N10
\b2v_inst8|b2v_inst|b2v_inst12|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst12|q[0]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst8|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	combout => \b2v_inst8|b2v_inst|b2v_inst12|q[0]~feeder_combout\);

-- Location: FF_X38_Y10_N11
\b2v_inst8|b2v_inst|b2v_inst12|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|b2v_inst|estadoAtual.store~clkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst12|q[0]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst12|q\(0));

-- Location: LCCOMB_X38_Y10_N20
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst3|O[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst3|O[0]~7_combout\ = (\b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\ & (((\b2v_inst8|b2v_inst|b2v_inst12|q\(0))))) # (!\b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\ & (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(3) $ 
-- ((\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\,
	datab => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(3),
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datad => \b2v_inst8|b2v_inst|b2v_inst12|q\(0),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst3|O[0]~7_combout\);

-- Location: FF_X38_Y10_N21
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst3|O[0]~7_combout\,
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(0));

-- Location: LCCOMB_X38_Y10_N8
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst9|o[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst9|o[0]~0_combout\ = \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(0) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(3),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst9|o[0]~0_combout\);

-- Location: LCCOMB_X38_Y10_N2
\b2v_inst8|b2v_inst|b2v_inst12|q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst12|q[1]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst8|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	combout => \b2v_inst8|b2v_inst|b2v_inst12|q[1]~feeder_combout\);

-- Location: FF_X38_Y10_N3
\b2v_inst8|b2v_inst|b2v_inst12|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|b2v_inst|estadoAtual.store~clkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst12|q[1]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst12|q\(1));

-- Location: LCCOMB_X38_Y10_N26
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst3|O[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst3|O[1]~4_combout\ = (\b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\ & (((\b2v_inst8|b2v_inst|b2v_inst12|q\(1))))) # (!\b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\ & 
-- (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst9|o[0]~0_combout\ $ ((\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\,
	datab => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst9|o[0]~0_combout\,
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	datad => \b2v_inst8|b2v_inst|b2v_inst12|q\(1),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst3|O[1]~4_combout\);

-- Location: FF_X38_Y10_N27
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst3|O[1]~4_combout\,
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(1));

-- Location: LCCOMB_X38_Y10_N6
\b2v_inst8|b2v_inst|b2v_inst12|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst12|q[2]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst8|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst8|q\(2),
	combout => \b2v_inst8|b2v_inst|b2v_inst12|q[2]~feeder_combout\);

-- Location: FF_X38_Y10_N7
\b2v_inst8|b2v_inst|b2v_inst12|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|b2v_inst|estadoAtual.store~clkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst12|q[2]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst12|q\(2));

-- Location: LCCOMB_X38_Y10_N14
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst3|O[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst3|O[2]~5_combout\ = (\b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\ & (((\b2v_inst8|b2v_inst|b2v_inst12|q\(2))))) # (!\b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\ & (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(1) $ 
-- ((\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\,
	datab => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(2),
	datad => \b2v_inst8|b2v_inst|b2v_inst12|q\(2),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst3|O[2]~5_combout\);

-- Location: FF_X38_Y10_N15
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst3|O[2]~5_combout\,
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(2));

-- Location: LCCOMB_X35_Y14_N24
\b2v_inst8|b2v_inst|b2v_inst8|q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst8|q[1]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst6|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	combout => \b2v_inst8|b2v_inst|b2v_inst8|q[1]~feeder_combout\);

-- Location: FF_X35_Y14_N25
\b2v_inst8|b2v_inst|b2v_inst8|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|b2v_inst|estadoAtual.store~clkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst8|q[1]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst8|q\(1));

-- Location: LCCOMB_X35_Y14_N16
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst2|O[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst2|O[1]~0_combout\ = (\b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\ & (((\b2v_inst8|b2v_inst|b2v_inst8|q\(1))))) # (!\b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\ & (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(2) $ 
-- ((\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\,
	datab => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(2),
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(3),
	datad => \b2v_inst8|b2v_inst|b2v_inst8|q\(1),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst2|O[1]~0_combout\);

-- Location: FF_X35_Y14_N17
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst2|O[1]~0_combout\,
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(1));

-- Location: LCCOMB_X35_Y14_N0
\b2v_inst8|b2v_inst|b2v_inst8|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst8|q[3]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst6|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst6|q\(3),
	combout => \b2v_inst8|b2v_inst|b2v_inst8|q[3]~feeder_combout\);

-- Location: FF_X35_Y14_N1
\b2v_inst8|b2v_inst|b2v_inst8|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|b2v_inst|estadoAtual.store~clkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst8|q[3]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst8|q\(3));

-- Location: LCCOMB_X35_Y14_N4
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst2|O[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst2|O[3]~2_combout\ = (\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\ & ((\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux~q\ & ((\b2v_inst8|b2v_inst|b2v_inst8|q\(3)))) # (!\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux~q\ 
-- & (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(1))))) # (!\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\ & (((\b2v_inst8|b2v_inst|b2v_inst8|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	datab => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	datac => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux~q\,
	datad => \b2v_inst8|b2v_inst|b2v_inst8|q\(3),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst2|O[3]~2_combout\);

-- Location: FF_X35_Y14_N5
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst2|O[3]~2_combout\,
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(3));

-- Location: LCCOMB_X38_Y10_N30
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q[0]~1_combout\ = (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(2) & \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(2),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q[0]~1_combout\);

-- Location: LCCOMB_X38_Y10_N28
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst8|o[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst8|o[0]~0_combout\ = (((\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(2) & \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(1))) # (!\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(3))) # 
-- (!\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(2),
	datab => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(3),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst8|o[0]~0_combout\);

-- Location: LCCOMB_X38_Y10_N0
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q[0]~0_combout\ = (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q[0]~1_combout\ & (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst8|o[0]~0_combout\)) # (!\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q[0]~1_combout\ & 
-- ((\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q[0]~1_combout\,
	datab => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst8|o[0]~0_combout\,
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(2),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q[0]~0_combout\);

-- Location: LCCOMB_X38_Y10_N4
\b2v_inst8|b2v_inst|b2v_inst8|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst8|q[0]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst6|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	combout => \b2v_inst8|b2v_inst|b2v_inst8|q[0]~feeder_combout\);

-- Location: FF_X38_Y10_N5
\b2v_inst8|b2v_inst|b2v_inst8|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|b2v_inst|estadoAtual.store~clkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst8|q[0]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst8|q\(0));

-- Location: FF_X38_Y10_N1
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q[0]~0_combout\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst8|q\(0),
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(0));

-- Location: FF_X35_Y14_N7
\b2v_inst8|b2v_inst|b2v_inst8|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|b2v_inst|estadoAtual.store~clkctrl_outclk\,
	asdata => \b2v_inst|b2v_inst2|b2v_inst6|q\(2),
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst8|q\(2));

-- Location: LCCOMB_X35_Y14_N14
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst2|O[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst2|O[2]~1_combout\ = (\b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\ & (((\b2v_inst8|b2v_inst|b2v_inst8|q\(2))))) # (!\b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\ & (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(3) $ 
-- ((\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\,
	datab => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(3),
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datad => \b2v_inst8|b2v_inst|b2v_inst8|q\(2),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst2|O[2]~1_combout\);

-- Location: FF_X35_Y14_N15
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst2|O[2]~1_combout\,
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(2));

-- Location: LCCOMB_X38_Y10_N24
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst14|c[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst14|c[2]~1_combout\ = \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(2) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(2) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(2) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	datab => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(2),
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(2),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(2),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst14|c[2]~1_combout\);

-- Location: LCCOMB_X34_Y13_N24
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(1) = \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(1) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(1),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(1));

-- Location: LCCOMB_X34_Y13_N12
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst14|c[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst14|c[0]~0_combout\ = \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(0) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(0) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(0) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(0),
	datab => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst14|c[0]~0_combout\);

-- Location: LCCOMB_X34_Y13_N2
\b2v_inst8|SYNTHESIZED_WIRE_5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|SYNTHESIZED_WIRE_5~0_combout\ = (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(1) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(1) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(1)))) # (!\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst14|c[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	datab => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(1),
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst14|c[0]~0_combout\,
	combout => \b2v_inst8|SYNTHESIZED_WIRE_5~0_combout\);

-- Location: LCCOMB_X38_Y10_N12
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst14|c[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst14|c[3]~2_combout\ = \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(3) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(3),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(3),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst14|c[3]~2_combout\);

-- Location: LCCOMB_X34_Y13_N6
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(3) = \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(3) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(3),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(3));

-- Location: LCCOMB_X34_Y13_N4
\b2v_inst8|SYNTHESIZED_WIRE_5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|SYNTHESIZED_WIRE_5~1_combout\ = (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst14|c[2]~1_combout\) # ((\b2v_inst8|SYNTHESIZED_WIRE_5~0_combout\) # (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst14|c[3]~2_combout\ $ 
-- (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst14|c[2]~1_combout\,
	datab => \b2v_inst8|SYNTHESIZED_WIRE_5~0_combout\,
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst14|c[3]~2_combout\,
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(3),
	combout => \b2v_inst8|SYNTHESIZED_WIRE_5~1_combout\);

-- Location: LCCOMB_X27_Y11_N28
\b2v_inst8|SYNTHESIZED_WIRE_0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|SYNTHESIZED_WIRE_0~combout\ = (\b2v_inst|b2v_inst|estadoAtual.store~q\) # (\Reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst|estadoAtual.store~q\,
	datac => \Reset~input_o\,
	combout => \b2v_inst8|SYNTHESIZED_WIRE_0~combout\);

-- Location: LCCOMB_X46_Y39_N22
\b2v_inst10|error~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|error~8_combout\ = (\b2v_inst10|Syndrome\(5)) # ((\b2v_inst10|Syndrome\(6)) # ((\b2v_inst10|Syndrome\(4)) # (\b2v_inst10|Syndrome\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|Syndrome\(5),
	datab => \b2v_inst10|Syndrome\(6),
	datac => \b2v_inst10|Syndrome\(4),
	datad => \b2v_inst10|Syndrome\(7),
	combout => \b2v_inst10|error~8_combout\);

-- Location: LCCOMB_X46_Y39_N28
\b2v_inst10|error~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|error~9_combout\ = (\b2v_inst10|Syndrome\(1)) # ((\b2v_inst10|Syndrome\(3)) # ((\b2v_inst10|Syndrome\(0)) # (\b2v_inst10|Syndrome\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|Syndrome\(1),
	datab => \b2v_inst10|Syndrome\(3),
	datac => \b2v_inst10|Syndrome\(0),
	datad => \b2v_inst10|Syndrome\(2),
	combout => \b2v_inst10|error~9_combout\);

-- Location: LCCOMB_X45_Y39_N10
\b2v_inst10|error~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|error~3_combout\ = (\b2v_inst10|Syndrome\(18)) # ((\b2v_inst10|Syndrome\(17)) # ((\b2v_inst10|Syndrome\(16)) # (\b2v_inst10|Syndrome\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|Syndrome\(18),
	datab => \b2v_inst10|Syndrome\(17),
	datac => \b2v_inst10|Syndrome\(16),
	datad => \b2v_inst10|Syndrome\(19),
	combout => \b2v_inst10|error~3_combout\);

-- Location: LCCOMB_X44_Y39_N20
\b2v_inst10|error~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|error~1_combout\ = (\b2v_inst10|Syndrome\(24)) # ((\b2v_inst10|Syndrome\(25)) # ((\b2v_inst10|Syndrome\(27)) # (\b2v_inst10|Syndrome\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|Syndrome\(24),
	datab => \b2v_inst10|Syndrome\(25),
	datac => \b2v_inst10|Syndrome\(27),
	datad => \b2v_inst10|Syndrome\(26),
	combout => \b2v_inst10|error~1_combout\);

-- Location: LCCOMB_X44_Y39_N26
\b2v_inst10|error~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|error~2_combout\ = (\b2v_inst10|Syndrome\(23)) # ((\b2v_inst10|Syndrome\(21)) # ((\b2v_inst10|Syndrome\(20)) # (\b2v_inst10|Syndrome\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|Syndrome\(23),
	datab => \b2v_inst10|Syndrome\(21),
	datac => \b2v_inst10|Syndrome\(20),
	datad => \b2v_inst10|Syndrome\(22),
	combout => \b2v_inst10|error~2_combout\);

-- Location: LCCOMB_X45_Y39_N20
\b2v_inst10|error~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|error~0_combout\ = (\b2v_inst10|Syndrome\(29)) # ((\b2v_inst10|Syndrome\(28)) # ((\b2v_inst10|Syndrome\(30)) # (\b2v_inst10|Syndrome\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|Syndrome\(29),
	datab => \b2v_inst10|Syndrome\(28),
	datac => \b2v_inst10|Syndrome\(30),
	datad => \b2v_inst10|Syndrome\(31),
	combout => \b2v_inst10|error~0_combout\);

-- Location: LCCOMB_X45_Y39_N0
\b2v_inst10|error~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|error~4_combout\ = (\b2v_inst10|error~3_combout\) # ((\b2v_inst10|error~1_combout\) # ((\b2v_inst10|error~2_combout\) # (\b2v_inst10|error~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|error~3_combout\,
	datab => \b2v_inst10|error~1_combout\,
	datac => \b2v_inst10|error~2_combout\,
	datad => \b2v_inst10|error~0_combout\,
	combout => \b2v_inst10|error~4_combout\);

-- Location: LCCOMB_X45_Y39_N14
\b2v_inst10|error~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|error~5_combout\ = (\b2v_inst10|Syndrome\(13)) # ((\b2v_inst10|Syndrome\(14)) # ((\b2v_inst10|Syndrome\(12)) # (\b2v_inst10|Syndrome\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|Syndrome\(13),
	datab => \b2v_inst10|Syndrome\(14),
	datac => \b2v_inst10|Syndrome\(12),
	datad => \b2v_inst10|Syndrome\(15),
	combout => \b2v_inst10|error~5_combout\);

-- Location: LCCOMB_X46_Y39_N14
\b2v_inst10|error~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|error~6_combout\ = (\b2v_inst10|Syndrome\(11)) # ((\b2v_inst10|Syndrome\(8)) # ((\b2v_inst10|Syndrome\(9)) # (\b2v_inst10|Syndrome\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|Syndrome\(11),
	datab => \b2v_inst10|Syndrome\(8),
	datac => \b2v_inst10|Syndrome\(9),
	datad => \b2v_inst10|Syndrome\(10),
	combout => \b2v_inst10|error~6_combout\);

-- Location: LCCOMB_X46_Y39_N0
\b2v_inst10|error~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|error~7_combout\ = (\b2v_inst10|error~5_combout\) # (\b2v_inst10|error~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|error~5_combout\,
	datac => \b2v_inst10|error~6_combout\,
	combout => \b2v_inst10|error~7_combout\);

-- Location: LCCOMB_X46_Y39_N10
\b2v_inst10|error\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|error~combout\ = (\b2v_inst10|error~8_combout\) # ((\b2v_inst10|error~9_combout\) # ((\b2v_inst10|error~4_combout\) # (\b2v_inst10|error~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|error~8_combout\,
	datab => \b2v_inst10|error~9_combout\,
	datac => \b2v_inst10|error~4_combout\,
	datad => \b2v_inst10|error~7_combout\,
	combout => \b2v_inst10|error~combout\);

-- Location: LCCOMB_X27_Y11_N20
\b2v_inst8|b2v_inst1|Pre_Q[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst1|Pre_Q[0]~4_combout\ = \b2v_inst8|b2v_inst1|Pre_Q\(0) $ (!\b2v_inst8|SYNTHESIZED_WIRE_5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|b2v_inst1|Pre_Q\(0),
	datad => \b2v_inst8|SYNTHESIZED_WIRE_5~1_combout\,
	combout => \b2v_inst8|b2v_inst1|Pre_Q[0]~4_combout\);

-- Location: FF_X27_Y11_N21
\b2v_inst8|b2v_inst1|Pre_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst1|Pre_Q[0]~4_combout\,
	clrn => \b2v_inst8|ALT_INV_SYNTHESIZED_WIRE_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst1|Pre_Q\(0));

-- Location: LCCOMB_X27_Y11_N18
\b2v_inst8|b2v_inst1|Pre_Q[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst1|Pre_Q[1]~3_combout\ = \b2v_inst8|b2v_inst1|Pre_Q\(1) $ (((\b2v_inst8|b2v_inst1|Pre_Q\(0) & !\b2v_inst8|SYNTHESIZED_WIRE_5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|b2v_inst1|Pre_Q\(0),
	datac => \b2v_inst8|b2v_inst1|Pre_Q\(1),
	datad => \b2v_inst8|SYNTHESIZED_WIRE_5~1_combout\,
	combout => \b2v_inst8|b2v_inst1|Pre_Q[1]~3_combout\);

-- Location: FF_X27_Y11_N19
\b2v_inst8|b2v_inst1|Pre_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst1|Pre_Q[1]~3_combout\,
	clrn => \b2v_inst8|ALT_INV_SYNTHESIZED_WIRE_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst1|Pre_Q\(1));

-- Location: LCCOMB_X27_Y11_N16
\b2v_inst8|b2v_inst1|Pre_Q[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst1|Pre_Q[2]~2_combout\ = \b2v_inst8|b2v_inst1|Pre_Q\(2) $ (((\b2v_inst8|b2v_inst1|Pre_Q\(1) & (\b2v_inst8|b2v_inst1|Pre_Q\(0) & !\b2v_inst8|SYNTHESIZED_WIRE_5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst1|Pre_Q\(1),
	datab => \b2v_inst8|b2v_inst1|Pre_Q\(0),
	datac => \b2v_inst8|b2v_inst1|Pre_Q\(2),
	datad => \b2v_inst8|SYNTHESIZED_WIRE_5~1_combout\,
	combout => \b2v_inst8|b2v_inst1|Pre_Q[2]~2_combout\);

-- Location: FF_X27_Y11_N17
\b2v_inst8|b2v_inst1|Pre_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst1|Pre_Q[2]~2_combout\,
	clrn => \b2v_inst8|ALT_INV_SYNTHESIZED_WIRE_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst1|Pre_Q\(2));

-- Location: LCCOMB_X27_Y11_N30
\b2v_inst8|b2v_inst1|Pre_Q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst1|Pre_Q[3]~0_combout\ = (\b2v_inst8|b2v_inst1|Pre_Q\(1) & (\b2v_inst8|b2v_inst1|Pre_Q\(0) & (\b2v_inst8|b2v_inst1|Pre_Q\(2) & !\b2v_inst8|SYNTHESIZED_WIRE_5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst1|Pre_Q\(1),
	datab => \b2v_inst8|b2v_inst1|Pre_Q\(0),
	datac => \b2v_inst8|b2v_inst1|Pre_Q\(2),
	datad => \b2v_inst8|SYNTHESIZED_WIRE_5~1_combout\,
	combout => \b2v_inst8|b2v_inst1|Pre_Q[3]~0_combout\);

-- Location: LCCOMB_X27_Y11_N22
\b2v_inst8|b2v_inst1|Pre_Q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst1|Pre_Q[3]~1_combout\ = \b2v_inst8|b2v_inst1|Pre_Q[3]~0_combout\ $ (\b2v_inst8|b2v_inst1|Pre_Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst1|Pre_Q[3]~0_combout\,
	datac => \b2v_inst8|b2v_inst1|Pre_Q\(3),
	combout => \b2v_inst8|b2v_inst1|Pre_Q[3]~1_combout\);

-- Location: FF_X27_Y11_N23
\b2v_inst8|b2v_inst1|Pre_Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst1|Pre_Q[3]~1_combout\,
	clrn => \b2v_inst8|ALT_INV_SYNTHESIZED_WIRE_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst1|Pre_Q\(3));

-- Location: LCCOMB_X27_Y11_N10
\SYNTHESIZED_WIRE_21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SYNTHESIZED_WIRE_21~0_combout\ = (!\b2v_inst8|b2v_inst1|Pre_Q\(3) & (!\b2v_inst8|b2v_inst1|Pre_Q\(1) & (!\b2v_inst8|b2v_inst1|Pre_Q\(2) & !\b2v_inst8|b2v_inst1|Pre_Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst1|Pre_Q\(3),
	datab => \b2v_inst8|b2v_inst1|Pre_Q\(1),
	datac => \b2v_inst8|b2v_inst1|Pre_Q\(2),
	datad => \b2v_inst8|b2v_inst1|Pre_Q\(0),
	combout => \SYNTHESIZED_WIRE_21~0_combout\);

-- Location: LCCOMB_X27_Y11_N12
SYNTHESIZED_WIRE_21 : cycloneive_lcell_comb
-- Equation(s):
-- \SYNTHESIZED_WIRE_21~combout\ = (\b2v_inst10|error~combout\ & \SYNTHESIZED_WIRE_21~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst10|error~combout\,
	datad => \SYNTHESIZED_WIRE_21~0_combout\,
	combout => \SYNTHESIZED_WIRE_21~combout\);

-- Location: LCCOMB_X27_Y11_N14
\b2v_inst8|b2v_inst1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst1|Mux0~0_combout\ = (\b2v_inst8|b2v_inst1|Pre_Q\(3)) # ((\b2v_inst8|b2v_inst1|Pre_Q\(2) & ((\b2v_inst8|b2v_inst1|Pre_Q\(1)) # (\b2v_inst8|b2v_inst1|Pre_Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst1|Pre_Q\(3),
	datab => \b2v_inst8|b2v_inst1|Pre_Q\(1),
	datac => \b2v_inst8|b2v_inst1|Pre_Q\(2),
	datad => \b2v_inst8|b2v_inst1|Pre_Q\(0),
	combout => \b2v_inst8|b2v_inst1|Mux0~0_combout\);

-- Location: FF_X27_Y11_N13
\b2v_inst15|erroro\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \SYNTHESIZED_WIRE_21~combout\,
	ena => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_muxSel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst15|erroro~q\);

-- Location: LCCOMB_X28_Y8_N4
\b2v_inst19|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector7~0_combout\ = (\b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\ & ((\b2v_inst19|estadoAtual.wait1~q\) # ((\b2v_inst19|Equal0~0_combout\ & \b2v_inst19|estadoAtual.save~q\)))) # (!\b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\ & 
-- (\b2v_inst19|Equal0~0_combout\ & ((\b2v_inst19|estadoAtual.save~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\,
	datab => \b2v_inst19|Equal0~0_combout\,
	datac => \b2v_inst19|estadoAtual.wait1~q\,
	datad => \b2v_inst19|estadoAtual.save~q\,
	combout => \b2v_inst19|Selector7~0_combout\);

-- Location: LCCOMB_X29_Y8_N20
\b2v_inst19|estadoAtual.wait1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|estadoAtual.wait1~feeder_combout\ = \b2v_inst19|Selector7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst19|Selector7~0_combout\,
	combout => \b2v_inst19|estadoAtual.wait1~feeder_combout\);

-- Location: FF_X29_Y8_N21
\b2v_inst19|estadoAtual.wait1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst19|estadoAtual.wait1~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|estadoAtual.wait1~q\);

-- Location: LCCOMB_X28_Y8_N26
\b2v_inst19|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector8~0_combout\ = (\b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\ & (!\b2v_inst19|Equal0~0_combout\ & ((\b2v_inst19|estadoAtual.release~q\)))) # (!\b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\ & ((\b2v_inst19|estadoAtual.wait1~q\) # 
-- ((!\b2v_inst19|Equal0~0_combout\ & \b2v_inst19|estadoAtual.release~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\,
	datab => \b2v_inst19|Equal0~0_combout\,
	datac => \b2v_inst19|estadoAtual.wait1~q\,
	datad => \b2v_inst19|estadoAtual.release~q\,
	combout => \b2v_inst19|Selector8~0_combout\);

-- Location: LCCOMB_X29_Y11_N22
\b2v_inst19|estadoAtual.release~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|estadoAtual.release~feeder_combout\ = \b2v_inst19|Selector8~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|Selector8~0_combout\,
	combout => \b2v_inst19|estadoAtual.release~feeder_combout\);

-- Location: FF_X29_Y11_N23
\b2v_inst19|estadoAtual.release\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst19|estadoAtual.release~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|estadoAtual.release~q\);

-- Location: LCCOMB_X28_Y8_N14
\b2v_inst19|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector4~0_combout\ = (\b2v_inst19|estadoAtual.save~q\ & ((\b2v_inst19|counter\(1) $ (\b2v_inst19|counter\(0))))) # (!\b2v_inst19|estadoAtual.save~q\ & (\b2v_inst19|estadoAtual.release~q\ & (\b2v_inst19|counter\(1) $ 
-- (\b2v_inst19|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|estadoAtual.save~q\,
	datab => \b2v_inst19|estadoAtual.release~q\,
	datac => \b2v_inst19|counter\(1),
	datad => \b2v_inst19|counter\(0),
	combout => \b2v_inst19|Selector4~0_combout\);

-- Location: FF_X28_Y8_N15
\b2v_inst19|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst19|Selector4~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|counter\(1));

-- Location: LCCOMB_X28_Y8_N22
\b2v_inst19|messages~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|messages~0_combout\ = (\b2v_inst19|estadoAtual.save~q\) # (\b2v_inst19|estadoAtual.release~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst19|estadoAtual.save~q\,
	datac => \b2v_inst19|estadoAtual.release~q\,
	combout => \b2v_inst19|messages~0_combout\);

-- Location: LCCOMB_X28_Y8_N8
\b2v_inst19|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector3~0_combout\ = (\b2v_inst19|messages~0_combout\ & (\b2v_inst19|counter\(2) $ (((\b2v_inst19|counter\(1) & \b2v_inst19|counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|messages~0_combout\,
	datab => \b2v_inst19|counter\(1),
	datac => \b2v_inst19|counter\(2),
	datad => \b2v_inst19|counter\(0),
	combout => \b2v_inst19|Selector3~0_combout\);

-- Location: FF_X28_Y8_N9
\b2v_inst19|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst19|Selector3~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|counter\(2));

-- Location: LCCOMB_X28_Y8_N10
\b2v_inst19|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector2~2_combout\ = (\b2v_inst19|counter\(3) & (((!\b2v_inst19|counter\(2)) # (!\b2v_inst19|counter\(1))) # (!\b2v_inst19|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|counter\(0),
	datab => \b2v_inst19|counter\(1),
	datac => \b2v_inst19|counter\(2),
	datad => \b2v_inst19|counter\(3),
	combout => \b2v_inst19|Selector2~2_combout\);

-- Location: LCCOMB_X28_Y8_N18
\b2v_inst19|Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector2~3_combout\ = (\b2v_inst19|Selector2~2_combout\ & ((\b2v_inst19|estadoAtual.save~q\) # (\b2v_inst19|estadoAtual.release~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|Selector2~2_combout\,
	datab => \b2v_inst19|estadoAtual.save~q\,
	datac => \b2v_inst19|estadoAtual.release~q\,
	combout => \b2v_inst19|Selector2~3_combout\);

-- Location: FF_X28_Y8_N19
\b2v_inst19|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst19|Selector2~3_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|counter\(3));

-- Location: LCCOMB_X28_Y8_N16
\b2v_inst19|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Equal0~0_combout\ = (\b2v_inst19|counter\(0) & (\b2v_inst19|counter\(1) & (\b2v_inst19|counter\(2) & !\b2v_inst19|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|counter\(0),
	datab => \b2v_inst19|counter\(1),
	datac => \b2v_inst19|counter\(2),
	datad => \b2v_inst19|counter\(3),
	combout => \b2v_inst19|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y11_N8
\b2v_inst19|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector6~0_combout\ = (\b2v_inst19|Equal0~0_combout\ & (!\Reset~input_o\ & ((!\b2v_inst19|estadoAtual.idle~q\)))) # (!\b2v_inst19|Equal0~0_combout\ & ((\b2v_inst19|estadoAtual.save~q\) # ((!\Reset~input_o\ & 
-- !\b2v_inst19|estadoAtual.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|Equal0~0_combout\,
	datab => \Reset~input_o\,
	datac => \b2v_inst19|estadoAtual.save~q\,
	datad => \b2v_inst19|estadoAtual.idle~q\,
	combout => \b2v_inst19|Selector6~0_combout\);

-- Location: FF_X29_Y11_N9
\b2v_inst19|estadoAtual.save\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst19|Selector6~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|estadoAtual.save~q\);

-- Location: LCCOMB_X28_Y8_N12
\b2v_inst19|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector5~0_combout\ = (!\b2v_inst19|counter\(0) & ((\b2v_inst19|estadoAtual.save~q\) # (\b2v_inst19|estadoAtual.release~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst19|estadoAtual.save~q\,
	datac => \b2v_inst19|counter\(0),
	datad => \b2v_inst19|estadoAtual.release~q\,
	combout => \b2v_inst19|Selector5~0_combout\);

-- Location: FF_X28_Y8_N13
\b2v_inst19|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst19|Selector5~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|counter\(0));

-- Location: LCCOMB_X32_Y11_N4
\b2v_inst19|Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector37~0_combout\ = (\b2v_inst19|estadoAtual.release~q\ & (((\b2v_inst19|messages\(0))))) # (!\b2v_inst19|estadoAtual.release~q\ & (\b2v_inst19|estadoAtual.save~q\ & (\Input[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|estadoAtual.release~q\,
	datab => \b2v_inst19|estadoAtual.save~q\,
	datac => \Input[0]~input_o\,
	datad => \b2v_inst19|messages\(0),
	combout => \b2v_inst19|Selector37~0_combout\);

-- Location: LCCOMB_X29_Y8_N4
\b2v_inst19|estadoAtual.wait2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|estadoAtual.wait2~0_combout\ = (\b2v_inst19|estadoAtual.wait2~q\) # ((\b2v_inst19|Equal0~0_combout\ & \b2v_inst19|estadoAtual.release~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|Equal0~0_combout\,
	datac => \b2v_inst19|estadoAtual.wait2~q\,
	datad => \b2v_inst19|estadoAtual.release~q\,
	combout => \b2v_inst19|estadoAtual.wait2~0_combout\);

-- Location: FF_X29_Y8_N5
\b2v_inst19|estadoAtual.wait2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \b2v_inst19|estadoAtual.wait2~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|estadoAtual.wait2~q\);

-- Location: LCCOMB_X29_Y8_N30
\b2v_inst19|messages~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|messages~1_combout\ = (\b2v_inst19|estadoAtual.wait2~q\) # (\b2v_inst19|estadoAtual.wait1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst19|estadoAtual.wait2~q\,
	datad => \b2v_inst19|estadoAtual.wait1~q\,
	combout => \b2v_inst19|messages~1_combout\);

-- Location: CLKCTRL_G15
\b2v_inst19|messages~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \b2v_inst19|messages~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \b2v_inst19|messages~1clkctrl_outclk\);

-- Location: LCCOMB_X32_Y11_N18
\b2v_inst19|messages[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|messages\(24) = (GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & ((\b2v_inst19|messages\(24)))) # (!GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & (\b2v_inst19|Selector37~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst19|Selector37~0_combout\,
	datac => \b2v_inst19|messages~1clkctrl_outclk\,
	datad => \b2v_inst19|messages\(24),
	combout => \b2v_inst19|messages\(24));

-- Location: LCCOMB_X32_Y11_N22
\b2v_inst19|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector32~0_combout\ = (\b2v_inst19|messages\(24) & ((\b2v_inst19|estadoAtual.release~q\) # (\b2v_inst19|estadoAtual.save~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|estadoAtual.release~q\,
	datab => \b2v_inst19|estadoAtual.save~q\,
	datad => \b2v_inst19|messages\(24),
	combout => \b2v_inst19|Selector32~0_combout\);

-- Location: LCCOMB_X32_Y11_N28
\b2v_inst19|messages[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|messages\(20) = (GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & (\b2v_inst19|messages\(20))) # (!GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & ((\b2v_inst19|Selector32~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst19|messages\(20),
	datac => \b2v_inst19|Selector32~0_combout\,
	datad => \b2v_inst19|messages~1clkctrl_outclk\,
	combout => \b2v_inst19|messages\(20));

-- Location: LCCOMB_X32_Y11_N12
\b2v_inst19|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector28~0_combout\ = (\b2v_inst19|messages\(20) & ((\b2v_inst19|estadoAtual.release~q\) # (\b2v_inst19|estadoAtual.save~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|estadoAtual.release~q\,
	datab => \b2v_inst19|estadoAtual.save~q\,
	datad => \b2v_inst19|messages\(20),
	combout => \b2v_inst19|Selector28~0_combout\);

-- Location: LCCOMB_X32_Y11_N6
\b2v_inst19|messages[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|messages\(16) = (GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & (\b2v_inst19|messages\(16))) # (!GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & ((\b2v_inst19|Selector28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|messages\(16),
	datac => \b2v_inst19|Selector28~0_combout\,
	datad => \b2v_inst19|messages~1clkctrl_outclk\,
	combout => \b2v_inst19|messages\(16));

-- Location: LCCOMB_X32_Y11_N14
\b2v_inst19|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector24~0_combout\ = (\b2v_inst19|messages\(16) & ((\b2v_inst19|estadoAtual.release~q\) # (\b2v_inst19|estadoAtual.save~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|estadoAtual.release~q\,
	datab => \b2v_inst19|estadoAtual.save~q\,
	datad => \b2v_inst19|messages\(16),
	combout => \b2v_inst19|Selector24~0_combout\);

-- Location: LCCOMB_X32_Y11_N20
\b2v_inst19|messages[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|messages\(12) = (GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & (\b2v_inst19|messages\(12))) # (!GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & ((\b2v_inst19|Selector24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst19|messages\(12),
	datac => \b2v_inst19|Selector24~0_combout\,
	datad => \b2v_inst19|messages~1clkctrl_outclk\,
	combout => \b2v_inst19|messages\(12));

-- Location: LCCOMB_X32_Y11_N0
\b2v_inst19|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector20~0_combout\ = (\b2v_inst19|messages\(12) & ((\b2v_inst19|estadoAtual.release~q\) # (\b2v_inst19|estadoAtual.save~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|estadoAtual.release~q\,
	datab => \b2v_inst19|estadoAtual.save~q\,
	datad => \b2v_inst19|messages\(12),
	combout => \b2v_inst19|Selector20~0_combout\);

-- Location: LCCOMB_X32_Y11_N2
\b2v_inst19|messages[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|messages\(8) = (GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & (\b2v_inst19|messages\(8))) # (!GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & ((\b2v_inst19|Selector20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst19|messages\(8),
	datac => \b2v_inst19|Selector20~0_combout\,
	datad => \b2v_inst19|messages~1clkctrl_outclk\,
	combout => \b2v_inst19|messages\(8));

-- Location: LCCOMB_X32_Y11_N26
\b2v_inst19|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector16~0_combout\ = (\b2v_inst19|messages\(8) & ((\b2v_inst19|estadoAtual.release~q\) # (\b2v_inst19|estadoAtual.save~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|estadoAtual.release~q\,
	datab => \b2v_inst19|estadoAtual.save~q\,
	datad => \b2v_inst19|messages\(8),
	combout => \b2v_inst19|Selector16~0_combout\);

-- Location: LCCOMB_X32_Y11_N16
\b2v_inst19|messages[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|messages\(4) = (GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & (\b2v_inst19|messages\(4))) # (!GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & ((\b2v_inst19|Selector16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst19|messages\(4),
	datac => \b2v_inst19|Selector16~0_combout\,
	datad => \b2v_inst19|messages~1clkctrl_outclk\,
	combout => \b2v_inst19|messages\(4));

-- Location: LCCOMB_X32_Y11_N8
\b2v_inst19|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector14~1_combout\ = (\b2v_inst19|messages\(4) & ((\b2v_inst19|estadoAtual.release~q\) # (\b2v_inst19|estadoAtual.save~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|estadoAtual.release~q\,
	datab => \b2v_inst19|estadoAtual.save~q\,
	datad => \b2v_inst19|messages\(4),
	combout => \b2v_inst19|Selector14~1_combout\);

-- Location: LCCOMB_X32_Y11_N10
\b2v_inst19|messages[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|messages\(0) = (GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & (\b2v_inst19|messages\(0))) # (!GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & ((\b2v_inst19|Selector14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|messages\(0),
	datac => \b2v_inst19|Selector14~1_combout\,
	datad => \b2v_inst19|messages~1clkctrl_outclk\,
	combout => \b2v_inst19|messages\(0));

-- Location: LCCOMB_X30_Y11_N24
\b2v_inst19|Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector38~0_combout\ = (\b2v_inst19|estadoAtual.release~q\ & (((\b2v_inst19|messages\(1))))) # (!\b2v_inst19|estadoAtual.release~q\ & (\b2v_inst19|estadoAtual.save~q\ & ((\Input[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|estadoAtual.save~q\,
	datab => \b2v_inst19|estadoAtual.release~q\,
	datac => \b2v_inst19|messages\(1),
	datad => \Input[1]~input_o\,
	combout => \b2v_inst19|Selector38~0_combout\);

-- Location: LCCOMB_X30_Y11_N10
\b2v_inst19|messages[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|messages\(25) = (GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & (\b2v_inst19|messages\(25))) # (!GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & ((\b2v_inst19|Selector38~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|messages\(25),
	datac => \b2v_inst19|Selector38~0_combout\,
	datad => \b2v_inst19|messages~1clkctrl_outclk\,
	combout => \b2v_inst19|messages\(25));

-- Location: LCCOMB_X30_Y11_N6
\b2v_inst19|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector33~0_combout\ = (\b2v_inst19|messages\(25) & ((\b2v_inst19|estadoAtual.save~q\) # (\b2v_inst19|estadoAtual.release~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|estadoAtual.save~q\,
	datab => \b2v_inst19|estadoAtual.release~q\,
	datad => \b2v_inst19|messages\(25),
	combout => \b2v_inst19|Selector33~0_combout\);

-- Location: LCCOMB_X30_Y11_N20
\b2v_inst19|messages[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|messages\(21) = (GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & (\b2v_inst19|messages\(21))) # (!GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & ((\b2v_inst19|Selector33~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst19|messages\(21),
	datac => \b2v_inst19|Selector33~0_combout\,
	datad => \b2v_inst19|messages~1clkctrl_outclk\,
	combout => \b2v_inst19|messages\(21));

-- Location: LCCOMB_X30_Y11_N4
\b2v_inst19|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector29~0_combout\ = (\b2v_inst19|messages\(21) & ((\b2v_inst19|estadoAtual.save~q\) # (\b2v_inst19|estadoAtual.release~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|estadoAtual.save~q\,
	datab => \b2v_inst19|estadoAtual.release~q\,
	datad => \b2v_inst19|messages\(21),
	combout => \b2v_inst19|Selector29~0_combout\);

-- Location: LCCOMB_X30_Y11_N2
\b2v_inst19|messages[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|messages\(17) = (GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & (\b2v_inst19|messages\(17))) # (!GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & ((\b2v_inst19|Selector29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst19|messages\(17),
	datac => \b2v_inst19|Selector29~0_combout\,
	datad => \b2v_inst19|messages~1clkctrl_outclk\,
	combout => \b2v_inst19|messages\(17));

-- Location: LCCOMB_X30_Y11_N22
\b2v_inst19|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector25~0_combout\ = (\b2v_inst19|messages\(17) & ((\b2v_inst19|estadoAtual.save~q\) # (\b2v_inst19|estadoAtual.release~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|estadoAtual.save~q\,
	datab => \b2v_inst19|estadoAtual.release~q\,
	datad => \b2v_inst19|messages\(17),
	combout => \b2v_inst19|Selector25~0_combout\);

-- Location: LCCOMB_X30_Y11_N12
\b2v_inst19|messages[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|messages\(13) = (GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & (\b2v_inst19|messages\(13))) # (!GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & ((\b2v_inst19|Selector25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|messages\(13),
	datac => \b2v_inst19|Selector25~0_combout\,
	datad => \b2v_inst19|messages~1clkctrl_outclk\,
	combout => \b2v_inst19|messages\(13));

-- Location: LCCOMB_X30_Y11_N8
\b2v_inst19|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector21~0_combout\ = (\b2v_inst19|messages\(13) & ((\b2v_inst19|estadoAtual.save~q\) # (\b2v_inst19|estadoAtual.release~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|estadoAtual.save~q\,
	datab => \b2v_inst19|estadoAtual.release~q\,
	datad => \b2v_inst19|messages\(13),
	combout => \b2v_inst19|Selector21~0_combout\);

-- Location: LCCOMB_X30_Y11_N18
\b2v_inst19|messages[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|messages\(9) = (GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & ((\b2v_inst19|messages\(9)))) # (!GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & (\b2v_inst19|Selector21~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|Selector21~0_combout\,
	datab => \b2v_inst19|messages\(9),
	datad => \b2v_inst19|messages~1clkctrl_outclk\,
	combout => \b2v_inst19|messages\(9));

-- Location: LCCOMB_X30_Y11_N30
\b2v_inst19|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector17~0_combout\ = (\b2v_inst19|messages\(9) & ((\b2v_inst19|estadoAtual.save~q\) # (\b2v_inst19|estadoAtual.release~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|estadoAtual.save~q\,
	datab => \b2v_inst19|estadoAtual.release~q\,
	datad => \b2v_inst19|messages\(9),
	combout => \b2v_inst19|Selector17~0_combout\);

-- Location: LCCOMB_X30_Y11_N28
\b2v_inst19|messages[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|messages\(5) = (GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & ((\b2v_inst19|messages\(5)))) # (!GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & (\b2v_inst19|Selector17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst19|Selector17~0_combout\,
	datac => \b2v_inst19|messages\(5),
	datad => \b2v_inst19|messages~1clkctrl_outclk\,
	combout => \b2v_inst19|messages\(5));

-- Location: LCCOMB_X30_Y11_N16
\b2v_inst19|Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector13~1_combout\ = (\b2v_inst19|messages\(5) & ((\b2v_inst19|estadoAtual.release~q\) # (\b2v_inst19|estadoAtual.save~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst19|estadoAtual.release~q\,
	datac => \b2v_inst19|estadoAtual.save~q\,
	datad => \b2v_inst19|messages\(5),
	combout => \b2v_inst19|Selector13~1_combout\);

-- Location: LCCOMB_X30_Y11_N14
\b2v_inst19|messages[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|messages\(1) = (GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & (\b2v_inst19|messages\(1))) # (!GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & ((\b2v_inst19|Selector13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst19|messages\(1),
	datac => \b2v_inst19|Selector13~1_combout\,
	datad => \b2v_inst19|messages~1clkctrl_outclk\,
	combout => \b2v_inst19|messages\(1));

-- Location: LCCOMB_X29_Y11_N20
\b2v_inst19|Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector39~0_combout\ = (\b2v_inst19|estadoAtual.release~q\ & (((\b2v_inst19|messages\(2))))) # (!\b2v_inst19|estadoAtual.release~q\ & (\Input[2]~input_o\ & (\b2v_inst19|estadoAtual.save~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input[2]~input_o\,
	datab => \b2v_inst19|estadoAtual.release~q\,
	datac => \b2v_inst19|estadoAtual.save~q\,
	datad => \b2v_inst19|messages\(2),
	combout => \b2v_inst19|Selector39~0_combout\);

-- Location: LCCOMB_X29_Y11_N18
\b2v_inst19|messages[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|messages\(26) = (GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & (\b2v_inst19|messages\(26))) # (!GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & ((\b2v_inst19|Selector39~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst19|messages\(26),
	datac => \b2v_inst19|Selector39~0_combout\,
	datad => \b2v_inst19|messages~1clkctrl_outclk\,
	combout => \b2v_inst19|messages\(26));

-- Location: LCCOMB_X29_Y11_N14
\b2v_inst19|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector34~0_combout\ = (\b2v_inst19|messages\(26) & ((\b2v_inst19|estadoAtual.release~q\) # (\b2v_inst19|estadoAtual.save~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst19|estadoAtual.release~q\,
	datac => \b2v_inst19|estadoAtual.save~q\,
	datad => \b2v_inst19|messages\(26),
	combout => \b2v_inst19|Selector34~0_combout\);

-- Location: LCCOMB_X29_Y11_N24
\b2v_inst19|messages[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|messages\(22) = (GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & (\b2v_inst19|messages\(22))) # (!GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & ((\b2v_inst19|Selector34~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst19|messages\(22),
	datac => \b2v_inst19|Selector34~0_combout\,
	datad => \b2v_inst19|messages~1clkctrl_outclk\,
	combout => \b2v_inst19|messages\(22));

-- Location: LCCOMB_X29_Y11_N16
\b2v_inst19|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector30~0_combout\ = (\b2v_inst19|messages\(22) & ((\b2v_inst19|estadoAtual.release~q\) # (\b2v_inst19|estadoAtual.save~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst19|estadoAtual.release~q\,
	datac => \b2v_inst19|estadoAtual.save~q\,
	datad => \b2v_inst19|messages\(22),
	combout => \b2v_inst19|Selector30~0_combout\);

-- Location: LCCOMB_X29_Y11_N6
\b2v_inst19|messages[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|messages\(18) = (GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & (\b2v_inst19|messages\(18))) # (!GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & ((\b2v_inst19|Selector30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|messages\(18),
	datac => \b2v_inst19|Selector30~0_combout\,
	datad => \b2v_inst19|messages~1clkctrl_outclk\,
	combout => \b2v_inst19|messages\(18));

-- Location: LCCOMB_X29_Y11_N26
\b2v_inst19|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector26~0_combout\ = (\b2v_inst19|messages\(18) & ((\b2v_inst19|estadoAtual.release~q\) # (\b2v_inst19|estadoAtual.save~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst19|estadoAtual.release~q\,
	datac => \b2v_inst19|estadoAtual.save~q\,
	datad => \b2v_inst19|messages\(18),
	combout => \b2v_inst19|Selector26~0_combout\);

-- Location: LCCOMB_X29_Y11_N0
\b2v_inst19|messages[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|messages\(14) = (GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & (\b2v_inst19|messages\(14))) # (!GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & ((\b2v_inst19|Selector26~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst19|messages\(14),
	datac => \b2v_inst19|Selector26~0_combout\,
	datad => \b2v_inst19|messages~1clkctrl_outclk\,
	combout => \b2v_inst19|messages\(14));

-- Location: LCCOMB_X29_Y11_N12
\b2v_inst19|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector22~0_combout\ = (\b2v_inst19|messages\(14) & ((\b2v_inst19|estadoAtual.release~q\) # (\b2v_inst19|estadoAtual.save~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst19|estadoAtual.release~q\,
	datac => \b2v_inst19|estadoAtual.save~q\,
	datad => \b2v_inst19|messages\(14),
	combout => \b2v_inst19|Selector22~0_combout\);

-- Location: LCCOMB_X29_Y11_N10
\b2v_inst19|messages[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|messages\(10) = (GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & (\b2v_inst19|messages\(10))) # (!GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & ((\b2v_inst19|Selector22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|messages\(10),
	datac => \b2v_inst19|messages~1clkctrl_outclk\,
	datad => \b2v_inst19|Selector22~0_combout\,
	combout => \b2v_inst19|messages\(10));

-- Location: LCCOMB_X29_Y11_N30
\b2v_inst19|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector18~0_combout\ = (\b2v_inst19|messages\(10) & ((\b2v_inst19|estadoAtual.release~q\) # (\b2v_inst19|estadoAtual.save~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst19|estadoAtual.release~q\,
	datac => \b2v_inst19|estadoAtual.save~q\,
	datad => \b2v_inst19|messages\(10),
	combout => \b2v_inst19|Selector18~0_combout\);

-- Location: LCCOMB_X29_Y11_N28
\b2v_inst19|messages[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|messages\(6) = (GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & ((\b2v_inst19|messages\(6)))) # (!GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & (\b2v_inst19|Selector18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst19|Selector18~0_combout\,
	datac => \b2v_inst19|messages\(6),
	datad => \b2v_inst19|messages~1clkctrl_outclk\,
	combout => \b2v_inst19|messages\(6));

-- Location: LCCOMB_X29_Y11_N4
\b2v_inst19|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector12~1_combout\ = (\b2v_inst19|messages\(6) & ((\b2v_inst19|estadoAtual.release~q\) # (\b2v_inst19|estadoAtual.save~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst19|estadoAtual.release~q\,
	datac => \b2v_inst19|estadoAtual.save~q\,
	datad => \b2v_inst19|messages\(6),
	combout => \b2v_inst19|Selector12~1_combout\);

-- Location: LCCOMB_X29_Y11_N2
\b2v_inst19|messages[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|messages\(2) = (GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & (\b2v_inst19|messages\(2))) # (!GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & ((\b2v_inst19|Selector12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst19|messages\(2),
	datac => \b2v_inst19|Selector12~1_combout\,
	datad => \b2v_inst19|messages~1clkctrl_outclk\,
	combout => \b2v_inst19|messages\(2));

-- Location: LCCOMB_X28_Y11_N14
\b2v_inst19|Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector40~0_combout\ = (\b2v_inst19|estadoAtual.release~q\ & (((\b2v_inst19|messages\(3))))) # (!\b2v_inst19|estadoAtual.release~q\ & (\b2v_inst19|estadoAtual.save~q\ & (\Input[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|estadoAtual.save~q\,
	datab => \b2v_inst19|estadoAtual.release~q\,
	datac => \Input[3]~input_o\,
	datad => \b2v_inst19|messages\(3),
	combout => \b2v_inst19|Selector40~0_combout\);

-- Location: LCCOMB_X28_Y11_N6
\b2v_inst19|messages[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|messages\(27) = (GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & (\b2v_inst19|messages\(27))) # (!GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & ((\b2v_inst19|Selector40~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|messages\(27),
	datac => \b2v_inst19|Selector40~0_combout\,
	datad => \b2v_inst19|messages~1clkctrl_outclk\,
	combout => \b2v_inst19|messages\(27));

-- Location: LCCOMB_X28_Y11_N16
\b2v_inst19|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector35~0_combout\ = (\b2v_inst19|messages\(27) & ((\b2v_inst19|estadoAtual.release~q\) # (\b2v_inst19|estadoAtual.save~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst19|estadoAtual.release~q\,
	datac => \b2v_inst19|estadoAtual.save~q\,
	datad => \b2v_inst19|messages\(27),
	combout => \b2v_inst19|Selector35~0_combout\);

-- Location: LCCOMB_X28_Y11_N20
\b2v_inst19|messages[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|messages\(23) = (GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & (\b2v_inst19|messages\(23))) # (!GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & ((\b2v_inst19|Selector35~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst19|messages\(23),
	datac => \b2v_inst19|Selector35~0_combout\,
	datad => \b2v_inst19|messages~1clkctrl_outclk\,
	combout => \b2v_inst19|messages\(23));

-- Location: LCCOMB_X28_Y11_N22
\b2v_inst19|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector31~0_combout\ = (\b2v_inst19|messages\(23) & ((\b2v_inst19|estadoAtual.release~q\) # (\b2v_inst19|estadoAtual.save~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst19|estadoAtual.release~q\,
	datac => \b2v_inst19|estadoAtual.save~q\,
	datad => \b2v_inst19|messages\(23),
	combout => \b2v_inst19|Selector31~0_combout\);

-- Location: LCCOMB_X28_Y11_N10
\b2v_inst19|messages[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|messages\(19) = (GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & (\b2v_inst19|messages\(19))) # (!GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & ((\b2v_inst19|Selector31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|messages\(19),
	datac => \b2v_inst19|Selector31~0_combout\,
	datad => \b2v_inst19|messages~1clkctrl_outclk\,
	combout => \b2v_inst19|messages\(19));

-- Location: LCCOMB_X28_Y11_N8
\b2v_inst19|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector27~0_combout\ = (\b2v_inst19|messages\(19) & ((\b2v_inst19|estadoAtual.release~q\) # (\b2v_inst19|estadoAtual.save~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst19|estadoAtual.release~q\,
	datac => \b2v_inst19|estadoAtual.save~q\,
	datad => \b2v_inst19|messages\(19),
	combout => \b2v_inst19|Selector27~0_combout\);

-- Location: LCCOMB_X28_Y11_N0
\b2v_inst19|messages[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|messages\(15) = (GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & (\b2v_inst19|messages\(15))) # (!GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & ((\b2v_inst19|Selector27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst19|messages\(15),
	datac => \b2v_inst19|Selector27~0_combout\,
	datad => \b2v_inst19|messages~1clkctrl_outclk\,
	combout => \b2v_inst19|messages\(15));

-- Location: LCCOMB_X28_Y11_N26
\b2v_inst19|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector23~0_combout\ = (\b2v_inst19|messages\(15) & ((\b2v_inst19|estadoAtual.release~q\) # (\b2v_inst19|estadoAtual.save~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst19|estadoAtual.release~q\,
	datac => \b2v_inst19|estadoAtual.save~q\,
	datad => \b2v_inst19|messages\(15),
	combout => \b2v_inst19|Selector23~0_combout\);

-- Location: LCCOMB_X28_Y11_N2
\b2v_inst19|messages[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|messages\(11) = (GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & (\b2v_inst19|messages\(11))) # (!GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & ((\b2v_inst19|Selector23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst19|messages\(11),
	datac => \b2v_inst19|messages~1clkctrl_outclk\,
	datad => \b2v_inst19|Selector23~0_combout\,
	combout => \b2v_inst19|messages\(11));

-- Location: LCCOMB_X28_Y11_N4
\b2v_inst19|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector19~0_combout\ = (\b2v_inst19|messages\(11) & ((\b2v_inst19|estadoAtual.save~q\) # (\b2v_inst19|estadoAtual.release~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|estadoAtual.save~q\,
	datab => \b2v_inst19|estadoAtual.release~q\,
	datad => \b2v_inst19|messages\(11),
	combout => \b2v_inst19|Selector19~0_combout\);

-- Location: LCCOMB_X28_Y11_N24
\b2v_inst19|messages[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|messages\(7) = (GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & (\b2v_inst19|messages\(7))) # (!GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & ((\b2v_inst19|Selector19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst19|messages\(7),
	datac => \b2v_inst19|Selector19~0_combout\,
	datad => \b2v_inst19|messages~1clkctrl_outclk\,
	combout => \b2v_inst19|messages\(7));

-- Location: LCCOMB_X28_Y11_N30
\b2v_inst19|Selector11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector11~3_combout\ = (\b2v_inst19|messages\(7) & ((\b2v_inst19|estadoAtual.release~q\) # (\b2v_inst19|estadoAtual.save~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst19|estadoAtual.release~q\,
	datac => \b2v_inst19|estadoAtual.save~q\,
	datad => \b2v_inst19|messages\(7),
	combout => \b2v_inst19|Selector11~3_combout\);

-- Location: LCCOMB_X28_Y11_N18
\b2v_inst19|messages[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|messages\(3) = (GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & ((\b2v_inst19|messages\(3)))) # (!GLOBAL(\b2v_inst19|messages~1clkctrl_outclk\) & (\b2v_inst19|Selector11~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst19|Selector11~3_combout\,
	datac => \b2v_inst19|messages\(3),
	datad => \b2v_inst19|messages~1clkctrl_outclk\,
	combout => \b2v_inst19|messages\(3));

-- Location: LCCOMB_X37_Y10_N10
\b2v_inst2|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|q[2]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\,
	combout => \b2v_inst2|q[2]~feeder_combout\);

-- Location: FF_X37_Y10_N11
\b2v_inst2|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|q[2]~feeder_combout\,
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|q\(2));

-- Location: LCCOMB_X35_Y10_N20
\b2v_inst8|b2v_inst|b2v_inst6|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst6|q[2]~feeder_combout\ = \b2v_inst2|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|q\(2),
	combout => \b2v_inst8|b2v_inst|b2v_inst6|q[2]~feeder_combout\);

-- Location: FF_X35_Y10_N21
\b2v_inst8|b2v_inst|b2v_inst6|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|b2v_inst|estadoAtual.store~clkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst6|q[2]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst6|q\(2));

-- Location: LCCOMB_X35_Y10_N12
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst3|O[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst3|O[2]~1_combout\ = (\b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\ & (((\b2v_inst8|b2v_inst|b2v_inst6|q\(2))))) # (!\b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\ & (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(3) $ 
-- ((\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(3),
	datab => \b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\,
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(2),
	datad => \b2v_inst8|b2v_inst|b2v_inst6|q\(2),
	combout => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst3|O[2]~1_combout\);

-- Location: FF_X35_Y10_N13
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst3|O[2]~1_combout\,
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(2));

-- Location: LCCOMB_X37_Y14_N12
\b2v_inst2|q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|q[1]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\,
	combout => \b2v_inst2|q[1]~feeder_combout\);

-- Location: FF_X37_Y14_N13
\b2v_inst2|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|q[1]~feeder_combout\,
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|q\(1));

-- Location: LCCOMB_X37_Y10_N26
\b2v_inst8|b2v_inst|b2v_inst6|q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst6|q[1]~feeder_combout\ = \b2v_inst2|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|q\(1),
	combout => \b2v_inst8|b2v_inst|b2v_inst6|q[1]~feeder_combout\);

-- Location: FF_X37_Y10_N27
\b2v_inst8|b2v_inst|b2v_inst6|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|b2v_inst|estadoAtual.store~clkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst6|q[1]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst6|q\(1));

-- Location: LCCOMB_X36_Y10_N22
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst3|O[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst3|O[1]~3_combout\ = (\b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\ & (((\b2v_inst8|b2v_inst|b2v_inst6|q\(1))))) # (!\b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\ & (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(2) $ 
-- ((\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(2),
	datab => \b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\,
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(1),
	datad => \b2v_inst8|b2v_inst|b2v_inst6|q\(1),
	combout => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst3|O[1]~3_combout\);

-- Location: FF_X36_Y10_N23
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst3|O[1]~3_combout\,
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(1));

-- Location: LCCOMB_X36_Y13_N16
\b2v_inst2|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|q[0]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\,
	combout => \b2v_inst2|q[0]~feeder_combout\);

-- Location: FF_X36_Y13_N17
\b2v_inst2|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|q[0]~feeder_combout\,
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|q\(0));

-- Location: LCCOMB_X35_Y10_N28
\b2v_inst8|b2v_inst|b2v_inst6|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst6|q[0]~feeder_combout\ = \b2v_inst2|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|q\(0),
	combout => \b2v_inst8|b2v_inst|b2v_inst6|q[0]~feeder_combout\);

-- Location: FF_X35_Y10_N29
\b2v_inst8|b2v_inst|b2v_inst6|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|b2v_inst|estadoAtual.store~clkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst6|q[0]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst6|q\(0));

-- Location: LCCOMB_X35_Y10_N18
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst3|O[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst3|O[0]~0_combout\ = (\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\ & ((\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux~q\ & ((\b2v_inst8|b2v_inst|b2v_inst6|q\(0)))) # (!\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux~q\ 
-- & (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(1))))) # (!\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\ & (((\b2v_inst8|b2v_inst|b2v_inst6|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(1),
	datab => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	datac => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux~q\,
	datad => \b2v_inst8|b2v_inst|b2v_inst6|q\(0),
	combout => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst3|O[0]~0_combout\);

-- Location: FF_X35_Y10_N19
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst3|O[0]~0_combout\,
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(0));

-- Location: LCCOMB_X36_Y13_N14
\b2v_inst2|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|q[3]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\,
	combout => \b2v_inst2|q[3]~feeder_combout\);

-- Location: FF_X36_Y13_N15
\b2v_inst2|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|q[3]~feeder_combout\,
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|q\(3));

-- Location: LCCOMB_X35_Y10_N10
\b2v_inst8|b2v_inst|b2v_inst6|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst6|q[3]~feeder_combout\ = \b2v_inst2|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|q\(3),
	combout => \b2v_inst8|b2v_inst|b2v_inst6|q[3]~feeder_combout\);

-- Location: FF_X35_Y10_N11
\b2v_inst8|b2v_inst|b2v_inst6|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|b2v_inst|estadoAtual.store~clkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst6|q[3]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst6|q\(3));

-- Location: LCCOMB_X35_Y10_N26
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst3|O[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst3|O[3]~2_combout\ = (\b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\ & (((\b2v_inst8|b2v_inst|b2v_inst6|q\(3))))) # (!\b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\ & (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(0) $ 
-- ((\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\,
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(0),
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(3),
	datad => \b2v_inst8|b2v_inst|b2v_inst6|q\(3),
	combout => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst3|O[3]~2_combout\);

-- Location: FF_X35_Y10_N27
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst3|O[3]~2_combout\,
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(3));

-- Location: LCCOMB_X35_Y10_N14
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q[3]~1_combout\ = (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(2) & \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(2),
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(1),
	combout => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q[3]~1_combout\);

-- Location: LCCOMB_X36_Y10_N2
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst11|o[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst11|o[0]~0_combout\ = (((\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(2) & \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(1))) # (!\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(3))) # 
-- (!\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(0),
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(2),
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(1),
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(3),
	combout => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst11|o[0]~0_combout\);

-- Location: LCCOMB_X36_Y10_N4
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q[0]~0_combout\ = (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q[3]~1_combout\ & (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst11|o[0]~0_combout\)) # (!\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q[3]~1_combout\ & 
-- ((\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q[3]~1_combout\,
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst11|o[0]~0_combout\,
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(2),
	combout => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q[0]~0_combout\);

-- Location: LCCOMB_X37_Y10_N14
\b2v_inst3|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst3|q[0]~feeder_combout\ = \b2v_inst2|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst2|q\(0),
	combout => \b2v_inst3|q[0]~feeder_combout\);

-- Location: FF_X37_Y10_N15
\b2v_inst3|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst3|q[0]~feeder_combout\,
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|q\(0));

-- Location: LCCOMB_X36_Y10_N14
\b2v_inst8|b2v_inst|b2v_inst5|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst5|q[0]~feeder_combout\ = \b2v_inst3|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst3|q\(0),
	combout => \b2v_inst8|b2v_inst|b2v_inst5|q[0]~feeder_combout\);

-- Location: FF_X36_Y10_N15
\b2v_inst8|b2v_inst|b2v_inst5|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|b2v_inst|estadoAtual.store~clkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst5|q[0]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst5|q\(0));

-- Location: FF_X36_Y10_N5
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q[0]~0_combout\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst5|q\(0),
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(0));

-- Location: LCCOMB_X37_Y10_N18
\b2v_inst3|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst3|q[2]~feeder_combout\ = \b2v_inst2|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst2|q\(2),
	combout => \b2v_inst3|q[2]~feeder_combout\);

-- Location: FF_X37_Y10_N19
\b2v_inst3|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst3|q[2]~feeder_combout\,
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|q\(2));

-- Location: LCCOMB_X36_Y10_N20
\b2v_inst8|b2v_inst|b2v_inst5|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst5|q[2]~feeder_combout\ = \b2v_inst3|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst3|q\(2),
	combout => \b2v_inst8|b2v_inst|b2v_inst5|q[2]~feeder_combout\);

-- Location: FF_X36_Y10_N21
\b2v_inst8|b2v_inst|b2v_inst5|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|b2v_inst|estadoAtual.store~clkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst5|q[2]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst5|q\(2));

-- Location: LCCOMB_X36_Y10_N18
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst1|O[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst1|O[2]~0_combout\ = (\b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\ & (((\b2v_inst8|b2v_inst|b2v_inst5|q\(2))))) # (!\b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\ & (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(3) $ 
-- ((\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(3),
	datab => \b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\,
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(0),
	datad => \b2v_inst8|b2v_inst|b2v_inst5|q\(2),
	combout => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst1|O[2]~0_combout\);

-- Location: FF_X36_Y10_N19
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst1|O[2]~0_combout\,
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(2));

-- Location: FF_X37_Y10_N13
\b2v_inst3|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst2|q\(1),
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	sload => VCC,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|q\(1));

-- Location: LCCOMB_X36_Y10_N10
\b2v_inst8|b2v_inst|b2v_inst5|q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst5|q[1]~feeder_combout\ = \b2v_inst3|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst3|q\(1),
	combout => \b2v_inst8|b2v_inst|b2v_inst5|q[1]~feeder_combout\);

-- Location: FF_X36_Y10_N11
\b2v_inst8|b2v_inst|b2v_inst5|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|b2v_inst|estadoAtual.store~clkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst5|q[1]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst5|q\(1));

-- Location: LCCOMB_X36_Y10_N8
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst1|O[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst1|O[1]~2_combout\ = (\b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\ & (((\b2v_inst8|b2v_inst|b2v_inst5|q\(1))))) # (!\b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\ & (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(3) $ 
-- ((\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(3),
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(2),
	datac => \b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\,
	datad => \b2v_inst8|b2v_inst|b2v_inst5|q\(1),
	combout => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst1|O[1]~2_combout\);

-- Location: FF_X36_Y10_N9
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst1|O[1]~2_combout\,
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(1));

-- Location: LCCOMB_X37_Y10_N0
\b2v_inst3|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst3|q[3]~feeder_combout\ = \b2v_inst2|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst2|q\(3),
	combout => \b2v_inst3|q[3]~feeder_combout\);

-- Location: FF_X37_Y10_N1
\b2v_inst3|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst3|q[3]~feeder_combout\,
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|q\(3));

-- Location: LCCOMB_X36_Y10_N24
\b2v_inst8|b2v_inst|b2v_inst5|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst5|q[3]~feeder_combout\ = \b2v_inst3|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst3|q\(3),
	combout => \b2v_inst8|b2v_inst|b2v_inst5|q[3]~feeder_combout\);

-- Location: FF_X36_Y10_N25
\b2v_inst8|b2v_inst|b2v_inst5|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|b2v_inst|estadoAtual.store~clkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst5|q[3]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst5|q\(3));

-- Location: LCCOMB_X36_Y10_N12
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst1|O[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst1|O[3]~1_combout\ = (\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux~q\ & (((\b2v_inst8|b2v_inst|b2v_inst5|q\(3))))) # (!\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux~q\ & 
-- ((\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\ & (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(1))) # (!\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\ & ((\b2v_inst8|b2v_inst|b2v_inst5|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux~q\,
	datab => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(1),
	datad => \b2v_inst8|b2v_inst|b2v_inst5|q\(3),
	combout => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst1|O[3]~1_combout\);

-- Location: FF_X36_Y10_N13
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst1|O[3]~1_combout\,
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(3));

-- Location: LCCOMB_X37_Y10_N16
\b2v_inst4|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|q[3]~feeder_combout\ = \b2v_inst3|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst3|q\(3),
	combout => \b2v_inst4|q[3]~feeder_combout\);

-- Location: FF_X37_Y10_N17
\b2v_inst4|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst4|q[3]~feeder_combout\,
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|q\(3));

-- Location: LCCOMB_X37_Y10_N8
\b2v_inst5|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|q[3]~feeder_combout\ = \b2v_inst4|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst4|q\(3),
	combout => \b2v_inst5|q[3]~feeder_combout\);

-- Location: FF_X37_Y10_N9
\b2v_inst5|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst5|q[3]~feeder_combout\,
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|q\(3));

-- Location: LCCOMB_X35_Y10_N4
\b2v_inst8|b2v_inst|b2v_inst1|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst1|q[3]~feeder_combout\ = \b2v_inst5|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|q\(3),
	combout => \b2v_inst8|b2v_inst|b2v_inst1|q[3]~feeder_combout\);

-- Location: FF_X35_Y10_N5
\b2v_inst8|b2v_inst|b2v_inst1|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|b2v_inst|estadoAtual.store~clkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst1|q[3]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst1|q\(3));

-- Location: FF_X35_Y10_N17
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst5|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst1|q\(3),
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst5|q\(3));

-- Location: LCCOMB_X36_Y10_N30
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[0]~2_combout\ = (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(3) & \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(3),
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(2),
	combout => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[0]~2_combout\);

-- Location: LCCOMB_X37_Y10_N24
\b2v_inst4|q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|q[1]~feeder_combout\ = \b2v_inst3|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst3|q\(1),
	combout => \b2v_inst4|q[1]~feeder_combout\);

-- Location: FF_X37_Y10_N25
\b2v_inst4|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst4|q[1]~feeder_combout\,
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|q\(1));

-- Location: LCCOMB_X39_Y10_N18
\b2v_inst8|b2v_inst|b2v_inst4|q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst4|q[1]~feeder_combout\ = \b2v_inst4|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|q\(1),
	combout => \b2v_inst8|b2v_inst|b2v_inst4|q[1]~feeder_combout\);

-- Location: FF_X39_Y10_N19
\b2v_inst8|b2v_inst|b2v_inst4|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|b2v_inst|estadoAtual.store~clkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst4|q[1]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst4|q\(1));

-- Location: LCCOMB_X39_Y10_N8
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst2|O[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst2|O[1]~1_combout\ = (\b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\ & (((\b2v_inst8|b2v_inst|b2v_inst4|q\(1))))) # (!\b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\ & (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(0) $ 
-- ((\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(0),
	datab => \b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\,
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(3),
	datad => \b2v_inst8|b2v_inst|b2v_inst4|q\(1),
	combout => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst2|O[1]~1_combout\);

-- Location: FF_X39_Y10_N9
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst2|O[1]~1_combout\,
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(1));

-- Location: LCCOMB_X36_Y10_N0
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst8|o[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst8|o[0]~0_combout\ = (((\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(2) & \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(3))) # (!\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(1))) # 
-- (!\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(0),
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(2),
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(3),
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(1),
	combout => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst8|o[0]~0_combout\);

-- Location: LCCOMB_X36_Y10_N6
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[0]~0_combout\ = (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[0]~2_combout\ & ((\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst8|o[0]~0_combout\))) # (!\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[0]~2_combout\ & 
-- (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[0]~2_combout\,
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(3),
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst8|o[0]~0_combout\,
	combout => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[0]~0_combout\);

-- Location: FF_X37_Y10_N3
\b2v_inst4|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst3|q\(0),
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	sload => VCC,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|q\(0));

-- Location: LCCOMB_X36_Y10_N26
\b2v_inst8|b2v_inst|b2v_inst4|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst4|q[0]~feeder_combout\ = \b2v_inst4|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst4|q\(0),
	combout => \b2v_inst8|b2v_inst|b2v_inst4|q[0]~feeder_combout\);

-- Location: FF_X36_Y10_N27
\b2v_inst8|b2v_inst|b2v_inst4|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|b2v_inst|estadoAtual.store~clkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst4|q[0]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst4|q\(0));

-- Location: FF_X36_Y10_N7
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[0]~0_combout\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst4|q\(0),
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(0));

-- Location: LCCOMB_X36_Y10_N28
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst8|o[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst8|o[0]~1_combout\ = ((\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(0) & ((!\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(3)) # (!\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(2))))) # 
-- (!\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(0),
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(2),
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(3),
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(1),
	combout => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst8|o[0]~1_combout\);

-- Location: LCCOMB_X36_Y10_N16
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[2]~1_combout\ = (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[0]~2_combout\ & (!\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst8|o[0]~1_combout\)) # (!\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[0]~2_combout\ & 
-- ((\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[0]~2_combout\,
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst8|o[0]~1_combout\,
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(1),
	combout => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[2]~1_combout\);

-- Location: LCCOMB_X37_Y10_N22
\b2v_inst4|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|q[2]~feeder_combout\ = \b2v_inst3|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst3|q\(2),
	combout => \b2v_inst4|q[2]~feeder_combout\);

-- Location: FF_X37_Y10_N23
\b2v_inst4|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst4|q[2]~feeder_combout\,
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|q\(2));

-- Location: LCCOMB_X37_Y10_N20
\b2v_inst8|b2v_inst|b2v_inst4|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst4|q[2]~feeder_combout\ = \b2v_inst4|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst4|q\(2),
	combout => \b2v_inst8|b2v_inst|b2v_inst4|q[2]~feeder_combout\);

-- Location: FF_X37_Y10_N21
\b2v_inst8|b2v_inst|b2v_inst4|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|b2v_inst|estadoAtual.store~clkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst4|q[2]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst4|q\(2));

-- Location: FF_X36_Y10_N17
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[2]~1_combout\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst4|q\(2),
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst8|b2v_inst|b2v_inst|muxSel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(2));

-- Location: LCCOMB_X35_Y10_N24
\b2v_inst8|b2v_inst|b2v_inst4|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst4|q[3]~feeder_combout\ = \b2v_inst4|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst4|q\(3),
	combout => \b2v_inst8|b2v_inst|b2v_inst4|q[3]~feeder_combout\);

-- Location: FF_X35_Y10_N25
\b2v_inst8|b2v_inst|b2v_inst4|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|b2v_inst|estadoAtual.store~clkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst4|q[3]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst4|q\(3));

-- Location: LCCOMB_X35_Y10_N6
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst2|O[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst2|O[3]~0_combout\ = (\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\ & ((\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux~q\ & ((\b2v_inst8|b2v_inst|b2v_inst4|q\(3)))) # (!\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux~q\ 
-- & (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(2))))) # (!\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\ & (((\b2v_inst8|b2v_inst|b2v_inst4|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(2),
	datab => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	datac => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux~q\,
	datad => \b2v_inst8|b2v_inst|b2v_inst4|q\(3),
	combout => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst2|O[3]~0_combout\);

-- Location: FF_X35_Y10_N7
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst2|O[3]~0_combout\,
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(3));

-- Location: LCCOMB_X35_Y10_N16
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\ = \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(3) $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(3) $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst5|q\(3) $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(3),
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(3),
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst5|q\(3),
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(3),
	combout => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\);

-- Location: LCCOMB_X35_Y13_N6
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(2) = \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(2) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(2),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(2));

-- Location: LCCOMB_X34_Y13_N30
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(0) = \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(0) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(0),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(0));

-- Location: LCCOMB_X34_Y13_N22
\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ = (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(2) & ((\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(1) & (!\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(0))) # (!\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(1) & 
-- ((!\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(3)))))) # (!\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(2) & (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(1) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(0) $ 
-- (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(2),
	datab => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(1),
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(0),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(3),
	combout => \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\);

-- Location: LCCOMB_X34_Y13_N16
\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ = (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(1) & ((\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(0) & (!\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(3))) # (!\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(0) & 
-- ((\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(2)))))) # (!\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(1) & (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(3) $ (((\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(0) & 
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(3),
	datab => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(1),
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(0),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(2),
	combout => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\);

-- Location: LCCOMB_X38_Y13_N28
\b2v_inst5|q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|q[1]~feeder_combout\ = \b2v_inst4|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst4|q\(1),
	combout => \b2v_inst5|q[1]~feeder_combout\);

-- Location: FF_X38_Y13_N29
\b2v_inst5|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst5|q[1]~feeder_combout\,
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|q\(1));

-- Location: LCCOMB_X35_Y10_N30
\b2v_inst8|b2v_inst|b2v_inst1|q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst1|q[1]~feeder_combout\ = \b2v_inst5|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|q\(1),
	combout => \b2v_inst8|b2v_inst|b2v_inst1|q[1]~feeder_combout\);

-- Location: FF_X35_Y10_N31
\b2v_inst8|b2v_inst|b2v_inst1|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|b2v_inst|estadoAtual.store~clkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst1|q[1]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst1|q\(1));

-- Location: FF_X35_Y10_N23
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst5|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst1|q\(1),
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst5|q\(1));

-- Location: LCCOMB_X35_Y10_N22
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ = \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(1) $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(1) $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst5|q\(1) $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(1),
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(1),
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst5|q\(1),
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(1),
	combout => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\);

-- Location: LCCOMB_X32_Y13_N10
\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~10_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\)))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ & 
-- (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ $ (((\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\ & \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~10_combout\);

-- Location: LCCOMB_X37_Y10_N28
\b2v_inst5|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|q[0]~feeder_combout\ = \b2v_inst4|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst4|q\(0),
	combout => \b2v_inst5|q[0]~feeder_combout\);

-- Location: FF_X37_Y10_N29
\b2v_inst5|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst5|q[0]~feeder_combout\,
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|q\(0));

-- Location: LCCOMB_X34_Y10_N4
\b2v_inst8|b2v_inst|b2v_inst1|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst1|q[0]~feeder_combout\ = \b2v_inst5|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|q\(0),
	combout => \b2v_inst8|b2v_inst|b2v_inst1|q[0]~feeder_combout\);

-- Location: FF_X34_Y10_N5
\b2v_inst8|b2v_inst|b2v_inst1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|b2v_inst|estadoAtual.store~clkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst1|q[0]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst1|q\(0));

-- Location: FF_X34_Y10_N31
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst5|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst1|q\(0),
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst5|q\(0));

-- Location: LCCOMB_X34_Y10_N30
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\ = \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(0) $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(0) $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst5|q\(0) $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(0),
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(0),
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst5|q\(0),
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(0),
	combout => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\);

-- Location: LCCOMB_X32_Y13_N0
\b2v_inst8|b2v_inst2|b2v_inst2|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst2|Mux8~0_combout\ = \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\,
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst2|Mux8~0_combout\);

-- Location: LCCOMB_X32_Y13_N6
\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~11_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ & (\b2v_inst8|b2v_inst2|b2v_inst2|Mux8~0_combout\ $ (((\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~10_combout\ & 
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\))))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ & (\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~10_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst2|Mux8~0_combout\,
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~11_combout\);

-- Location: FF_X37_Y10_N7
\b2v_inst5|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst4|q\(2),
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	sload => VCC,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|q\(2));

-- Location: LCCOMB_X35_Y10_N8
\b2v_inst8|b2v_inst|b2v_inst1|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst1|q[2]~feeder_combout\ = \b2v_inst5|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|q\(2),
	combout => \b2v_inst8|b2v_inst|b2v_inst1|q[2]~feeder_combout\);

-- Location: FF_X35_Y10_N9
\b2v_inst8|b2v_inst|b2v_inst1|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|b2v_inst|estadoAtual.store~clkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst1|q[2]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst1|q\(2));

-- Location: FF_X35_Y10_N3
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst5|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst1|q\(2),
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst5|q\(2));

-- Location: LCCOMB_X35_Y10_N2
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\ = \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(2) $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(2) $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst5|q\(2) $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(2),
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(2),
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst5|q\(2),
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(2),
	combout => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\);

-- Location: LCCOMB_X29_Y13_N6
\b2v_inst8|b2v_inst2|b2v_inst2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst2|Mux3~0_combout\ = \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\ $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\,
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst2|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y13_N28
\b2v_inst8|b2v_inst2|b2v_inst2|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst2|Mux9~0_combout\ = \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\ $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\ $ 
-- (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\,
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst2|Mux9~0_combout\);

-- Location: LCCOMB_X29_Y13_N18
\b2v_inst8|b2v_inst2|b2v_inst2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst2|Mux2~0_combout\ = \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\,
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst2|Mux2~0_combout\);

-- Location: LCCOMB_X29_Y13_N28
\b2v_inst8|b2v_inst2|b2v_inst2|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst2|Mux10~0_combout\ = \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\ $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\,
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\,
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst2|Mux10~0_combout\);

-- Location: LCCOMB_X29_Y13_N8
\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~8_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\)))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ & 
-- ((\b2v_inst8|b2v_inst2|b2v_inst2|Mux10~0_combout\))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ & (\b2v_inst8|b2v_inst2|b2v_inst2|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst2|Mux2~0_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst2|Mux10~0_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~8_combout\);

-- Location: LCCOMB_X29_Y13_N2
\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~9_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~8_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst2|Mux9~0_combout\) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\)))) # (!\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~8_combout\ 
-- & (\b2v_inst8|b2v_inst2|b2v_inst2|Mux3~0_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst2|Mux3~0_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst2|Mux9~0_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~8_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~9_combout\);

-- Location: LCCOMB_X34_Y13_N14
\b2v_inst8|b2v_inst2|b2v_inst|o[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst|o[3]~3_combout\ = (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(3) & (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(0) $ (((!\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(2)) # (!\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(1)))))) 
-- # (!\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(3) & (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(1) $ (((\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(3),
	datab => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(1),
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(0),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(2),
	combout => \b2v_inst8|b2v_inst2|b2v_inst|o[3]~3_combout\);

-- Location: LCCOMB_X34_Y13_N0
\b2v_inst8|b2v_inst2|b2v_inst|o[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\ = (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(0) & (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(1) $ (((\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(3) & \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(2)))))) # 
-- (!\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(0) & (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(3) $ (((\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(3),
	datab => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(1),
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(0),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(2),
	combout => \b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\);

-- Location: LCCOMB_X32_Y13_N24
\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~12_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[3]~3_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~9_combout\))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\ & 
-- (\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~11_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~9_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[3]~3_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~12_combout\);

-- Location: LCCOMB_X32_Y11_N30
\b2v_inst19|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector14~0_combout\ = (\b2v_inst19|messages\(0) & ((\b2v_inst19|messages~1_combout\) # ((\b2v_inst19|messages~0_combout\ & \b2v_inst19|messages\(4))))) # (!\b2v_inst19|messages\(0) & (((\b2v_inst19|messages~0_combout\ & 
-- \b2v_inst19|messages\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|messages\(0),
	datab => \b2v_inst19|messages~1_combout\,
	datac => \b2v_inst19|messages~0_combout\,
	datad => \b2v_inst19|messages\(4),
	combout => \b2v_inst19|Selector14~0_combout\);

-- Location: LCCOMB_X32_Y13_N12
\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~5_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & !\b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~5_combout\);

-- Location: LCCOMB_X34_Y13_N20
\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~3_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\) # ((\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~3_combout\);

-- Location: LCCOMB_X29_Y13_N24
\b2v_inst8|b2v_inst2|b2v_inst2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst2|Mux0~0_combout\ = \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\ $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst2|Mux0~0_combout\);

-- Location: LCCOMB_X30_Y13_N4
\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~0_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\)))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & 
-- (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\ $ (((\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\ & \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~0_combout\);

-- Location: LCCOMB_X30_Y13_N2
\b2v_inst8|b2v_inst2|b2v_inst2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst2|Mux5~0_combout\ = \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\ $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\ $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst2|Mux5~0_combout\);

-- Location: LCCOMB_X30_Y13_N16
\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~1_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~0_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst2|Mux5~0_combout\))) # (!\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~0_combout\ & 
-- (\b2v_inst8|b2v_inst2|b2v_inst2|Mux0~0_combout\)))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst2|Mux0~0_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~0_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst2|Mux5~0_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~1_combout\);

-- Location: LCCOMB_X34_Y13_N18
\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~2_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\) # ((!\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~2_combout\);

-- Location: LCCOMB_X30_Y13_N22
\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~4_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~3_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~1_combout\) # ((!\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~2_combout\)))) # (!\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~3_combout\ 
-- & (((\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\ & \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~3_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~1_combout\,
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~2_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~4_combout\);

-- Location: LCCOMB_X32_Y13_N2
\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~6_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~5_combout\ & (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\ $ (((\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~4_combout\ & 
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\))))) # (!\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~5_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~5_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~4_combout\,
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~6_combout\);

-- Location: LCCOMB_X32_Y13_N16
\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~7_combout\ = (!\b2v_inst8|b2v_inst2|b2v_inst|o[3]~3_combout\ & \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[3]~3_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~6_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~7_combout\);

-- Location: LCCOMB_X32_Y11_N24
\b2v_inst8|b2v_inst2|b2v_inst1|c[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst1|c\(0) = \b2v_inst19|Selector14~0_combout\ $ (((!\b2v_inst8|SYNTHESIZED_WIRE_5~1_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~12_combout\) # (\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~12_combout\,
	datab => \b2v_inst8|SYNTHESIZED_WIRE_5~1_combout\,
	datac => \b2v_inst19|Selector14~0_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~7_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst1|c\(0));

-- Location: FF_X32_Y11_N25
\b2v_inst15|deco0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst2|b2v_inst1|c\(0),
	ena => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_muxSel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst15|deco0\(0));

-- Location: LCCOMB_X29_Y13_N14
\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~20_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst2|Mux9~0_combout\) # ((\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\)))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & 
-- (((!\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ & \b2v_inst8|b2v_inst2|b2v_inst2|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst2|Mux9~0_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst2|Mux2~0_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~20_combout\);

-- Location: LCCOMB_X32_Y13_N26
\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~21_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~20_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst2|Mux5~0_combout\))) # (!\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~20_combout\ 
-- & (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\)))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst2|Mux5~0_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~20_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~21_combout\);

-- Location: LCCOMB_X32_Y13_N22
\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~18_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\)))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & 
-- (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\ $ (((\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ & !\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~18_combout\);

-- Location: LCCOMB_X32_Y13_N20
\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~19_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\ $ (((!\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~18_combout\ & 
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\))))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & (\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~18_combout\,
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~19_combout\);

-- Location: LCCOMB_X32_Y13_N28
\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~22_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[3]~3_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~19_combout\))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\ & 
-- (\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~21_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~19_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[3]~3_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~22_combout\);

-- Location: LCCOMB_X30_Y11_N26
\b2v_inst19|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector13~0_combout\ = (\b2v_inst19|messages~0_combout\ & ((\b2v_inst19|messages\(5)) # ((\b2v_inst19|messages\(1) & \b2v_inst19|messages~1_combout\)))) # (!\b2v_inst19|messages~0_combout\ & (((\b2v_inst19|messages\(1) & 
-- \b2v_inst19|messages~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|messages~0_combout\,
	datab => \b2v_inst19|messages\(5),
	datac => \b2v_inst19|messages\(1),
	datad => \b2v_inst19|messages~1_combout\,
	combout => \b2v_inst19|Selector13~0_combout\);

-- Location: LCCOMB_X30_Y13_N30
\b2v_inst8|b2v_inst2|b2v_inst2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst2|Mux4~0_combout\ = \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\ $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst2|Mux4~0_combout\);

-- Location: LCCOMB_X30_Y13_N20
\b2v_inst8|b2v_inst2|b2v_inst2|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst2|Mux7~0_combout\ = \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\ $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\,
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst2|Mux7~0_combout\);

-- Location: LCCOMB_X29_Y13_N10
\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~13_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\)))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ & 
-- (\b2v_inst8|b2v_inst2|b2v_inst2|Mux3~0_combout\)) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst2|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst2|Mux3~0_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst2|Mux0~0_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~13_combout\);

-- Location: LCCOMB_X29_Y13_N0
\b2v_inst8|b2v_inst2|b2v_inst2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst2|Mux6~0_combout\ = \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\ $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\,
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst2|Mux6~0_combout\);

-- Location: LCCOMB_X29_Y13_N16
\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~14_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~13_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst2|Mux10~0_combout\)) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\))) # 
-- (!\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~13_combout\ & (\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & (\b2v_inst8|b2v_inst2|b2v_inst2|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~13_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst2|Mux6~0_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst2|Mux10~0_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~14_combout\);

-- Location: LCCOMB_X30_Y13_N6
\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~15_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~3_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~14_combout\) # ((!\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~2_combout\)))) # 
-- (!\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~3_combout\ & (((\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ & \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~3_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~14_combout\,
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~2_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~15_combout\);

-- Location: LCCOMB_X30_Y13_N8
\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~16_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~5_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~15_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst2|Mux7~0_combout\))) # (!\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~15_combout\ 
-- & (\b2v_inst8|b2v_inst2|b2v_inst2|Mux4~0_combout\)))) # (!\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~5_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst2|Mux4~0_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst2|Mux7~0_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~5_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~15_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~16_combout\);

-- Location: LCCOMB_X30_Y12_N8
\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~17_combout\ = (!\b2v_inst8|b2v_inst2|b2v_inst|o[3]~3_combout\ & \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[3]~3_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~16_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~17_combout\);

-- Location: LCCOMB_X30_Y11_N0
\b2v_inst8|b2v_inst2|b2v_inst1|c[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst1|c\(1) = \b2v_inst19|Selector13~0_combout\ $ (((!\b2v_inst8|SYNTHESIZED_WIRE_5~1_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~22_combout\) # (\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|SYNTHESIZED_WIRE_5~1_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~22_combout\,
	datac => \b2v_inst19|Selector13~0_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~17_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst1|c\(1));

-- Location: FF_X30_Y11_N1
\b2v_inst15|deco0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst2|b2v_inst1|c\(1),
	ena => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_muxSel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst15|deco0\(1));

-- Location: LCCOMB_X32_Y13_N30
\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~28_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\)))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & 
-- (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\ $ (((\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\ & !\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~28_combout\);

-- Location: LCCOMB_X32_Y13_N8
\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~29_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & (\b2v_inst8|b2v_inst2|b2v_inst2|Mux8~0_combout\ $ (((!\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~28_combout\ & 
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\))))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst2|Mux8~0_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~28_combout\,
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~29_combout\);

-- Location: LCCOMB_X30_Y13_N26
\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~30_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst2|Mux3~0_combout\) # (\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\)))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & 
-- (\b2v_inst8|b2v_inst2|b2v_inst2|Mux0~0_combout\ & ((!\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst2|Mux0~0_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst2|Mux3~0_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~30_combout\);

-- Location: LCCOMB_X32_Y13_N18
\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~31_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ & (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\ $ (((\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ & 
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~30_combout\))))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~30_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~31_combout\);

-- Location: LCCOMB_X32_Y13_N4
\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~32_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[3]~3_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\ & (\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~29_combout\)) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\ & 
-- ((\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~29_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[3]~3_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~31_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~32_combout\);

-- Location: LCCOMB_X30_Y13_N14
\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~23_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst2|Mux7~0_combout\) # ((\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\)))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & 
-- (((\b2v_inst8|b2v_inst2|b2v_inst2|Mux4~0_combout\ & !\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst2|Mux7~0_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst2|Mux4~0_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~23_combout\);

-- Location: LCCOMB_X30_Y13_N12
\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~24_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~23_combout\ & (\b2v_inst8|b2v_inst2|b2v_inst2|Mux9~0_combout\)) # (!\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~23_combout\ & 
-- ((\b2v_inst8|b2v_inst2|b2v_inst2|Mux5~0_combout\))))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst2|Mux9~0_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~23_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst2|Mux5~0_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~24_combout\);

-- Location: LCCOMB_X30_Y13_N10
\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~25_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~3_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~24_combout\) # ((!\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~2_combout\)))) # 
-- (!\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~3_combout\ & (((\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\ & \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~24_combout\,
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~3_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~2_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~25_combout\);

-- Location: LCCOMB_X30_Y13_N24
\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~26_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~5_combout\ & (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ $ (((\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\ & 
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~25_combout\))))) # (!\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~5_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\,
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~5_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~25_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~26_combout\);

-- Location: LCCOMB_X29_Y13_N12
\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~27_combout\ = (!\b2v_inst8|b2v_inst2|b2v_inst|o[3]~3_combout\ & \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|b2v_inst2|b2v_inst|o[3]~3_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~26_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~27_combout\);

-- Location: LCCOMB_X28_Y8_N20
\b2v_inst19|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector12~0_combout\ = (\b2v_inst19|messages\(2) & ((\b2v_inst19|messages~1_combout\) # ((\b2v_inst19|messages~0_combout\ & \b2v_inst19|messages\(6))))) # (!\b2v_inst19|messages\(2) & (\b2v_inst19|messages~0_combout\ & 
-- ((\b2v_inst19|messages\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|messages\(2),
	datab => \b2v_inst19|messages~0_combout\,
	datac => \b2v_inst19|messages~1_combout\,
	datad => \b2v_inst19|messages\(6),
	combout => \b2v_inst19|Selector12~0_combout\);

-- Location: LCCOMB_X28_Y8_N28
\b2v_inst8|b2v_inst2|b2v_inst1|c[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst1|c\(2) = \b2v_inst19|Selector12~0_combout\ $ (((!\b2v_inst8|SYNTHESIZED_WIRE_5~1_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~32_combout\) # (\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~32_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~27_combout\,
	datac => \b2v_inst19|Selector12~0_combout\,
	datad => \b2v_inst8|SYNTHESIZED_WIRE_5~1_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst1|c\(2));

-- Location: FF_X28_Y8_N29
\b2v_inst15|deco0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst2|b2v_inst1|c\(2),
	ena => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_muxSel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst15|deco0\(2));

-- Location: LCCOMB_X32_Y13_N14
\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~38_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\)))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & (\b2v_inst8|b2v_inst2|b2v_inst2|Mux8~0_combout\ $ 
-- (((\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\ & !\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst2|Mux8~0_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~38_combout\);

-- Location: LCCOMB_X29_Y13_N4
\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~39_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~38_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst2|Mux10~0_combout\))) # (!\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~38_combout\ 
-- & (\b2v_inst8|b2v_inst2|b2v_inst2|Mux9~0_combout\)))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst2|Mux9~0_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~38_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst2|Mux10~0_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~39_combout\);

-- Location: LCCOMB_X30_Y13_N18
\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~40_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst2|Mux5~0_combout\) # ((\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\)))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & 
-- (((\b2v_inst8|b2v_inst2|b2v_inst2|Mux4~0_combout\ & !\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst2|Mux5~0_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst2|Mux4~0_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~40_combout\);

-- Location: LCCOMB_X29_Y13_N26
\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~41_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ & (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\ $ (((\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~40_combout\ & 
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\))))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~40_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\,
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~41_combout\);

-- Location: LCCOMB_X28_Y13_N16
\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~42_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[3]~3_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\ & (\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~39_combout\)) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\ & 
-- ((\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~39_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[3]~3_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~41_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~42_combout\);

-- Location: LCCOMB_X29_Y13_N22
\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~33_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\)))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & 
-- (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ $ (((\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\ & \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\,
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~33_combout\);

-- Location: LCCOMB_X29_Y13_N20
\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~34_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & (\b2v_inst8|b2v_inst2|b2v_inst2|Mux2~0_combout\ $ (((\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\ & 
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~33_combout\))))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~33_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst2|Mux2~0_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~34_combout\);

-- Location: LCCOMB_X30_Y13_N0
\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~35_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~3_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~34_combout\) # ((!\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~2_combout\)))) # 
-- (!\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~3_combout\ & (((\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\ & \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~3_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~34_combout\,
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~2_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~35_combout\);

-- Location: LCCOMB_X29_Y13_N30
\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~36_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~5_combout\ & (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\ $ (((\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~35_combout\ & 
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\))))) # (!\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~5_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~35_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~5_combout\,
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~36_combout\);

-- Location: LCCOMB_X28_Y11_N12
\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~37_combout\ = (!\b2v_inst8|b2v_inst2|b2v_inst|o[3]~3_combout\ & \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[3]~3_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~36_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~37_combout\);

-- Location: LCCOMB_X28_Y11_N28
\b2v_inst19|Selector11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector11~4_combout\ = (\b2v_inst19|messages\(7) & ((\b2v_inst19|estadoAtual.release~q\) # (\b2v_inst19|estadoAtual.save~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst19|estadoAtual.release~q\,
	datac => \b2v_inst19|estadoAtual.save~q\,
	datad => \b2v_inst19|messages\(7),
	combout => \b2v_inst19|Selector11~4_combout\);

-- Location: LCCOMB_X27_Y11_N26
\b2v_inst19|Selector11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst19|Selector11~2_combout\ = (\b2v_inst19|Selector11~4_combout\) # ((\b2v_inst19|messages\(3) & ((\b2v_inst19|estadoAtual.wait2~q\) # (\b2v_inst19|estadoAtual.wait1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|estadoAtual.wait2~q\,
	datab => \b2v_inst19|messages\(3),
	datac => \b2v_inst19|estadoAtual.wait1~q\,
	datad => \b2v_inst19|Selector11~4_combout\,
	combout => \b2v_inst19|Selector11~2_combout\);

-- Location: LCCOMB_X27_Y11_N24
\b2v_inst8|b2v_inst2|b2v_inst1|c[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst1|c\(3) = \b2v_inst19|Selector11~2_combout\ $ (((!\b2v_inst8|SYNTHESIZED_WIRE_5~1_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~42_combout\) # (\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~42_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~37_combout\,
	datac => \b2v_inst19|Selector11~2_combout\,
	datad => \b2v_inst8|SYNTHESIZED_WIRE_5~1_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst1|c\(3));

-- Location: LCCOMB_X27_Y11_N0
\b2v_inst15|deco0[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst15|deco0[3]~feeder_combout\ = \b2v_inst8|b2v_inst2|b2v_inst1|c\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|b2v_inst2|b2v_inst1|c\(3),
	combout => \b2v_inst15|deco0[3]~feeder_combout\);

-- Location: FF_X27_Y11_N1
\b2v_inst15|deco0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst15|deco0[3]~feeder_combout\,
	ena => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_muxSel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst15|deco0\(3));

-- Location: LCCOMB_X1_Y7_N4
\b2v_inst15|deco1[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst15|deco1[0]~feeder_combout\ = \b2v_inst15|deco0\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst15|deco0\(0),
	combout => \b2v_inst15|deco1[0]~feeder_combout\);

-- Location: FF_X1_Y7_N5
\b2v_inst15|deco1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst15|deco1[0]~feeder_combout\,
	ena => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_muxSel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst15|deco1\(0));

-- Location: LCCOMB_X1_Y16_N20
\b2v_inst15|deco1[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst15|deco1[1]~feeder_combout\ = \b2v_inst15|deco0\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst15|deco0\(1),
	combout => \b2v_inst15|deco1[1]~feeder_combout\);

-- Location: FF_X1_Y16_N21
\b2v_inst15|deco1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst15|deco1[1]~feeder_combout\,
	ena => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_muxSel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst15|deco1\(1));

-- Location: LCCOMB_X1_Y7_N30
\b2v_inst15|deco1[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst15|deco1[2]~feeder_combout\ = \b2v_inst15|deco0\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst15|deco0\(2),
	combout => \b2v_inst15|deco1[2]~feeder_combout\);

-- Location: FF_X1_Y7_N31
\b2v_inst15|deco1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst15|deco1[2]~feeder_combout\,
	ena => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_muxSel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst15|deco1\(2));

-- Location: LCCOMB_X1_Y16_N14
\b2v_inst15|deco1[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst15|deco1[3]~feeder_combout\ = \b2v_inst15|deco0\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst15|deco0\(3),
	combout => \b2v_inst15|deco1[3]~feeder_combout\);

-- Location: FF_X1_Y16_N15
\b2v_inst15|deco1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst15|deco1[3]~feeder_combout\,
	ena => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_muxSel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst15|deco1\(3));

-- Location: FF_X1_Y7_N13
\b2v_inst15|deco2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst15|deco1\(0),
	sload => VCC,
	ena => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_muxSel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst15|deco2\(0));

-- Location: LCCOMB_X1_Y16_N16
\b2v_inst15|deco2[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst15|deco2[1]~feeder_combout\ = \b2v_inst15|deco1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst15|deco1\(1),
	combout => \b2v_inst15|deco2[1]~feeder_combout\);

-- Location: FF_X1_Y16_N17
\b2v_inst15|deco2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst15|deco2[1]~feeder_combout\,
	ena => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_muxSel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst15|deco2\(1));

-- Location: FF_X1_Y7_N15
\b2v_inst15|deco2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst15|deco1\(2),
	sload => VCC,
	ena => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_muxSel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst15|deco2\(2));

-- Location: FF_X1_Y16_N19
\b2v_inst15|deco2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst15|deco1\(3),
	sload => VCC,
	ena => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_muxSel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst15|deco2\(3));

-- Location: LCCOMB_X1_Y7_N16
\b2v_inst15|deco3[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst15|deco3[0]~feeder_combout\ = \b2v_inst15|deco2\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst15|deco2\(0),
	combout => \b2v_inst15|deco3[0]~feeder_combout\);

-- Location: FF_X1_Y7_N17
\b2v_inst15|deco3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst15|deco3[0]~feeder_combout\,
	ena => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_muxSel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst15|deco3\(0));

-- Location: LCCOMB_X1_Y16_N24
\b2v_inst15|deco3[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst15|deco3[1]~feeder_combout\ = \b2v_inst15|deco2\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst15|deco2\(1),
	combout => \b2v_inst15|deco3[1]~feeder_combout\);

-- Location: FF_X1_Y16_N25
\b2v_inst15|deco3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst15|deco3[1]~feeder_combout\,
	ena => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_muxSel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst15|deco3\(1));

-- Location: FF_X1_Y7_N3
\b2v_inst15|deco3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst15|deco2\(2),
	sload => VCC,
	ena => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_muxSel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst15|deco3\(2));

-- Location: LCCOMB_X1_Y16_N6
\b2v_inst15|deco3[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst15|deco3[3]~feeder_combout\ = \b2v_inst15|deco2\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst15|deco2\(3),
	combout => \b2v_inst15|deco3[3]~feeder_combout\);

-- Location: FF_X1_Y16_N7
\b2v_inst15|deco3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst15|deco3[3]~feeder_combout\,
	ena => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_muxSel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst15|deco3\(3));

-- Location: LCCOMB_X1_Y7_N28
\b2v_inst15|deco4[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst15|deco4[0]~feeder_combout\ = \b2v_inst15|deco3\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst15|deco3\(0),
	combout => \b2v_inst15|deco4[0]~feeder_combout\);

-- Location: FF_X1_Y7_N29
\b2v_inst15|deco4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst15|deco4[0]~feeder_combout\,
	ena => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_muxSel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst15|deco4\(0));

-- Location: LCCOMB_X1_Y16_N28
\b2v_inst15|deco4[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst15|deco4[1]~feeder_combout\ = \b2v_inst15|deco3\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst15|deco3\(1),
	combout => \b2v_inst15|deco4[1]~feeder_combout\);

-- Location: FF_X1_Y16_N29
\b2v_inst15|deco4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst15|deco4[1]~feeder_combout\,
	ena => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_muxSel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst15|deco4\(1));

-- Location: LCCOMB_X1_Y7_N22
\b2v_inst15|deco4[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst15|deco4[2]~feeder_combout\ = \b2v_inst15|deco3\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst15|deco3\(2),
	combout => \b2v_inst15|deco4[2]~feeder_combout\);

-- Location: FF_X1_Y7_N23
\b2v_inst15|deco4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst15|deco4[2]~feeder_combout\,
	ena => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_muxSel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst15|deco4\(2));

-- Location: FF_X1_Y16_N23
\b2v_inst15|deco4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst15|deco3\(3),
	sload => VCC,
	ena => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_muxSel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst15|deco4\(3));

-- Location: LCCOMB_X1_Y7_N24
\b2v_inst15|deco5[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst15|deco5[0]~feeder_combout\ = \b2v_inst15|deco4\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst15|deco4\(0),
	combout => \b2v_inst15|deco5[0]~feeder_combout\);

-- Location: FF_X1_Y7_N25
\b2v_inst15|deco5[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst15|deco5[0]~feeder_combout\,
	ena => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_muxSel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst15|deco5\(0));

-- Location: LCCOMB_X1_Y16_N12
\b2v_inst15|deco5[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst15|deco5[1]~feeder_combout\ = \b2v_inst15|deco4\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst15|deco4\(1),
	combout => \b2v_inst15|deco5[1]~feeder_combout\);

-- Location: FF_X1_Y16_N13
\b2v_inst15|deco5[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst15|deco5[1]~feeder_combout\,
	ena => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_muxSel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst15|deco5\(1));

-- Location: FF_X1_Y7_N27
\b2v_inst15|deco5[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst15|deco4\(2),
	sload => VCC,
	ena => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_muxSel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst15|deco5\(2));

-- Location: FF_X1_Y16_N27
\b2v_inst15|deco5[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst15|deco4\(3),
	sload => VCC,
	ena => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_muxSel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst15|deco5\(3));

-- Location: LCCOMB_X1_Y7_N20
\b2v_inst15|deco6[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst15|deco6[0]~feeder_combout\ = \b2v_inst15|deco5\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst15|deco5\(0),
	combout => \b2v_inst15|deco6[0]~feeder_combout\);

-- Location: FF_X1_Y7_N21
\b2v_inst15|deco6[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst15|deco6[0]~feeder_combout\,
	ena => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_muxSel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst15|deco6\(0));

-- Location: LCCOMB_X1_Y16_N4
\b2v_inst15|deco6[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst15|deco6[1]~feeder_combout\ = \b2v_inst15|deco5\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst15|deco5\(1),
	combout => \b2v_inst15|deco6[1]~feeder_combout\);

-- Location: FF_X1_Y16_N5
\b2v_inst15|deco6[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst15|deco6[1]~feeder_combout\,
	ena => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_muxSel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst15|deco6\(1));

-- Location: FF_X1_Y7_N11
\b2v_inst15|deco6[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst15|deco5\(2),
	sload => VCC,
	ena => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_muxSel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst15|deco6\(2));

-- Location: FF_X1_Y16_N11
\b2v_inst15|deco6[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst15|deco5\(3),
	sload => VCC,
	ena => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_muxSel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst15|deco6\(3));

-- Location: LCCOMB_X38_Y13_N18
\b2v_inst6|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|q[0]~feeder_combout\ = \b2v_inst5|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst5|q\(0),
	combout => \b2v_inst6|q[0]~feeder_combout\);

-- Location: FF_X38_Y13_N19
\b2v_inst6|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst6|q[0]~feeder_combout\,
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|q\(0));

-- Location: FF_X38_Y14_N23
\b2v_inst6|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst5|q\(1),
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	sload => VCC,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|q\(1));

-- Location: LCCOMB_X37_Y10_N4
\b2v_inst6|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|q[2]~feeder_combout\ = \b2v_inst5|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst5|q\(2),
	combout => \b2v_inst6|q[2]~feeder_combout\);

-- Location: FF_X37_Y10_N5
\b2v_inst6|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst6|q[2]~feeder_combout\,
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|q\(2));

-- Location: FF_X37_Y10_N31
\b2v_inst6|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst5|q\(3),
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	sload => VCC,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|q\(3));

-- Location: LCCOMB_X36_Y11_N22
\b2v_inst|b2v_inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst|Selector1~0_combout\ = (\b2v_inst|b2v_inst|estadoAtual.localizador~q\ & (!\b2v_inst1|Count_8~q\ & ((\b2v_inst|b2v_inst2|Nerror~0_combout\) # (!\b2v_inst1|Impar~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst|estadoAtual.localizador~q\,
	datab => \b2v_inst1|Impar~q\,
	datac => \b2v_inst1|Count_8~q\,
	datad => \b2v_inst|b2v_inst2|Nerror~0_combout\,
	combout => \b2v_inst|b2v_inst|Selector1~0_combout\);

-- Location: LCCOMB_X36_Y11_N18
\b2v_inst|b2v_inst|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst|Selector1~2_combout\ = ((\b2v_inst|b2v_inst|Selector1~0_combout\) # ((\b2v_inst|b2v_inst|estadoAtual.avaliador~q\ & \b2v_inst1|Count_4~q\))) # (!\b2v_inst|b2v_inst|Selector1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst|estadoAtual.avaliador~q\,
	datab => \b2v_inst|b2v_inst|Selector1~1_combout\,
	datac => \b2v_inst|b2v_inst|Selector1~0_combout\,
	datad => \b2v_inst1|Count_4~q\,
	combout => \b2v_inst|b2v_inst|Selector1~2_combout\);

-- Location: LCCOMB_X36_Y11_N10
\b2v_inst|b2v_inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst|Selector0~0_combout\ = (!\b2v_inst1|Count_4~q\ & \b2v_inst|b2v_inst|estadoAtual.avaliador~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Count_4~q\,
	datac => \b2v_inst|b2v_inst|estadoAtual.avaliador~q\,
	combout => \b2v_inst|b2v_inst|Selector0~0_combout\);

-- Location: LCCOMB_X36_Y11_N28
\b2v_inst|b2v_inst|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst|Selector0~1_combout\ = (\b2v_inst|b2v_inst|Selector0~0_combout\) # ((\b2v_inst|b2v_inst|estadoAtual.localizador~q\ & ((\b2v_inst1|Count_8~q\) # (!\b2v_inst1|Impar~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Count_8~q\,
	datab => \b2v_inst1|Impar~q\,
	datac => \b2v_inst|b2v_inst|estadoAtual.localizador~q\,
	datad => \b2v_inst|b2v_inst|Selector0~0_combout\,
	combout => \b2v_inst|b2v_inst|Selector0~1_combout\);

-- Location: LCCOMB_X36_Y11_N24
\b2v_inst|b2v_inst|test_state[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst|test_state\(2) = (\b2v_inst|b2v_inst|estadoAtual.clearSyn~q\) # (\b2v_inst|b2v_inst|estadoAtual.avaliador~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst|estadoAtual.clearSyn~q\,
	datac => \b2v_inst|b2v_inst|estadoAtual.avaliador~q\,
	combout => \b2v_inst|b2v_inst|test_state\(2));

-- Location: LCCOMB_X36_Y11_N4
\b2v_inst|b2v_inst|test_state~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst|test_state~4_combout\ = (\b2v_inst|b2v_inst|estadoAtual.store~q\) # (!\b2v_inst|b2v_inst|estadoAtual.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	datac => \b2v_inst|b2v_inst|estadoAtual.store~q\,
	combout => \b2v_inst|b2v_inst|test_state~4_combout\);

ww_Registra <= \Registra~output_o\;

ww_di <= \di~output_o\;

ww_loadS <= \loadS~output_o\;

ww_loadB <= \loadB~output_o\;

ww_loadC <= \loadC~output_o\;

ww_clearS <= \clearS~output_o\;

ww_clearB <= \clearB~output_o\;

ww_clearC <= \clearC~output_o\;

ww_MuxSel <= \MuxSel~output_o\;

ww_Nerror <= \Nerror~output_o\;

ww_pin_name1 <= \pin_name1~output_o\;

ww_Impar <= \Impar~output_o\;

ww_Count_4 <= \Count_4~output_o\;

ww_Count_8 <= \Count_8~output_o\;

ww_startSReg <= \startSReg~output_o\;

ww_startBerle <= \startBerle~output_o\;

ww_error_enable <= \error_enable~output_o\;

ww_error_reset <= \error_reset~output_o\;

ww_error_syndrome <= \error_syndrome~output_o\;

ww_Error <= \Error~output_o\;

ww_error_corrected <= \error_corrected~output_o\;

ww_erroro <= \erroro~output_o\;

ww_B_0(0) <= \B_0[0]~output_o\;

ww_B_0(1) <= \B_0[1]~output_o\;

ww_B_0(2) <= \B_0[2]~output_o\;

ww_B_0(3) <= \B_0[3]~output_o\;

ww_B_1(0) <= \B_1[0]~output_o\;

ww_B_1(1) <= \B_1[1]~output_o\;

ww_B_1(2) <= \B_1[2]~output_o\;

ww_B_1(3) <= \B_1[3]~output_o\;

ww_B_2(0) <= \B_2[0]~output_o\;

ww_B_2(1) <= \B_2[1]~output_o\;

ww_B_2(2) <= \B_2[2]~output_o\;

ww_B_2(3) <= \B_2[3]~output_o\;

ww_B_3(0) <= \B_3[0]~output_o\;

ww_B_3(1) <= \B_3[1]~output_o\;

ww_B_3(2) <= \B_3[2]~output_o\;

ww_B_3(3) <= \B_3[3]~output_o\;

ww_B_mux(0) <= \B_mux[0]~output_o\;

ww_B_mux(1) <= \B_mux[1]~output_o\;

ww_B_mux(2) <= \B_mux[2]~output_o\;

ww_B_mux(3) <= \B_mux[3]~output_o\;

ww_count(0) <= \count[0]~output_o\;

ww_count(1) <= \count[1]~output_o\;

ww_count(2) <= \count[2]~output_o\;

ww_count(3) <= \count[3]~output_o\;

ww_debug(0) <= \debug[0]~output_o\;

ww_debug(1) <= \debug[1]~output_o\;

ww_debug(2) <= \debug[2]~output_o\;

ww_debug(3) <= \debug[3]~output_o\;

ww_debug(4) <= \debug[4]~output_o\;

ww_debug(5) <= \debug[5]~output_o\;

ww_debug(6) <= \debug[6]~output_o\;

ww_debug(7) <= \debug[7]~output_o\;

ww_debug(8) <= \debug[8]~output_o\;

ww_debug(9) <= \debug[9]~output_o\;

ww_debug(10) <= \debug[10]~output_o\;

ww_debug(11) <= \debug[11]~output_o\;

ww_debug(12) <= \debug[12]~output_o\;

ww_debug(13) <= \debug[13]~output_o\;

ww_debug(14) <= \debug[14]~output_o\;

ww_debug(15) <= \debug[15]~output_o\;

ww_debug(16) <= \debug[16]~output_o\;

ww_debug(17) <= \debug[17]~output_o\;

ww_debug(18) <= \debug[18]~output_o\;

ww_debug(19) <= \debug[19]~output_o\;

ww_debug(20) <= \debug[20]~output_o\;

ww_debug(21) <= \debug[21]~output_o\;

ww_debug(22) <= \debug[22]~output_o\;

ww_debug(23) <= \debug[23]~output_o\;

ww_debug(24) <= \debug[24]~output_o\;

ww_debug(25) <= \debug[25]~output_o\;

ww_debug(26) <= \debug[26]~output_o\;

ww_debug(27) <= \debug[27]~output_o\;

ww_deco0(0) <= \deco0[0]~output_o\;

ww_deco0(1) <= \deco0[1]~output_o\;

ww_deco0(2) <= \deco0[2]~output_o\;

ww_deco0(3) <= \deco0[3]~output_o\;

ww_deco1(0) <= \deco1[0]~output_o\;

ww_deco1(1) <= \deco1[1]~output_o\;

ww_deco1(2) <= \deco1[2]~output_o\;

ww_deco1(3) <= \deco1[3]~output_o\;

ww_deco2(0) <= \deco2[0]~output_o\;

ww_deco2(1) <= \deco2[1]~output_o\;

ww_deco2(2) <= \deco2[2]~output_o\;

ww_deco2(3) <= \deco2[3]~output_o\;

ww_deco3(0) <= \deco3[0]~output_o\;

ww_deco3(1) <= \deco3[1]~output_o\;

ww_deco3(2) <= \deco3[2]~output_o\;

ww_deco3(3) <= \deco3[3]~output_o\;

ww_deco4(0) <= \deco4[0]~output_o\;

ww_deco4(1) <= \deco4[1]~output_o\;

ww_deco4(2) <= \deco4[2]~output_o\;

ww_deco4(3) <= \deco4[3]~output_o\;

ww_deco5(0) <= \deco5[0]~output_o\;

ww_deco5(1) <= \deco5[1]~output_o\;

ww_deco5(2) <= \deco5[2]~output_o\;

ww_deco5(3) <= \deco5[3]~output_o\;

ww_deco6(0) <= \deco6[0]~output_o\;

ww_deco6(1) <= \deco6[1]~output_o\;

ww_deco6(2) <= \deco6[2]~output_o\;

ww_deco6(3) <= \deco6[3]~output_o\;

ww_Decod(0) <= \Decod[0]~output_o\;

ww_Decod(1) <= \Decod[1]~output_o\;

ww_Decod(2) <= \Decod[2]~output_o\;

ww_Decod(3) <= \Decod[3]~output_o\;

ww_DS_reg(0) <= \DS_reg[0]~output_o\;

ww_DS_reg(1) <= \DS_reg[1]~output_o\;

ww_DS_reg(2) <= \DS_reg[2]~output_o\;

ww_DS_reg(3) <= \DS_reg[3]~output_o\;

ww_Lambda1(0) <= \Lambda1[0]~output_o\;

ww_Lambda1(1) <= \Lambda1[1]~output_o\;

ww_Lambda1(2) <= \Lambda1[2]~output_o\;

ww_Lambda1(3) <= \Lambda1[3]~output_o\;

ww_Lambda2(0) <= \Lambda2[0]~output_o\;

ww_Lambda2(1) <= \Lambda2[1]~output_o\;

ww_Lambda2(2) <= \Lambda2[2]~output_o\;

ww_Lambda2(3) <= \Lambda2[3]~output_o\;

ww_Lambda3(0) <= \Lambda3[0]~output_o\;

ww_Lambda3(1) <= \Lambda3[1]~output_o\;

ww_Lambda3(2) <= \Lambda3[2]~output_o\;

ww_Lambda3(3) <= \Lambda3[3]~output_o\;

ww_Lambda4(0) <= \Lambda4[0]~output_o\;

ww_Lambda4(1) <= \Lambda4[1]~output_o\;

ww_Lambda4(2) <= \Lambda4[2]~output_o\;

ww_Lambda4(3) <= \Lambda4[3]~output_o\;

ww_Mensagem(0) <= \Mensagem[0]~output_o\;

ww_Mensagem(1) <= \Mensagem[1]~output_o\;

ww_Mensagem(2) <= \Mensagem[2]~output_o\;

ww_Mensagem(3) <= \Mensagem[3]~output_o\;

ww_Number_errors(0) <= \Number_errors[0]~output_o\;

ww_Number_errors(1) <= \Number_errors[1]~output_o\;

ww_Number_errors(2) <= \Number_errors[2]~output_o\;

ww_Number_errors(3) <= \Number_errors[3]~output_o\;

ww_Omega0(0) <= \Omega0[0]~output_o\;

ww_Omega0(1) <= \Omega0[1]~output_o\;

ww_Omega0(2) <= \Omega0[2]~output_o\;

ww_Omega0(3) <= \Omega0[3]~output_o\;

ww_Omega1(0) <= \Omega1[0]~output_o\;

ww_Omega1(1) <= \Omega1[1]~output_o\;

ww_Omega1(2) <= \Omega1[2]~output_o\;

ww_Omega1(3) <= \Omega1[3]~output_o\;

ww_Omega2(0) <= \Omega2[0]~output_o\;

ww_Omega2(1) <= \Omega2[1]~output_o\;

ww_Omega2(2) <= \Omega2[2]~output_o\;

ww_Omega2(3) <= \Omega2[3]~output_o\;

ww_Omega3(0) <= \Omega3[0]~output_o\;

ww_Omega3(1) <= \Omega3[1]~output_o\;

ww_Omega3(2) <= \Omega3[2]~output_o\;

ww_Omega3(3) <= \Omega3[3]~output_o\;

ww_Omega4(0) <= \Omega4[0]~output_o\;

ww_Omega4(1) <= \Omega4[1]~output_o\;

ww_Omega4(2) <= \Omega4[2]~output_o\;

ww_Omega4(3) <= \Omega4[3]~output_o\;

ww_S0(0) <= \S0[0]~output_o\;

ww_S0(1) <= \S0[1]~output_o\;

ww_S0(2) <= \S0[2]~output_o\;

ww_S0(3) <= \S0[3]~output_o\;

ww_S1(0) <= \S1[0]~output_o\;

ww_S1(1) <= \S1[1]~output_o\;

ww_S1(2) <= \S1[2]~output_o\;

ww_S1(3) <= \S1[3]~output_o\;

ww_S2(0) <= \S2[0]~output_o\;

ww_S2(1) <= \S2[1]~output_o\;

ww_S2(2) <= \S2[2]~output_o\;

ww_S2(3) <= \S2[3]~output_o\;

ww_S3(0) <= \S3[0]~output_o\;

ww_S3(1) <= \S3[1]~output_o\;

ww_S3(2) <= \S3[2]~output_o\;

ww_S3(3) <= \S3[3]~output_o\;

ww_S4(0) <= \S4[0]~output_o\;

ww_S4(1) <= \S4[1]~output_o\;

ww_S4(2) <= \S4[2]~output_o\;

ww_S4(3) <= \S4[3]~output_o\;

ww_Syn0(0) <= \Syn0[0]~output_o\;

ww_Syn0(1) <= \Syn0[1]~output_o\;

ww_Syn0(2) <= \Syn0[2]~output_o\;

ww_Syn0(3) <= \Syn0[3]~output_o\;

ww_Syn1(0) <= \Syn1[0]~output_o\;

ww_Syn1(1) <= \Syn1[1]~output_o\;

ww_Syn1(2) <= \Syn1[2]~output_o\;

ww_Syn1(3) <= \Syn1[3]~output_o\;

ww_Syn2(0) <= \Syn2[0]~output_o\;

ww_Syn2(1) <= \Syn2[1]~output_o\;

ww_Syn2(2) <= \Syn2[2]~output_o\;

ww_Syn2(3) <= \Syn2[3]~output_o\;

ww_Syn3(0) <= \Syn3[0]~output_o\;

ww_Syn3(1) <= \Syn3[1]~output_o\;

ww_Syn3(2) <= \Syn3[2]~output_o\;

ww_Syn3(3) <= \Syn3[3]~output_o\;

ww_Syn4(0) <= \Syn4[0]~output_o\;

ww_Syn4(1) <= \Syn4[1]~output_o\;

ww_Syn4(2) <= \Syn4[2]~output_o\;

ww_Syn4(3) <= \Syn4[3]~output_o\;

ww_Syn5(0) <= \Syn5[0]~output_o\;

ww_Syn5(1) <= \Syn5[1]~output_o\;

ww_Syn5(2) <= \Syn5[2]~output_o\;

ww_Syn5(3) <= \Syn5[3]~output_o\;

ww_Syn6(0) <= \Syn6[0]~output_o\;

ww_Syn6(1) <= \Syn6[1]~output_o\;

ww_Syn6(2) <= \Syn6[2]~output_o\;

ww_Syn6(3) <= \Syn6[3]~output_o\;

ww_Syn7(0) <= \Syn7[0]~output_o\;

ww_Syn7(1) <= \Syn7[1]~output_o\;

ww_Syn7(2) <= \Syn7[2]~output_o\;

ww_Syn7(3) <= \Syn7[3]~output_o\;

ww_SyndromeOut(0) <= \SyndromeOut[0]~output_o\;

ww_SyndromeOut(1) <= \SyndromeOut[1]~output_o\;

ww_SyndromeOut(2) <= \SyndromeOut[2]~output_o\;

ww_SyndromeOut(3) <= \SyndromeOut[3]~output_o\;

ww_Test_state(0) <= \Test_state[0]~output_o\;

ww_Test_state(1) <= \Test_state[1]~output_o\;

ww_Test_state(2) <= \Test_state[2]~output_o\;

ww_Test_state(3) <= \Test_state[3]~output_o\;

ww_Test_state(4) <= \Test_state[4]~output_o\;
END structure;


