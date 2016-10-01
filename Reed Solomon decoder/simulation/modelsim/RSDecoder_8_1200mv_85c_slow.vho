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

-- DATE "10/01/2016 18:01:48"

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
	Inicia : IN std_logic;
	Input : IN std_logic_vector(3 DOWNTO 0);
	Mensagem : IN std_logic_vector(3 DOWNTO 0);
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
	B_0 : OUT std_logic_vector(3 DOWNTO 0);
	B_1 : OUT std_logic_vector(3 DOWNTO 0);
	B_2 : OUT std_logic_vector(3 DOWNTO 0);
	B_3 : OUT std_logic_vector(3 DOWNTO 0);
	B_mux : OUT std_logic_vector(3 DOWNTO 0);
	Decod : OUT std_logic_vector(3 DOWNTO 0);
	DS_reg : OUT std_logic_vector(3 DOWNTO 0);
	Lambda1 : OUT std_logic_vector(3 DOWNTO 0);
	Lambda2 : OUT std_logic_vector(3 DOWNTO 0);
	Lambda3 : OUT std_logic_vector(3 DOWNTO 0);
	Lambda4 : OUT std_logic_vector(3 DOWNTO 0);
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
	Test_state : OUT std_logic_vector(4 DOWNTO 0)
	);
END RSIntegration;

-- Design Ports Information
-- Registra	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- loadS	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- loadB	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- loadC	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clearS	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clearB	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clearC	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxSel	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Nerror	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name1	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Impar	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count_4	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count_8	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_0[0]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_0[1]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_0[2]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_0[3]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_1[0]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_1[1]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_1[2]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_1[3]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_2[0]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_2[1]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_2[2]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_2[3]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_3[0]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_3[1]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_3[2]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_3[3]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_mux[0]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_mux[1]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_mux[2]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_mux[3]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Decod[0]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Decod[1]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Decod[2]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Decod[3]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS_reg[0]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS_reg[1]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS_reg[2]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS_reg[3]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda1[0]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda1[1]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda1[2]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda1[3]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda2[0]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda2[1]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda2[2]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda2[3]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda3[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda3[1]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda3[2]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda3[3]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda4[0]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda4[1]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda4[2]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda4[3]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega0[0]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega0[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega0[2]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega0[3]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega1[0]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega1[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega1[2]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega1[3]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega2[0]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega2[1]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega2[2]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega2[3]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega3[0]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega3[1]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega3[2]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega3[3]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega4[0]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega4[1]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega4[2]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega4[3]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0[0]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0[2]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0[3]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[0]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[1]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[2]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[3]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2[0]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2[1]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2[2]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3[0]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3[1]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3[2]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3[3]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4[0]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4[1]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4[2]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4[3]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Test_state[0]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Test_state[1]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Test_state[2]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Test_state[3]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Test_state[4]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mensagem[0]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mensagem[1]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mensagem[2]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mensagem[3]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inicia	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[1]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[2]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[3]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_Inicia : std_logic;
SIGNAL ww_Input : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Mensagem : std_logic_vector(3 DOWNTO 0);
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
SIGNAL ww_B_0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B_1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B_2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B_3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B_mux : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Decod : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DS_reg : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Lambda1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Lambda2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Lambda3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Lambda4 : std_logic_vector(3 DOWNTO 0);
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
SIGNAL ww_Test_state : std_logic_vector(4 DOWNTO 0);
SIGNAL \Reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst|estadoAtual.store~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \Test_state[0]~output_o\ : std_logic;
SIGNAL \Test_state[1]~output_o\ : std_logic;
SIGNAL \Test_state[2]~output_o\ : std_logic;
SIGNAL \Test_state[3]~output_o\ : std_logic;
SIGNAL \Test_state[4]~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst1|Mux3~0_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst1|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Count_8~q\ : std_logic;
SIGNAL \Inicia~input_o\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|Selector1~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|estadoAtual.idle~q\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|Selector3~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|estadoAtual.localizador~q\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|proximoEstado.clearSyn~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|estadoAtual.clearSyn~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|estadoAtual.clearSyn~q\ : std_logic;
SIGNAL \b2v_inst1|Mux1~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Count_4~q\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|Selector4~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|estadoAtual.avaliador~q\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|Selector1~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|estadoAtual.store~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|estadoAtual.store~q\ : std_logic;
SIGNAL \b2v_inst1|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Impar~q\ : std_logic;
SIGNAL \Input[0]~input_o\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst|q[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|clearS~combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|loadS~combout\ : std_logic;
SIGNAL \Input[1]~input_o\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst2|q[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst3|q[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst2|q[0]~feeder_combout\ : std_logic;
SIGNAL \Input[3]~input_o\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|Mux4~0_combout\ : std_logic;
SIGNAL \Input[2]~input_o\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst22|O[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[0]~5_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[0]~14_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[0]~15_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[3]~5_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[3]~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[2]~21_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[2]~22_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[2]~23_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[2]~24_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[2]~25_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[2]~28_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[2]~29_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[2]~30_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[2]~31_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst5|q[2]~6_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|Mux7~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[2]~24_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[2]~25_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[2]~26_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[2]~27_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst5|q[2]~7_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[2]~25_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[2]~26_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|Mux8~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[2]~23_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[2]~24_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[2]~27_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[0]~10_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[0]~8_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[0]~7_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[2]~28_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[2]~29_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[2]~30_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[2]~31_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[2]~32_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|Mux8~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[2]~26_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[2]~27_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[2]~28_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[2]~29_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[2]~30_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|Mux2~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|Mux10~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[0]~12_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[0]~13_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[0]~16_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[0]~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[0]~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|Mux5~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[0]~17_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[0]~18_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[0]~19_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[0]~20_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[3]~6_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[3]~7_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[3]~5_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst5|q[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[3]~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst5|q[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[0]~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[0]~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[0]~5_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[0]~6_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[0]~9_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[0]~11_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[0]~12_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[0]~9_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[0]~10_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[0]~7_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[0]~8_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[0]~11_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[0]~6_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst37|c[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|Mux4~4_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[0]~22_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[0]~23_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[0]~20_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[0]~21_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst8|q[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|Mux5~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[0]~16_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[0]~17_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[0]~18_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[0]~19_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst8|q[0]~5_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst8|q[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[3]~30_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[3]~31_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[3]~32_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[3]~33_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|Mux8~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[3]~34_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[3]~35_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[3]~36_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[3]~37_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[3]~38_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|Mux5~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[0]~19_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[0]~20_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[0]~21_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[0]~22_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst34|O[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[0]~23_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[0]~24_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[0]~25_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[0]~26_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst7|q[0]~6_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst7|q[0]~7_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst7|q[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|Mux8~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[3]~33_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[3]~34_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[3]~35_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[3]~36_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[3]~37_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[2]~10_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[2]~8_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[2]~7_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[3]~38_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[3]~39_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[3]~40_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[3]~41_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[3]~42_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst37|c[3]~9_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|Mux7~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[1]~27_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[1]~28_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[1]~29_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[1]~30_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|Mux5~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[0]~16_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[0]~17_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[0]~18_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[0]~19_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[0]~20_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[0]~21_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[0]~22_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[0]~23_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst6|q[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst6|q[0]~5_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst6|q[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst34|O[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst33|O[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst22|O[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[0]~20_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[0]~21_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[0]~22_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[0]~23_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst5|q[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|Mux5~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[0]~16_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[0]~17_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[0]~18_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[0]~19_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst5|q[0]~5_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst5|q[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst35|O[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[1]~14_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[1]~15_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[1]~12_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[1]~13_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst6|q[1]~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|Mux7~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[1]~8_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[1]~9_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[1]~10_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[1]~11_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst6|q[1]~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[3]~35_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[3]~36_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[3]~37_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[3]~38_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[3]~39_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[3]~38_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[3]~39_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[3]~40_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[3]~41_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[3]~35_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[3]~36_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[3]~33_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[3]~34_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[3]~37_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[3]~42_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[3]~31_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[3]~32_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[3]~33_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[3]~34_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[1]~22_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[1]~23_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[1]~24_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[1]~25_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[1]~26_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[1]~12_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[1]~13_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[1]~14_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[1]~15_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst5|q[1]~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[1]~8_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[1]~9_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[1]~10_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst17|o[1]~11_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst5|q[1]~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst5|q[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst35|O[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[2]~24_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[2]~25_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[2]~26_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[2]~27_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[2]~28_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[2]~29_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[2]~30_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst18|o[2]~31_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst6|q[2]~6_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst6|q[2]~7_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst6|q[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst34|O[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|Mux7~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[2]~27_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[2]~28_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[2]~29_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[2]~30_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[2]~33_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[2]~34_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[2]~31_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[2]~32_combout\ : std_logic;
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
SIGNAL \b2v_inst|b2v_inst2|b2v_inst6|q[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[1]~16_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[1]~17_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[1]~18_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[1]~19_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[1]~20_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[1]~12_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[1]~13_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[1]~14_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|o[1]~15_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[1]~18_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[1]~19_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[1]~20_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[1]~21_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[1]~13_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[1]~14_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[1]~15_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[1]~16_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[1]~17_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst13|o[1]~22_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst37|c[1]~13_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[1]~14_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[1]~15_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[1]~12_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[1]~13_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[1]~16_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[1]~13_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[1]~14_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[1]~15_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[1]~16_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[1]~17_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[1]~18_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[1]~19_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[1]~20_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[1]~21_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[1]~22_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst37|c[1]~12_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|Mux7~2_combout\ : std_logic;
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
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[3]~9_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[3]~10_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[3]~7_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[3]~8_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst7|q[3]~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[3]~5_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[3]~6_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst7|q[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst7|q[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst33|O[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst22|O[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst35|O[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst34|O[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[1]~11_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[1]~12_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[1]~13_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[1]~14_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[1]~15_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[1]~16_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[1]~17_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst19|o[1]~18_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst7|q[1]~4_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst7|q[1]~5_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst33|O[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[1]~12_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[1]~13_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[1]~14_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[1]~15_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst8|q[1]~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|Mux7~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[1]~8_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[1]~9_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[1]~10_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[1]~11_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst8|q[1]~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[3]~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[2]~21_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[2]~22_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[2]~23_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[2]~24_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[2]~28_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[2]~29_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[2]~30_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[2]~31_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[2]~23_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[2]~24_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[2]~25_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[2]~26_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[2]~27_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[2]~32_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[2]~25_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[2]~26_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[2]~27_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[2]~28_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[2]~29_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst37|c[2]~6_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst37|c[2]~8_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[3]~7_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[3]~8_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[3]~9_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[3]~10_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[3]~11_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst21|o[3]~6_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[2]~28_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[2]~29_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[2]~30_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[2]~31_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst8|q[2]~6_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[2]~24_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[2]~25_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[2]~26_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[2]~27_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst8|q[2]~7_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[3]~5_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[1]~17_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[1]~18_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[1]~19_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[1]~20_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst37|c[1]~4_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst37|c[1]~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[3]~5_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[3]~6_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[3]~7_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst8|q[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst8|q[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst8|q[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[0]~6_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[0]~7_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[0]~8_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[0]~9_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[0]~10_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst16|o[0]~11_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[0]~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[0]~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[0]~5_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[0]~6_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[0]~9_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[0]~11_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|o[0]~12_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst37|c[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|Nerror~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|di~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux2~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux2~q\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|estadoAtual.store~clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst11|q[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst11|q[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst10|o[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst11|q[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst11|q[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst11|o[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst9|q[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst9|q[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst11|o[3]~2_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst9|q[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst11|o[2]~1_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst9|q[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst2|q[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst4|q[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst8|o[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst2|q[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst4|q[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst4|q[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst2|q[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst4|q[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst3|q[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst4|q[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst4|q[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst9|o[2]~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst6|q[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst9|o[1]~2_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst6|q[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst6|q[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst9|o[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst6|q[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst1|q[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst5|q[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst11|o[2]~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst5|q[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst11|o[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst5|q[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst5|q[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\ : std_logic;
SIGNAL \b2v_inst5|q[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst1|q[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst1|q[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst2|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst2|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst1|q[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst2|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~8_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst2|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~9_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst|o[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst2|Mux8~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~10_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~11_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~12_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~5_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst2|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst2|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~2_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~6_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~7_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst8|q[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst8|q[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst8|o[2]~1_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst8|q[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst8|o[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst8|q[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst9|o[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst12|q[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst9|o[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst12|q[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst9|o[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst12|q[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst9|o[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst12|q[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst14|c[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst8|SYNTHESIZED_WIRE_0~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst14|c[2]~1_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst14|c[3]~2_combout\ : std_logic;
SIGNAL \b2v_inst8|SYNTHESIZED_WIRE_0~1_combout\ : std_logic;
SIGNAL \Mensagem[0]~input_o\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~18_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~19_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~20_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~21_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~22_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst2|Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~13_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~14_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~15_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst2|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst2|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~16_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~17_combout\ : std_logic;
SIGNAL \Mensagem[1]~input_o\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~28_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~29_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~30_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~31_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~32_combout\ : std_logic;
SIGNAL \Mensagem[2]~input_o\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~23_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~24_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~25_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~26_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~27_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~33_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~34_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~35_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~36_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~37_combout\ : std_logic;
SIGNAL \Mensagem[3]~input_o\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~38_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~39_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~40_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~41_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~42_combout\ : std_logic;
SIGNAL \b2v_inst6|q[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst6|q[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|Selector1~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|Selector1~2_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|Selector0~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|Selector0~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|test_state~4_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst2|b2v_inst8|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst2|b2v_inst4|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst2|b2v_inst7|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst8|b2v_inst|b2v_inst8|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst2|b2v_inst3|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst2|b2v_inst|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst2|b2v_inst6|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst1|Pre_Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst5|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst2|b2v_inst2|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst2|b2v_inst5|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst2|b2v_inst1|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst2|b2v_inst9|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst2|b2v_inst10|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst2|b2v_inst11|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst2|b2v_inst36|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst|test_state\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst8|b2v_inst2|b2v_inst1|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst8|b2v_inst|b2v_inst6|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst2|b2v_inst26|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst5|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst4|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst3|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst2|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst6|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst8|b2v_inst|b2v_inst9|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst8|b2v_inst|b2v_inst11|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst8|b2v_inst|b2v_inst12|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst8|b2v_inst|b2v_inst1|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst8|b2v_inst|b2v_inst5|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst8|b2v_inst|b2v_inst4|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst|ALT_INV_test_state~4_combout\ : std_logic;
SIGNAL \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|ALT_INV_clearS~combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|ALT_INV_estadoAtual.idle~q\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|ALT_INV_Nerror~0_combout\ : std_logic;
SIGNAL \ALT_INV_Reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_Clock <= Clock;
ww_Reset <= Reset;
ww_Inicia <= Inicia;
ww_Input <= Input;
ww_Mensagem <= Mensagem;
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
B_0 <= ww_B_0;
B_1 <= ww_B_1;
B_2 <= ww_B_2;
B_3 <= ww_B_3;
B_mux <= ww_B_mux;
Decod <= ww_Decod;
DS_reg <= ww_DS_reg;
Lambda1 <= ww_Lambda1;
Lambda2 <= ww_Lambda2;
Lambda3 <= ww_Lambda3;
Lambda4 <= ww_Lambda4;
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
Test_state <= ww_Test_state;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset~input_o\);

\b2v_inst|b2v_inst|estadoAtual.store~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \b2v_inst|b2v_inst|estadoAtual.store~q\);

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);
\b2v_inst|b2v_inst|ALT_INV_test_state~4_combout\ <= NOT \b2v_inst|b2v_inst|test_state~4_combout\;
\b2v_inst8|b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\ <= NOT \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux2~q\;
\b2v_inst|b2v_inst|ALT_INV_clearS~combout\ <= NOT \b2v_inst|b2v_inst|clearS~combout\;
\b2v_inst|b2v_inst|ALT_INV_estadoAtual.idle~q\ <= NOT \b2v_inst|b2v_inst|estadoAtual.idle~q\;
\b2v_inst|b2v_inst2|ALT_INV_Nerror~0_combout\ <= NOT \b2v_inst|b2v_inst2|Nerror~0_combout\;
\ALT_INV_Reset~inputclkctrl_outclk\ <= NOT \Reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X38_Y0_N30
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

-- Location: IOOBUF_X0_Y31_N23
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

-- Location: IOOBUF_X14_Y0_N9
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

-- Location: IOOBUF_X0_Y2_N2
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

-- Location: IOOBUF_X0_Y3_N2
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

-- Location: IOOBUF_X0_Y11_N16
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

-- Location: IOOBUF_X7_Y0_N23
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

-- Location: IOOBUF_X7_Y0_N9
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

-- Location: IOOBUF_X0_Y30_N2
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

-- Location: IOOBUF_X34_Y0_N9
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

-- Location: IOOBUF_X0_Y20_N16
\pin_name1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux2~q\,
	devoe => ww_devoe,
	o => \pin_name1~output_o\);

-- Location: IOOBUF_X18_Y0_N23
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

-- Location: IOOBUF_X16_Y0_N9
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

-- Location: IOOBUF_X18_Y0_N9
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

-- Location: IOOBUF_X3_Y0_N23
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

-- Location: IOOBUF_X0_Y4_N23
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

-- Location: IOOBUF_X0_Y7_N2
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

-- Location: IOOBUF_X7_Y0_N30
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

-- Location: IOOBUF_X0_Y11_N9
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

-- Location: IOOBUF_X0_Y10_N16
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

-- Location: IOOBUF_X0_Y4_N16
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

-- Location: IOOBUF_X0_Y13_N2
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

-- Location: IOOBUF_X0_Y2_N9
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

-- Location: IOOBUF_X0_Y15_N16
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

-- Location: IOOBUF_X0_Y12_N16
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

-- Location: IOOBUF_X0_Y11_N2
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

-- Location: IOOBUF_X0_Y6_N2
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

-- Location: IOOBUF_X7_Y0_N16
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

-- Location: IOOBUF_X3_Y0_N30
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

-- Location: IOOBUF_X0_Y10_N23
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

-- Location: IOOBUF_X3_Y0_N16
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

-- Location: IOOBUF_X1_Y0_N30
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

-- Location: IOOBUF_X1_Y0_N23
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

-- Location: IOOBUF_X0_Y5_N9
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

-- Location: IOOBUF_X0_Y29_N23
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

-- Location: IOOBUF_X20_Y43_N30
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

-- Location: IOOBUF_X20_Y43_N9
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

-- Location: IOOBUF_X27_Y0_N2
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

-- Location: IOOBUF_X5_Y0_N16
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

-- Location: IOOBUF_X0_Y28_N9
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

-- Location: IOOBUF_X11_Y43_N16
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

-- Location: IOOBUF_X9_Y0_N30
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

-- Location: IOOBUF_X0_Y19_N2
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

-- Location: IOOBUF_X0_Y10_N9
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

-- Location: IOOBUF_X0_Y17_N16
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

-- Location: IOOBUF_X0_Y9_N2
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

-- Location: IOOBUF_X0_Y17_N23
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

-- Location: IOOBUF_X0_Y16_N2
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

-- Location: IOOBUF_X0_Y19_N23
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

-- Location: IOOBUF_X0_Y18_N16
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

-- Location: IOOBUF_X0_Y18_N9
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

-- Location: IOOBUF_X0_Y16_N23
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

-- Location: IOOBUF_X0_Y15_N2
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

-- Location: IOOBUF_X0_Y16_N16
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

-- Location: IOOBUF_X22_Y0_N16
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

-- Location: IOOBUF_X29_Y0_N30
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

-- Location: IOOBUF_X0_Y16_N9
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

-- Location: IOOBUF_X14_Y0_N30
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

-- Location: IOOBUF_X43_Y0_N2
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

-- Location: IOOBUF_X43_Y0_N16
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

-- Location: IOOBUF_X0_Y20_N9
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

-- Location: IOOBUF_X0_Y4_N2
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

-- Location: IOOBUF_X0_Y28_N2
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

-- Location: IOOBUF_X34_Y0_N2
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

-- Location: IOOBUF_X43_Y0_N30
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

-- Location: IOOBUF_X0_Y15_N23
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

-- Location: IOOBUF_X0_Y34_N9
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

-- Location: IOOBUF_X20_Y43_N2
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

-- Location: IOOBUF_X0_Y28_N16
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

-- Location: IOOBUF_X18_Y43_N2
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

-- Location: IOOBUF_X38_Y0_N9
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

-- Location: IOOBUF_X0_Y34_N16
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

-- Location: IOOBUF_X0_Y30_N9
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

-- Location: IOOBUF_X0_Y20_N2
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

-- Location: IOOBUF_X34_Y0_N30
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

-- Location: IOOBUF_X9_Y0_N9
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

-- Location: IOOBUF_X0_Y5_N2
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

-- Location: IOOBUF_X18_Y0_N2
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

-- Location: IOOBUF_X3_Y0_N9
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

-- Location: IOOBUF_X38_Y0_N16
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

-- Location: IOOBUF_X0_Y7_N16
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

-- Location: IOOBUF_X38_Y0_N23
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

-- Location: IOOBUF_X0_Y19_N9
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

-- Location: IOOBUF_X9_Y0_N23
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

-- Location: IOOBUF_X0_Y13_N9
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

-- Location: IOOBUF_X0_Y5_N16
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

-- Location: IOOBUF_X0_Y7_N9
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

-- Location: IOOBUF_X0_Y19_N16
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

-- Location: IOOBUF_X14_Y0_N16
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

-- Location: IOOBUF_X0_Y12_N23
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

-- Location: IOOBUF_X22_Y0_N9
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

-- Location: IOOBUF_X34_Y0_N23
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

-- Location: IOOBUF_X27_Y0_N9
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

-- Location: IOOBUF_X20_Y0_N23
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

-- Location: IOOBUF_X16_Y0_N16
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

-- Location: IOOBUF_X20_Y0_N16
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

-- Location: IOOBUF_X16_Y0_N23
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

-- Location: IOOBUF_X16_Y0_N2
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

-- Location: IOOBUF_X14_Y0_N23
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

-- Location: IOOBUF_X18_Y0_N16
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

-- Location: IOOBUF_X9_Y0_N16
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

-- Location: IOOBUF_X22_Y43_N2
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

-- Location: IOOBUF_X41_Y0_N30
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

-- Location: LCCOMB_X18_Y1_N2
\b2v_inst1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux3~0_combout\ = (\b2v_inst1|Pre_Q\(3)) # ((\b2v_inst1|Pre_Q\(0) & (\b2v_inst1|Pre_Q\(2) & \b2v_inst1|Pre_Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Pre_Q\(0),
	datab => \b2v_inst1|Pre_Q\(2),
	datac => \b2v_inst1|Pre_Q\(3),
	datad => \b2v_inst1|Pre_Q\(1),
	combout => \b2v_inst1|Mux3~0_combout\);

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

-- Location: CLKCTRL_G4
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

-- Location: FF_X18_Y1_N3
\b2v_inst1|Pre_Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|Mux3~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|Pre_Q\(3));

-- Location: LCCOMB_X18_Y1_N20
\b2v_inst1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux4~0_combout\ = (\b2v_inst1|Pre_Q\(0) & ((\b2v_inst1|Pre_Q\(2) & ((\b2v_inst1|Pre_Q\(3)) # (!\b2v_inst1|Pre_Q\(1)))) # (!\b2v_inst1|Pre_Q\(2) & ((\b2v_inst1|Pre_Q\(1)))))) # (!\b2v_inst1|Pre_Q\(0) & (((\b2v_inst1|Pre_Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Pre_Q\(0),
	datab => \b2v_inst1|Pre_Q\(3),
	datac => \b2v_inst1|Pre_Q\(2),
	datad => \b2v_inst1|Pre_Q\(1),
	combout => \b2v_inst1|Mux4~0_combout\);

-- Location: FF_X18_Y1_N21
\b2v_inst1|Pre_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|Mux4~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|Pre_Q\(2));

-- Location: LCCOMB_X18_Y1_N12
\b2v_inst1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux6~0_combout\ = ((\b2v_inst1|Pre_Q\(1) & (\b2v_inst1|Pre_Q\(2) & \b2v_inst1|Pre_Q\(3)))) # (!\b2v_inst1|Pre_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Pre_Q\(1),
	datab => \b2v_inst1|Pre_Q\(2),
	datac => \b2v_inst1|Pre_Q\(0),
	datad => \b2v_inst1|Pre_Q\(3),
	combout => \b2v_inst1|Mux6~0_combout\);

-- Location: FF_X18_Y1_N13
\b2v_inst1|Pre_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|Mux6~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|Pre_Q\(0));

-- Location: LCCOMB_X18_Y1_N10
\b2v_inst1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux5~0_combout\ = (\b2v_inst1|Pre_Q\(0) & (((\b2v_inst1|Pre_Q\(2) & \b2v_inst1|Pre_Q\(3))) # (!\b2v_inst1|Pre_Q\(1)))) # (!\b2v_inst1|Pre_Q\(0) & (((\b2v_inst1|Pre_Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Pre_Q\(0),
	datab => \b2v_inst1|Pre_Q\(2),
	datac => \b2v_inst1|Pre_Q\(1),
	datad => \b2v_inst1|Pre_Q\(3),
	combout => \b2v_inst1|Mux5~0_combout\);

-- Location: FF_X18_Y1_N11
\b2v_inst1|Pre_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|Mux5~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|Pre_Q\(1));

-- Location: LCCOMB_X18_Y1_N24
\b2v_inst1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux2~0_combout\ = (!\b2v_inst1|Pre_Q\(1) & (\b2v_inst1|Pre_Q\(3) & (!\b2v_inst1|Pre_Q\(0) & !\b2v_inst1|Pre_Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Pre_Q\(1),
	datab => \b2v_inst1|Pre_Q\(3),
	datac => \b2v_inst1|Pre_Q\(0),
	datad => \b2v_inst1|Pre_Q\(2),
	combout => \b2v_inst1|Mux2~0_combout\);

-- Location: FF_X18_Y1_N25
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

-- Location: IOIBUF_X22_Y0_N1
\Inicia~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inicia,
	o => \Inicia~input_o\);

-- Location: LCCOMB_X18_Y12_N30
\b2v_inst|b2v_inst|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst|Selector1~1_combout\ = (!\b2v_inst|b2v_inst|estadoAtual.store~q\ & ((\Inicia~input_o\) # (\b2v_inst|b2v_inst|estadoAtual.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inicia~input_o\,
	datab => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	datad => \b2v_inst|b2v_inst|estadoAtual.store~q\,
	combout => \b2v_inst|b2v_inst|Selector1~1_combout\);

-- Location: FF_X18_Y12_N7
\b2v_inst|b2v_inst|estadoAtual.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|b2v_inst|Selector1~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst|estadoAtual.idle~q\);

-- Location: LCCOMB_X18_Y1_N14
\b2v_inst|b2v_inst|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst|Selector3~0_combout\ = (\b2v_inst1|Count_8~q\ & (\Inicia~input_o\ & ((!\b2v_inst|b2v_inst|estadoAtual.idle~q\)))) # (!\b2v_inst1|Count_8~q\ & ((\b2v_inst|b2v_inst|estadoAtual.localizador~q\) # ((\Inicia~input_o\ & 
-- !\b2v_inst|b2v_inst|estadoAtual.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Count_8~q\,
	datab => \Inicia~input_o\,
	datac => \b2v_inst|b2v_inst|estadoAtual.localizador~q\,
	datad => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	combout => \b2v_inst|b2v_inst|Selector3~0_combout\);

-- Location: FF_X18_Y1_N15
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

-- Location: LCCOMB_X18_Y11_N24
\b2v_inst|b2v_inst|proximoEstado.clearSyn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst|proximoEstado.clearSyn~0_combout\ = (\b2v_inst1|Count_8~q\ & \b2v_inst|b2v_inst|estadoAtual.localizador~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Count_8~q\,
	datad => \b2v_inst|b2v_inst|estadoAtual.localizador~q\,
	combout => \b2v_inst|b2v_inst|proximoEstado.clearSyn~0_combout\);

-- Location: LCCOMB_X18_Y12_N18
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

-- Location: FF_X18_Y12_N19
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

-- Location: LCCOMB_X18_Y1_N18
\b2v_inst1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux1~0_combout\ = (!\b2v_inst1|Pre_Q\(0) & (\b2v_inst1|Pre_Q\(2) & (\b2v_inst1|Pre_Q\(1) $ (!\b2v_inst1|Pre_Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Pre_Q\(1),
	datab => \b2v_inst1|Pre_Q\(3),
	datac => \b2v_inst1|Pre_Q\(0),
	datad => \b2v_inst1|Pre_Q\(2),
	combout => \b2v_inst1|Mux1~0_combout\);

-- Location: FF_X18_Y1_N19
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

-- Location: LCCOMB_X18_Y1_N26
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

-- Location: FF_X18_Y1_N27
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

-- Location: LCCOMB_X18_Y1_N6
\b2v_inst|b2v_inst|Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst|Selector1~3_combout\ = (\b2v_inst|b2v_inst|estadoAtual.avaliador~q\ & \b2v_inst1|Count_4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst|estadoAtual.avaliador~q\,
	datad => \b2v_inst1|Count_4~q\,
	combout => \b2v_inst|b2v_inst|Selector1~3_combout\);

-- Location: LCCOMB_X35_Y1_N10
\b2v_inst|b2v_inst|estadoAtual.store~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst|estadoAtual.store~feeder_combout\ = \b2v_inst|b2v_inst|Selector1~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst|Selector1~3_combout\,
	combout => \b2v_inst|b2v_inst|estadoAtual.store~feeder_combout\);

-- Location: FF_X35_Y1_N11
\b2v_inst|b2v_inst|estadoAtual.store\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst|estadoAtual.store~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst|estadoAtual.store~q\);

-- Location: LCCOMB_X18_Y1_N28
\b2v_inst1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux0~0_combout\ = (\b2v_inst1|Pre_Q\(0) & (((!\b2v_inst1|Pre_Q\(2)) # (!\b2v_inst1|Pre_Q\(3))) # (!\b2v_inst1|Pre_Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Pre_Q\(1),
	datab => \b2v_inst1|Pre_Q\(3),
	datac => \b2v_inst1|Pre_Q\(0),
	datad => \b2v_inst1|Pre_Q\(2),
	combout => \b2v_inst1|Mux0~0_combout\);

-- Location: FF_X18_Y1_N29
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

-- Location: IOIBUF_X0_Y28_N22
\Input[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(0),
	o => \Input[0]~input_o\);

-- Location: LCCOMB_X15_Y13_N20
\b2v_inst|b2v_inst2|b2v_inst|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst|q[0]~feeder_combout\ = \Input[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Input[0]~input_o\,
	combout => \b2v_inst|b2v_inst2|b2v_inst|q[0]~feeder_combout\);

-- Location: LCCOMB_X18_Y12_N0
\b2v_inst|b2v_inst|clearS\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst|clearS~combout\ = (\b2v_inst|b2v_inst|estadoAtual.clearSyn~q\) # (!\b2v_inst|b2v_inst|estadoAtual.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst|estadoAtual.clearSyn~q\,
	datad => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	combout => \b2v_inst|b2v_inst|clearS~combout\);

-- Location: LCCOMB_X18_Y1_N8
\b2v_inst|b2v_inst|loadS\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst|loadS~combout\ = (\b2v_inst|b2v_inst|estadoAtual.avaliador~q\) # (\b2v_inst|b2v_inst|estadoAtual.localizador~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst|estadoAtual.avaliador~q\,
	datac => \b2v_inst|b2v_inst|estadoAtual.localizador~q\,
	combout => \b2v_inst|b2v_inst|loadS~combout\);

-- Location: FF_X15_Y13_N21
\b2v_inst|b2v_inst2|b2v_inst|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst|q[0]~feeder_combout\,
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst|q\(0));

-- Location: FF_X17_Y13_N7
\b2v_inst|b2v_inst2|b2v_inst26|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => VCC,
	ena => \b2v_inst|b2v_inst|di~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst26|q\(0));

-- Location: IOIBUF_X0_Y29_N15
\Input[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(1),
	o => \Input[1]~input_o\);

-- Location: FF_X18_Y14_N7
\b2v_inst|b2v_inst2|b2v_inst|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Input[1]~input_o\,
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	sload => VCC,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst|q\(1));

-- Location: FF_X15_Y14_N21
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

-- Location: LCCOMB_X14_Y14_N14
\b2v_inst|b2v_inst2|b2v_inst2|q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst2|q[1]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst1|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst1|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst2|q[1]~feeder_combout\);

-- Location: FF_X14_Y14_N15
\b2v_inst|b2v_inst2|b2v_inst2|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst2|q[1]~feeder_combout\,
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst2|q\(1));

-- Location: LCCOMB_X20_Y13_N0
\b2v_inst|b2v_inst2|b2v_inst3|q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst3|q[1]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst2|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst2|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst3|q[1]~feeder_combout\);

-- Location: FF_X20_Y13_N1
\b2v_inst|b2v_inst2|b2v_inst3|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst3|q[1]~feeder_combout\,
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst3|q\(1));

-- Location: FF_X18_Y11_N17
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

-- Location: FF_X16_Y14_N21
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

-- Location: LCCOMB_X14_Y14_N24
\b2v_inst|b2v_inst2|b2v_inst2|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst2|q[0]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst1|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst1|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst2|q[0]~feeder_combout\);

-- Location: FF_X14_Y14_N25
\b2v_inst|b2v_inst2|b2v_inst2|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst2|q[0]~feeder_combout\,
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst2|q\(0));

-- Location: FF_X19_Y13_N13
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

-- Location: FF_X19_Y11_N21
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

-- Location: IOIBUF_X0_Y20_N22
\Input[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(3),
	o => \Input[3]~input_o\);

-- Location: FF_X17_Y13_N17
\b2v_inst|b2v_inst2|b2v_inst|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Input[3]~input_o\,
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	sload => VCC,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst|q\(3));

-- Location: FF_X16_Y14_N13
\b2v_inst|b2v_inst2|b2v_inst1|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|b2v_inst2|b2v_inst|q\(3),
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	sload => VCC,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst1|q\(3));

-- Location: FF_X14_Y14_N23
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

-- Location: FF_X19_Y13_N9
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

-- Location: FF_X19_Y11_N27
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

-- Location: LCCOMB_X18_Y11_N28
\b2v_inst|b2v_inst2|b2v_inst16|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|Mux7~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst4|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst4|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst4|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst4|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst4|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst16|Mux7~0_combout\);

-- Location: LCCOMB_X19_Y11_N26
\b2v_inst|b2v_inst2|b2v_inst16|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|Mux4~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst4|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst4|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst4|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst16|Mux4~0_combout\);

-- Location: IOIBUF_X0_Y30_N15
\Input[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(2),
	o => \Input[2]~input_o\);

-- Location: FF_X15_Y13_N7
\b2v_inst|b2v_inst2|b2v_inst|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Input[2]~input_o\,
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	sload => VCC,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst|q\(2));

-- Location: FF_X16_Y14_N7
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

-- Location: FF_X18_Y14_N25
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

-- Location: FF_X19_Y13_N23
\b2v_inst|b2v_inst2|b2v_inst3|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|b2v_inst2|b2v_inst2|q\(2),
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	sload => VCC,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst3|q\(2));

-- Location: FF_X19_Y11_N9
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

-- Location: LCCOMB_X7_Y12_N6
\b2v_inst|b2v_inst2|b2v_inst22|O[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst22|O[1]~1_combout\ = (\b2v_inst|b2v_inst2|b2v_inst36|q\(1) & !\b2v_inst|b2v_inst|di~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst36|q\(1),
	datac => \b2v_inst|b2v_inst|di~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst22|O[1]~1_combout\);

-- Location: FF_X7_Y12_N7
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

-- Location: LCCOMB_X17_Y13_N16
\b2v_inst|b2v_inst2|b2v_inst21|o[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[0]~5_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & !\b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~5_combout\);

-- Location: LCCOMB_X17_Y13_N14
\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ = (\b2v_inst|b2v_inst2|b2v_inst26|q\(2) & ((\b2v_inst|b2v_inst2|b2v_inst26|q\(1) & ((!\b2v_inst|b2v_inst2|b2v_inst26|q\(0)))) # (!\b2v_inst|b2v_inst2|b2v_inst26|q\(1) & 
-- (!\b2v_inst|b2v_inst2|b2v_inst26|q\(3))))) # (!\b2v_inst|b2v_inst2|b2v_inst26|q\(2) & (\b2v_inst|b2v_inst2|b2v_inst26|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst26|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst26|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001110110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst26|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst26|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst26|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst26|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\);

-- Location: LCCOMB_X17_Y12_N10
\b2v_inst|b2v_inst2|b2v_inst21|o[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[0]~14_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & (\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & (\b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\ $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & \b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~14_combout\);

-- Location: LCCOMB_X16_Y12_N26
\b2v_inst|b2v_inst2|b2v_inst21|o[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[0]~15_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & (\b2v_inst|b2v_inst2|b2v_inst21|Mux7~2_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\ & \b2v_inst|b2v_inst2|b2v_inst21|o[0]~14_combout\))))) 
-- # (!\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~14_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|Mux7~2_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~15_combout\);

-- Location: LCCOMB_X14_Y12_N8
\b2v_inst|b2v_inst2|b2v_inst14|o[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[3]~5_combout\ = (!\b2v_inst|b2v_inst2|b2v_inst6|q\(2) & \b2v_inst|b2v_inst2|b2v_inst6|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst6|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~5_combout\);

-- Location: LCCOMB_X14_Y12_N26
\b2v_inst|b2v_inst2|b2v_inst14|o[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[3]~2_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(2)) # ((\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & !\b2v_inst|b2v_inst2|b2v_inst6|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst6|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~2_combout\);

-- Location: LCCOMB_X14_Y14_N30
\b2v_inst|b2v_inst2|b2v_inst14|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|Mux9~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst2|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst2|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst2|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst2|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst2|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst2|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst2|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst2|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|Mux9~0_combout\);

-- Location: LCCOMB_X14_Y14_N18
\b2v_inst|b2v_inst2|b2v_inst14|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|Mux7~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst2|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst2|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst2|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst2|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst2|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst2|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|Mux7~0_combout\);

-- Location: LCCOMB_X14_Y14_N4
\b2v_inst|b2v_inst2|b2v_inst14|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|Mux4~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst2|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst2|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst2|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst2|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|Mux4~0_combout\);

-- Location: LCCOMB_X15_Y13_N14
\b2v_inst|b2v_inst2|b2v_inst14|o[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[2]~21_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst14|Mux7~0_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst6|q\(0))))) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & 
-- (((\b2v_inst|b2v_inst2|b2v_inst14|Mux4~0_combout\ & !\b2v_inst|b2v_inst2|b2v_inst6|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst14|Mux7~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|Mux4~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~21_combout\);

-- Location: LCCOMB_X14_Y14_N8
\b2v_inst|b2v_inst2|b2v_inst14|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|Mux5~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst2|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst2|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst2|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst2|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst2|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst2|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|Mux5~0_combout\);

-- Location: LCCOMB_X15_Y13_N8
\b2v_inst|b2v_inst2|b2v_inst14|o[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[2]~22_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst14|o[2]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst14|Mux9~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst14|o[2]~21_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst14|Mux5~0_combout\))))) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst14|o[2]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst14|Mux9~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|Mux5~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~22_combout\);

-- Location: LCCOMB_X14_Y12_N16
\b2v_inst|b2v_inst2|b2v_inst14|o[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[3]~3_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(2)) # ((\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & \b2v_inst|b2v_inst2|b2v_inst6|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst6|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~3_combout\);

-- Location: LCCOMB_X15_Y13_N22
\b2v_inst|b2v_inst2|b2v_inst14|o[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[2]~23_combout\ = (\b2v_inst|b2v_inst2|b2v_inst14|o[3]~2_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst14|o[3]~3_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst14|o[2]~22_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst14|o[3]~3_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst2|q\(2))))) # (!\b2v_inst|b2v_inst2|b2v_inst14|o[3]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst14|o[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~2_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst2|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~22_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~3_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~23_combout\);

-- Location: LCCOMB_X15_Y13_N4
\b2v_inst|b2v_inst2|b2v_inst14|o[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[2]~24_combout\ = (\b2v_inst|b2v_inst2|b2v_inst14|o[3]~5_combout\ & (\b2v_inst|b2v_inst2|b2v_inst2|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst14|o[2]~23_combout\ & \b2v_inst|b2v_inst2|b2v_inst2|q\(2)))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst14|o[3]~5_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst14|o[2]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~5_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst2|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~23_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst2|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~24_combout\);

-- Location: LCCOMB_X15_Y13_N26
\b2v_inst|b2v_inst2|b2v_inst14|o[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[2]~25_combout\ = (!\b2v_inst|b2v_inst2|b2v_inst6|q\(3) & \b2v_inst|b2v_inst2|b2v_inst14|o[2]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~24_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~25_combout\);

-- Location: LCCOMB_X17_Y10_N22
\b2v_inst|b2v_inst2|b2v_inst17|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|Mux7~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst9|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst9|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst9|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst9|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst17|Mux7~0_combout\);

-- Location: LCCOMB_X16_Y10_N28
\b2v_inst|b2v_inst2|b2v_inst17|o[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[2]~28_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst9|q\(0) $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst9|q\(2) & !\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst9|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[2]~28_combout\);

-- Location: LCCOMB_X16_Y10_N14
\b2v_inst|b2v_inst2|b2v_inst17|o[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[2]~29_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst17|Mux7~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst9|q\(2) & !\b2v_inst|b2v_inst2|b2v_inst17|o[2]~28_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst17|o[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst17|Mux7~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst9|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[2]~28_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[2]~29_combout\);

-- Location: LCCOMB_X16_Y10_N0
\b2v_inst|b2v_inst2|b2v_inst17|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|Mux0~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst9|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst9|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst9|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst17|Mux0~0_combout\);

-- Location: LCCOMB_X17_Y10_N14
\b2v_inst|b2v_inst2|b2v_inst17|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|Mux3~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst9|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst9|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst9|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst9|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst9|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst17|Mux3~0_combout\);

-- Location: LCCOMB_X16_Y10_N16
\b2v_inst|b2v_inst2|b2v_inst17|o[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[2]~30_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst17|Mux3~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst17|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst17|Mux0~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst17|Mux3~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[2]~30_combout\);

-- Location: LCCOMB_X16_Y10_N2
\b2v_inst|b2v_inst2|b2v_inst17|o[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[2]~31_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst9|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst9|q\(1) & \b2v_inst|b2v_inst2|b2v_inst17|o[2]~30_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst17|o[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst9|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[2]~30_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[2]~31_combout\);

-- Location: LCCOMB_X16_Y10_N8
\b2v_inst|b2v_inst2|b2v_inst5|q[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst5|q[2]~6_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & (\b2v_inst|b2v_inst2|b2v_inst17|o[2]~29_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst17|o[2]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst17|o[2]~29_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[2]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst5|q[2]~6_combout\);

-- Location: LCCOMB_X15_Y10_N12
\b2v_inst|b2v_inst2|b2v_inst17|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|Mux7~1_combout\ = \b2v_inst|b2v_inst2|b2v_inst9|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst9|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst9|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst9|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst9|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst9|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst17|Mux7~1_combout\);

-- Location: LCCOMB_X16_Y10_N6
\b2v_inst|b2v_inst2|b2v_inst17|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|Mux5~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst9|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst9|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst9|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst9|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst9|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst17|Mux5~0_combout\);

-- Location: LCCOMB_X15_Y10_N22
\b2v_inst|b2v_inst2|b2v_inst17|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|Mux4~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst9|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst9|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst9|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst9|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst17|Mux4~0_combout\);

-- Location: LCCOMB_X15_Y10_N18
\b2v_inst|b2v_inst2|b2v_inst17|o[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[2]~24_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst17|Mux5~0_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst17|Mux4~0_combout\ & !\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst17|Mux5~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst17|Mux4~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[2]~24_combout\);

-- Location: LCCOMB_X15_Y10_N8
\b2v_inst|b2v_inst2|b2v_inst17|o[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[2]~25_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst17|o[2]~24_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst17|Mux9~0_combout\))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst17|o[2]~24_combout\ & (\b2v_inst|b2v_inst2|b2v_inst17|Mux7~1_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst17|o[2]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst17|Mux7~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst17|Mux9~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[2]~24_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[2]~25_combout\);

-- Location: LCCOMB_X16_Y13_N26
\b2v_inst|b2v_inst2|b2v_inst19|o[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & \b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\);

-- Location: LCCOMB_X16_Y13_N24
\b2v_inst|b2v_inst2|b2v_inst19|o[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\ = (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\) # (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\);

-- Location: LCCOMB_X15_Y10_N14
\b2v_inst|b2v_inst2|b2v_inst17|o[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[2]~26_combout\ = (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst17|o[2]~25_combout\) # (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst9|q\(2) & ((\b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst17|o[2]~25_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[2]~26_combout\);

-- Location: LCCOMB_X16_Y10_N10
\b2v_inst|b2v_inst2|b2v_inst17|o[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[2]~27_combout\ = (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\ & (\b2v_inst|b2v_inst2|b2v_inst9|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst9|q\(2) & \b2v_inst|b2v_inst2|b2v_inst17|o[2]~26_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst17|o[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst9|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[2]~26_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[2]~27_combout\);

-- Location: LCCOMB_X16_Y10_N26
\b2v_inst|b2v_inst2|b2v_inst5|q[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst5|q[2]~7_combout\ = \b2v_inst|b2v_inst2|b2v_inst5|q\(2) $ (((\b2v_inst|b2v_inst2|b2v_inst5|q[2]~6_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst17|o[2]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst5|q[2]~6_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[2]~27_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst5|q[2]~7_combout\);

-- Location: FF_X16_Y10_N7
\b2v_inst|b2v_inst2|b2v_inst5|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|b2v_inst2|b2v_inst5|q[2]~7_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst5|q\(2));

-- Location: LCCOMB_X15_Y14_N2
\b2v_inst|b2v_inst2|b2v_inst13|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|Mux3~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst1|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst1|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst1|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst1|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst1|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst1|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|Mux3~0_combout\);

-- Location: LCCOMB_X16_Y14_N4
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

-- Location: LCCOMB_X15_Y14_N6
\b2v_inst|b2v_inst2|b2v_inst13|o[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[2]~25_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst13|Mux3~0_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst5|q\(0))))) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & 
-- (((!\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & \b2v_inst|b2v_inst2|b2v_inst13|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst13|Mux3~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst13|Mux0~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[2]~25_combout\);

-- Location: LCCOMB_X15_Y14_N8
\b2v_inst|b2v_inst2|b2v_inst13|o[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[2]~26_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst1|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst1|q\(1) & \b2v_inst|b2v_inst2|b2v_inst13|o[2]~25_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst13|o[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst1|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst1|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[2]~25_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[2]~26_combout\);

-- Location: LCCOMB_X15_Y14_N20
\b2v_inst|b2v_inst2|b2v_inst13|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|Mux8~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst1|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst1|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst1|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst1|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|Mux8~0_combout\);

-- Location: LCCOMB_X15_Y14_N18
\b2v_inst|b2v_inst2|b2v_inst13|o[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[2]~23_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst5|q\(0))))) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst1|q\(0) $ (((\b2v_inst|b2v_inst2|b2v_inst1|q\(2) & 
-- !\b2v_inst|b2v_inst2|b2v_inst5|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst1|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst1|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[2]~23_combout\);

-- Location: LCCOMB_X15_Y14_N0
\b2v_inst|b2v_inst2|b2v_inst13|o[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[2]~24_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst13|Mux8~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst1|q\(2) & !\b2v_inst|b2v_inst2|b2v_inst13|o[2]~23_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst13|o[2]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst13|Mux8~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst1|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[2]~23_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[2]~24_combout\);

-- Location: LCCOMB_X15_Y14_N22
\b2v_inst|b2v_inst2|b2v_inst13|o[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[2]~27_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(3) & ((\b2v_inst|b2v_inst2|b2v_inst5|q\(2) & ((\b2v_inst|b2v_inst2|b2v_inst13|o[2]~24_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(2) & 
-- (\b2v_inst|b2v_inst2|b2v_inst13|o[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst5|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|o[2]~26_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[2]~24_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[2]~27_combout\);

-- Location: LCCOMB_X17_Y14_N24
\b2v_inst|b2v_inst2|b2v_inst13|o[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[0]~10_combout\ = (!\b2v_inst|b2v_inst2|b2v_inst5|q\(2) & \b2v_inst|b2v_inst2|b2v_inst5|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst5|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~10_combout\);

-- Location: LCCOMB_X17_Y14_N30
\b2v_inst|b2v_inst2|b2v_inst13|o[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[0]~8_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(2)) # ((\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & \b2v_inst|b2v_inst2|b2v_inst5|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst5|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~8_combout\);

-- Location: LCCOMB_X17_Y14_N12
\b2v_inst|b2v_inst2|b2v_inst13|o[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[0]~7_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(2)) # ((\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & !\b2v_inst|b2v_inst2|b2v_inst5|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst5|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~7_combout\);

-- Location: LCCOMB_X15_Y14_N10
\b2v_inst|b2v_inst2|b2v_inst13|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|Mux9~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst1|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst1|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst1|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst1|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst1|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst1|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst1|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst1|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|Mux9~0_combout\);

-- Location: LCCOMB_X16_Y14_N6
\b2v_inst|b2v_inst2|b2v_inst13|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|Mux5~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst1|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst1|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst1|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst1|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst1|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst1|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|Mux5~0_combout\);

-- Location: LCCOMB_X16_Y14_N20
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

-- Location: LCCOMB_X15_Y14_N28
\b2v_inst|b2v_inst2|b2v_inst13|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|Mux7~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst1|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst1|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst1|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst1|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst1|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst1|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|Mux7~0_combout\);

-- Location: LCCOMB_X15_Y13_N0
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

-- Location: LCCOMB_X15_Y13_N10
\b2v_inst|b2v_inst2|b2v_inst13|o[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[2]~29_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst13|o[2]~28_combout\ & (\b2v_inst|b2v_inst2|b2v_inst13|Mux9~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst13|o[2]~28_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst13|Mux5~0_combout\))))) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst13|o[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst13|Mux9~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|Mux5~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[2]~28_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[2]~29_combout\);

-- Location: LCCOMB_X15_Y13_N24
\b2v_inst|b2v_inst2|b2v_inst13|o[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[2]~30_combout\ = (\b2v_inst|b2v_inst2|b2v_inst13|o[0]~8_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst13|o[2]~29_combout\) # (!\b2v_inst|b2v_inst2|b2v_inst13|o[0]~7_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst13|o[0]~8_combout\ & (\b2v_inst|b2v_inst2|b2v_inst1|q\(2) & (\b2v_inst|b2v_inst2|b2v_inst13|o[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst1|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~8_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~7_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[2]~29_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[2]~30_combout\);

-- Location: LCCOMB_X15_Y13_N2
\b2v_inst|b2v_inst2|b2v_inst13|o[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[2]~31_combout\ = (\b2v_inst|b2v_inst2|b2v_inst13|o[0]~10_combout\ & (\b2v_inst|b2v_inst2|b2v_inst1|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst1|q\(2) & \b2v_inst|b2v_inst2|b2v_inst13|o[2]~30_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst13|o[0]~10_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst13|o[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst1|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst1|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~10_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[2]~30_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[2]~31_combout\);

-- Location: LCCOMB_X15_Y13_N16
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

-- Location: LCCOMB_X14_Y15_N10
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

-- Location: LCCOMB_X14_Y15_N12
\b2v_inst|b2v_inst2|b2v_inst14|o[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[2]~26_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst6|q\(0))) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst2|q\(0) $ (((!\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & 
-- \b2v_inst|b2v_inst2|b2v_inst2|q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst2|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst2|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~26_combout\);

-- Location: LCCOMB_X14_Y15_N26
\b2v_inst|b2v_inst2|b2v_inst14|o[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[2]~27_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst14|Mux8~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst2|q\(2) & !\b2v_inst|b2v_inst2|b2v_inst14|o[2]~26_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst14|o[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst14|Mux8~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst2|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~26_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~27_combout\);

-- Location: LCCOMB_X18_Y14_N30
\b2v_inst|b2v_inst2|b2v_inst14|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|Mux3~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst2|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst2|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst2|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst2|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst2|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst2|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|Mux3~0_combout\);

-- Location: LCCOMB_X18_Y14_N24
\b2v_inst|b2v_inst2|b2v_inst14|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|Mux0~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst2|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst2|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst2|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst2|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|Mux0~0_combout\);

-- Location: LCCOMB_X14_Y15_N0
\b2v_inst|b2v_inst2|b2v_inst14|o[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[2]~28_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst6|q\(0)) # ((\b2v_inst|b2v_inst2|b2v_inst14|Mux3~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & 
-- (!\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst14|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|Mux3~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|Mux0~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~28_combout\);

-- Location: LCCOMB_X14_Y15_N2
\b2v_inst|b2v_inst2|b2v_inst14|o[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[2]~29_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst2|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst2|q\(1) & \b2v_inst|b2v_inst2|b2v_inst14|o[2]~28_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst14|o[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst2|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst2|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~28_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~29_combout\);

-- Location: LCCOMB_X14_Y15_N20
\b2v_inst|b2v_inst2|b2v_inst14|o[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[2]~30_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(3) & ((\b2v_inst|b2v_inst2|b2v_inst6|q\(2) & (\b2v_inst|b2v_inst2|b2v_inst14|o[2]~27_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(2) & 
-- ((\b2v_inst|b2v_inst2|b2v_inst14|o[2]~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~27_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~29_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~30_combout\);

-- Location: LCCOMB_X15_Y13_N6
\b2v_inst|b2v_inst2|b2v_inst37|c[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\ = \b2v_inst|b2v_inst2|b2v_inst13|o[2]~32_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst|q\(2) $ (((\b2v_inst|b2v_inst2|b2v_inst14|o[2]~25_combout\) # (\b2v_inst|b2v_inst2|b2v_inst14|o[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~25_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst13|o[2]~32_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[2]~30_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\);

-- Location: LCCOMB_X17_Y13_N12
\b2v_inst|b2v_inst2|b2v_inst21|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|Mux3~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[2]~6_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~6_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|Mux3~0_combout\);

-- Location: LCCOMB_X15_Y13_N18
\b2v_inst|b2v_inst2|b2v_inst21|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|Mux9~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst37|c[2]~8_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~8_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|Mux9~0_combout\);

-- Location: LCCOMB_X15_Y13_N30
\b2v_inst|b2v_inst2|b2v_inst21|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|Mux2~2_combout\ = \b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[2]~6_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~6_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|Mux2~2_combout\);

-- Location: LCCOMB_X16_Y14_N30
\b2v_inst|b2v_inst2|b2v_inst21|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|Mux10~2_combout\ = \b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[2]~6_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst21|Mux7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~6_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|Mux7~2_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|Mux10~2_combout\);

-- Location: LCCOMB_X16_Y12_N2
\b2v_inst|b2v_inst2|b2v_inst21|o[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[0]~12_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst21|Mux10~2_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & (\b2v_inst|b2v_inst2|b2v_inst21|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|Mux2~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|Mux10~2_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~12_combout\);

-- Location: LCCOMB_X16_Y12_N0
\b2v_inst|b2v_inst2|b2v_inst21|o[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[0]~13_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~12_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|Mux9~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~12_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst21|Mux3~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|Mux3~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|Mux9~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~12_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~13_combout\);

-- Location: LCCOMB_X16_Y12_N8
\b2v_inst|b2v_inst2|b2v_inst21|o[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[0]~16_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~13_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~15_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~13_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~16_combout\);

-- Location: LCCOMB_X16_Y12_N12
\b2v_inst|b2v_inst2|b2v_inst21|o[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[0]~3_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~3_combout\);

-- Location: LCCOMB_X17_Y12_N28
\b2v_inst|b2v_inst2|b2v_inst21|o[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[0]~2_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & !\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~2_combout\);

-- Location: LCCOMB_X17_Y13_N28
\b2v_inst|b2v_inst2|b2v_inst21|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|Mux5~1_combout\ = \b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[2]~6_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~6_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|Mux5~1_combout\);

-- Location: LCCOMB_X16_Y12_N14
\b2v_inst|b2v_inst2|b2v_inst21|o[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[0]~17_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & (\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & (\b2v_inst|b2v_inst2|b2v_inst37|c[2]~8_combout\ $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & \b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~8_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~17_combout\);

-- Location: LCCOMB_X16_Y12_N16
\b2v_inst|b2v_inst2|b2v_inst21|o[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[0]~18_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & (\b2v_inst|b2v_inst2|b2v_inst21|Mux5~1_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\ & \b2v_inst|b2v_inst2|b2v_inst21|o[0]~17_combout\))))) 
-- # (!\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|Mux5~1_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~17_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~18_combout\);

-- Location: LCCOMB_X16_Y12_N18
\b2v_inst|b2v_inst2|b2v_inst21|o[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[0]~19_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~3_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~18_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~2_combout\))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~3_combout\ & (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~3_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~2_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~18_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~19_combout\);

-- Location: LCCOMB_X16_Y12_N20
\b2v_inst|b2v_inst2|b2v_inst21|o[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[0]~20_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~5_combout\ & (\b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\ & \b2v_inst|b2v_inst2|b2v_inst21|o[0]~19_combout\))))) 
-- # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~5_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~5_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~19_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~20_combout\);

-- Location: LCCOMB_X16_Y12_N30
\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~16_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst21|o[0]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~16_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~20_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\);

-- Location: LCCOMB_X16_Y10_N18
\b2v_inst|b2v_inst2|b2v_inst17|o[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[3]~6_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst17|Mux5~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst17|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst17|Mux5~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst17|Mux4~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[3]~6_combout\);

-- Location: LCCOMB_X16_Y10_N12
\b2v_inst|b2v_inst2|b2v_inst17|o[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[3]~7_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst9|q\(0) $ (((\b2v_inst|b2v_inst2|b2v_inst9|q\(2) & \b2v_inst|b2v_inst2|b2v_inst17|o[3]~6_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst17|o[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst9|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[3]~6_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[3]~7_combout\);

-- Location: LCCOMB_X17_Y10_N16
\b2v_inst|b2v_inst2|b2v_inst17|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|Mux10~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst9|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst9|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst9|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst9|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst9|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst17|Mux10~0_combout\);

-- Location: LCCOMB_X16_Y10_N22
\b2v_inst|b2v_inst2|b2v_inst17|o[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[3]~4_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst17|Mux7~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst9|q\(3) & !\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst17|Mux7~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[3]~4_combout\);

-- Location: LCCOMB_X16_Y10_N20
\b2v_inst|b2v_inst2|b2v_inst17|o[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[3]~5_combout\ = (\b2v_inst|b2v_inst2|b2v_inst17|o[3]~4_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst17|Mux10~0_combout\) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst17|o[3]~4_combout\ & (\b2v_inst|b2v_inst2|b2v_inst17|Mux9~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst17|Mux9~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst17|Mux10~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst17|o[3]~4_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[3]~5_combout\);

-- Location: LCCOMB_X16_Y10_N30
\b2v_inst|b2v_inst2|b2v_inst5|q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst5|q[3]~0_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst17|o[3]~5_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst17|o[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst17|o[3]~7_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[3]~5_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst5|q[3]~0_combout\);

-- Location: LCCOMB_X17_Y10_N30
\b2v_inst|b2v_inst2|b2v_inst17|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|Mux2~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst9|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst9|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst9|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst17|Mux2~0_combout\);

-- Location: LCCOMB_X17_Y10_N28
\b2v_inst|b2v_inst2|b2v_inst17|o[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[3]~0_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst9|q\(1) $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & \b2v_inst|b2v_inst2|b2v_inst9|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst9|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[3]~0_combout\);

-- Location: LCCOMB_X17_Y10_N8
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

-- Location: LCCOMB_X17_Y10_N6
\b2v_inst|b2v_inst2|b2v_inst17|o[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[3]~2_combout\ = (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst17|o[3]~1_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\ 
-- & (((\b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\ & \b2v_inst|b2v_inst2|b2v_inst9|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst17|o[3]~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst9|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[3]~2_combout\);

-- Location: LCCOMB_X16_Y10_N24
\b2v_inst|b2v_inst2|b2v_inst17|o[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[3]~3_combout\ = (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\ & (\b2v_inst|b2v_inst2|b2v_inst9|q\(2) $ (((\b2v_inst|b2v_inst2|b2v_inst9|q\(3) & \b2v_inst|b2v_inst2|b2v_inst17|o[3]~2_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst17|o[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst9|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[3]~2_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[3]~3_combout\);

-- Location: LCCOMB_X16_Y10_N4
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

-- Location: FF_X16_Y10_N1
\b2v_inst|b2v_inst2|b2v_inst5|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|b2v_inst2|b2v_inst5|q[3]~1_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst5|q\(3));

-- Location: LCCOMB_X15_Y14_N12
\b2v_inst|b2v_inst2|b2v_inst13|o[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[0]~2_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst5|q\(1))) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst1|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & 
-- \b2v_inst|b2v_inst2|b2v_inst1|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst1|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst1|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~2_combout\);

-- Location: LCCOMB_X15_Y14_N14
\b2v_inst|b2v_inst2|b2v_inst13|o[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[0]~3_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst13|Mux8~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst1|q\(3) & \b2v_inst|b2v_inst2|b2v_inst13|o[0]~2_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst13|o[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst13|Mux8~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst1|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~2_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~3_combout\);

-- Location: LCCOMB_X17_Y14_N10
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

-- Location: LCCOMB_X15_Y14_N4
\b2v_inst|b2v_inst2|b2v_inst13|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|Mux10~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst1|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst1|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst1|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst1|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst1|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst1|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|Mux10~0_combout\);

-- Location: LCCOMB_X17_Y14_N8
\b2v_inst|b2v_inst2|b2v_inst13|o[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[0]~0_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst13|Mux10~0_combout\) # (\b2v_inst|b2v_inst2|b2v_inst5|q\(1))))) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & 
-- (\b2v_inst|b2v_inst2|b2v_inst13|Mux2~0_combout\ & ((!\b2v_inst|b2v_inst2|b2v_inst5|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst13|Mux2~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|Mux10~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~0_combout\);

-- Location: LCCOMB_X17_Y14_N22
\b2v_inst|b2v_inst2|b2v_inst13|o[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[0]~1_combout\ = (\b2v_inst|b2v_inst2|b2v_inst13|o[0]~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst13|Mux9~0_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst5|q\(1))))) # (!\b2v_inst|b2v_inst2|b2v_inst13|o[0]~0_combout\ & 
-- (((\b2v_inst|b2v_inst2|b2v_inst13|Mux3~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst5|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst13|Mux9~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst13|Mux3~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~1_combout\);

-- Location: LCCOMB_X16_Y14_N22
\b2v_inst|b2v_inst2|b2v_inst13|o[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[0]~4_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(3) & ((\b2v_inst|b2v_inst2|b2v_inst5|q\(2) & ((\b2v_inst|b2v_inst2|b2v_inst13|o[0]~1_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(2) & 
-- (\b2v_inst|b2v_inst2|b2v_inst13|o[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~3_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst5|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~1_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~4_combout\);

-- Location: LCCOMB_X15_Y14_N24
\b2v_inst|b2v_inst2|b2v_inst13|o[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[0]~5_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst5|q\(0))))) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst1|q\(2) $ (((\b2v_inst|b2v_inst2|b2v_inst1|q\(0) & 
-- \b2v_inst|b2v_inst2|b2v_inst5|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst1|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst1|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~5_combout\);

-- Location: LCCOMB_X15_Y14_N26
\b2v_inst|b2v_inst2|b2v_inst13|o[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[0]~6_combout\ = (\b2v_inst|b2v_inst2|b2v_inst13|o[0]~5_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst13|Mux5~0_combout\) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(1))))) # (!\b2v_inst|b2v_inst2|b2v_inst13|o[0]~5_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst13|Mux0~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst5|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst13|Mux0~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~5_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst13|Mux5~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~6_combout\);

-- Location: LCCOMB_X16_Y14_N14
\b2v_inst|b2v_inst2|b2v_inst13|o[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[0]~9_combout\ = (\b2v_inst|b2v_inst2|b2v_inst13|o[0]~8_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst13|o[0]~6_combout\) # (!\b2v_inst|b2v_inst2|b2v_inst13|o[0]~7_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst13|o[0]~8_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst1|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst13|o[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~8_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst1|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~7_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~6_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~9_combout\);

-- Location: LCCOMB_X16_Y14_N16
\b2v_inst|b2v_inst2|b2v_inst13|o[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[0]~11_combout\ = (\b2v_inst|b2v_inst2|b2v_inst13|o[0]~10_combout\ & (\b2v_inst|b2v_inst2|b2v_inst1|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst1|q\(0) & \b2v_inst|b2v_inst2|b2v_inst13|o[0]~9_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst13|o[0]~10_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst13|o[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst1|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst1|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~9_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~10_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~11_combout\);

-- Location: LCCOMB_X16_Y14_N2
\b2v_inst|b2v_inst2|b2v_inst13|o[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[0]~12_combout\ = (\b2v_inst|b2v_inst2|b2v_inst13|o[0]~4_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst5|q\(3) & \b2v_inst|b2v_inst2|b2v_inst13|o[0]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~4_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~11_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~12_combout\);

-- Location: LCCOMB_X14_Y15_N28
\b2v_inst|b2v_inst2|b2v_inst14|o[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[0]~9_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst6|q\(1))))) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst2|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst2|q\(3) & 
-- \b2v_inst|b2v_inst2|b2v_inst6|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst2|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst2|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[0]~9_combout\);

-- Location: LCCOMB_X14_Y15_N4
\b2v_inst|b2v_inst2|b2v_inst14|o[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[0]~10_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst14|Mux8~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst2|q\(3) & \b2v_inst|b2v_inst2|b2v_inst14|o[0]~9_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst14|o[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst2|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst14|o[0]~9_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst14|Mux8~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[0]~10_combout\);

-- Location: LCCOMB_X18_Y14_N8
\b2v_inst|b2v_inst2|b2v_inst14|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|Mux10~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst2|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst2|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst2|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst2|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst2|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst2|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|Mux10~0_combout\);

-- Location: LCCOMB_X14_Y14_N12
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

-- Location: LCCOMB_X14_Y15_N16
\b2v_inst|b2v_inst2|b2v_inst14|o[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[0]~7_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst6|q\(0))) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & 
-- (\b2v_inst|b2v_inst2|b2v_inst14|Mux10~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst14|Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|Mux10~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|Mux2~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[0]~7_combout\);

-- Location: LCCOMB_X14_Y15_N18
\b2v_inst|b2v_inst2|b2v_inst14|o[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[0]~8_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst14|o[0]~7_combout\ & (\b2v_inst|b2v_inst2|b2v_inst14|Mux9~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst14|o[0]~7_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst14|Mux3~0_combout\))))) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst14|o[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst14|Mux9~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst14|Mux3~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[0]~7_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[0]~8_combout\);

-- Location: LCCOMB_X14_Y15_N30
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

-- Location: LCCOMB_X14_Y12_N30
\b2v_inst|b2v_inst2|b2v_inst14|o[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[0]~0_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst6|q\(0))) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst2|q\(2) $ (((\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & 
-- \b2v_inst|b2v_inst2|b2v_inst2|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst2|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst2|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[0]~0_combout\);

-- Location: LCCOMB_X14_Y12_N12
\b2v_inst|b2v_inst2|b2v_inst14|o[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[0]~1_combout\ = (\b2v_inst|b2v_inst2|b2v_inst14|o[0]~0_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst14|Mux5~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(1)))) # (!\b2v_inst|b2v_inst2|b2v_inst14|o[0]~0_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst14|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst14|o[0]~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|Mux5~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|Mux0~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[0]~1_combout\);

-- Location: LCCOMB_X14_Y12_N18
\b2v_inst|b2v_inst2|b2v_inst14|o[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[0]~4_combout\ = (\b2v_inst|b2v_inst2|b2v_inst14|o[3]~2_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst14|o[3]~3_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst14|o[0]~1_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst14|o[3]~3_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst2|q\(0))))) # (!\b2v_inst|b2v_inst2|b2v_inst14|o[3]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst14|o[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~2_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~3_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst2|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[0]~1_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[0]~4_combout\);

-- Location: LCCOMB_X14_Y12_N2
\b2v_inst|b2v_inst2|b2v_inst14|o[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[0]~6_combout\ = (\b2v_inst|b2v_inst2|b2v_inst14|o[3]~5_combout\ & (\b2v_inst|b2v_inst2|b2v_inst2|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst2|q\(0) & \b2v_inst|b2v_inst2|b2v_inst14|o[0]~4_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst14|o[3]~5_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst14|o[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst2|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst2|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~5_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[0]~4_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[0]~6_combout\);

-- Location: LCCOMB_X16_Y14_N24
\b2v_inst|b2v_inst2|b2v_inst37|c[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst37|c[0]~1_combout\ = \b2v_inst|b2v_inst2|b2v_inst13|o[0]~12_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst14|o[0]~11_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst6|q\(3) & \b2v_inst|b2v_inst2|b2v_inst14|o[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~12_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst14|o[0]~11_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[0]~6_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst37|c[0]~1_combout\);

-- Location: LCCOMB_X16_Y13_N8
\b2v_inst|b2v_inst2|b2v_inst21|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|Mux4~4_combout\ = \b2v_inst|b2v_inst2|b2v_inst|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst37|c[0]~1_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[0]~0_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst37|c[0]~1_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[0]~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|Mux4~4_combout\);

-- Location: LCCOMB_X15_Y11_N14
\b2v_inst|b2v_inst2|b2v_inst20|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|Mux7~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst36|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst36|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst36|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst36|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst20|Mux7~0_combout\);

-- Location: LCCOMB_X15_Y11_N16
\b2v_inst|b2v_inst2|b2v_inst20|o[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[0]~22_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst36|q\(1) $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst36|q\(3) & \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst36|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst36|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[0]~22_combout\);

-- Location: LCCOMB_X15_Y11_N30
\b2v_inst|b2v_inst2|b2v_inst20|o[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[0]~23_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst20|Mux7~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst36|q\(3) & \b2v_inst|b2v_inst2|b2v_inst20|o[0]~22_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|o[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst20|Mux7~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst36|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[0]~22_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[0]~23_combout\);

-- Location: LCCOMB_X15_Y11_N20
\b2v_inst|b2v_inst2|b2v_inst20|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|Mux9~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst36|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst36|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst36|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst36|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst36|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst36|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst36|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst36|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst20|Mux9~0_combout\);

-- Location: LCCOMB_X15_Y11_N8
\b2v_inst|b2v_inst2|b2v_inst20|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|Mux3~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst36|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst36|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst36|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst36|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst36|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst36|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst20|Mux3~0_combout\);

-- Location: LCCOMB_X15_Y11_N10
\b2v_inst|b2v_inst2|b2v_inst20|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|Mux2~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst36|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst36|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst36|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst36|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst20|Mux2~0_combout\);

-- Location: LCCOMB_X17_Y11_N0
\b2v_inst|b2v_inst2|b2v_inst20|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|Mux10~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst36|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst36|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst36|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst36|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst36|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst36|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst20|Mux10~0_combout\);

-- Location: LCCOMB_X15_Y11_N12
\b2v_inst|b2v_inst2|b2v_inst20|o[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[0]~20_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|Mux10~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst20|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst20|Mux2~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst20|Mux10~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[0]~20_combout\);

-- Location: LCCOMB_X15_Y11_N18
\b2v_inst|b2v_inst2|b2v_inst20|o[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[0]~21_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|o[0]~20_combout\ & (\b2v_inst|b2v_inst2|b2v_inst20|Mux9~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst20|o[0]~20_combout\ 
-- & ((\b2v_inst|b2v_inst2|b2v_inst20|Mux3~0_combout\))))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|o[0]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst20|Mux9~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst20|Mux3~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[0]~20_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[0]~21_combout\);

-- Location: LCCOMB_X15_Y11_N4
\b2v_inst|b2v_inst2|b2v_inst8|q[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst8|q[0]~4_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|o[0]~21_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst20|o[0]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst20|o[0]~23_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst8|q[0]~4_combout\);

-- Location: LCCOMB_X15_Y11_N26
\b2v_inst|b2v_inst2|b2v_inst20|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|Mux5~1_combout\ = \b2v_inst|b2v_inst2|b2v_inst36|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst36|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst36|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst36|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst20|Mux5~1_combout\);

-- Location: LCCOMB_X15_Y11_N24
\b2v_inst|b2v_inst2|b2v_inst20|o[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[0]~16_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst36|q\(2) $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst36|q\(3) & \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst36|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst36|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[0]~16_combout\);

-- Location: LCCOMB_X15_Y11_N22
\b2v_inst|b2v_inst2|b2v_inst20|o[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[0]~17_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst20|Mux5~1_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst36|q\(3) & \b2v_inst|b2v_inst2|b2v_inst20|o[0]~16_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|o[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst20|Mux5~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst36|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[0]~16_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[0]~17_combout\);

-- Location: LCCOMB_X15_Y11_N0
\b2v_inst|b2v_inst2|b2v_inst20|o[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[0]~18_combout\ = (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|o[0]~17_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst36|q\(0) & \b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst20|o[0]~17_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst36|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[0]~18_combout\);

-- Location: LCCOMB_X15_Y11_N2
\b2v_inst|b2v_inst2|b2v_inst20|o[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[0]~19_combout\ = (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\ & (\b2v_inst|b2v_inst2|b2v_inst36|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst36|q\(0) & \b2v_inst|b2v_inst2|b2v_inst20|o[0]~18_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|o[0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst36|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst36|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[0]~18_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[0]~19_combout\);

-- Location: LCCOMB_X15_Y11_N6
\b2v_inst|b2v_inst2|b2v_inst8|q[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst8|q[0]~5_combout\ = \b2v_inst|b2v_inst2|b2v_inst8|q\(0) $ (((\b2v_inst|b2v_inst2|b2v_inst8|q[0]~4_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst20|o[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst8|q[0]~4_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[0]~19_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst8|q[0]~5_combout\);

-- Location: LCCOMB_X15_Y11_N28
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

-- Location: FF_X15_Y11_N29
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

-- Location: LCCOMB_X17_Y11_N24
\b2v_inst|b2v_inst2|b2v_inst16|o[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[3]~3_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(2)) # ((\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & \b2v_inst|b2v_inst2|b2v_inst8|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst8|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~3_combout\);

-- Location: LCCOMB_X19_Y11_N14
\b2v_inst|b2v_inst2|b2v_inst16|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|Mux2~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst4|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst4|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst4|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst16|Mux2~0_combout\);

-- Location: LCCOMB_X19_Y11_N2
\b2v_inst|b2v_inst2|b2v_inst16|o[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[3]~30_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst8|q\(0))))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst4|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & 
-- \b2v_inst|b2v_inst2|b2v_inst4|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst4|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~30_combout\);

-- Location: LCCOMB_X19_Y11_N4
\b2v_inst|b2v_inst2|b2v_inst16|o[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[3]~31_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst16|Mux2~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst4|q\(3) & \b2v_inst|b2v_inst2|b2v_inst16|o[3]~30_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst16|o[3]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst16|Mux2~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~30_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~31_combout\);

-- Location: LCCOMB_X19_Y11_N22
\b2v_inst|b2v_inst2|b2v_inst16|o[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[3]~32_combout\ = (\b2v_inst|b2v_inst2|b2v_inst16|o[3]~3_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst16|o[3]~31_combout\) # (!\b2v_inst|b2v_inst2|b2v_inst16|o[3]~2_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst16|o[3]~3_combout\ & (\b2v_inst|b2v_inst2|b2v_inst4|q\(3) & ((\b2v_inst|b2v_inst2|b2v_inst16|o[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~3_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~2_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~32_combout\);

-- Location: LCCOMB_X19_Y11_N0
\b2v_inst|b2v_inst2|b2v_inst16|o[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[3]~33_combout\ = (\b2v_inst|b2v_inst2|b2v_inst16|o[3]~5_combout\ & (\b2v_inst|b2v_inst2|b2v_inst4|q\(2) $ (((\b2v_inst|b2v_inst2|b2v_inst4|q\(3) & \b2v_inst|b2v_inst2|b2v_inst16|o[3]~32_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst16|o[3]~5_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst16|o[3]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~32_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~5_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~33_combout\);

-- Location: LCCOMB_X19_Y11_N8
\b2v_inst|b2v_inst2|b2v_inst16|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|Mux9~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst4|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst4|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst4|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst4|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst4|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst4|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst16|Mux9~0_combout\);

-- Location: LCCOMB_X19_Y11_N16
\b2v_inst|b2v_inst2|b2v_inst16|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|Mux10~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst4|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst4|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst4|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst4|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst4|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst16|Mux10~0_combout\);

-- Location: LCCOMB_X20_Y11_N22
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

-- Location: LCCOMB_X20_Y11_N6
\b2v_inst|b2v_inst2|b2v_inst16|o[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[3]~34_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst8|q\(0))))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst16|Mux8~0_combout\ $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst4|q\(3) & !\b2v_inst|b2v_inst2|b2v_inst8|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst16|Mux8~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~34_combout\);

-- Location: LCCOMB_X20_Y11_N4
\b2v_inst|b2v_inst2|b2v_inst16|o[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[3]~35_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst16|o[3]~34_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst16|Mux10~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst16|o[3]~34_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst16|Mux9~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst16|o[3]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst16|Mux9~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst16|Mux10~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~34_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~35_combout\);

-- Location: LCCOMB_X19_Y11_N20
\b2v_inst|b2v_inst2|b2v_inst16|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|Mux5~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst4|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst4|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst4|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst4|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst16|Mux5~0_combout\);

-- Location: LCCOMB_X19_Y11_N6
\b2v_inst|b2v_inst2|b2v_inst16|o[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[3]~36_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst8|q\(0)) # (\b2v_inst|b2v_inst2|b2v_inst16|Mux5~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & 
-- (\b2v_inst|b2v_inst2|b2v_inst16|Mux4~0_combout\ & (!\b2v_inst|b2v_inst2|b2v_inst8|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst16|Mux4~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst16|Mux5~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~36_combout\);

-- Location: LCCOMB_X20_Y11_N10
\b2v_inst|b2v_inst2|b2v_inst16|o[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[3]~37_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst4|q\(0) $ (((\b2v_inst|b2v_inst2|b2v_inst4|q\(2) & \b2v_inst|b2v_inst2|b2v_inst16|o[3]~36_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst16|o[3]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst4|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~36_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~37_combout\);

-- Location: LCCOMB_X20_Y11_N28
\b2v_inst|b2v_inst2|b2v_inst16|o[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[3]~38_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(3) & ((\b2v_inst|b2v_inst2|b2v_inst8|q\(2) & (\b2v_inst|b2v_inst2|b2v_inst16|o[3]~35_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(2) & 
-- ((\b2v_inst|b2v_inst2|b2v_inst16|o[3]~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst8|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~35_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~37_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~38_combout\);

-- Location: LCCOMB_X20_Y13_N30
\b2v_inst|b2v_inst2|b2v_inst15|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|Mux10~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst3|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst3|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst3|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst3|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst3|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst3|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|Mux10~0_combout\);

-- Location: LCCOMB_X19_Y13_N6
\b2v_inst|b2v_inst2|b2v_inst15|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|Mux9~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst3|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst3|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst3|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst3|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst3|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst3|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst3|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst3|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|Mux9~0_combout\);

-- Location: LCCOMB_X17_Y15_N6
\b2v_inst|b2v_inst2|b2v_inst19|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|Mux5~1_combout\ = \b2v_inst|b2v_inst2|b2v_inst11|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst11|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst11|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst11|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst19|Mux5~1_combout\);

-- Location: LCCOMB_X16_Y12_N28
\b2v_inst|b2v_inst2|b2v_inst19|o[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[0]~19_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst11|q\(2) $ 
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
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~19_combout\);

-- Location: LCCOMB_X16_Y12_N6
\b2v_inst|b2v_inst2|b2v_inst19|o[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[0]~20_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst19|Mux5~1_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst11|q\(3) & \b2v_inst|b2v_inst2|b2v_inst19|o[0]~19_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|o[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst19|Mux5~1_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst11|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~19_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~20_combout\);

-- Location: LCCOMB_X16_Y15_N20
\b2v_inst|b2v_inst2|b2v_inst19|o[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[0]~21_combout\ = (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|o[0]~20_combout\) # (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst11|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~20_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~21_combout\);

-- Location: LCCOMB_X16_Y15_N26
\b2v_inst|b2v_inst2|b2v_inst19|o[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[0]~22_combout\ = (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\ & (\b2v_inst|b2v_inst2|b2v_inst11|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst11|q\(0) & \b2v_inst|b2v_inst2|b2v_inst19|o[0]~21_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|o[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst11|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst11|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~22_combout\);

-- Location: LCCOMB_X7_Y12_N2
\b2v_inst|b2v_inst2|b2v_inst34|O[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst34|O[1]~1_combout\ = (\b2v_inst|b2v_inst|di~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst6|q\(1)))) # (!\b2v_inst|b2v_inst|di~0_combout\ & (\b2v_inst|b2v_inst2|b2v_inst10|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst10|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	datac => \b2v_inst|b2v_inst|di~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst34|O[1]~1_combout\);

-- Location: FF_X7_Y12_N3
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

-- Location: LCCOMB_X15_Y15_N6
\b2v_inst|b2v_inst2|b2v_inst19|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|Mux3~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst11|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst11|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst11|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst11|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst11|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst19|Mux3~0_combout\);

-- Location: LCCOMB_X15_Y15_N20
\b2v_inst|b2v_inst2|b2v_inst19|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|Mux9~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst11|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst11|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst11|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst11|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst11|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst11|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst11|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst19|Mux9~0_combout\);

-- Location: LCCOMB_X17_Y15_N0
\b2v_inst|b2v_inst2|b2v_inst19|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|Mux2~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst11|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst11|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst11|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst19|Mux2~0_combout\);

-- Location: LCCOMB_X15_Y15_N10
\b2v_inst|b2v_inst2|b2v_inst19|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|Mux10~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst11|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst11|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst11|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst11|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst11|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst19|Mux10~0_combout\);

-- Location: LCCOMB_X15_Y15_N30
\b2v_inst|b2v_inst2|b2v_inst19|o[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[0]~23_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|Mux10~0_combout\) # (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst19|Mux2~0_combout\ & ((!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst19|Mux2~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst19|Mux10~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~23_combout\);

-- Location: LCCOMB_X15_Y15_N0
\b2v_inst|b2v_inst2|b2v_inst19|o[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[0]~24_combout\ = (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~23_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|Mux9~0_combout\) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~23_combout\ & (\b2v_inst|b2v_inst2|b2v_inst19|Mux3~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst19|Mux3~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst19|Mux9~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~23_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~24_combout\);

-- Location: LCCOMB_X16_Y12_N4
\b2v_inst|b2v_inst2|b2v_inst19|o[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[0]~25_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst11|q\(1) $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst11|q\(3) & \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst11|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~25_combout\);

-- Location: LCCOMB_X15_Y15_N22
\b2v_inst|b2v_inst2|b2v_inst19|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|Mux7~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst11|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst11|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst11|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst19|Mux7~0_combout\);

-- Location: LCCOMB_X16_Y12_N22
\b2v_inst|b2v_inst2|b2v_inst19|o[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[0]~26_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst19|Mux7~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst11|q\(3) & \b2v_inst|b2v_inst2|b2v_inst19|o[0]~25_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|o[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~25_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|Mux7~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~26_combout\);

-- Location: LCCOMB_X16_Y15_N24
\b2v_inst|b2v_inst2|b2v_inst7|q[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst7|q[0]~6_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~24_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst19|o[0]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~24_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~26_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst7|q[0]~6_combout\);

-- Location: LCCOMB_X16_Y15_N18
\b2v_inst|b2v_inst2|b2v_inst7|q[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst7|q[0]~7_combout\ = \b2v_inst|b2v_inst2|b2v_inst7|q\(0) $ (((\b2v_inst|b2v_inst2|b2v_inst7|q[0]~6_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst19|o[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~22_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q[0]~6_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst7|q[0]~7_combout\);

-- Location: LCCOMB_X16_Y15_N30
\b2v_inst|b2v_inst2|b2v_inst7|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst7|q[0]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst7|q[0]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q[0]~7_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst7|q[0]~feeder_combout\);

-- Location: FF_X16_Y15_N31
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

-- Location: LCCOMB_X20_Y13_N20
\b2v_inst|b2v_inst2|b2v_inst15|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|Mux8~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst3|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst3|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst3|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst3|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|Mux8~0_combout\);

-- Location: LCCOMB_X20_Y13_N16
\b2v_inst|b2v_inst2|b2v_inst15|o[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[3]~33_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst7|q\(0))) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst15|Mux8~0_combout\ $ 
-- (((!\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & \b2v_inst|b2v_inst2|b2v_inst3|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst15|Mux8~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst3|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~33_combout\);

-- Location: LCCOMB_X20_Y13_N26
\b2v_inst|b2v_inst2|b2v_inst15|o[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[3]~34_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst15|o[3]~33_combout\ & (\b2v_inst|b2v_inst2|b2v_inst15|Mux10~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst15|o[3]~33_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst15|Mux9~0_combout\))))) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst15|o[3]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst15|Mux10~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|Mux9~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~33_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~34_combout\);

-- Location: LCCOMB_X19_Y13_N18
\b2v_inst|b2v_inst2|b2v_inst15|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|Mux5~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst3|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst3|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst3|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst3|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst3|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst3|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|Mux5~0_combout\);

-- Location: LCCOMB_X19_Y13_N8
\b2v_inst|b2v_inst2|b2v_inst15|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|Mux4~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst3|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst3|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst3|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst3|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|Mux4~0_combout\);

-- Location: LCCOMB_X18_Y15_N16
\b2v_inst|b2v_inst2|b2v_inst15|o[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[3]~35_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst7|q\(0)) # ((\b2v_inst|b2v_inst2|b2v_inst15|Mux5~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & 
-- (!\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst15|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|Mux5~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|Mux4~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~35_combout\);

-- Location: LCCOMB_X18_Y15_N10
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

-- Location: LCCOMB_X18_Y13_N8
\b2v_inst|b2v_inst2|b2v_inst15|o[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[3]~37_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(3) & ((\b2v_inst|b2v_inst2|b2v_inst7|q\(2) & (\b2v_inst|b2v_inst2|b2v_inst15|o[3]~34_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(2) & 
-- ((\b2v_inst|b2v_inst2|b2v_inst15|o[3]~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~34_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~36_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~37_combout\);

-- Location: LCCOMB_X18_Y15_N30
\b2v_inst|b2v_inst2|b2v_inst15|o[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[2]~10_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & !\b2v_inst|b2v_inst2|b2v_inst7|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~10_combout\);

-- Location: LCCOMB_X18_Y15_N26
\b2v_inst|b2v_inst2|b2v_inst15|o[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[2]~8_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(2)) # ((\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & \b2v_inst|b2v_inst2|b2v_inst7|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~8_combout\);

-- Location: LCCOMB_X18_Y15_N12
\b2v_inst|b2v_inst2|b2v_inst15|o[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[2]~7_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(2)) # ((!\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & \b2v_inst|b2v_inst2|b2v_inst7|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~7_combout\);

-- Location: LCCOMB_X20_Y13_N4
\b2v_inst|b2v_inst2|b2v_inst15|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|Mux2~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst3|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst3|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst3|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst3|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|Mux2~0_combout\);

-- Location: LCCOMB_X20_Y13_N12
\b2v_inst|b2v_inst2|b2v_inst15|o[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[3]~38_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst7|q\(0))))) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst3|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & 
-- \b2v_inst|b2v_inst2|b2v_inst3|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst3|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst3|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~38_combout\);

-- Location: LCCOMB_X20_Y13_N22
\b2v_inst|b2v_inst2|b2v_inst15|o[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[3]~39_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst15|Mux2~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst3|q\(3) & \b2v_inst|b2v_inst2|b2v_inst15|o[3]~38_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst15|o[3]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst3|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst15|Mux2~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~38_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~39_combout\);

-- Location: LCCOMB_X18_Y13_N6
\b2v_inst|b2v_inst2|b2v_inst15|o[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[3]~40_combout\ = (\b2v_inst|b2v_inst2|b2v_inst15|o[2]~8_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst15|o[3]~39_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst15|o[2]~7_combout\))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst15|o[2]~8_combout\ & (\b2v_inst|b2v_inst2|b2v_inst15|o[2]~7_combout\ & (\b2v_inst|b2v_inst2|b2v_inst3|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~8_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~7_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst3|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~39_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~40_combout\);

-- Location: LCCOMB_X18_Y13_N20
\b2v_inst|b2v_inst2|b2v_inst15|o[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[3]~41_combout\ = (\b2v_inst|b2v_inst2|b2v_inst15|o[2]~10_combout\ & (\b2v_inst|b2v_inst2|b2v_inst3|q\(2) $ (((\b2v_inst|b2v_inst2|b2v_inst3|q\(3) & \b2v_inst|b2v_inst2|b2v_inst15|o[3]~40_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst15|o[2]~10_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst15|o[3]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst3|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst3|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~10_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~40_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~41_combout\);

-- Location: LCCOMB_X18_Y13_N2
\b2v_inst|b2v_inst2|b2v_inst15|o[3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[3]~42_combout\ = (\b2v_inst|b2v_inst2|b2v_inst15|o[3]~37_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst7|q\(3) & \b2v_inst|b2v_inst2|b2v_inst15|o[3]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~37_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~41_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[3]~42_combout\);

-- Location: LCCOMB_X18_Y13_N28
\b2v_inst|b2v_inst2|b2v_inst37|c[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst37|c[3]~9_combout\ = \b2v_inst|b2v_inst2|b2v_inst15|o[3]~42_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst16|o[3]~38_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst8|q\(3) & \b2v_inst|b2v_inst2|b2v_inst16|o[3]~33_combout\))))

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
	combout => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~9_combout\);

-- Location: LCCOMB_X16_Y13_N22
\b2v_inst|b2v_inst2|b2v_inst21|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|Mux7~3_combout\ = \b2v_inst|b2v_inst2|b2v_inst37|c[3]~9_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst21|Mux7~2_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~9_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|Mux7~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|Mux7~3_combout\);

-- Location: LCCOMB_X18_Y13_N14
\b2v_inst|b2v_inst2|b2v_inst21|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|Mux0~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst37|c[2]~6_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~6_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|Mux0~0_combout\);

-- Location: LCCOMB_X17_Y13_N8
\b2v_inst|b2v_inst2|b2v_inst21|o[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[1]~27_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst21|Mux3~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & (\b2v_inst|b2v_inst2|b2v_inst21|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|Mux0~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|Mux3~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~27_combout\);

-- Location: LCCOMB_X17_Y13_N2
\b2v_inst|b2v_inst2|b2v_inst21|o[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[1]~28_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~27_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|Mux10~2_combout\))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~27_combout\ & (\b2v_inst|b2v_inst2|b2v_inst21|Mux5~1_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|Mux5~1_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~27_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|Mux10~2_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~28_combout\);

-- Location: LCCOMB_X17_Y13_N4
\b2v_inst|b2v_inst2|b2v_inst21|o[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[1]~29_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~3_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~28_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~2_combout\))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~3_combout\ & (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~3_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~2_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~28_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~29_combout\);

-- Location: LCCOMB_X16_Y13_N16
\b2v_inst|b2v_inst2|b2v_inst21|o[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[1]~30_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~5_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~29_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|Mux7~3_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~29_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst21|Mux4~4_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~5_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~5_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|Mux4~4_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|Mux7~3_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~29_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~30_combout\);

-- Location: LCCOMB_X16_Y13_N2
\b2v_inst|b2v_inst2|b2v_inst19|o[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\ = (!\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~26_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\ & 
-- \b2v_inst|b2v_inst2|b2v_inst21|o[1]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~30_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~26_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\);

-- Location: LCCOMB_X19_Y12_N20
\b2v_inst|b2v_inst2|b2v_inst18|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|Mux5~1_combout\ = \b2v_inst|b2v_inst2|b2v_inst10|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst10|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst10|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst10|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst18|Mux5~1_combout\);

-- Location: LCCOMB_X19_Y12_N18
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

-- Location: LCCOMB_X19_Y12_N12
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

-- Location: LCCOMB_X15_Y12_N12
\b2v_inst|b2v_inst2|b2v_inst18|o[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[0]~18_combout\ = (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst18|o[0]~17_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst10|q\(0))))) # (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst10|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst18|o[0]~17_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[0]~18_combout\);

-- Location: LCCOMB_X15_Y12_N22
\b2v_inst|b2v_inst2|b2v_inst18|o[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[0]~19_combout\ = (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\ & (\b2v_inst|b2v_inst2|b2v_inst10|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst10|q\(0) & \b2v_inst|b2v_inst2|b2v_inst18|o[0]~18_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst18|o[0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst10|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst10|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst18|o[0]~18_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[0]~19_combout\);

-- Location: LCCOMB_X14_Y13_N12
\b2v_inst|b2v_inst2|b2v_inst18|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|Mux3~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst10|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst10|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst10|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst10|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst10|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst10|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst18|Mux3~0_combout\);

-- Location: LCCOMB_X12_Y12_N10
\b2v_inst|b2v_inst2|b2v_inst18|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|Mux2~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst10|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst10|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst10|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst10|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst18|Mux2~0_combout\);

-- Location: LCCOMB_X12_Y12_N26
\b2v_inst|b2v_inst2|b2v_inst18|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|Mux10~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst10|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst10|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst10|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst10|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst10|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst10|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst18|Mux10~0_combout\);

-- Location: LCCOMB_X14_Y12_N28
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

-- Location: LCCOMB_X14_Y12_N6
\b2v_inst|b2v_inst2|b2v_inst18|o[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[0]~21_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst18|o[0]~20_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst18|Mux9~0_combout\))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst18|o[0]~20_combout\ & (\b2v_inst|b2v_inst2|b2v_inst18|Mux3~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst18|o[0]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst18|Mux3~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst18|Mux9~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst18|o[0]~20_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[0]~21_combout\);

-- Location: LCCOMB_X12_Y12_N4
\b2v_inst|b2v_inst2|b2v_inst18|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|Mux7~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst10|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst10|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst10|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst10|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst18|Mux7~0_combout\);

-- Location: LCCOMB_X12_Y12_N18
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

-- Location: LCCOMB_X12_Y12_N20
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

-- Location: LCCOMB_X15_Y12_N28
\b2v_inst|b2v_inst2|b2v_inst6|q[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst6|q[0]~4_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & (\b2v_inst|b2v_inst2|b2v_inst18|o[0]~21_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst18|o[0]~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst18|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst18|o[0]~23_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst6|q[0]~4_combout\);

-- Location: LCCOMB_X15_Y12_N26
\b2v_inst|b2v_inst2|b2v_inst6|q[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst6|q[0]~5_combout\ = \b2v_inst|b2v_inst2|b2v_inst6|q\(0) $ (((\b2v_inst|b2v_inst2|b2v_inst6|q[0]~4_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst18|o[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst18|o[0]~19_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst6|q[0]~4_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst6|q[0]~5_combout\);

-- Location: LCCOMB_X14_Y12_N0
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

-- Location: FF_X14_Y12_N1
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

-- Location: LCCOMB_X7_Y12_N4
\b2v_inst|b2v_inst2|b2v_inst34|O[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst34|O[0]~0_combout\ = (\b2v_inst|b2v_inst|di~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst6|q\(0)))) # (!\b2v_inst|b2v_inst|di~0_combout\ & (\b2v_inst|b2v_inst2|b2v_inst10|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst10|q\(0),
	datac => \b2v_inst|b2v_inst|di~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst34|O[0]~0_combout\);

-- Location: FF_X7_Y12_N5
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

-- Location: LCCOMB_X7_Y12_N20
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

-- Location: FF_X7_Y12_N21
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

-- Location: LCCOMB_X7_Y12_N28
\b2v_inst|b2v_inst2|b2v_inst22|O[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst22|O[0]~0_combout\ = (\b2v_inst|b2v_inst2|b2v_inst36|q\(0)) # (\b2v_inst|b2v_inst|di~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst36|q\(0),
	datac => \b2v_inst|b2v_inst|di~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst22|O[0]~0_combout\);

-- Location: FF_X7_Y12_N29
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

-- Location: LCCOMB_X17_Y10_N0
\b2v_inst|b2v_inst2|b2v_inst17|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|Mux9~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst9|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst9|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst9|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst9|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst9|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst9|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst9|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst17|Mux9~0_combout\);

-- Location: LCCOMB_X17_Y10_N18
\b2v_inst|b2v_inst2|b2v_inst17|o[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[0]~20_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\) # (\b2v_inst|b2v_inst2|b2v_inst17|Mux10~0_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst17|Mux2~0_combout\ & (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst17|Mux2~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst17|Mux10~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[0]~20_combout\);

-- Location: LCCOMB_X17_Y10_N4
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

-- Location: LCCOMB_X17_Y10_N2
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

-- Location: LCCOMB_X17_Y10_N20
\b2v_inst|b2v_inst2|b2v_inst17|o[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[0]~23_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst17|Mux7~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst9|q\(3) & \b2v_inst|b2v_inst2|b2v_inst17|o[0]~22_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst17|o[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst17|Mux7~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst9|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[0]~22_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[0]~23_combout\);

-- Location: LCCOMB_X17_Y10_N26
\b2v_inst|b2v_inst2|b2v_inst5|q[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst5|q[0]~4_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & (\b2v_inst|b2v_inst2|b2v_inst17|o[0]~21_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst17|o[0]~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst17|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[0]~23_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst5|q[0]~4_combout\);

-- Location: LCCOMB_X17_Y10_N12
\b2v_inst|b2v_inst2|b2v_inst17|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|Mux5~1_combout\ = \b2v_inst|b2v_inst2|b2v_inst9|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst9|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst9|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst9|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst17|Mux5~1_combout\);

-- Location: LCCOMB_X17_Y10_N10
\b2v_inst|b2v_inst2|b2v_inst17|o[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[0]~16_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst9|q\(2) $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst9|q\(3) & \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst9|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[0]~16_combout\);

-- Location: LCCOMB_X17_Y10_N24
\b2v_inst|b2v_inst2|b2v_inst17|o[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[0]~17_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst17|Mux5~1_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst9|q\(3) & \b2v_inst|b2v_inst2|b2v_inst17|o[0]~16_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst17|o[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst17|Mux5~1_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[0]~16_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[0]~17_combout\);

-- Location: LCCOMB_X17_Y14_N2
\b2v_inst|b2v_inst2|b2v_inst17|o[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[0]~18_combout\ = (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst17|o[0]~17_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\ & (\b2v_inst|b2v_inst2|b2v_inst9|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst9|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[0]~17_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[0]~18_combout\);

-- Location: LCCOMB_X17_Y14_N20
\b2v_inst|b2v_inst2|b2v_inst17|o[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[0]~19_combout\ = (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\ & (\b2v_inst|b2v_inst2|b2v_inst9|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst9|q\(0) & \b2v_inst|b2v_inst2|b2v_inst17|o[0]~18_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst17|o[0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst9|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[0]~18_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[0]~19_combout\);

-- Location: LCCOMB_X17_Y14_N18
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

-- Location: LCCOMB_X17_Y14_N16
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

-- Location: FF_X17_Y14_N17
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

-- Location: LCCOMB_X7_Y12_N8
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

-- Location: FF_X7_Y12_N9
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

-- Location: LCCOMB_X19_Y12_N28
\b2v_inst|b2v_inst2|b2v_inst18|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|Mux5~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst10|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst10|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst10|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst10|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst10|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst10|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst18|Mux5~0_combout\);

-- Location: LCCOMB_X14_Y13_N8
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

-- Location: LCCOMB_X14_Y13_N14
\b2v_inst|b2v_inst2|b2v_inst18|o[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[1]~15_combout\ = (\b2v_inst|b2v_inst2|b2v_inst18|o[1]~14_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst18|Mux5~0_combout\) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst18|o[1]~14_combout\ & (\b2v_inst|b2v_inst2|b2v_inst10|q\(2) & ((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst10|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst18|Mux5~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst18|o[1]~14_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[1]~15_combout\);

-- Location: LCCOMB_X14_Y13_N28
\b2v_inst|b2v_inst2|b2v_inst18|o[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[1]~12_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst10|q\(3) $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst10|q\(1) & !\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst10|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst10|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[1]~12_combout\);

-- Location: LCCOMB_X14_Y13_N18
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

-- Location: LCCOMB_X14_Y13_N4
\b2v_inst|b2v_inst2|b2v_inst6|q[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst6|q[1]~2_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst18|o[1]~13_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst18|o[1]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst18|o[1]~15_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst18|o[1]~13_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst6|q[1]~2_combout\);

-- Location: LCCOMB_X14_Y13_N22
\b2v_inst|b2v_inst2|b2v_inst18|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|Mux7~1_combout\ = \b2v_inst|b2v_inst2|b2v_inst10|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst10|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst10|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst10|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst10|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst10|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst18|Mux7~1_combout\);

-- Location: LCCOMB_X19_Y12_N22
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

-- Location: LCCOMB_X12_Y12_N0
\b2v_inst|b2v_inst2|b2v_inst18|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|Mux0~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst10|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst10|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst10|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst10|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst18|Mux0~0_combout\);

-- Location: LCCOMB_X14_Y13_N20
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

-- Location: LCCOMB_X14_Y13_N10
\b2v_inst|b2v_inst2|b2v_inst18|o[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[1]~9_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst18|o[1]~8_combout\ & (\b2v_inst|b2v_inst2|b2v_inst18|Mux10~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst18|o[1]~8_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst18|Mux3~0_combout\))))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst18|o[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst18|Mux10~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst18|Mux3~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst18|o[1]~8_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[1]~9_combout\);

-- Location: LCCOMB_X14_Y13_N0
\b2v_inst|b2v_inst2|b2v_inst18|o[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[1]~10_combout\ = (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst18|o[1]~9_combout\) # (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst10|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst10|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst18|o[1]~9_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[1]~10_combout\);

-- Location: LCCOMB_X14_Y13_N6
\b2v_inst|b2v_inst2|b2v_inst18|o[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[1]~11_combout\ = (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst18|o[1]~10_combout\ & (\b2v_inst|b2v_inst2|b2v_inst18|Mux7~1_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst18|o[1]~10_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst18|Mux4~0_combout\))))) # (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst18|o[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst18|Mux7~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst18|Mux4~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst18|o[1]~10_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[1]~11_combout\);

-- Location: LCCOMB_X14_Y13_N26
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

-- Location: FF_X14_Y13_N13
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

-- Location: LCCOMB_X14_Y15_N22
\b2v_inst|b2v_inst2|b2v_inst14|o[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[3]~35_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst6|q\(0))))) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst14|Mux8~0_combout\ $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst2|q\(3) & !\b2v_inst|b2v_inst2|b2v_inst6|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst2|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst14|Mux8~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~35_combout\);

-- Location: LCCOMB_X14_Y15_N8
\b2v_inst|b2v_inst2|b2v_inst14|o[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[3]~36_combout\ = (\b2v_inst|b2v_inst2|b2v_inst14|o[3]~35_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst14|Mux10~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(1)))) # (!\b2v_inst|b2v_inst2|b2v_inst14|o[3]~35_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst14|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~35_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|Mux10~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|Mux9~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~36_combout\);

-- Location: LCCOMB_X14_Y14_N6
\b2v_inst|b2v_inst2|b2v_inst14|o[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[3]~37_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst6|q\(1))))) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & 
-- ((\b2v_inst|b2v_inst2|b2v_inst14|Mux5~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst14|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst14|Mux4~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst14|Mux5~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~37_combout\);

-- Location: LCCOMB_X14_Y14_N0
\b2v_inst|b2v_inst2|b2v_inst14|o[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[3]~38_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst2|q\(0) $ (((\b2v_inst|b2v_inst2|b2v_inst2|q\(2) & \b2v_inst|b2v_inst2|b2v_inst14|o[3]~37_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst14|o[3]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst2|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst2|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~37_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~38_combout\);

-- Location: LCCOMB_X14_Y15_N6
\b2v_inst|b2v_inst2|b2v_inst14|o[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[3]~39_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(3) & ((\b2v_inst|b2v_inst2|b2v_inst6|q\(2) & (\b2v_inst|b2v_inst2|b2v_inst14|o[3]~36_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(2) & 
-- ((\b2v_inst|b2v_inst2|b2v_inst14|o[3]~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~36_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~38_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~39_combout\);

-- Location: LCCOMB_X18_Y13_N12
\b2v_inst|b2v_inst2|b2v_inst13|o[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[3]~38_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst5|q\(0))))) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst1|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst1|q\(3) & 
-- \b2v_inst|b2v_inst2|b2v_inst5|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst1|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst1|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[3]~38_combout\);

-- Location: LCCOMB_X18_Y13_N30
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

-- Location: LCCOMB_X18_Y13_N16
\b2v_inst|b2v_inst2|b2v_inst13|o[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[3]~40_combout\ = (\b2v_inst|b2v_inst2|b2v_inst13|o[0]~8_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst13|o[3]~39_combout\) # (!\b2v_inst|b2v_inst2|b2v_inst13|o[0]~7_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst13|o[0]~8_combout\ & (\b2v_inst|b2v_inst2|b2v_inst1|q\(3) & ((\b2v_inst|b2v_inst2|b2v_inst13|o[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst1|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~8_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst13|o[3]~39_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~7_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[3]~40_combout\);

-- Location: LCCOMB_X18_Y13_N18
\b2v_inst|b2v_inst2|b2v_inst13|o[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[3]~41_combout\ = (\b2v_inst|b2v_inst2|b2v_inst13|o[0]~10_combout\ & (\b2v_inst|b2v_inst2|b2v_inst1|q\(2) $ (((\b2v_inst|b2v_inst2|b2v_inst1|q\(3) & \b2v_inst|b2v_inst2|b2v_inst13|o[3]~40_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst13|o[0]~10_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst13|o[3]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst1|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst1|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~10_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[3]~40_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[3]~41_combout\);

-- Location: LCCOMB_X18_Y13_N26
\b2v_inst|b2v_inst2|b2v_inst13|o[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[3]~35_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst13|Mux5~0_combout\) # (\b2v_inst|b2v_inst2|b2v_inst5|q\(0))))) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & 
-- (\b2v_inst|b2v_inst2|b2v_inst13|Mux4~0_combout\ & ((!\b2v_inst|b2v_inst2|b2v_inst5|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst13|Mux4~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst13|Mux5~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[3]~35_combout\);

-- Location: LCCOMB_X18_Y13_N0
\b2v_inst|b2v_inst2|b2v_inst13|o[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[3]~36_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst1|q\(0) $ (((\b2v_inst|b2v_inst2|b2v_inst1|q\(2) & \b2v_inst|b2v_inst2|b2v_inst13|o[3]~35_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst13|o[3]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst1|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|o[3]~35_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst1|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[3]~36_combout\);

-- Location: LCCOMB_X15_Y14_N16
\b2v_inst|b2v_inst2|b2v_inst13|o[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[3]~33_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst5|q\(0))))) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst13|Mux8~0_combout\ $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst1|q\(3) & !\b2v_inst|b2v_inst2|b2v_inst5|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst1|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|Mux8~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[3]~33_combout\);

-- Location: LCCOMB_X15_Y14_N30
\b2v_inst|b2v_inst2|b2v_inst13|o[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[3]~34_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst13|o[3]~33_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst13|Mux10~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst13|o[3]~33_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst13|Mux9~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst13|o[3]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst13|Mux9~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|Mux10~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[3]~33_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[3]~34_combout\);

-- Location: LCCOMB_X18_Y13_N10
\b2v_inst|b2v_inst2|b2v_inst13|o[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[3]~37_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(3) & ((\b2v_inst|b2v_inst2|b2v_inst5|q\(2) & ((\b2v_inst|b2v_inst2|b2v_inst13|o[3]~34_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(2) & 
-- (\b2v_inst|b2v_inst2|b2v_inst13|o[3]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst5|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst13|o[3]~36_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst5|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[3]~34_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[3]~37_combout\);

-- Location: LCCOMB_X18_Y13_N4
\b2v_inst|b2v_inst2|b2v_inst13|o[3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[3]~42_combout\ = (\b2v_inst|b2v_inst2|b2v_inst13|o[3]~37_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst5|q\(3) & \b2v_inst|b2v_inst2|b2v_inst13|o[3]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst5|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst13|o[3]~41_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[3]~37_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[3]~42_combout\);

-- Location: LCCOMB_X14_Y12_N4
\b2v_inst|b2v_inst2|b2v_inst14|o[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[3]~31_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst6|q\(0))) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst2|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & 
-- \b2v_inst|b2v_inst2|b2v_inst2|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst2|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst2|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~31_combout\);

-- Location: LCCOMB_X14_Y12_N10
\b2v_inst|b2v_inst2|b2v_inst14|o[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[3]~32_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst14|Mux2~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst2|q\(3) & \b2v_inst|b2v_inst2|b2v_inst14|o[3]~31_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst14|o[3]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst2|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|Mux2~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~32_combout\);

-- Location: LCCOMB_X14_Y12_N20
\b2v_inst|b2v_inst2|b2v_inst14|o[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[3]~33_combout\ = (\b2v_inst|b2v_inst2|b2v_inst14|o[3]~3_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst14|o[3]~32_combout\) # (!\b2v_inst|b2v_inst2|b2v_inst14|o[3]~2_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst14|o[3]~3_combout\ & (\b2v_inst|b2v_inst2|b2v_inst2|q\(3) & (\b2v_inst|b2v_inst2|b2v_inst14|o[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst2|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~3_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~32_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~33_combout\);

-- Location: LCCOMB_X14_Y12_N22
\b2v_inst|b2v_inst2|b2v_inst14|o[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[3]~34_combout\ = (\b2v_inst|b2v_inst2|b2v_inst14|o[3]~5_combout\ & (\b2v_inst|b2v_inst2|b2v_inst2|q\(2) $ (((\b2v_inst|b2v_inst2|b2v_inst2|q\(3) & \b2v_inst|b2v_inst2|b2v_inst14|o[3]~33_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst14|o[3]~5_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst14|o[3]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~5_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst2|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst2|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~33_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~34_combout\);

-- Location: LCCOMB_X18_Y13_N22
\b2v_inst|b2v_inst2|b2v_inst37|c[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\ = \b2v_inst|b2v_inst2|b2v_inst13|o[3]~42_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst14|o[3]~39_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst6|q\(3) & \b2v_inst|b2v_inst2|b2v_inst14|o[3]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~39_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|o[3]~42_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~34_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\);

-- Location: LCCOMB_X18_Y13_N24
\b2v_inst|b2v_inst2|b2v_inst37|c[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\ = \b2v_inst|b2v_inst2|b2v_inst|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[3]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~10_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~9_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\);

-- Location: FF_X17_Y13_N1
\b2v_inst|b2v_inst2|b2v_inst26|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => VCC,
	ena => \b2v_inst|b2v_inst|di~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst26|q\(3));

-- Location: LCCOMB_X17_Y13_N0
\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ = (\b2v_inst|b2v_inst2|b2v_inst26|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst26|q\(0) & ((!\b2v_inst|b2v_inst2|b2v_inst26|q\(3)))) # (!\b2v_inst|b2v_inst2|b2v_inst26|q\(0) & 
-- (\b2v_inst|b2v_inst2|b2v_inst26|q\(2))))) # (!\b2v_inst|b2v_inst2|b2v_inst26|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst26|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst26|q\(2) & \b2v_inst|b2v_inst2|b2v_inst26|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst26|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst26|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst26|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst26|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\);

-- Location: LCCOMB_X17_Y13_N26
\b2v_inst|b2v_inst2|b2v_inst21|o[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[1]~22_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\ $ 
-- (((!\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & \b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~22_combout\);

-- Location: LCCOMB_X16_Y13_N10
\b2v_inst|b2v_inst2|b2v_inst21|o[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[1]~23_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\ & !\b2v_inst|b2v_inst2|b2v_inst21|o[1]~22_combout\))))) 
-- # (!\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~22_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~23_combout\);

-- Location: LCCOMB_X16_Y13_N20
\b2v_inst|b2v_inst2|b2v_inst21|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|Mux5~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst37|c[2]~6_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~6_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|Mux5~0_combout\);

-- Location: LCCOMB_X15_Y13_N28
\b2v_inst|b2v_inst2|b2v_inst21|o[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[1]~24_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & (\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst21|Mux9~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst21|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|Mux2~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|Mux9~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~24_combout\);

-- Location: LCCOMB_X16_Y13_N12
\b2v_inst|b2v_inst2|b2v_inst21|o[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[1]~25_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~24_combout\ & (\b2v_inst|b2v_inst2|b2v_inst21|Mux5~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~24_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst37|c[2]~8_combout\))))) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|Mux5~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~8_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~24_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~25_combout\);

-- Location: LCCOMB_X16_Y13_N14
\b2v_inst|b2v_inst2|b2v_inst21|o[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[1]~26_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\ & (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~23_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~23_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~25_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~26_combout\);

-- Location: LCCOMB_X16_Y13_N30
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

-- Location: LCCOMB_X15_Y10_N10
\b2v_inst|b2v_inst2|b2v_inst17|o[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[1]~12_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst9|q\(3) $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst9|q\(1) & !\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst9|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[1]~12_combout\);

-- Location: LCCOMB_X15_Y10_N24
\b2v_inst|b2v_inst2|b2v_inst17|o[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[1]~13_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst9|q\(0) $ (((\b2v_inst|b2v_inst2|b2v_inst9|q\(1) & !\b2v_inst|b2v_inst2|b2v_inst17|o[1]~12_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst17|o[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst9|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[1]~12_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[1]~13_combout\);

-- Location: LCCOMB_X15_Y10_N26
\b2v_inst|b2v_inst2|b2v_inst17|o[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[1]~14_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst17|Mux9~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst17|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst17|Mux2~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst17|Mux9~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[1]~14_combout\);

-- Location: LCCOMB_X15_Y10_N16
\b2v_inst|b2v_inst2|b2v_inst17|o[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[1]~15_combout\ = (\b2v_inst|b2v_inst2|b2v_inst17|o[1]~14_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst17|Mux5~0_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst17|o[1]~14_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst9|q\(2) & \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst17|Mux5~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst9|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst17|o[1]~14_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[1]~15_combout\);

-- Location: LCCOMB_X15_Y10_N30
\b2v_inst|b2v_inst2|b2v_inst5|q[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst5|q[1]~2_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & (\b2v_inst|b2v_inst2|b2v_inst17|o[1]~13_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst17|o[1]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst17|o[1]~13_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[1]~15_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst5|q[1]~2_combout\);

-- Location: LCCOMB_X15_Y10_N6
\b2v_inst|b2v_inst2|b2v_inst17|o[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[1]~8_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst17|Mux5~1_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst17|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst17|Mux5~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst17|Mux0~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[1]~8_combout\);

-- Location: LCCOMB_X15_Y10_N4
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

-- Location: LCCOMB_X15_Y10_N2
\b2v_inst|b2v_inst2|b2v_inst17|o[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[1]~10_combout\ = (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst17|o[1]~9_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst9|q\(1) & \b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst17|o[1]~9_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst9|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[1]~10_combout\);

-- Location: LCCOMB_X15_Y10_N0
\b2v_inst|b2v_inst2|b2v_inst17|o[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst17|o[1]~11_combout\ = (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst17|o[1]~10_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst17|Mux7~1_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst17|o[1]~10_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst17|Mux4~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst17|o[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst17|Mux4~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst17|Mux7~1_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[1]~10_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst17|o[1]~11_combout\);

-- Location: LCCOMB_X15_Y10_N20
\b2v_inst|b2v_inst2|b2v_inst5|q[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst5|q[1]~3_combout\ = \b2v_inst|b2v_inst2|b2v_inst5|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst5|q[1]~2_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst17|o[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst5|q[1]~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst17|o[1]~11_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst5|q[1]~3_combout\);

-- Location: LCCOMB_X15_Y10_N28
\b2v_inst|b2v_inst2|b2v_inst5|q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst5|q[1]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst5|q[1]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst5|q[1]~3_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst5|q[1]~feeder_combout\);

-- Location: FF_X15_Y10_N29
\b2v_inst|b2v_inst2|b2v_inst5|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst5|q[1]~feeder_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst5|q\(1));

-- Location: LCCOMB_X7_Y12_N18
\b2v_inst|b2v_inst2|b2v_inst35|O[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst35|O[1]~1_combout\ = (\b2v_inst|b2v_inst|di~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst5|q\(1)))) # (!\b2v_inst|b2v_inst|di~0_combout\ & (\b2v_inst|b2v_inst2|b2v_inst9|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(1),
	datac => \b2v_inst|b2v_inst|di~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst35|O[1]~1_combout\);

-- Location: FF_X7_Y12_N19
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

-- Location: LCCOMB_X14_Y13_N24
\b2v_inst|b2v_inst2|b2v_inst18|o[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[2]~24_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst18|Mux5~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst18|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst18|Mux4~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst18|Mux5~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[2]~24_combout\);

-- Location: LCCOMB_X14_Y13_N2
\b2v_inst|b2v_inst2|b2v_inst18|o[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[2]~25_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst18|o[2]~24_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst18|Mux9~0_combout\))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst18|o[2]~24_combout\ & (\b2v_inst|b2v_inst2|b2v_inst18|Mux7~1_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst18|o[2]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst18|Mux7~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst18|Mux9~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst18|o[2]~24_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[2]~25_combout\);

-- Location: LCCOMB_X14_Y13_N16
\b2v_inst|b2v_inst2|b2v_inst18|o[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[2]~26_combout\ = (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst18|o[2]~25_combout\) # (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst10|q\(2) & (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst10|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst18|o[2]~25_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[2]~26_combout\);

-- Location: LCCOMB_X14_Y13_N30
\b2v_inst|b2v_inst2|b2v_inst18|o[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[2]~27_combout\ = (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\ & (\b2v_inst|b2v_inst2|b2v_inst10|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst10|q\(2) & \b2v_inst|b2v_inst2|b2v_inst18|o[2]~26_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst18|o[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst10|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst10|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst18|o[2]~26_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[2]~27_combout\);

-- Location: LCCOMB_X15_Y12_N20
\b2v_inst|b2v_inst2|b2v_inst18|o[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[2]~28_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst10|q\(0) $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst10|q\(2) & !\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst10|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst10|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[2]~28_combout\);

-- Location: LCCOMB_X15_Y12_N2
\b2v_inst|b2v_inst2|b2v_inst18|o[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[2]~29_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst18|Mux7~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst10|q\(2) & !\b2v_inst|b2v_inst2|b2v_inst18|o[2]~28_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst18|o[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst18|Mux7~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst10|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst18|o[2]~28_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[2]~29_combout\);

-- Location: LCCOMB_X14_Y12_N24
\b2v_inst|b2v_inst2|b2v_inst18|o[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[2]~30_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst18|Mux3~0_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst18|Mux0~0_combout\ & !\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst18|Mux3~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst18|Mux0~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[2]~30_combout\);

-- Location: LCCOMB_X14_Y12_N14
\b2v_inst|b2v_inst2|b2v_inst18|o[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[2]~31_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst10|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst10|q\(1) & \b2v_inst|b2v_inst2|b2v_inst18|o[2]~30_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst18|o[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst10|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst10|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst18|o[2]~30_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[2]~31_combout\);

-- Location: LCCOMB_X15_Y12_N16
\b2v_inst|b2v_inst2|b2v_inst6|q[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst6|q[2]~6_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & (\b2v_inst|b2v_inst2|b2v_inst18|o[2]~29_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst18|o[2]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst18|o[2]~29_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst18|o[2]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst6|q[2]~6_combout\);

-- Location: LCCOMB_X15_Y12_N18
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

-- Location: LCCOMB_X15_Y12_N14
\b2v_inst|b2v_inst2|b2v_inst6|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst6|q[2]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst6|q[2]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst6|q[2]~7_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst6|q[2]~feeder_combout\);

-- Location: FF_X15_Y12_N15
\b2v_inst|b2v_inst2|b2v_inst6|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst6|q[2]~feeder_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst6|q\(2));

-- Location: LCCOMB_X7_Y12_N0
\b2v_inst|b2v_inst2|b2v_inst34|O[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst34|O[2]~2_combout\ = (\b2v_inst|b2v_inst|di~0_combout\ & (\b2v_inst|b2v_inst2|b2v_inst6|q\(2))) # (!\b2v_inst|b2v_inst|di~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst10|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(2),
	datac => \b2v_inst|b2v_inst|di~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst10|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst34|O[2]~2_combout\);

-- Location: FF_X7_Y12_N1
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

-- Location: LCCOMB_X17_Y15_N8
\b2v_inst|b2v_inst2|b2v_inst19|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|Mux7~1_combout\ = \b2v_inst|b2v_inst2|b2v_inst11|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst11|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst11|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst11|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst11|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst19|Mux7~1_combout\);

-- Location: LCCOMB_X17_Y15_N22
\b2v_inst|b2v_inst2|b2v_inst19|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|Mux5~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst11|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst11|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst11|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst11|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst11|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst11|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst19|Mux5~0_combout\);

-- Location: LCCOMB_X17_Y15_N20
\b2v_inst|b2v_inst2|b2v_inst19|o[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[2]~27_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst19|Mux5~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst19|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst19|Mux4~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst19|Mux5~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[2]~27_combout\);

-- Location: LCCOMB_X17_Y15_N30
\b2v_inst|b2v_inst2|b2v_inst19|o[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[2]~28_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst19|o[2]~27_combout\ & (\b2v_inst|b2v_inst2|b2v_inst19|Mux9~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst19|o[2]~27_combout\ 
-- & ((\b2v_inst|b2v_inst2|b2v_inst19|Mux7~1_combout\))))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|o[2]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst19|Mux9~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst19|Mux7~1_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[2]~27_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[2]~28_combout\);

-- Location: LCCOMB_X16_Y15_N12
\b2v_inst|b2v_inst2|b2v_inst19|o[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[2]~29_combout\ = (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|o[2]~28_combout\) # (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst11|q\(2) & ((\b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[2]~28_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[2]~29_combout\);

-- Location: LCCOMB_X16_Y15_N14
\b2v_inst|b2v_inst2|b2v_inst19|o[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[2]~30_combout\ = (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\ & (\b2v_inst|b2v_inst2|b2v_inst11|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst11|q\(2) & \b2v_inst|b2v_inst2|b2v_inst19|o[2]~29_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|o[2]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst11|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[2]~29_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[2]~30_combout\);

-- Location: LCCOMB_X15_Y15_N16
\b2v_inst|b2v_inst2|b2v_inst19|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|Mux0~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst11|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst11|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst11|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst11|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst19|Mux0~0_combout\);

-- Location: LCCOMB_X16_Y12_N24
\b2v_inst|b2v_inst2|b2v_inst19|o[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[2]~33_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst19|Mux3~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst19|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst19|Mux3~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|Mux0~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[2]~33_combout\);

-- Location: LCCOMB_X16_Y12_N10
\b2v_inst|b2v_inst2|b2v_inst19|o[2]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[2]~34_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst11|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst11|q\(1) & \b2v_inst|b2v_inst2|b2v_inst19|o[2]~33_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|o[2]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst11|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[2]~33_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[2]~34_combout\);

-- Location: LCCOMB_X15_Y15_N14
\b2v_inst|b2v_inst2|b2v_inst19|o[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[2]~31_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst11|q\(0) $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst11|q\(2) & !\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst11|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[2]~31_combout\);

-- Location: LCCOMB_X15_Y15_N12
\b2v_inst|b2v_inst2|b2v_inst19|o[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[2]~32_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst19|Mux7~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst11|q\(2) & !\b2v_inst|b2v_inst2|b2v_inst19|o[2]~31_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|o[2]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst19|Mux7~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[2]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[2]~32_combout\);

-- Location: LCCOMB_X16_Y15_N16
\b2v_inst|b2v_inst2|b2v_inst7|q[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst7|q[2]~8_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst19|o[2]~32_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst19|o[2]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[2]~34_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[2]~32_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst7|q[2]~8_combout\);

-- Location: LCCOMB_X16_Y15_N6
\b2v_inst|b2v_inst2|b2v_inst7|q[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst7|q[2]~9_combout\ = \b2v_inst|b2v_inst2|b2v_inst7|q\(2) $ (((\b2v_inst|b2v_inst2|b2v_inst7|q[2]~8_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst19|o[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[2]~30_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q[2]~8_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst7|q[2]~9_combout\);

-- Location: LCCOMB_X16_Y15_N8
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

-- Location: FF_X16_Y15_N9
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

-- Location: LCCOMB_X7_Y12_N16
\b2v_inst|b2v_inst2|b2v_inst33|O[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst33|O[2]~2_combout\ = (\b2v_inst|b2v_inst|di~0_combout\ & (\b2v_inst|b2v_inst2|b2v_inst7|q\(2))) # (!\b2v_inst|b2v_inst|di~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst11|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q\(2),
	datac => \b2v_inst|b2v_inst|di~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst11|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst33|O[2]~2_combout\);

-- Location: FF_X7_Y12_N17
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

-- Location: LCCOMB_X7_Y12_N12
\b2v_inst|b2v_inst2|b2v_inst22|O[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst22|O[2]~2_combout\ = (\b2v_inst|b2v_inst2|b2v_inst36|q\(2) & !\b2v_inst|b2v_inst|di~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst36|q\(2),
	datac => \b2v_inst|b2v_inst|di~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst22|O[2]~2_combout\);

-- Location: FF_X7_Y12_N13
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

-- Location: LCCOMB_X7_Y12_N24
\b2v_inst|b2v_inst2|b2v_inst35|O[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst35|O[2]~2_combout\ = (\b2v_inst|b2v_inst|di~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst5|q\(2)))) # (!\b2v_inst|b2v_inst|di~0_combout\ & (\b2v_inst|b2v_inst2|b2v_inst9|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst9|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(2),
	datac => \b2v_inst|b2v_inst|di~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst35|O[2]~2_combout\);

-- Location: FF_X7_Y12_N25
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

-- Location: LCCOMB_X12_Y12_N6
\b2v_inst|b2v_inst2|b2v_inst18|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|Mux9~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst10|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst10|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst10|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst10|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst10|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst10|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst10|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst10|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst18|Mux9~0_combout\);

-- Location: LCCOMB_X15_Y12_N8
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

-- Location: LCCOMB_X15_Y12_N30
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

-- Location: LCCOMB_X19_Y12_N0
\b2v_inst|b2v_inst2|b2v_inst18|o[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[3]~6_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst18|Mux5~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst18|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst18|Mux4~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst18|Mux5~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[3]~6_combout\);

-- Location: LCCOMB_X19_Y12_N10
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

-- Location: LCCOMB_X15_Y12_N4
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

-- Location: LCCOMB_X12_Y12_N28
\b2v_inst|b2v_inst2|b2v_inst18|o[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[3]~0_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst10|q\(1) $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst10|q\(3) & \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst10|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst10|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[3]~0_combout\);

-- Location: LCCOMB_X12_Y12_N24
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

-- Location: LCCOMB_X15_Y12_N0
\b2v_inst|b2v_inst2|b2v_inst18|o[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[3]~2_combout\ = (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst18|o[3]~1_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst10|q\(3))))) # (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\ & (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst10|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst18|o[3]~1_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[3]~2_combout\);

-- Location: LCCOMB_X15_Y12_N6
\b2v_inst|b2v_inst2|b2v_inst18|o[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst18|o[3]~3_combout\ = (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\ & (\b2v_inst|b2v_inst2|b2v_inst10|q\(2) $ (((\b2v_inst|b2v_inst2|b2v_inst10|q\(3) & \b2v_inst|b2v_inst2|b2v_inst18|o[3]~2_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst18|o[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst10|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst10|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst18|o[3]~2_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst18|o[3]~3_combout\);

-- Location: LCCOMB_X15_Y12_N10
\b2v_inst|b2v_inst2|b2v_inst6|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst6|q[3]~1_combout\ = \b2v_inst|b2v_inst2|b2v_inst6|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst6|q[3]~0_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst18|o[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst6|q[3]~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst18|o[3]~3_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst6|q[3]~1_combout\);

-- Location: LCCOMB_X15_Y12_N24
\b2v_inst|b2v_inst2|b2v_inst6|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst6|q[3]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst6|q[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst6|q[3]~1_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst6|q[3]~feeder_combout\);

-- Location: FF_X15_Y12_N25
\b2v_inst|b2v_inst2|b2v_inst6|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst6|q[3]~feeder_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst6|q\(3));

-- Location: LCCOMB_X14_Y14_N26
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

-- Location: LCCOMB_X14_Y14_N16
\b2v_inst|b2v_inst2|b2v_inst14|o[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[1]~17_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst2|q\(0) $ (((\b2v_inst|b2v_inst2|b2v_inst2|q\(1) & !\b2v_inst|b2v_inst2|b2v_inst14|o[1]~16_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst14|o[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst2|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst2|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|o[1]~16_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[1]~17_combout\);

-- Location: LCCOMB_X14_Y14_N10
\b2v_inst|b2v_inst2|b2v_inst14|o[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[1]~18_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst6|q\(1))) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & 
-- (\b2v_inst|b2v_inst2|b2v_inst14|Mux9~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst14|Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|Mux9~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|Mux2~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[1]~18_combout\);

-- Location: LCCOMB_X14_Y14_N28
\b2v_inst|b2v_inst2|b2v_inst14|o[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[1]~19_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst14|o[1]~18_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst14|Mux5~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst14|o[1]~18_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst2|q\(2))))) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst14|o[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst2|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|Mux5~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[1]~18_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[1]~19_combout\);

-- Location: LCCOMB_X18_Y14_N28
\b2v_inst|b2v_inst2|b2v_inst14|o[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[1]~20_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(3) & ((\b2v_inst|b2v_inst2|b2v_inst6|q\(2) & (\b2v_inst|b2v_inst2|b2v_inst14|o[1]~17_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(2) & 
-- ((\b2v_inst|b2v_inst2|b2v_inst14|o[1]~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst14|o[1]~17_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst6|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[1]~19_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[1]~20_combout\);

-- Location: LCCOMB_X18_Y14_N4
\b2v_inst|b2v_inst2|b2v_inst14|o[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[1]~12_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst6|q\(0))) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & 
-- (\b2v_inst|b2v_inst2|b2v_inst14|Mux3~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst14|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|Mux3~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|Mux0~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[1]~12_combout\);

-- Location: LCCOMB_X14_Y14_N20
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

-- Location: LCCOMB_X18_Y14_N26
\b2v_inst|b2v_inst2|b2v_inst14|o[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[1]~13_combout\ = (\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst14|o[1]~12_combout\ & (\b2v_inst|b2v_inst2|b2v_inst14|Mux10~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst14|o[1]~12_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst14|Mux6~0_combout\))))) # (!\b2v_inst|b2v_inst2|b2v_inst6|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst14|o[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst14|Mux10~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst14|o[1]~12_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|Mux6~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[1]~13_combout\);

-- Location: LCCOMB_X18_Y14_N20
\b2v_inst|b2v_inst2|b2v_inst14|o[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[1]~14_combout\ = (\b2v_inst|b2v_inst2|b2v_inst14|o[3]~3_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst14|o[1]~13_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst14|o[3]~2_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst14|o[3]~3_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst2|q\(1) & \b2v_inst|b2v_inst2|b2v_inst14|o[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst14|o[1]~13_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst2|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~3_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~2_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[1]~14_combout\);

-- Location: LCCOMB_X18_Y14_N18
\b2v_inst|b2v_inst2|b2v_inst14|o[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|o[1]~15_combout\ = (\b2v_inst|b2v_inst2|b2v_inst14|o[3]~5_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst14|o[1]~14_combout\ & (\b2v_inst|b2v_inst2|b2v_inst14|Mux7~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst14|o[1]~14_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst14|Mux4~0_combout\))))) # (!\b2v_inst|b2v_inst2|b2v_inst14|o[3]~5_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst14|o[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst14|Mux7~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst14|Mux4~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst14|o[3]~5_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[1]~14_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst14|o[1]~15_combout\);

-- Location: LCCOMB_X16_Y14_N12
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

-- Location: LCCOMB_X18_Y14_N12
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

-- Location: LCCOMB_X18_Y14_N10
\b2v_inst|b2v_inst2|b2v_inst13|o[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[1]~19_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst13|o[1]~18_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst13|Mux10~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst13|o[1]~18_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst13|Mux6~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst13|o[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst13|Mux6~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|Mux10~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~18_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~19_combout\);

-- Location: LCCOMB_X18_Y14_N16
\b2v_inst|b2v_inst2|b2v_inst13|o[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[1]~20_combout\ = (\b2v_inst|b2v_inst2|b2v_inst13|o[0]~7_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst13|o[0]~8_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst13|o[1]~19_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst13|o[0]~8_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst1|q\(1))))) # (!\b2v_inst|b2v_inst2|b2v_inst13|o[0]~7_combout\ & (\b2v_inst|b2v_inst2|b2v_inst13|o[0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~7_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~8_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst1|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~19_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~20_combout\);

-- Location: LCCOMB_X18_Y14_N14
\b2v_inst|b2v_inst2|b2v_inst13|o[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[1]~21_combout\ = (\b2v_inst|b2v_inst2|b2v_inst13|o[0]~10_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst13|o[1]~20_combout\ & (\b2v_inst|b2v_inst2|b2v_inst13|Mux7~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst13|o[1]~20_combout\ 
-- & ((\b2v_inst|b2v_inst2|b2v_inst13|Mux4~0_combout\))))) # (!\b2v_inst|b2v_inst2|b2v_inst13|o[0]~10_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst13|o[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst13|Mux7~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst13|o[0]~10_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst13|Mux4~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~20_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~21_combout\);

-- Location: LCCOMB_X17_Y14_N26
\b2v_inst|b2v_inst2|b2v_inst13|o[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[1]~13_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst5|q\(0))))) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst1|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst1|q\(1) & 
-- !\b2v_inst|b2v_inst2|b2v_inst5|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst1|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst1|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~13_combout\);

-- Location: LCCOMB_X17_Y14_N0
\b2v_inst|b2v_inst2|b2v_inst13|o[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[1]~14_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst1|q\(0) $ (((\b2v_inst|b2v_inst2|b2v_inst1|q\(1) & !\b2v_inst|b2v_inst2|b2v_inst13|o[1]~13_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst13|o[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst1|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst1|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~13_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~14_combout\);

-- Location: LCCOMB_X17_Y14_N6
\b2v_inst|b2v_inst2|b2v_inst13|o[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[1]~15_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst5|q\(0)) # ((\b2v_inst|b2v_inst2|b2v_inst13|Mux9~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(1) & 
-- (!\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst13|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|Mux9~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|Mux2~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~15_combout\);

-- Location: LCCOMB_X17_Y14_N28
\b2v_inst|b2v_inst2|b2v_inst13|o[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[1]~16_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst13|o[1]~15_combout\ & (\b2v_inst|b2v_inst2|b2v_inst13|Mux5~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst13|o[1]~15_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst1|q\(2)))))) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst13|o[1]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst13|Mux5~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst1|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~15_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~16_combout\);

-- Location: LCCOMB_X18_Y14_N2
\b2v_inst|b2v_inst2|b2v_inst13|o[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[1]~17_combout\ = (\b2v_inst|b2v_inst2|b2v_inst5|q\(3) & ((\b2v_inst|b2v_inst2|b2v_inst5|q\(2) & (\b2v_inst|b2v_inst2|b2v_inst13|o[1]~14_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst5|q\(2) & 
-- ((\b2v_inst|b2v_inst2|b2v_inst13|o[1]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst5|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~14_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~16_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~17_combout\);

-- Location: LCCOMB_X18_Y14_N0
\b2v_inst|b2v_inst2|b2v_inst13|o[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst13|o[1]~22_combout\ = (\b2v_inst|b2v_inst2|b2v_inst13|o[1]~17_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst5|q\(3) & \b2v_inst|b2v_inst2|b2v_inst13|o[1]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst5|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~17_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~22_combout\);

-- Location: LCCOMB_X18_Y14_N22
\b2v_inst|b2v_inst2|b2v_inst37|c[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst37|c[1]~13_combout\ = \b2v_inst|b2v_inst2|b2v_inst13|o[1]~22_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst14|o[1]~20_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst6|q\(3) & \b2v_inst|b2v_inst2|b2v_inst14|o[1]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst14|o[1]~20_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst14|o[1]~15_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~22_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~13_combout\);

-- Location: LCCOMB_X19_Y11_N28
\b2v_inst|b2v_inst2|b2v_inst16|o[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[1]~14_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst8|q\(1))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & 
-- (\b2v_inst|b2v_inst2|b2v_inst16|Mux9~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst16|Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst16|Mux9~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst16|Mux2~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[1]~14_combout\);

-- Location: LCCOMB_X18_Y11_N4
\b2v_inst|b2v_inst2|b2v_inst16|o[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[1]~15_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst16|o[1]~14_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst16|Mux5~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst16|o[1]~14_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst4|q\(2))))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst16|o[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst16|Mux5~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[1]~14_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[1]~15_combout\);

-- Location: LCCOMB_X17_Y11_N18
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

-- Location: LCCOMB_X17_Y11_N8
\b2v_inst|b2v_inst2|b2v_inst16|o[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[1]~13_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst4|q\(0) $ (((\b2v_inst|b2v_inst2|b2v_inst4|q\(1) & !\b2v_inst|b2v_inst2|b2v_inst16|o[1]~12_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst16|o[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst4|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst4|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[1]~12_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[1]~13_combout\);

-- Location: LCCOMB_X18_Y11_N18
\b2v_inst|b2v_inst2|b2v_inst16|o[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[1]~16_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(3) & ((\b2v_inst|b2v_inst2|b2v_inst8|q\(2) & ((\b2v_inst|b2v_inst2|b2v_inst16|o[1]~13_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(2) & 
-- (\b2v_inst|b2v_inst2|b2v_inst16|o[1]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst8|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst16|o[1]~15_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst8|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[1]~13_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[1]~16_combout\);

-- Location: LCCOMB_X19_Y14_N26
\b2v_inst|b2v_inst2|b2v_inst15|o[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[1]~13_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst7|q\(0))) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst3|q\(3) $ (((!\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & 
-- \b2v_inst|b2v_inst2|b2v_inst3|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst3|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst3|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~13_combout\);

-- Location: LCCOMB_X19_Y14_N8
\b2v_inst|b2v_inst2|b2v_inst15|o[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[1]~14_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst3|q\(0) $ (((\b2v_inst|b2v_inst2|b2v_inst3|q\(1) & !\b2v_inst|b2v_inst2|b2v_inst15|o[1]~13_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst15|o[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst3|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst3|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~13_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~14_combout\);

-- Location: LCCOMB_X19_Y14_N6
\b2v_inst|b2v_inst2|b2v_inst15|o[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[1]~15_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst7|q\(1))) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & 
-- (\b2v_inst|b2v_inst2|b2v_inst15|Mux9~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst15|Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|Mux9~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|Mux2~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~15_combout\);

-- Location: LCCOMB_X19_Y14_N20
\b2v_inst|b2v_inst2|b2v_inst15|o[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[1]~16_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst15|o[1]~15_combout\ & (\b2v_inst|b2v_inst2|b2v_inst15|Mux5~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst15|o[1]~15_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst3|q\(2)))))) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst15|o[1]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst15|Mux5~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst3|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~15_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~16_combout\);

-- Location: LCCOMB_X19_Y14_N30
\b2v_inst|b2v_inst2|b2v_inst15|o[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[1]~17_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(3) & ((\b2v_inst|b2v_inst2|b2v_inst7|q\(2) & (\b2v_inst|b2v_inst2|b2v_inst15|o[1]~14_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(2) & 
-- ((\b2v_inst|b2v_inst2|b2v_inst15|o[1]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~14_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~16_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~17_combout\);

-- Location: LCCOMB_X19_Y13_N22
\b2v_inst|b2v_inst2|b2v_inst15|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|Mux7~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst3|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst3|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst3|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst3|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst3|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst3|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|Mux7~0_combout\);

-- Location: LCCOMB_X19_Y13_N12
\b2v_inst|b2v_inst2|b2v_inst15|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|Mux6~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst3|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst3|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst3|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst3|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|Mux6~0_combout\);

-- Location: LCCOMB_X19_Y13_N0
\b2v_inst|b2v_inst2|b2v_inst15|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|Mux0~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst3|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst3|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst3|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst3|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|Mux0~0_combout\);

-- Location: LCCOMB_X19_Y14_N16
\b2v_inst|b2v_inst2|b2v_inst15|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|Mux3~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst3|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst3|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst3|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst3|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst3|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst3|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y14_N4
\b2v_inst|b2v_inst2|b2v_inst15|o[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[1]~18_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst7|q\(1)) # (\b2v_inst|b2v_inst2|b2v_inst15|Mux3~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & 
-- (\b2v_inst|b2v_inst2|b2v_inst15|Mux0~0_combout\ & (!\b2v_inst|b2v_inst2|b2v_inst7|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst15|Mux0~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst15|Mux3~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~18_combout\);

-- Location: LCCOMB_X19_Y14_N2
\b2v_inst|b2v_inst2|b2v_inst15|o[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[1]~19_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst15|o[1]~18_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst15|Mux10~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst15|o[1]~18_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst15|Mux6~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst15|o[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst15|Mux6~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~18_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|Mux10~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~19_combout\);

-- Location: LCCOMB_X19_Y14_N12
\b2v_inst|b2v_inst2|b2v_inst15|o[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[1]~20_combout\ = (\b2v_inst|b2v_inst2|b2v_inst15|o[2]~7_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst15|o[2]~8_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst15|o[1]~19_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst15|o[2]~8_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst3|q\(1))))) # (!\b2v_inst|b2v_inst2|b2v_inst15|o[2]~7_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst15|o[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst3|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~7_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~8_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~19_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~20_combout\);

-- Location: LCCOMB_X19_Y14_N18
\b2v_inst|b2v_inst2|b2v_inst15|o[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[1]~21_combout\ = (\b2v_inst|b2v_inst2|b2v_inst15|o[2]~10_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst15|o[1]~20_combout\ & (\b2v_inst|b2v_inst2|b2v_inst15|Mux7~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst15|o[1]~20_combout\ 
-- & ((\b2v_inst|b2v_inst2|b2v_inst15|Mux4~0_combout\))))) # (!\b2v_inst|b2v_inst2|b2v_inst15|o[2]~10_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst15|o[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst15|Mux7~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst15|Mux4~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~10_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~20_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~21_combout\);

-- Location: LCCOMB_X19_Y14_N24
\b2v_inst|b2v_inst2|b2v_inst15|o[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[1]~22_combout\ = (\b2v_inst|b2v_inst2|b2v_inst15|o[1]~17_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst7|q\(3) & \b2v_inst|b2v_inst2|b2v_inst15|o[1]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~17_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~22_combout\);

-- Location: LCCOMB_X19_Y14_N22
\b2v_inst|b2v_inst2|b2v_inst37|c[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst37|c[1]~12_combout\ = \b2v_inst|b2v_inst2|b2v_inst15|o[1]~22_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst16|o[1]~16_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst16|o[1]~20_combout\ & !\b2v_inst|b2v_inst2|b2v_inst8|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst16|o[1]~20_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst16|o[1]~16_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~22_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~12_combout\);

-- Location: LCCOMB_X16_Y14_N0
\b2v_inst|b2v_inst2|b2v_inst21|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|Mux7~2_combout\ = \b2v_inst|b2v_inst2|b2v_inst37|c[1]~13_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst37|c[1]~12_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~13_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~12_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|Mux7~2_combout\);

-- Location: LCCOMB_X17_Y13_N10
\b2v_inst|b2v_inst2|b2v_inst21|o[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[2]~32_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\ $ 
-- (((!\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & \b2v_inst|b2v_inst2|b2v_inst37|c[2]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~8_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~32_combout\);

-- Location: LCCOMB_X17_Y13_N24
\b2v_inst|b2v_inst2|b2v_inst21|o[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[2]~33_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst21|Mux7~2_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst37|c[2]~8_combout\ & !\b2v_inst|b2v_inst2|b2v_inst21|o[2]~32_combout\))))) 
-- # (!\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|Mux7~2_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~8_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~32_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~33_combout\);

-- Location: LCCOMB_X17_Y13_N18
\b2v_inst|b2v_inst2|b2v_inst21|o[2]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[2]~34_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst21|Mux3~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ 
-- & (!\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & (\b2v_inst|b2v_inst2|b2v_inst21|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|Mux0~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|Mux3~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~34_combout\);

-- Location: LCCOMB_X17_Y13_N20
\b2v_inst|b2v_inst2|b2v_inst21|o[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[2]~35_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & (\b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\ & \b2v_inst|b2v_inst2|b2v_inst21|o[2]~34_combout\))))) 
-- # (!\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~34_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~35_combout\);

-- Location: LCCOMB_X17_Y13_N30
\b2v_inst|b2v_inst2|b2v_inst21|o[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[2]~36_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\ & (\b2v_inst|b2v_inst2|b2v_inst21|o[2]~33_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~33_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~35_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~36_combout\);

-- Location: LCCOMB_X16_Y13_N4
\b2v_inst|b2v_inst2|b2v_inst21|o[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[2]~37_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst21|Mux5~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ 
-- & (!\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst21|Mux4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|Mux4~4_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|Mux5~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~37_combout\);

-- Location: LCCOMB_X16_Y13_N6
\b2v_inst|b2v_inst2|b2v_inst21|o[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[2]~38_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~37_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|Mux9~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[2]~37_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst21|Mux7~3_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|Mux7~3_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~37_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|Mux9~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~38_combout\);

-- Location: LCCOMB_X16_Y13_N28
\b2v_inst|b2v_inst2|b2v_inst21|o[2]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[2]~39_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~2_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~3_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~38_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~3_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst37|c[2]~8_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~2_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~3_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~8_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~38_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~39_combout\);

-- Location: LCCOMB_X16_Y13_N18
\b2v_inst|b2v_inst2|b2v_inst21|o[2]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[2]~40_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~5_combout\ & (\b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst37|c[2]~8_combout\ & \b2v_inst|b2v_inst2|b2v_inst21|o[2]~39_combout\))))) 
-- # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~5_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~5_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~8_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~39_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~40_combout\);

-- Location: LCCOMB_X16_Y13_N0
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

-- Location: LCCOMB_X17_Y15_N18
\b2v_inst|b2v_inst2|b2v_inst19|o[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[3]~9_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|Mux5~0_combout\) # (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst19|Mux4~0_combout\ & ((!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst19|Mux4~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst19|Mux5~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[3]~9_combout\);

-- Location: LCCOMB_X16_Y15_N22
\b2v_inst|b2v_inst2|b2v_inst19|o[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[3]~10_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst11|q\(0) $ (((\b2v_inst|b2v_inst2|b2v_inst11|q\(2) & \b2v_inst|b2v_inst2|b2v_inst19|o[3]~9_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|o[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst11|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst11|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[3]~9_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[3]~10_combout\);

-- Location: LCCOMB_X15_Y15_N24
\b2v_inst|b2v_inst2|b2v_inst19|o[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[3]~7_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst19|Mux7~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst11|q\(3) & !\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst19|Mux7~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[3]~7_combout\);

-- Location: LCCOMB_X15_Y15_N8
\b2v_inst|b2v_inst2|b2v_inst19|o[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[3]~8_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst19|o[3]~7_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst19|Mux10~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst19|o[3]~7_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst19|Mux9~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|o[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst19|Mux9~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst19|Mux10~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[3]~7_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[3]~8_combout\);

-- Location: LCCOMB_X16_Y15_N4
\b2v_inst|b2v_inst2|b2v_inst7|q[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst7|q[3]~2_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst19|o[3]~8_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst19|o[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[3]~10_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[3]~8_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~2_combout\);

-- Location: LCCOMB_X15_Y15_N4
\b2v_inst|b2v_inst2|b2v_inst19|o[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[3]~3_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst11|q\(1) $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst11|q\(3) & \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst11|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[3]~3_combout\);

-- Location: LCCOMB_X15_Y15_N26
\b2v_inst|b2v_inst2|b2v_inst19|o[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[3]~4_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst19|Mux2~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst11|q\(3) & \b2v_inst|b2v_inst2|b2v_inst19|o[3]~3_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|o[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst19|Mux2~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[3]~3_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[3]~4_combout\);

-- Location: LCCOMB_X16_Y15_N2
\b2v_inst|b2v_inst2|b2v_inst19|o[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[3]~5_combout\ = (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|o[3]~4_combout\) # (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst11|q\(3) & ((\b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[3]~4_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[3]~5_combout\);

-- Location: LCCOMB_X16_Y15_N28
\b2v_inst|b2v_inst2|b2v_inst19|o[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[3]~6_combout\ = (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\ & (\b2v_inst|b2v_inst2|b2v_inst11|q\(2) $ (((\b2v_inst|b2v_inst2|b2v_inst11|q\(3) & \b2v_inst|b2v_inst2|b2v_inst19|o[3]~5_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|o[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst11|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[3]~5_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[3]~6_combout\);

-- Location: LCCOMB_X16_Y15_N10
\b2v_inst|b2v_inst2|b2v_inst7|q[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst7|q[3]~3_combout\ = \b2v_inst|b2v_inst2|b2v_inst7|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst7|q[3]~2_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst19|o[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[3]~6_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~3_combout\);

-- Location: LCCOMB_X16_Y15_N0
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

-- Location: FF_X16_Y15_N1
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

-- Location: LCCOMB_X7_Y12_N30
\b2v_inst|b2v_inst2|b2v_inst33|O[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst33|O[3]~3_combout\ = (\b2v_inst|b2v_inst|di~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst7|q\(3)))) # (!\b2v_inst|b2v_inst|di~0_combout\ & (\b2v_inst|b2v_inst2|b2v_inst11|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst11|q\(3),
	datac => \b2v_inst|b2v_inst|di~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst33|O[3]~3_combout\);

-- Location: FF_X7_Y12_N31
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

-- Location: LCCOMB_X7_Y12_N14
\b2v_inst|b2v_inst2|b2v_inst22|O[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst22|O[3]~3_combout\ = (\b2v_inst|b2v_inst2|b2v_inst36|q\(3) & !\b2v_inst|b2v_inst|di~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst36|q\(3),
	datac => \b2v_inst|b2v_inst|di~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst22|O[3]~3_combout\);

-- Location: FF_X7_Y12_N15
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

-- Location: LCCOMB_X7_Y12_N22
\b2v_inst|b2v_inst2|b2v_inst35|O[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst35|O[3]~3_combout\ = (\b2v_inst|b2v_inst|di~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst5|q\(3)))) # (!\b2v_inst|b2v_inst|di~0_combout\ & (\b2v_inst|b2v_inst2|b2v_inst9|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst9|q\(3),
	datac => \b2v_inst|b2v_inst|di~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst5|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst35|O[3]~3_combout\);

-- Location: FF_X7_Y12_N23
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

-- Location: LCCOMB_X7_Y12_N10
\b2v_inst|b2v_inst2|b2v_inst34|O[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst34|O[3]~3_combout\ = (\b2v_inst|b2v_inst|di~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst6|q\(3)))) # (!\b2v_inst|b2v_inst|di~0_combout\ & (\b2v_inst|b2v_inst2|b2v_inst10|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst10|q\(3),
	datac => \b2v_inst|b2v_inst|di~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst6|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst34|O[3]~3_combout\);

-- Location: FF_X7_Y12_N11
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

-- Location: LCCOMB_X17_Y15_N4
\b2v_inst|b2v_inst2|b2v_inst19|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|Mux4~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst11|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst11|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst11|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst11|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst19|Mux4~0_combout\);

-- Location: LCCOMB_X17_Y15_N28
\b2v_inst|b2v_inst2|b2v_inst19|o[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[1]~11_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst19|Mux3~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst19|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst19|Mux0~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst19|Mux3~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[1]~11_combout\);

-- Location: LCCOMB_X17_Y15_N10
\b2v_inst|b2v_inst2|b2v_inst19|o[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[1]~12_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst19|o[1]~11_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst19|Mux10~0_combout\))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst19|o[1]~11_combout\ & (\b2v_inst|b2v_inst2|b2v_inst19|Mux5~1_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|o[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst19|Mux5~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst19|Mux10~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[1]~11_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[1]~12_combout\);

-- Location: LCCOMB_X17_Y15_N24
\b2v_inst|b2v_inst2|b2v_inst19|o[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[1]~13_combout\ = (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst19|o[1]~12_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst11|q\(1)))))) # (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\ & (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[1]~12_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst11|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[1]~13_combout\);

-- Location: LCCOMB_X17_Y15_N26
\b2v_inst|b2v_inst2|b2v_inst19|o[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[1]~14_combout\ = (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst19|o[1]~13_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst19|Mux7~1_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst19|o[1]~13_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst19|Mux4~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|o[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst19|Mux4~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst19|Mux7~1_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[1]~13_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[1]~14_combout\);

-- Location: LCCOMB_X15_Y15_N2
\b2v_inst|b2v_inst2|b2v_inst19|o[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[1]~15_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst11|q\(3) $ 
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
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[1]~15_combout\);

-- Location: LCCOMB_X15_Y15_N28
\b2v_inst|b2v_inst2|b2v_inst19|o[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[1]~16_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst11|q\(0) $ (((\b2v_inst|b2v_inst2|b2v_inst11|q\(1) & !\b2v_inst|b2v_inst2|b2v_inst19|o[1]~15_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|o[1]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst11|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[1]~15_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[1]~16_combout\);

-- Location: LCCOMB_X17_Y15_N12
\b2v_inst|b2v_inst2|b2v_inst19|o[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[1]~17_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst19|Mux9~0_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|Mux2~0_combout\ & !\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst19|Mux9~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst19|Mux2~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[1]~17_combout\);

-- Location: LCCOMB_X17_Y15_N2
\b2v_inst|b2v_inst2|b2v_inst19|o[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst19|o[1]~18_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst19|o[1]~17_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst19|Mux5~0_combout\))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst19|o[1]~17_combout\ & (\b2v_inst|b2v_inst2|b2v_inst11|q\(2))))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|o[1]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst11|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst19|Mux5~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[1]~17_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst19|o[1]~18_combout\);

-- Location: LCCOMB_X17_Y15_N16
\b2v_inst|b2v_inst2|b2v_inst7|q[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst7|q[1]~4_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & (\b2v_inst|b2v_inst2|b2v_inst19|o[1]~16_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst19|o[1]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[1]~16_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[1]~18_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst7|q[1]~4_combout\);

-- Location: LCCOMB_X17_Y15_N14
\b2v_inst|b2v_inst2|b2v_inst7|q[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst7|q[1]~5_combout\ = \b2v_inst|b2v_inst2|b2v_inst7|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst7|q[1]~4_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst19|o[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[1]~14_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q[1]~4_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst7|q[1]~5_combout\);

-- Location: FF_X17_Y15_N1
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

-- Location: LCCOMB_X7_Y12_N26
\b2v_inst|b2v_inst2|b2v_inst33|O[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst33|O[1]~1_combout\ = (\b2v_inst|b2v_inst|di~0_combout\ & (\b2v_inst|b2v_inst2|b2v_inst7|q\(1))) # (!\b2v_inst|b2v_inst|di~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst11|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst11|q\(1),
	datac => \b2v_inst|b2v_inst|di~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst33|O[1]~1_combout\);

-- Location: FF_X7_Y12_N27
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

-- Location: LCCOMB_X17_Y11_N28
\b2v_inst|b2v_inst2|b2v_inst20|o[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[1]~12_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst36|q\(3) $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst36|q\(1) & !\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst36|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst36|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[1]~12_combout\);

-- Location: LCCOMB_X17_Y11_N10
\b2v_inst|b2v_inst2|b2v_inst20|o[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[1]~13_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst36|q\(0) $ (((\b2v_inst|b2v_inst2|b2v_inst36|q\(1) & !\b2v_inst|b2v_inst2|b2v_inst20|o[1]~12_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|o[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst36|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst36|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[1]~12_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[1]~13_combout\);

-- Location: LCCOMB_X14_Y11_N14
\b2v_inst|b2v_inst2|b2v_inst20|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|Mux5~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst36|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst36|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst36|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst36|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst36|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst36|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst20|Mux5~0_combout\);

-- Location: LCCOMB_X17_Y11_N16
\b2v_inst|b2v_inst2|b2v_inst20|o[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[1]~14_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|Mux9~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst20|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst20|Mux2~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst20|Mux9~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[1]~14_combout\);

-- Location: LCCOMB_X17_Y11_N14
\b2v_inst|b2v_inst2|b2v_inst20|o[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[1]~15_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|o[1]~14_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|Mux5~0_combout\))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst20|o[1]~14_combout\ & (\b2v_inst|b2v_inst2|b2v_inst36|q\(2))))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|o[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst36|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst20|Mux5~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[1]~14_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[1]~15_combout\);

-- Location: LCCOMB_X17_Y11_N4
\b2v_inst|b2v_inst2|b2v_inst8|q[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst8|q[1]~2_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & (\b2v_inst|b2v_inst2|b2v_inst20|o[1]~13_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst20|o[1]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst20|o[1]~13_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst20|o[1]~15_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst8|q[1]~2_combout\);

-- Location: LCCOMB_X14_Y11_N16
\b2v_inst|b2v_inst2|b2v_inst20|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|Mux4~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst36|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst36|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst36|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst36|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst20|Mux4~0_combout\);

-- Location: LCCOMB_X16_Y11_N0
\b2v_inst|b2v_inst2|b2v_inst20|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|Mux7~1_combout\ = \b2v_inst|b2v_inst2|b2v_inst36|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst36|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst36|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst36|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst36|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst36|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst20|Mux7~1_combout\);

-- Location: LCCOMB_X17_Y11_N2
\b2v_inst|b2v_inst2|b2v_inst20|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|Mux0~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst36|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst36|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst36|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst36|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst20|Mux0~0_combout\);

-- Location: LCCOMB_X17_Y11_N12
\b2v_inst|b2v_inst2|b2v_inst20|o[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[1]~8_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst20|Mux5~1_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst20|Mux5~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst20|Mux0~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[1]~8_combout\);

-- Location: LCCOMB_X17_Y11_N30
\b2v_inst|b2v_inst2|b2v_inst20|o[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[1]~9_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|o[1]~8_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|Mux10~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst20|o[1]~8_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst20|Mux3~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|o[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst20|Mux3~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst20|Mux10~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[1]~8_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[1]~9_combout\);

-- Location: LCCOMB_X17_Y11_N20
\b2v_inst|b2v_inst2|b2v_inst20|o[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[1]~10_combout\ = (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst20|o[1]~9_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst36|q\(1)))))) # (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst20|o[1]~9_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst36|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[1]~10_combout\);

-- Location: LCCOMB_X17_Y11_N6
\b2v_inst|b2v_inst2|b2v_inst20|o[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[1]~11_combout\ = (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|o[1]~10_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|Mux7~1_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst20|o[1]~10_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst20|Mux4~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|o[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst20|Mux4~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst20|Mux7~1_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[1]~10_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[1]~11_combout\);

-- Location: LCCOMB_X17_Y11_N26
\b2v_inst|b2v_inst2|b2v_inst8|q[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst8|q[1]~3_combout\ = \b2v_inst|b2v_inst2|b2v_inst8|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst8|q[1]~2_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst20|o[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst8|q[1]~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[1]~11_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst8|q[1]~3_combout\);

-- Location: FF_X17_Y11_N1
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

-- Location: LCCOMB_X17_Y11_N22
\b2v_inst|b2v_inst2|b2v_inst16|o[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[3]~2_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(2)) # ((!\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & \b2v_inst|b2v_inst2|b2v_inst8|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst8|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~2_combout\);

-- Location: LCCOMB_X19_Y11_N30
\b2v_inst|b2v_inst2|b2v_inst16|o[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[2]~21_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst8|q\(0)) # (\b2v_inst|b2v_inst2|b2v_inst16|Mux7~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & 
-- (\b2v_inst|b2v_inst2|b2v_inst16|Mux4~0_combout\ & (!\b2v_inst|b2v_inst2|b2v_inst8|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst16|Mux4~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst16|Mux7~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~21_combout\);

-- Location: LCCOMB_X19_Y11_N24
\b2v_inst|b2v_inst2|b2v_inst16|o[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[2]~22_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst16|o[2]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst16|Mux9~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst16|o[2]~21_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst16|Mux5~0_combout\))))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst16|o[2]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst16|Mux9~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst16|Mux5~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~22_combout\);

-- Location: LCCOMB_X19_Y11_N10
\b2v_inst|b2v_inst2|b2v_inst16|o[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[2]~23_combout\ = (\b2v_inst|b2v_inst2|b2v_inst16|o[3]~2_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst16|o[3]~3_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst16|o[2]~22_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst16|o[3]~3_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst4|q\(2))))) # (!\b2v_inst|b2v_inst2|b2v_inst16|o[3]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst16|o[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~2_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~3_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~22_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~23_combout\);

-- Location: LCCOMB_X19_Y11_N12
\b2v_inst|b2v_inst2|b2v_inst16|o[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[2]~24_combout\ = (\b2v_inst|b2v_inst2|b2v_inst16|o[3]~5_combout\ & (\b2v_inst|b2v_inst2|b2v_inst4|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst4|q\(2) & \b2v_inst|b2v_inst2|b2v_inst16|o[2]~23_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst16|o[3]~5_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst16|o[2]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~5_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst4|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~23_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~24_combout\);

-- Location: LCCOMB_X19_Y13_N10
\b2v_inst|b2v_inst2|b2v_inst15|o[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[2]~28_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst7|q\(1))))) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & 
-- ((\b2v_inst|b2v_inst2|b2v_inst15|Mux7~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst15|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst15|Mux4~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst15|Mux7~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~28_combout\);

-- Location: LCCOMB_X19_Y13_N24
\b2v_inst|b2v_inst2|b2v_inst15|o[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[2]~29_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst15|o[2]~28_combout\ & (\b2v_inst|b2v_inst2|b2v_inst15|Mux9~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst15|o[2]~28_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst15|Mux5~0_combout\))))) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst15|o[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst15|Mux9~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst15|Mux5~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~28_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~29_combout\);

-- Location: LCCOMB_X19_Y13_N14
\b2v_inst|b2v_inst2|b2v_inst15|o[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[2]~30_combout\ = (\b2v_inst|b2v_inst2|b2v_inst15|o[2]~8_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst15|o[2]~29_combout\) # (!\b2v_inst|b2v_inst2|b2v_inst15|o[2]~7_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst15|o[2]~8_combout\ & (\b2v_inst|b2v_inst2|b2v_inst3|q\(2) & (\b2v_inst|b2v_inst2|b2v_inst15|o[2]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst3|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~8_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~7_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~29_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~30_combout\);

-- Location: LCCOMB_X19_Y13_N4
\b2v_inst|b2v_inst2|b2v_inst15|o[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[2]~31_combout\ = (\b2v_inst|b2v_inst2|b2v_inst15|o[2]~10_combout\ & (\b2v_inst|b2v_inst2|b2v_inst3|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst3|q\(2) & \b2v_inst|b2v_inst2|b2v_inst15|o[2]~30_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst15|o[2]~10_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst15|o[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst3|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst3|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~30_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~10_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~31_combout\);

-- Location: LCCOMB_X20_Y13_N28
\b2v_inst|b2v_inst2|b2v_inst15|o[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[2]~23_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst7|q\(0))))) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst3|q\(0) $ (((!\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & 
-- \b2v_inst|b2v_inst2|b2v_inst3|q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst3|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst3|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~23_combout\);

-- Location: LCCOMB_X20_Y13_N10
\b2v_inst|b2v_inst2|b2v_inst15|o[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[2]~24_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst15|Mux8~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst3|q\(2) & !\b2v_inst|b2v_inst2|b2v_inst15|o[2]~23_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst15|o[2]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst3|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|Mux8~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~23_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~24_combout\);

-- Location: LCCOMB_X19_Y13_N28
\b2v_inst|b2v_inst2|b2v_inst15|o[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[2]~25_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst7|q\(1))))) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & 
-- ((\b2v_inst|b2v_inst2|b2v_inst15|Mux3~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst15|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst15|Mux0~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst15|Mux3~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~25_combout\);

-- Location: LCCOMB_X19_Y13_N2
\b2v_inst|b2v_inst2|b2v_inst15|o[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[2]~26_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst3|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst3|q\(1) & \b2v_inst|b2v_inst2|b2v_inst15|o[2]~25_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst15|o[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst3|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst3|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~25_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~26_combout\);

-- Location: LCCOMB_X19_Y13_N20
\b2v_inst|b2v_inst2|b2v_inst15|o[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[2]~27_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(3) & ((\b2v_inst|b2v_inst2|b2v_inst7|q\(2) & (\b2v_inst|b2v_inst2|b2v_inst15|o[2]~24_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(2) & 
-- ((\b2v_inst|b2v_inst2|b2v_inst15|o[2]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~24_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~26_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~27_combout\);

-- Location: LCCOMB_X19_Y13_N30
\b2v_inst|b2v_inst2|b2v_inst15|o[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[2]~32_combout\ = (\b2v_inst|b2v_inst2|b2v_inst15|o[2]~27_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst7|q\(3) & \b2v_inst|b2v_inst2|b2v_inst15|o[2]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~27_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~32_combout\);

-- Location: LCCOMB_X20_Y11_N12
\b2v_inst|b2v_inst2|b2v_inst16|o[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[2]~25_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst8|q\(0))))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst4|q\(0) $ (((\b2v_inst|b2v_inst2|b2v_inst4|q\(2) & 
-- !\b2v_inst|b2v_inst2|b2v_inst8|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst4|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~25_combout\);

-- Location: LCCOMB_X20_Y11_N26
\b2v_inst|b2v_inst2|b2v_inst16|o[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[2]~26_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst16|Mux8~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst4|q\(2) & !\b2v_inst|b2v_inst2|b2v_inst16|o[2]~25_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst16|o[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst16|Mux8~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~25_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~26_combout\);

-- Location: LCCOMB_X18_Y11_N14
\b2v_inst|b2v_inst2|b2v_inst16|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|Mux3~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst4|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst4|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst4|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst4|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst16|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y11_N18
\b2v_inst|b2v_inst2|b2v_inst16|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|Mux0~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst4|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst4|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst16|Mux0~0_combout\);

-- Location: LCCOMB_X20_Y11_N0
\b2v_inst|b2v_inst2|b2v_inst16|o[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[2]~27_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst8|q\(1))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & 
-- (\b2v_inst|b2v_inst2|b2v_inst16|Mux3~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst16|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst16|Mux3~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst16|Mux0~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~27_combout\);

-- Location: LCCOMB_X20_Y11_N2
\b2v_inst|b2v_inst2|b2v_inst16|o[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[2]~28_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst4|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst4|q\(1) & \b2v_inst|b2v_inst2|b2v_inst16|o[2]~27_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst16|o[2]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst4|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~27_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~28_combout\);

-- Location: LCCOMB_X20_Y11_N8
\b2v_inst|b2v_inst2|b2v_inst16|o[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[2]~29_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(3) & ((\b2v_inst|b2v_inst2|b2v_inst8|q\(2) & (\b2v_inst|b2v_inst2|b2v_inst16|o[2]~26_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(2) & 
-- ((\b2v_inst|b2v_inst2|b2v_inst16|o[2]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst8|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~26_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~28_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~29_combout\);

-- Location: LCCOMB_X19_Y13_N16
\b2v_inst|b2v_inst2|b2v_inst37|c[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst37|c[2]~6_combout\ = \b2v_inst|b2v_inst2|b2v_inst15|o[2]~32_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst16|o[2]~29_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst16|o[2]~24_combout\ & !\b2v_inst|b2v_inst2|b2v_inst8|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~24_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~32_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[2]~29_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~6_combout\);

-- Location: LCCOMB_X15_Y13_N12
\b2v_inst|b2v_inst2|b2v_inst37|c[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst37|c[2]~8_combout\ = \b2v_inst|b2v_inst2|b2v_inst37|c[2]~6_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~6_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~7_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~8_combout\);

-- Location: FF_X17_Y13_N23
\b2v_inst|b2v_inst2|b2v_inst26|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~8_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => VCC,
	ena => \b2v_inst|b2v_inst|di~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst26|q\(2));

-- Location: LCCOMB_X17_Y13_N6
\b2v_inst|b2v_inst2|b2v_inst32|o[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\ = (\b2v_inst|b2v_inst2|b2v_inst26|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst26|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst26|q\(2) & \b2v_inst|b2v_inst2|b2v_inst26|q\(3)))))) # (!\b2v_inst|b2v_inst2|b2v_inst26|q\(0) & 
-- (\b2v_inst|b2v_inst2|b2v_inst26|q\(2) $ (((\b2v_inst|b2v_inst2|b2v_inst26|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst26|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst26|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst26|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst26|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\);

-- Location: LCCOMB_X17_Y12_N30
\b2v_inst|b2v_inst2|b2v_inst21|o[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[3]~7_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst21|Mux7~2_combout\ $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\ & !\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|Mux7~2_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~7_combout\);

-- Location: LCCOMB_X17_Y12_N20
\b2v_inst|b2v_inst2|b2v_inst21|o[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[3]~8_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[3]~7_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|Mux10~2_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[3]~7_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|Mux9~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~7_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|Mux10~2_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|Mux9~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~8_combout\);

-- Location: LCCOMB_X17_Y12_N22
\b2v_inst|b2v_inst2|b2v_inst21|o[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[3]~9_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|Mux5~0_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ 
-- & (((\b2v_inst|b2v_inst2|b2v_inst21|Mux4~4_combout\ & !\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|Mux5~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|Mux4~4_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~9_combout\);

-- Location: LCCOMB_X17_Y12_N24
\b2v_inst|b2v_inst2|b2v_inst21|o[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[3]~10_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & (\b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst21|o[3]~9_combout\ & \b2v_inst|b2v_inst2|b2v_inst37|c[2]~8_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~9_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~8_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~10_combout\);

-- Location: LCCOMB_X17_Y12_N26
\b2v_inst|b2v_inst2|b2v_inst21|o[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[3]~11_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\ & (\b2v_inst|b2v_inst2|b2v_inst21|o[3]~8_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst21|o[3]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[2]~3_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~8_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~10_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~11_combout\);

-- Location: LCCOMB_X17_Y12_N8
\b2v_inst|b2v_inst2|b2v_inst21|o[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[3]~0_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\ $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\ & \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst32|o[0]~1_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~0_combout\);

-- Location: LCCOMB_X17_Y12_N6
\b2v_inst|b2v_inst2|b2v_inst21|o[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[3]~1_combout\ = (\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (\b2v_inst|b2v_inst2|b2v_inst21|Mux2~2_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\ & \b2v_inst|b2v_inst2|b2v_inst21|o[3]~0_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|Mux2~2_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~1_combout\);

-- Location: LCCOMB_X17_Y12_N18
\b2v_inst|b2v_inst2|b2v_inst21|o[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[3]~4_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~2_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~3_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[3]~1_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~3_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~2_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~3_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~1_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~4_combout\);

-- Location: LCCOMB_X17_Y12_N12
\b2v_inst|b2v_inst2|b2v_inst21|o[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst21|o[3]~6_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~5_combout\ & (\b2v_inst|b2v_inst2|b2v_inst37|c[2]~8_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\ & \b2v_inst|b2v_inst2|b2v_inst21|o[3]~4_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~5_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~5_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~8_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~4_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~6_combout\);

-- Location: LCCOMB_X17_Y12_N0
\b2v_inst|b2v_inst2|b2v_inst7|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\ = (\b2v_inst|b2v_inst|estadoAtual.localizador~q\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[3]~11_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst21|o[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\,
	datab => \b2v_inst|b2v_inst|estadoAtual.localizador~q\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~11_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~6_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\);

-- Location: LCCOMB_X16_Y11_N8
\b2v_inst|b2v_inst2|b2v_inst20|o[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[2]~28_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst36|q\(0) $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst36|q\(2) & !\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst36|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst36|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[2]~28_combout\);

-- Location: LCCOMB_X16_Y11_N22
\b2v_inst|b2v_inst2|b2v_inst20|o[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[2]~29_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst20|Mux7~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst36|q\(2) & !\b2v_inst|b2v_inst2|b2v_inst20|o[2]~28_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|o[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst36|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst20|Mux7~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[2]~28_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[2]~29_combout\);

-- Location: LCCOMB_X16_Y11_N16
\b2v_inst|b2v_inst2|b2v_inst20|o[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[2]~30_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|Mux3~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst20|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst20|Mux0~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst20|Mux3~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[2]~30_combout\);

-- Location: LCCOMB_X16_Y11_N6
\b2v_inst|b2v_inst2|b2v_inst20|o[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[2]~31_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst36|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst36|q\(1) & \b2v_inst|b2v_inst2|b2v_inst20|o[2]~30_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|o[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst36|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst36|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[2]~30_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[2]~31_combout\);

-- Location: LCCOMB_X16_Y11_N4
\b2v_inst|b2v_inst2|b2v_inst8|q[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst8|q[2]~6_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & (\b2v_inst|b2v_inst2|b2v_inst20|o[2]~29_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst20|o[2]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst20|o[2]~29_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[2]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst8|q[2]~6_combout\);

-- Location: LCCOMB_X16_Y11_N28
\b2v_inst|b2v_inst2|b2v_inst20|o[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[2]~24_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|Mux5~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst20|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst20|Mux4~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst20|Mux5~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[2]~24_combout\);

-- Location: LCCOMB_X16_Y11_N10
\b2v_inst|b2v_inst2|b2v_inst20|o[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[2]~25_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|o[2]~24_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|Mux9~0_combout\))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst20|o[2]~24_combout\ & (\b2v_inst|b2v_inst2|b2v_inst20|Mux7~1_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|o[2]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst20|Mux7~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst20|Mux9~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[2]~24_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[2]~25_combout\);

-- Location: LCCOMB_X16_Y11_N24
\b2v_inst|b2v_inst2|b2v_inst20|o[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[2]~26_combout\ = (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|o[2]~25_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\ & \b2v_inst|b2v_inst2|b2v_inst36|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst20|o[2]~25_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst36|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[2]~26_combout\);

-- Location: LCCOMB_X16_Y11_N18
\b2v_inst|b2v_inst2|b2v_inst20|o[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[2]~27_combout\ = (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\ & (\b2v_inst|b2v_inst2|b2v_inst36|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst36|q\(2) & \b2v_inst|b2v_inst2|b2v_inst20|o[2]~26_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|o[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst36|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst36|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[2]~26_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[2]~27_combout\);

-- Location: LCCOMB_X16_Y11_N14
\b2v_inst|b2v_inst2|b2v_inst8|q[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst8|q[2]~7_combout\ = \b2v_inst|b2v_inst2|b2v_inst8|q\(2) $ (((\b2v_inst|b2v_inst2|b2v_inst8|q[2]~6_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst20|o[2]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst8|q[2]~6_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[2]~27_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst8|q[2]~7_combout\);

-- Location: FF_X16_Y11_N1
\b2v_inst|b2v_inst2|b2v_inst8|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|b2v_inst2|b2v_inst8|q[2]~7_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst8|q\(2));

-- Location: LCCOMB_X16_Y11_N12
\b2v_inst|b2v_inst2|b2v_inst16|o[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[3]~5_combout\ = (!\b2v_inst|b2v_inst2|b2v_inst8|q\(2) & \b2v_inst|b2v_inst2|b2v_inst8|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~5_combout\);

-- Location: LCCOMB_X18_Y11_N10
\b2v_inst|b2v_inst2|b2v_inst16|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|Mux6~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst4|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst4|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst4|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst16|Mux6~0_combout\);

-- Location: LCCOMB_X18_Y11_N8
\b2v_inst|b2v_inst2|b2v_inst16|o[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[1]~17_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst8|q\(1)) # ((\b2v_inst|b2v_inst2|b2v_inst16|Mux3~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & 
-- (!\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst16|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst16|Mux3~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst16|Mux0~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[1]~17_combout\);

-- Location: LCCOMB_X18_Y11_N30
\b2v_inst|b2v_inst2|b2v_inst16|o[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[1]~18_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst16|o[1]~17_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst16|Mux10~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst16|o[1]~17_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst16|Mux6~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst16|o[1]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst16|Mux6~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst16|o[1]~17_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst16|Mux10~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[1]~18_combout\);

-- Location: LCCOMB_X18_Y11_N0
\b2v_inst|b2v_inst2|b2v_inst16|o[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[1]~19_combout\ = (\b2v_inst|b2v_inst2|b2v_inst16|o[3]~3_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst16|o[1]~18_combout\) # (!\b2v_inst|b2v_inst2|b2v_inst16|o[3]~2_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst16|o[3]~3_combout\ & (\b2v_inst|b2v_inst2|b2v_inst4|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst16|o[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst4|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~3_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst16|o[1]~18_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~2_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[1]~19_combout\);

-- Location: LCCOMB_X18_Y11_N26
\b2v_inst|b2v_inst2|b2v_inst16|o[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[1]~20_combout\ = (\b2v_inst|b2v_inst2|b2v_inst16|o[3]~5_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst16|o[1]~19_combout\ & (\b2v_inst|b2v_inst2|b2v_inst16|Mux7~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst16|o[1]~19_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst16|Mux4~0_combout\))))) # (!\b2v_inst|b2v_inst2|b2v_inst16|o[3]~5_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst16|o[1]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst16|Mux7~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst16|Mux4~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~5_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[1]~19_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[1]~20_combout\);

-- Location: LCCOMB_X18_Y11_N20
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

-- Location: LCCOMB_X18_Y14_N6
\b2v_inst|b2v_inst2|b2v_inst37|c[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst37|c[1]~3_combout\ = \b2v_inst|b2v_inst2|b2v_inst|q\(1) $ (((!\b2v_inst|b2v_inst2|b2v_inst14|o[1]~20_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst6|q\(3)) # (!\b2v_inst|b2v_inst2|b2v_inst14|o[1]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst14|o[1]~20_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst14|o[1]~15_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~3_combout\);

-- Location: LCCOMB_X18_Y11_N22
\b2v_inst|b2v_inst2|b2v_inst37|c[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\ = \b2v_inst|b2v_inst2|b2v_inst37|c[1]~4_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst15|o[1]~22_combout\ $ (\b2v_inst|b2v_inst2|b2v_inst13|o[1]~22_combout\ $ (!\b2v_inst|b2v_inst2|b2v_inst37|c[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~4_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst15|o[1]~22_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst13|o[1]~22_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~3_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\);

-- Location: FF_X17_Y13_N13
\b2v_inst|b2v_inst2|b2v_inst26|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => VCC,
	ena => \b2v_inst|b2v_inst|di~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst26|q\(1));

-- Location: LCCOMB_X17_Y13_N22
\b2v_inst|b2v_inst2|b2v_inst32|o[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\ = (\b2v_inst|b2v_inst2|b2v_inst26|q\(3) & (\b2v_inst|b2v_inst2|b2v_inst26|q\(0) $ (((!\b2v_inst|b2v_inst2|b2v_inst26|q\(2)) # (!\b2v_inst|b2v_inst2|b2v_inst26|q\(1)))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst26|q\(3) & ((\b2v_inst|b2v_inst2|b2v_inst26|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst26|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst26|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst26|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst26|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst26|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\);

-- Location: LCCOMB_X17_Y12_N16
\b2v_inst|b2v_inst2|b2v_inst7|q[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\ = (\b2v_inst|b2v_inst|estadoAtual.localizador~q\ & (!\b2v_inst|b2v_inst2|b2v_inst21|o[3]~11_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst32|o[3]~0_combout\,
	datab => \b2v_inst|b2v_inst|estadoAtual.localizador~q\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~11_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[3]~6_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\);

-- Location: LCCOMB_X14_Y11_N26
\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst20|Mux7~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst36|q\(3) & !\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst36|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst20|Mux7~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\);

-- Location: LCCOMB_X14_Y11_N8
\b2v_inst|b2v_inst2|b2v_inst20|o[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[3]~5_combout\ = (\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|Mux10~0_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|Mux9~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst20|Mux10~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst20|Mux9~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~4_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~5_combout\);

-- Location: LCCOMB_X14_Y11_N10
\b2v_inst|b2v_inst2|b2v_inst20|o[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[3]~6_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst20|Mux5~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst20|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst20|Mux5~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst20|Mux4~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~6_combout\);

-- Location: LCCOMB_X14_Y11_N28
\b2v_inst|b2v_inst2|b2v_inst20|o[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[3]~7_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst|b2v_inst2|b2v_inst36|q\(0) $ (((\b2v_inst|b2v_inst2|b2v_inst36|q\(2) & \b2v_inst|b2v_inst2|b2v_inst20|o[3]~6_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|o[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst36|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst36|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~6_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~7_combout\);

-- Location: LCCOMB_X14_Y11_N30
\b2v_inst|b2v_inst2|b2v_inst8|q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst8|q[3]~0_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & (\b2v_inst|b2v_inst2|b2v_inst20|o[3]~5_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst20|o[3]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~5_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~7_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst8|q[3]~0_combout\);

-- Location: LCCOMB_X14_Y11_N2
\b2v_inst|b2v_inst2|b2v_inst20|o[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[3]~0_combout\ = (\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst|b2v_inst2|b2v_inst36|q\(1) $ 
-- (((\b2v_inst|b2v_inst2|b2v_inst36|q\(3) & \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst36|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst36|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~0_combout\);

-- Location: LCCOMB_X14_Y11_N4
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

-- Location: LCCOMB_X14_Y11_N6
\b2v_inst|b2v_inst2|b2v_inst20|o[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\ = (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|o[3]~1_combout\) # (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\ 
-- & (\b2v_inst|b2v_inst2|b2v_inst36|q\(3) & ((\b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst36|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~1_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~2_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~1_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\);

-- Location: LCCOMB_X14_Y11_N20
\b2v_inst|b2v_inst2|b2v_inst20|o[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\ = (\b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\ & (\b2v_inst|b2v_inst2|b2v_inst36|q\(2) $ (((\b2v_inst|b2v_inst2|b2v_inst36|q\(3) & \b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst36|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst36|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst19|o[0]~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~2_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\);

-- Location: LCCOMB_X14_Y11_N24
\b2v_inst|b2v_inst2|b2v_inst8|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst8|q[3]~1_combout\ = \b2v_inst|b2v_inst2|b2v_inst8|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst8|q[3]~0_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst8|q[3]~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst20|o[3]~3_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst8|q[3]~1_combout\);

-- Location: LCCOMB_X14_Y11_N12
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

-- Location: FF_X14_Y11_N13
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

-- Location: LCCOMB_X16_Y11_N20
\b2v_inst|b2v_inst2|b2v_inst16|o[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[0]~0_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst8|q\(0))))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst4|q\(2) $ (((\b2v_inst|b2v_inst2|b2v_inst4|q\(0) & 
-- \b2v_inst|b2v_inst2|b2v_inst8|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst4|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[0]~0_combout\);

-- Location: LCCOMB_X16_Y11_N30
\b2v_inst|b2v_inst2|b2v_inst16|o[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[0]~1_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst16|o[0]~0_combout\ & (\b2v_inst|b2v_inst2|b2v_inst16|Mux5~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst16|o[0]~0_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst16|Mux0~0_combout\))))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst16|o[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst16|Mux5~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst16|Mux0~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[0]~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[0]~1_combout\);

-- Location: LCCOMB_X16_Y11_N2
\b2v_inst|b2v_inst2|b2v_inst16|o[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[0]~4_combout\ = (\b2v_inst|b2v_inst2|b2v_inst16|o[3]~2_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst16|o[3]~3_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst16|o[0]~1_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst16|o[3]~3_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst4|q\(0))))) # (!\b2v_inst|b2v_inst2|b2v_inst16|o[3]~2_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst16|o[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst4|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~2_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst16|o[0]~1_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~3_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[0]~4_combout\);

-- Location: LCCOMB_X16_Y11_N26
\b2v_inst|b2v_inst2|b2v_inst16|o[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[0]~6_combout\ = (\b2v_inst|b2v_inst2|b2v_inst16|o[3]~5_combout\ & (\b2v_inst|b2v_inst2|b2v_inst4|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst4|q\(0) & \b2v_inst|b2v_inst2|b2v_inst16|o[0]~4_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst16|o[3]~5_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst16|o[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst16|o[3]~5_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst4|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[0]~4_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[0]~6_combout\);

-- Location: LCCOMB_X20_Y11_N20
\b2v_inst|b2v_inst2|b2v_inst16|o[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[0]~7_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & ((\b2v_inst|b2v_inst2|b2v_inst16|Mux10~0_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst8|q\(1))))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & 
-- (((!\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & \b2v_inst|b2v_inst2|b2v_inst16|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst16|Mux10~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst16|Mux2~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[0]~7_combout\);

-- Location: LCCOMB_X20_Y11_N30
\b2v_inst|b2v_inst2|b2v_inst16|o[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[0]~8_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst16|o[0]~7_combout\ & (\b2v_inst|b2v_inst2|b2v_inst16|Mux9~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst16|o[0]~7_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst16|Mux3~0_combout\))))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst16|o[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst16|Mux9~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst16|Mux3~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[0]~7_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[0]~8_combout\);

-- Location: LCCOMB_X20_Y11_N24
\b2v_inst|b2v_inst2|b2v_inst16|o[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[0]~9_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst8|q\(1))))) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst4|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst4|q\(3) & 
-- \b2v_inst|b2v_inst2|b2v_inst8|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst4|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[0]~9_combout\);

-- Location: LCCOMB_X20_Y11_N16
\b2v_inst|b2v_inst2|b2v_inst16|o[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[0]~10_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst16|Mux8~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst4|q\(3) & \b2v_inst|b2v_inst2|b2v_inst16|o[0]~9_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst8|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst16|o[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst16|Mux8~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[0]~9_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[0]~10_combout\);

-- Location: LCCOMB_X20_Y11_N18
\b2v_inst|b2v_inst2|b2v_inst16|o[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst16|o[0]~11_combout\ = (\b2v_inst|b2v_inst2|b2v_inst8|q\(3) & ((\b2v_inst|b2v_inst2|b2v_inst8|q\(2) & (\b2v_inst|b2v_inst2|b2v_inst16|o[0]~8_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst8|q\(2) & 
-- ((\b2v_inst|b2v_inst2|b2v_inst16|o[0]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst8|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst8|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst16|o[0]~8_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst16|o[0]~10_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst16|o[0]~11_combout\);

-- Location: LCCOMB_X19_Y14_N10
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

-- Location: LCCOMB_X19_Y14_N28
\b2v_inst|b2v_inst2|b2v_inst15|o[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[0]~1_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst15|o[0]~0_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst15|Mux9~0_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst15|o[0]~0_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst15|Mux3~0_combout\)))) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (((\b2v_inst|b2v_inst2|b2v_inst15|o[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst15|Mux3~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst15|Mux9~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[0]~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[0]~1_combout\);

-- Location: LCCOMB_X20_Y13_N6
\b2v_inst|b2v_inst2|b2v_inst15|o[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[0]~2_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst7|q\(1))))) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst3|q\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst3|q\(3) & 
-- \b2v_inst|b2v_inst2|b2v_inst7|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst3|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst3|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[0]~2_combout\);

-- Location: LCCOMB_X20_Y13_N18
\b2v_inst|b2v_inst2|b2v_inst15|o[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[0]~3_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & (\b2v_inst|b2v_inst2|b2v_inst15|Mux8~0_combout\ $ (((\b2v_inst|b2v_inst2|b2v_inst3|q\(3) & \b2v_inst|b2v_inst2|b2v_inst15|o[0]~2_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & (((\b2v_inst|b2v_inst2|b2v_inst15|o[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst3|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|Mux8~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[0]~2_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[0]~3_combout\);

-- Location: LCCOMB_X16_Y14_N8
\b2v_inst|b2v_inst2|b2v_inst15|o[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[0]~4_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(3) & ((\b2v_inst|b2v_inst2|b2v_inst7|q\(2) & (\b2v_inst|b2v_inst2|b2v_inst15|o[0]~1_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(2) & 
-- ((\b2v_inst|b2v_inst2|b2v_inst15|o[0]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|o[0]~1_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[0]~3_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[0]~4_combout\);

-- Location: LCCOMB_X18_Y15_N24
\b2v_inst|b2v_inst2|b2v_inst15|o[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[0]~5_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst7|q\(0))) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst3|q\(2) $ (((\b2v_inst|b2v_inst2|b2v_inst7|q\(0) & 
-- \b2v_inst|b2v_inst2|b2v_inst3|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst3|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst3|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[0]~5_combout\);

-- Location: LCCOMB_X18_Y15_N18
\b2v_inst|b2v_inst2|b2v_inst15|o[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[0]~6_combout\ = (\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & ((\b2v_inst|b2v_inst2|b2v_inst15|o[0]~5_combout\ & (\b2v_inst|b2v_inst2|b2v_inst15|Mux5~0_combout\)) # (!\b2v_inst|b2v_inst2|b2v_inst15|o[0]~5_combout\ & 
-- ((\b2v_inst|b2v_inst2|b2v_inst15|Mux0~0_combout\))))) # (!\b2v_inst|b2v_inst2|b2v_inst7|q\(1) & (\b2v_inst|b2v_inst2|b2v_inst15|o[0]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	datab => \b2v_inst|b2v_inst2|b2v_inst15|o[0]~5_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst15|Mux5~0_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|Mux0~0_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[0]~6_combout\);

-- Location: LCCOMB_X18_Y15_N20
\b2v_inst|b2v_inst2|b2v_inst15|o[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[0]~9_combout\ = (\b2v_inst|b2v_inst2|b2v_inst15|o[2]~7_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst15|o[2]~8_combout\ & ((\b2v_inst|b2v_inst2|b2v_inst15|o[0]~6_combout\))) # (!\b2v_inst|b2v_inst2|b2v_inst15|o[2]~8_combout\ & 
-- (\b2v_inst|b2v_inst2|b2v_inst3|q\(0))))) # (!\b2v_inst|b2v_inst2|b2v_inst15|o[2]~7_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst15|o[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~7_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst3|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~8_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[0]~6_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[0]~9_combout\);

-- Location: LCCOMB_X16_Y14_N10
\b2v_inst|b2v_inst2|b2v_inst15|o[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[0]~11_combout\ = (\b2v_inst|b2v_inst2|b2v_inst15|o[2]~10_combout\ & (\b2v_inst|b2v_inst2|b2v_inst3|q\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst3|q\(0) & \b2v_inst|b2v_inst2|b2v_inst15|o[0]~9_combout\))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst15|o[2]~10_combout\ & (((\b2v_inst|b2v_inst2|b2v_inst15|o[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst3|q\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst3|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|o[2]~10_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[0]~9_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[0]~11_combout\);

-- Location: LCCOMB_X16_Y14_N28
\b2v_inst|b2v_inst2|b2v_inst15|o[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|o[0]~12_combout\ = (\b2v_inst|b2v_inst2|b2v_inst15|o[0]~4_combout\) # ((!\b2v_inst|b2v_inst2|b2v_inst7|q\(3) & \b2v_inst|b2v_inst2|b2v_inst15|o[0]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|o[0]~4_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst15|o[0]~11_combout\,
	combout => \b2v_inst|b2v_inst2|b2v_inst15|o[0]~12_combout\);

-- Location: LCCOMB_X16_Y14_N26
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

-- Location: LCCOMB_X16_Y14_N18
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

-- Location: LCCOMB_X18_Y11_N12
\b2v_inst|b2v_inst2|Nerror~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|Nerror~0_combout\ = (\b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\) # ((\b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\) # (\b2v_inst|b2v_inst2|b2v_inst37|c[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst37|c[0]~2_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst37|c[1]~5_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~8_combout\,
	combout => \b2v_inst|b2v_inst2|Nerror~0_combout\);

-- Location: LCCOMB_X18_Y11_N6
\b2v_inst|b2v_inst|di~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst|di~0_combout\ = (\b2v_inst1|Impar~q\ & (\b2v_inst|b2v_inst|estadoAtual.localizador~q\ & (!\b2v_inst1|Count_8~q\ & \b2v_inst|b2v_inst2|Nerror~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Impar~q\,
	datab => \b2v_inst|b2v_inst|estadoAtual.localizador~q\,
	datac => \b2v_inst1|Count_8~q\,
	datad => \b2v_inst|b2v_inst2|Nerror~0_combout\,
	combout => \b2v_inst|b2v_inst|di~0_combout\);

-- Location: LCCOMB_X16_Y16_N2
\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~0_combout\ = (\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\) # (\b2v_inst|b2v_inst|estadoAtual.store~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	datad => \b2v_inst|b2v_inst|estadoAtual.store~q\,
	combout => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~0_combout\);

-- Location: FF_X16_Y16_N3
\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\);

-- Location: LCCOMB_X16_Y16_N0
\b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux2~feeder_combout\ = \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	combout => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.mux2~feeder_combout\);

-- Location: FF_X16_Y16_N1
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

-- Location: LCCOMB_X16_Y16_N16
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q[3]~feeder_combout\ = \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(2),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q[3]~feeder_combout\);

-- Location: CLKCTRL_G19
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

-- Location: LCCOMB_X16_Y16_N8
\b2v_inst8|b2v_inst|b2v_inst11|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst11|q[3]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst5|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst5|q\(3),
	combout => \b2v_inst8|b2v_inst|b2v_inst11|q[3]~feeder_combout\);

-- Location: FF_X16_Y16_N9
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

-- Location: FF_X16_Y16_N17
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q[3]~feeder_combout\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst11|q\(3),
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(3));

-- Location: LCCOMB_X16_Y17_N24
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q[0]~feeder_combout\ = \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(3),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q[0]~feeder_combout\);

-- Location: LCCOMB_X16_Y17_N8
\b2v_inst8|b2v_inst|b2v_inst11|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst11|q[0]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst5|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	combout => \b2v_inst8|b2v_inst|b2v_inst11|q[0]~feeder_combout\);

-- Location: FF_X16_Y17_N9
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

-- Location: FF_X16_Y17_N25
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q[0]~feeder_combout\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst11|q\(0),
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(0));

-- Location: LCCOMB_X16_Y16_N24
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst10|o[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst10|o[1]~0_combout\ = \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(3) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(3),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst10|o[1]~0_combout\);

-- Location: LCCOMB_X16_Y16_N14
\b2v_inst8|b2v_inst|b2v_inst11|q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst11|q[1]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst5|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	combout => \b2v_inst8|b2v_inst|b2v_inst11|q[1]~feeder_combout\);

-- Location: FF_X16_Y16_N15
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

-- Location: FF_X16_Y16_N25
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst10|o[1]~0_combout\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst11|q\(1),
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(1));

-- Location: LCCOMB_X15_Y17_N30
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q[2]~feeder_combout\ = \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q[2]~feeder_combout\);

-- Location: LCCOMB_X15_Y17_N4
\b2v_inst8|b2v_inst|b2v_inst11|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst11|q[2]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst5|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst5|q\(2),
	combout => \b2v_inst8|b2v_inst|b2v_inst11|q[2]~feeder_combout\);

-- Location: FF_X15_Y17_N5
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

-- Location: FF_X15_Y17_N31
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q[2]~feeder_combout\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst11|q\(2),
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(2));

-- Location: LCCOMB_X16_Y16_N12
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst11|o[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst11|o[1]~0_combout\ = \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(1) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(1),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst11|o[1]~0_combout\);

-- Location: LCCOMB_X16_Y16_N22
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

-- Location: FF_X16_Y16_N23
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

-- Location: FF_X16_Y16_N13
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst11|o[1]~0_combout\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst9|q\(1),
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(1));

-- Location: LCCOMB_X16_Y16_N20
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q[0]~feeder_combout\ = \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(1),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q[0]~feeder_combout\);

-- Location: LCCOMB_X16_Y16_N4
\b2v_inst8|b2v_inst|b2v_inst9|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst9|q[0]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst7|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	combout => \b2v_inst8|b2v_inst|b2v_inst9|q[0]~feeder_combout\);

-- Location: FF_X16_Y16_N5
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

-- Location: FF_X16_Y16_N21
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q[0]~feeder_combout\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst9|q\(0),
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(0));

-- Location: LCCOMB_X16_Y16_N18
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst11|o[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst11|o[3]~2_combout\ = \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(3) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(0),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst11|o[3]~2_combout\);

-- Location: LCCOMB_X16_Y16_N26
\b2v_inst8|b2v_inst|b2v_inst9|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst9|q[3]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst7|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst7|q\(3),
	combout => \b2v_inst8|b2v_inst|b2v_inst9|q[3]~feeder_combout\);

-- Location: FF_X16_Y16_N27
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

-- Location: FF_X16_Y16_N19
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst11|o[3]~2_combout\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst9|q\(3),
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(3));

-- Location: LCCOMB_X16_Y16_N6
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst11|o[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst11|o[2]~1_combout\ = \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(2) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst11|o[2]~1_combout\);

-- Location: LCCOMB_X16_Y16_N30
\b2v_inst8|b2v_inst|b2v_inst9|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst9|q[2]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst7|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q\(2),
	combout => \b2v_inst8|b2v_inst|b2v_inst9|q[2]~feeder_combout\);

-- Location: FF_X16_Y16_N31
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

-- Location: FF_X16_Y16_N7
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst11|o[2]~1_combout\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst9|q\(2),
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(2));

-- Location: LCCOMB_X16_Y16_N10
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(2) = \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(2) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(2),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(2));

-- Location: LCCOMB_X15_Y17_N8
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(0) = \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(0) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(0),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(0));

-- Location: LCCOMB_X15_Y17_N12
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(3) = \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(3) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(3),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(3));

-- Location: LCCOMB_X16_Y17_N10
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(1) = \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(1) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(1),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(1));

-- Location: LCCOMB_X21_Y17_N20
\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ = (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(0) & (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(3) $ (((\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(2)) # (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(1)))))) # 
-- (!\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(0) & ((\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(1) & (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(2))) # (!\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(1) & 
-- ((\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(2),
	datab => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(0),
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(3),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(1),
	combout => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\);

-- Location: LCCOMB_X17_Y16_N12
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[0]~feeder_combout\ = \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(3),
	combout => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[0]~feeder_combout\);

-- Location: LCCOMB_X18_Y12_N14
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

-- Location: FF_X18_Y12_N15
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

-- Location: FF_X18_Y12_N9
\b2v_inst3|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst2|q\(0),
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	sload => VCC,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|q\(0));

-- Location: FF_X18_Y12_N23
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

-- Location: LCCOMB_X17_Y16_N8
\b2v_inst8|b2v_inst|b2v_inst4|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst4|q[0]~feeder_combout\ = \b2v_inst4|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst4|q\(0),
	combout => \b2v_inst8|b2v_inst|b2v_inst4|q[0]~feeder_combout\);

-- Location: FF_X17_Y16_N9
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

-- Location: FF_X17_Y16_N13
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[0]~feeder_combout\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst4|q\(0),
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(0));

-- Location: LCCOMB_X17_Y16_N10
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst8|o[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst8|o[1]~0_combout\ = \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(3) $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(3),
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(0),
	combout => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst8|o[1]~0_combout\);

-- Location: LCCOMB_X19_Y13_N26
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

-- Location: FF_X19_Y13_N27
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

-- Location: FF_X18_Y12_N29
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

-- Location: LCCOMB_X18_Y12_N16
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

-- Location: FF_X18_Y12_N17
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

-- Location: LCCOMB_X17_Y16_N4
\b2v_inst8|b2v_inst|b2v_inst4|q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst4|q[1]~feeder_combout\ = \b2v_inst4|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst4|q\(1),
	combout => \b2v_inst8|b2v_inst|b2v_inst4|q[1]~feeder_combout\);

-- Location: FF_X17_Y16_N5
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

-- Location: FF_X17_Y16_N11
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst8|o[1]~0_combout\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst4|q\(1),
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(1));

-- Location: LCCOMB_X17_Y16_N0
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[2]~feeder_combout\ = \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(1),
	combout => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[2]~feeder_combout\);

-- Location: LCCOMB_X18_Y15_N22
\b2v_inst2|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|q[2]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst37|c[2]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst37|c[2]~8_combout\,
	combout => \b2v_inst2|q[2]~feeder_combout\);

-- Location: FF_X18_Y15_N23
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

-- Location: FF_X18_Y15_N1
\b2v_inst3|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst2|q\(2),
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	sload => VCC,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|q\(2));

-- Location: FF_X17_Y14_N5
\b2v_inst4|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst3|q\(2),
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	sload => VCC,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|q\(2));

-- Location: LCCOMB_X17_Y16_N30
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

-- Location: FF_X17_Y16_N31
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

-- Location: FF_X17_Y16_N1
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[2]~feeder_combout\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst4|q\(2),
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(2));

-- Location: LCCOMB_X17_Y16_N16
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[3]~feeder_combout\ = \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(2),
	combout => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[3]~feeder_combout\);

-- Location: FF_X18_Y13_N25
\b2v_inst2|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst37|c[3]~11_combout\,
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|q\(3));

-- Location: LCCOMB_X18_Y12_N2
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

-- Location: FF_X18_Y12_N3
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

-- Location: LCCOMB_X18_Y12_N20
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

-- Location: FF_X18_Y12_N21
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

-- Location: LCCOMB_X17_Y16_N6
\b2v_inst8|b2v_inst|b2v_inst4|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst4|q[3]~feeder_combout\ = \b2v_inst4|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst4|q\(3),
	combout => \b2v_inst8|b2v_inst|b2v_inst4|q[3]~feeder_combout\);

-- Location: FF_X17_Y16_N7
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

-- Location: FF_X17_Y16_N17
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q[3]~feeder_combout\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst4|q\(3),
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(3));

-- Location: LCCOMB_X19_Y16_N6
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst9|o[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst9|o[2]~0_combout\ = \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(2) $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(2),
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(3),
	combout => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst9|o[2]~0_combout\);

-- Location: LCCOMB_X19_Y16_N26
\b2v_inst8|b2v_inst|b2v_inst6|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst6|q[2]~feeder_combout\ = \b2v_inst2|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst2|q\(2),
	combout => \b2v_inst8|b2v_inst|b2v_inst6|q[2]~feeder_combout\);

-- Location: FF_X19_Y16_N27
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

-- Location: FF_X19_Y16_N7
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst9|o[2]~0_combout\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst6|q\(2),
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(2));

-- Location: LCCOMB_X19_Y16_N10
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst9|o[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst9|o[1]~2_combout\ = \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(1) $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(1),
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(2),
	combout => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst9|o[1]~2_combout\);

-- Location: LCCOMB_X19_Y16_N22
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

-- Location: FF_X19_Y16_N23
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

-- Location: FF_X19_Y16_N11
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst9|o[1]~2_combout\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst6|q\(1),
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(1));

-- Location: LCCOMB_X19_Y16_N20
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q[0]~feeder_combout\ = \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(1),
	combout => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q[0]~feeder_combout\);

-- Location: LCCOMB_X19_Y16_N4
\b2v_inst8|b2v_inst|b2v_inst6|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst6|q[0]~feeder_combout\ = \b2v_inst2|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst2|q\(0),
	combout => \b2v_inst8|b2v_inst|b2v_inst6|q[0]~feeder_combout\);

-- Location: FF_X19_Y16_N5
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

-- Location: FF_X19_Y16_N21
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q[0]~feeder_combout\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst6|q\(0),
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(0));

-- Location: LCCOMB_X19_Y16_N12
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst9|o[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst9|o[3]~1_combout\ = \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(3) $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(3),
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(0),
	combout => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst9|o[3]~1_combout\);

-- Location: LCCOMB_X19_Y16_N8
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

-- Location: FF_X19_Y16_N9
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

-- Location: FF_X19_Y16_N13
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst9|o[3]~1_combout\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst6|q\(3),
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(3));

-- Location: FF_X18_Y12_N25
\b2v_inst5|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst4|q\(3),
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	sload => VCC,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|q\(3));

-- Location: LCCOMB_X18_Y16_N8
\b2v_inst8|b2v_inst|b2v_inst1|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst1|q[3]~feeder_combout\ = \b2v_inst5|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst5|q\(3),
	combout => \b2v_inst8|b2v_inst|b2v_inst1|q[3]~feeder_combout\);

-- Location: FF_X18_Y16_N9
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

-- Location: FF_X18_Y16_N13
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

-- Location: LCCOMB_X17_Y16_N2
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q[0]~feeder_combout\ = \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(2),
	combout => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q[0]~feeder_combout\);

-- Location: LCCOMB_X17_Y16_N26
\b2v_inst8|b2v_inst|b2v_inst5|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst5|q[0]~feeder_combout\ = \b2v_inst3|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst3|q\(0),
	combout => \b2v_inst8|b2v_inst|b2v_inst5|q[0]~feeder_combout\);

-- Location: FF_X17_Y16_N27
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

-- Location: FF_X17_Y16_N3
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q[0]~feeder_combout\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst5|q\(0),
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(0));

-- Location: LCCOMB_X17_Y16_N24
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst11|o[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst11|o[2]~0_combout\ = \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(0) $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(0),
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(3),
	combout => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst11|o[2]~0_combout\);

-- Location: LCCOMB_X17_Y16_N28
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

-- Location: FF_X17_Y16_N29
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

-- Location: FF_X17_Y16_N25
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst11|o[2]~0_combout\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst5|q\(2),
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(2));

-- Location: LCCOMB_X17_Y16_N20
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst11|o[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst11|o[1]~1_combout\ = \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(2) $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(2),
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(3),
	combout => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst11|o[1]~1_combout\);

-- Location: LCCOMB_X17_Y16_N22
\b2v_inst8|b2v_inst|b2v_inst5|q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst5|q[1]~feeder_combout\ = \b2v_inst3|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst3|q\(1),
	combout => \b2v_inst8|b2v_inst|b2v_inst5|q[1]~feeder_combout\);

-- Location: FF_X17_Y16_N23
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

-- Location: FF_X17_Y16_N21
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst11|o[1]~1_combout\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst5|q\(1),
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(1));

-- Location: LCCOMB_X17_Y16_N18
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q[3]~feeder_combout\ = \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(1),
	combout => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q[3]~feeder_combout\);

-- Location: LCCOMB_X17_Y16_N14
\b2v_inst8|b2v_inst|b2v_inst5|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst5|q[3]~feeder_combout\ = \b2v_inst3|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst3|q\(3),
	combout => \b2v_inst8|b2v_inst|b2v_inst5|q[3]~feeder_combout\);

-- Location: FF_X17_Y16_N15
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

-- Location: FF_X17_Y16_N19
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q[3]~feeder_combout\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst5|q\(3),
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(3));

-- Location: LCCOMB_X18_Y16_N12
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\ = \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(3) $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(3) $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst5|q\(3) $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(3),
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(3),
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst5|q\(3),
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(3),
	combout => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\);

-- Location: LCCOMB_X18_Y12_N4
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

-- Location: FF_X18_Y12_N5
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

-- Location: LCCOMB_X18_Y16_N22
\b2v_inst8|b2v_inst|b2v_inst1|q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst1|q[1]~feeder_combout\ = \b2v_inst5|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst5|q\(1),
	combout => \b2v_inst8|b2v_inst|b2v_inst1|q[1]~feeder_combout\);

-- Location: FF_X18_Y16_N23
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

-- Location: FF_X18_Y16_N11
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

-- Location: LCCOMB_X18_Y16_N10
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ = \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(1) $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(1) $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst5|q\(1) $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(1),
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(1),
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst5|q\(1),
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(1),
	combout => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\);

-- Location: FF_X17_Y14_N15
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

-- Location: LCCOMB_X18_Y16_N26
\b2v_inst8|b2v_inst|b2v_inst1|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst1|q[2]~feeder_combout\ = \b2v_inst5|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst5|q\(2),
	combout => \b2v_inst8|b2v_inst|b2v_inst1|q[2]~feeder_combout\);

-- Location: FF_X18_Y16_N27
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

-- Location: FF_X18_Y16_N7
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

-- Location: LCCOMB_X18_Y16_N6
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\ = \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(2) $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(2) $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst5|q\(2) $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(2),
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(2),
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst5|q\(2),
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(2),
	combout => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\);

-- Location: LCCOMB_X22_Y16_N28
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

-- Location: LCCOMB_X22_Y16_N4
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

-- Location: LCCOMB_X21_Y17_N30
\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ = (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(2) & ((\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(1) & (!\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(0))) # (!\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(1) & 
-- ((!\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(3)))))) # (!\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(2) & (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(0) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(3) $ 
-- (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(2),
	datab => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(0),
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(3),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(1),
	combout => \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\);

-- Location: FF_X18_Y12_N27
\b2v_inst5|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst4|q\(0),
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	sload => VCC,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|q\(0));

-- Location: LCCOMB_X18_Y16_N4
\b2v_inst8|b2v_inst|b2v_inst1|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst1|q[0]~feeder_combout\ = \b2v_inst5|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst5|q\(0),
	combout => \b2v_inst8|b2v_inst|b2v_inst1|q[0]~feeder_combout\);

-- Location: FF_X18_Y16_N5
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

-- Location: FF_X18_Y16_N25
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

-- Location: LCCOMB_X18_Y16_N24
\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\ = \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(0) $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(0) $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst5|q\(0) $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst7|q\(0),
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst4|q\(0),
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst5|q\(0),
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst6|q\(0),
	combout => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\);

-- Location: LCCOMB_X22_Y16_N10
\b2v_inst8|b2v_inst2|b2v_inst2|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst2|Mux10~0_combout\ = \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\ $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\,
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst2|Mux10~0_combout\);

-- Location: LCCOMB_X22_Y16_N14
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

-- Location: LCCOMB_X22_Y16_N24
\b2v_inst8|b2v_inst2|b2v_inst2|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst2|Mux9~0_combout\ = \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\ $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\ $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ $ 
-- (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\,
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst2|Mux9~0_combout\);

-- Location: LCCOMB_X22_Y16_N18
\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~9_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~8_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst2|Mux9~0_combout\))) # (!\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~8_combout\ & 
-- (\b2v_inst8|b2v_inst2|b2v_inst2|Mux3~0_combout\)))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst2|Mux3~0_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~8_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst2|Mux9~0_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~9_combout\);

-- Location: LCCOMB_X21_Y17_N18
\b2v_inst8|b2v_inst2|b2v_inst|o[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst|o[3]~3_combout\ = (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(3) & (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(0) $ (((!\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(1)) # (!\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(2)))))) 
-- # (!\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(3) & (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(2) $ (((\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(2),
	datab => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(0),
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(3),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(1),
	combout => \b2v_inst8|b2v_inst2|b2v_inst|o[3]~3_combout\);

-- Location: LCCOMB_X21_Y17_N4
\b2v_inst8|b2v_inst2|b2v_inst|o[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\ = (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(0) & (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(1) $ (((\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(2) & \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(3)))))) # 
-- (!\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(0) & (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(2) $ ((\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(2),
	datab => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(0),
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(3),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(1),
	combout => \b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\);

-- Location: LCCOMB_X20_Y16_N22
\b2v_inst8|b2v_inst2|b2v_inst2|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst2|Mux8~0_combout\ = \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\,
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst2|Mux8~0_combout\);

-- Location: LCCOMB_X20_Y16_N12
\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~10_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\)))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ & 
-- (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ $ (((\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\,
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~10_combout\);

-- Location: LCCOMB_X20_Y16_N8
\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~11_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ & (\b2v_inst8|b2v_inst2|b2v_inst2|Mux8~0_combout\ $ (((\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\ & 
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~10_combout\))))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst2|Mux8~0_combout\,
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~10_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~11_combout\);

-- Location: LCCOMB_X21_Y17_N22
\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~12_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[3]~3_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\ & (\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~9_combout\)) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\ & 
-- ((\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~9_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst|o[3]~3_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~11_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~12_combout\);

-- Location: LCCOMB_X21_Y16_N6
\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~5_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & !\b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~5_combout\);

-- Location: LCCOMB_X20_Y16_N6
\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~0_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & (\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\)) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & 
-- (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\ $ (((\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ & \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~0_combout\);

-- Location: LCCOMB_X20_Y16_N16
\b2v_inst8|b2v_inst2|b2v_inst2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst2|Mux5~0_combout\ = \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\ $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\ $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst2|Mux5~0_combout\);

-- Location: LCCOMB_X20_Y16_N24
\b2v_inst8|b2v_inst2|b2v_inst2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst2|Mux0~0_combout\ = \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\ $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst2|Mux0~0_combout\);

-- Location: LCCOMB_X20_Y16_N2
\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~1_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~0_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst2|Mux5~0_combout\) # ((!\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\)))) # (!\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~0_combout\ 
-- & (((\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & \b2v_inst8|b2v_inst2|b2v_inst2|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~0_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst2|Mux5~0_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst2|Mux0~0_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~1_combout\);

-- Location: LCCOMB_X21_Y16_N2
\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~3_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\) # ((\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~3_combout\);

-- Location: LCCOMB_X21_Y16_N24
\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~2_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\) # ((!\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~2_combout\);

-- Location: LCCOMB_X21_Y16_N16
\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~4_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~3_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~1_combout\) # ((!\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~2_combout\)))) # (!\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~3_combout\ 
-- & (((\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\ & \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~1_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~3_combout\,
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~2_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~4_combout\);

-- Location: LCCOMB_X21_Y16_N0
\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~6_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~5_combout\ & (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\ $ (((\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\ & 
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~4_combout\))))) # (!\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~5_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~5_combout\,
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\,
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~4_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~6_combout\);

-- Location: LCCOMB_X21_Y17_N16
\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~7_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~6_combout\ & !\b2v_inst8|b2v_inst2|b2v_inst|o[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~6_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst|o[3]~3_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~7_combout\);

-- Location: LCCOMB_X15_Y16_N6
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q[3]~feeder_combout\ = \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q[3]~feeder_combout\);

-- Location: LCCOMB_X15_Y16_N22
\b2v_inst8|b2v_inst|b2v_inst8|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst8|q[3]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst6|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst6|q\(3),
	combout => \b2v_inst8|b2v_inst|b2v_inst8|q[3]~feeder_combout\);

-- Location: FF_X15_Y16_N23
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

-- Location: FF_X15_Y16_N7
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q[3]~feeder_combout\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst8|q\(3),
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(3));

-- Location: LCCOMB_X15_Y17_N24
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q[0]~feeder_combout\ = \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(2),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q[0]~feeder_combout\);

-- Location: LCCOMB_X15_Y17_N22
\b2v_inst8|b2v_inst|b2v_inst8|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst8|q[0]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst6|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	combout => \b2v_inst8|b2v_inst|b2v_inst8|q[0]~feeder_combout\);

-- Location: FF_X15_Y17_N23
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

-- Location: FF_X15_Y17_N25
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q[0]~feeder_combout\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst8|q\(0),
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(0));

-- Location: LCCOMB_X15_Y16_N28
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst8|o[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst8|o[2]~1_combout\ = \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(3) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(3),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst8|o[2]~1_combout\);

-- Location: LCCOMB_X15_Y16_N8
\b2v_inst8|b2v_inst|b2v_inst8|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst8|q[2]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst6|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst6|q\(2),
	combout => \b2v_inst8|b2v_inst|b2v_inst8|q[2]~feeder_combout\);

-- Location: FF_X15_Y16_N9
\b2v_inst8|b2v_inst|b2v_inst8|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|b2v_inst|estadoAtual.store~clkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst8|q[2]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst8|q\(2));

-- Location: FF_X15_Y16_N29
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst8|o[2]~1_combout\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst8|q\(2),
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(2));

-- Location: LCCOMB_X15_Y16_N16
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst8|o[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst8|o[1]~0_combout\ = \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(3) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(3),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(2),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst8|o[1]~0_combout\);

-- Location: LCCOMB_X15_Y16_N26
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

-- Location: FF_X15_Y16_N27
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

-- Location: FF_X15_Y16_N17
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst8|o[1]~0_combout\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst8|q\(1),
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(1));

-- Location: LCCOMB_X15_Y16_N18
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst9|o[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst9|o[1]~0_combout\ = \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(3) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(1) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(3),
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst9|o[1]~0_combout\);

-- Location: LCCOMB_X15_Y16_N30
\b2v_inst8|b2v_inst|b2v_inst12|q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst12|q[1]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst8|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst8|q\(1),
	combout => \b2v_inst8|b2v_inst|b2v_inst12|q[1]~feeder_combout\);

-- Location: FF_X15_Y16_N31
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

-- Location: FF_X15_Y16_N19
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst9|o[1]~0_combout\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst12|q\(1),
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(1));

-- Location: LCCOMB_X15_Y16_N12
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst9|o[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst9|o[2]~2_combout\ = \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(2) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(2),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst9|o[2]~2_combout\);

-- Location: LCCOMB_X15_Y16_N4
\b2v_inst8|b2v_inst|b2v_inst12|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst12|q[2]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst8|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst8|q\(2),
	combout => \b2v_inst8|b2v_inst|b2v_inst12|q[2]~feeder_combout\);

-- Location: FF_X15_Y16_N5
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

-- Location: FF_X15_Y16_N13
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst9|o[2]~2_combout\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst12|q\(2),
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(2));

-- Location: LCCOMB_X15_Y16_N10
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst9|o[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst9|o[3]~3_combout\ = \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(3) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(3),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(2),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst9|o[3]~3_combout\);

-- Location: LCCOMB_X15_Y16_N24
\b2v_inst8|b2v_inst|b2v_inst12|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst12|q[3]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst8|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst8|q\(3),
	combout => \b2v_inst8|b2v_inst|b2v_inst12|q[3]~feeder_combout\);

-- Location: FF_X15_Y16_N25
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

-- Location: FF_X15_Y16_N11
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst9|o[3]~3_combout\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst12|q\(3),
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(3));

-- Location: LCCOMB_X15_Y16_N20
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst9|o[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst9|o[0]~1_combout\ = \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(0) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(3),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst9|o[0]~1_combout\);

-- Location: LCCOMB_X15_Y16_N14
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

-- Location: FF_X15_Y16_N15
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

-- Location: FF_X15_Y16_N21
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst9|o[0]~1_combout\,
	asdata => \b2v_inst8|b2v_inst|b2v_inst12|q\(0),
	clrn => \b2v_inst8|b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst8|b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(0));

-- Location: LCCOMB_X15_Y17_N28
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst14|c[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst14|c[0]~0_combout\ = \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(0) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(0) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(0) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(0),
	datab => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst14|c[0]~0_combout\);

-- Location: LCCOMB_X15_Y17_N26
\b2v_inst8|SYNTHESIZED_WIRE_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|SYNTHESIZED_WIRE_0~0_combout\ = (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(1) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(1) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(1)))) # (!\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst14|c[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	datab => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst14|c[0]~0_combout\,
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(1),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	combout => \b2v_inst8|SYNTHESIZED_WIRE_0~0_combout\);

-- Location: LCCOMB_X16_Y16_N28
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst14|c[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst14|c[2]~1_combout\ = \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(2) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(2) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(2) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst5|q\(2),
	datab => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(2),
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(2),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst14|c[2]~1_combout\);

-- Location: LCCOMB_X15_Y16_N0
\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst14|c[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst14|c[3]~2_combout\ = \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(3) $ (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst6|q\(3),
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst7|q\(3),
	combout => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst14|c[3]~2_combout\);

-- Location: LCCOMB_X15_Y17_N18
\b2v_inst8|SYNTHESIZED_WIRE_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|SYNTHESIZED_WIRE_0~1_combout\ = (\b2v_inst8|SYNTHESIZED_WIRE_0~0_combout\) # ((\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst14|c[2]~1_combout\) # (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(3) $ 
-- (\b2v_inst8|b2v_inst|b2v_inst2|b2v_inst14|c[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|SYNTHESIZED_WIRE_0~0_combout\,
	datab => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst15|c\(3),
	datac => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst14|c[2]~1_combout\,
	datad => \b2v_inst8|b2v_inst|b2v_inst2|b2v_inst14|c[3]~2_combout\,
	combout => \b2v_inst8|SYNTHESIZED_WIRE_0~1_combout\);

-- Location: IOIBUF_X67_Y22_N8
\Mensagem[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mensagem(0),
	o => \Mensagem[0]~input_o\);

-- Location: LCCOMB_X21_Y17_N28
\b2v_inst8|b2v_inst2|b2v_inst1|c[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst1|c\(0) = \Mensagem[0]~input_o\ $ (((!\b2v_inst8|SYNTHESIZED_WIRE_0~1_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~12_combout\) # (\b2v_inst8|b2v_inst2|b2v_inst3|O[0]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~12_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst3|O[0]~7_combout\,
	datac => \b2v_inst8|SYNTHESIZED_WIRE_0~1_combout\,
	datad => \Mensagem[0]~input_o\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst1|c\(0));

-- Location: LCCOMB_X20_Y16_N20
\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~18_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\)))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & 
-- (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\ $ (((\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ & !\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\,
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~18_combout\);

-- Location: LCCOMB_X20_Y16_N10
\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~19_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\ $ (((\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ & 
-- !\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~18_combout\))))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\,
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~18_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~19_combout\);

-- Location: LCCOMB_X21_Y16_N22
\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~20_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\) # (\b2v_inst8|b2v_inst2|b2v_inst2|Mux9~0_combout\)))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & 
-- (\b2v_inst8|b2v_inst2|b2v_inst2|Mux2~0_combout\ & (!\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst2|Mux2~0_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst2|Mux9~0_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~20_combout\);

-- Location: LCCOMB_X21_Y16_N12
\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~21_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~20_combout\ & (\b2v_inst8|b2v_inst2|b2v_inst2|Mux5~0_combout\)) # (!\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~20_combout\ & 
-- ((\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\))))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst2|Mux5~0_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~20_combout\,
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~21_combout\);

-- Location: LCCOMB_X21_Y17_N12
\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~22_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[3]~3_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\ & (\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~19_combout\)) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\ & 
-- ((\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~19_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~21_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst|o[3]~3_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~22_combout\);

-- Location: LCCOMB_X22_Y16_N16
\b2v_inst8|b2v_inst2|b2v_inst2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst2|Mux6~0_combout\ = \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\ $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst2|Mux6~0_combout\);

-- Location: LCCOMB_X22_Y16_N30
\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~13_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\)))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ & 
-- ((\b2v_inst8|b2v_inst2|b2v_inst2|Mux3~0_combout\))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ & (\b2v_inst8|b2v_inst2|b2v_inst2|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst2|Mux0~0_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst2|Mux3~0_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~13_combout\);

-- Location: LCCOMB_X22_Y16_N12
\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~14_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~13_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst2|Mux10~0_combout\))) # (!\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~13_combout\ 
-- & (\b2v_inst8|b2v_inst2|b2v_inst2|Mux6~0_combout\)))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst2|Mux6~0_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~13_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst2|Mux10~0_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~14_combout\);

-- Location: LCCOMB_X22_Y16_N22
\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~15_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~3_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~14_combout\)) # (!\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~2_combout\))) # 
-- (!\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~3_combout\ & (\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~2_combout\ & (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~3_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~2_combout\,
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~14_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~15_combout\);

-- Location: LCCOMB_X21_Y16_N26
\b2v_inst8|b2v_inst2|b2v_inst2|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst2|Mux7~0_combout\ = \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\ $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\,
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst2|Mux7~0_combout\);

-- Location: LCCOMB_X20_Y16_N14
\b2v_inst8|b2v_inst2|b2v_inst2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst2|Mux4~0_combout\ = \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\ $ (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst2|Mux4~0_combout\);

-- Location: LCCOMB_X21_Y16_N4
\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~16_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~5_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~15_combout\ & (\b2v_inst8|b2v_inst2|b2v_inst2|Mux7~0_combout\)) # (!\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~15_combout\ & 
-- ((\b2v_inst8|b2v_inst2|b2v_inst2|Mux4~0_combout\))))) # (!\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~5_combout\ & (\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~5_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~15_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst2|Mux7~0_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst2|Mux4~0_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~16_combout\);

-- Location: LCCOMB_X21_Y17_N2
\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~17_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~16_combout\ & !\b2v_inst8|b2v_inst2|b2v_inst|o[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~16_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst|o[3]~3_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~17_combout\);

-- Location: IOIBUF_X67_Y22_N1
\Mensagem[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mensagem(1),
	o => \Mensagem[1]~input_o\);

-- Location: LCCOMB_X21_Y17_N6
\b2v_inst8|b2v_inst2|b2v_inst1|c[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst1|c\(1) = \Mensagem[1]~input_o\ $ (((!\b2v_inst8|SYNTHESIZED_WIRE_0~1_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~22_combout\) # (\b2v_inst8|b2v_inst2|b2v_inst3|O[1]~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~22_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst3|O[1]~17_combout\,
	datac => \b2v_inst8|SYNTHESIZED_WIRE_0~1_combout\,
	datad => \Mensagem[1]~input_o\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst1|c\(1));

-- Location: LCCOMB_X20_Y16_N0
\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~28_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & (\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\)) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & 
-- (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\ $ (((!\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ & \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~28_combout\);

-- Location: LCCOMB_X20_Y16_N18
\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~29_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & (\b2v_inst8|b2v_inst2|b2v_inst2|Mux8~0_combout\ $ (((\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\ & 
-- !\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~28_combout\))))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst2|Mux8~0_combout\,
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~28_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~29_combout\);

-- Location: LCCOMB_X22_Y16_N20
\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~30_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\) # (\b2v_inst8|b2v_inst2|b2v_inst2|Mux3~0_combout\)))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & 
-- (\b2v_inst8|b2v_inst2|b2v_inst2|Mux0~0_combout\ & (!\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst2|Mux0~0_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst2|Mux3~0_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~30_combout\);

-- Location: LCCOMB_X22_Y16_N26
\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~31_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ & (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\ $ (((\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ & 
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~30_combout\))))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\,
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\,
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~30_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~31_combout\);

-- Location: LCCOMB_X21_Y17_N14
\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~32_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[3]~3_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\ & (\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~29_combout\)) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\ & 
-- ((\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~29_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~31_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst|o[3]~3_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~32_combout\);

-- Location: IOIBUF_X34_Y0_N15
\Mensagem[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mensagem(2),
	o => \Mensagem[2]~input_o\);

-- Location: LCCOMB_X21_Y16_N18
\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~23_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst2|Mux7~0_combout\) # ((\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\)))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & 
-- (((!\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ & \b2v_inst8|b2v_inst2|b2v_inst2|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst2|Mux7~0_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst2|Mux4~0_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~23_combout\);

-- Location: LCCOMB_X21_Y16_N8
\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~24_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~23_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst2|Mux9~0_combout\))) # (!\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~23_combout\ 
-- & (\b2v_inst8|b2v_inst2|b2v_inst2|Mux5~0_combout\)))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ & (\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~23_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst2|Mux5~0_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst2|Mux9~0_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~24_combout\);

-- Location: LCCOMB_X21_Y16_N30
\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~25_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~3_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~24_combout\) # (!\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~2_combout\)))) # 
-- (!\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~3_combout\ & (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~3_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~24_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~2_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~25_combout\);

-- Location: LCCOMB_X21_Y16_N20
\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~26_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~5_combout\ & (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ $ (((\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\ & 
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~25_combout\))))) # (!\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~5_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~25_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~5_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~26_combout\);

-- Location: LCCOMB_X21_Y17_N0
\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~27_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~26_combout\ & !\b2v_inst8|b2v_inst2|b2v_inst|o[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~26_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst|o[3]~3_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~27_combout\);

-- Location: LCCOMB_X21_Y17_N8
\b2v_inst8|b2v_inst2|b2v_inst1|c[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst1|c\(2) = \Mensagem[2]~input_o\ $ (((!\b2v_inst8|SYNTHESIZED_WIRE_0~1_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~32_combout\) # (\b2v_inst8|b2v_inst2|b2v_inst3|O[2]~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|SYNTHESIZED_WIRE_0~1_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~32_combout\,
	datac => \Mensagem[2]~input_o\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst3|O[2]~27_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst1|c\(2));

-- Location: LCCOMB_X20_Y16_N4
\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~33_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\)))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & 
-- (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ $ (((\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ & \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\,
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~33_combout\);

-- Location: LCCOMB_X21_Y16_N10
\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~34_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & (\b2v_inst8|b2v_inst2|b2v_inst2|Mux2~0_combout\ $ (((\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\ & 
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~33_combout\))))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~33_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst2|Mux2~0_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~34_combout\);

-- Location: LCCOMB_X22_Y16_N8
\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~35_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~2_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~3_combout\ & (\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~34_combout\)) # (!\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~3_combout\ & 
-- ((\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\))))) # (!\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~2_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~34_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~2_combout\,
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~3_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~35_combout\);

-- Location: LCCOMB_X21_Y16_N28
\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~36_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~5_combout\ & (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\ $ (((\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~35_combout\ & 
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\))))) # (!\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~5_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~35_combout\,
	datac => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~5_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~36_combout\);

-- Location: LCCOMB_X21_Y17_N10
\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~37_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~36_combout\ & !\b2v_inst8|b2v_inst2|b2v_inst|o[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~36_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst|o[3]~3_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~37_combout\);

-- Location: IOIBUF_X43_Y0_N22
\Mensagem[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mensagem(3),
	o => \Mensagem[3]~input_o\);

-- Location: LCCOMB_X20_Y16_N26
\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~38_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\)))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & (\b2v_inst8|b2v_inst2|b2v_inst2|Mux8~0_combout\ $ 
-- (((!\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ & \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst2|Mux8~0_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\,
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~38_combout\);

-- Location: LCCOMB_X21_Y16_N14
\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~39_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~38_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst2|Mux10~0_combout\) # ((!\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\)))) # 
-- (!\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~38_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & \b2v_inst8|b2v_inst2|b2v_inst2|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~38_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst2|Mux10~0_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst2|Mux9~0_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~39_combout\);

-- Location: LCCOMB_X20_Y16_N28
\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~40_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & (((\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\) # (\b2v_inst8|b2v_inst2|b2v_inst2|Mux5~0_combout\)))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\ & 
-- (\b2v_inst8|b2v_inst2|b2v_inst2|Mux4~0_combout\ & (!\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst2|Mux4~0_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst|o[1]~0_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst2|Mux5~0_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~40_combout\);

-- Location: LCCOMB_X20_Y16_N30
\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~41_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ & (\b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\ $ (((\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~40_combout\ & 
-- \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\))))) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\ & (\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~40_combout\,
	datab => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[0]~1_combout\,
	datad => \b2v_inst8|b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~41_combout\);

-- Location: LCCOMB_X21_Y17_N24
\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~42_combout\ = (\b2v_inst8|b2v_inst2|b2v_inst|o[3]~3_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\ & (\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~39_combout\)) # (!\b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\ & 
-- ((\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~39_combout\,
	datab => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~41_combout\,
	datac => \b2v_inst8|b2v_inst2|b2v_inst|o[2]~2_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst|o[3]~3_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~42_combout\);

-- Location: LCCOMB_X21_Y17_N26
\b2v_inst8|b2v_inst2|b2v_inst1|c[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|b2v_inst2|b2v_inst1|c\(3) = \Mensagem[3]~input_o\ $ (((!\b2v_inst8|SYNTHESIZED_WIRE_0~1_combout\ & ((\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~37_combout\) # (\b2v_inst8|b2v_inst2|b2v_inst3|O[3]~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~37_combout\,
	datab => \Mensagem[3]~input_o\,
	datac => \b2v_inst8|SYNTHESIZED_WIRE_0~1_combout\,
	datad => \b2v_inst8|b2v_inst2|b2v_inst3|O[3]~42_combout\,
	combout => \b2v_inst8|b2v_inst2|b2v_inst1|c\(3));

-- Location: FF_X18_Y12_N1
\b2v_inst6|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst5|q\(0),
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	sload => VCC,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|q\(0));

-- Location: FF_X18_Y12_N31
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

-- Location: LCCOMB_X18_Y12_N10
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

-- Location: FF_X18_Y12_N11
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

-- Location: LCCOMB_X18_Y12_N12
\b2v_inst6|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|q[3]~feeder_combout\ = \b2v_inst5|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst5|q\(3),
	combout => \b2v_inst6|q[3]~feeder_combout\);

-- Location: FF_X18_Y12_N13
\b2v_inst6|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst6|q[3]~feeder_combout\,
	clrn => \b2v_inst|b2v_inst|ALT_INV_clearS~combout\,
	ena => \b2v_inst|b2v_inst|loadS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|q\(3));

-- Location: LCCOMB_X18_Y1_N0
\b2v_inst|b2v_inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst|Selector1~0_combout\ = (!\b2v_inst1|Count_8~q\ & (\b2v_inst|b2v_inst|estadoAtual.localizador~q\ & ((\b2v_inst|b2v_inst2|Nerror~0_combout\) # (!\b2v_inst1|Impar~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Count_8~q\,
	datab => \b2v_inst1|Impar~q\,
	datac => \b2v_inst|b2v_inst|estadoAtual.localizador~q\,
	datad => \b2v_inst|b2v_inst2|Nerror~0_combout\,
	combout => \b2v_inst|b2v_inst|Selector1~0_combout\);

-- Location: LCCOMB_X18_Y1_N22
\b2v_inst|b2v_inst|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst|Selector1~2_combout\ = (\b2v_inst|b2v_inst|Selector1~0_combout\) # (((\b2v_inst|b2v_inst|estadoAtual.avaliador~q\ & \b2v_inst1|Count_4~q\)) # (!\b2v_inst|b2v_inst|Selector1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst|estadoAtual.avaliador~q\,
	datab => \b2v_inst|b2v_inst|Selector1~0_combout\,
	datac => \b2v_inst|b2v_inst|Selector1~1_combout\,
	datad => \b2v_inst1|Count_4~q\,
	combout => \b2v_inst|b2v_inst|Selector1~2_combout\);

-- Location: LCCOMB_X18_Y1_N16
\b2v_inst|b2v_inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst|Selector0~0_combout\ = (\b2v_inst|b2v_inst|estadoAtual.avaliador~q\ & !\b2v_inst1|Count_4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst|estadoAtual.avaliador~q\,
	datad => \b2v_inst1|Count_4~q\,
	combout => \b2v_inst|b2v_inst|Selector0~0_combout\);

-- Location: LCCOMB_X18_Y1_N30
\b2v_inst|b2v_inst|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst|Selector0~1_combout\ = (\b2v_inst|b2v_inst|Selector0~0_combout\) # ((\b2v_inst|b2v_inst|estadoAtual.localizador~q\ & ((\b2v_inst1|Count_8~q\) # (!\b2v_inst1|Impar~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Count_8~q\,
	datab => \b2v_inst|b2v_inst|Selector0~0_combout\,
	datac => \b2v_inst|b2v_inst|estadoAtual.localizador~q\,
	datad => \b2v_inst1|Impar~q\,
	combout => \b2v_inst|b2v_inst|Selector0~1_combout\);

-- Location: LCCOMB_X18_Y1_N4
\b2v_inst|b2v_inst|test_state[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst|test_state\(2) = (\b2v_inst|b2v_inst|estadoAtual.avaliador~q\) # (\b2v_inst|b2v_inst|estadoAtual.clearSyn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst|estadoAtual.avaliador~q\,
	datac => \b2v_inst|b2v_inst|estadoAtual.clearSyn~q\,
	combout => \b2v_inst|b2v_inst|test_state\(2));

-- Location: LCCOMB_X18_Y11_N16
\b2v_inst|b2v_inst|test_state~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst|test_state~4_combout\ = (\b2v_inst|b2v_inst|estadoAtual.store~q\) # (!\b2v_inst|b2v_inst|estadoAtual.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	datad => \b2v_inst|b2v_inst|estadoAtual.store~q\,
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

ww_Test_state(0) <= \Test_state[0]~output_o\;

ww_Test_state(1) <= \Test_state[1]~output_o\;

ww_Test_state(2) <= \Test_state[2]~output_o\;

ww_Test_state(3) <= \Test_state[3]~output_o\;

ww_Test_state(4) <= \Test_state[4]~output_o\;
END structure;


