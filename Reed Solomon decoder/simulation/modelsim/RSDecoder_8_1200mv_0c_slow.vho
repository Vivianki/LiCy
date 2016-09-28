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

-- DATE "09/27/2016 22:37:25"

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

ENTITY 	BerleMas IS
    PORT (
	Clock : IN std_logic;
	Reset : IN std_logic;
	Impar : IN std_logic;
	Count4 : IN std_logic;
	Count8 : IN std_logic;
	Inicia : IN std_logic;
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
	B_0 : OUT std_logic_vector(3 DOWNTO 0);
	B_1 : OUT std_logic_vector(3 DOWNTO 0);
	B_2 : OUT std_logic_vector(3 DOWNTO 0);
	B_3 : OUT std_logic_vector(3 DOWNTO 0);
	B_mux : OUT std_logic_vector(3 DOWNTO 0);
	DS_reg : OUT std_logic_vector(3 DOWNTO 0);
	Lamb1 : OUT std_logic_vector(3 DOWNTO 0);
	Lambda2 : OUT std_logic_vector(3 DOWNTO 0);
	Lambda3 : OUT std_logic_vector(3 DOWNTO 0);
	Lambda4 : OUT std_logic_vector(3 DOWNTO 0);
	Omega : OUT std_logic_vector(3 DOWNTO 0);
	S0 : OUT std_logic_vector(3 DOWNTO 0);
	S1 : OUT std_logic_vector(3 DOWNTO 0);
	S2 : OUT std_logic_vector(3 DOWNTO 0);
	S3 : OUT std_logic_vector(3 DOWNTO 0);
	S4 : OUT std_logic_vector(3 DOWNTO 0);
	Test_state : OUT std_logic_vector(4 DOWNTO 0)
	);
END BerleMas;

-- Design Ports Information
-- Registra	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- loadS	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- loadB	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- loadC	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clearS	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clearB	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clearC	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxSel	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Nerror	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_0[0]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_0[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_0[2]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_0[3]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_1[0]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_1[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_1[2]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_1[3]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_2[0]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_2[1]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_2[2]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_2[3]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_3[0]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_3[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_3[2]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_3[3]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_mux[0]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_mux[1]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_mux[2]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_mux[3]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS_reg[0]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS_reg[1]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS_reg[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DS_reg[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lamb1[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lamb1[1]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lamb1[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lamb1[3]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda2[0]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda2[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda2[2]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda2[3]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda3[0]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda3[1]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda3[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda3[3]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda4[0]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda4[1]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda4[2]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda4[3]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega[0]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega[1]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega[2]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega[3]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0[0]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0[1]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0[2]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0[3]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[0]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[1]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[2]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[3]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2[1]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2[3]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3[0]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3[2]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3[3]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4[0]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4[1]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4[2]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4[3]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Test_state[0]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Test_state[1]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Test_state[2]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Test_state[3]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Test_state[4]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Impar	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count8	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count4	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inicia	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[0]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[1]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[2]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[3]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BerleMas IS
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
SIGNAL ww_Impar : std_logic;
SIGNAL ww_Count4 : std_logic;
SIGNAL ww_Count8 : std_logic;
SIGNAL ww_Inicia : std_logic;
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
SIGNAL ww_B_0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B_1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B_2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B_3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B_mux : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DS_reg : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Lamb1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Lambda2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Lambda3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Lambda4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Omega : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Test_state : std_logic_vector(4 DOWNTO 0);
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
SIGNAL \DS_reg[0]~output_o\ : std_logic;
SIGNAL \DS_reg[1]~output_o\ : std_logic;
SIGNAL \DS_reg[2]~output_o\ : std_logic;
SIGNAL \DS_reg[3]~output_o\ : std_logic;
SIGNAL \Lamb1[0]~output_o\ : std_logic;
SIGNAL \Lamb1[1]~output_o\ : std_logic;
SIGNAL \Lamb1[2]~output_o\ : std_logic;
SIGNAL \Lamb1[3]~output_o\ : std_logic;
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
SIGNAL \Omega[0]~output_o\ : std_logic;
SIGNAL \Omega[1]~output_o\ : std_logic;
SIGNAL \Omega[2]~output_o\ : std_logic;
SIGNAL \Omega[3]~output_o\ : std_logic;
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
SIGNAL \Count8~input_o\ : std_logic;
SIGNAL \Inicia~input_o\ : std_logic;
SIGNAL \b2v_inst|Selector6~2_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst|estadoAtual.idle2~q\ : std_logic;
SIGNAL \b2v_inst|Selector6~3_combout\ : std_logic;
SIGNAL \b2v_inst|estadoAtual.idle~q\ : std_logic;
SIGNAL \b2v_inst|clearB~0_combout\ : std_logic;
SIGNAL \b2v_inst|Selector8~0_combout\ : std_logic;
SIGNAL \b2v_inst|estadoAtual.localizador~q\ : std_logic;
SIGNAL \b2v_inst|proximoEstado.localizador2~0_combout\ : std_logic;
SIGNAL \b2v_inst|estadoAtual.localizador2~q\ : std_logic;
SIGNAL \b2v_inst|proximoEstado.clearSyn~0_combout\ : std_logic;
SIGNAL \b2v_inst|estadoAtual.clearSyn~q\ : std_logic;
SIGNAL \Count4~input_o\ : std_logic;
SIGNAL \b2v_inst|Selector9~0_combout\ : std_logic;
SIGNAL \b2v_inst|estadoAtual.avaliador~q\ : std_logic;
SIGNAL \b2v_inst|Selector5~2_combout\ : std_logic;
SIGNAL \b2v_inst|estadoAtual.avaliador2~q\ : std_logic;
SIGNAL \b2v_inst|Selector6~1_combout\ : std_logic;
SIGNAL \b2v_inst|estadoAtual.store~q\ : std_logic;
SIGNAL \Impar~input_o\ : std_logic;
SIGNAL \b2v_inst|WideOr2~0_combout\ : std_logic;
SIGNAL \Input[0]~input_o\ : std_logic;
SIGNAL \b2v_inst|WideOr0~0_combout\ : std_logic;
SIGNAL \b2v_inst|WideOr0~combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|q[0]~feeder_combout\ : std_logic;
SIGNAL \Input[3]~input_o\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst32|o[1]~2_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[0]~5_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[0]~2_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst34|O[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[1]~22_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[1]~23_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|Mux2~2_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[1]~24_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[1]~25_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[1]~26_combout\ : std_logic;
SIGNAL \Input[2]~input_o\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|q[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|o[0]~20_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|o[0]~21_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|o[0]~22_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|o[0]~23_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst8|q[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|o[2]~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|o[2]~1_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|o[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|Mux5~1_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|o[0]~16_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|o[0]~17_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|o[0]~18_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|o[0]~19_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst8|q[0]~5_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|o[1]~12_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|o[1]~13_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|o[1]~14_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|o[1]~15_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst8|q[1]~2_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|Mux7~1_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|o[1]~8_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|o[1]~9_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|o[1]~10_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|o[1]~11_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst8|q[1]~3_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|o[3]~36_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|o[3]~37_combout\ : std_logic;
SIGNAL \Input[1]~input_o\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|q[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|Mux8~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|o[3]~34_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|o[3]~35_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|o[3]~38_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|o[2]~3_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|o[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|o[3]~30_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|o[3]~31_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|o[3]~32_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|o[3]~33_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|Mux8~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|o[0]~20_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|o[0]~21_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|o[0]~22_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|o[0]~23_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst7|q[0]~6_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|Mux5~1_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|o[0]~16_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|o[0]~17_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|o[0]~18_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|o[0]~19_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst7|q[0]~7_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[3]~33_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[3]~34_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[3]~35_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[3]~36_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[3]~37_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[1]~10_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[3]~38_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[3]~39_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[1]~7_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[1]~8_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[3]~40_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[3]~41_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[3]~42_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst37|c[3]~9_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[3]~2_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[1]~12_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[1]~13_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[1]~14_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[1]~15_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[1]~16_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[1]~17_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[1]~18_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[1]~19_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[1]~20_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|o[0]~22_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|o[0]~23_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|o[0]~20_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|o[0]~21_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst5|q[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|Mux5~1_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|o[0]~16_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|o[0]~17_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|o[0]~18_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|o[0]~19_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst5|q[0]~5_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[1]~13_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[1]~14_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[1]~15_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[1]~16_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[1]~17_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[3]~10_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[3]~7_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[3]~8_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[1]~18_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[1]~19_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[1]~20_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[1]~21_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[1]~22_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst37|c[1]~13_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|o[1]~12_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|o[1]~13_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|o[1]~14_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|o[1]~15_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|o[1]~16_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|o[1]~17_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|o[1]~18_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|o[1]~19_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|o[1]~20_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst37|c[1]~12_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|Mux7~2_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|Mux7~3_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[0]~7_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[0]~8_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|Mux8~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[0]~9_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[0]~10_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[0]~11_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[0]~6_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[0]~5_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[0]~6_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[0]~9_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[0]~11_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[0]~2_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|Mux8~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[0]~3_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[0]~12_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst37|c[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|Mux4~4_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[1]~27_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|Mux10~2_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[1]~28_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[1]~29_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[1]~30_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[1]~31_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|o[1]~12_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|o[1]~13_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|o[1]~14_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|o[1]~15_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst7|q[1]~4_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|Mux7~1_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|o[1]~8_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|o[1]~9_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|o[1]~10_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|o[1]~11_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst7|q[1]~5_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst33|O[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst22|O[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|o[1]~12_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|o[1]~13_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|o[1]~14_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|o[1]~15_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst5|q[1]~2_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|Mux7~1_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|o[1]~8_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|o[1]~9_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|o[1]~10_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|o[1]~11_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst5|q[1]~3_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst35|O[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|o[2]~33_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|o[2]~34_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|o[2]~31_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|o[2]~32_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst6|q[2]~6_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|Mux7~1_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|o[2]~27_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|o[2]~28_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|o[2]~29_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|o[2]~30_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst6|q[2]~7_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[2]~26_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[2]~27_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[2]~28_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[2]~29_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[2]~30_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[2]~21_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[2]~22_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[2]~23_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[2]~24_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[2]~25_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[2]~23_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[2]~24_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[2]~25_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[2]~26_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[2]~27_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[2]~28_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[2]~29_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[2]~30_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[2]~31_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[2]~32_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst37|c[2]~7_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|Mux5~1_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[0]~17_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[0]~18_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[0]~19_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[0]~20_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[0]~14_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[0]~15_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[0]~12_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[0]~13_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[0]~16_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[0]~21_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|o[3]~9_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|o[3]~10_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|o[3]~7_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|o[3]~8_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst6|q[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|o[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|o[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|o[3]~5_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|o[3]~6_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst6|q[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst34|O[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst33|O[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst22|O[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|o[2]~30_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|o[2]~31_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|o[2]~28_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|o[2]~29_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst5|q[2]~6_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|o[2]~24_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|o[2]~25_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|o[2]~26_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|o[2]~27_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst5|q[2]~7_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst35|O[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst34|O[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|o[2]~28_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|o[2]~29_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|o[2]~30_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|o[2]~31_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst7|q[2]~8_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|o[2]~24_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|o[2]~25_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|o[2]~26_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|o[2]~27_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst7|q[2]~9_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst33|O[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst22|O[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|o[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|o[3]~5_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|o[3]~6_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|o[3]~7_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst5|q[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|o[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|o[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|o[3]~2_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst17|o[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst5|q[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst35|O[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|o[0]~25_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|o[0]~26_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|o[0]~23_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|o[0]~24_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst6|q[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|Mux5~1_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|o[0]~19_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|o[0]~20_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|o[0]~21_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|o[0]~22_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst6|q[0]~5_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst34|O[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst33|O[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst22|O[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst35|O[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|o[1]~11_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|o[1]~12_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|o[1]~13_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|o[1]~14_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|o[1]~17_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|o[1]~18_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|o[1]~15_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst18|o[1]~16_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst6|q[1]~2_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst6|q[1]~3_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[3]~5_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[3]~31_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[3]~32_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[3]~33_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[3]~34_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[3]~35_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[3]~36_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[3]~37_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[3]~38_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|o[3]~39_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[3]~38_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[3]~39_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[3]~40_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[3]~41_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[3]~33_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[3]~34_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[3]~35_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[3]~36_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[3]~37_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst13|o[3]~42_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst37|c[3]~10_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst37|c[3]~11_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst32|o[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[0]~3_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[3]~6_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst7|q[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|o[3]~6_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|o[3]~7_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|o[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|o[3]~5_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst8|q[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|o[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|o[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|o[3]~2_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|o[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst8|q[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|o[2]~27_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|o[2]~28_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|o[2]~25_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|o[2]~26_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|o[2]~29_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|o[2]~21_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|o[2]~22_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|o[2]~23_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|o[2]~24_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[2]~28_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[2]~29_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[2]~30_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[2]~31_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[2]~23_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[2]~24_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[2]~25_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[2]~26_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[2]~27_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[2]~32_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst37|c[2]~6_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst37|c[2]~8_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst32|o[2]~3_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[3]~9_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[3]~10_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[3]~7_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[3]~8_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[3]~11_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst7|q[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|o[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|o[3]~5_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|o[3]~6_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|o[3]~7_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst7|q[3]~2_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|o[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|o[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|o[3]~2_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst19|o[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst7|q[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[1]~15_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[1]~16_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[1]~13_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[1]~14_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[1]~17_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[1]~18_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[1]~19_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[1]~20_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[1]~21_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[1]~22_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst37|c[1]~3_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst37|c[1]~4_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst37|c[1]~5_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst32|o[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[2]~32_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[2]~33_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[2]~34_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[2]~35_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[2]~36_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[2]~37_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[2]~38_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[2]~39_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[2]~40_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst21|o[2]~41_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|o[2]~28_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|o[2]~29_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|o[2]~30_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|o[2]~31_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst8|q[2]~6_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|o[2]~24_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|o[2]~25_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|o[2]~26_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst20|o[2]~27_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst8|q[2]~7_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|o[2]~5_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|o[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|o[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|o[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|o[0]~6_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[0]~5_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[0]~6_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[0]~9_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[0]~11_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[0]~2_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[0]~3_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst15|o[0]~12_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|o[0]~7_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|o[0]~8_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|o[0]~9_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|o[0]~10_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst16|o[0]~11_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst37|c[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst37|c[0]~2_combout\ : std_logic;
SIGNAL \b2v_inst2|Nerror~0_combout\ : std_logic;
SIGNAL \b2v_inst|Selector0~0_combout\ : std_logic;
SIGNAL \b2v_inst|Selector6~0_combout\ : std_logic;
SIGNAL \b2v_inst|Selector6~4_combout\ : std_logic;
SIGNAL \b2v_inst|Selector5~0_combout\ : std_logic;
SIGNAL \b2v_inst|Selector5~1_combout\ : std_logic;
SIGNAL \b2v_inst|Selector4~0_combout\ : std_logic;
SIGNAL \b2v_inst|Selector3~2_combout\ : std_logic;
SIGNAL \b2v_inst|Selector2~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst8|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst2|b2v_inst4|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst2|b2v_inst7|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst2|b2v_inst6|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst2|b2v_inst3|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst2|b2v_inst5|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst2|b2v_inst|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst2|b2v_inst2|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst2|b2v_inst1|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst2|b2v_inst9|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst2|b2v_inst10|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst2|b2v_inst11|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst2|b2v_inst36|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst2|b2v_inst26|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_clearB~0_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \b2v_inst2|ALT_INV_Nerror~0_combout\ : std_logic;
SIGNAL \ALT_INV_Reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_Clock <= Clock;
ww_Reset <= Reset;
ww_Impar <= Impar;
ww_Count4 <= Count4;
ww_Count8 <= Count8;
ww_Inicia <= Inicia;
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
B_0 <= ww_B_0;
B_1 <= ww_B_1;
B_2 <= ww_B_2;
B_3 <= ww_B_3;
B_mux <= ww_B_mux;
DS_reg <= ww_DS_reg;
Lamb1 <= ww_Lamb1;
Lambda2 <= ww_Lambda2;
Lambda3 <= ww_Lambda3;
Lambda4 <= ww_Lambda4;
Omega <= ww_Omega;
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

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);
\b2v_inst|ALT_INV_Selector4~0_combout\ <= NOT \b2v_inst|Selector4~0_combout\;
\b2v_inst|ALT_INV_clearB~0_combout\ <= NOT \b2v_inst|clearB~0_combout\;
\b2v_inst|ALT_INV_WideOr0~0_combout\ <= NOT \b2v_inst|WideOr0~0_combout\;
\b2v_inst2|ALT_INV_Nerror~0_combout\ <= NOT \b2v_inst2|Nerror~0_combout\;
\ALT_INV_Reset~inputclkctrl_outclk\ <= NOT \Reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X22_Y0_N2
\Registra~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|estadoAtual.store~q\,
	devoe => ww_devoe,
	o => \Registra~output_o\);

-- Location: IOOBUF_X63_Y0_N2
\di~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|Selector0~0_combout\,
	devoe => ww_devoe,
	o => \di~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\loadS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|WideOr0~combout\,
	devoe => ww_devoe,
	o => \loadS~output_o\);

-- Location: IOOBUF_X38_Y0_N23
\loadB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \loadB~output_o\);

-- Location: IOOBUF_X38_Y0_N30
\loadC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \loadC~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\clearS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \clearS~output_o\);

-- Location: IOOBUF_X56_Y43_N23
\clearB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|clearB~0_combout\,
	devoe => ww_devoe,
	o => \clearB~output_o\);

-- Location: IOOBUF_X54_Y43_N16
\clearC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|clearB~0_combout\,
	devoe => ww_devoe,
	o => \clearC~output_o\);

-- Location: IOOBUF_X63_Y0_N9
\MuxSel~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|Selector0~0_combout\,
	devoe => ww_devoe,
	o => \MuxSel~output_o\);

-- Location: IOOBUF_X22_Y0_N16
\Nerror~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|ALT_INV_Nerror~0_combout\,
	devoe => ww_devoe,
	o => \Nerror~output_o\);

-- Location: IOOBUF_X67_Y7_N23
\B_0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst9|q\(0),
	devoe => ww_devoe,
	o => \B_0[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\B_0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst9|q\(1),
	devoe => ww_devoe,
	o => \B_0[1]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\B_0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst9|q\(2),
	devoe => ww_devoe,
	o => \B_0[2]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\B_0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst9|q\(3),
	devoe => ww_devoe,
	o => \B_0[3]~output_o\);

-- Location: IOOBUF_X67_Y13_N9
\B_1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst10|q\(0),
	devoe => ww_devoe,
	o => \B_1[0]~output_o\);

-- Location: IOOBUF_X67_Y10_N2
\B_1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst10|q\(1),
	devoe => ww_devoe,
	o => \B_1[1]~output_o\);

-- Location: IOOBUF_X67_Y11_N23
\B_1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst10|q\(2),
	devoe => ww_devoe,
	o => \B_1[2]~output_o\);

-- Location: IOOBUF_X67_Y11_N9
\B_1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst10|q\(3),
	devoe => ww_devoe,
	o => \B_1[3]~output_o\);

-- Location: IOOBUF_X67_Y7_N9
\B_2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst11|q\(0),
	devoe => ww_devoe,
	o => \B_2[0]~output_o\);

-- Location: IOOBUF_X67_Y10_N23
\B_2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst11|q\(1),
	devoe => ww_devoe,
	o => \B_2[1]~output_o\);

-- Location: IOOBUF_X67_Y9_N16
\B_2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst11|q\(2),
	devoe => ww_devoe,
	o => \B_2[2]~output_o\);

-- Location: IOOBUF_X61_Y0_N23
\B_2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst11|q\(3),
	devoe => ww_devoe,
	o => \B_2[3]~output_o\);

-- Location: IOOBUF_X67_Y14_N9
\B_3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst36|q\(0),
	devoe => ww_devoe,
	o => \B_3[0]~output_o\);

-- Location: IOOBUF_X67_Y13_N16
\B_3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst36|q\(1),
	devoe => ww_devoe,
	o => \B_3[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\B_3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst36|q\(2),
	devoe => ww_devoe,
	o => \B_3[2]~output_o\);

-- Location: IOOBUF_X63_Y0_N30
\B_3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst36|q\(3),
	devoe => ww_devoe,
	o => \B_3[3]~output_o\);

-- Location: IOOBUF_X50_Y43_N23
\B_mux[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst22|O[0]~0_combout\,
	devoe => ww_devoe,
	o => \B_mux[0]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\B_mux[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst22|O[1]~1_combout\,
	devoe => ww_devoe,
	o => \B_mux[1]~output_o\);

-- Location: IOOBUF_X43_Y0_N16
\B_mux[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst22|O[2]~2_combout\,
	devoe => ww_devoe,
	o => \B_mux[2]~output_o\);

-- Location: IOOBUF_X61_Y0_N2
\B_mux[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst22|O[3]~3_combout\,
	devoe => ww_devoe,
	o => \B_mux[3]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\DS_reg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst26|q\(0),
	devoe => ww_devoe,
	o => \DS_reg[0]~output_o\);

-- Location: IOOBUF_X67_Y3_N2
\DS_reg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst26|q\(1),
	devoe => ww_devoe,
	o => \DS_reg[1]~output_o\);

-- Location: IOOBUF_X67_Y7_N2
\DS_reg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst26|q\(2),
	devoe => ww_devoe,
	o => \DS_reg[2]~output_o\);

-- Location: IOOBUF_X61_Y0_N9
\DS_reg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst26|q\(3),
	devoe => ww_devoe,
	o => \DS_reg[3]~output_o\);

-- Location: IOOBUF_X50_Y0_N30
\Lamb1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst5|q\(0),
	devoe => ww_devoe,
	o => \Lamb1[0]~output_o\);

-- Location: IOOBUF_X50_Y0_N9
\Lamb1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst5|q\(1),
	devoe => ww_devoe,
	o => \Lamb1[1]~output_o\);

-- Location: IOOBUF_X61_Y0_N16
\Lamb1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst5|q\(2),
	devoe => ww_devoe,
	o => \Lamb1[2]~output_o\);

-- Location: IOOBUF_X54_Y0_N30
\Lamb1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst5|q\(3),
	devoe => ww_devoe,
	o => \Lamb1[3]~output_o\);

-- Location: IOOBUF_X67_Y19_N23
\Lambda2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst6|q\(0),
	devoe => ww_devoe,
	o => \Lambda2[0]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\Lambda2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst6|q\(1),
	devoe => ww_devoe,
	o => \Lambda2[1]~output_o\);

-- Location: IOOBUF_X48_Y0_N23
\Lambda2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst6|q\(2),
	devoe => ww_devoe,
	o => \Lambda2[2]~output_o\);

-- Location: IOOBUF_X67_Y5_N9
\Lambda2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst6|q\(3),
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
	i => \b2v_inst2|b2v_inst7|q\(0),
	devoe => ww_devoe,
	o => \Lambda3[0]~output_o\);

-- Location: IOOBUF_X67_Y9_N9
\Lambda3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst7|q\(1),
	devoe => ww_devoe,
	o => \Lambda3[1]~output_o\);

-- Location: IOOBUF_X67_Y8_N23
\Lambda3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst7|q\(2),
	devoe => ww_devoe,
	o => \Lambda3[2]~output_o\);

-- Location: IOOBUF_X59_Y0_N2
\Lambda3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst7|q\(3),
	devoe => ww_devoe,
	o => \Lambda3[3]~output_o\);

-- Location: IOOBUF_X67_Y15_N9
\Lambda4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst8|q\(0),
	devoe => ww_devoe,
	o => \Lambda4[0]~output_o\);

-- Location: IOOBUF_X67_Y17_N23
\Lambda4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst8|q\(1),
	devoe => ww_devoe,
	o => \Lambda4[1]~output_o\);

-- Location: IOOBUF_X67_Y14_N2
\Lambda4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst8|q\(2),
	devoe => ww_devoe,
	o => \Lambda4[2]~output_o\);

-- Location: IOOBUF_X67_Y13_N2
\Lambda4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst8|q\(3),
	devoe => ww_devoe,
	o => \Lambda4[3]~output_o\);

-- Location: IOOBUF_X67_Y6_N16
\Omega[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst37|c[0]~2_combout\,
	devoe => ww_devoe,
	o => \Omega[0]~output_o\);

-- Location: IOOBUF_X59_Y0_N30
\Omega[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst37|c[1]~5_combout\,
	devoe => ww_devoe,
	o => \Omega[1]~output_o\);

-- Location: IOOBUF_X67_Y18_N9
\Omega[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst37|c[2]~8_combout\,
	devoe => ww_devoe,
	o => \Omega[2]~output_o\);

-- Location: IOOBUF_X67_Y10_N9
\Omega[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst37|c[3]~11_combout\,
	devoe => ww_devoe,
	o => \Omega[3]~output_o\);

-- Location: IOOBUF_X67_Y3_N23
\S0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst|q\(0),
	devoe => ww_devoe,
	o => \S0[0]~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\S0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst|q\(1),
	devoe => ww_devoe,
	o => \S0[1]~output_o\);

-- Location: IOOBUF_X27_Y0_N2
\S0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst|q\(2),
	devoe => ww_devoe,
	o => \S0[2]~output_o\);

-- Location: IOOBUF_X43_Y0_N2
\S0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst|q\(3),
	devoe => ww_devoe,
	o => \S0[3]~output_o\);

-- Location: IOOBUF_X43_Y0_N9
\S1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst1|q\(0),
	devoe => ww_devoe,
	o => \S1[0]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\S1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst1|q\(1),
	devoe => ww_devoe,
	o => \S1[1]~output_o\);

-- Location: IOOBUF_X45_Y0_N9
\S1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst1|q\(2),
	devoe => ww_devoe,
	o => \S1[2]~output_o\);

-- Location: IOOBUF_X45_Y0_N2
\S1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst1|q\(3),
	devoe => ww_devoe,
	o => \S1[3]~output_o\);

-- Location: IOOBUF_X38_Y0_N16
\S2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst2|q\(0),
	devoe => ww_devoe,
	o => \S2[0]~output_o\);

-- Location: IOOBUF_X34_Y0_N30
\S2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst2|q\(1),
	devoe => ww_devoe,
	o => \S2[1]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\S2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst2|q\(2),
	devoe => ww_devoe,
	o => \S2[2]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\S2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst2|q\(3),
	devoe => ww_devoe,
	o => \S2[3]~output_o\);

-- Location: IOOBUF_X67_Y14_N23
\S3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst3|q\(0),
	devoe => ww_devoe,
	o => \S3[0]~output_o\);

-- Location: IOOBUF_X48_Y0_N30
\S3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst3|q\(1),
	devoe => ww_devoe,
	o => \S3[1]~output_o\);

-- Location: IOOBUF_X67_Y10_N16
\S3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst3|q\(2),
	devoe => ww_devoe,
	o => \S3[2]~output_o\);

-- Location: IOOBUF_X67_Y12_N16
\S3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst3|q\(3),
	devoe => ww_devoe,
	o => \S3[3]~output_o\);

-- Location: IOOBUF_X41_Y0_N30
\S4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst4|q\(0),
	devoe => ww_devoe,
	o => \S4[0]~output_o\);

-- Location: IOOBUF_X67_Y15_N2
\S4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst4|q\(1),
	devoe => ww_devoe,
	o => \S4[1]~output_o\);

-- Location: IOOBUF_X67_Y17_N16
\S4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst4|q\(2),
	devoe => ww_devoe,
	o => \S4[2]~output_o\);

-- Location: IOOBUF_X67_Y12_N23
\S4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst4|q\(3),
	devoe => ww_devoe,
	o => \S4[3]~output_o\);

-- Location: IOOBUF_X50_Y0_N16
\Test_state[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|Selector6~4_combout\,
	devoe => ww_devoe,
	o => \Test_state[0]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\Test_state[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|Selector5~1_combout\,
	devoe => ww_devoe,
	o => \Test_state[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\Test_state[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|ALT_INV_Selector4~0_combout\,
	devoe => ww_devoe,
	o => \Test_state[2]~output_o\);

-- Location: IOOBUF_X50_Y0_N2
\Test_state[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|Selector3~2_combout\,
	devoe => ww_devoe,
	o => \Test_state[3]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\Test_state[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|Selector2~0_combout\,
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

-- Location: IOIBUF_X45_Y0_N22
\Count8~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Count8,
	o => \Count8~input_o\);

-- Location: IOIBUF_X27_Y0_N8
\Inicia~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inicia,
	o => \Inicia~input_o\);

-- Location: LCCOMB_X52_Y9_N6
\b2v_inst|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector6~2_combout\ = (!\Inicia~input_o\ & !\b2v_inst|estadoAtual.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inicia~input_o\,
	datad => \b2v_inst|estadoAtual.idle~q\,
	combout => \b2v_inst|Selector6~2_combout\);

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

-- Location: FF_X52_Y9_N7
\b2v_inst|estadoAtual.idle2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|Selector6~2_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|estadoAtual.idle2~q\);

-- Location: LCCOMB_X51_Y6_N12
\b2v_inst|Selector6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector6~3_combout\ = (!\b2v_inst|estadoAtual.store~q\ & ((\Inicia~input_o\) # (!\b2v_inst|estadoAtual.idle2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inicia~input_o\,
	datab => \b2v_inst|estadoAtual.store~q\,
	datad => \b2v_inst|estadoAtual.idle2~q\,
	combout => \b2v_inst|Selector6~3_combout\);

-- Location: FF_X52_Y9_N9
\b2v_inst|estadoAtual.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|Selector6~3_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|estadoAtual.idle~q\);

-- Location: LCCOMB_X52_Y9_N28
\b2v_inst|clearB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|clearB~0_combout\ = (\b2v_inst|estadoAtual.idle2~q\) # (!\b2v_inst|estadoAtual.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|estadoAtual.idle~q\,
	datad => \b2v_inst|estadoAtual.idle2~q\,
	combout => \b2v_inst|clearB~0_combout\);

-- Location: LCCOMB_X51_Y6_N2
\b2v_inst|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector8~0_combout\ = (\Count8~input_o\ & (\b2v_inst|clearB~0_combout\ & (\Inicia~input_o\))) # (!\Count8~input_o\ & ((\b2v_inst|estadoAtual.localizador2~q\) # ((\b2v_inst|clearB~0_combout\ & \Inicia~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Count8~input_o\,
	datab => \b2v_inst|clearB~0_combout\,
	datac => \Inicia~input_o\,
	datad => \b2v_inst|estadoAtual.localizador2~q\,
	combout => \b2v_inst|Selector8~0_combout\);

-- Location: FF_X51_Y6_N3
\b2v_inst|estadoAtual.localizador\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|Selector8~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|estadoAtual.localizador~q\);

-- Location: LCCOMB_X51_Y6_N16
\b2v_inst|proximoEstado.localizador2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|proximoEstado.localizador2~0_combout\ = (!\Count8~input_o\ & \b2v_inst|estadoAtual.localizador~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Count8~input_o\,
	datad => \b2v_inst|estadoAtual.localizador~q\,
	combout => \b2v_inst|proximoEstado.localizador2~0_combout\);

-- Location: FF_X51_Y6_N17
\b2v_inst|estadoAtual.localizador2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|proximoEstado.localizador2~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|estadoAtual.localizador2~q\);

-- Location: LCCOMB_X51_Y6_N24
\b2v_inst|proximoEstado.clearSyn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|proximoEstado.clearSyn~0_combout\ = (\Count8~input_o\ & ((\b2v_inst|estadoAtual.localizador2~q\) # (\b2v_inst|estadoAtual.localizador~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|estadoAtual.localizador2~q\,
	datac => \Count8~input_o\,
	datad => \b2v_inst|estadoAtual.localizador~q\,
	combout => \b2v_inst|proximoEstado.clearSyn~0_combout\);

-- Location: FF_X52_Y9_N21
\b2v_inst|estadoAtual.clearSyn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|proximoEstado.clearSyn~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|estadoAtual.clearSyn~q\);

-- Location: IOIBUF_X52_Y0_N1
\Count4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Count4,
	o => \Count4~input_o\);

-- Location: LCCOMB_X51_Y6_N8
\b2v_inst|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector9~0_combout\ = (\b2v_inst|estadoAtual.clearSyn~q\) # ((\b2v_inst|estadoAtual.avaliador2~q\ & !\Count4~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|estadoAtual.avaliador2~q\,
	datac => \b2v_inst|estadoAtual.clearSyn~q\,
	datad => \Count4~input_o\,
	combout => \b2v_inst|Selector9~0_combout\);

-- Location: FF_X51_Y6_N9
\b2v_inst|estadoAtual.avaliador\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|Selector9~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|estadoAtual.avaliador~q\);

-- Location: LCCOMB_X51_Y6_N10
\b2v_inst|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector5~2_combout\ = (\b2v_inst|estadoAtual.avaliador~q\ & !\Count4~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|estadoAtual.avaliador~q\,
	datad => \Count4~input_o\,
	combout => \b2v_inst|Selector5~2_combout\);

-- Location: FF_X51_Y6_N11
\b2v_inst|estadoAtual.avaliador2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|Selector5~2_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|estadoAtual.avaliador2~q\);

-- Location: LCCOMB_X51_Y6_N20
\b2v_inst|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector6~1_combout\ = (\Count4~input_o\ & ((\b2v_inst|estadoAtual.avaliador2~q\) # (\b2v_inst|estadoAtual.avaliador~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|estadoAtual.avaliador2~q\,
	datac => \b2v_inst|estadoAtual.avaliador~q\,
	datad => \Count4~input_o\,
	combout => \b2v_inst|Selector6~1_combout\);

-- Location: FF_X51_Y6_N21
\b2v_inst|estadoAtual.store\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|Selector6~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|estadoAtual.store~q\);

-- Location: IOIBUF_X50_Y0_N22
\Impar~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Impar,
	o => \Impar~input_o\);

-- Location: LCCOMB_X51_Y6_N14
\b2v_inst|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|WideOr2~0_combout\ = (\b2v_inst|estadoAtual.localizador2~q\) # (\b2v_inst|estadoAtual.localizador~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|estadoAtual.localizador2~q\,
	datad => \b2v_inst|estadoAtual.localizador~q\,
	combout => \b2v_inst|WideOr2~0_combout\);

-- Location: IOIBUF_X61_Y0_N29
\Input[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(0),
	o => \Input[0]~input_o\);

-- Location: LCCOMB_X52_Y9_N22
\b2v_inst|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|WideOr0~0_combout\ = (\b2v_inst|estadoAtual.idle2~q\) # ((\b2v_inst|estadoAtual.clearSyn~q\) # (!\b2v_inst|estadoAtual.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|estadoAtual.idle2~q\,
	datab => \b2v_inst|estadoAtual.idle~q\,
	datad => \b2v_inst|estadoAtual.clearSyn~q\,
	combout => \b2v_inst|WideOr0~0_combout\);

-- Location: LCCOMB_X52_Y9_N8
\b2v_inst|WideOr0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|WideOr0~combout\ = (!\b2v_inst|estadoAtual.idle2~q\ & (!\b2v_inst|estadoAtual.clearSyn~q\ & (\b2v_inst|estadoAtual.idle~q\ & !\b2v_inst|estadoAtual.store~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|estadoAtual.idle2~q\,
	datab => \b2v_inst|estadoAtual.clearSyn~q\,
	datac => \b2v_inst|estadoAtual.idle~q\,
	datad => \b2v_inst|estadoAtual.store~q\,
	combout => \b2v_inst|WideOr0~combout\);

-- Location: FF_X53_Y10_N9
\b2v_inst2|b2v_inst|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Input[0]~input_o\,
	clrn => \b2v_inst|ALT_INV_WideOr0~0_combout\,
	sload => VCC,
	ena => \b2v_inst|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst|q\(0));

-- Location: FF_X51_Y8_N9
\b2v_inst2|b2v_inst1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst2|b2v_inst|q\(0),
	clrn => \b2v_inst|ALT_INV_WideOr0~0_combout\,
	sload => VCC,
	ena => \b2v_inst|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst1|q\(0));

-- Location: FF_X50_Y11_N1
\b2v_inst2|b2v_inst2|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst2|b2v_inst1|q\(0),
	clrn => \b2v_inst|ALT_INV_WideOr0~0_combout\,
	sload => VCC,
	ena => \b2v_inst|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst2|q\(0));

-- Location: LCCOMB_X53_Y8_N20
\b2v_inst2|b2v_inst3|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|q[0]~feeder_combout\ = \b2v_inst2|b2v_inst2|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|b2v_inst2|q\(0),
	combout => \b2v_inst2|b2v_inst3|q[0]~feeder_combout\);

-- Location: FF_X53_Y8_N21
\b2v_inst2|b2v_inst3|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst3|q[0]~feeder_combout\,
	clrn => \b2v_inst|ALT_INV_WideOr0~0_combout\,
	ena => \b2v_inst|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst3|q\(0));

-- Location: FF_X50_Y12_N29
\b2v_inst2|b2v_inst4|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst2|b2v_inst3|q\(0),
	clrn => \b2v_inst|ALT_INV_WideOr0~0_combout\,
	sload => VCC,
	ena => \b2v_inst|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst4|q\(0));

-- Location: IOIBUF_X43_Y0_N29
\Input[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(3),
	o => \Input[3]~input_o\);

-- Location: FF_X51_Y10_N7
\b2v_inst2|b2v_inst|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Input[3]~input_o\,
	clrn => \b2v_inst|ALT_INV_WideOr0~0_combout\,
	sload => VCC,
	ena => \b2v_inst|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst|q\(3));

-- Location: FF_X51_Y8_N1
\b2v_inst2|b2v_inst1|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst2|b2v_inst|q\(3),
	clrn => \b2v_inst|ALT_INV_WideOr0~0_combout\,
	sload => VCC,
	ena => \b2v_inst|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst1|q\(3));

-- Location: FF_X50_Y11_N23
\b2v_inst2|b2v_inst2|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst2|b2v_inst1|q\(3),
	clrn => \b2v_inst|ALT_INV_WideOr0~0_combout\,
	sload => VCC,
	ena => \b2v_inst|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst2|q\(3));

-- Location: FF_X53_Y8_N13
\b2v_inst2|b2v_inst3|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst2|b2v_inst2|q\(3),
	clrn => \b2v_inst|ALT_INV_WideOr0~0_combout\,
	sload => VCC,
	ena => \b2v_inst|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst3|q\(3));

-- Location: FF_X50_Y12_N31
\b2v_inst2|b2v_inst4|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst2|b2v_inst3|q\(3),
	clrn => \b2v_inst|ALT_INV_WideOr0~0_combout\,
	sload => VCC,
	ena => \b2v_inst|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst4|q\(3));

-- Location: FF_X51_Y8_N25
\b2v_inst2|b2v_inst26|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst37|c[0]~2_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	ena => \b2v_inst|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst26|q\(0));

-- Location: LCCOMB_X51_Y10_N10
\b2v_inst2|b2v_inst32|o[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst32|o[1]~2_combout\ = (\b2v_inst2|b2v_inst26|q\(0) & (\b2v_inst2|b2v_inst26|q\(3) $ (((\b2v_inst2|b2v_inst26|q\(1)) # (\b2v_inst2|b2v_inst26|q\(2)))))) # (!\b2v_inst2|b2v_inst26|q\(0) & ((\b2v_inst2|b2v_inst26|q\(1) & 
-- ((\b2v_inst2|b2v_inst26|q\(2)))) # (!\b2v_inst2|b2v_inst26|q\(1) & (\b2v_inst2|b2v_inst26|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst26|q\(0),
	datab => \b2v_inst2|b2v_inst26|q\(3),
	datac => \b2v_inst2|b2v_inst26|q\(1),
	datad => \b2v_inst2|b2v_inst26|q\(2),
	combout => \b2v_inst2|b2v_inst32|o[1]~2_combout\);

-- Location: LCCOMB_X52_Y10_N20
\b2v_inst2|b2v_inst21|o[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[0]~5_combout\ = (\b2v_inst2|b2v_inst32|o[1]~2_combout\ & !\b2v_inst2|b2v_inst32|o[2]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst2|b2v_inst32|o[2]~3_combout\,
	combout => \b2v_inst2|b2v_inst21|o[0]~5_combout\);

-- Location: LCCOMB_X52_Y10_N16
\b2v_inst2|b2v_inst21|o[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[0]~2_combout\ = (\b2v_inst2|b2v_inst32|o[2]~3_combout\) # ((\b2v_inst2|b2v_inst32|o[0]~1_combout\ & !\b2v_inst2|b2v_inst32|o[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datab => \b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst2|b2v_inst32|o[2]~3_combout\,
	combout => \b2v_inst2|b2v_inst21|o[0]~2_combout\);

-- Location: LCCOMB_X52_Y9_N30
\b2v_inst2|b2v_inst34|O[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst34|O[1]~1_combout\ = (\b2v_inst|Selector0~0_combout\ & (\b2v_inst2|b2v_inst6|q\(1))) # (!\b2v_inst|Selector0~0_combout\ & ((\b2v_inst2|b2v_inst10|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst6|q\(1),
	datac => \b2v_inst2|b2v_inst10|q\(1),
	datad => \b2v_inst|Selector0~0_combout\,
	combout => \b2v_inst2|b2v_inst34|O[1]~1_combout\);

-- Location: FF_X52_Y9_N31
\b2v_inst2|b2v_inst11|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst34|O[1]~1_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	ena => \b2v_inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst11|q\(1));

-- Location: LCCOMB_X51_Y10_N2
\b2v_inst2|b2v_inst21|o[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[1]~22_combout\ = (\b2v_inst2|b2v_inst32|o[1]~2_combout\ & (\b2v_inst2|b2v_inst32|o[0]~1_combout\)) # (!\b2v_inst2|b2v_inst32|o[1]~2_combout\ & (\b2v_inst2|b2v_inst37|c[3]~11_combout\ $ (((!\b2v_inst2|b2v_inst32|o[0]~1_combout\ & 
-- \b2v_inst2|b2v_inst37|c[1]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datab => \b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datac => \b2v_inst2|b2v_inst37|c[3]~11_combout\,
	datad => \b2v_inst2|b2v_inst37|c[1]~5_combout\,
	combout => \b2v_inst2|b2v_inst21|o[1]~22_combout\);

-- Location: LCCOMB_X54_Y10_N22
\b2v_inst2|b2v_inst21|o[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[1]~23_combout\ = (\b2v_inst2|b2v_inst32|o[1]~2_combout\ & (\b2v_inst2|b2v_inst37|c[0]~2_combout\ $ (((\b2v_inst2|b2v_inst37|c[1]~5_combout\ & !\b2v_inst2|b2v_inst21|o[1]~22_combout\))))) # (!\b2v_inst2|b2v_inst32|o[1]~2_combout\ & 
-- (((\b2v_inst2|b2v_inst21|o[1]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst37|c[1]~5_combout\,
	datab => \b2v_inst2|b2v_inst37|c[0]~2_combout\,
	datac => \b2v_inst2|b2v_inst21|o[1]~22_combout\,
	datad => \b2v_inst2|b2v_inst32|o[1]~2_combout\,
	combout => \b2v_inst2|b2v_inst21|o[1]~23_combout\);

-- Location: LCCOMB_X53_Y10_N4
\b2v_inst2|b2v_inst21|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|Mux5~0_combout\ = \b2v_inst2|b2v_inst37|c[2]~6_combout\ $ (\b2v_inst2|b2v_inst37|c[3]~11_combout\ $ (\b2v_inst2|b2v_inst37|c[0]~2_combout\ $ (\b2v_inst2|b2v_inst37|c[2]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst37|c[2]~6_combout\,
	datab => \b2v_inst2|b2v_inst37|c[3]~11_combout\,
	datac => \b2v_inst2|b2v_inst37|c[0]~2_combout\,
	datad => \b2v_inst2|b2v_inst37|c[2]~7_combout\,
	combout => \b2v_inst2|b2v_inst21|Mux5~0_combout\);

-- Location: LCCOMB_X54_Y10_N30
\b2v_inst2|b2v_inst21|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|Mux2~2_combout\ = \b2v_inst2|b2v_inst37|c[2]~6_combout\ $ (\b2v_inst2|b2v_inst37|c[2]~7_combout\ $ (\b2v_inst2|b2v_inst37|c[1]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst37|c[2]~6_combout\,
	datac => \b2v_inst2|b2v_inst37|c[2]~7_combout\,
	datad => \b2v_inst2|b2v_inst37|c[1]~5_combout\,
	combout => \b2v_inst2|b2v_inst21|Mux2~2_combout\);

-- Location: LCCOMB_X54_Y10_N18
\b2v_inst2|b2v_inst21|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|Mux9~0_combout\ = \b2v_inst2|b2v_inst37|c[0]~2_combout\ $ (\b2v_inst2|b2v_inst37|c[3]~11_combout\ $ (\b2v_inst2|b2v_inst37|c[1]~5_combout\ $ (\b2v_inst2|b2v_inst37|c[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst37|c[0]~2_combout\,
	datab => \b2v_inst2|b2v_inst37|c[3]~11_combout\,
	datac => \b2v_inst2|b2v_inst37|c[1]~5_combout\,
	datad => \b2v_inst2|b2v_inst37|c[2]~8_combout\,
	combout => \b2v_inst2|b2v_inst21|Mux9~0_combout\);

-- Location: LCCOMB_X54_Y10_N24
\b2v_inst2|b2v_inst21|o[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[1]~24_combout\ = (\b2v_inst2|b2v_inst32|o[1]~2_combout\ & ((\b2v_inst2|b2v_inst32|o[0]~1_combout\) # ((\b2v_inst2|b2v_inst21|Mux9~0_combout\)))) # (!\b2v_inst2|b2v_inst32|o[1]~2_combout\ & (!\b2v_inst2|b2v_inst32|o[0]~1_combout\ & 
-- (\b2v_inst2|b2v_inst21|Mux2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datab => \b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datac => \b2v_inst2|b2v_inst21|Mux2~2_combout\,
	datad => \b2v_inst2|b2v_inst21|Mux9~0_combout\,
	combout => \b2v_inst2|b2v_inst21|o[1]~24_combout\);

-- Location: LCCOMB_X54_Y10_N6
\b2v_inst2|b2v_inst21|o[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[1]~25_combout\ = (\b2v_inst2|b2v_inst32|o[0]~1_combout\ & ((\b2v_inst2|b2v_inst21|o[1]~24_combout\ & ((\b2v_inst2|b2v_inst21|Mux5~0_combout\))) # (!\b2v_inst2|b2v_inst21|o[1]~24_combout\ & (\b2v_inst2|b2v_inst37|c[2]~8_combout\)))) 
-- # (!\b2v_inst2|b2v_inst32|o[0]~1_combout\ & (((\b2v_inst2|b2v_inst21|o[1]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst37|c[2]~8_combout\,
	datab => \b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datac => \b2v_inst2|b2v_inst21|Mux5~0_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~24_combout\,
	combout => \b2v_inst2|b2v_inst21|o[1]~25_combout\);

-- Location: LCCOMB_X54_Y10_N16
\b2v_inst2|b2v_inst21|o[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[1]~26_combout\ = (\b2v_inst2|b2v_inst32|o[3]~0_combout\ & ((\b2v_inst2|b2v_inst32|o[2]~3_combout\ & (\b2v_inst2|b2v_inst21|o[1]~23_combout\)) # (!\b2v_inst2|b2v_inst32|o[2]~3_combout\ & ((\b2v_inst2|b2v_inst21|o[1]~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst32|o[2]~3_combout\,
	datab => \b2v_inst2|b2v_inst32|o[3]~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[1]~23_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~25_combout\,
	combout => \b2v_inst2|b2v_inst21|o[1]~26_combout\);

-- Location: IOIBUF_X67_Y11_N1
\Input[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(2),
	o => \Input[2]~input_o\);

-- Location: FF_X51_Y11_N11
\b2v_inst2|b2v_inst|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Input[2]~input_o\,
	clrn => \b2v_inst|ALT_INV_WideOr0~0_combout\,
	sload => VCC,
	ena => \b2v_inst|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst|q\(2));

-- Location: FF_X51_Y8_N31
\b2v_inst2|b2v_inst1|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst2|b2v_inst|q\(2),
	clrn => \b2v_inst|ALT_INV_WideOr0~0_combout\,
	sload => VCC,
	ena => \b2v_inst|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst1|q\(2));

-- Location: FF_X50_Y11_N21
\b2v_inst2|b2v_inst2|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst2|b2v_inst1|q\(2),
	clrn => \b2v_inst|ALT_INV_WideOr0~0_combout\,
	sload => VCC,
	ena => \b2v_inst|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst2|q\(2));

-- Location: LCCOMB_X53_Y8_N30
\b2v_inst2|b2v_inst3|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|q[2]~feeder_combout\ = \b2v_inst2|b2v_inst2|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst2|b2v_inst2|q\(2),
	combout => \b2v_inst2|b2v_inst3|q[2]~feeder_combout\);

-- Location: FF_X53_Y8_N31
\b2v_inst2|b2v_inst3|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst3|q[2]~feeder_combout\,
	clrn => \b2v_inst|ALT_INV_WideOr0~0_combout\,
	ena => \b2v_inst|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst3|q\(2));

-- Location: FF_X50_Y12_N1
\b2v_inst2|b2v_inst4|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst2|b2v_inst3|q\(2),
	clrn => \b2v_inst|ALT_INV_WideOr0~0_combout\,
	sload => VCC,
	ena => \b2v_inst|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst4|q\(2));

-- Location: LCCOMB_X54_Y12_N14
\b2v_inst2|b2v_inst20|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|Mux9~0_combout\ = \b2v_inst2|b2v_inst36|q\(1) $ (\b2v_inst2|b2v_inst36|q\(0) $ (\b2v_inst2|b2v_inst36|q\(2) $ (\b2v_inst2|b2v_inst36|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst36|q\(1),
	datab => \b2v_inst2|b2v_inst36|q\(0),
	datac => \b2v_inst2|b2v_inst36|q\(2),
	datad => \b2v_inst2|b2v_inst36|q\(3),
	combout => \b2v_inst2|b2v_inst20|Mux9~0_combout\);

-- Location: LCCOMB_X54_Y12_N22
\b2v_inst2|b2v_inst20|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|Mux3~0_combout\ = \b2v_inst2|b2v_inst36|q\(3) $ (\b2v_inst2|b2v_inst36|q\(2) $ (\b2v_inst2|b2v_inst36|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst36|q\(3),
	datac => \b2v_inst2|b2v_inst36|q\(2),
	datad => \b2v_inst2|b2v_inst36|q\(1),
	combout => \b2v_inst2|b2v_inst20|Mux3~0_combout\);

-- Location: LCCOMB_X54_Y12_N20
\b2v_inst2|b2v_inst20|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|Mux2~0_combout\ = \b2v_inst2|b2v_inst36|q\(2) $ (\b2v_inst2|b2v_inst36|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|b2v_inst36|q\(2),
	datad => \b2v_inst2|b2v_inst36|q\(1),
	combout => \b2v_inst2|b2v_inst20|Mux2~0_combout\);

-- Location: LCCOMB_X54_Y12_N26
\b2v_inst2|b2v_inst20|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|Mux10~0_combout\ = \b2v_inst2|b2v_inst36|q\(2) $ (\b2v_inst2|b2v_inst36|q\(0) $ (\b2v_inst2|b2v_inst36|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst36|q\(2),
	datac => \b2v_inst2|b2v_inst36|q\(0),
	datad => \b2v_inst2|b2v_inst36|q\(1),
	combout => \b2v_inst2|b2v_inst20|Mux10~0_combout\);

-- Location: LCCOMB_X52_Y12_N2
\b2v_inst2|b2v_inst20|o[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|o[0]~20_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst2|b2v_inst20|Mux10~0_combout\) # (\b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst2|b2v_inst20|Mux2~0_combout\ 
-- & ((!\b2v_inst2|b2v_inst21|o[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst20|Mux2~0_combout\,
	datab => \b2v_inst2|b2v_inst20|Mux10~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst20|o[0]~20_combout\);

-- Location: LCCOMB_X52_Y12_N4
\b2v_inst2|b2v_inst20|o[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|o[0]~21_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst2|b2v_inst20|o[0]~20_combout\ & (\b2v_inst2|b2v_inst20|Mux9~0_combout\)) # (!\b2v_inst2|b2v_inst20|o[0]~20_combout\ & 
-- ((\b2v_inst2|b2v_inst20|Mux3~0_combout\))))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst2|b2v_inst20|o[0]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst20|Mux9~0_combout\,
	datab => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datac => \b2v_inst2|b2v_inst20|Mux3~0_combout\,
	datad => \b2v_inst2|b2v_inst20|o[0]~20_combout\,
	combout => \b2v_inst2|b2v_inst20|o[0]~21_combout\);

-- Location: LCCOMB_X54_Y12_N12
\b2v_inst2|b2v_inst20|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|Mux7~0_combout\ = \b2v_inst2|b2v_inst36|q\(0) $ (\b2v_inst2|b2v_inst36|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|b2v_inst36|q\(0),
	datad => \b2v_inst2|b2v_inst36|q\(1),
	combout => \b2v_inst2|b2v_inst20|Mux7~0_combout\);

-- Location: LCCOMB_X52_Y12_N6
\b2v_inst2|b2v_inst20|o[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|o[0]~22_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst2|b2v_inst36|q\(1) $ (((\b2v_inst2|b2v_inst36|q\(3) & 
-- \b2v_inst2|b2v_inst21|o[1]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst36|q\(3),
	datab => \b2v_inst2|b2v_inst36|q\(1),
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst20|o[0]~22_combout\);

-- Location: LCCOMB_X52_Y12_N0
\b2v_inst2|b2v_inst20|o[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|o[0]~23_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst2|b2v_inst20|Mux7~0_combout\ $ (((\b2v_inst2|b2v_inst36|q\(3) & \b2v_inst2|b2v_inst20|o[0]~22_combout\))))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & 
-- (((\b2v_inst2|b2v_inst20|o[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst20|Mux7~0_combout\,
	datab => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datac => \b2v_inst2|b2v_inst36|q\(3),
	datad => \b2v_inst2|b2v_inst20|o[0]~22_combout\,
	combout => \b2v_inst2|b2v_inst20|o[0]~23_combout\);

-- Location: LCCOMB_X52_Y12_N22
\b2v_inst2|b2v_inst8|q[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst8|q[0]~4_combout\ = (\b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst2|b2v_inst21|o[2]~41_combout\ & (\b2v_inst2|b2v_inst20|o[0]~21_combout\)) # (!\b2v_inst2|b2v_inst21|o[2]~41_combout\ & ((\b2v_inst2|b2v_inst20|o[0]~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datab => \b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datac => \b2v_inst2|b2v_inst20|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst20|o[0]~23_combout\,
	combout => \b2v_inst2|b2v_inst8|q[0]~4_combout\);

-- Location: LCCOMB_X53_Y10_N16
\b2v_inst2|b2v_inst18|o[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|o[2]~0_combout\ = (!\b2v_inst2|b2v_inst21|o[2]~41_combout\ & ((\b2v_inst2|b2v_inst21|o[1]~26_combout\) # ((!\b2v_inst2|b2v_inst32|o[3]~0_combout\ & \b2v_inst2|b2v_inst21|o[1]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst32|o[3]~0_combout\,
	datab => \b2v_inst2|b2v_inst21|o[1]~26_combout\,
	datac => \b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~30_combout\,
	combout => \b2v_inst2|b2v_inst18|o[2]~0_combout\);

-- Location: LCCOMB_X53_Y10_N10
\b2v_inst2|b2v_inst18|o[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|o[2]~1_combout\ = (!\b2v_inst2|b2v_inst18|o[2]~0_combout\ & ((\b2v_inst2|b2v_inst21|o[0]~21_combout\) # (\b2v_inst2|b2v_inst21|o[2]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datac => \b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datad => \b2v_inst2|b2v_inst18|o[2]~0_combout\,
	combout => \b2v_inst2|b2v_inst18|o[2]~1_combout\);

-- Location: LCCOMB_X53_Y10_N0
\b2v_inst2|b2v_inst18|o[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|o[2]~2_combout\ = (\b2v_inst2|b2v_inst21|o[2]~41_combout\) # ((\b2v_inst2|b2v_inst21|o[0]~21_combout\ & \b2v_inst2|b2v_inst18|o[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datac => \b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datad => \b2v_inst2|b2v_inst18|o[2]~0_combout\,
	combout => \b2v_inst2|b2v_inst18|o[2]~2_combout\);

-- Location: LCCOMB_X54_Y12_N28
\b2v_inst2|b2v_inst20|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|Mux5~1_combout\ = \b2v_inst2|b2v_inst36|q\(2) $ (\b2v_inst2|b2v_inst36|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst36|q\(2),
	datac => \b2v_inst2|b2v_inst36|q\(0),
	combout => \b2v_inst2|b2v_inst20|Mux5~1_combout\);

-- Location: LCCOMB_X52_Y12_N10
\b2v_inst2|b2v_inst20|o[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|o[0]~16_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst2|b2v_inst36|q\(2) $ (((\b2v_inst2|b2v_inst36|q\(3) & 
-- \b2v_inst2|b2v_inst21|o[1]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst36|q\(3),
	datab => \b2v_inst2|b2v_inst36|q\(2),
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst20|o[0]~16_combout\);

-- Location: LCCOMB_X52_Y12_N12
\b2v_inst2|b2v_inst20|o[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|o[0]~17_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst2|b2v_inst20|Mux5~1_combout\ $ (((\b2v_inst2|b2v_inst36|q\(3) & \b2v_inst2|b2v_inst20|o[0]~16_combout\))))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & 
-- (((\b2v_inst2|b2v_inst20|o[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst20|Mux5~1_combout\,
	datab => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datac => \b2v_inst2|b2v_inst36|q\(3),
	datad => \b2v_inst2|b2v_inst20|o[0]~16_combout\,
	combout => \b2v_inst2|b2v_inst20|o[0]~17_combout\);

-- Location: LCCOMB_X52_Y12_N18
\b2v_inst2|b2v_inst20|o[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|o[0]~18_combout\ = (\b2v_inst2|b2v_inst18|o[2]~1_combout\ & ((\b2v_inst2|b2v_inst18|o[2]~2_combout\ & ((\b2v_inst2|b2v_inst20|o[0]~17_combout\))) # (!\b2v_inst2|b2v_inst18|o[2]~2_combout\ & (\b2v_inst2|b2v_inst36|q\(0))))) # 
-- (!\b2v_inst2|b2v_inst18|o[2]~1_combout\ & (((\b2v_inst2|b2v_inst18|o[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst18|o[2]~1_combout\,
	datab => \b2v_inst2|b2v_inst36|q\(0),
	datac => \b2v_inst2|b2v_inst18|o[2]~2_combout\,
	datad => \b2v_inst2|b2v_inst20|o[0]~17_combout\,
	combout => \b2v_inst2|b2v_inst20|o[0]~18_combout\);

-- Location: LCCOMB_X52_Y12_N28
\b2v_inst2|b2v_inst20|o[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|o[0]~19_combout\ = (\b2v_inst2|b2v_inst18|o[2]~0_combout\ & (\b2v_inst2|b2v_inst36|q\(3) $ (((\b2v_inst2|b2v_inst36|q\(0) & \b2v_inst2|b2v_inst20|o[0]~18_combout\))))) # (!\b2v_inst2|b2v_inst18|o[2]~0_combout\ & 
-- (((\b2v_inst2|b2v_inst20|o[0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst36|q\(0),
	datab => \b2v_inst2|b2v_inst18|o[2]~0_combout\,
	datac => \b2v_inst2|b2v_inst36|q\(3),
	datad => \b2v_inst2|b2v_inst20|o[0]~18_combout\,
	combout => \b2v_inst2|b2v_inst20|o[0]~19_combout\);

-- Location: LCCOMB_X52_Y12_N16
\b2v_inst2|b2v_inst8|q[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst8|q[0]~5_combout\ = \b2v_inst2|b2v_inst8|q\(0) $ (((\b2v_inst2|b2v_inst8|q[0]~4_combout\) # ((\b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst2|b2v_inst20|o[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst8|q[0]~4_combout\,
	datab => \b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datac => \b2v_inst2|b2v_inst8|q\(0),
	datad => \b2v_inst2|b2v_inst20|o[0]~19_combout\,
	combout => \b2v_inst2|b2v_inst8|q[0]~5_combout\);

-- Location: FF_X52_Y12_N17
\b2v_inst2|b2v_inst8|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst8|q[0]~5_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst8|q\(0));

-- Location: LCCOMB_X53_Y12_N30
\b2v_inst2|b2v_inst20|o[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|o[1]~12_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst2|b2v_inst36|q\(3) $ (((\b2v_inst2|b2v_inst36|q\(1) & 
-- !\b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst36|q\(1),
	datab => \b2v_inst2|b2v_inst36|q\(3),
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst20|o[1]~12_combout\);

-- Location: LCCOMB_X53_Y12_N4
\b2v_inst2|b2v_inst20|o[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|o[1]~13_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst2|b2v_inst36|q\(0) $ (((!\b2v_inst2|b2v_inst20|o[1]~12_combout\ & \b2v_inst2|b2v_inst36|q\(1)))))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- (((\b2v_inst2|b2v_inst20|o[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datab => \b2v_inst2|b2v_inst36|q\(0),
	datac => \b2v_inst2|b2v_inst20|o[1]~12_combout\,
	datad => \b2v_inst2|b2v_inst36|q\(1),
	combout => \b2v_inst2|b2v_inst20|o[1]~13_combout\);

-- Location: LCCOMB_X54_Y12_N24
\b2v_inst2|b2v_inst20|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|Mux5~0_combout\ = \b2v_inst2|b2v_inst36|q\(2) $ (\b2v_inst2|b2v_inst36|q\(0) $ (\b2v_inst2|b2v_inst36|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst36|q\(2),
	datac => \b2v_inst2|b2v_inst36|q\(0),
	datad => \b2v_inst2|b2v_inst36|q\(3),
	combout => \b2v_inst2|b2v_inst20|Mux5~0_combout\);

-- Location: LCCOMB_X53_Y12_N26
\b2v_inst2|b2v_inst20|o[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|o[1]~14_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- (\b2v_inst2|b2v_inst20|Mux9~0_combout\)) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst2|b2v_inst20|Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst20|Mux9~0_combout\,
	datab => \b2v_inst2|b2v_inst20|Mux2~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst20|o[1]~14_combout\);

-- Location: LCCOMB_X53_Y12_N16
\b2v_inst2|b2v_inst20|o[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|o[1]~15_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst2|b2v_inst20|o[1]~14_combout\ & (\b2v_inst2|b2v_inst20|Mux5~0_combout\)) # (!\b2v_inst2|b2v_inst20|o[1]~14_combout\ & ((\b2v_inst2|b2v_inst36|q\(2)))))) # 
-- (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst2|b2v_inst20|o[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst20|Mux5~0_combout\,
	datab => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datac => \b2v_inst2|b2v_inst20|o[1]~14_combout\,
	datad => \b2v_inst2|b2v_inst36|q\(2),
	combout => \b2v_inst2|b2v_inst20|o[1]~15_combout\);

-- Location: LCCOMB_X53_Y12_N10
\b2v_inst2|b2v_inst8|q[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst8|q[1]~2_combout\ = (\b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst2|b2v_inst21|o[2]~41_combout\ & (\b2v_inst2|b2v_inst20|o[1]~13_combout\)) # (!\b2v_inst2|b2v_inst21|o[2]~41_combout\ & ((\b2v_inst2|b2v_inst20|o[1]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datab => \b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datac => \b2v_inst2|b2v_inst20|o[1]~13_combout\,
	datad => \b2v_inst2|b2v_inst20|o[1]~15_combout\,
	combout => \b2v_inst2|b2v_inst8|q[1]~2_combout\);

-- Location: LCCOMB_X54_Y12_N30
\b2v_inst2|b2v_inst20|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|Mux4~0_combout\ = \b2v_inst2|b2v_inst36|q\(0) $ (\b2v_inst2|b2v_inst36|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|b2v_inst36|q\(0),
	datad => \b2v_inst2|b2v_inst36|q\(3),
	combout => \b2v_inst2|b2v_inst20|Mux4~0_combout\);

-- Location: LCCOMB_X54_Y12_N8
\b2v_inst2|b2v_inst20|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|Mux7~1_combout\ = \b2v_inst2|b2v_inst36|q\(3) $ (\b2v_inst2|b2v_inst36|q\(0) $ (\b2v_inst2|b2v_inst36|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst36|q\(3),
	datac => \b2v_inst2|b2v_inst36|q\(0),
	datad => \b2v_inst2|b2v_inst36|q\(1),
	combout => \b2v_inst2|b2v_inst20|Mux7~1_combout\);

-- Location: LCCOMB_X54_Y12_N18
\b2v_inst2|b2v_inst20|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|Mux0~0_combout\ = \b2v_inst2|b2v_inst36|q\(2) $ (\b2v_inst2|b2v_inst36|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|b2v_inst36|q\(2),
	datad => \b2v_inst2|b2v_inst36|q\(3),
	combout => \b2v_inst2|b2v_inst20|Mux0~0_combout\);

-- Location: LCCOMB_X53_Y12_N6
\b2v_inst2|b2v_inst20|o[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|o[1]~8_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- ((\b2v_inst2|b2v_inst20|Mux5~1_combout\))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst2|b2v_inst20|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst20|Mux0~0_combout\,
	datab => \b2v_inst2|b2v_inst20|Mux5~1_combout\,
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst20|o[1]~8_combout\);

-- Location: LCCOMB_X53_Y12_N28
\b2v_inst2|b2v_inst20|o[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|o[1]~9_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst2|b2v_inst20|o[1]~8_combout\ & ((\b2v_inst2|b2v_inst20|Mux10~0_combout\))) # (!\b2v_inst2|b2v_inst20|o[1]~8_combout\ & (\b2v_inst2|b2v_inst20|Mux3~0_combout\)))) 
-- # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst2|b2v_inst20|o[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst20|Mux3~0_combout\,
	datab => \b2v_inst2|b2v_inst20|Mux10~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst20|o[1]~8_combout\,
	combout => \b2v_inst2|b2v_inst20|o[1]~9_combout\);

-- Location: LCCOMB_X53_Y12_N18
\b2v_inst2|b2v_inst20|o[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|o[1]~10_combout\ = (\b2v_inst2|b2v_inst18|o[2]~1_combout\ & ((\b2v_inst2|b2v_inst18|o[2]~2_combout\ & ((\b2v_inst2|b2v_inst20|o[1]~9_combout\))) # (!\b2v_inst2|b2v_inst18|o[2]~2_combout\ & (\b2v_inst2|b2v_inst36|q\(1))))) # 
-- (!\b2v_inst2|b2v_inst18|o[2]~1_combout\ & (((\b2v_inst2|b2v_inst18|o[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst36|q\(1),
	datab => \b2v_inst2|b2v_inst18|o[2]~1_combout\,
	datac => \b2v_inst2|b2v_inst18|o[2]~2_combout\,
	datad => \b2v_inst2|b2v_inst20|o[1]~9_combout\,
	combout => \b2v_inst2|b2v_inst20|o[1]~10_combout\);

-- Location: LCCOMB_X53_Y12_N24
\b2v_inst2|b2v_inst20|o[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|o[1]~11_combout\ = (\b2v_inst2|b2v_inst18|o[2]~0_combout\ & ((\b2v_inst2|b2v_inst20|o[1]~10_combout\ & ((\b2v_inst2|b2v_inst20|Mux7~1_combout\))) # (!\b2v_inst2|b2v_inst20|o[1]~10_combout\ & (\b2v_inst2|b2v_inst20|Mux4~0_combout\)))) 
-- # (!\b2v_inst2|b2v_inst18|o[2]~0_combout\ & (((\b2v_inst2|b2v_inst20|o[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst20|Mux4~0_combout\,
	datab => \b2v_inst2|b2v_inst20|Mux7~1_combout\,
	datac => \b2v_inst2|b2v_inst18|o[2]~0_combout\,
	datad => \b2v_inst2|b2v_inst20|o[1]~10_combout\,
	combout => \b2v_inst2|b2v_inst20|o[1]~11_combout\);

-- Location: LCCOMB_X53_Y12_N0
\b2v_inst2|b2v_inst8|q[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst8|q[1]~3_combout\ = \b2v_inst2|b2v_inst8|q\(1) $ (((\b2v_inst2|b2v_inst8|q[1]~2_combout\) # ((\b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst2|b2v_inst20|o[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst8|q[1]~2_combout\,
	datab => \b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datac => \b2v_inst2|b2v_inst8|q\(1),
	datad => \b2v_inst2|b2v_inst20|o[1]~11_combout\,
	combout => \b2v_inst2|b2v_inst8|q[1]~3_combout\);

-- Location: FF_X53_Y12_N1
\b2v_inst2|b2v_inst8|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst8|q[1]~3_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst8|q\(1));

-- Location: LCCOMB_X50_Y12_N8
\b2v_inst2|b2v_inst16|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|Mux5~0_combout\ = \b2v_inst2|b2v_inst4|q\(0) $ (\b2v_inst2|b2v_inst4|q\(3) $ (\b2v_inst2|b2v_inst4|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst4|q\(0),
	datac => \b2v_inst2|b2v_inst4|q\(3),
	datad => \b2v_inst2|b2v_inst4|q\(2),
	combout => \b2v_inst2|b2v_inst16|Mux5~0_combout\);

-- Location: LCCOMB_X50_Y12_N26
\b2v_inst2|b2v_inst16|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|Mux4~0_combout\ = \b2v_inst2|b2v_inst4|q\(3) $ (\b2v_inst2|b2v_inst4|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|b2v_inst4|q\(3),
	datad => \b2v_inst2|b2v_inst4|q\(0),
	combout => \b2v_inst2|b2v_inst16|Mux4~0_combout\);

-- Location: LCCOMB_X49_Y12_N20
\b2v_inst2|b2v_inst16|o[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|o[3]~36_combout\ = (\b2v_inst2|b2v_inst8|q\(0) & (\b2v_inst2|b2v_inst8|q\(1))) # (!\b2v_inst2|b2v_inst8|q\(0) & ((\b2v_inst2|b2v_inst8|q\(1) & (\b2v_inst2|b2v_inst16|Mux5~0_combout\)) # (!\b2v_inst2|b2v_inst8|q\(1) & 
-- ((\b2v_inst2|b2v_inst16|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst8|q\(0),
	datab => \b2v_inst2|b2v_inst8|q\(1),
	datac => \b2v_inst2|b2v_inst16|Mux5~0_combout\,
	datad => \b2v_inst2|b2v_inst16|Mux4~0_combout\,
	combout => \b2v_inst2|b2v_inst16|o[3]~36_combout\);

-- Location: LCCOMB_X49_Y12_N22
\b2v_inst2|b2v_inst16|o[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|o[3]~37_combout\ = (\b2v_inst2|b2v_inst8|q\(0) & (\b2v_inst2|b2v_inst4|q\(0) $ (((\b2v_inst2|b2v_inst4|q\(2) & \b2v_inst2|b2v_inst16|o[3]~36_combout\))))) # (!\b2v_inst2|b2v_inst8|q\(0) & (((\b2v_inst2|b2v_inst16|o[3]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst4|q\(2),
	datab => \b2v_inst2|b2v_inst4|q\(0),
	datac => \b2v_inst2|b2v_inst8|q\(0),
	datad => \b2v_inst2|b2v_inst16|o[3]~36_combout\,
	combout => \b2v_inst2|b2v_inst16|o[3]~37_combout\);

-- Location: IOIBUF_X29_Y0_N29
\Input[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(1),
	o => \Input[1]~input_o\);

-- Location: FF_X50_Y10_N5
\b2v_inst2|b2v_inst|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \Input[1]~input_o\,
	clrn => \b2v_inst|ALT_INV_WideOr0~0_combout\,
	sload => VCC,
	ena => \b2v_inst|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst|q\(1));

-- Location: FF_X51_Y7_N13
\b2v_inst2|b2v_inst1|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst2|b2v_inst|q\(1),
	clrn => \b2v_inst|ALT_INV_WideOr0~0_combout\,
	sload => VCC,
	ena => \b2v_inst|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst1|q\(1));

-- Location: FF_X50_Y11_N5
\b2v_inst2|b2v_inst2|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst2|b2v_inst1|q\(1),
	clrn => \b2v_inst|ALT_INV_WideOr0~0_combout\,
	sload => VCC,
	ena => \b2v_inst|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst2|q\(1));

-- Location: LCCOMB_X53_Y8_N8
\b2v_inst2|b2v_inst3|q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|q[1]~feeder_combout\ = \b2v_inst2|b2v_inst2|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst2|b2v_inst2|q\(1),
	combout => \b2v_inst2|b2v_inst3|q[1]~feeder_combout\);

-- Location: FF_X53_Y8_N9
\b2v_inst2|b2v_inst3|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst3|q[1]~feeder_combout\,
	clrn => \b2v_inst|ALT_INV_WideOr0~0_combout\,
	ena => \b2v_inst|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst3|q\(1));

-- Location: FF_X50_Y12_N13
\b2v_inst2|b2v_inst4|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst2|b2v_inst3|q\(1),
	clrn => \b2v_inst|ALT_INV_WideOr0~0_combout\,
	sload => VCC,
	ena => \b2v_inst|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst4|q\(1));

-- Location: LCCOMB_X49_Y12_N12
\b2v_inst2|b2v_inst16|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|Mux10~0_combout\ = \b2v_inst2|b2v_inst4|q\(2) $ (\b2v_inst2|b2v_inst4|q\(1) $ (\b2v_inst2|b2v_inst4|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst4|q\(2),
	datac => \b2v_inst2|b2v_inst4|q\(1),
	datad => \b2v_inst2|b2v_inst4|q\(0),
	combout => \b2v_inst2|b2v_inst16|Mux10~0_combout\);

-- Location: LCCOMB_X50_Y12_N10
\b2v_inst2|b2v_inst16|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|Mux9~0_combout\ = \b2v_inst2|b2v_inst4|q\(1) $ (\b2v_inst2|b2v_inst4|q\(0) $ (\b2v_inst2|b2v_inst4|q\(3) $ (\b2v_inst2|b2v_inst4|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst4|q\(1),
	datab => \b2v_inst2|b2v_inst4|q\(0),
	datac => \b2v_inst2|b2v_inst4|q\(3),
	datad => \b2v_inst2|b2v_inst4|q\(2),
	combout => \b2v_inst2|b2v_inst16|Mux9~0_combout\);

-- Location: LCCOMB_X50_Y12_N0
\b2v_inst2|b2v_inst16|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|Mux8~0_combout\ = \b2v_inst2|b2v_inst4|q\(0) $ (\b2v_inst2|b2v_inst4|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst4|q\(0),
	datad => \b2v_inst2|b2v_inst4|q\(1),
	combout => \b2v_inst2|b2v_inst16|Mux8~0_combout\);

-- Location: LCCOMB_X49_Y12_N16
\b2v_inst2|b2v_inst16|o[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|o[3]~34_combout\ = (\b2v_inst2|b2v_inst8|q\(1) & (((\b2v_inst2|b2v_inst8|q\(0))))) # (!\b2v_inst2|b2v_inst8|q\(1) & (\b2v_inst2|b2v_inst16|Mux8~0_combout\ $ (((\b2v_inst2|b2v_inst4|q\(3) & !\b2v_inst2|b2v_inst8|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst4|q\(3),
	datab => \b2v_inst2|b2v_inst8|q\(1),
	datac => \b2v_inst2|b2v_inst16|Mux8~0_combout\,
	datad => \b2v_inst2|b2v_inst8|q\(0),
	combout => \b2v_inst2|b2v_inst16|o[3]~34_combout\);

-- Location: LCCOMB_X49_Y12_N18
\b2v_inst2|b2v_inst16|o[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|o[3]~35_combout\ = (\b2v_inst2|b2v_inst8|q\(1) & ((\b2v_inst2|b2v_inst16|o[3]~34_combout\ & (\b2v_inst2|b2v_inst16|Mux10~0_combout\)) # (!\b2v_inst2|b2v_inst16|o[3]~34_combout\ & ((\b2v_inst2|b2v_inst16|Mux9~0_combout\))))) # 
-- (!\b2v_inst2|b2v_inst8|q\(1) & (((\b2v_inst2|b2v_inst16|o[3]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst16|Mux10~0_combout\,
	datab => \b2v_inst2|b2v_inst16|Mux9~0_combout\,
	datac => \b2v_inst2|b2v_inst8|q\(1),
	datad => \b2v_inst2|b2v_inst16|o[3]~34_combout\,
	combout => \b2v_inst2|b2v_inst16|o[3]~35_combout\);

-- Location: LCCOMB_X49_Y12_N4
\b2v_inst2|b2v_inst16|o[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|o[3]~38_combout\ = (\b2v_inst2|b2v_inst8|q\(3) & ((\b2v_inst2|b2v_inst8|q\(2) & ((\b2v_inst2|b2v_inst16|o[3]~35_combout\))) # (!\b2v_inst2|b2v_inst8|q\(2) & (\b2v_inst2|b2v_inst16|o[3]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst8|q\(3),
	datab => \b2v_inst2|b2v_inst8|q\(2),
	datac => \b2v_inst2|b2v_inst16|o[3]~37_combout\,
	datad => \b2v_inst2|b2v_inst16|o[3]~35_combout\,
	combout => \b2v_inst2|b2v_inst16|o[3]~38_combout\);

-- Location: LCCOMB_X52_Y12_N20
\b2v_inst2|b2v_inst16|o[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|o[2]~3_combout\ = (\b2v_inst2|b2v_inst8|q\(2)) # ((\b2v_inst2|b2v_inst8|q\(1) & \b2v_inst2|b2v_inst8|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst8|q\(1),
	datac => \b2v_inst2|b2v_inst8|q\(2),
	datad => \b2v_inst2|b2v_inst8|q\(0),
	combout => \b2v_inst2|b2v_inst16|o[2]~3_combout\);

-- Location: LCCOMB_X52_Y12_N14
\b2v_inst2|b2v_inst16|o[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|o[2]~2_combout\ = (\b2v_inst2|b2v_inst8|q\(2)) # ((!\b2v_inst2|b2v_inst8|q\(1) & \b2v_inst2|b2v_inst8|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst8|q\(1),
	datac => \b2v_inst2|b2v_inst8|q\(2),
	datad => \b2v_inst2|b2v_inst8|q\(0),
	combout => \b2v_inst2|b2v_inst16|o[2]~2_combout\);

-- Location: LCCOMB_X51_Y12_N30
\b2v_inst2|b2v_inst16|o[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|o[3]~30_combout\ = (\b2v_inst2|b2v_inst8|q\(1) & (\b2v_inst2|b2v_inst8|q\(0))) # (!\b2v_inst2|b2v_inst8|q\(1) & (\b2v_inst2|b2v_inst4|q\(1) $ (((\b2v_inst2|b2v_inst8|q\(0) & \b2v_inst2|b2v_inst4|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst8|q\(0),
	datab => \b2v_inst2|b2v_inst4|q\(3),
	datac => \b2v_inst2|b2v_inst8|q\(1),
	datad => \b2v_inst2|b2v_inst4|q\(1),
	combout => \b2v_inst2|b2v_inst16|o[3]~30_combout\);

-- Location: LCCOMB_X49_Y12_N10
\b2v_inst2|b2v_inst16|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|Mux2~0_combout\ = \b2v_inst2|b2v_inst4|q\(1) $ (\b2v_inst2|b2v_inst4|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst4|q\(1),
	datac => \b2v_inst2|b2v_inst4|q\(2),
	combout => \b2v_inst2|b2v_inst16|Mux2~0_combout\);

-- Location: LCCOMB_X51_Y12_N0
\b2v_inst2|b2v_inst16|o[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|o[3]~31_combout\ = (\b2v_inst2|b2v_inst8|q\(1) & (\b2v_inst2|b2v_inst16|Mux2~0_combout\ $ (((\b2v_inst2|b2v_inst4|q\(3) & \b2v_inst2|b2v_inst16|o[3]~30_combout\))))) # (!\b2v_inst2|b2v_inst8|q\(1) & 
-- (((\b2v_inst2|b2v_inst16|o[3]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst4|q\(3),
	datab => \b2v_inst2|b2v_inst8|q\(1),
	datac => \b2v_inst2|b2v_inst16|o[3]~30_combout\,
	datad => \b2v_inst2|b2v_inst16|Mux2~0_combout\,
	combout => \b2v_inst2|b2v_inst16|o[3]~31_combout\);

-- Location: LCCOMB_X51_Y12_N18
\b2v_inst2|b2v_inst16|o[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|o[3]~32_combout\ = (\b2v_inst2|b2v_inst16|o[2]~3_combout\ & (((\b2v_inst2|b2v_inst16|o[3]~31_combout\)) # (!\b2v_inst2|b2v_inst16|o[2]~2_combout\))) # (!\b2v_inst2|b2v_inst16|o[2]~3_combout\ & (\b2v_inst2|b2v_inst16|o[2]~2_combout\ & 
-- (\b2v_inst2|b2v_inst4|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst16|o[2]~3_combout\,
	datab => \b2v_inst2|b2v_inst16|o[2]~2_combout\,
	datac => \b2v_inst2|b2v_inst4|q\(3),
	datad => \b2v_inst2|b2v_inst16|o[3]~31_combout\,
	combout => \b2v_inst2|b2v_inst16|o[3]~32_combout\);

-- Location: LCCOMB_X51_Y12_N16
\b2v_inst2|b2v_inst16|o[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|o[3]~33_combout\ = (\b2v_inst2|b2v_inst16|o[2]~5_combout\ & (\b2v_inst2|b2v_inst4|q\(2) $ (((\b2v_inst2|b2v_inst4|q\(3) & \b2v_inst2|b2v_inst16|o[3]~32_combout\))))) # (!\b2v_inst2|b2v_inst16|o[2]~5_combout\ & 
-- (((\b2v_inst2|b2v_inst16|o[3]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst4|q\(3),
	datab => \b2v_inst2|b2v_inst4|q\(2),
	datac => \b2v_inst2|b2v_inst16|o[2]~5_combout\,
	datad => \b2v_inst2|b2v_inst16|o[3]~32_combout\,
	combout => \b2v_inst2|b2v_inst16|o[3]~33_combout\);

-- Location: LCCOMB_X53_Y8_N6
\b2v_inst2|b2v_inst15|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|Mux9~0_combout\ = \b2v_inst2|b2v_inst3|q\(2) $ (\b2v_inst2|b2v_inst3|q\(0) $ (\b2v_inst2|b2v_inst3|q\(1) $ (\b2v_inst2|b2v_inst3|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst3|q\(2),
	datab => \b2v_inst2|b2v_inst3|q\(0),
	datac => \b2v_inst2|b2v_inst3|q\(1),
	datad => \b2v_inst2|b2v_inst3|q\(3),
	combout => \b2v_inst2|b2v_inst15|Mux9~0_combout\);

-- Location: LCCOMB_X52_Y8_N8
\b2v_inst2|b2v_inst15|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|Mux10~0_combout\ = \b2v_inst2|b2v_inst3|q\(2) $ (\b2v_inst2|b2v_inst3|q\(1) $ (\b2v_inst2|b2v_inst3|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst3|q\(2),
	datab => \b2v_inst2|b2v_inst3|q\(1),
	datac => \b2v_inst2|b2v_inst3|q\(0),
	combout => \b2v_inst2|b2v_inst15|Mux10~0_combout\);

-- Location: LCCOMB_X53_Y8_N12
\b2v_inst2|b2v_inst15|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|Mux8~0_combout\ = \b2v_inst2|b2v_inst3|q\(1) $ (\b2v_inst2|b2v_inst3|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst3|q\(1),
	datad => \b2v_inst2|b2v_inst3|q\(0),
	combout => \b2v_inst2|b2v_inst15|Mux8~0_combout\);

-- Location: LCCOMB_X55_Y10_N24
\b2v_inst2|b2v_inst19|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|Mux3~0_combout\ = \b2v_inst2|b2v_inst11|q\(1) $ (\b2v_inst2|b2v_inst11|q\(2) $ (\b2v_inst2|b2v_inst11|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst11|q\(1),
	datac => \b2v_inst2|b2v_inst11|q\(2),
	datad => \b2v_inst2|b2v_inst11|q\(3),
	combout => \b2v_inst2|b2v_inst19|Mux3~0_combout\);

-- Location: LCCOMB_X53_Y9_N24
\b2v_inst2|b2v_inst19|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|Mux9~0_combout\ = \b2v_inst2|b2v_inst11|q\(2) $ (\b2v_inst2|b2v_inst11|q\(3) $ (\b2v_inst2|b2v_inst11|q\(0) $ (\b2v_inst2|b2v_inst11|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst11|q\(2),
	datab => \b2v_inst2|b2v_inst11|q\(3),
	datac => \b2v_inst2|b2v_inst11|q\(0),
	datad => \b2v_inst2|b2v_inst11|q\(1),
	combout => \b2v_inst2|b2v_inst19|Mux9~0_combout\);

-- Location: LCCOMB_X55_Y10_N26
\b2v_inst2|b2v_inst19|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|Mux2~0_combout\ = \b2v_inst2|b2v_inst11|q\(1) $ (\b2v_inst2|b2v_inst11|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst11|q\(1),
	datac => \b2v_inst2|b2v_inst11|q\(2),
	combout => \b2v_inst2|b2v_inst19|Mux2~0_combout\);

-- Location: LCCOMB_X55_Y8_N4
\b2v_inst2|b2v_inst19|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|Mux10~0_combout\ = \b2v_inst2|b2v_inst11|q\(2) $ (\b2v_inst2|b2v_inst11|q\(0) $ (\b2v_inst2|b2v_inst11|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst11|q\(2),
	datac => \b2v_inst2|b2v_inst11|q\(0),
	datad => \b2v_inst2|b2v_inst11|q\(1),
	combout => \b2v_inst2|b2v_inst19|Mux10~0_combout\);

-- Location: LCCOMB_X55_Y10_N20
\b2v_inst2|b2v_inst19|o[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|o[0]~20_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst2|b2v_inst19|Mux10~0_combout\) # (\b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst2|b2v_inst19|Mux2~0_combout\ 
-- & ((!\b2v_inst2|b2v_inst21|o[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst19|Mux2~0_combout\,
	datab => \b2v_inst2|b2v_inst19|Mux10~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst19|o[0]~20_combout\);

-- Location: LCCOMB_X55_Y10_N30
\b2v_inst2|b2v_inst19|o[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|o[0]~21_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst2|b2v_inst19|o[0]~20_combout\ & ((\b2v_inst2|b2v_inst19|Mux9~0_combout\))) # (!\b2v_inst2|b2v_inst19|o[0]~20_combout\ & 
-- (\b2v_inst2|b2v_inst19|Mux3~0_combout\)))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst2|b2v_inst19|o[0]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst19|Mux3~0_combout\,
	datab => \b2v_inst2|b2v_inst19|Mux9~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst2|b2v_inst19|o[0]~20_combout\,
	combout => \b2v_inst2|b2v_inst19|o[0]~21_combout\);

-- Location: LCCOMB_X55_Y8_N26
\b2v_inst2|b2v_inst19|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|Mux7~0_combout\ = \b2v_inst2|b2v_inst11|q\(0) $ (\b2v_inst2|b2v_inst11|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|b2v_inst11|q\(0),
	datad => \b2v_inst2|b2v_inst11|q\(1),
	combout => \b2v_inst2|b2v_inst19|Mux7~0_combout\);

-- Location: LCCOMB_X55_Y8_N28
\b2v_inst2|b2v_inst19|o[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|o[0]~22_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst2|b2v_inst11|q\(1) $ (((\b2v_inst2|b2v_inst11|q\(3) & 
-- \b2v_inst2|b2v_inst21|o[1]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst11|q\(1),
	datab => \b2v_inst2|b2v_inst11|q\(3),
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst19|o[0]~22_combout\);

-- Location: LCCOMB_X55_Y8_N18
\b2v_inst2|b2v_inst19|o[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|o[0]~23_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst2|b2v_inst19|Mux7~0_combout\ $ (((\b2v_inst2|b2v_inst11|q\(3) & \b2v_inst2|b2v_inst19|o[0]~22_combout\))))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & 
-- (((\b2v_inst2|b2v_inst19|o[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst19|Mux7~0_combout\,
	datab => \b2v_inst2|b2v_inst11|q\(3),
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst19|o[0]~22_combout\,
	combout => \b2v_inst2|b2v_inst19|o[0]~23_combout\);

-- Location: LCCOMB_X55_Y8_N16
\b2v_inst2|b2v_inst7|q[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst7|q[0]~6_combout\ = (\b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst2|b2v_inst21|o[2]~41_combout\ & (\b2v_inst2|b2v_inst19|o[0]~21_combout\)) # (!\b2v_inst2|b2v_inst21|o[2]~41_combout\ & ((\b2v_inst2|b2v_inst19|o[0]~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datab => \b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datac => \b2v_inst2|b2v_inst19|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst19|o[0]~23_combout\,
	combout => \b2v_inst2|b2v_inst7|q[0]~6_combout\);

-- Location: LCCOMB_X55_Y8_N22
\b2v_inst2|b2v_inst19|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|Mux5~1_combout\ = \b2v_inst2|b2v_inst11|q\(2) $ (\b2v_inst2|b2v_inst11|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst11|q\(2),
	datac => \b2v_inst2|b2v_inst11|q\(0),
	combout => \b2v_inst2|b2v_inst19|Mux5~1_combout\);

-- Location: LCCOMB_X55_Y10_N22
\b2v_inst2|b2v_inst19|o[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|o[0]~16_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst2|b2v_inst11|q\(2) $ (((\b2v_inst2|b2v_inst11|q\(3) & 
-- \b2v_inst2|b2v_inst21|o[1]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst11|q\(3),
	datab => \b2v_inst2|b2v_inst11|q\(2),
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst19|o[0]~16_combout\);

-- Location: LCCOMB_X55_Y8_N14
\b2v_inst2|b2v_inst19|o[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|o[0]~17_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst2|b2v_inst19|Mux5~1_combout\ $ (((\b2v_inst2|b2v_inst11|q\(3) & \b2v_inst2|b2v_inst19|o[0]~16_combout\))))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & 
-- (((\b2v_inst2|b2v_inst19|o[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst19|Mux5~1_combout\,
	datab => \b2v_inst2|b2v_inst11|q\(3),
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst19|o[0]~16_combout\,
	combout => \b2v_inst2|b2v_inst19|o[0]~17_combout\);

-- Location: LCCOMB_X55_Y8_N12
\b2v_inst2|b2v_inst19|o[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|o[0]~18_combout\ = (\b2v_inst2|b2v_inst18|o[2]~1_combout\ & ((\b2v_inst2|b2v_inst18|o[2]~2_combout\ & ((\b2v_inst2|b2v_inst19|o[0]~17_combout\))) # (!\b2v_inst2|b2v_inst18|o[2]~2_combout\ & (\b2v_inst2|b2v_inst11|q\(0))))) # 
-- (!\b2v_inst2|b2v_inst18|o[2]~1_combout\ & (((\b2v_inst2|b2v_inst18|o[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst11|q\(0),
	datab => \b2v_inst2|b2v_inst19|o[0]~17_combout\,
	datac => \b2v_inst2|b2v_inst18|o[2]~1_combout\,
	datad => \b2v_inst2|b2v_inst18|o[2]~2_combout\,
	combout => \b2v_inst2|b2v_inst19|o[0]~18_combout\);

-- Location: LCCOMB_X55_Y8_N10
\b2v_inst2|b2v_inst19|o[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|o[0]~19_combout\ = (\b2v_inst2|b2v_inst18|o[2]~0_combout\ & (\b2v_inst2|b2v_inst11|q\(3) $ (((\b2v_inst2|b2v_inst11|q\(0) & \b2v_inst2|b2v_inst19|o[0]~18_combout\))))) # (!\b2v_inst2|b2v_inst18|o[2]~0_combout\ & 
-- (((\b2v_inst2|b2v_inst19|o[0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst11|q\(0),
	datab => \b2v_inst2|b2v_inst11|q\(3),
	datac => \b2v_inst2|b2v_inst18|o[2]~0_combout\,
	datad => \b2v_inst2|b2v_inst19|o[0]~18_combout\,
	combout => \b2v_inst2|b2v_inst19|o[0]~19_combout\);

-- Location: LCCOMB_X55_Y8_N24
\b2v_inst2|b2v_inst7|q[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst7|q[0]~7_combout\ = \b2v_inst2|b2v_inst7|q\(0) $ (((\b2v_inst2|b2v_inst7|q[0]~6_combout\) # ((\b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst2|b2v_inst19|o[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datab => \b2v_inst2|b2v_inst7|q[0]~6_combout\,
	datac => \b2v_inst2|b2v_inst7|q\(0),
	datad => \b2v_inst2|b2v_inst19|o[0]~19_combout\,
	combout => \b2v_inst2|b2v_inst7|q[0]~7_combout\);

-- Location: FF_X55_Y8_N25
\b2v_inst2|b2v_inst7|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst7|q[0]~7_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst7|q\(0));

-- Location: LCCOMB_X51_Y10_N20
\b2v_inst2|b2v_inst15|o[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[3]~33_combout\ = (\b2v_inst2|b2v_inst7|q\(1) & (((\b2v_inst2|b2v_inst7|q\(0))))) # (!\b2v_inst2|b2v_inst7|q\(1) & (\b2v_inst2|b2v_inst15|Mux8~0_combout\ $ (((!\b2v_inst2|b2v_inst7|q\(0) & \b2v_inst2|b2v_inst3|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst15|Mux8~0_combout\,
	datab => \b2v_inst2|b2v_inst7|q\(1),
	datac => \b2v_inst2|b2v_inst7|q\(0),
	datad => \b2v_inst2|b2v_inst3|q\(3),
	combout => \b2v_inst2|b2v_inst15|o[3]~33_combout\);

-- Location: LCCOMB_X51_Y10_N30
\b2v_inst2|b2v_inst15|o[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[3]~34_combout\ = (\b2v_inst2|b2v_inst7|q\(1) & ((\b2v_inst2|b2v_inst15|o[3]~33_combout\ & ((\b2v_inst2|b2v_inst15|Mux10~0_combout\))) # (!\b2v_inst2|b2v_inst15|o[3]~33_combout\ & (\b2v_inst2|b2v_inst15|Mux9~0_combout\)))) # 
-- (!\b2v_inst2|b2v_inst7|q\(1) & (((\b2v_inst2|b2v_inst15|o[3]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst15|Mux9~0_combout\,
	datab => \b2v_inst2|b2v_inst7|q\(1),
	datac => \b2v_inst2|b2v_inst15|Mux10~0_combout\,
	datad => \b2v_inst2|b2v_inst15|o[3]~33_combout\,
	combout => \b2v_inst2|b2v_inst15|o[3]~34_combout\);

-- Location: LCCOMB_X53_Y8_N4
\b2v_inst2|b2v_inst15|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|Mux4~0_combout\ = \b2v_inst2|b2v_inst3|q\(3) $ (\b2v_inst2|b2v_inst3|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst3|q\(3),
	datad => \b2v_inst2|b2v_inst3|q\(0),
	combout => \b2v_inst2|b2v_inst15|Mux4~0_combout\);

-- Location: LCCOMB_X53_Y8_N14
\b2v_inst2|b2v_inst15|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|Mux5~0_combout\ = \b2v_inst2|b2v_inst3|q\(0) $ (\b2v_inst2|b2v_inst3|q\(2) $ (\b2v_inst2|b2v_inst3|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst3|q\(0),
	datac => \b2v_inst2|b2v_inst3|q\(2),
	datad => \b2v_inst2|b2v_inst3|q\(3),
	combout => \b2v_inst2|b2v_inst15|Mux5~0_combout\);

-- Location: LCCOMB_X53_Y8_N0
\b2v_inst2|b2v_inst15|o[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[3]~35_combout\ = (\b2v_inst2|b2v_inst7|q\(0) & (\b2v_inst2|b2v_inst7|q\(1))) # (!\b2v_inst2|b2v_inst7|q\(0) & ((\b2v_inst2|b2v_inst7|q\(1) & ((\b2v_inst2|b2v_inst15|Mux5~0_combout\))) # (!\b2v_inst2|b2v_inst7|q\(1) & 
-- (\b2v_inst2|b2v_inst15|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst7|q\(0),
	datab => \b2v_inst2|b2v_inst7|q\(1),
	datac => \b2v_inst2|b2v_inst15|Mux4~0_combout\,
	datad => \b2v_inst2|b2v_inst15|Mux5~0_combout\,
	combout => \b2v_inst2|b2v_inst15|o[3]~35_combout\);

-- Location: LCCOMB_X52_Y10_N24
\b2v_inst2|b2v_inst15|o[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[3]~36_combout\ = (\b2v_inst2|b2v_inst7|q\(0) & (\b2v_inst2|b2v_inst3|q\(0) $ (((\b2v_inst2|b2v_inst3|q\(2) & \b2v_inst2|b2v_inst15|o[3]~35_combout\))))) # (!\b2v_inst2|b2v_inst7|q\(0) & (((\b2v_inst2|b2v_inst15|o[3]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst3|q\(2),
	datab => \b2v_inst2|b2v_inst7|q\(0),
	datac => \b2v_inst2|b2v_inst3|q\(0),
	datad => \b2v_inst2|b2v_inst15|o[3]~35_combout\,
	combout => \b2v_inst2|b2v_inst15|o[3]~36_combout\);

-- Location: LCCOMB_X51_Y10_N8
\b2v_inst2|b2v_inst15|o[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[3]~37_combout\ = (\b2v_inst2|b2v_inst7|q\(3) & ((\b2v_inst2|b2v_inst7|q\(2) & (\b2v_inst2|b2v_inst15|o[3]~34_combout\)) # (!\b2v_inst2|b2v_inst7|q\(2) & ((\b2v_inst2|b2v_inst15|o[3]~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst7|q\(2),
	datab => \b2v_inst2|b2v_inst7|q\(3),
	datac => \b2v_inst2|b2v_inst15|o[3]~34_combout\,
	datad => \b2v_inst2|b2v_inst15|o[3]~36_combout\,
	combout => \b2v_inst2|b2v_inst15|o[3]~37_combout\);

-- Location: LCCOMB_X53_Y9_N18
\b2v_inst2|b2v_inst15|o[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[1]~10_combout\ = (!\b2v_inst2|b2v_inst7|q\(2) & \b2v_inst2|b2v_inst7|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst7|q\(2),
	datac => \b2v_inst2|b2v_inst7|q\(1),
	combout => \b2v_inst2|b2v_inst15|o[1]~10_combout\);

-- Location: LCCOMB_X52_Y8_N10
\b2v_inst2|b2v_inst15|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|Mux2~0_combout\ = \b2v_inst2|b2v_inst3|q\(2) $ (\b2v_inst2|b2v_inst3|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|b2v_inst3|q\(2),
	datad => \b2v_inst2|b2v_inst3|q\(1),
	combout => \b2v_inst2|b2v_inst15|Mux2~0_combout\);

-- Location: LCCOMB_X52_Y8_N18
\b2v_inst2|b2v_inst15|o[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[3]~38_combout\ = (\b2v_inst2|b2v_inst7|q\(1) & (\b2v_inst2|b2v_inst7|q\(0))) # (!\b2v_inst2|b2v_inst7|q\(1) & (\b2v_inst2|b2v_inst3|q\(1) $ (((\b2v_inst2|b2v_inst7|q\(0) & \b2v_inst2|b2v_inst3|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst7|q\(0),
	datab => \b2v_inst2|b2v_inst3|q\(1),
	datac => \b2v_inst2|b2v_inst7|q\(1),
	datad => \b2v_inst2|b2v_inst3|q\(3),
	combout => \b2v_inst2|b2v_inst15|o[3]~38_combout\);

-- Location: LCCOMB_X52_Y8_N20
\b2v_inst2|b2v_inst15|o[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[3]~39_combout\ = (\b2v_inst2|b2v_inst7|q\(1) & (\b2v_inst2|b2v_inst15|Mux2~0_combout\ $ (((\b2v_inst2|b2v_inst3|q\(3) & \b2v_inst2|b2v_inst15|o[3]~38_combout\))))) # (!\b2v_inst2|b2v_inst7|q\(1) & 
-- (((\b2v_inst2|b2v_inst15|o[3]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst15|Mux2~0_combout\,
	datab => \b2v_inst2|b2v_inst3|q\(3),
	datac => \b2v_inst2|b2v_inst7|q\(1),
	datad => \b2v_inst2|b2v_inst15|o[3]~38_combout\,
	combout => \b2v_inst2|b2v_inst15|o[3]~39_combout\);

-- Location: LCCOMB_X54_Y8_N8
\b2v_inst2|b2v_inst15|o[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[1]~7_combout\ = (\b2v_inst2|b2v_inst7|q\(2)) # ((!\b2v_inst2|b2v_inst7|q\(1) & \b2v_inst2|b2v_inst7|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst7|q\(1),
	datac => \b2v_inst2|b2v_inst7|q\(2),
	datad => \b2v_inst2|b2v_inst7|q\(0),
	combout => \b2v_inst2|b2v_inst15|o[1]~7_combout\);

-- Location: LCCOMB_X54_Y8_N26
\b2v_inst2|b2v_inst15|o[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[1]~8_combout\ = (\b2v_inst2|b2v_inst7|q\(2)) # ((\b2v_inst2|b2v_inst7|q\(1) & \b2v_inst2|b2v_inst7|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst7|q\(1),
	datac => \b2v_inst2|b2v_inst7|q\(2),
	datad => \b2v_inst2|b2v_inst7|q\(0),
	combout => \b2v_inst2|b2v_inst15|o[1]~8_combout\);

-- Location: LCCOMB_X52_Y8_N6
\b2v_inst2|b2v_inst15|o[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[3]~40_combout\ = (\b2v_inst2|b2v_inst15|o[1]~7_combout\ & ((\b2v_inst2|b2v_inst15|o[1]~8_combout\ & ((\b2v_inst2|b2v_inst15|o[3]~39_combout\))) # (!\b2v_inst2|b2v_inst15|o[1]~8_combout\ & (\b2v_inst2|b2v_inst3|q\(3))))) # 
-- (!\b2v_inst2|b2v_inst15|o[1]~7_combout\ & (((\b2v_inst2|b2v_inst15|o[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst3|q\(3),
	datab => \b2v_inst2|b2v_inst15|o[3]~39_combout\,
	datac => \b2v_inst2|b2v_inst15|o[1]~7_combout\,
	datad => \b2v_inst2|b2v_inst15|o[1]~8_combout\,
	combout => \b2v_inst2|b2v_inst15|o[3]~40_combout\);

-- Location: LCCOMB_X52_Y10_N22
\b2v_inst2|b2v_inst15|o[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[3]~41_combout\ = (\b2v_inst2|b2v_inst15|o[1]~10_combout\ & (\b2v_inst2|b2v_inst3|q\(2) $ (((\b2v_inst2|b2v_inst3|q\(3) & \b2v_inst2|b2v_inst15|o[3]~40_combout\))))) # (!\b2v_inst2|b2v_inst15|o[1]~10_combout\ & 
-- (((\b2v_inst2|b2v_inst15|o[3]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst3|q\(2),
	datab => \b2v_inst2|b2v_inst3|q\(3),
	datac => \b2v_inst2|b2v_inst15|o[1]~10_combout\,
	datad => \b2v_inst2|b2v_inst15|o[3]~40_combout\,
	combout => \b2v_inst2|b2v_inst15|o[3]~41_combout\);

-- Location: LCCOMB_X51_Y10_N18
\b2v_inst2|b2v_inst15|o[3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[3]~42_combout\ = (\b2v_inst2|b2v_inst15|o[3]~37_combout\) # ((!\b2v_inst2|b2v_inst7|q\(3) & \b2v_inst2|b2v_inst15|o[3]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst7|q\(3),
	datac => \b2v_inst2|b2v_inst15|o[3]~37_combout\,
	datad => \b2v_inst2|b2v_inst15|o[3]~41_combout\,
	combout => \b2v_inst2|b2v_inst15|o[3]~42_combout\);

-- Location: LCCOMB_X51_Y10_N12
\b2v_inst2|b2v_inst37|c[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst37|c[3]~9_combout\ = \b2v_inst2|b2v_inst15|o[3]~42_combout\ $ (((\b2v_inst2|b2v_inst16|o[3]~38_combout\) # ((!\b2v_inst2|b2v_inst8|q\(3) & \b2v_inst2|b2v_inst16|o[3]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst16|o[3]~38_combout\,
	datab => \b2v_inst2|b2v_inst8|q\(3),
	datac => \b2v_inst2|b2v_inst16|o[3]~33_combout\,
	datad => \b2v_inst2|b2v_inst15|o[3]~42_combout\,
	combout => \b2v_inst2|b2v_inst37|c[3]~9_combout\);

-- Location: LCCOMB_X50_Y11_N0
\b2v_inst2|b2v_inst14|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|Mux4~0_combout\ = \b2v_inst2|b2v_inst2|q\(0) $ (\b2v_inst2|b2v_inst2|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|b2v_inst2|q\(0),
	datad => \b2v_inst2|b2v_inst2|q\(3),
	combout => \b2v_inst2|b2v_inst14|Mux4~0_combout\);

-- Location: LCCOMB_X50_Y11_N8
\b2v_inst2|b2v_inst14|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|Mux7~0_combout\ = \b2v_inst2|b2v_inst2|q\(0) $ (\b2v_inst2|b2v_inst2|q\(1) $ (\b2v_inst2|b2v_inst2|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst2|q\(0),
	datab => \b2v_inst2|b2v_inst2|q\(1),
	datac => \b2v_inst2|b2v_inst2|q\(3),
	combout => \b2v_inst2|b2v_inst14|Mux7~0_combout\);

-- Location: LCCOMB_X51_Y11_N26
\b2v_inst2|b2v_inst14|o[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[3]~3_combout\ = (\b2v_inst2|b2v_inst6|q\(2)) # ((\b2v_inst2|b2v_inst6|q\(0) & \b2v_inst2|b2v_inst6|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst6|q\(0),
	datac => \b2v_inst2|b2v_inst6|q\(1),
	datad => \b2v_inst2|b2v_inst6|q\(2),
	combout => \b2v_inst2|b2v_inst14|o[3]~3_combout\);

-- Location: LCCOMB_X51_Y11_N0
\b2v_inst2|b2v_inst14|o[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[3]~2_combout\ = (\b2v_inst2|b2v_inst6|q\(2)) # ((\b2v_inst2|b2v_inst6|q\(0) & !\b2v_inst2|b2v_inst6|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst6|q\(0),
	datac => \b2v_inst2|b2v_inst6|q\(1),
	datad => \b2v_inst2|b2v_inst6|q\(2),
	combout => \b2v_inst2|b2v_inst14|o[3]~2_combout\);

-- Location: LCCOMB_X49_Y11_N26
\b2v_inst2|b2v_inst14|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|Mux10~0_combout\ = \b2v_inst2|b2v_inst2|q\(2) $ (\b2v_inst2|b2v_inst2|q\(0) $ (\b2v_inst2|b2v_inst2|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst2|q\(2),
	datac => \b2v_inst2|b2v_inst2|q\(0),
	datad => \b2v_inst2|b2v_inst2|q\(1),
	combout => \b2v_inst2|b2v_inst14|Mux10~0_combout\);

-- Location: LCCOMB_X49_Y10_N16
\b2v_inst2|b2v_inst14|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|Mux6~0_combout\ = \b2v_inst2|b2v_inst2|q\(2) $ (\b2v_inst2|b2v_inst2|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst2|q\(2),
	datac => \b2v_inst2|b2v_inst2|q\(0),
	combout => \b2v_inst2|b2v_inst14|Mux6~0_combout\);

-- Location: LCCOMB_X49_Y11_N4
\b2v_inst2|b2v_inst14|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|Mux3~0_combout\ = \b2v_inst2|b2v_inst2|q\(1) $ (\b2v_inst2|b2v_inst2|q\(2) $ (\b2v_inst2|b2v_inst2|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst2|q\(1),
	datac => \b2v_inst2|b2v_inst2|q\(2),
	datad => \b2v_inst2|b2v_inst2|q\(3),
	combout => \b2v_inst2|b2v_inst14|Mux3~0_combout\);

-- Location: LCCOMB_X50_Y11_N22
\b2v_inst2|b2v_inst14|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|Mux0~0_combout\ = \b2v_inst2|b2v_inst2|q\(3) $ (\b2v_inst2|b2v_inst2|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|b2v_inst2|q\(3),
	datad => \b2v_inst2|b2v_inst2|q\(2),
	combout => \b2v_inst2|b2v_inst14|Mux0~0_combout\);

-- Location: LCCOMB_X49_Y11_N12
\b2v_inst2|b2v_inst14|o[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[1]~12_combout\ = (\b2v_inst2|b2v_inst6|q\(0) & ((\b2v_inst2|b2v_inst14|Mux3~0_combout\) # ((\b2v_inst2|b2v_inst6|q\(1))))) # (!\b2v_inst2|b2v_inst6|q\(0) & (((\b2v_inst2|b2v_inst14|Mux0~0_combout\ & !\b2v_inst2|b2v_inst6|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst6|q\(0),
	datab => \b2v_inst2|b2v_inst14|Mux3~0_combout\,
	datac => \b2v_inst2|b2v_inst14|Mux0~0_combout\,
	datad => \b2v_inst2|b2v_inst6|q\(1),
	combout => \b2v_inst2|b2v_inst14|o[1]~12_combout\);

-- Location: LCCOMB_X50_Y10_N2
\b2v_inst2|b2v_inst14|o[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[1]~13_combout\ = (\b2v_inst2|b2v_inst6|q\(1) & ((\b2v_inst2|b2v_inst14|o[1]~12_combout\ & (\b2v_inst2|b2v_inst14|Mux10~0_combout\)) # (!\b2v_inst2|b2v_inst14|o[1]~12_combout\ & ((\b2v_inst2|b2v_inst14|Mux6~0_combout\))))) # 
-- (!\b2v_inst2|b2v_inst6|q\(1) & (((\b2v_inst2|b2v_inst14|o[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst6|q\(1),
	datab => \b2v_inst2|b2v_inst14|Mux10~0_combout\,
	datac => \b2v_inst2|b2v_inst14|Mux6~0_combout\,
	datad => \b2v_inst2|b2v_inst14|o[1]~12_combout\,
	combout => \b2v_inst2|b2v_inst14|o[1]~13_combout\);

-- Location: LCCOMB_X50_Y10_N0
\b2v_inst2|b2v_inst14|o[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[1]~14_combout\ = (\b2v_inst2|b2v_inst14|o[3]~3_combout\ & (((\b2v_inst2|b2v_inst14|o[1]~13_combout\)) # (!\b2v_inst2|b2v_inst14|o[3]~2_combout\))) # (!\b2v_inst2|b2v_inst14|o[3]~3_combout\ & (\b2v_inst2|b2v_inst14|o[3]~2_combout\ & 
-- (\b2v_inst2|b2v_inst2|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst14|o[3]~3_combout\,
	datab => \b2v_inst2|b2v_inst14|o[3]~2_combout\,
	datac => \b2v_inst2|b2v_inst2|q\(1),
	datad => \b2v_inst2|b2v_inst14|o[1]~13_combout\,
	combout => \b2v_inst2|b2v_inst14|o[1]~14_combout\);

-- Location: LCCOMB_X50_Y10_N18
\b2v_inst2|b2v_inst14|o[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[1]~15_combout\ = (\b2v_inst2|b2v_inst14|o[3]~5_combout\ & ((\b2v_inst2|b2v_inst14|o[1]~14_combout\ & ((\b2v_inst2|b2v_inst14|Mux7~0_combout\))) # (!\b2v_inst2|b2v_inst14|o[1]~14_combout\ & (\b2v_inst2|b2v_inst14|Mux4~0_combout\)))) 
-- # (!\b2v_inst2|b2v_inst14|o[3]~5_combout\ & (((\b2v_inst2|b2v_inst14|o[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst14|Mux4~0_combout\,
	datab => \b2v_inst2|b2v_inst14|o[3]~5_combout\,
	datac => \b2v_inst2|b2v_inst14|Mux7~0_combout\,
	datad => \b2v_inst2|b2v_inst14|o[1]~14_combout\,
	combout => \b2v_inst2|b2v_inst14|o[1]~15_combout\);

-- Location: LCCOMB_X50_Y11_N4
\b2v_inst2|b2v_inst14|o[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[1]~16_combout\ = (\b2v_inst2|b2v_inst6|q\(1) & (\b2v_inst2|b2v_inst6|q\(0))) # (!\b2v_inst2|b2v_inst6|q\(1) & (\b2v_inst2|b2v_inst2|q\(3) $ (((!\b2v_inst2|b2v_inst6|q\(0) & \b2v_inst2|b2v_inst2|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst6|q\(0),
	datab => \b2v_inst2|b2v_inst2|q\(3),
	datac => \b2v_inst2|b2v_inst2|q\(1),
	datad => \b2v_inst2|b2v_inst6|q\(1),
	combout => \b2v_inst2|b2v_inst14|o[1]~16_combout\);

-- Location: LCCOMB_X50_Y11_N26
\b2v_inst2|b2v_inst14|o[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[1]~17_combout\ = (\b2v_inst2|b2v_inst6|q\(1) & (\b2v_inst2|b2v_inst2|q\(0) $ (((\b2v_inst2|b2v_inst2|q\(1) & !\b2v_inst2|b2v_inst14|o[1]~16_combout\))))) # (!\b2v_inst2|b2v_inst6|q\(1) & 
-- (((\b2v_inst2|b2v_inst14|o[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst2|q\(0),
	datab => \b2v_inst2|b2v_inst6|q\(1),
	datac => \b2v_inst2|b2v_inst2|q\(1),
	datad => \b2v_inst2|b2v_inst14|o[1]~16_combout\,
	combout => \b2v_inst2|b2v_inst14|o[1]~17_combout\);

-- Location: LCCOMB_X50_Y11_N6
\b2v_inst2|b2v_inst14|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|Mux5~0_combout\ = \b2v_inst2|b2v_inst2|q\(3) $ (\b2v_inst2|b2v_inst2|q\(0) $ (\b2v_inst2|b2v_inst2|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst2|q\(3),
	datac => \b2v_inst2|b2v_inst2|q\(0),
	datad => \b2v_inst2|b2v_inst2|q\(2),
	combout => \b2v_inst2|b2v_inst14|Mux5~0_combout\);

-- Location: LCCOMB_X50_Y11_N14
\b2v_inst2|b2v_inst14|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|Mux2~0_combout\ = \b2v_inst2|b2v_inst2|q\(1) $ (\b2v_inst2|b2v_inst2|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|b2v_inst2|q\(1),
	datad => \b2v_inst2|b2v_inst2|q\(2),
	combout => \b2v_inst2|b2v_inst14|Mux2~0_combout\);

-- Location: LCCOMB_X50_Y11_N20
\b2v_inst2|b2v_inst14|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|Mux9~0_combout\ = \b2v_inst2|b2v_inst2|q\(0) $ (\b2v_inst2|b2v_inst2|q\(1) $ (\b2v_inst2|b2v_inst2|q\(2) $ (\b2v_inst2|b2v_inst2|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst2|q\(0),
	datab => \b2v_inst2|b2v_inst2|q\(1),
	datac => \b2v_inst2|b2v_inst2|q\(2),
	datad => \b2v_inst2|b2v_inst2|q\(3),
	combout => \b2v_inst2|b2v_inst14|Mux9~0_combout\);

-- Location: LCCOMB_X50_Y11_N12
\b2v_inst2|b2v_inst14|o[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[1]~18_combout\ = (\b2v_inst2|b2v_inst6|q\(0) & (((\b2v_inst2|b2v_inst6|q\(1))))) # (!\b2v_inst2|b2v_inst6|q\(0) & ((\b2v_inst2|b2v_inst6|q\(1) & ((\b2v_inst2|b2v_inst14|Mux9~0_combout\))) # (!\b2v_inst2|b2v_inst6|q\(1) & 
-- (\b2v_inst2|b2v_inst14|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst6|q\(0),
	datab => \b2v_inst2|b2v_inst14|Mux2~0_combout\,
	datac => \b2v_inst2|b2v_inst14|Mux9~0_combout\,
	datad => \b2v_inst2|b2v_inst6|q\(1),
	combout => \b2v_inst2|b2v_inst14|o[1]~18_combout\);

-- Location: LCCOMB_X50_Y11_N10
\b2v_inst2|b2v_inst14|o[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[1]~19_combout\ = (\b2v_inst2|b2v_inst6|q\(0) & ((\b2v_inst2|b2v_inst14|o[1]~18_combout\ & (\b2v_inst2|b2v_inst14|Mux5~0_combout\)) # (!\b2v_inst2|b2v_inst14|o[1]~18_combout\ & ((\b2v_inst2|b2v_inst2|q\(2)))))) # 
-- (!\b2v_inst2|b2v_inst6|q\(0) & (((\b2v_inst2|b2v_inst14|o[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst14|Mux5~0_combout\,
	datab => \b2v_inst2|b2v_inst2|q\(2),
	datac => \b2v_inst2|b2v_inst6|q\(0),
	datad => \b2v_inst2|b2v_inst14|o[1]~18_combout\,
	combout => \b2v_inst2|b2v_inst14|o[1]~19_combout\);

-- Location: LCCOMB_X50_Y11_N16
\b2v_inst2|b2v_inst14|o[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[1]~20_combout\ = (\b2v_inst2|b2v_inst6|q\(3) & ((\b2v_inst2|b2v_inst6|q\(2) & (\b2v_inst2|b2v_inst14|o[1]~17_combout\)) # (!\b2v_inst2|b2v_inst6|q\(2) & ((\b2v_inst2|b2v_inst14|o[1]~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst6|q\(3),
	datab => \b2v_inst2|b2v_inst6|q\(2),
	datac => \b2v_inst2|b2v_inst14|o[1]~17_combout\,
	datad => \b2v_inst2|b2v_inst14|o[1]~19_combout\,
	combout => \b2v_inst2|b2v_inst14|o[1]~20_combout\);

-- Location: LCCOMB_X52_Y7_N14
\b2v_inst2|b2v_inst17|o[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|o[0]~22_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst2|b2v_inst9|q\(1) $ (((\b2v_inst2|b2v_inst9|q\(3) & 
-- \b2v_inst2|b2v_inst21|o[1]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst9|q\(3),
	datab => \b2v_inst2|b2v_inst9|q\(1),
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst17|o[0]~22_combout\);

-- Location: LCCOMB_X54_Y7_N0
\b2v_inst2|b2v_inst17|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|Mux7~0_combout\ = \b2v_inst2|b2v_inst9|q\(0) $ (\b2v_inst2|b2v_inst9|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst9|q\(0),
	datad => \b2v_inst2|b2v_inst9|q\(1),
	combout => \b2v_inst2|b2v_inst17|Mux7~0_combout\);

-- Location: LCCOMB_X52_Y7_N4
\b2v_inst2|b2v_inst17|o[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|o[0]~23_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst2|b2v_inst17|Mux7~0_combout\ $ (((\b2v_inst2|b2v_inst9|q\(3) & \b2v_inst2|b2v_inst17|o[0]~22_combout\))))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & 
-- (((\b2v_inst2|b2v_inst17|o[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst9|q\(3),
	datab => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datac => \b2v_inst2|b2v_inst17|o[0]~22_combout\,
	datad => \b2v_inst2|b2v_inst17|Mux7~0_combout\,
	combout => \b2v_inst2|b2v_inst17|o[0]~23_combout\);

-- Location: LCCOMB_X54_Y7_N6
\b2v_inst2|b2v_inst17|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|Mux3~0_combout\ = \b2v_inst2|b2v_inst9|q\(2) $ (\b2v_inst2|b2v_inst9|q\(3) $ (\b2v_inst2|b2v_inst9|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst9|q\(2),
	datab => \b2v_inst2|b2v_inst9|q\(3),
	datad => \b2v_inst2|b2v_inst9|q\(1),
	combout => \b2v_inst2|b2v_inst17|Mux3~0_combout\);

-- Location: LCCOMB_X53_Y7_N22
\b2v_inst2|b2v_inst17|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|Mux10~0_combout\ = \b2v_inst2|b2v_inst9|q\(1) $ (\b2v_inst2|b2v_inst9|q\(0) $ (\b2v_inst2|b2v_inst9|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst9|q\(1),
	datac => \b2v_inst2|b2v_inst9|q\(0),
	datad => \b2v_inst2|b2v_inst9|q\(2),
	combout => \b2v_inst2|b2v_inst17|Mux10~0_combout\);

-- Location: LCCOMB_X53_Y7_N12
\b2v_inst2|b2v_inst17|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|Mux2~0_combout\ = \b2v_inst2|b2v_inst9|q\(1) $ (\b2v_inst2|b2v_inst9|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst9|q\(1),
	datad => \b2v_inst2|b2v_inst9|q\(2),
	combout => \b2v_inst2|b2v_inst17|Mux2~0_combout\);

-- Location: LCCOMB_X52_Y7_N26
\b2v_inst2|b2v_inst17|o[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|o[0]~20_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst2|b2v_inst17|Mux10~0_combout\) # ((\b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & 
-- (((\b2v_inst2|b2v_inst17|Mux2~0_combout\ & !\b2v_inst2|b2v_inst21|o[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst17|Mux10~0_combout\,
	datab => \b2v_inst2|b2v_inst17|Mux2~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst17|o[0]~20_combout\);

-- Location: LCCOMB_X52_Y7_N28
\b2v_inst2|b2v_inst17|o[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|o[0]~21_combout\ = (\b2v_inst2|b2v_inst17|o[0]~20_combout\ & (((\b2v_inst2|b2v_inst17|Mux9~0_combout\) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst2|b2v_inst17|o[0]~20_combout\ & (\b2v_inst2|b2v_inst17|Mux3~0_combout\ 
-- & ((\b2v_inst2|b2v_inst21|o[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst17|Mux3~0_combout\,
	datab => \b2v_inst2|b2v_inst17|Mux9~0_combout\,
	datac => \b2v_inst2|b2v_inst17|o[0]~20_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst17|o[0]~21_combout\);

-- Location: LCCOMB_X52_Y7_N2
\b2v_inst2|b2v_inst5|q[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst5|q[0]~4_combout\ = (\b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst2|b2v_inst21|o[2]~41_combout\ & ((\b2v_inst2|b2v_inst17|o[0]~21_combout\))) # (!\b2v_inst2|b2v_inst21|o[2]~41_combout\ & (\b2v_inst2|b2v_inst17|o[0]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datab => \b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datac => \b2v_inst2|b2v_inst17|o[0]~23_combout\,
	datad => \b2v_inst2|b2v_inst17|o[0]~21_combout\,
	combout => \b2v_inst2|b2v_inst5|q[0]~4_combout\);

-- Location: LCCOMB_X53_Y7_N10
\b2v_inst2|b2v_inst17|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|Mux5~1_combout\ = \b2v_inst2|b2v_inst9|q\(0) $ (\b2v_inst2|b2v_inst9|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|b2v_inst9|q\(0),
	datad => \b2v_inst2|b2v_inst9|q\(2),
	combout => \b2v_inst2|b2v_inst17|Mux5~1_combout\);

-- Location: LCCOMB_X53_Y7_N16
\b2v_inst2|b2v_inst17|o[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|o[0]~16_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst2|b2v_inst9|q\(2) $ (((\b2v_inst2|b2v_inst9|q\(3) & 
-- \b2v_inst2|b2v_inst21|o[1]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datab => \b2v_inst2|b2v_inst9|q\(3),
	datac => \b2v_inst2|b2v_inst9|q\(2),
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst17|o[0]~16_combout\);

-- Location: LCCOMB_X53_Y7_N2
\b2v_inst2|b2v_inst17|o[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|o[0]~17_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst2|b2v_inst17|Mux5~1_combout\ $ (((\b2v_inst2|b2v_inst9|q\(3) & \b2v_inst2|b2v_inst17|o[0]~16_combout\))))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & 
-- (((\b2v_inst2|b2v_inst17|o[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst17|Mux5~1_combout\,
	datab => \b2v_inst2|b2v_inst9|q\(3),
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst17|o[0]~16_combout\,
	combout => \b2v_inst2|b2v_inst17|o[0]~17_combout\);

-- Location: LCCOMB_X52_Y7_N10
\b2v_inst2|b2v_inst17|o[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|o[0]~18_combout\ = (\b2v_inst2|b2v_inst18|o[2]~2_combout\ & (((\b2v_inst2|b2v_inst17|o[0]~17_combout\) # (!\b2v_inst2|b2v_inst18|o[2]~1_combout\)))) # (!\b2v_inst2|b2v_inst18|o[2]~2_combout\ & (\b2v_inst2|b2v_inst9|q\(0) & 
-- (\b2v_inst2|b2v_inst18|o[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst9|q\(0),
	datab => \b2v_inst2|b2v_inst18|o[2]~2_combout\,
	datac => \b2v_inst2|b2v_inst18|o[2]~1_combout\,
	datad => \b2v_inst2|b2v_inst17|o[0]~17_combout\,
	combout => \b2v_inst2|b2v_inst17|o[0]~18_combout\);

-- Location: LCCOMB_X52_Y7_N24
\b2v_inst2|b2v_inst17|o[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|o[0]~19_combout\ = (\b2v_inst2|b2v_inst18|o[2]~0_combout\ & (\b2v_inst2|b2v_inst9|q\(3) $ (((\b2v_inst2|b2v_inst9|q\(0) & \b2v_inst2|b2v_inst17|o[0]~18_combout\))))) # (!\b2v_inst2|b2v_inst18|o[2]~0_combout\ & 
-- (((\b2v_inst2|b2v_inst17|o[0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst9|q\(3),
	datab => \b2v_inst2|b2v_inst9|q\(0),
	datac => \b2v_inst2|b2v_inst18|o[2]~0_combout\,
	datad => \b2v_inst2|b2v_inst17|o[0]~18_combout\,
	combout => \b2v_inst2|b2v_inst17|o[0]~19_combout\);

-- Location: LCCOMB_X52_Y7_N6
\b2v_inst2|b2v_inst5|q[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst5|q[0]~5_combout\ = \b2v_inst2|b2v_inst5|q\(0) $ (((\b2v_inst2|b2v_inst5|q[0]~4_combout\) # ((\b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst2|b2v_inst17|o[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datab => \b2v_inst2|b2v_inst5|q[0]~4_combout\,
	datac => \b2v_inst2|b2v_inst5|q\(0),
	datad => \b2v_inst2|b2v_inst17|o[0]~19_combout\,
	combout => \b2v_inst2|b2v_inst5|q[0]~5_combout\);

-- Location: FF_X52_Y7_N7
\b2v_inst2|b2v_inst5|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst5|q[0]~5_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst5|q\(0));

-- Location: LCCOMB_X50_Y7_N2
\b2v_inst2|b2v_inst13|o[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[1]~13_combout\ = (\b2v_inst2|b2v_inst5|q\(1) & (\b2v_inst2|b2v_inst5|q\(0))) # (!\b2v_inst2|b2v_inst5|q\(1) & (\b2v_inst2|b2v_inst1|q\(3) $ (((!\b2v_inst2|b2v_inst5|q\(0) & \b2v_inst2|b2v_inst1|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst5|q\(0),
	datab => \b2v_inst2|b2v_inst1|q\(1),
	datac => \b2v_inst2|b2v_inst5|q\(1),
	datad => \b2v_inst2|b2v_inst1|q\(3),
	combout => \b2v_inst2|b2v_inst13|o[1]~13_combout\);

-- Location: LCCOMB_X50_Y7_N28
\b2v_inst2|b2v_inst13|o[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[1]~14_combout\ = (\b2v_inst2|b2v_inst5|q\(1) & (\b2v_inst2|b2v_inst1|q\(0) $ (((\b2v_inst2|b2v_inst1|q\(1) & !\b2v_inst2|b2v_inst13|o[1]~13_combout\))))) # (!\b2v_inst2|b2v_inst5|q\(1) & 
-- (((\b2v_inst2|b2v_inst13|o[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst1|q\(0),
	datab => \b2v_inst2|b2v_inst5|q\(1),
	datac => \b2v_inst2|b2v_inst1|q\(1),
	datad => \b2v_inst2|b2v_inst13|o[1]~13_combout\,
	combout => \b2v_inst2|b2v_inst13|o[1]~14_combout\);

-- Location: LCCOMB_X51_Y7_N12
\b2v_inst2|b2v_inst13|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|Mux9~0_combout\ = \b2v_inst2|b2v_inst1|q\(0) $ (\b2v_inst2|b2v_inst1|q\(2) $ (\b2v_inst2|b2v_inst1|q\(1) $ (\b2v_inst2|b2v_inst1|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst1|q\(0),
	datab => \b2v_inst2|b2v_inst1|q\(2),
	datac => \b2v_inst2|b2v_inst1|q\(1),
	datad => \b2v_inst2|b2v_inst1|q\(3),
	combout => \b2v_inst2|b2v_inst13|Mux9~0_combout\);

-- Location: LCCOMB_X50_Y7_N4
\b2v_inst2|b2v_inst13|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|Mux2~0_combout\ = \b2v_inst2|b2v_inst1|q\(1) $ (\b2v_inst2|b2v_inst1|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|b2v_inst1|q\(1),
	datad => \b2v_inst2|b2v_inst1|q\(2),
	combout => \b2v_inst2|b2v_inst13|Mux2~0_combout\);

-- Location: LCCOMB_X50_Y7_N26
\b2v_inst2|b2v_inst13|o[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[1]~15_combout\ = (\b2v_inst2|b2v_inst5|q\(0) & (\b2v_inst2|b2v_inst5|q\(1))) # (!\b2v_inst2|b2v_inst5|q\(0) & ((\b2v_inst2|b2v_inst5|q\(1) & (\b2v_inst2|b2v_inst13|Mux9~0_combout\)) # (!\b2v_inst2|b2v_inst5|q\(1) & 
-- ((\b2v_inst2|b2v_inst13|Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst5|q\(0),
	datab => \b2v_inst2|b2v_inst5|q\(1),
	datac => \b2v_inst2|b2v_inst13|Mux9~0_combout\,
	datad => \b2v_inst2|b2v_inst13|Mux2~0_combout\,
	combout => \b2v_inst2|b2v_inst13|o[1]~15_combout\);

-- Location: LCCOMB_X51_Y8_N0
\b2v_inst2|b2v_inst13|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|Mux5~0_combout\ = \b2v_inst2|b2v_inst1|q\(0) $ (\b2v_inst2|b2v_inst1|q\(3) $ (\b2v_inst2|b2v_inst1|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst1|q\(0),
	datac => \b2v_inst2|b2v_inst1|q\(3),
	datad => \b2v_inst2|b2v_inst1|q\(2),
	combout => \b2v_inst2|b2v_inst13|Mux5~0_combout\);

-- Location: LCCOMB_X50_Y7_N0
\b2v_inst2|b2v_inst13|o[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[1]~16_combout\ = (\b2v_inst2|b2v_inst5|q\(0) & ((\b2v_inst2|b2v_inst13|o[1]~15_combout\ & ((\b2v_inst2|b2v_inst13|Mux5~0_combout\))) # (!\b2v_inst2|b2v_inst13|o[1]~15_combout\ & (\b2v_inst2|b2v_inst1|q\(2))))) # 
-- (!\b2v_inst2|b2v_inst5|q\(0) & (((\b2v_inst2|b2v_inst13|o[1]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst5|q\(0),
	datab => \b2v_inst2|b2v_inst1|q\(2),
	datac => \b2v_inst2|b2v_inst13|o[1]~15_combout\,
	datad => \b2v_inst2|b2v_inst13|Mux5~0_combout\,
	combout => \b2v_inst2|b2v_inst13|o[1]~16_combout\);

-- Location: LCCOMB_X50_Y7_N10
\b2v_inst2|b2v_inst13|o[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[1]~17_combout\ = (\b2v_inst2|b2v_inst5|q\(3) & ((\b2v_inst2|b2v_inst5|q\(2) & (\b2v_inst2|b2v_inst13|o[1]~14_combout\)) # (!\b2v_inst2|b2v_inst5|q\(2) & ((\b2v_inst2|b2v_inst13|o[1]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst5|q\(3),
	datab => \b2v_inst2|b2v_inst5|q\(2),
	datac => \b2v_inst2|b2v_inst13|o[1]~14_combout\,
	datad => \b2v_inst2|b2v_inst13|o[1]~16_combout\,
	combout => \b2v_inst2|b2v_inst13|o[1]~17_combout\);

-- Location: LCCOMB_X51_Y7_N14
\b2v_inst2|b2v_inst13|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|Mux7~0_combout\ = \b2v_inst2|b2v_inst1|q\(1) $ (\b2v_inst2|b2v_inst1|q\(0) $ (\b2v_inst2|b2v_inst1|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst1|q\(1),
	datac => \b2v_inst2|b2v_inst1|q\(0),
	datad => \b2v_inst2|b2v_inst1|q\(3),
	combout => \b2v_inst2|b2v_inst13|Mux7~0_combout\);

-- Location: LCCOMB_X50_Y7_N20
\b2v_inst2|b2v_inst13|o[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[3]~10_combout\ = (\b2v_inst2|b2v_inst5|q\(1) & !\b2v_inst2|b2v_inst5|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst5|q\(1),
	datad => \b2v_inst2|b2v_inst5|q\(2),
	combout => \b2v_inst2|b2v_inst13|o[3]~10_combout\);

-- Location: LCCOMB_X51_Y8_N18
\b2v_inst2|b2v_inst13|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|Mux4~0_combout\ = \b2v_inst2|b2v_inst1|q\(0) $ (\b2v_inst2|b2v_inst1|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst1|q\(0),
	datac => \b2v_inst2|b2v_inst1|q\(3),
	combout => \b2v_inst2|b2v_inst13|Mux4~0_combout\);

-- Location: LCCOMB_X51_Y7_N30
\b2v_inst2|b2v_inst13|o[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[3]~7_combout\ = (\b2v_inst2|b2v_inst5|q\(2)) # ((!\b2v_inst2|b2v_inst5|q\(1) & \b2v_inst2|b2v_inst5|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst5|q\(1),
	datac => \b2v_inst2|b2v_inst5|q\(2),
	datad => \b2v_inst2|b2v_inst5|q\(0),
	combout => \b2v_inst2|b2v_inst13|o[3]~7_combout\);

-- Location: LCCOMB_X51_Y7_N0
\b2v_inst2|b2v_inst13|o[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[3]~8_combout\ = (\b2v_inst2|b2v_inst5|q\(2)) # ((\b2v_inst2|b2v_inst5|q\(1) & \b2v_inst2|b2v_inst5|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst5|q\(1),
	datac => \b2v_inst2|b2v_inst5|q\(2),
	datad => \b2v_inst2|b2v_inst5|q\(0),
	combout => \b2v_inst2|b2v_inst13|o[3]~8_combout\);

-- Location: LCCOMB_X51_Y7_N2
\b2v_inst2|b2v_inst13|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|Mux10~0_combout\ = \b2v_inst2|b2v_inst1|q\(1) $ (\b2v_inst2|b2v_inst1|q\(2) $ (\b2v_inst2|b2v_inst1|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst1|q\(1),
	datac => \b2v_inst2|b2v_inst1|q\(2),
	datad => \b2v_inst2|b2v_inst1|q\(0),
	combout => \b2v_inst2|b2v_inst13|Mux10~0_combout\);

-- Location: LCCOMB_X50_Y7_N16
\b2v_inst2|b2v_inst13|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|Mux6~0_combout\ = \b2v_inst2|b2v_inst1|q\(0) $ (\b2v_inst2|b2v_inst1|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|b2v_inst1|q\(0),
	datad => \b2v_inst2|b2v_inst1|q\(2),
	combout => \b2v_inst2|b2v_inst13|Mux6~0_combout\);

-- Location: LCCOMB_X51_Y8_N8
\b2v_inst2|b2v_inst13|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|Mux0~0_combout\ = \b2v_inst2|b2v_inst1|q\(3) $ (\b2v_inst2|b2v_inst1|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst1|q\(3),
	datad => \b2v_inst2|b2v_inst1|q\(2),
	combout => \b2v_inst2|b2v_inst13|Mux0~0_combout\);

-- Location: LCCOMB_X51_Y9_N30
\b2v_inst2|b2v_inst13|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|Mux3~0_combout\ = \b2v_inst2|b2v_inst1|q\(3) $ (\b2v_inst2|b2v_inst1|q\(2) $ (\b2v_inst2|b2v_inst1|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst1|q\(3),
	datac => \b2v_inst2|b2v_inst1|q\(2),
	datad => \b2v_inst2|b2v_inst1|q\(1),
	combout => \b2v_inst2|b2v_inst13|Mux3~0_combout\);

-- Location: LCCOMB_X51_Y7_N20
\b2v_inst2|b2v_inst13|o[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[1]~18_combout\ = (\b2v_inst2|b2v_inst5|q\(0) & (((\b2v_inst2|b2v_inst5|q\(1)) # (\b2v_inst2|b2v_inst13|Mux3~0_combout\)))) # (!\b2v_inst2|b2v_inst5|q\(0) & (\b2v_inst2|b2v_inst13|Mux0~0_combout\ & (!\b2v_inst2|b2v_inst5|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst5|q\(0),
	datab => \b2v_inst2|b2v_inst13|Mux0~0_combout\,
	datac => \b2v_inst2|b2v_inst5|q\(1),
	datad => \b2v_inst2|b2v_inst13|Mux3~0_combout\,
	combout => \b2v_inst2|b2v_inst13|o[1]~18_combout\);

-- Location: LCCOMB_X51_Y7_N18
\b2v_inst2|b2v_inst13|o[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[1]~19_combout\ = (\b2v_inst2|b2v_inst5|q\(1) & ((\b2v_inst2|b2v_inst13|o[1]~18_combout\ & (\b2v_inst2|b2v_inst13|Mux10~0_combout\)) # (!\b2v_inst2|b2v_inst13|o[1]~18_combout\ & ((\b2v_inst2|b2v_inst13|Mux6~0_combout\))))) # 
-- (!\b2v_inst2|b2v_inst5|q\(1) & (((\b2v_inst2|b2v_inst13|o[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst5|q\(1),
	datab => \b2v_inst2|b2v_inst13|Mux10~0_combout\,
	datac => \b2v_inst2|b2v_inst13|Mux6~0_combout\,
	datad => \b2v_inst2|b2v_inst13|o[1]~18_combout\,
	combout => \b2v_inst2|b2v_inst13|o[1]~19_combout\);

-- Location: LCCOMB_X51_Y7_N8
\b2v_inst2|b2v_inst13|o[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[1]~20_combout\ = (\b2v_inst2|b2v_inst13|o[3]~7_combout\ & ((\b2v_inst2|b2v_inst13|o[3]~8_combout\ & ((\b2v_inst2|b2v_inst13|o[1]~19_combout\))) # (!\b2v_inst2|b2v_inst13|o[3]~8_combout\ & (\b2v_inst2|b2v_inst1|q\(1))))) # 
-- (!\b2v_inst2|b2v_inst13|o[3]~7_combout\ & (\b2v_inst2|b2v_inst13|o[3]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst13|o[3]~7_combout\,
	datab => \b2v_inst2|b2v_inst13|o[3]~8_combout\,
	datac => \b2v_inst2|b2v_inst1|q\(1),
	datad => \b2v_inst2|b2v_inst13|o[1]~19_combout\,
	combout => \b2v_inst2|b2v_inst13|o[1]~20_combout\);

-- Location: LCCOMB_X50_Y10_N16
\b2v_inst2|b2v_inst13|o[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[1]~21_combout\ = (\b2v_inst2|b2v_inst13|o[3]~10_combout\ & ((\b2v_inst2|b2v_inst13|o[1]~20_combout\ & (\b2v_inst2|b2v_inst13|Mux7~0_combout\)) # (!\b2v_inst2|b2v_inst13|o[1]~20_combout\ & 
-- ((\b2v_inst2|b2v_inst13|Mux4~0_combout\))))) # (!\b2v_inst2|b2v_inst13|o[3]~10_combout\ & (((\b2v_inst2|b2v_inst13|o[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst13|Mux7~0_combout\,
	datab => \b2v_inst2|b2v_inst13|o[3]~10_combout\,
	datac => \b2v_inst2|b2v_inst13|Mux4~0_combout\,
	datad => \b2v_inst2|b2v_inst13|o[1]~20_combout\,
	combout => \b2v_inst2|b2v_inst13|o[1]~21_combout\);

-- Location: LCCOMB_X50_Y10_N6
\b2v_inst2|b2v_inst13|o[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[1]~22_combout\ = (\b2v_inst2|b2v_inst13|o[1]~17_combout\) # ((!\b2v_inst2|b2v_inst5|q\(3) & \b2v_inst2|b2v_inst13|o[1]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst5|q\(3),
	datac => \b2v_inst2|b2v_inst13|o[1]~17_combout\,
	datad => \b2v_inst2|b2v_inst13|o[1]~21_combout\,
	combout => \b2v_inst2|b2v_inst13|o[1]~22_combout\);

-- Location: LCCOMB_X50_Y10_N30
\b2v_inst2|b2v_inst37|c[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst37|c[1]~13_combout\ = \b2v_inst2|b2v_inst13|o[1]~22_combout\ $ (((\b2v_inst2|b2v_inst14|o[1]~20_combout\) # ((!\b2v_inst2|b2v_inst6|q\(3) & \b2v_inst2|b2v_inst14|o[1]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst6|q\(3),
	datab => \b2v_inst2|b2v_inst14|o[1]~15_combout\,
	datac => \b2v_inst2|b2v_inst14|o[1]~20_combout\,
	datad => \b2v_inst2|b2v_inst13|o[1]~22_combout\,
	combout => \b2v_inst2|b2v_inst37|c[1]~13_combout\);

-- Location: LCCOMB_X51_Y12_N12
\b2v_inst2|b2v_inst16|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|Mux7~0_combout\ = \b2v_inst2|b2v_inst4|q\(3) $ (\b2v_inst2|b2v_inst4|q\(0) $ (\b2v_inst2|b2v_inst4|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst4|q\(3),
	datac => \b2v_inst2|b2v_inst4|q\(0),
	datad => \b2v_inst2|b2v_inst4|q\(1),
	combout => \b2v_inst2|b2v_inst16|Mux7~0_combout\);

-- Location: LCCOMB_X50_Y12_N12
\b2v_inst2|b2v_inst16|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|Mux6~0_combout\ = \b2v_inst2|b2v_inst4|q\(2) $ (\b2v_inst2|b2v_inst4|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst4|q\(2),
	datad => \b2v_inst2|b2v_inst4|q\(0),
	combout => \b2v_inst2|b2v_inst16|Mux6~0_combout\);

-- Location: LCCOMB_X50_Y12_N30
\b2v_inst2|b2v_inst16|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|Mux3~0_combout\ = \b2v_inst2|b2v_inst4|q\(1) $ (\b2v_inst2|b2v_inst4|q\(3) $ (\b2v_inst2|b2v_inst4|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst4|q\(1),
	datac => \b2v_inst2|b2v_inst4|q\(3),
	datad => \b2v_inst2|b2v_inst4|q\(2),
	combout => \b2v_inst2|b2v_inst16|Mux3~0_combout\);

-- Location: LCCOMB_X50_Y12_N28
\b2v_inst2|b2v_inst16|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|Mux0~0_combout\ = \b2v_inst2|b2v_inst4|q\(3) $ (\b2v_inst2|b2v_inst4|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst4|q\(3),
	datad => \b2v_inst2|b2v_inst4|q\(2),
	combout => \b2v_inst2|b2v_inst16|Mux0~0_combout\);

-- Location: LCCOMB_X50_Y12_N20
\b2v_inst2|b2v_inst16|o[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|o[1]~12_combout\ = (\b2v_inst2|b2v_inst8|q\(1) & (((\b2v_inst2|b2v_inst8|q\(0))))) # (!\b2v_inst2|b2v_inst8|q\(1) & ((\b2v_inst2|b2v_inst8|q\(0) & (\b2v_inst2|b2v_inst16|Mux3~0_combout\)) # (!\b2v_inst2|b2v_inst8|q\(0) & 
-- ((\b2v_inst2|b2v_inst16|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst16|Mux3~0_combout\,
	datab => \b2v_inst2|b2v_inst16|Mux0~0_combout\,
	datac => \b2v_inst2|b2v_inst8|q\(1),
	datad => \b2v_inst2|b2v_inst8|q\(0),
	combout => \b2v_inst2|b2v_inst16|o[1]~12_combout\);

-- Location: LCCOMB_X50_Y12_N14
\b2v_inst2|b2v_inst16|o[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|o[1]~13_combout\ = (\b2v_inst2|b2v_inst8|q\(1) & ((\b2v_inst2|b2v_inst16|o[1]~12_combout\ & (\b2v_inst2|b2v_inst16|Mux10~0_combout\)) # (!\b2v_inst2|b2v_inst16|o[1]~12_combout\ & ((\b2v_inst2|b2v_inst16|Mux6~0_combout\))))) # 
-- (!\b2v_inst2|b2v_inst8|q\(1) & (((\b2v_inst2|b2v_inst16|o[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst16|Mux10~0_combout\,
	datab => \b2v_inst2|b2v_inst8|q\(1),
	datac => \b2v_inst2|b2v_inst16|Mux6~0_combout\,
	datad => \b2v_inst2|b2v_inst16|o[1]~12_combout\,
	combout => \b2v_inst2|b2v_inst16|o[1]~13_combout\);

-- Location: LCCOMB_X51_Y12_N6
\b2v_inst2|b2v_inst16|o[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|o[1]~14_combout\ = (\b2v_inst2|b2v_inst16|o[2]~3_combout\ & (((\b2v_inst2|b2v_inst16|o[1]~13_combout\) # (!\b2v_inst2|b2v_inst16|o[2]~2_combout\)))) # (!\b2v_inst2|b2v_inst16|o[2]~3_combout\ & (\b2v_inst2|b2v_inst4|q\(1) & 
-- (\b2v_inst2|b2v_inst16|o[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst16|o[2]~3_combout\,
	datab => \b2v_inst2|b2v_inst4|q\(1),
	datac => \b2v_inst2|b2v_inst16|o[2]~2_combout\,
	datad => \b2v_inst2|b2v_inst16|o[1]~13_combout\,
	combout => \b2v_inst2|b2v_inst16|o[1]~14_combout\);

-- Location: LCCOMB_X51_Y12_N28
\b2v_inst2|b2v_inst16|o[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|o[1]~15_combout\ = (\b2v_inst2|b2v_inst16|o[2]~5_combout\ & ((\b2v_inst2|b2v_inst16|o[1]~14_combout\ & ((\b2v_inst2|b2v_inst16|Mux7~0_combout\))) # (!\b2v_inst2|b2v_inst16|o[1]~14_combout\ & (\b2v_inst2|b2v_inst16|Mux4~0_combout\)))) 
-- # (!\b2v_inst2|b2v_inst16|o[2]~5_combout\ & (((\b2v_inst2|b2v_inst16|o[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst16|Mux4~0_combout\,
	datab => \b2v_inst2|b2v_inst16|Mux7~0_combout\,
	datac => \b2v_inst2|b2v_inst16|o[2]~5_combout\,
	datad => \b2v_inst2|b2v_inst16|o[1]~14_combout\,
	combout => \b2v_inst2|b2v_inst16|o[1]~15_combout\);

-- Location: LCCOMB_X51_Y12_N2
\b2v_inst2|b2v_inst16|o[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|o[1]~16_combout\ = (\b2v_inst2|b2v_inst8|q\(1) & (\b2v_inst2|b2v_inst8|q\(0))) # (!\b2v_inst2|b2v_inst8|q\(1) & (\b2v_inst2|b2v_inst4|q\(3) $ (((!\b2v_inst2|b2v_inst8|q\(0) & \b2v_inst2|b2v_inst4|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst8|q\(0),
	datab => \b2v_inst2|b2v_inst4|q\(3),
	datac => \b2v_inst2|b2v_inst8|q\(1),
	datad => \b2v_inst2|b2v_inst4|q\(1),
	combout => \b2v_inst2|b2v_inst16|o[1]~16_combout\);

-- Location: LCCOMB_X51_Y12_N4
\b2v_inst2|b2v_inst16|o[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|o[1]~17_combout\ = (\b2v_inst2|b2v_inst8|q\(1) & (\b2v_inst2|b2v_inst4|q\(0) $ (((\b2v_inst2|b2v_inst4|q\(1) & !\b2v_inst2|b2v_inst16|o[1]~16_combout\))))) # (!\b2v_inst2|b2v_inst8|q\(1) & 
-- (((\b2v_inst2|b2v_inst16|o[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst4|q\(1),
	datab => \b2v_inst2|b2v_inst4|q\(0),
	datac => \b2v_inst2|b2v_inst8|q\(1),
	datad => \b2v_inst2|b2v_inst16|o[1]~16_combout\,
	combout => \b2v_inst2|b2v_inst16|o[1]~17_combout\);

-- Location: LCCOMB_X49_Y12_N24
\b2v_inst2|b2v_inst16|o[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|o[1]~18_combout\ = (\b2v_inst2|b2v_inst8|q\(0) & (\b2v_inst2|b2v_inst8|q\(1))) # (!\b2v_inst2|b2v_inst8|q\(0) & ((\b2v_inst2|b2v_inst8|q\(1) & (\b2v_inst2|b2v_inst16|Mux9~0_combout\)) # (!\b2v_inst2|b2v_inst8|q\(1) & 
-- ((\b2v_inst2|b2v_inst16|Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst8|q\(0),
	datab => \b2v_inst2|b2v_inst8|q\(1),
	datac => \b2v_inst2|b2v_inst16|Mux9~0_combout\,
	datad => \b2v_inst2|b2v_inst16|Mux2~0_combout\,
	combout => \b2v_inst2|b2v_inst16|o[1]~18_combout\);

-- Location: LCCOMB_X49_Y12_N30
\b2v_inst2|b2v_inst16|o[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|o[1]~19_combout\ = (\b2v_inst2|b2v_inst8|q\(0) & ((\b2v_inst2|b2v_inst16|o[1]~18_combout\ & ((\b2v_inst2|b2v_inst16|Mux5~0_combout\))) # (!\b2v_inst2|b2v_inst16|o[1]~18_combout\ & (\b2v_inst2|b2v_inst4|q\(2))))) # 
-- (!\b2v_inst2|b2v_inst8|q\(0) & (((\b2v_inst2|b2v_inst16|o[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst8|q\(0),
	datab => \b2v_inst2|b2v_inst4|q\(2),
	datac => \b2v_inst2|b2v_inst16|Mux5~0_combout\,
	datad => \b2v_inst2|b2v_inst16|o[1]~18_combout\,
	combout => \b2v_inst2|b2v_inst16|o[1]~19_combout\);

-- Location: LCCOMB_X51_Y12_N22
\b2v_inst2|b2v_inst16|o[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|o[1]~20_combout\ = (\b2v_inst2|b2v_inst8|q\(3) & ((\b2v_inst2|b2v_inst8|q\(2) & (\b2v_inst2|b2v_inst16|o[1]~17_combout\)) # (!\b2v_inst2|b2v_inst8|q\(2) & ((\b2v_inst2|b2v_inst16|o[1]~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst8|q\(3),
	datab => \b2v_inst2|b2v_inst16|o[1]~17_combout\,
	datac => \b2v_inst2|b2v_inst16|o[1]~19_combout\,
	datad => \b2v_inst2|b2v_inst8|q\(2),
	combout => \b2v_inst2|b2v_inst16|o[1]~20_combout\);

-- Location: LCCOMB_X51_Y12_N14
\b2v_inst2|b2v_inst37|c[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst37|c[1]~12_combout\ = \b2v_inst2|b2v_inst15|o[1]~22_combout\ $ (((\b2v_inst2|b2v_inst16|o[1]~20_combout\) # ((!\b2v_inst2|b2v_inst8|q\(3) & \b2v_inst2|b2v_inst16|o[1]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst8|q\(3),
	datab => \b2v_inst2|b2v_inst16|o[1]~15_combout\,
	datac => \b2v_inst2|b2v_inst16|o[1]~20_combout\,
	datad => \b2v_inst2|b2v_inst15|o[1]~22_combout\,
	combout => \b2v_inst2|b2v_inst37|c[1]~12_combout\);

-- Location: LCCOMB_X50_Y10_N12
\b2v_inst2|b2v_inst21|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|Mux7~2_combout\ = \b2v_inst2|b2v_inst37|c[1]~13_combout\ $ (\b2v_inst2|b2v_inst|q\(1) $ (\b2v_inst2|b2v_inst37|c[0]~2_combout\ $ (\b2v_inst2|b2v_inst37|c[1]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst37|c[1]~13_combout\,
	datab => \b2v_inst2|b2v_inst|q\(1),
	datac => \b2v_inst2|b2v_inst37|c[0]~2_combout\,
	datad => \b2v_inst2|b2v_inst37|c[1]~12_combout\,
	combout => \b2v_inst2|b2v_inst21|Mux7~2_combout\);

-- Location: LCCOMB_X51_Y10_N6
\b2v_inst2|b2v_inst21|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|Mux7~3_combout\ = \b2v_inst2|b2v_inst37|c[3]~9_combout\ $ (\b2v_inst2|b2v_inst37|c[3]~10_combout\ $ (\b2v_inst2|b2v_inst|q\(3) $ (\b2v_inst2|b2v_inst21|Mux7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst37|c[3]~9_combout\,
	datab => \b2v_inst2|b2v_inst37|c[3]~10_combout\,
	datac => \b2v_inst2|b2v_inst|q\(3),
	datad => \b2v_inst2|b2v_inst21|Mux7~2_combout\,
	combout => \b2v_inst2|b2v_inst21|Mux7~3_combout\);

-- Location: LCCOMB_X49_Y11_N20
\b2v_inst2|b2v_inst14|o[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[0]~7_combout\ = (\b2v_inst2|b2v_inst6|q\(0) & ((\b2v_inst2|b2v_inst14|Mux10~0_combout\) # ((\b2v_inst2|b2v_inst6|q\(1))))) # (!\b2v_inst2|b2v_inst6|q\(0) & (((\b2v_inst2|b2v_inst14|Mux2~0_combout\ & !\b2v_inst2|b2v_inst6|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst14|Mux10~0_combout\,
	datab => \b2v_inst2|b2v_inst6|q\(0),
	datac => \b2v_inst2|b2v_inst14|Mux2~0_combout\,
	datad => \b2v_inst2|b2v_inst6|q\(1),
	combout => \b2v_inst2|b2v_inst14|o[0]~7_combout\);

-- Location: LCCOMB_X49_Y11_N22
\b2v_inst2|b2v_inst14|o[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[0]~8_combout\ = (\b2v_inst2|b2v_inst6|q\(1) & ((\b2v_inst2|b2v_inst14|o[0]~7_combout\ & ((\b2v_inst2|b2v_inst14|Mux9~0_combout\))) # (!\b2v_inst2|b2v_inst14|o[0]~7_combout\ & (\b2v_inst2|b2v_inst14|Mux3~0_combout\)))) # 
-- (!\b2v_inst2|b2v_inst6|q\(1) & (((\b2v_inst2|b2v_inst14|o[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst6|q\(1),
	datab => \b2v_inst2|b2v_inst14|Mux3~0_combout\,
	datac => \b2v_inst2|b2v_inst14|Mux9~0_combout\,
	datad => \b2v_inst2|b2v_inst14|o[0]~7_combout\,
	combout => \b2v_inst2|b2v_inst14|o[0]~8_combout\);

-- Location: LCCOMB_X49_Y11_N30
\b2v_inst2|b2v_inst14|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|Mux8~0_combout\ = \b2v_inst2|b2v_inst2|q\(0) $ (\b2v_inst2|b2v_inst2|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|b2v_inst2|q\(0),
	datad => \b2v_inst2|b2v_inst2|q\(1),
	combout => \b2v_inst2|b2v_inst14|Mux8~0_combout\);

-- Location: LCCOMB_X49_Y11_N16
\b2v_inst2|b2v_inst14|o[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[0]~9_combout\ = (\b2v_inst2|b2v_inst6|q\(0) & (((\b2v_inst2|b2v_inst6|q\(1))))) # (!\b2v_inst2|b2v_inst6|q\(0) & (\b2v_inst2|b2v_inst2|q\(1) $ (((\b2v_inst2|b2v_inst2|q\(3) & \b2v_inst2|b2v_inst6|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst2|q\(1),
	datab => \b2v_inst2|b2v_inst2|q\(3),
	datac => \b2v_inst2|b2v_inst6|q\(0),
	datad => \b2v_inst2|b2v_inst6|q\(1),
	combout => \b2v_inst2|b2v_inst14|o[0]~9_combout\);

-- Location: LCCOMB_X49_Y11_N28
\b2v_inst2|b2v_inst14|o[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[0]~10_combout\ = (\b2v_inst2|b2v_inst6|q\(0) & (\b2v_inst2|b2v_inst14|Mux8~0_combout\ $ (((\b2v_inst2|b2v_inst2|q\(3) & \b2v_inst2|b2v_inst14|o[0]~9_combout\))))) # (!\b2v_inst2|b2v_inst6|q\(0) & 
-- (((\b2v_inst2|b2v_inst14|o[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst6|q\(0),
	datab => \b2v_inst2|b2v_inst2|q\(3),
	datac => \b2v_inst2|b2v_inst14|Mux8~0_combout\,
	datad => \b2v_inst2|b2v_inst14|o[0]~9_combout\,
	combout => \b2v_inst2|b2v_inst14|o[0]~10_combout\);

-- Location: LCCOMB_X49_Y11_N14
\b2v_inst2|b2v_inst14|o[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[0]~11_combout\ = (\b2v_inst2|b2v_inst6|q\(3) & ((\b2v_inst2|b2v_inst6|q\(2) & (\b2v_inst2|b2v_inst14|o[0]~8_combout\)) # (!\b2v_inst2|b2v_inst6|q\(2) & ((\b2v_inst2|b2v_inst14|o[0]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst6|q\(3),
	datab => \b2v_inst2|b2v_inst6|q\(2),
	datac => \b2v_inst2|b2v_inst14|o[0]~8_combout\,
	datad => \b2v_inst2|b2v_inst14|o[0]~10_combout\,
	combout => \b2v_inst2|b2v_inst14|o[0]~11_combout\);

-- Location: LCCOMB_X51_Y11_N16
\b2v_inst2|b2v_inst14|o[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[0]~0_combout\ = (\b2v_inst2|b2v_inst6|q\(1) & (((\b2v_inst2|b2v_inst6|q\(0))))) # (!\b2v_inst2|b2v_inst6|q\(1) & (\b2v_inst2|b2v_inst2|q\(2) $ (((\b2v_inst2|b2v_inst2|q\(0) & \b2v_inst2|b2v_inst6|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst2|q\(0),
	datab => \b2v_inst2|b2v_inst6|q\(0),
	datac => \b2v_inst2|b2v_inst6|q\(1),
	datad => \b2v_inst2|b2v_inst2|q\(2),
	combout => \b2v_inst2|b2v_inst14|o[0]~0_combout\);

-- Location: LCCOMB_X51_Y11_N18
\b2v_inst2|b2v_inst14|o[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[0]~1_combout\ = (\b2v_inst2|b2v_inst6|q\(1) & ((\b2v_inst2|b2v_inst14|o[0]~0_combout\ & ((\b2v_inst2|b2v_inst14|Mux5~0_combout\))) # (!\b2v_inst2|b2v_inst14|o[0]~0_combout\ & (\b2v_inst2|b2v_inst14|Mux0~0_combout\)))) # 
-- (!\b2v_inst2|b2v_inst6|q\(1) & (((\b2v_inst2|b2v_inst14|o[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst6|q\(1),
	datab => \b2v_inst2|b2v_inst14|Mux0~0_combout\,
	datac => \b2v_inst2|b2v_inst14|Mux5~0_combout\,
	datad => \b2v_inst2|b2v_inst14|o[0]~0_combout\,
	combout => \b2v_inst2|b2v_inst14|o[0]~1_combout\);

-- Location: LCCOMB_X51_Y11_N20
\b2v_inst2|b2v_inst14|o[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[0]~4_combout\ = (\b2v_inst2|b2v_inst14|o[3]~2_combout\ & ((\b2v_inst2|b2v_inst14|o[3]~3_combout\ & ((\b2v_inst2|b2v_inst14|o[0]~1_combout\))) # (!\b2v_inst2|b2v_inst14|o[3]~3_combout\ & (\b2v_inst2|b2v_inst2|q\(0))))) # 
-- (!\b2v_inst2|b2v_inst14|o[3]~2_combout\ & (((\b2v_inst2|b2v_inst14|o[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst2|q\(0),
	datab => \b2v_inst2|b2v_inst14|o[3]~2_combout\,
	datac => \b2v_inst2|b2v_inst14|o[3]~3_combout\,
	datad => \b2v_inst2|b2v_inst14|o[0]~1_combout\,
	combout => \b2v_inst2|b2v_inst14|o[0]~4_combout\);

-- Location: LCCOMB_X51_Y11_N4
\b2v_inst2|b2v_inst14|o[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[0]~6_combout\ = (\b2v_inst2|b2v_inst14|o[3]~5_combout\ & (\b2v_inst2|b2v_inst2|q\(3) $ (((\b2v_inst2|b2v_inst2|q\(0) & \b2v_inst2|b2v_inst14|o[0]~4_combout\))))) # (!\b2v_inst2|b2v_inst14|o[3]~5_combout\ & 
-- (((\b2v_inst2|b2v_inst14|o[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst2|q\(0),
	datab => \b2v_inst2|b2v_inst2|q\(3),
	datac => \b2v_inst2|b2v_inst14|o[3]~5_combout\,
	datad => \b2v_inst2|b2v_inst14|o[0]~4_combout\,
	combout => \b2v_inst2|b2v_inst14|o[0]~6_combout\);

-- Location: LCCOMB_X51_Y8_N30
\b2v_inst2|b2v_inst13|o[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[0]~5_combout\ = (\b2v_inst2|b2v_inst5|q\(1) & (((\b2v_inst2|b2v_inst5|q\(0))))) # (!\b2v_inst2|b2v_inst5|q\(1) & (\b2v_inst2|b2v_inst1|q\(2) $ (((\b2v_inst2|b2v_inst1|q\(0) & \b2v_inst2|b2v_inst5|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst5|q\(1),
	datab => \b2v_inst2|b2v_inst1|q\(0),
	datac => \b2v_inst2|b2v_inst1|q\(2),
	datad => \b2v_inst2|b2v_inst5|q\(0),
	combout => \b2v_inst2|b2v_inst13|o[0]~5_combout\);

-- Location: LCCOMB_X51_Y8_N6
\b2v_inst2|b2v_inst13|o[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[0]~6_combout\ = (\b2v_inst2|b2v_inst13|o[0]~5_combout\ & (((\b2v_inst2|b2v_inst13|Mux5~0_combout\) # (!\b2v_inst2|b2v_inst5|q\(1))))) # (!\b2v_inst2|b2v_inst13|o[0]~5_combout\ & (\b2v_inst2|b2v_inst13|Mux0~0_combout\ & 
-- ((\b2v_inst2|b2v_inst5|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst13|Mux0~0_combout\,
	datab => \b2v_inst2|b2v_inst13|Mux5~0_combout\,
	datac => \b2v_inst2|b2v_inst13|o[0]~5_combout\,
	datad => \b2v_inst2|b2v_inst5|q\(1),
	combout => \b2v_inst2|b2v_inst13|o[0]~6_combout\);

-- Location: LCCOMB_X51_Y8_N12
\b2v_inst2|b2v_inst13|o[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[0]~9_combout\ = (\b2v_inst2|b2v_inst13|o[3]~8_combout\ & ((\b2v_inst2|b2v_inst13|o[0]~6_combout\) # ((!\b2v_inst2|b2v_inst13|o[3]~7_combout\)))) # (!\b2v_inst2|b2v_inst13|o[3]~8_combout\ & (((\b2v_inst2|b2v_inst1|q\(0) & 
-- \b2v_inst2|b2v_inst13|o[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst13|o[0]~6_combout\,
	datab => \b2v_inst2|b2v_inst13|o[3]~8_combout\,
	datac => \b2v_inst2|b2v_inst1|q\(0),
	datad => \b2v_inst2|b2v_inst13|o[3]~7_combout\,
	combout => \b2v_inst2|b2v_inst13|o[0]~9_combout\);

-- Location: LCCOMB_X51_Y8_N22
\b2v_inst2|b2v_inst13|o[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[0]~11_combout\ = (\b2v_inst2|b2v_inst13|o[3]~10_combout\ & (\b2v_inst2|b2v_inst1|q\(3) $ (((\b2v_inst2|b2v_inst1|q\(0) & \b2v_inst2|b2v_inst13|o[0]~9_combout\))))) # (!\b2v_inst2|b2v_inst13|o[3]~10_combout\ & 
-- (((\b2v_inst2|b2v_inst13|o[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst1|q\(3),
	datab => \b2v_inst2|b2v_inst1|q\(0),
	datac => \b2v_inst2|b2v_inst13|o[3]~10_combout\,
	datad => \b2v_inst2|b2v_inst13|o[0]~9_combout\,
	combout => \b2v_inst2|b2v_inst13|o[0]~11_combout\);

-- Location: LCCOMB_X50_Y7_N22
\b2v_inst2|b2v_inst13|o[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[0]~2_combout\ = (\b2v_inst2|b2v_inst5|q\(0) & (((\b2v_inst2|b2v_inst5|q\(1))))) # (!\b2v_inst2|b2v_inst5|q\(0) & (\b2v_inst2|b2v_inst1|q\(1) $ (((\b2v_inst2|b2v_inst5|q\(1) & \b2v_inst2|b2v_inst1|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst5|q\(0),
	datab => \b2v_inst2|b2v_inst1|q\(1),
	datac => \b2v_inst2|b2v_inst5|q\(1),
	datad => \b2v_inst2|b2v_inst1|q\(3),
	combout => \b2v_inst2|b2v_inst13|o[0]~2_combout\);

-- Location: LCCOMB_X51_Y7_N24
\b2v_inst2|b2v_inst13|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|Mux8~0_combout\ = \b2v_inst2|b2v_inst1|q\(1) $ (\b2v_inst2|b2v_inst1|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|b2v_inst1|q\(1),
	datad => \b2v_inst2|b2v_inst1|q\(0),
	combout => \b2v_inst2|b2v_inst13|Mux8~0_combout\);

-- Location: LCCOMB_X50_Y7_N8
\b2v_inst2|b2v_inst13|o[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[0]~3_combout\ = (\b2v_inst2|b2v_inst5|q\(0) & (\b2v_inst2|b2v_inst13|Mux8~0_combout\ $ (((\b2v_inst2|b2v_inst1|q\(3) & \b2v_inst2|b2v_inst13|o[0]~2_combout\))))) # (!\b2v_inst2|b2v_inst5|q\(0) & 
-- (((\b2v_inst2|b2v_inst13|o[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst5|q\(0),
	datab => \b2v_inst2|b2v_inst1|q\(3),
	datac => \b2v_inst2|b2v_inst13|o[0]~2_combout\,
	datad => \b2v_inst2|b2v_inst13|Mux8~0_combout\,
	combout => \b2v_inst2|b2v_inst13|o[0]~3_combout\);

-- Location: LCCOMB_X50_Y7_N18
\b2v_inst2|b2v_inst13|o[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[0]~0_combout\ = (\b2v_inst2|b2v_inst5|q\(0) & ((\b2v_inst2|b2v_inst5|q\(1)) # ((\b2v_inst2|b2v_inst13|Mux10~0_combout\)))) # (!\b2v_inst2|b2v_inst5|q\(0) & (!\b2v_inst2|b2v_inst5|q\(1) & (\b2v_inst2|b2v_inst13|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst5|q\(0),
	datab => \b2v_inst2|b2v_inst5|q\(1),
	datac => \b2v_inst2|b2v_inst13|Mux2~0_combout\,
	datad => \b2v_inst2|b2v_inst13|Mux10~0_combout\,
	combout => \b2v_inst2|b2v_inst13|o[0]~0_combout\);

-- Location: LCCOMB_X50_Y7_N12
\b2v_inst2|b2v_inst13|o[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[0]~1_combout\ = (\b2v_inst2|b2v_inst5|q\(1) & ((\b2v_inst2|b2v_inst13|o[0]~0_combout\ & (\b2v_inst2|b2v_inst13|Mux9~0_combout\)) # (!\b2v_inst2|b2v_inst13|o[0]~0_combout\ & ((\b2v_inst2|b2v_inst13|Mux3~0_combout\))))) # 
-- (!\b2v_inst2|b2v_inst5|q\(1) & (((\b2v_inst2|b2v_inst13|o[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst5|q\(1),
	datab => \b2v_inst2|b2v_inst13|Mux9~0_combout\,
	datac => \b2v_inst2|b2v_inst13|Mux3~0_combout\,
	datad => \b2v_inst2|b2v_inst13|o[0]~0_combout\,
	combout => \b2v_inst2|b2v_inst13|o[0]~1_combout\);

-- Location: LCCOMB_X50_Y7_N14
\b2v_inst2|b2v_inst13|o[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[0]~4_combout\ = (\b2v_inst2|b2v_inst5|q\(3) & ((\b2v_inst2|b2v_inst5|q\(2) & ((\b2v_inst2|b2v_inst13|o[0]~1_combout\))) # (!\b2v_inst2|b2v_inst5|q\(2) & (\b2v_inst2|b2v_inst13|o[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst5|q\(3),
	datab => \b2v_inst2|b2v_inst5|q\(2),
	datac => \b2v_inst2|b2v_inst13|o[0]~3_combout\,
	datad => \b2v_inst2|b2v_inst13|o[0]~1_combout\,
	combout => \b2v_inst2|b2v_inst13|o[0]~4_combout\);

-- Location: LCCOMB_X51_Y8_N16
\b2v_inst2|b2v_inst13|o[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[0]~12_combout\ = (\b2v_inst2|b2v_inst13|o[0]~4_combout\) # ((!\b2v_inst2|b2v_inst5|q\(3) & \b2v_inst2|b2v_inst13|o[0]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst5|q\(3),
	datac => \b2v_inst2|b2v_inst13|o[0]~11_combout\,
	datad => \b2v_inst2|b2v_inst13|o[0]~4_combout\,
	combout => \b2v_inst2|b2v_inst13|o[0]~12_combout\);

-- Location: LCCOMB_X51_Y8_N10
\b2v_inst2|b2v_inst37|c[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst37|c[0]~1_combout\ = \b2v_inst2|b2v_inst13|o[0]~12_combout\ $ (((\b2v_inst2|b2v_inst14|o[0]~11_combout\) # ((!\b2v_inst2|b2v_inst6|q\(3) & \b2v_inst2|b2v_inst14|o[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst14|o[0]~11_combout\,
	datab => \b2v_inst2|b2v_inst6|q\(3),
	datac => \b2v_inst2|b2v_inst14|o[0]~6_combout\,
	datad => \b2v_inst2|b2v_inst13|o[0]~12_combout\,
	combout => \b2v_inst2|b2v_inst37|c[0]~1_combout\);

-- Location: LCCOMB_X53_Y10_N8
\b2v_inst2|b2v_inst21|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|Mux4~4_combout\ = \b2v_inst2|b2v_inst37|c[0]~1_combout\ $ (\b2v_inst2|b2v_inst37|c[3]~11_combout\ $ (\b2v_inst2|b2v_inst|q\(0) $ (\b2v_inst2|b2v_inst37|c[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst37|c[0]~1_combout\,
	datab => \b2v_inst2|b2v_inst37|c[3]~11_combout\,
	datac => \b2v_inst2|b2v_inst|q\(0),
	datad => \b2v_inst2|b2v_inst37|c[0]~0_combout\,
	combout => \b2v_inst2|b2v_inst21|Mux4~4_combout\);

-- Location: LCCOMB_X50_Y10_N22
\b2v_inst2|b2v_inst21|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|Mux3~0_combout\ = \b2v_inst2|b2v_inst37|c[2]~6_combout\ $ (\b2v_inst2|b2v_inst37|c[1]~5_combout\ $ (\b2v_inst2|b2v_inst37|c[2]~7_combout\ $ (\b2v_inst2|b2v_inst37|c[3]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst37|c[2]~6_combout\,
	datab => \b2v_inst2|b2v_inst37|c[1]~5_combout\,
	datac => \b2v_inst2|b2v_inst37|c[2]~7_combout\,
	datad => \b2v_inst2|b2v_inst37|c[3]~11_combout\,
	combout => \b2v_inst2|b2v_inst21|Mux3~0_combout\);

-- Location: LCCOMB_X50_Y10_N28
\b2v_inst2|b2v_inst21|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|Mux0~0_combout\ = \b2v_inst2|b2v_inst37|c[2]~6_combout\ $ (\b2v_inst2|b2v_inst37|c[2]~7_combout\ $ (\b2v_inst2|b2v_inst37|c[3]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst37|c[2]~6_combout\,
	datac => \b2v_inst2|b2v_inst37|c[2]~7_combout\,
	datad => \b2v_inst2|b2v_inst37|c[3]~11_combout\,
	combout => \b2v_inst2|b2v_inst21|Mux0~0_combout\);

-- Location: LCCOMB_X50_Y10_N14
\b2v_inst2|b2v_inst21|o[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[1]~27_combout\ = (\b2v_inst2|b2v_inst32|o[1]~2_combout\ & (\b2v_inst2|b2v_inst32|o[0]~1_combout\)) # (!\b2v_inst2|b2v_inst32|o[1]~2_combout\ & ((\b2v_inst2|b2v_inst32|o[0]~1_combout\ & (\b2v_inst2|b2v_inst21|Mux3~0_combout\)) # 
-- (!\b2v_inst2|b2v_inst32|o[0]~1_combout\ & ((\b2v_inst2|b2v_inst21|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datab => \b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datac => \b2v_inst2|b2v_inst21|Mux3~0_combout\,
	datad => \b2v_inst2|b2v_inst21|Mux0~0_combout\,
	combout => \b2v_inst2|b2v_inst21|o[1]~27_combout\);

-- Location: LCCOMB_X50_Y10_N26
\b2v_inst2|b2v_inst21|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|Mux10~2_combout\ = \b2v_inst2|b2v_inst37|c[2]~7_combout\ $ (\b2v_inst2|b2v_inst37|c[2]~6_combout\ $ (\b2v_inst2|b2v_inst21|Mux7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst37|c[2]~7_combout\,
	datac => \b2v_inst2|b2v_inst37|c[2]~6_combout\,
	datad => \b2v_inst2|b2v_inst21|Mux7~2_combout\,
	combout => \b2v_inst2|b2v_inst21|Mux10~2_combout\);

-- Location: LCCOMB_X50_Y10_N20
\b2v_inst2|b2v_inst21|o[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[1]~28_combout\ = (\b2v_inst2|b2v_inst32|o[1]~2_combout\ & ((\b2v_inst2|b2v_inst21|o[1]~27_combout\ & (\b2v_inst2|b2v_inst21|Mux10~2_combout\)) # (!\b2v_inst2|b2v_inst21|o[1]~27_combout\ & 
-- ((\b2v_inst2|b2v_inst21|Mux5~1_combout\))))) # (!\b2v_inst2|b2v_inst32|o[1]~2_combout\ & (\b2v_inst2|b2v_inst21|o[1]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datab => \b2v_inst2|b2v_inst21|o[1]~27_combout\,
	datac => \b2v_inst2|b2v_inst21|Mux10~2_combout\,
	datad => \b2v_inst2|b2v_inst21|Mux5~1_combout\,
	combout => \b2v_inst2|b2v_inst21|o[1]~28_combout\);

-- Location: LCCOMB_X55_Y10_N12
\b2v_inst2|b2v_inst21|o[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[1]~29_combout\ = (\b2v_inst2|b2v_inst21|o[0]~3_combout\ & (((\b2v_inst2|b2v_inst21|o[1]~28_combout\) # (!\b2v_inst2|b2v_inst21|o[0]~2_combout\)))) # (!\b2v_inst2|b2v_inst21|o[0]~3_combout\ & (\b2v_inst2|b2v_inst37|c[1]~5_combout\ & 
-- (\b2v_inst2|b2v_inst21|o[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst21|o[0]~3_combout\,
	datab => \b2v_inst2|b2v_inst37|c[1]~5_combout\,
	datac => \b2v_inst2|b2v_inst21|o[0]~2_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~28_combout\,
	combout => \b2v_inst2|b2v_inst21|o[1]~29_combout\);

-- Location: LCCOMB_X55_Y10_N2
\b2v_inst2|b2v_inst21|o[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[1]~30_combout\ = (\b2v_inst2|b2v_inst21|o[0]~5_combout\ & ((\b2v_inst2|b2v_inst21|o[1]~29_combout\ & (\b2v_inst2|b2v_inst21|Mux7~3_combout\)) # (!\b2v_inst2|b2v_inst21|o[1]~29_combout\ & ((\b2v_inst2|b2v_inst21|Mux4~4_combout\))))) 
-- # (!\b2v_inst2|b2v_inst21|o[0]~5_combout\ & (((\b2v_inst2|b2v_inst21|o[1]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst21|Mux7~3_combout\,
	datab => \b2v_inst2|b2v_inst21|o[0]~5_combout\,
	datac => \b2v_inst2|b2v_inst21|Mux4~4_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~29_combout\,
	combout => \b2v_inst2|b2v_inst21|o[1]~30_combout\);

-- Location: LCCOMB_X55_Y10_N0
\b2v_inst2|b2v_inst21|o[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[1]~31_combout\ = (\b2v_inst2|b2v_inst21|o[1]~26_combout\) # ((!\b2v_inst2|b2v_inst32|o[3]~0_combout\ & \b2v_inst2|b2v_inst21|o[1]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst32|o[3]~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[1]~26_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~30_combout\,
	combout => \b2v_inst2|b2v_inst21|o[1]~31_combout\);

-- Location: LCCOMB_X54_Y9_N10
\b2v_inst2|b2v_inst19|o[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|o[1]~12_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst2|b2v_inst11|q\(3) $ (((\b2v_inst2|b2v_inst11|q\(1) & 
-- !\b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst11|q\(1),
	datab => \b2v_inst2|b2v_inst11|q\(3),
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst19|o[1]~12_combout\);

-- Location: LCCOMB_X54_Y9_N8
\b2v_inst2|b2v_inst19|o[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|o[1]~13_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst2|b2v_inst11|q\(0) $ (((\b2v_inst2|b2v_inst11|q\(1) & !\b2v_inst2|b2v_inst19|o[1]~12_combout\))))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- (((\b2v_inst2|b2v_inst19|o[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst11|q\(0),
	datab => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datac => \b2v_inst2|b2v_inst11|q\(1),
	datad => \b2v_inst2|b2v_inst19|o[1]~12_combout\,
	combout => \b2v_inst2|b2v_inst19|o[1]~13_combout\);

-- Location: LCCOMB_X53_Y9_N22
\b2v_inst2|b2v_inst19|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|Mux5~0_combout\ = \b2v_inst2|b2v_inst11|q\(2) $ (\b2v_inst2|b2v_inst11|q\(3) $ (\b2v_inst2|b2v_inst11|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst11|q\(2),
	datab => \b2v_inst2|b2v_inst11|q\(3),
	datad => \b2v_inst2|b2v_inst11|q\(0),
	combout => \b2v_inst2|b2v_inst19|Mux5~0_combout\);

-- Location: LCCOMB_X55_Y10_N18
\b2v_inst2|b2v_inst19|o[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|o[1]~14_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- ((\b2v_inst2|b2v_inst19|Mux9~0_combout\))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst2|b2v_inst19|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst19|Mux2~0_combout\,
	datab => \b2v_inst2|b2v_inst19|Mux9~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst19|o[1]~14_combout\);

-- Location: LCCOMB_X55_Y10_N28
\b2v_inst2|b2v_inst19|o[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|o[1]~15_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst2|b2v_inst19|o[1]~14_combout\ & (\b2v_inst2|b2v_inst19|Mux5~0_combout\)) # (!\b2v_inst2|b2v_inst19|o[1]~14_combout\ & ((\b2v_inst2|b2v_inst11|q\(2)))))) # 
-- (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst2|b2v_inst19|o[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst19|Mux5~0_combout\,
	datab => \b2v_inst2|b2v_inst11|q\(2),
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst19|o[1]~14_combout\,
	combout => \b2v_inst2|b2v_inst19|o[1]~15_combout\);

-- Location: LCCOMB_X54_Y9_N6
\b2v_inst2|b2v_inst7|q[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst7|q[1]~4_combout\ = (\b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst2|b2v_inst21|o[2]~41_combout\ & (\b2v_inst2|b2v_inst19|o[1]~13_combout\)) # (!\b2v_inst2|b2v_inst21|o[2]~41_combout\ & ((\b2v_inst2|b2v_inst19|o[1]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datab => \b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datac => \b2v_inst2|b2v_inst19|o[1]~13_combout\,
	datad => \b2v_inst2|b2v_inst19|o[1]~15_combout\,
	combout => \b2v_inst2|b2v_inst7|q[1]~4_combout\);

-- Location: LCCOMB_X53_Y9_N16
\b2v_inst2|b2v_inst19|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|Mux7~1_combout\ = \b2v_inst2|b2v_inst11|q\(1) $ (\b2v_inst2|b2v_inst11|q\(0) $ (\b2v_inst2|b2v_inst11|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst11|q\(1),
	datac => \b2v_inst2|b2v_inst11|q\(0),
	datad => \b2v_inst2|b2v_inst11|q\(3),
	combout => \b2v_inst2|b2v_inst19|Mux7~1_combout\);

-- Location: LCCOMB_X55_Y9_N4
\b2v_inst2|b2v_inst19|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|Mux4~0_combout\ = \b2v_inst2|b2v_inst11|q\(3) $ (\b2v_inst2|b2v_inst11|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst11|q\(3),
	datac => \b2v_inst2|b2v_inst11|q\(0),
	combout => \b2v_inst2|b2v_inst19|Mux4~0_combout\);

-- Location: LCCOMB_X55_Y8_N20
\b2v_inst2|b2v_inst19|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|Mux0~0_combout\ = \b2v_inst2|b2v_inst11|q\(2) $ (\b2v_inst2|b2v_inst11|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|b2v_inst11|q\(2),
	datad => \b2v_inst2|b2v_inst11|q\(3),
	combout => \b2v_inst2|b2v_inst19|Mux0~0_combout\);

-- Location: LCCOMB_X55_Y10_N10
\b2v_inst2|b2v_inst19|o[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|o[1]~8_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst2|b2v_inst19|Mux3~0_combout\) # (\b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst2|b2v_inst19|Mux0~0_combout\ & 
-- ((!\b2v_inst2|b2v_inst21|o[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst19|Mux0~0_combout\,
	datab => \b2v_inst2|b2v_inst19|Mux3~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst19|o[1]~8_combout\);

-- Location: LCCOMB_X55_Y10_N16
\b2v_inst2|b2v_inst19|o[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|o[1]~9_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst2|b2v_inst19|o[1]~8_combout\ & (\b2v_inst2|b2v_inst19|Mux10~0_combout\)) # (!\b2v_inst2|b2v_inst19|o[1]~8_combout\ & ((\b2v_inst2|b2v_inst19|Mux5~1_combout\))))) 
-- # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst2|b2v_inst19|o[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst19|Mux10~0_combout\,
	datab => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datac => \b2v_inst2|b2v_inst19|Mux5~1_combout\,
	datad => \b2v_inst2|b2v_inst19|o[1]~8_combout\,
	combout => \b2v_inst2|b2v_inst19|o[1]~9_combout\);

-- Location: LCCOMB_X54_Y9_N26
\b2v_inst2|b2v_inst19|o[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|o[1]~10_combout\ = (\b2v_inst2|b2v_inst18|o[2]~2_combout\ & (((\b2v_inst2|b2v_inst19|o[1]~9_combout\) # (!\b2v_inst2|b2v_inst18|o[2]~1_combout\)))) # (!\b2v_inst2|b2v_inst18|o[2]~2_combout\ & (\b2v_inst2|b2v_inst11|q\(1) & 
-- (\b2v_inst2|b2v_inst18|o[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst18|o[2]~2_combout\,
	datab => \b2v_inst2|b2v_inst11|q\(1),
	datac => \b2v_inst2|b2v_inst18|o[2]~1_combout\,
	datad => \b2v_inst2|b2v_inst19|o[1]~9_combout\,
	combout => \b2v_inst2|b2v_inst19|o[1]~10_combout\);

-- Location: LCCOMB_X54_Y9_N24
\b2v_inst2|b2v_inst19|o[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|o[1]~11_combout\ = (\b2v_inst2|b2v_inst19|o[1]~10_combout\ & ((\b2v_inst2|b2v_inst19|Mux7~1_combout\) # ((!\b2v_inst2|b2v_inst18|o[2]~0_combout\)))) # (!\b2v_inst2|b2v_inst19|o[1]~10_combout\ & 
-- (((\b2v_inst2|b2v_inst19|Mux4~0_combout\ & \b2v_inst2|b2v_inst18|o[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst19|Mux7~1_combout\,
	datab => \b2v_inst2|b2v_inst19|Mux4~0_combout\,
	datac => \b2v_inst2|b2v_inst19|o[1]~10_combout\,
	datad => \b2v_inst2|b2v_inst18|o[2]~0_combout\,
	combout => \b2v_inst2|b2v_inst19|o[1]~11_combout\);

-- Location: LCCOMB_X54_Y9_N30
\b2v_inst2|b2v_inst7|q[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst7|q[1]~5_combout\ = \b2v_inst2|b2v_inst7|q\(1) $ (((\b2v_inst2|b2v_inst7|q[1]~4_combout\) # ((\b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst2|b2v_inst19|o[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst7|q[1]~4_combout\,
	datab => \b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datac => \b2v_inst2|b2v_inst7|q\(1),
	datad => \b2v_inst2|b2v_inst19|o[1]~11_combout\,
	combout => \b2v_inst2|b2v_inst7|q[1]~5_combout\);

-- Location: FF_X54_Y9_N31
\b2v_inst2|b2v_inst7|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst7|q[1]~5_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst7|q\(1));

-- Location: LCCOMB_X52_Y9_N4
\b2v_inst2|b2v_inst33|O[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst33|O[1]~1_combout\ = (\b2v_inst|Selector0~0_combout\ & ((\b2v_inst2|b2v_inst7|q\(1)))) # (!\b2v_inst|Selector0~0_combout\ & (\b2v_inst2|b2v_inst11|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst11|q\(1),
	datac => \b2v_inst|Selector0~0_combout\,
	datad => \b2v_inst2|b2v_inst7|q\(1),
	combout => \b2v_inst2|b2v_inst33|O[1]~1_combout\);

-- Location: FF_X52_Y9_N5
\b2v_inst2|b2v_inst36|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst33|O[1]~1_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	ena => \b2v_inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst36|q\(1));

-- Location: LCCOMB_X52_Y9_N18
\b2v_inst2|b2v_inst22|O[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst22|O[1]~1_combout\ = (\b2v_inst2|b2v_inst36|q\(1) & !\b2v_inst|Selector0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst36|q\(1),
	datad => \b2v_inst|Selector0~0_combout\,
	combout => \b2v_inst2|b2v_inst22|O[1]~1_combout\);

-- Location: FF_X52_Y9_N19
\b2v_inst2|b2v_inst9|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst22|O[1]~1_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	ena => \b2v_inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst9|q\(1));

-- Location: LCCOMB_X52_Y7_N8
\b2v_inst2|b2v_inst17|o[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|o[1]~12_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst2|b2v_inst9|q\(3) $ (((\b2v_inst2|b2v_inst9|q\(1) & 
-- !\b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst9|q\(3),
	datab => \b2v_inst2|b2v_inst9|q\(1),
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst17|o[1]~12_combout\);

-- Location: LCCOMB_X52_Y7_N22
\b2v_inst2|b2v_inst17|o[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|o[1]~13_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst2|b2v_inst9|q\(0) $ (((\b2v_inst2|b2v_inst9|q\(1) & !\b2v_inst2|b2v_inst17|o[1]~12_combout\))))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- (((\b2v_inst2|b2v_inst17|o[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst9|q\(1),
	datab => \b2v_inst2|b2v_inst9|q\(0),
	datac => \b2v_inst2|b2v_inst17|o[1]~12_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst17|o[1]~13_combout\);

-- Location: LCCOMB_X53_Y7_N8
\b2v_inst2|b2v_inst17|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|Mux5~0_combout\ = \b2v_inst2|b2v_inst9|q\(3) $ (\b2v_inst2|b2v_inst9|q\(0) $ (\b2v_inst2|b2v_inst9|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst9|q\(3),
	datac => \b2v_inst2|b2v_inst9|q\(0),
	datad => \b2v_inst2|b2v_inst9|q\(2),
	combout => \b2v_inst2|b2v_inst17|Mux5~0_combout\);

-- Location: LCCOMB_X53_Y7_N28
\b2v_inst2|b2v_inst17|o[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|o[1]~14_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- (\b2v_inst2|b2v_inst17|Mux9~0_combout\)) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst2|b2v_inst17|Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datab => \b2v_inst2|b2v_inst17|Mux9~0_combout\,
	datac => \b2v_inst2|b2v_inst17|Mux2~0_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst17|o[1]~14_combout\);

-- Location: LCCOMB_X53_Y7_N18
\b2v_inst2|b2v_inst17|o[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|o[1]~15_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst2|b2v_inst17|o[1]~14_combout\ & ((\b2v_inst2|b2v_inst17|Mux5~0_combout\))) # (!\b2v_inst2|b2v_inst17|o[1]~14_combout\ & (\b2v_inst2|b2v_inst9|q\(2))))) # 
-- (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst2|b2v_inst17|o[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst9|q\(2),
	datab => \b2v_inst2|b2v_inst17|Mux5~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst17|o[1]~14_combout\,
	combout => \b2v_inst2|b2v_inst17|o[1]~15_combout\);

-- Location: LCCOMB_X52_Y7_N16
\b2v_inst2|b2v_inst5|q[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst5|q[1]~2_combout\ = (\b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst2|b2v_inst21|o[2]~41_combout\ & (\b2v_inst2|b2v_inst17|o[1]~13_combout\)) # (!\b2v_inst2|b2v_inst21|o[2]~41_combout\ & ((\b2v_inst2|b2v_inst17|o[1]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datab => \b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datac => \b2v_inst2|b2v_inst17|o[1]~13_combout\,
	datad => \b2v_inst2|b2v_inst17|o[1]~15_combout\,
	combout => \b2v_inst2|b2v_inst5|q[1]~2_combout\);

-- Location: LCCOMB_X54_Y7_N30
\b2v_inst2|b2v_inst17|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|Mux4~0_combout\ = \b2v_inst2|b2v_inst9|q\(3) $ (\b2v_inst2|b2v_inst9|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|b2v_inst9|q\(3),
	datad => \b2v_inst2|b2v_inst9|q\(0),
	combout => \b2v_inst2|b2v_inst17|Mux4~0_combout\);

-- Location: LCCOMB_X54_Y7_N24
\b2v_inst2|b2v_inst17|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|Mux7~1_combout\ = \b2v_inst2|b2v_inst9|q\(1) $ (\b2v_inst2|b2v_inst9|q\(3) $ (\b2v_inst2|b2v_inst9|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst9|q\(1),
	datac => \b2v_inst2|b2v_inst9|q\(3),
	datad => \b2v_inst2|b2v_inst9|q\(0),
	combout => \b2v_inst2|b2v_inst17|Mux7~1_combout\);

-- Location: LCCOMB_X54_Y7_N12
\b2v_inst2|b2v_inst17|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|Mux0~0_combout\ = \b2v_inst2|b2v_inst9|q\(3) $ (\b2v_inst2|b2v_inst9|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|b2v_inst9|q\(3),
	datad => \b2v_inst2|b2v_inst9|q\(2),
	combout => \b2v_inst2|b2v_inst17|Mux0~0_combout\);

-- Location: LCCOMB_X52_Y7_N20
\b2v_inst2|b2v_inst17|o[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|o[1]~8_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- (\b2v_inst2|b2v_inst17|Mux5~1_combout\)) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst2|b2v_inst17|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst17|Mux5~1_combout\,
	datab => \b2v_inst2|b2v_inst17|Mux0~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst17|o[1]~8_combout\);

-- Location: LCCOMB_X52_Y7_N30
\b2v_inst2|b2v_inst17|o[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|o[1]~9_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst2|b2v_inst17|o[1]~8_combout\ & (\b2v_inst2|b2v_inst17|Mux10~0_combout\)) # (!\b2v_inst2|b2v_inst17|o[1]~8_combout\ & ((\b2v_inst2|b2v_inst17|Mux3~0_combout\))))) 
-- # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst2|b2v_inst17|o[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst17|Mux10~0_combout\,
	datab => \b2v_inst2|b2v_inst17|Mux3~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst17|o[1]~8_combout\,
	combout => \b2v_inst2|b2v_inst17|o[1]~9_combout\);

-- Location: LCCOMB_X52_Y7_N12
\b2v_inst2|b2v_inst17|o[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|o[1]~10_combout\ = (\b2v_inst2|b2v_inst18|o[2]~2_combout\ & ((\b2v_inst2|b2v_inst17|o[1]~9_combout\) # ((!\b2v_inst2|b2v_inst18|o[2]~1_combout\)))) # (!\b2v_inst2|b2v_inst18|o[2]~2_combout\ & (((\b2v_inst2|b2v_inst18|o[2]~1_combout\ 
-- & \b2v_inst2|b2v_inst9|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst17|o[1]~9_combout\,
	datab => \b2v_inst2|b2v_inst18|o[2]~2_combout\,
	datac => \b2v_inst2|b2v_inst18|o[2]~1_combout\,
	datad => \b2v_inst2|b2v_inst9|q\(1),
	combout => \b2v_inst2|b2v_inst17|o[1]~10_combout\);

-- Location: LCCOMB_X52_Y7_N18
\b2v_inst2|b2v_inst17|o[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|o[1]~11_combout\ = (\b2v_inst2|b2v_inst18|o[2]~0_combout\ & ((\b2v_inst2|b2v_inst17|o[1]~10_combout\ & ((\b2v_inst2|b2v_inst17|Mux7~1_combout\))) # (!\b2v_inst2|b2v_inst17|o[1]~10_combout\ & (\b2v_inst2|b2v_inst17|Mux4~0_combout\)))) 
-- # (!\b2v_inst2|b2v_inst18|o[2]~0_combout\ & (((\b2v_inst2|b2v_inst17|o[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst17|Mux4~0_combout\,
	datab => \b2v_inst2|b2v_inst17|Mux7~1_combout\,
	datac => \b2v_inst2|b2v_inst18|o[2]~0_combout\,
	datad => \b2v_inst2|b2v_inst17|o[1]~10_combout\,
	combout => \b2v_inst2|b2v_inst17|o[1]~11_combout\);

-- Location: LCCOMB_X52_Y7_N0
\b2v_inst2|b2v_inst5|q[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst5|q[1]~3_combout\ = \b2v_inst2|b2v_inst5|q\(1) $ (((\b2v_inst2|b2v_inst5|q[1]~2_combout\) # ((\b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst2|b2v_inst17|o[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datab => \b2v_inst2|b2v_inst5|q[1]~2_combout\,
	datac => \b2v_inst2|b2v_inst5|q\(1),
	datad => \b2v_inst2|b2v_inst17|o[1]~11_combout\,
	combout => \b2v_inst2|b2v_inst5|q[1]~3_combout\);

-- Location: FF_X52_Y7_N1
\b2v_inst2|b2v_inst5|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst5|q[1]~3_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst5|q\(1));

-- Location: LCCOMB_X52_Y9_N16
\b2v_inst2|b2v_inst35|O[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst35|O[1]~1_combout\ = (\b2v_inst|Selector0~0_combout\ & (\b2v_inst2|b2v_inst5|q\(1))) # (!\b2v_inst|Selector0~0_combout\ & ((\b2v_inst2|b2v_inst9|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst5|q\(1),
	datac => \b2v_inst2|b2v_inst9|q\(1),
	datad => \b2v_inst|Selector0~0_combout\,
	combout => \b2v_inst2|b2v_inst35|O[1]~1_combout\);

-- Location: FF_X52_Y9_N17
\b2v_inst2|b2v_inst10|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst35|O[1]~1_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	ena => \b2v_inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst10|q\(1));

-- Location: LCCOMB_X52_Y11_N26
\b2v_inst2|b2v_inst18|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|Mux3~0_combout\ = \b2v_inst2|b2v_inst10|q\(3) $ (\b2v_inst2|b2v_inst10|q\(2) $ (\b2v_inst2|b2v_inst10|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst10|q\(3),
	datac => \b2v_inst2|b2v_inst10|q\(2),
	datad => \b2v_inst2|b2v_inst10|q\(1),
	combout => \b2v_inst2|b2v_inst18|Mux3~0_combout\);

-- Location: LCCOMB_X54_Y11_N24
\b2v_inst2|b2v_inst18|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|Mux0~0_combout\ = \b2v_inst2|b2v_inst10|q\(3) $ (\b2v_inst2|b2v_inst10|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst10|q\(3),
	datac => \b2v_inst2|b2v_inst10|q\(2),
	combout => \b2v_inst2|b2v_inst18|Mux0~0_combout\);

-- Location: LCCOMB_X54_Y11_N6
\b2v_inst2|b2v_inst18|o[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|o[2]~33_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- (\b2v_inst2|b2v_inst18|Mux3~0_combout\)) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst2|b2v_inst18|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst18|Mux3~0_combout\,
	datab => \b2v_inst2|b2v_inst18|Mux0~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst18|o[2]~33_combout\);

-- Location: LCCOMB_X54_Y11_N8
\b2v_inst2|b2v_inst18|o[2]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|o[2]~34_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst2|b2v_inst10|q\(3) $ (((\b2v_inst2|b2v_inst10|q\(1) & \b2v_inst2|b2v_inst18|o[2]~33_combout\))))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & 
-- (((\b2v_inst2|b2v_inst18|o[2]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst10|q\(1),
	datab => \b2v_inst2|b2v_inst10|q\(3),
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst18|o[2]~33_combout\,
	combout => \b2v_inst2|b2v_inst18|o[2]~34_combout\);

-- Location: LCCOMB_X52_Y11_N24
\b2v_inst2|b2v_inst18|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|Mux7~0_combout\ = \b2v_inst2|b2v_inst10|q\(0) $ (\b2v_inst2|b2v_inst10|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|b2v_inst10|q\(0),
	datad => \b2v_inst2|b2v_inst10|q\(1),
	combout => \b2v_inst2|b2v_inst18|Mux7~0_combout\);

-- Location: LCCOMB_X54_Y11_N30
\b2v_inst2|b2v_inst18|o[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|o[2]~31_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst2|b2v_inst10|q\(0) $ (((\b2v_inst2|b2v_inst10|q\(2) & 
-- !\b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst10|q\(0),
	datab => \b2v_inst2|b2v_inst10|q\(2),
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst18|o[2]~31_combout\);

-- Location: LCCOMB_X54_Y11_N28
\b2v_inst2|b2v_inst18|o[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|o[2]~32_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst2|b2v_inst18|Mux7~0_combout\ $ (((\b2v_inst2|b2v_inst10|q\(2) & !\b2v_inst2|b2v_inst18|o[2]~31_combout\))))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- (((\b2v_inst2|b2v_inst18|o[2]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst18|Mux7~0_combout\,
	datab => \b2v_inst2|b2v_inst10|q\(2),
	datac => \b2v_inst2|b2v_inst18|o[2]~31_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst18|o[2]~32_combout\);

-- Location: LCCOMB_X54_Y11_N2
\b2v_inst2|b2v_inst6|q[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst6|q[2]~6_combout\ = (\b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst2|b2v_inst21|o[2]~41_combout\ & ((\b2v_inst2|b2v_inst18|o[2]~32_combout\))) # (!\b2v_inst2|b2v_inst21|o[2]~41_combout\ & (\b2v_inst2|b2v_inst18|o[2]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datab => \b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datac => \b2v_inst2|b2v_inst18|o[2]~34_combout\,
	datad => \b2v_inst2|b2v_inst18|o[2]~32_combout\,
	combout => \b2v_inst2|b2v_inst6|q[2]~6_combout\);

-- Location: LCCOMB_X54_Y11_N22
\b2v_inst2|b2v_inst18|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|Mux7~1_combout\ = \b2v_inst2|b2v_inst10|q\(0) $ (\b2v_inst2|b2v_inst10|q\(3) $ (\b2v_inst2|b2v_inst10|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst10|q\(0),
	datac => \b2v_inst2|b2v_inst10|q\(3),
	datad => \b2v_inst2|b2v_inst10|q\(1),
	combout => \b2v_inst2|b2v_inst18|Mux7~1_combout\);

-- Location: LCCOMB_X52_Y11_N14
\b2v_inst2|b2v_inst18|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|Mux9~0_combout\ = \b2v_inst2|b2v_inst10|q\(2) $ (\b2v_inst2|b2v_inst10|q\(0) $ (\b2v_inst2|b2v_inst10|q\(3) $ (\b2v_inst2|b2v_inst10|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst10|q\(2),
	datab => \b2v_inst2|b2v_inst10|q\(0),
	datac => \b2v_inst2|b2v_inst10|q\(3),
	datad => \b2v_inst2|b2v_inst10|q\(1),
	combout => \b2v_inst2|b2v_inst18|Mux9~0_combout\);

-- Location: LCCOMB_X56_Y10_N30
\b2v_inst2|b2v_inst18|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|Mux5~0_combout\ = \b2v_inst2|b2v_inst10|q\(0) $ (\b2v_inst2|b2v_inst10|q\(2) $ (\b2v_inst2|b2v_inst10|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst10|q\(0),
	datac => \b2v_inst2|b2v_inst10|q\(2),
	datad => \b2v_inst2|b2v_inst10|q\(3),
	combout => \b2v_inst2|b2v_inst18|Mux5~0_combout\);

-- Location: LCCOMB_X54_Y11_N14
\b2v_inst2|b2v_inst18|o[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|o[2]~27_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst2|b2v_inst18|Mux5~0_combout\) # (\b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst2|b2v_inst18|Mux4~0_combout\ 
-- & ((!\b2v_inst2|b2v_inst21|o[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst18|Mux4~0_combout\,
	datab => \b2v_inst2|b2v_inst18|Mux5~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst18|o[2]~27_combout\);

-- Location: LCCOMB_X54_Y11_N4
\b2v_inst2|b2v_inst18|o[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|o[2]~28_combout\ = (\b2v_inst2|b2v_inst18|o[2]~27_combout\ & (((\b2v_inst2|b2v_inst18|Mux9~0_combout\) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst2|b2v_inst18|o[2]~27_combout\ & (\b2v_inst2|b2v_inst18|Mux7~1_combout\ 
-- & ((\b2v_inst2|b2v_inst21|o[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst18|Mux7~1_combout\,
	datab => \b2v_inst2|b2v_inst18|Mux9~0_combout\,
	datac => \b2v_inst2|b2v_inst18|o[2]~27_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst18|o[2]~28_combout\);

-- Location: LCCOMB_X54_Y11_N10
\b2v_inst2|b2v_inst18|o[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|o[2]~29_combout\ = (\b2v_inst2|b2v_inst18|o[2]~2_combout\ & (((\b2v_inst2|b2v_inst18|o[2]~28_combout\) # (!\b2v_inst2|b2v_inst18|o[2]~1_combout\)))) # (!\b2v_inst2|b2v_inst18|o[2]~2_combout\ & (\b2v_inst2|b2v_inst10|q\(2) & 
-- ((\b2v_inst2|b2v_inst18|o[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst18|o[2]~2_combout\,
	datab => \b2v_inst2|b2v_inst10|q\(2),
	datac => \b2v_inst2|b2v_inst18|o[2]~28_combout\,
	datad => \b2v_inst2|b2v_inst18|o[2]~1_combout\,
	combout => \b2v_inst2|b2v_inst18|o[2]~29_combout\);

-- Location: LCCOMB_X54_Y11_N12
\b2v_inst2|b2v_inst18|o[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|o[2]~30_combout\ = (\b2v_inst2|b2v_inst18|o[2]~0_combout\ & (\b2v_inst2|b2v_inst10|q\(1) $ (((\b2v_inst2|b2v_inst10|q\(2) & \b2v_inst2|b2v_inst18|o[2]~29_combout\))))) # (!\b2v_inst2|b2v_inst18|o[2]~0_combout\ & 
-- (((\b2v_inst2|b2v_inst18|o[2]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst10|q\(2),
	datab => \b2v_inst2|b2v_inst10|q\(1),
	datac => \b2v_inst2|b2v_inst18|o[2]~0_combout\,
	datad => \b2v_inst2|b2v_inst18|o[2]~29_combout\,
	combout => \b2v_inst2|b2v_inst18|o[2]~30_combout\);

-- Location: LCCOMB_X54_Y11_N20
\b2v_inst2|b2v_inst6|q[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst6|q[2]~7_combout\ = \b2v_inst2|b2v_inst6|q\(2) $ (((\b2v_inst2|b2v_inst6|q[2]~6_combout\) # ((\b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst2|b2v_inst18|o[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datab => \b2v_inst2|b2v_inst6|q[2]~6_combout\,
	datac => \b2v_inst2|b2v_inst6|q\(2),
	datad => \b2v_inst2|b2v_inst18|o[2]~30_combout\,
	combout => \b2v_inst2|b2v_inst6|q[2]~7_combout\);

-- Location: FF_X54_Y11_N21
\b2v_inst2|b2v_inst6|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst6|q[2]~7_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst6|q\(2));

-- Location: LCCOMB_X49_Y11_N2
\b2v_inst2|b2v_inst14|o[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[2]~26_combout\ = (\b2v_inst2|b2v_inst6|q\(1) & (\b2v_inst2|b2v_inst6|q\(0))) # (!\b2v_inst2|b2v_inst6|q\(1) & (\b2v_inst2|b2v_inst2|q\(0) $ (((!\b2v_inst2|b2v_inst6|q\(0) & \b2v_inst2|b2v_inst2|q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst6|q\(0),
	datab => \b2v_inst2|b2v_inst2|q\(0),
	datac => \b2v_inst2|b2v_inst2|q\(2),
	datad => \b2v_inst2|b2v_inst6|q\(1),
	combout => \b2v_inst2|b2v_inst14|o[2]~26_combout\);

-- Location: LCCOMB_X49_Y11_N8
\b2v_inst2|b2v_inst14|o[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[2]~27_combout\ = (\b2v_inst2|b2v_inst6|q\(1) & (\b2v_inst2|b2v_inst14|Mux8~0_combout\ $ (((\b2v_inst2|b2v_inst2|q\(2) & !\b2v_inst2|b2v_inst14|o[2]~26_combout\))))) # (!\b2v_inst2|b2v_inst6|q\(1) & 
-- (((\b2v_inst2|b2v_inst14|o[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst2|q\(2),
	datab => \b2v_inst2|b2v_inst14|o[2]~26_combout\,
	datac => \b2v_inst2|b2v_inst14|Mux8~0_combout\,
	datad => \b2v_inst2|b2v_inst6|q\(1),
	combout => \b2v_inst2|b2v_inst14|o[2]~27_combout\);

-- Location: LCCOMB_X49_Y11_N10
\b2v_inst2|b2v_inst14|o[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[2]~28_combout\ = (\b2v_inst2|b2v_inst6|q\(0) & (((\b2v_inst2|b2v_inst6|q\(1))))) # (!\b2v_inst2|b2v_inst6|q\(0) & ((\b2v_inst2|b2v_inst6|q\(1) & (\b2v_inst2|b2v_inst14|Mux3~0_combout\)) # (!\b2v_inst2|b2v_inst6|q\(1) & 
-- ((\b2v_inst2|b2v_inst14|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst6|q\(0),
	datab => \b2v_inst2|b2v_inst14|Mux3~0_combout\,
	datac => \b2v_inst2|b2v_inst14|Mux0~0_combout\,
	datad => \b2v_inst2|b2v_inst6|q\(1),
	combout => \b2v_inst2|b2v_inst14|o[2]~28_combout\);

-- Location: LCCOMB_X49_Y11_N24
\b2v_inst2|b2v_inst14|o[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[2]~29_combout\ = (\b2v_inst2|b2v_inst6|q\(0) & (\b2v_inst2|b2v_inst2|q\(3) $ (((\b2v_inst2|b2v_inst2|q\(1) & \b2v_inst2|b2v_inst14|o[2]~28_combout\))))) # (!\b2v_inst2|b2v_inst6|q\(0) & (((\b2v_inst2|b2v_inst14|o[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst2|q\(1),
	datab => \b2v_inst2|b2v_inst2|q\(3),
	datac => \b2v_inst2|b2v_inst6|q\(0),
	datad => \b2v_inst2|b2v_inst14|o[2]~28_combout\,
	combout => \b2v_inst2|b2v_inst14|o[2]~29_combout\);

-- Location: LCCOMB_X49_Y11_N18
\b2v_inst2|b2v_inst14|o[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[2]~30_combout\ = (\b2v_inst2|b2v_inst6|q\(3) & ((\b2v_inst2|b2v_inst6|q\(2) & (\b2v_inst2|b2v_inst14|o[2]~27_combout\)) # (!\b2v_inst2|b2v_inst6|q\(2) & ((\b2v_inst2|b2v_inst14|o[2]~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst6|q\(2),
	datab => \b2v_inst2|b2v_inst14|o[2]~27_combout\,
	datac => \b2v_inst2|b2v_inst6|q\(3),
	datad => \b2v_inst2|b2v_inst14|o[2]~29_combout\,
	combout => \b2v_inst2|b2v_inst14|o[2]~30_combout\);

-- Location: LCCOMB_X50_Y11_N2
\b2v_inst2|b2v_inst14|o[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[2]~21_combout\ = (\b2v_inst2|b2v_inst6|q\(0) & (((\b2v_inst2|b2v_inst6|q\(1))))) # (!\b2v_inst2|b2v_inst6|q\(0) & ((\b2v_inst2|b2v_inst6|q\(1) & ((\b2v_inst2|b2v_inst14|Mux7~0_combout\))) # (!\b2v_inst2|b2v_inst6|q\(1) & 
-- (\b2v_inst2|b2v_inst14|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst6|q\(0),
	datab => \b2v_inst2|b2v_inst14|Mux4~0_combout\,
	datac => \b2v_inst2|b2v_inst14|Mux7~0_combout\,
	datad => \b2v_inst2|b2v_inst6|q\(1),
	combout => \b2v_inst2|b2v_inst14|o[2]~21_combout\);

-- Location: LCCOMB_X50_Y11_N24
\b2v_inst2|b2v_inst14|o[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[2]~22_combout\ = (\b2v_inst2|b2v_inst6|q\(0) & ((\b2v_inst2|b2v_inst14|o[2]~21_combout\ & ((\b2v_inst2|b2v_inst14|Mux9~0_combout\))) # (!\b2v_inst2|b2v_inst14|o[2]~21_combout\ & (\b2v_inst2|b2v_inst14|Mux5~0_combout\)))) # 
-- (!\b2v_inst2|b2v_inst6|q\(0) & (((\b2v_inst2|b2v_inst14|o[2]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst14|Mux5~0_combout\,
	datab => \b2v_inst2|b2v_inst6|q\(0),
	datac => \b2v_inst2|b2v_inst14|Mux9~0_combout\,
	datad => \b2v_inst2|b2v_inst14|o[2]~21_combout\,
	combout => \b2v_inst2|b2v_inst14|o[2]~22_combout\);

-- Location: LCCOMB_X51_Y11_N6
\b2v_inst2|b2v_inst14|o[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[2]~23_combout\ = (\b2v_inst2|b2v_inst14|o[3]~3_combout\ & (((\b2v_inst2|b2v_inst14|o[2]~22_combout\)) # (!\b2v_inst2|b2v_inst14|o[3]~2_combout\))) # (!\b2v_inst2|b2v_inst14|o[3]~3_combout\ & (\b2v_inst2|b2v_inst14|o[3]~2_combout\ & 
-- (\b2v_inst2|b2v_inst2|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst14|o[3]~3_combout\,
	datab => \b2v_inst2|b2v_inst14|o[3]~2_combout\,
	datac => \b2v_inst2|b2v_inst2|q\(2),
	datad => \b2v_inst2|b2v_inst14|o[2]~22_combout\,
	combout => \b2v_inst2|b2v_inst14|o[2]~23_combout\);

-- Location: LCCOMB_X51_Y11_N24
\b2v_inst2|b2v_inst14|o[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[2]~24_combout\ = (\b2v_inst2|b2v_inst14|o[3]~5_combout\ & (\b2v_inst2|b2v_inst2|q\(1) $ (((\b2v_inst2|b2v_inst2|q\(2) & \b2v_inst2|b2v_inst14|o[2]~23_combout\))))) # (!\b2v_inst2|b2v_inst14|o[3]~5_combout\ & 
-- (((\b2v_inst2|b2v_inst14|o[2]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst2|q\(2),
	datab => \b2v_inst2|b2v_inst2|q\(1),
	datac => \b2v_inst2|b2v_inst14|o[3]~5_combout\,
	datad => \b2v_inst2|b2v_inst14|o[2]~23_combout\,
	combout => \b2v_inst2|b2v_inst14|o[2]~24_combout\);

-- Location: LCCOMB_X51_Y11_N2
\b2v_inst2|b2v_inst14|o[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[2]~25_combout\ = (!\b2v_inst2|b2v_inst6|q\(3) & \b2v_inst2|b2v_inst14|o[2]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|b2v_inst6|q\(3),
	datad => \b2v_inst2|b2v_inst14|o[2]~24_combout\,
	combout => \b2v_inst2|b2v_inst14|o[2]~25_combout\);

-- Location: LCCOMB_X51_Y9_N12
\b2v_inst2|b2v_inst13|o[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[2]~23_combout\ = (\b2v_inst2|b2v_inst5|q\(1) & (\b2v_inst2|b2v_inst5|q\(0))) # (!\b2v_inst2|b2v_inst5|q\(1) & (\b2v_inst2|b2v_inst1|q\(0) $ (((!\b2v_inst2|b2v_inst5|q\(0) & \b2v_inst2|b2v_inst1|q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst5|q\(0),
	datab => \b2v_inst2|b2v_inst5|q\(1),
	datac => \b2v_inst2|b2v_inst1|q\(0),
	datad => \b2v_inst2|b2v_inst1|q\(2),
	combout => \b2v_inst2|b2v_inst13|o[2]~23_combout\);

-- Location: LCCOMB_X51_Y9_N26
\b2v_inst2|b2v_inst13|o[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[2]~24_combout\ = (\b2v_inst2|b2v_inst5|q\(1) & (\b2v_inst2|b2v_inst13|Mux8~0_combout\ $ (((!\b2v_inst2|b2v_inst13|o[2]~23_combout\ & \b2v_inst2|b2v_inst1|q\(2)))))) # (!\b2v_inst2|b2v_inst5|q\(1) & 
-- (\b2v_inst2|b2v_inst13|o[2]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst13|o[2]~23_combout\,
	datab => \b2v_inst2|b2v_inst5|q\(1),
	datac => \b2v_inst2|b2v_inst1|q\(2),
	datad => \b2v_inst2|b2v_inst13|Mux8~0_combout\,
	combout => \b2v_inst2|b2v_inst13|o[2]~24_combout\);

-- Location: LCCOMB_X51_Y9_N28
\b2v_inst2|b2v_inst13|o[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[2]~25_combout\ = (\b2v_inst2|b2v_inst5|q\(1) & ((\b2v_inst2|b2v_inst13|Mux3~0_combout\) # ((\b2v_inst2|b2v_inst5|q\(0))))) # (!\b2v_inst2|b2v_inst5|q\(1) & (((!\b2v_inst2|b2v_inst5|q\(0) & \b2v_inst2|b2v_inst13|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst13|Mux3~0_combout\,
	datab => \b2v_inst2|b2v_inst5|q\(1),
	datac => \b2v_inst2|b2v_inst5|q\(0),
	datad => \b2v_inst2|b2v_inst13|Mux0~0_combout\,
	combout => \b2v_inst2|b2v_inst13|o[2]~25_combout\);

-- Location: LCCOMB_X51_Y9_N18
\b2v_inst2|b2v_inst13|o[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[2]~26_combout\ = (\b2v_inst2|b2v_inst5|q\(0) & (\b2v_inst2|b2v_inst1|q\(3) $ (((\b2v_inst2|b2v_inst1|q\(1) & \b2v_inst2|b2v_inst13|o[2]~25_combout\))))) # (!\b2v_inst2|b2v_inst5|q\(0) & (((\b2v_inst2|b2v_inst13|o[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst1|q\(1),
	datab => \b2v_inst2|b2v_inst1|q\(3),
	datac => \b2v_inst2|b2v_inst5|q\(0),
	datad => \b2v_inst2|b2v_inst13|o[2]~25_combout\,
	combout => \b2v_inst2|b2v_inst13|o[2]~26_combout\);

-- Location: LCCOMB_X51_Y9_N20
\b2v_inst2|b2v_inst13|o[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[2]~27_combout\ = (\b2v_inst2|b2v_inst5|q\(3) & ((\b2v_inst2|b2v_inst5|q\(2) & (\b2v_inst2|b2v_inst13|o[2]~24_combout\)) # (!\b2v_inst2|b2v_inst5|q\(2) & ((\b2v_inst2|b2v_inst13|o[2]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst5|q\(2),
	datab => \b2v_inst2|b2v_inst5|q\(3),
	datac => \b2v_inst2|b2v_inst13|o[2]~24_combout\,
	datad => \b2v_inst2|b2v_inst13|o[2]~26_combout\,
	combout => \b2v_inst2|b2v_inst13|o[2]~27_combout\);

-- Location: LCCOMB_X51_Y7_N6
\b2v_inst2|b2v_inst13|o[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[2]~28_combout\ = (\b2v_inst2|b2v_inst5|q\(0) & (\b2v_inst2|b2v_inst5|q\(1))) # (!\b2v_inst2|b2v_inst5|q\(0) & ((\b2v_inst2|b2v_inst5|q\(1) & (\b2v_inst2|b2v_inst13|Mux7~0_combout\)) # (!\b2v_inst2|b2v_inst5|q\(1) & 
-- ((\b2v_inst2|b2v_inst13|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst5|q\(0),
	datab => \b2v_inst2|b2v_inst5|q\(1),
	datac => \b2v_inst2|b2v_inst13|Mux7~0_combout\,
	datad => \b2v_inst2|b2v_inst13|Mux4~0_combout\,
	combout => \b2v_inst2|b2v_inst13|o[2]~28_combout\);

-- Location: LCCOMB_X51_Y7_N16
\b2v_inst2|b2v_inst13|o[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[2]~29_combout\ = (\b2v_inst2|b2v_inst5|q\(0) & ((\b2v_inst2|b2v_inst13|o[2]~28_combout\ & (\b2v_inst2|b2v_inst13|Mux9~0_combout\)) # (!\b2v_inst2|b2v_inst13|o[2]~28_combout\ & ((\b2v_inst2|b2v_inst13|Mux5~0_combout\))))) # 
-- (!\b2v_inst2|b2v_inst5|q\(0) & (((\b2v_inst2|b2v_inst13|o[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst13|Mux9~0_combout\,
	datab => \b2v_inst2|b2v_inst5|q\(0),
	datac => \b2v_inst2|b2v_inst13|Mux5~0_combout\,
	datad => \b2v_inst2|b2v_inst13|o[2]~28_combout\,
	combout => \b2v_inst2|b2v_inst13|o[2]~29_combout\);

-- Location: LCCOMB_X51_Y7_N10
\b2v_inst2|b2v_inst13|o[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[2]~30_combout\ = (\b2v_inst2|b2v_inst13|o[3]~8_combout\ & (((\b2v_inst2|b2v_inst13|o[2]~29_combout\) # (!\b2v_inst2|b2v_inst13|o[3]~7_combout\)))) # (!\b2v_inst2|b2v_inst13|o[3]~8_combout\ & (\b2v_inst2|b2v_inst1|q\(2) & 
-- (\b2v_inst2|b2v_inst13|o[3]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst1|q\(2),
	datab => \b2v_inst2|b2v_inst13|o[3]~8_combout\,
	datac => \b2v_inst2|b2v_inst13|o[3]~7_combout\,
	datad => \b2v_inst2|b2v_inst13|o[2]~29_combout\,
	combout => \b2v_inst2|b2v_inst13|o[2]~30_combout\);

-- Location: LCCOMB_X51_Y7_N4
\b2v_inst2|b2v_inst13|o[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[2]~31_combout\ = (\b2v_inst2|b2v_inst13|o[3]~10_combout\ & (\b2v_inst2|b2v_inst1|q\(1) $ (((\b2v_inst2|b2v_inst1|q\(2) & \b2v_inst2|b2v_inst13|o[2]~30_combout\))))) # (!\b2v_inst2|b2v_inst13|o[3]~10_combout\ & 
-- (((\b2v_inst2|b2v_inst13|o[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst1|q\(2),
	datab => \b2v_inst2|b2v_inst1|q\(1),
	datac => \b2v_inst2|b2v_inst13|o[3]~10_combout\,
	datad => \b2v_inst2|b2v_inst13|o[2]~30_combout\,
	combout => \b2v_inst2|b2v_inst13|o[2]~31_combout\);

-- Location: LCCOMB_X51_Y11_N12
\b2v_inst2|b2v_inst13|o[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[2]~32_combout\ = (\b2v_inst2|b2v_inst13|o[2]~27_combout\) # ((!\b2v_inst2|b2v_inst5|q\(3) & \b2v_inst2|b2v_inst13|o[2]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst5|q\(3),
	datac => \b2v_inst2|b2v_inst13|o[2]~27_combout\,
	datad => \b2v_inst2|b2v_inst13|o[2]~31_combout\,
	combout => \b2v_inst2|b2v_inst13|o[2]~32_combout\);

-- Location: LCCOMB_X51_Y11_N10
\b2v_inst2|b2v_inst37|c[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst37|c[2]~7_combout\ = \b2v_inst2|b2v_inst|q\(2) $ (\b2v_inst2|b2v_inst13|o[2]~32_combout\ $ (((\b2v_inst2|b2v_inst14|o[2]~30_combout\) # (\b2v_inst2|b2v_inst14|o[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst14|o[2]~30_combout\,
	datab => \b2v_inst2|b2v_inst14|o[2]~25_combout\,
	datac => \b2v_inst2|b2v_inst|q\(2),
	datad => \b2v_inst2|b2v_inst13|o[2]~32_combout\,
	combout => \b2v_inst2|b2v_inst37|c[2]~7_combout\);

-- Location: LCCOMB_X52_Y10_N18
\b2v_inst2|b2v_inst21|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|Mux5~1_combout\ = \b2v_inst2|b2v_inst37|c[2]~6_combout\ $ (\b2v_inst2|b2v_inst37|c[2]~7_combout\ $ (\b2v_inst2|b2v_inst37|c[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst37|c[2]~6_combout\,
	datac => \b2v_inst2|b2v_inst37|c[2]~7_combout\,
	datad => \b2v_inst2|b2v_inst37|c[0]~2_combout\,
	combout => \b2v_inst2|b2v_inst21|Mux5~1_combout\);

-- Location: LCCOMB_X52_Y10_N28
\b2v_inst2|b2v_inst21|o[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[0]~17_combout\ = (\b2v_inst2|b2v_inst32|o[0]~1_combout\ & (((\b2v_inst2|b2v_inst32|o[1]~2_combout\)))) # (!\b2v_inst2|b2v_inst32|o[0]~1_combout\ & (\b2v_inst2|b2v_inst37|c[2]~8_combout\ $ (((\b2v_inst2|b2v_inst37|c[3]~11_combout\ & 
-- \b2v_inst2|b2v_inst32|o[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datab => \b2v_inst2|b2v_inst37|c[3]~11_combout\,
	datac => \b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datad => \b2v_inst2|b2v_inst37|c[2]~8_combout\,
	combout => \b2v_inst2|b2v_inst21|o[0]~17_combout\);

-- Location: LCCOMB_X52_Y10_N12
\b2v_inst2|b2v_inst21|o[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[0]~18_combout\ = (\b2v_inst2|b2v_inst32|o[0]~1_combout\ & (\b2v_inst2|b2v_inst21|Mux5~1_combout\ $ (((\b2v_inst2|b2v_inst37|c[3]~11_combout\ & \b2v_inst2|b2v_inst21|o[0]~17_combout\))))) # (!\b2v_inst2|b2v_inst32|o[0]~1_combout\ & 
-- (((\b2v_inst2|b2v_inst21|o[0]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datab => \b2v_inst2|b2v_inst21|Mux5~1_combout\,
	datac => \b2v_inst2|b2v_inst37|c[3]~11_combout\,
	datad => \b2v_inst2|b2v_inst21|o[0]~17_combout\,
	combout => \b2v_inst2|b2v_inst21|o[0]~18_combout\);

-- Location: LCCOMB_X52_Y10_N6
\b2v_inst2|b2v_inst21|o[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[0]~19_combout\ = (\b2v_inst2|b2v_inst21|o[0]~2_combout\ & ((\b2v_inst2|b2v_inst21|o[0]~3_combout\ & ((\b2v_inst2|b2v_inst21|o[0]~18_combout\))) # (!\b2v_inst2|b2v_inst21|o[0]~3_combout\ & (\b2v_inst2|b2v_inst37|c[0]~2_combout\)))) 
-- # (!\b2v_inst2|b2v_inst21|o[0]~2_combout\ & (((\b2v_inst2|b2v_inst21|o[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst37|c[0]~2_combout\,
	datab => \b2v_inst2|b2v_inst21|o[0]~2_combout\,
	datac => \b2v_inst2|b2v_inst21|o[0]~3_combout\,
	datad => \b2v_inst2|b2v_inst21|o[0]~18_combout\,
	combout => \b2v_inst2|b2v_inst21|o[0]~19_combout\);

-- Location: LCCOMB_X52_Y10_N8
\b2v_inst2|b2v_inst21|o[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[0]~20_combout\ = (\b2v_inst2|b2v_inst21|o[0]~5_combout\ & (\b2v_inst2|b2v_inst37|c[3]~11_combout\ $ (((\b2v_inst2|b2v_inst37|c[0]~2_combout\ & \b2v_inst2|b2v_inst21|o[0]~19_combout\))))) # (!\b2v_inst2|b2v_inst21|o[0]~5_combout\ & 
-- (((\b2v_inst2|b2v_inst21|o[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst37|c[0]~2_combout\,
	datab => \b2v_inst2|b2v_inst21|o[0]~5_combout\,
	datac => \b2v_inst2|b2v_inst37|c[3]~11_combout\,
	datad => \b2v_inst2|b2v_inst21|o[0]~19_combout\,
	combout => \b2v_inst2|b2v_inst21|o[0]~20_combout\);

-- Location: LCCOMB_X51_Y10_N26
\b2v_inst2|b2v_inst21|o[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[0]~14_combout\ = (\b2v_inst2|b2v_inst32|o[0]~1_combout\ & (\b2v_inst2|b2v_inst32|o[1]~2_combout\)) # (!\b2v_inst2|b2v_inst32|o[0]~1_combout\ & (\b2v_inst2|b2v_inst37|c[1]~5_combout\ $ (((\b2v_inst2|b2v_inst32|o[1]~2_combout\ & 
-- \b2v_inst2|b2v_inst37|c[3]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datab => \b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datac => \b2v_inst2|b2v_inst37|c[3]~11_combout\,
	datad => \b2v_inst2|b2v_inst37|c[1]~5_combout\,
	combout => \b2v_inst2|b2v_inst21|o[0]~14_combout\);

-- Location: LCCOMB_X51_Y10_N16
\b2v_inst2|b2v_inst21|o[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[0]~15_combout\ = (\b2v_inst2|b2v_inst32|o[0]~1_combout\ & (\b2v_inst2|b2v_inst21|Mux7~2_combout\ $ (((\b2v_inst2|b2v_inst21|o[0]~14_combout\ & \b2v_inst2|b2v_inst37|c[3]~11_combout\))))) # (!\b2v_inst2|b2v_inst32|o[0]~1_combout\ & 
-- (\b2v_inst2|b2v_inst21|o[0]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst21|o[0]~14_combout\,
	datab => \b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datac => \b2v_inst2|b2v_inst37|c[3]~11_combout\,
	datad => \b2v_inst2|b2v_inst21|Mux7~2_combout\,
	combout => \b2v_inst2|b2v_inst21|o[0]~15_combout\);

-- Location: LCCOMB_X52_Y10_N10
\b2v_inst2|b2v_inst21|o[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[0]~12_combout\ = (\b2v_inst2|b2v_inst32|o[0]~1_combout\ & ((\b2v_inst2|b2v_inst32|o[1]~2_combout\) # ((\b2v_inst2|b2v_inst21|Mux10~2_combout\)))) # (!\b2v_inst2|b2v_inst32|o[0]~1_combout\ & (!\b2v_inst2|b2v_inst32|o[1]~2_combout\ & 
-- ((\b2v_inst2|b2v_inst21|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datab => \b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst2|b2v_inst21|Mux10~2_combout\,
	datad => \b2v_inst2|b2v_inst21|Mux2~2_combout\,
	combout => \b2v_inst2|b2v_inst21|o[0]~12_combout\);

-- Location: LCCOMB_X52_Y10_N0
\b2v_inst2|b2v_inst21|o[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[0]~13_combout\ = (\b2v_inst2|b2v_inst32|o[1]~2_combout\ & ((\b2v_inst2|b2v_inst21|o[0]~12_combout\ & ((\b2v_inst2|b2v_inst21|Mux9~0_combout\))) # (!\b2v_inst2|b2v_inst21|o[0]~12_combout\ & (\b2v_inst2|b2v_inst21|Mux3~0_combout\)))) 
-- # (!\b2v_inst2|b2v_inst32|o[1]~2_combout\ & (((\b2v_inst2|b2v_inst21|o[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst21|Mux3~0_combout\,
	datab => \b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst2|b2v_inst21|Mux9~0_combout\,
	datad => \b2v_inst2|b2v_inst21|o[0]~12_combout\,
	combout => \b2v_inst2|b2v_inst21|o[0]~13_combout\);

-- Location: LCCOMB_X52_Y10_N2
\b2v_inst2|b2v_inst21|o[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[0]~16_combout\ = (\b2v_inst2|b2v_inst32|o[3]~0_combout\ & ((\b2v_inst2|b2v_inst32|o[2]~3_combout\ & ((\b2v_inst2|b2v_inst21|o[0]~13_combout\))) # (!\b2v_inst2|b2v_inst32|o[2]~3_combout\ & (\b2v_inst2|b2v_inst21|o[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst32|o[3]~0_combout\,
	datab => \b2v_inst2|b2v_inst32|o[2]~3_combout\,
	datac => \b2v_inst2|b2v_inst21|o[0]~15_combout\,
	datad => \b2v_inst2|b2v_inst21|o[0]~13_combout\,
	combout => \b2v_inst2|b2v_inst21|o[0]~16_combout\);

-- Location: LCCOMB_X52_Y10_N14
\b2v_inst2|b2v_inst21|o[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[0]~21_combout\ = (\b2v_inst2|b2v_inst21|o[0]~16_combout\) # ((!\b2v_inst2|b2v_inst32|o[3]~0_combout\ & \b2v_inst2|b2v_inst21|o[0]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst32|o[3]~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[0]~20_combout\,
	datad => \b2v_inst2|b2v_inst21|o[0]~16_combout\,
	combout => \b2v_inst2|b2v_inst21|o[0]~21_combout\);

-- Location: LCCOMB_X56_Y10_N2
\b2v_inst2|b2v_inst18|o[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|o[3]~9_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst2|b2v_inst18|Mux5~0_combout\) # ((\b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst2|b2v_inst18|Mux4~0_combout\ 
-- & !\b2v_inst2|b2v_inst21|o[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst18|Mux5~0_combout\,
	datab => \b2v_inst2|b2v_inst18|Mux4~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst2|b2v_inst18|o[3]~9_combout\);

-- Location: LCCOMB_X56_Y10_N8
\b2v_inst2|b2v_inst18|o[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|o[3]~10_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst2|b2v_inst10|q\(0) $ (((\b2v_inst2|b2v_inst10|q\(2) & \b2v_inst2|b2v_inst18|o[3]~9_combout\))))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & 
-- (((\b2v_inst2|b2v_inst18|o[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst10|q\(0),
	datab => \b2v_inst2|b2v_inst10|q\(2),
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst18|o[3]~9_combout\,
	combout => \b2v_inst2|b2v_inst18|o[3]~10_combout\);

-- Location: LCCOMB_X56_Y10_N26
\b2v_inst2|b2v_inst18|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|Mux10~0_combout\ = \b2v_inst2|b2v_inst10|q\(0) $ (\b2v_inst2|b2v_inst10|q\(2) $ (\b2v_inst2|b2v_inst10|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst10|q\(0),
	datac => \b2v_inst2|b2v_inst10|q\(2),
	datad => \b2v_inst2|b2v_inst10|q\(1),
	combout => \b2v_inst2|b2v_inst18|Mux10~0_combout\);

-- Location: LCCOMB_X56_Y10_N12
\b2v_inst2|b2v_inst18|o[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|o[3]~7_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst2|b2v_inst18|Mux7~0_combout\ $ (((\b2v_inst2|b2v_inst10|q\(3) & 
-- !\b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst18|Mux7~0_combout\,
	datab => \b2v_inst2|b2v_inst10|q\(3),
	datac => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst2|b2v_inst18|o[3]~7_combout\);

-- Location: LCCOMB_X56_Y10_N28
\b2v_inst2|b2v_inst18|o[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|o[3]~8_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst2|b2v_inst18|o[3]~7_combout\ & (\b2v_inst2|b2v_inst18|Mux10~0_combout\)) # (!\b2v_inst2|b2v_inst18|o[3]~7_combout\ & ((\b2v_inst2|b2v_inst18|Mux9~0_combout\))))) 
-- # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst2|b2v_inst18|o[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst18|Mux10~0_combout\,
	datab => \b2v_inst2|b2v_inst18|Mux9~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst2|b2v_inst18|o[3]~7_combout\,
	combout => \b2v_inst2|b2v_inst18|o[3]~8_combout\);

-- Location: LCCOMB_X56_Y10_N6
\b2v_inst2|b2v_inst6|q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst6|q[3]~0_combout\ = (\b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst2|b2v_inst21|o[2]~41_combout\ & ((\b2v_inst2|b2v_inst18|o[3]~8_combout\))) # (!\b2v_inst2|b2v_inst21|o[2]~41_combout\ & (\b2v_inst2|b2v_inst18|o[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datab => \b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datac => \b2v_inst2|b2v_inst18|o[3]~10_combout\,
	datad => \b2v_inst2|b2v_inst18|o[3]~8_combout\,
	combout => \b2v_inst2|b2v_inst6|q[3]~0_combout\);

-- Location: LCCOMB_X56_Y10_N14
\b2v_inst2|b2v_inst18|o[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|o[3]~3_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst2|b2v_inst10|q\(1) $ (((\b2v_inst2|b2v_inst10|q\(3) & 
-- \b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst10|q\(1),
	datab => \b2v_inst2|b2v_inst10|q\(3),
	datac => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst2|b2v_inst18|o[3]~3_combout\);

-- Location: LCCOMB_X56_Y10_N24
\b2v_inst2|b2v_inst18|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|Mux2~0_combout\ = \b2v_inst2|b2v_inst10|q\(2) $ (\b2v_inst2|b2v_inst10|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|b2v_inst10|q\(2),
	datad => \b2v_inst2|b2v_inst10|q\(1),
	combout => \b2v_inst2|b2v_inst18|Mux2~0_combout\);

-- Location: LCCOMB_X56_Y10_N22
\b2v_inst2|b2v_inst18|o[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|o[3]~4_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst2|b2v_inst18|Mux2~0_combout\ $ (((\b2v_inst2|b2v_inst10|q\(3) & \b2v_inst2|b2v_inst18|o[3]~3_combout\))))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- (((\b2v_inst2|b2v_inst18|o[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datab => \b2v_inst2|b2v_inst10|q\(3),
	datac => \b2v_inst2|b2v_inst18|o[3]~3_combout\,
	datad => \b2v_inst2|b2v_inst18|Mux2~0_combout\,
	combout => \b2v_inst2|b2v_inst18|o[3]~4_combout\);

-- Location: LCCOMB_X56_Y10_N20
\b2v_inst2|b2v_inst18|o[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|o[3]~5_combout\ = (\b2v_inst2|b2v_inst18|o[2]~2_combout\ & ((\b2v_inst2|b2v_inst18|o[3]~4_combout\) # ((!\b2v_inst2|b2v_inst18|o[2]~1_combout\)))) # (!\b2v_inst2|b2v_inst18|o[2]~2_combout\ & (((\b2v_inst2|b2v_inst10|q\(3) & 
-- \b2v_inst2|b2v_inst18|o[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst18|o[3]~4_combout\,
	datab => \b2v_inst2|b2v_inst10|q\(3),
	datac => \b2v_inst2|b2v_inst18|o[2]~2_combout\,
	datad => \b2v_inst2|b2v_inst18|o[2]~1_combout\,
	combout => \b2v_inst2|b2v_inst18|o[3]~5_combout\);

-- Location: LCCOMB_X56_Y10_N10
\b2v_inst2|b2v_inst18|o[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|o[3]~6_combout\ = (\b2v_inst2|b2v_inst18|o[2]~0_combout\ & (\b2v_inst2|b2v_inst10|q\(2) $ (((\b2v_inst2|b2v_inst10|q\(3) & \b2v_inst2|b2v_inst18|o[3]~5_combout\))))) # (!\b2v_inst2|b2v_inst18|o[2]~0_combout\ & 
-- (((\b2v_inst2|b2v_inst18|o[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst10|q\(2),
	datab => \b2v_inst2|b2v_inst10|q\(3),
	datac => \b2v_inst2|b2v_inst18|o[2]~0_combout\,
	datad => \b2v_inst2|b2v_inst18|o[3]~5_combout\,
	combout => \b2v_inst2|b2v_inst18|o[3]~6_combout\);

-- Location: LCCOMB_X56_Y10_N0
\b2v_inst2|b2v_inst6|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst6|q[3]~1_combout\ = \b2v_inst2|b2v_inst6|q\(3) $ (((\b2v_inst2|b2v_inst6|q[3]~0_combout\) # ((\b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst2|b2v_inst18|o[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst6|q[3]~0_combout\,
	datab => \b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datac => \b2v_inst2|b2v_inst6|q\(3),
	datad => \b2v_inst2|b2v_inst18|o[3]~6_combout\,
	combout => \b2v_inst2|b2v_inst6|q[3]~1_combout\);

-- Location: FF_X56_Y10_N1
\b2v_inst2|b2v_inst6|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst6|q[3]~1_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst6|q\(3));

-- Location: LCCOMB_X54_Y9_N20
\b2v_inst2|b2v_inst34|O[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst34|O[3]~3_combout\ = (\b2v_inst|Selector0~0_combout\ & ((\b2v_inst2|b2v_inst6|q\(3)))) # (!\b2v_inst|Selector0~0_combout\ & (\b2v_inst2|b2v_inst10|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst10|q\(3),
	datac => \b2v_inst|Selector0~0_combout\,
	datad => \b2v_inst2|b2v_inst6|q\(3),
	combout => \b2v_inst2|b2v_inst34|O[3]~3_combout\);

-- Location: FF_X54_Y9_N21
\b2v_inst2|b2v_inst11|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst34|O[3]~3_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	ena => \b2v_inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst11|q\(3));

-- Location: LCCOMB_X54_Y9_N14
\b2v_inst2|b2v_inst33|O[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst33|O[3]~3_combout\ = (\b2v_inst|Selector0~0_combout\ & (\b2v_inst2|b2v_inst7|q\(3))) # (!\b2v_inst|Selector0~0_combout\ & ((\b2v_inst2|b2v_inst11|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst7|q\(3),
	datac => \b2v_inst|Selector0~0_combout\,
	datad => \b2v_inst2|b2v_inst11|q\(3),
	combout => \b2v_inst2|b2v_inst33|O[3]~3_combout\);

-- Location: FF_X54_Y9_N15
\b2v_inst2|b2v_inst36|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst33|O[3]~3_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	ena => \b2v_inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst36|q\(3));

-- Location: LCCOMB_X54_Y9_N28
\b2v_inst2|b2v_inst22|O[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst22|O[3]~3_combout\ = (\b2v_inst2|b2v_inst36|q\(3) & !\b2v_inst|Selector0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst36|q\(3),
	datac => \b2v_inst|Selector0~0_combout\,
	combout => \b2v_inst2|b2v_inst22|O[3]~3_combout\);

-- Location: FF_X54_Y9_N29
\b2v_inst2|b2v_inst9|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst22|O[3]~3_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	ena => \b2v_inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst9|q\(3));

-- Location: LCCOMB_X54_Y7_N14
\b2v_inst2|b2v_inst17|o[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|o[2]~30_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst2|b2v_inst17|Mux3~0_combout\) # ((\b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- (((\b2v_inst2|b2v_inst17|Mux0~0_combout\ & !\b2v_inst2|b2v_inst21|o[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst17|Mux3~0_combout\,
	datab => \b2v_inst2|b2v_inst17|Mux0~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst2|b2v_inst17|o[2]~30_combout\);

-- Location: LCCOMB_X54_Y7_N8
\b2v_inst2|b2v_inst17|o[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|o[2]~31_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst2|b2v_inst9|q\(3) $ (((\b2v_inst2|b2v_inst9|q\(1) & \b2v_inst2|b2v_inst17|o[2]~30_combout\))))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & 
-- (((\b2v_inst2|b2v_inst17|o[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst9|q\(3),
	datab => \b2v_inst2|b2v_inst9|q\(1),
	datac => \b2v_inst2|b2v_inst17|o[2]~30_combout\,
	datad => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst2|b2v_inst17|o[2]~31_combout\);

-- Location: LCCOMB_X54_Y7_N26
\b2v_inst2|b2v_inst17|o[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|o[2]~28_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst2|b2v_inst9|q\(0) $ (((\b2v_inst2|b2v_inst9|q\(2) & 
-- !\b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst9|q\(2),
	datab => \b2v_inst2|b2v_inst9|q\(0),
	datac => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst2|b2v_inst17|o[2]~28_combout\);

-- Location: LCCOMB_X54_Y7_N28
\b2v_inst2|b2v_inst17|o[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|o[2]~29_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst2|b2v_inst17|Mux7~0_combout\ $ (((\b2v_inst2|b2v_inst9|q\(2) & !\b2v_inst2|b2v_inst17|o[2]~28_combout\))))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- (((\b2v_inst2|b2v_inst17|o[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst9|q\(2),
	datab => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datac => \b2v_inst2|b2v_inst17|o[2]~28_combout\,
	datad => \b2v_inst2|b2v_inst17|Mux7~0_combout\,
	combout => \b2v_inst2|b2v_inst17|o[2]~29_combout\);

-- Location: LCCOMB_X54_Y7_N10
\b2v_inst2|b2v_inst5|q[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst5|q[2]~6_combout\ = (\b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst2|b2v_inst21|o[2]~41_combout\ & ((\b2v_inst2|b2v_inst17|o[2]~29_combout\))) # (!\b2v_inst2|b2v_inst21|o[2]~41_combout\ & (\b2v_inst2|b2v_inst17|o[2]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datab => \b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datac => \b2v_inst2|b2v_inst17|o[2]~31_combout\,
	datad => \b2v_inst2|b2v_inst17|o[2]~29_combout\,
	combout => \b2v_inst2|b2v_inst5|q[2]~6_combout\);

-- Location: LCCOMB_X54_Y7_N18
\b2v_inst2|b2v_inst17|o[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|o[2]~24_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst2|b2v_inst21|o[0]~21_combout\ & 
-- ((\b2v_inst2|b2v_inst17|Mux5~0_combout\))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst2|b2v_inst17|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst17|Mux4~0_combout\,
	datab => \b2v_inst2|b2v_inst17|Mux5~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst2|b2v_inst17|o[2]~24_combout\);

-- Location: LCCOMB_X54_Y7_N4
\b2v_inst2|b2v_inst17|o[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|o[2]~25_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst2|b2v_inst17|o[2]~24_combout\ & (\b2v_inst2|b2v_inst17|Mux9~0_combout\)) # (!\b2v_inst2|b2v_inst17|o[2]~24_combout\ & 
-- ((\b2v_inst2|b2v_inst17|Mux7~1_combout\))))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst2|b2v_inst17|o[2]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst17|Mux9~0_combout\,
	datab => \b2v_inst2|b2v_inst17|Mux7~1_combout\,
	datac => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst2|b2v_inst17|o[2]~24_combout\,
	combout => \b2v_inst2|b2v_inst17|o[2]~25_combout\);

-- Location: LCCOMB_X54_Y7_N2
\b2v_inst2|b2v_inst17|o[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|o[2]~26_combout\ = (\b2v_inst2|b2v_inst18|o[2]~2_combout\ & (((\b2v_inst2|b2v_inst17|o[2]~25_combout\) # (!\b2v_inst2|b2v_inst18|o[2]~1_combout\)))) # (!\b2v_inst2|b2v_inst18|o[2]~2_combout\ & (\b2v_inst2|b2v_inst9|q\(2) & 
-- ((\b2v_inst2|b2v_inst18|o[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst18|o[2]~2_combout\,
	datab => \b2v_inst2|b2v_inst9|q\(2),
	datac => \b2v_inst2|b2v_inst17|o[2]~25_combout\,
	datad => \b2v_inst2|b2v_inst18|o[2]~1_combout\,
	combout => \b2v_inst2|b2v_inst17|o[2]~26_combout\);

-- Location: LCCOMB_X54_Y7_N20
\b2v_inst2|b2v_inst17|o[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|o[2]~27_combout\ = (\b2v_inst2|b2v_inst18|o[2]~0_combout\ & (\b2v_inst2|b2v_inst9|q\(1) $ (((\b2v_inst2|b2v_inst9|q\(2) & \b2v_inst2|b2v_inst17|o[2]~26_combout\))))) # (!\b2v_inst2|b2v_inst18|o[2]~0_combout\ & 
-- (((\b2v_inst2|b2v_inst17|o[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst9|q\(2),
	datab => \b2v_inst2|b2v_inst18|o[2]~0_combout\,
	datac => \b2v_inst2|b2v_inst9|q\(1),
	datad => \b2v_inst2|b2v_inst17|o[2]~26_combout\,
	combout => \b2v_inst2|b2v_inst17|o[2]~27_combout\);

-- Location: LCCOMB_X54_Y7_N16
\b2v_inst2|b2v_inst5|q[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst5|q[2]~7_combout\ = \b2v_inst2|b2v_inst5|q\(2) $ (((\b2v_inst2|b2v_inst5|q[2]~6_combout\) # ((\b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst2|b2v_inst17|o[2]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst5|q[2]~6_combout\,
	datab => \b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datac => \b2v_inst2|b2v_inst5|q\(2),
	datad => \b2v_inst2|b2v_inst17|o[2]~27_combout\,
	combout => \b2v_inst2|b2v_inst5|q[2]~7_combout\);

-- Location: FF_X54_Y7_N17
\b2v_inst2|b2v_inst5|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst5|q[2]~7_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst5|q\(2));

-- Location: LCCOMB_X52_Y9_N2
\b2v_inst2|b2v_inst35|O[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst35|O[2]~2_combout\ = (\b2v_inst|Selector0~0_combout\ & ((\b2v_inst2|b2v_inst5|q\(2)))) # (!\b2v_inst|Selector0~0_combout\ & (\b2v_inst2|b2v_inst9|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst9|q\(2),
	datac => \b2v_inst2|b2v_inst5|q\(2),
	datad => \b2v_inst|Selector0~0_combout\,
	combout => \b2v_inst2|b2v_inst35|O[2]~2_combout\);

-- Location: FF_X52_Y9_N3
\b2v_inst2|b2v_inst10|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst35|O[2]~2_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	ena => \b2v_inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst10|q\(2));

-- Location: LCCOMB_X52_Y9_N12
\b2v_inst2|b2v_inst34|O[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst34|O[2]~2_combout\ = (\b2v_inst|Selector0~0_combout\ & ((\b2v_inst2|b2v_inst6|q\(2)))) # (!\b2v_inst|Selector0~0_combout\ & (\b2v_inst2|b2v_inst10|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst10|q\(2),
	datac => \b2v_inst2|b2v_inst6|q\(2),
	datad => \b2v_inst|Selector0~0_combout\,
	combout => \b2v_inst2|b2v_inst34|O[2]~2_combout\);

-- Location: FF_X52_Y9_N13
\b2v_inst2|b2v_inst11|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst34|O[2]~2_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	ena => \b2v_inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst11|q\(2));

-- Location: LCCOMB_X53_Y9_N30
\b2v_inst2|b2v_inst19|o[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|o[2]~28_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst2|b2v_inst11|q\(0) $ (((\b2v_inst2|b2v_inst11|q\(2) & 
-- !\b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst11|q\(2),
	datab => \b2v_inst2|b2v_inst11|q\(0),
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst19|o[2]~28_combout\);

-- Location: LCCOMB_X53_Y9_N4
\b2v_inst2|b2v_inst19|o[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|o[2]~29_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst2|b2v_inst19|Mux7~0_combout\ $ (((\b2v_inst2|b2v_inst11|q\(2) & !\b2v_inst2|b2v_inst19|o[2]~28_combout\))))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- (((\b2v_inst2|b2v_inst19|o[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst11|q\(2),
	datab => \b2v_inst2|b2v_inst19|Mux7~0_combout\,
	datac => \b2v_inst2|b2v_inst19|o[2]~28_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst19|o[2]~29_combout\);

-- Location: LCCOMB_X53_Y9_N2
\b2v_inst2|b2v_inst19|o[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|o[2]~30_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- ((\b2v_inst2|b2v_inst19|Mux3~0_combout\))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst2|b2v_inst19|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst19|Mux0~0_combout\,
	datab => \b2v_inst2|b2v_inst19|Mux3~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst19|o[2]~30_combout\);

-- Location: LCCOMB_X53_Y9_N0
\b2v_inst2|b2v_inst19|o[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|o[2]~31_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst2|b2v_inst11|q\(3) $ (((\b2v_inst2|b2v_inst11|q\(1) & \b2v_inst2|b2v_inst19|o[2]~30_combout\))))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & 
-- (((\b2v_inst2|b2v_inst19|o[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst11|q\(1),
	datab => \b2v_inst2|b2v_inst11|q\(3),
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst19|o[2]~30_combout\,
	combout => \b2v_inst2|b2v_inst19|o[2]~31_combout\);

-- Location: LCCOMB_X53_Y9_N26
\b2v_inst2|b2v_inst7|q[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst7|q[2]~8_combout\ = (\b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst2|b2v_inst21|o[2]~41_combout\ & (\b2v_inst2|b2v_inst19|o[2]~29_combout\)) # (!\b2v_inst2|b2v_inst21|o[2]~41_combout\ & ((\b2v_inst2|b2v_inst19|o[2]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datab => \b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datac => \b2v_inst2|b2v_inst19|o[2]~29_combout\,
	datad => \b2v_inst2|b2v_inst19|o[2]~31_combout\,
	combout => \b2v_inst2|b2v_inst7|q[2]~8_combout\);

-- Location: LCCOMB_X53_Y9_N6
\b2v_inst2|b2v_inst19|o[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|o[2]~24_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst2|b2v_inst19|Mux5~0_combout\) # ((\b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & 
-- (((\b2v_inst2|b2v_inst19|Mux4~0_combout\ & !\b2v_inst2|b2v_inst21|o[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst19|Mux5~0_combout\,
	datab => \b2v_inst2|b2v_inst19|Mux4~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst19|o[2]~24_combout\);

-- Location: LCCOMB_X53_Y9_N12
\b2v_inst2|b2v_inst19|o[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|o[2]~25_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst2|b2v_inst19|o[2]~24_combout\ & (\b2v_inst2|b2v_inst19|Mux9~0_combout\)) # (!\b2v_inst2|b2v_inst19|o[2]~24_combout\ & 
-- ((\b2v_inst2|b2v_inst19|Mux7~1_combout\))))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst2|b2v_inst19|o[2]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst19|Mux9~0_combout\,
	datab => \b2v_inst2|b2v_inst19|Mux7~1_combout\,
	datac => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst2|b2v_inst19|o[2]~24_combout\,
	combout => \b2v_inst2|b2v_inst19|o[2]~25_combout\);

-- Location: LCCOMB_X53_Y9_N10
\b2v_inst2|b2v_inst19|o[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|o[2]~26_combout\ = (\b2v_inst2|b2v_inst18|o[2]~2_combout\ & (((\b2v_inst2|b2v_inst19|o[2]~25_combout\) # (!\b2v_inst2|b2v_inst18|o[2]~1_combout\)))) # (!\b2v_inst2|b2v_inst18|o[2]~2_combout\ & (\b2v_inst2|b2v_inst11|q\(2) & 
-- (\b2v_inst2|b2v_inst18|o[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst18|o[2]~2_combout\,
	datab => \b2v_inst2|b2v_inst11|q\(2),
	datac => \b2v_inst2|b2v_inst18|o[2]~1_combout\,
	datad => \b2v_inst2|b2v_inst19|o[2]~25_combout\,
	combout => \b2v_inst2|b2v_inst19|o[2]~26_combout\);

-- Location: LCCOMB_X53_Y9_N20
\b2v_inst2|b2v_inst19|o[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|o[2]~27_combout\ = (\b2v_inst2|b2v_inst18|o[2]~0_combout\ & (\b2v_inst2|b2v_inst11|q\(1) $ (((\b2v_inst2|b2v_inst11|q\(2) & \b2v_inst2|b2v_inst19|o[2]~26_combout\))))) # (!\b2v_inst2|b2v_inst18|o[2]~0_combout\ & 
-- (((\b2v_inst2|b2v_inst19|o[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst18|o[2]~0_combout\,
	datab => \b2v_inst2|b2v_inst11|q\(1),
	datac => \b2v_inst2|b2v_inst11|q\(2),
	datad => \b2v_inst2|b2v_inst19|o[2]~26_combout\,
	combout => \b2v_inst2|b2v_inst19|o[2]~27_combout\);

-- Location: LCCOMB_X53_Y9_N8
\b2v_inst2|b2v_inst7|q[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst7|q[2]~9_combout\ = \b2v_inst2|b2v_inst7|q\(2) $ (((\b2v_inst2|b2v_inst7|q[2]~8_combout\) # ((\b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst2|b2v_inst19|o[2]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst7|q[2]~8_combout\,
	datab => \b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datac => \b2v_inst2|b2v_inst7|q\(2),
	datad => \b2v_inst2|b2v_inst19|o[2]~27_combout\,
	combout => \b2v_inst2|b2v_inst7|q[2]~9_combout\);

-- Location: FF_X53_Y9_N9
\b2v_inst2|b2v_inst7|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst7|q[2]~9_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst7|q\(2));

-- Location: LCCOMB_X52_Y9_N10
\b2v_inst2|b2v_inst33|O[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst33|O[2]~2_combout\ = (\b2v_inst|Selector0~0_combout\ & (\b2v_inst2|b2v_inst7|q\(2))) # (!\b2v_inst|Selector0~0_combout\ & ((\b2v_inst2|b2v_inst11|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst7|q\(2),
	datab => \b2v_inst2|b2v_inst11|q\(2),
	datac => \b2v_inst|Selector0~0_combout\,
	combout => \b2v_inst2|b2v_inst33|O[2]~2_combout\);

-- Location: FF_X52_Y9_N11
\b2v_inst2|b2v_inst36|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst33|O[2]~2_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	ena => \b2v_inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst36|q\(2));

-- Location: LCCOMB_X52_Y9_N0
\b2v_inst2|b2v_inst22|O[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst22|O[2]~2_combout\ = (\b2v_inst2|b2v_inst36|q\(2) & !\b2v_inst|Selector0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst36|q\(2),
	datad => \b2v_inst|Selector0~0_combout\,
	combout => \b2v_inst2|b2v_inst22|O[2]~2_combout\);

-- Location: FF_X52_Y9_N1
\b2v_inst2|b2v_inst9|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst22|O[2]~2_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	ena => \b2v_inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst9|q\(2));

-- Location: LCCOMB_X54_Y7_N22
\b2v_inst2|b2v_inst17|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|Mux9~0_combout\ = \b2v_inst2|b2v_inst9|q\(2) $ (\b2v_inst2|b2v_inst9|q\(0) $ (\b2v_inst2|b2v_inst9|q\(3) $ (\b2v_inst2|b2v_inst9|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst9|q\(2),
	datab => \b2v_inst2|b2v_inst9|q\(0),
	datac => \b2v_inst2|b2v_inst9|q\(3),
	datad => \b2v_inst2|b2v_inst9|q\(1),
	combout => \b2v_inst2|b2v_inst17|Mux9~0_combout\);

-- Location: LCCOMB_X51_Y9_N22
\b2v_inst2|b2v_inst17|o[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|o[3]~4_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst2|b2v_inst17|Mux7~0_combout\ $ (((\b2v_inst2|b2v_inst9|q\(3) & 
-- !\b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst9|q\(3),
	datab => \b2v_inst2|b2v_inst17|Mux7~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst17|o[3]~4_combout\);

-- Location: LCCOMB_X51_Y9_N4
\b2v_inst2|b2v_inst17|o[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|o[3]~5_combout\ = (\b2v_inst2|b2v_inst17|o[3]~4_combout\ & (((\b2v_inst2|b2v_inst17|Mux10~0_combout\) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst2|b2v_inst17|o[3]~4_combout\ & (\b2v_inst2|b2v_inst17|Mux9~0_combout\ & 
-- ((\b2v_inst2|b2v_inst21|o[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst17|Mux9~0_combout\,
	datab => \b2v_inst2|b2v_inst17|Mux10~0_combout\,
	datac => \b2v_inst2|b2v_inst17|o[3]~4_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst17|o[3]~5_combout\);

-- Location: LCCOMB_X51_Y9_N6
\b2v_inst2|b2v_inst17|o[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|o[3]~6_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- ((\b2v_inst2|b2v_inst17|Mux5~0_combout\))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst2|b2v_inst17|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst17|Mux4~0_combout\,
	datab => \b2v_inst2|b2v_inst17|Mux5~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst17|o[3]~6_combout\);

-- Location: LCCOMB_X51_Y9_N24
\b2v_inst2|b2v_inst17|o[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|o[3]~7_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst2|b2v_inst9|q\(0) $ (((\b2v_inst2|b2v_inst9|q\(2) & \b2v_inst2|b2v_inst17|o[3]~6_combout\))))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & 
-- (((\b2v_inst2|b2v_inst17|o[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datab => \b2v_inst2|b2v_inst9|q\(2),
	datac => \b2v_inst2|b2v_inst9|q\(0),
	datad => \b2v_inst2|b2v_inst17|o[3]~6_combout\,
	combout => \b2v_inst2|b2v_inst17|o[3]~7_combout\);

-- Location: LCCOMB_X51_Y9_N14
\b2v_inst2|b2v_inst5|q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst5|q[3]~0_combout\ = (\b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst2|b2v_inst21|o[2]~41_combout\ & (\b2v_inst2|b2v_inst17|o[3]~5_combout\)) # (!\b2v_inst2|b2v_inst21|o[2]~41_combout\ & ((\b2v_inst2|b2v_inst17|o[3]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datab => \b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datac => \b2v_inst2|b2v_inst17|o[3]~5_combout\,
	datad => \b2v_inst2|b2v_inst17|o[3]~7_combout\,
	combout => \b2v_inst2|b2v_inst5|q[3]~0_combout\);

-- Location: LCCOMB_X51_Y9_N2
\b2v_inst2|b2v_inst17|o[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|o[3]~0_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst2|b2v_inst9|q\(1) $ (((\b2v_inst2|b2v_inst9|q\(3) & 
-- \b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst9|q\(3),
	datab => \b2v_inst2|b2v_inst9|q\(1),
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst17|o[3]~0_combout\);

-- Location: LCCOMB_X51_Y9_N8
\b2v_inst2|b2v_inst17|o[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|o[3]~1_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst2|b2v_inst17|Mux2~0_combout\ $ (((\b2v_inst2|b2v_inst9|q\(3) & \b2v_inst2|b2v_inst17|o[3]~0_combout\))))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- (((\b2v_inst2|b2v_inst17|o[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst9|q\(3),
	datab => \b2v_inst2|b2v_inst17|Mux2~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst2|b2v_inst17|o[3]~0_combout\,
	combout => \b2v_inst2|b2v_inst17|o[3]~1_combout\);

-- Location: LCCOMB_X51_Y9_N10
\b2v_inst2|b2v_inst17|o[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|o[3]~2_combout\ = (\b2v_inst2|b2v_inst18|o[2]~1_combout\ & ((\b2v_inst2|b2v_inst18|o[2]~2_combout\ & ((\b2v_inst2|b2v_inst17|o[3]~1_combout\))) # (!\b2v_inst2|b2v_inst18|o[2]~2_combout\ & (\b2v_inst2|b2v_inst9|q\(3))))) # 
-- (!\b2v_inst2|b2v_inst18|o[2]~1_combout\ & (((\b2v_inst2|b2v_inst18|o[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst9|q\(3),
	datab => \b2v_inst2|b2v_inst17|o[3]~1_combout\,
	datac => \b2v_inst2|b2v_inst18|o[2]~1_combout\,
	datad => \b2v_inst2|b2v_inst18|o[2]~2_combout\,
	combout => \b2v_inst2|b2v_inst17|o[3]~2_combout\);

-- Location: LCCOMB_X51_Y9_N0
\b2v_inst2|b2v_inst17|o[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst17|o[3]~3_combout\ = (\b2v_inst2|b2v_inst18|o[2]~0_combout\ & (\b2v_inst2|b2v_inst9|q\(2) $ (((\b2v_inst2|b2v_inst9|q\(3) & \b2v_inst2|b2v_inst17|o[3]~2_combout\))))) # (!\b2v_inst2|b2v_inst18|o[2]~0_combout\ & 
-- (((\b2v_inst2|b2v_inst17|o[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst9|q\(3),
	datab => \b2v_inst2|b2v_inst9|q\(2),
	datac => \b2v_inst2|b2v_inst18|o[2]~0_combout\,
	datad => \b2v_inst2|b2v_inst17|o[3]~2_combout\,
	combout => \b2v_inst2|b2v_inst17|o[3]~3_combout\);

-- Location: LCCOMB_X51_Y9_N16
\b2v_inst2|b2v_inst5|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst5|q[3]~1_combout\ = \b2v_inst2|b2v_inst5|q\(3) $ (((\b2v_inst2|b2v_inst5|q[3]~0_combout\) # ((\b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst2|b2v_inst17|o[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datab => \b2v_inst2|b2v_inst5|q[3]~0_combout\,
	datac => \b2v_inst2|b2v_inst5|q\(3),
	datad => \b2v_inst2|b2v_inst17|o[3]~3_combout\,
	combout => \b2v_inst2|b2v_inst5|q[3]~1_combout\);

-- Location: FF_X51_Y9_N17
\b2v_inst2|b2v_inst5|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst5|q[3]~1_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst5|q\(3));

-- Location: LCCOMB_X54_Y9_N22
\b2v_inst2|b2v_inst35|O[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst35|O[3]~3_combout\ = (\b2v_inst|Selector0~0_combout\ & (\b2v_inst2|b2v_inst5|q\(3))) # (!\b2v_inst|Selector0~0_combout\ & ((\b2v_inst2|b2v_inst9|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst5|q\(3),
	datab => \b2v_inst2|b2v_inst9|q\(3),
	datac => \b2v_inst|Selector0~0_combout\,
	combout => \b2v_inst2|b2v_inst35|O[3]~3_combout\);

-- Location: FF_X54_Y9_N23
\b2v_inst2|b2v_inst10|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst35|O[3]~3_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	ena => \b2v_inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst10|q\(3));

-- Location: LCCOMB_X52_Y11_N10
\b2v_inst2|b2v_inst18|o[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|o[0]~25_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst2|b2v_inst10|q\(1) $ (((\b2v_inst2|b2v_inst10|q\(3) & 
-- \b2v_inst2|b2v_inst21|o[1]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst10|q\(3),
	datab => \b2v_inst2|b2v_inst10|q\(1),
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst18|o[0]~25_combout\);

-- Location: LCCOMB_X52_Y11_N8
\b2v_inst2|b2v_inst18|o[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|o[0]~26_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst2|b2v_inst18|Mux7~0_combout\ $ (((\b2v_inst2|b2v_inst10|q\(3) & \b2v_inst2|b2v_inst18|o[0]~25_combout\))))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & 
-- (((\b2v_inst2|b2v_inst18|o[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst10|q\(3),
	datab => \b2v_inst2|b2v_inst18|Mux7~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst18|o[0]~25_combout\,
	combout => \b2v_inst2|b2v_inst18|o[0]~26_combout\);

-- Location: LCCOMB_X52_Y11_N30
\b2v_inst2|b2v_inst18|o[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|o[0]~23_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst2|b2v_inst18|Mux10~0_combout\) # (\b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst2|b2v_inst18|Mux2~0_combout\ 
-- & ((!\b2v_inst2|b2v_inst21|o[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst18|Mux2~0_combout\,
	datab => \b2v_inst2|b2v_inst18|Mux10~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst18|o[0]~23_combout\);

-- Location: LCCOMB_X52_Y11_N28
\b2v_inst2|b2v_inst18|o[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|o[0]~24_combout\ = (\b2v_inst2|b2v_inst18|o[0]~23_combout\ & (((\b2v_inst2|b2v_inst18|Mux9~0_combout\) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst2|b2v_inst18|o[0]~23_combout\ & (\b2v_inst2|b2v_inst18|Mux3~0_combout\ 
-- & ((\b2v_inst2|b2v_inst21|o[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst18|Mux3~0_combout\,
	datab => \b2v_inst2|b2v_inst18|Mux9~0_combout\,
	datac => \b2v_inst2|b2v_inst18|o[0]~23_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst18|o[0]~24_combout\);

-- Location: LCCOMB_X52_Y11_N22
\b2v_inst2|b2v_inst6|q[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst6|q[0]~4_combout\ = (\b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst2|b2v_inst21|o[2]~41_combout\ & ((\b2v_inst2|b2v_inst18|o[0]~24_combout\))) # (!\b2v_inst2|b2v_inst21|o[2]~41_combout\ & (\b2v_inst2|b2v_inst18|o[0]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datab => \b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datac => \b2v_inst2|b2v_inst18|o[0]~26_combout\,
	datad => \b2v_inst2|b2v_inst18|o[0]~24_combout\,
	combout => \b2v_inst2|b2v_inst6|q[0]~4_combout\);

-- Location: LCCOMB_X52_Y11_N12
\b2v_inst2|b2v_inst18|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|Mux5~1_combout\ = \b2v_inst2|b2v_inst10|q\(0) $ (\b2v_inst2|b2v_inst10|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|b2v_inst10|q\(0),
	datad => \b2v_inst2|b2v_inst10|q\(2),
	combout => \b2v_inst2|b2v_inst18|Mux5~1_combout\);

-- Location: LCCOMB_X52_Y11_N6
\b2v_inst2|b2v_inst18|o[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|o[0]~19_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst2|b2v_inst10|q\(2) $ (((\b2v_inst2|b2v_inst10|q\(3) & 
-- \b2v_inst2|b2v_inst21|o[1]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst10|q\(3),
	datab => \b2v_inst2|b2v_inst10|q\(2),
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst18|o[0]~19_combout\);

-- Location: LCCOMB_X52_Y11_N4
\b2v_inst2|b2v_inst18|o[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|o[0]~20_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst2|b2v_inst18|Mux5~1_combout\ $ (((\b2v_inst2|b2v_inst10|q\(3) & \b2v_inst2|b2v_inst18|o[0]~19_combout\))))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & 
-- (((\b2v_inst2|b2v_inst18|o[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst10|q\(3),
	datab => \b2v_inst2|b2v_inst18|Mux5~1_combout\,
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst18|o[0]~19_combout\,
	combout => \b2v_inst2|b2v_inst18|o[0]~20_combout\);

-- Location: LCCOMB_X52_Y11_N2
\b2v_inst2|b2v_inst18|o[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|o[0]~21_combout\ = (\b2v_inst2|b2v_inst18|o[2]~2_combout\ & (((\b2v_inst2|b2v_inst18|o[0]~20_combout\) # (!\b2v_inst2|b2v_inst18|o[2]~1_combout\)))) # (!\b2v_inst2|b2v_inst18|o[2]~2_combout\ & (\b2v_inst2|b2v_inst10|q\(0) & 
-- ((\b2v_inst2|b2v_inst18|o[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst10|q\(0),
	datab => \b2v_inst2|b2v_inst18|o[0]~20_combout\,
	datac => \b2v_inst2|b2v_inst18|o[2]~2_combout\,
	datad => \b2v_inst2|b2v_inst18|o[2]~1_combout\,
	combout => \b2v_inst2|b2v_inst18|o[0]~21_combout\);

-- Location: LCCOMB_X52_Y11_N20
\b2v_inst2|b2v_inst18|o[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|o[0]~22_combout\ = (\b2v_inst2|b2v_inst18|o[2]~0_combout\ & (\b2v_inst2|b2v_inst10|q\(3) $ (((\b2v_inst2|b2v_inst10|q\(0) & \b2v_inst2|b2v_inst18|o[0]~21_combout\))))) # (!\b2v_inst2|b2v_inst18|o[2]~0_combout\ & 
-- (((\b2v_inst2|b2v_inst18|o[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst10|q\(3),
	datab => \b2v_inst2|b2v_inst10|q\(0),
	datac => \b2v_inst2|b2v_inst18|o[2]~0_combout\,
	datad => \b2v_inst2|b2v_inst18|o[0]~21_combout\,
	combout => \b2v_inst2|b2v_inst18|o[0]~22_combout\);

-- Location: LCCOMB_X52_Y11_N16
\b2v_inst2|b2v_inst6|q[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst6|q[0]~5_combout\ = \b2v_inst2|b2v_inst6|q\(0) $ (((\b2v_inst2|b2v_inst6|q[0]~4_combout\) # ((\b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst2|b2v_inst18|o[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst6|q[0]~4_combout\,
	datab => \b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datac => \b2v_inst2|b2v_inst6|q\(0),
	datad => \b2v_inst2|b2v_inst18|o[0]~22_combout\,
	combout => \b2v_inst2|b2v_inst6|q[0]~5_combout\);

-- Location: FF_X52_Y11_N17
\b2v_inst2|b2v_inst6|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst6|q[0]~5_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst6|q\(0));

-- Location: LCCOMB_X52_Y9_N24
\b2v_inst2|b2v_inst34|O[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst34|O[0]~0_combout\ = (\b2v_inst|Selector0~0_combout\ & ((\b2v_inst2|b2v_inst6|q\(0)))) # (!\b2v_inst|Selector0~0_combout\ & (\b2v_inst2|b2v_inst10|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst10|q\(0),
	datab => \b2v_inst2|b2v_inst6|q\(0),
	datad => \b2v_inst|Selector0~0_combout\,
	combout => \b2v_inst2|b2v_inst34|O[0]~0_combout\);

-- Location: FF_X52_Y9_N25
\b2v_inst2|b2v_inst11|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst34|O[0]~0_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	ena => \b2v_inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst11|q\(0));

-- Location: LCCOMB_X52_Y9_N14
\b2v_inst2|b2v_inst33|O[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst33|O[0]~0_combout\ = (\b2v_inst|Selector0~0_combout\ & ((\b2v_inst2|b2v_inst7|q\(0)))) # (!\b2v_inst|Selector0~0_combout\ & (\b2v_inst2|b2v_inst11|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst11|q\(0),
	datac => \b2v_inst2|b2v_inst7|q\(0),
	datad => \b2v_inst|Selector0~0_combout\,
	combout => \b2v_inst2|b2v_inst33|O[0]~0_combout\);

-- Location: FF_X52_Y9_N15
\b2v_inst2|b2v_inst36|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst33|O[0]~0_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	ena => \b2v_inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst36|q\(0));

-- Location: LCCOMB_X52_Y9_N20
\b2v_inst2|b2v_inst22|O[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst22|O[0]~0_combout\ = (\b2v_inst2|b2v_inst36|q\(0)) # (\b2v_inst|Selector0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst36|q\(0),
	datad => \b2v_inst|Selector0~0_combout\,
	combout => \b2v_inst2|b2v_inst22|O[0]~0_combout\);

-- Location: FF_X52_Y9_N23
\b2v_inst2|b2v_inst9|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst2|b2v_inst22|O[0]~0_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	sload => VCC,
	ena => \b2v_inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst9|q\(0));

-- Location: LCCOMB_X52_Y9_N26
\b2v_inst2|b2v_inst35|O[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst35|O[0]~0_combout\ = (\b2v_inst|Selector0~0_combout\ & ((\b2v_inst2|b2v_inst5|q\(0)))) # (!\b2v_inst|Selector0~0_combout\ & (\b2v_inst2|b2v_inst9|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst9|q\(0),
	datac => \b2v_inst2|b2v_inst5|q\(0),
	datad => \b2v_inst|Selector0~0_combout\,
	combout => \b2v_inst2|b2v_inst35|O[0]~0_combout\);

-- Location: FF_X52_Y9_N27
\b2v_inst2|b2v_inst10|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst35|O[0]~0_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	ena => \b2v_inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst10|q\(0));

-- Location: LCCOMB_X56_Y10_N4
\b2v_inst2|b2v_inst18|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|Mux4~0_combout\ = \b2v_inst2|b2v_inst10|q\(0) $ (\b2v_inst2|b2v_inst10|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|b2v_inst10|q\(0),
	datad => \b2v_inst2|b2v_inst10|q\(3),
	combout => \b2v_inst2|b2v_inst18|Mux4~0_combout\);

-- Location: LCCOMB_X53_Y10_N6
\b2v_inst2|b2v_inst18|o[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|o[1]~11_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst2|b2v_inst18|Mux5~1_combout\) # ((\b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- (((\b2v_inst2|b2v_inst18|Mux0~0_combout\ & !\b2v_inst2|b2v_inst21|o[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst18|Mux5~1_combout\,
	datab => \b2v_inst2|b2v_inst18|Mux0~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst2|b2v_inst18|o[1]~11_combout\);

-- Location: LCCOMB_X53_Y10_N24
\b2v_inst2|b2v_inst18|o[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|o[1]~12_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst2|b2v_inst18|o[1]~11_combout\ & ((\b2v_inst2|b2v_inst18|Mux10~0_combout\))) # (!\b2v_inst2|b2v_inst18|o[1]~11_combout\ & 
-- (\b2v_inst2|b2v_inst18|Mux3~0_combout\)))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst2|b2v_inst18|o[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datab => \b2v_inst2|b2v_inst18|Mux3~0_combout\,
	datac => \b2v_inst2|b2v_inst18|Mux10~0_combout\,
	datad => \b2v_inst2|b2v_inst18|o[1]~11_combout\,
	combout => \b2v_inst2|b2v_inst18|o[1]~12_combout\);

-- Location: LCCOMB_X53_Y10_N14
\b2v_inst2|b2v_inst18|o[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|o[1]~13_combout\ = (\b2v_inst2|b2v_inst18|o[2]~1_combout\ & ((\b2v_inst2|b2v_inst18|o[2]~2_combout\ & ((\b2v_inst2|b2v_inst18|o[1]~12_combout\))) # (!\b2v_inst2|b2v_inst18|o[2]~2_combout\ & (\b2v_inst2|b2v_inst10|q\(1))))) # 
-- (!\b2v_inst2|b2v_inst18|o[2]~1_combout\ & (\b2v_inst2|b2v_inst18|o[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst18|o[2]~1_combout\,
	datab => \b2v_inst2|b2v_inst18|o[2]~2_combout\,
	datac => \b2v_inst2|b2v_inst10|q\(1),
	datad => \b2v_inst2|b2v_inst18|o[1]~12_combout\,
	combout => \b2v_inst2|b2v_inst18|o[1]~13_combout\);

-- Location: LCCOMB_X53_Y10_N12
\b2v_inst2|b2v_inst18|o[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|o[1]~14_combout\ = (\b2v_inst2|b2v_inst18|o[2]~0_combout\ & ((\b2v_inst2|b2v_inst18|o[1]~13_combout\ & ((\b2v_inst2|b2v_inst18|Mux7~1_combout\))) # (!\b2v_inst2|b2v_inst18|o[1]~13_combout\ & (\b2v_inst2|b2v_inst18|Mux4~0_combout\)))) 
-- # (!\b2v_inst2|b2v_inst18|o[2]~0_combout\ & (((\b2v_inst2|b2v_inst18|o[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst18|Mux4~0_combout\,
	datab => \b2v_inst2|b2v_inst18|o[2]~0_combout\,
	datac => \b2v_inst2|b2v_inst18|o[1]~13_combout\,
	datad => \b2v_inst2|b2v_inst18|Mux7~1_combout\,
	combout => \b2v_inst2|b2v_inst18|o[1]~14_combout\);

-- Location: LCCOMB_X56_Y10_N16
\b2v_inst2|b2v_inst18|o[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|o[1]~17_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst2|b2v_inst18|Mux9~0_combout\) # (\b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst2|b2v_inst18|Mux2~0_combout\ 
-- & ((!\b2v_inst2|b2v_inst21|o[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst18|Mux2~0_combout\,
	datab => \b2v_inst2|b2v_inst18|Mux9~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst2|b2v_inst18|o[1]~17_combout\);

-- Location: LCCOMB_X56_Y10_N18
\b2v_inst2|b2v_inst18|o[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|o[1]~18_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst2|b2v_inst18|o[1]~17_combout\ & ((\b2v_inst2|b2v_inst18|Mux5~0_combout\))) # (!\b2v_inst2|b2v_inst18|o[1]~17_combout\ & (\b2v_inst2|b2v_inst10|q\(2))))) # 
-- (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst2|b2v_inst18|o[1]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst10|q\(2),
	datab => \b2v_inst2|b2v_inst18|Mux5~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst18|o[1]~17_combout\,
	combout => \b2v_inst2|b2v_inst18|o[1]~18_combout\);

-- Location: LCCOMB_X54_Y11_N18
\b2v_inst2|b2v_inst18|o[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|o[1]~15_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst2|b2v_inst10|q\(3) $ (((\b2v_inst2|b2v_inst10|q\(1) & 
-- !\b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst10|q\(1),
	datab => \b2v_inst2|b2v_inst10|q\(3),
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst18|o[1]~15_combout\);

-- Location: LCCOMB_X54_Y11_N0
\b2v_inst2|b2v_inst18|o[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst18|o[1]~16_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst2|b2v_inst10|q\(0) $ (((\b2v_inst2|b2v_inst10|q\(1) & !\b2v_inst2|b2v_inst18|o[1]~15_combout\))))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- (((\b2v_inst2|b2v_inst18|o[1]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst10|q\(1),
	datab => \b2v_inst2|b2v_inst10|q\(0),
	datac => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst2|b2v_inst18|o[1]~15_combout\,
	combout => \b2v_inst2|b2v_inst18|o[1]~16_combout\);

-- Location: LCCOMB_X53_Y10_N18
\b2v_inst2|b2v_inst6|q[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst6|q[1]~2_combout\ = (\b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst2|b2v_inst21|o[2]~41_combout\ & ((\b2v_inst2|b2v_inst18|o[1]~16_combout\))) # (!\b2v_inst2|b2v_inst21|o[2]~41_combout\ & (\b2v_inst2|b2v_inst18|o[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datab => \b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datac => \b2v_inst2|b2v_inst18|o[1]~18_combout\,
	datad => \b2v_inst2|b2v_inst18|o[1]~16_combout\,
	combout => \b2v_inst2|b2v_inst6|q[1]~2_combout\);

-- Location: LCCOMB_X53_Y10_N22
\b2v_inst2|b2v_inst6|q[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst6|q[1]~3_combout\ = \b2v_inst2|b2v_inst6|q\(1) $ (((\b2v_inst2|b2v_inst6|q[1]~2_combout\) # ((\b2v_inst2|b2v_inst18|o[1]~14_combout\ & \b2v_inst2|b2v_inst7|q[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst18|o[1]~14_combout\,
	datab => \b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datac => \b2v_inst2|b2v_inst6|q\(1),
	datad => \b2v_inst2|b2v_inst6|q[1]~2_combout\,
	combout => \b2v_inst2|b2v_inst6|q[1]~3_combout\);

-- Location: FF_X53_Y10_N23
\b2v_inst2|b2v_inst6|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst6|q[1]~3_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst6|q\(1));

-- Location: LCCOMB_X51_Y11_N14
\b2v_inst2|b2v_inst14|o[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[3]~5_combout\ = (\b2v_inst2|b2v_inst6|q\(1) & !\b2v_inst2|b2v_inst6|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|b2v_inst6|q\(1),
	datad => \b2v_inst2|b2v_inst6|q\(2),
	combout => \b2v_inst2|b2v_inst14|o[3]~5_combout\);

-- Location: LCCOMB_X51_Y11_N28
\b2v_inst2|b2v_inst14|o[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[3]~31_combout\ = (\b2v_inst2|b2v_inst6|q\(1) & (\b2v_inst2|b2v_inst6|q\(0))) # (!\b2v_inst2|b2v_inst6|q\(1) & (\b2v_inst2|b2v_inst2|q\(1) $ (((\b2v_inst2|b2v_inst6|q\(0) & \b2v_inst2|b2v_inst2|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst6|q\(1),
	datab => \b2v_inst2|b2v_inst6|q\(0),
	datac => \b2v_inst2|b2v_inst2|q\(1),
	datad => \b2v_inst2|b2v_inst2|q\(3),
	combout => \b2v_inst2|b2v_inst14|o[3]~31_combout\);

-- Location: LCCOMB_X51_Y11_N22
\b2v_inst2|b2v_inst14|o[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[3]~32_combout\ = (\b2v_inst2|b2v_inst6|q\(1) & (\b2v_inst2|b2v_inst14|Mux2~0_combout\ $ (((\b2v_inst2|b2v_inst2|q\(3) & \b2v_inst2|b2v_inst14|o[3]~31_combout\))))) # (!\b2v_inst2|b2v_inst6|q\(1) & 
-- (((\b2v_inst2|b2v_inst14|o[3]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst14|Mux2~0_combout\,
	datab => \b2v_inst2|b2v_inst2|q\(3),
	datac => \b2v_inst2|b2v_inst6|q\(1),
	datad => \b2v_inst2|b2v_inst14|o[3]~31_combout\,
	combout => \b2v_inst2|b2v_inst14|o[3]~32_combout\);

-- Location: LCCOMB_X51_Y11_N8
\b2v_inst2|b2v_inst14|o[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[3]~33_combout\ = (\b2v_inst2|b2v_inst14|o[3]~3_combout\ & (((\b2v_inst2|b2v_inst14|o[3]~32_combout\) # (!\b2v_inst2|b2v_inst14|o[3]~2_combout\)))) # (!\b2v_inst2|b2v_inst14|o[3]~3_combout\ & (\b2v_inst2|b2v_inst2|q\(3) & 
-- ((\b2v_inst2|b2v_inst14|o[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst14|o[3]~3_combout\,
	datab => \b2v_inst2|b2v_inst2|q\(3),
	datac => \b2v_inst2|b2v_inst14|o[3]~32_combout\,
	datad => \b2v_inst2|b2v_inst14|o[3]~2_combout\,
	combout => \b2v_inst2|b2v_inst14|o[3]~33_combout\);

-- Location: LCCOMB_X51_Y11_N30
\b2v_inst2|b2v_inst14|o[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[3]~34_combout\ = (\b2v_inst2|b2v_inst14|o[3]~5_combout\ & (\b2v_inst2|b2v_inst2|q\(2) $ (((\b2v_inst2|b2v_inst14|o[3]~33_combout\ & \b2v_inst2|b2v_inst2|q\(3)))))) # (!\b2v_inst2|b2v_inst14|o[3]~5_combout\ & 
-- (((\b2v_inst2|b2v_inst14|o[3]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst14|o[3]~5_combout\,
	datab => \b2v_inst2|b2v_inst2|q\(2),
	datac => \b2v_inst2|b2v_inst14|o[3]~33_combout\,
	datad => \b2v_inst2|b2v_inst2|q\(3),
	combout => \b2v_inst2|b2v_inst14|o[3]~34_combout\);

-- Location: LCCOMB_X49_Y11_N0
\b2v_inst2|b2v_inst14|o[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[3]~35_combout\ = (\b2v_inst2|b2v_inst6|q\(1) & (\b2v_inst2|b2v_inst6|q\(0))) # (!\b2v_inst2|b2v_inst6|q\(1) & (\b2v_inst2|b2v_inst14|Mux8~0_combout\ $ (((!\b2v_inst2|b2v_inst6|q\(0) & \b2v_inst2|b2v_inst2|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst6|q\(0),
	datab => \b2v_inst2|b2v_inst2|q\(3),
	datac => \b2v_inst2|b2v_inst14|Mux8~0_combout\,
	datad => \b2v_inst2|b2v_inst6|q\(1),
	combout => \b2v_inst2|b2v_inst14|o[3]~35_combout\);

-- Location: LCCOMB_X49_Y11_N6
\b2v_inst2|b2v_inst14|o[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[3]~36_combout\ = (\b2v_inst2|b2v_inst6|q\(1) & ((\b2v_inst2|b2v_inst14|o[3]~35_combout\ & (\b2v_inst2|b2v_inst14|Mux10~0_combout\)) # (!\b2v_inst2|b2v_inst14|o[3]~35_combout\ & ((\b2v_inst2|b2v_inst14|Mux9~0_combout\))))) # 
-- (!\b2v_inst2|b2v_inst6|q\(1) & (((\b2v_inst2|b2v_inst14|o[3]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst14|Mux10~0_combout\,
	datab => \b2v_inst2|b2v_inst6|q\(1),
	datac => \b2v_inst2|b2v_inst14|Mux9~0_combout\,
	datad => \b2v_inst2|b2v_inst14|o[3]~35_combout\,
	combout => \b2v_inst2|b2v_inst14|o[3]~36_combout\);

-- Location: LCCOMB_X50_Y11_N30
\b2v_inst2|b2v_inst14|o[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[3]~37_combout\ = (\b2v_inst2|b2v_inst6|q\(0) & (((\b2v_inst2|b2v_inst6|q\(1))))) # (!\b2v_inst2|b2v_inst6|q\(0) & ((\b2v_inst2|b2v_inst6|q\(1) & (\b2v_inst2|b2v_inst14|Mux5~0_combout\)) # (!\b2v_inst2|b2v_inst6|q\(1) & 
-- ((\b2v_inst2|b2v_inst14|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst14|Mux5~0_combout\,
	datab => \b2v_inst2|b2v_inst14|Mux4~0_combout\,
	datac => \b2v_inst2|b2v_inst6|q\(0),
	datad => \b2v_inst2|b2v_inst6|q\(1),
	combout => \b2v_inst2|b2v_inst14|o[3]~37_combout\);

-- Location: LCCOMB_X50_Y11_N28
\b2v_inst2|b2v_inst14|o[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[3]~38_combout\ = (\b2v_inst2|b2v_inst6|q\(0) & (\b2v_inst2|b2v_inst2|q\(0) $ (((\b2v_inst2|b2v_inst14|o[3]~37_combout\ & \b2v_inst2|b2v_inst2|q\(2)))))) # (!\b2v_inst2|b2v_inst6|q\(0) & (((\b2v_inst2|b2v_inst14|o[3]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst2|q\(0),
	datab => \b2v_inst2|b2v_inst6|q\(0),
	datac => \b2v_inst2|b2v_inst14|o[3]~37_combout\,
	datad => \b2v_inst2|b2v_inst2|q\(2),
	combout => \b2v_inst2|b2v_inst14|o[3]~38_combout\);

-- Location: LCCOMB_X50_Y11_N18
\b2v_inst2|b2v_inst14|o[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|o[3]~39_combout\ = (\b2v_inst2|b2v_inst6|q\(3) & ((\b2v_inst2|b2v_inst6|q\(2) & (\b2v_inst2|b2v_inst14|o[3]~36_combout\)) # (!\b2v_inst2|b2v_inst6|q\(2) & ((\b2v_inst2|b2v_inst14|o[3]~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst6|q\(3),
	datab => \b2v_inst2|b2v_inst6|q\(2),
	datac => \b2v_inst2|b2v_inst14|o[3]~36_combout\,
	datad => \b2v_inst2|b2v_inst14|o[3]~38_combout\,
	combout => \b2v_inst2|b2v_inst14|o[3]~39_combout\);

-- Location: LCCOMB_X51_Y7_N22
\b2v_inst2|b2v_inst13|o[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[3]~38_combout\ = (\b2v_inst2|b2v_inst5|q\(1) & (\b2v_inst2|b2v_inst5|q\(0))) # (!\b2v_inst2|b2v_inst5|q\(1) & (\b2v_inst2|b2v_inst1|q\(1) $ (((\b2v_inst2|b2v_inst5|q\(0) & \b2v_inst2|b2v_inst1|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst5|q\(0),
	datab => \b2v_inst2|b2v_inst1|q\(1),
	datac => \b2v_inst2|b2v_inst5|q\(1),
	datad => \b2v_inst2|b2v_inst1|q\(3),
	combout => \b2v_inst2|b2v_inst13|o[3]~38_combout\);

-- Location: LCCOMB_X51_Y7_N28
\b2v_inst2|b2v_inst13|o[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[3]~39_combout\ = (\b2v_inst2|b2v_inst5|q\(1) & (\b2v_inst2|b2v_inst13|Mux2~0_combout\ $ (((\b2v_inst2|b2v_inst13|o[3]~38_combout\ & \b2v_inst2|b2v_inst1|q\(3)))))) # (!\b2v_inst2|b2v_inst5|q\(1) & 
-- (\b2v_inst2|b2v_inst13|o[3]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst13|o[3]~38_combout\,
	datab => \b2v_inst2|b2v_inst5|q\(1),
	datac => \b2v_inst2|b2v_inst13|Mux2~0_combout\,
	datad => \b2v_inst2|b2v_inst1|q\(3),
	combout => \b2v_inst2|b2v_inst13|o[3]~39_combout\);

-- Location: LCCOMB_X51_Y7_N26
\b2v_inst2|b2v_inst13|o[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[3]~40_combout\ = (\b2v_inst2|b2v_inst13|o[3]~8_combout\ & (((\b2v_inst2|b2v_inst13|o[3]~39_combout\) # (!\b2v_inst2|b2v_inst13|o[3]~7_combout\)))) # (!\b2v_inst2|b2v_inst13|o[3]~8_combout\ & (\b2v_inst2|b2v_inst1|q\(3) & 
-- (\b2v_inst2|b2v_inst13|o[3]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst1|q\(3),
	datab => \b2v_inst2|b2v_inst13|o[3]~8_combout\,
	datac => \b2v_inst2|b2v_inst13|o[3]~7_combout\,
	datad => \b2v_inst2|b2v_inst13|o[3]~39_combout\,
	combout => \b2v_inst2|b2v_inst13|o[3]~40_combout\);

-- Location: LCCOMB_X51_Y10_N14
\b2v_inst2|b2v_inst13|o[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[3]~41_combout\ = (\b2v_inst2|b2v_inst13|o[3]~10_combout\ & (\b2v_inst2|b2v_inst1|q\(2) $ (((\b2v_inst2|b2v_inst1|q\(3) & \b2v_inst2|b2v_inst13|o[3]~40_combout\))))) # (!\b2v_inst2|b2v_inst13|o[3]~10_combout\ & 
-- (((\b2v_inst2|b2v_inst13|o[3]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst1|q\(3),
	datab => \b2v_inst2|b2v_inst1|q\(2),
	datac => \b2v_inst2|b2v_inst13|o[3]~40_combout\,
	datad => \b2v_inst2|b2v_inst13|o[3]~10_combout\,
	combout => \b2v_inst2|b2v_inst13|o[3]~41_combout\);

-- Location: LCCOMB_X50_Y7_N6
\b2v_inst2|b2v_inst13|o[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[3]~33_combout\ = (\b2v_inst2|b2v_inst5|q\(1) & (\b2v_inst2|b2v_inst5|q\(0))) # (!\b2v_inst2|b2v_inst5|q\(1) & (\b2v_inst2|b2v_inst13|Mux8~0_combout\ $ (((!\b2v_inst2|b2v_inst5|q\(0) & \b2v_inst2|b2v_inst1|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst5|q\(0),
	datab => \b2v_inst2|b2v_inst1|q\(3),
	datac => \b2v_inst2|b2v_inst5|q\(1),
	datad => \b2v_inst2|b2v_inst13|Mux8~0_combout\,
	combout => \b2v_inst2|b2v_inst13|o[3]~33_combout\);

-- Location: LCCOMB_X50_Y7_N24
\b2v_inst2|b2v_inst13|o[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[3]~34_combout\ = (\b2v_inst2|b2v_inst5|q\(1) & ((\b2v_inst2|b2v_inst13|o[3]~33_combout\ & (\b2v_inst2|b2v_inst13|Mux10~0_combout\)) # (!\b2v_inst2|b2v_inst13|o[3]~33_combout\ & ((\b2v_inst2|b2v_inst13|Mux9~0_combout\))))) # 
-- (!\b2v_inst2|b2v_inst5|q\(1) & (((\b2v_inst2|b2v_inst13|o[3]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst13|Mux10~0_combout\,
	datab => \b2v_inst2|b2v_inst5|q\(1),
	datac => \b2v_inst2|b2v_inst13|Mux9~0_combout\,
	datad => \b2v_inst2|b2v_inst13|o[3]~33_combout\,
	combout => \b2v_inst2|b2v_inst13|o[3]~34_combout\);

-- Location: LCCOMB_X51_Y8_N28
\b2v_inst2|b2v_inst13|o[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[3]~35_combout\ = (\b2v_inst2|b2v_inst5|q\(1) & ((\b2v_inst2|b2v_inst13|Mux5~0_combout\) # ((\b2v_inst2|b2v_inst5|q\(0))))) # (!\b2v_inst2|b2v_inst5|q\(1) & (((\b2v_inst2|b2v_inst13|Mux4~0_combout\ & !\b2v_inst2|b2v_inst5|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst5|q\(1),
	datab => \b2v_inst2|b2v_inst13|Mux5~0_combout\,
	datac => \b2v_inst2|b2v_inst13|Mux4~0_combout\,
	datad => \b2v_inst2|b2v_inst5|q\(0),
	combout => \b2v_inst2|b2v_inst13|o[3]~35_combout\);

-- Location: LCCOMB_X51_Y8_N2
\b2v_inst2|b2v_inst13|o[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[3]~36_combout\ = (\b2v_inst2|b2v_inst5|q\(0) & (\b2v_inst2|b2v_inst1|q\(0) $ (((\b2v_inst2|b2v_inst1|q\(2) & \b2v_inst2|b2v_inst13|o[3]~35_combout\))))) # (!\b2v_inst2|b2v_inst5|q\(0) & (((\b2v_inst2|b2v_inst13|o[3]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst1|q\(2),
	datab => \b2v_inst2|b2v_inst5|q\(0),
	datac => \b2v_inst2|b2v_inst1|q\(0),
	datad => \b2v_inst2|b2v_inst13|o[3]~35_combout\,
	combout => \b2v_inst2|b2v_inst13|o[3]~36_combout\);

-- Location: LCCOMB_X51_Y10_N24
\b2v_inst2|b2v_inst13|o[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[3]~37_combout\ = (\b2v_inst2|b2v_inst5|q\(3) & ((\b2v_inst2|b2v_inst5|q\(2) & (\b2v_inst2|b2v_inst13|o[3]~34_combout\)) # (!\b2v_inst2|b2v_inst5|q\(2) & ((\b2v_inst2|b2v_inst13|o[3]~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst5|q\(2),
	datab => \b2v_inst2|b2v_inst5|q\(3),
	datac => \b2v_inst2|b2v_inst13|o[3]~34_combout\,
	datad => \b2v_inst2|b2v_inst13|o[3]~36_combout\,
	combout => \b2v_inst2|b2v_inst13|o[3]~37_combout\);

-- Location: LCCOMB_X51_Y10_N28
\b2v_inst2|b2v_inst13|o[3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst13|o[3]~42_combout\ = (\b2v_inst2|b2v_inst13|o[3]~37_combout\) # ((!\b2v_inst2|b2v_inst5|q\(3) & \b2v_inst2|b2v_inst13|o[3]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst5|q\(3),
	datac => \b2v_inst2|b2v_inst13|o[3]~41_combout\,
	datad => \b2v_inst2|b2v_inst13|o[3]~37_combout\,
	combout => \b2v_inst2|b2v_inst13|o[3]~42_combout\);

-- Location: LCCOMB_X51_Y10_N22
\b2v_inst2|b2v_inst37|c[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst37|c[3]~10_combout\ = \b2v_inst2|b2v_inst13|o[3]~42_combout\ $ (((\b2v_inst2|b2v_inst14|o[3]~39_combout\) # ((\b2v_inst2|b2v_inst14|o[3]~34_combout\ & !\b2v_inst2|b2v_inst6|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst14|o[3]~34_combout\,
	datab => \b2v_inst2|b2v_inst6|q\(3),
	datac => \b2v_inst2|b2v_inst14|o[3]~39_combout\,
	datad => \b2v_inst2|b2v_inst13|o[3]~42_combout\,
	combout => \b2v_inst2|b2v_inst37|c[3]~10_combout\);

-- Location: LCCOMB_X51_Y10_N4
\b2v_inst2|b2v_inst37|c[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst37|c[3]~11_combout\ = \b2v_inst2|b2v_inst|q\(3) $ (\b2v_inst2|b2v_inst37|c[3]~10_combout\ $ (\b2v_inst2|b2v_inst37|c[3]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst|q\(3),
	datac => \b2v_inst2|b2v_inst37|c[3]~10_combout\,
	datad => \b2v_inst2|b2v_inst37|c[3]~9_combout\,
	combout => \b2v_inst2|b2v_inst37|c[3]~11_combout\);

-- Location: FF_X51_Y10_N1
\b2v_inst2|b2v_inst26|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst2|b2v_inst37|c[3]~11_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	sload => VCC,
	ena => \b2v_inst|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst26|q\(3));

-- Location: LCCOMB_X51_Y10_N0
\b2v_inst2|b2v_inst32|o[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst32|o[0]~1_combout\ = (\b2v_inst2|b2v_inst26|q\(1) & (\b2v_inst2|b2v_inst26|q\(0) $ (((\b2v_inst2|b2v_inst26|q\(2)) # (!\b2v_inst2|b2v_inst26|q\(3)))))) # (!\b2v_inst2|b2v_inst26|q\(1) & (\b2v_inst2|b2v_inst26|q\(3) $ 
-- (((\b2v_inst2|b2v_inst26|q\(2)) # (\b2v_inst2|b2v_inst26|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010110011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst26|q\(1),
	datab => \b2v_inst2|b2v_inst26|q\(2),
	datac => \b2v_inst2|b2v_inst26|q\(3),
	datad => \b2v_inst2|b2v_inst26|q\(0),
	combout => \b2v_inst2|b2v_inst32|o[0]~1_combout\);

-- Location: LCCOMB_X52_Y10_N26
\b2v_inst2|b2v_inst21|o[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[0]~3_combout\ = (\b2v_inst2|b2v_inst32|o[2]~3_combout\) # ((\b2v_inst2|b2v_inst32|o[0]~1_combout\ & \b2v_inst2|b2v_inst32|o[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datab => \b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst2|b2v_inst32|o[2]~3_combout\,
	combout => \b2v_inst2|b2v_inst21|o[0]~3_combout\);

-- Location: LCCOMB_X55_Y10_N8
\b2v_inst2|b2v_inst21|o[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[3]~0_combout\ = (\b2v_inst2|b2v_inst32|o[1]~2_combout\ & (\b2v_inst2|b2v_inst32|o[0]~1_combout\)) # (!\b2v_inst2|b2v_inst32|o[1]~2_combout\ & (\b2v_inst2|b2v_inst37|c[1]~5_combout\ $ (((\b2v_inst2|b2v_inst32|o[0]~1_combout\ & 
-- \b2v_inst2|b2v_inst37|c[3]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datab => \b2v_inst2|b2v_inst37|c[3]~11_combout\,
	datac => \b2v_inst2|b2v_inst37|c[1]~5_combout\,
	datad => \b2v_inst2|b2v_inst32|o[1]~2_combout\,
	combout => \b2v_inst2|b2v_inst21|o[3]~0_combout\);

-- Location: LCCOMB_X55_Y10_N6
\b2v_inst2|b2v_inst21|o[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[3]~1_combout\ = (\b2v_inst2|b2v_inst32|o[1]~2_combout\ & (\b2v_inst2|b2v_inst21|Mux2~2_combout\ $ (((\b2v_inst2|b2v_inst21|o[3]~0_combout\ & \b2v_inst2|b2v_inst37|c[3]~11_combout\))))) # (!\b2v_inst2|b2v_inst32|o[1]~2_combout\ & 
-- (\b2v_inst2|b2v_inst21|o[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datab => \b2v_inst2|b2v_inst21|o[3]~0_combout\,
	datac => \b2v_inst2|b2v_inst37|c[3]~11_combout\,
	datad => \b2v_inst2|b2v_inst21|Mux2~2_combout\,
	combout => \b2v_inst2|b2v_inst21|o[3]~1_combout\);

-- Location: LCCOMB_X55_Y10_N4
\b2v_inst2|b2v_inst21|o[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[3]~4_combout\ = (\b2v_inst2|b2v_inst21|o[0]~3_combout\ & (((\b2v_inst2|b2v_inst21|o[3]~1_combout\)) # (!\b2v_inst2|b2v_inst21|o[0]~2_combout\))) # (!\b2v_inst2|b2v_inst21|o[0]~3_combout\ & (\b2v_inst2|b2v_inst21|o[0]~2_combout\ & 
-- (\b2v_inst2|b2v_inst37|c[3]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst21|o[0]~3_combout\,
	datab => \b2v_inst2|b2v_inst21|o[0]~2_combout\,
	datac => \b2v_inst2|b2v_inst37|c[3]~11_combout\,
	datad => \b2v_inst2|b2v_inst21|o[3]~1_combout\,
	combout => \b2v_inst2|b2v_inst21|o[3]~4_combout\);

-- Location: LCCOMB_X54_Y10_N28
\b2v_inst2|b2v_inst21|o[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[3]~6_combout\ = (\b2v_inst2|b2v_inst21|o[0]~5_combout\ & (\b2v_inst2|b2v_inst37|c[2]~8_combout\ $ (((\b2v_inst2|b2v_inst21|o[3]~4_combout\ & \b2v_inst2|b2v_inst37|c[3]~11_combout\))))) # (!\b2v_inst2|b2v_inst21|o[0]~5_combout\ & 
-- (\b2v_inst2|b2v_inst21|o[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst21|o[3]~4_combout\,
	datab => \b2v_inst2|b2v_inst37|c[3]~11_combout\,
	datac => \b2v_inst2|b2v_inst21|o[0]~5_combout\,
	datad => \b2v_inst2|b2v_inst37|c[2]~8_combout\,
	combout => \b2v_inst2|b2v_inst21|o[3]~6_combout\);

-- Location: LCCOMB_X54_Y10_N20
\b2v_inst2|b2v_inst7|q[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst7|q[1]~0_combout\ = (!\b2v_inst2|b2v_inst21|o[3]~11_combout\ & (\b2v_inst|WideOr2~0_combout\ & ((\b2v_inst2|b2v_inst32|o[3]~0_combout\) # (!\b2v_inst2|b2v_inst21|o[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst21|o[3]~11_combout\,
	datab => \b2v_inst2|b2v_inst32|o[3]~0_combout\,
	datac => \b2v_inst|WideOr2~0_combout\,
	datad => \b2v_inst2|b2v_inst21|o[3]~6_combout\,
	combout => \b2v_inst2|b2v_inst7|q[1]~0_combout\);

-- Location: LCCOMB_X53_Y11_N2
\b2v_inst2|b2v_inst20|o[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|o[3]~6_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst2|b2v_inst20|Mux5~0_combout\) # ((\b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst2|b2v_inst20|Mux4~0_combout\ 
-- & !\b2v_inst2|b2v_inst21|o[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst20|Mux5~0_combout\,
	datab => \b2v_inst2|b2v_inst20|Mux4~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst2|b2v_inst20|o[3]~6_combout\);

-- Location: LCCOMB_X53_Y11_N4
\b2v_inst2|b2v_inst20|o[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|o[3]~7_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst2|b2v_inst36|q\(0) $ (((\b2v_inst2|b2v_inst36|q\(2) & \b2v_inst2|b2v_inst20|o[3]~6_combout\))))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & 
-- (((\b2v_inst2|b2v_inst20|o[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datab => \b2v_inst2|b2v_inst36|q\(2),
	datac => \b2v_inst2|b2v_inst36|q\(0),
	datad => \b2v_inst2|b2v_inst20|o[3]~6_combout\,
	combout => \b2v_inst2|b2v_inst20|o[3]~7_combout\);

-- Location: LCCOMB_X53_Y11_N18
\b2v_inst2|b2v_inst20|o[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|o[3]~4_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst2|b2v_inst20|Mux7~0_combout\ $ (((\b2v_inst2|b2v_inst36|q\(3) & 
-- !\b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst36|q\(3),
	datab => \b2v_inst2|b2v_inst20|Mux7~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst2|b2v_inst20|o[3]~4_combout\);

-- Location: LCCOMB_X53_Y11_N16
\b2v_inst2|b2v_inst20|o[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|o[3]~5_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst2|b2v_inst20|o[3]~4_combout\ & ((\b2v_inst2|b2v_inst20|Mux10~0_combout\))) # (!\b2v_inst2|b2v_inst20|o[3]~4_combout\ & (\b2v_inst2|b2v_inst20|Mux9~0_combout\)))) 
-- # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst2|b2v_inst20|o[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst20|Mux9~0_combout\,
	datab => \b2v_inst2|b2v_inst20|Mux10~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst2|b2v_inst20|o[3]~4_combout\,
	combout => \b2v_inst2|b2v_inst20|o[3]~5_combout\);

-- Location: LCCOMB_X53_Y11_N14
\b2v_inst2|b2v_inst8|q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst8|q[3]~0_combout\ = (\b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst2|b2v_inst21|o[2]~41_combout\ & ((\b2v_inst2|b2v_inst20|o[3]~5_combout\))) # (!\b2v_inst2|b2v_inst21|o[2]~41_combout\ & (\b2v_inst2|b2v_inst20|o[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datab => \b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datac => \b2v_inst2|b2v_inst20|o[3]~7_combout\,
	datad => \b2v_inst2|b2v_inst20|o[3]~5_combout\,
	combout => \b2v_inst2|b2v_inst8|q[3]~0_combout\);

-- Location: LCCOMB_X53_Y11_N26
\b2v_inst2|b2v_inst20|o[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|o[3]~0_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst2|b2v_inst36|q\(1) $ (((\b2v_inst2|b2v_inst36|q\(3) & 
-- \b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst36|q\(3),
	datab => \b2v_inst2|b2v_inst36|q\(1),
	datac => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst2|b2v_inst20|o[3]~0_combout\);

-- Location: LCCOMB_X53_Y11_N8
\b2v_inst2|b2v_inst20|o[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|o[3]~1_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst2|b2v_inst20|Mux2~0_combout\ $ (((\b2v_inst2|b2v_inst36|q\(3) & \b2v_inst2|b2v_inst20|o[3]~0_combout\))))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- (((\b2v_inst2|b2v_inst20|o[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datab => \b2v_inst2|b2v_inst36|q\(3),
	datac => \b2v_inst2|b2v_inst20|o[3]~0_combout\,
	datad => \b2v_inst2|b2v_inst20|Mux2~0_combout\,
	combout => \b2v_inst2|b2v_inst20|o[3]~1_combout\);

-- Location: LCCOMB_X53_Y11_N6
\b2v_inst2|b2v_inst20|o[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|o[3]~2_combout\ = (\b2v_inst2|b2v_inst18|o[2]~2_combout\ & (((\b2v_inst2|b2v_inst20|o[3]~1_combout\) # (!\b2v_inst2|b2v_inst18|o[2]~1_combout\)))) # (!\b2v_inst2|b2v_inst18|o[2]~2_combout\ & (\b2v_inst2|b2v_inst36|q\(3) & 
-- ((\b2v_inst2|b2v_inst18|o[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst36|q\(3),
	datab => \b2v_inst2|b2v_inst18|o[2]~2_combout\,
	datac => \b2v_inst2|b2v_inst20|o[3]~1_combout\,
	datad => \b2v_inst2|b2v_inst18|o[2]~1_combout\,
	combout => \b2v_inst2|b2v_inst20|o[3]~2_combout\);

-- Location: LCCOMB_X53_Y11_N20
\b2v_inst2|b2v_inst20|o[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|o[3]~3_combout\ = (\b2v_inst2|b2v_inst18|o[2]~0_combout\ & (\b2v_inst2|b2v_inst36|q\(2) $ (((\b2v_inst2|b2v_inst36|q\(3) & \b2v_inst2|b2v_inst20|o[3]~2_combout\))))) # (!\b2v_inst2|b2v_inst18|o[2]~0_combout\ & 
-- (((\b2v_inst2|b2v_inst20|o[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst36|q\(3),
	datab => \b2v_inst2|b2v_inst36|q\(2),
	datac => \b2v_inst2|b2v_inst18|o[2]~0_combout\,
	datad => \b2v_inst2|b2v_inst20|o[3]~2_combout\,
	combout => \b2v_inst2|b2v_inst20|o[3]~3_combout\);

-- Location: LCCOMB_X53_Y11_N0
\b2v_inst2|b2v_inst8|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst8|q[3]~1_combout\ = \b2v_inst2|b2v_inst8|q\(3) $ (((\b2v_inst2|b2v_inst8|q[3]~0_combout\) # ((\b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst2|b2v_inst20|o[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datab => \b2v_inst2|b2v_inst8|q[3]~0_combout\,
	datac => \b2v_inst2|b2v_inst8|q\(3),
	datad => \b2v_inst2|b2v_inst20|o[3]~3_combout\,
	combout => \b2v_inst2|b2v_inst8|q[3]~1_combout\);

-- Location: FF_X53_Y11_N1
\b2v_inst2|b2v_inst8|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst8|q[3]~1_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst8|q\(3));

-- Location: LCCOMB_X50_Y12_N24
\b2v_inst2|b2v_inst16|o[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|o[2]~27_combout\ = (\b2v_inst2|b2v_inst8|q\(1) & ((\b2v_inst2|b2v_inst16|Mux3~0_combout\) # ((\b2v_inst2|b2v_inst8|q\(0))))) # (!\b2v_inst2|b2v_inst8|q\(1) & (((\b2v_inst2|b2v_inst16|Mux0~0_combout\ & !\b2v_inst2|b2v_inst8|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst16|Mux3~0_combout\,
	datab => \b2v_inst2|b2v_inst16|Mux0~0_combout\,
	datac => \b2v_inst2|b2v_inst8|q\(1),
	datad => \b2v_inst2|b2v_inst8|q\(0),
	combout => \b2v_inst2|b2v_inst16|o[2]~27_combout\);

-- Location: LCCOMB_X50_Y12_N22
\b2v_inst2|b2v_inst16|o[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|o[2]~28_combout\ = (\b2v_inst2|b2v_inst8|q\(0) & (\b2v_inst2|b2v_inst4|q\(3) $ (((\b2v_inst2|b2v_inst4|q\(1) & \b2v_inst2|b2v_inst16|o[2]~27_combout\))))) # (!\b2v_inst2|b2v_inst8|q\(0) & (((\b2v_inst2|b2v_inst16|o[2]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst4|q\(1),
	datab => \b2v_inst2|b2v_inst8|q\(0),
	datac => \b2v_inst2|b2v_inst4|q\(3),
	datad => \b2v_inst2|b2v_inst16|o[2]~27_combout\,
	combout => \b2v_inst2|b2v_inst16|o[2]~28_combout\);

-- Location: LCCOMB_X50_Y12_N16
\b2v_inst2|b2v_inst16|o[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|o[2]~25_combout\ = (\b2v_inst2|b2v_inst8|q\(1) & (((\b2v_inst2|b2v_inst8|q\(0))))) # (!\b2v_inst2|b2v_inst8|q\(1) & (\b2v_inst2|b2v_inst4|q\(0) $ (((\b2v_inst2|b2v_inst4|q\(2) & !\b2v_inst2|b2v_inst8|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst4|q\(0),
	datab => \b2v_inst2|b2v_inst4|q\(2),
	datac => \b2v_inst2|b2v_inst8|q\(1),
	datad => \b2v_inst2|b2v_inst8|q\(0),
	combout => \b2v_inst2|b2v_inst16|o[2]~25_combout\);

-- Location: LCCOMB_X50_Y12_N6
\b2v_inst2|b2v_inst16|o[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|o[2]~26_combout\ = (\b2v_inst2|b2v_inst8|q\(1) & (\b2v_inst2|b2v_inst16|Mux8~0_combout\ $ (((\b2v_inst2|b2v_inst4|q\(2) & !\b2v_inst2|b2v_inst16|o[2]~25_combout\))))) # (!\b2v_inst2|b2v_inst8|q\(1) & 
-- (((\b2v_inst2|b2v_inst16|o[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst4|q\(2),
	datab => \b2v_inst2|b2v_inst16|Mux8~0_combout\,
	datac => \b2v_inst2|b2v_inst8|q\(1),
	datad => \b2v_inst2|b2v_inst16|o[2]~25_combout\,
	combout => \b2v_inst2|b2v_inst16|o[2]~26_combout\);

-- Location: LCCOMB_X53_Y11_N10
\b2v_inst2|b2v_inst16|o[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|o[2]~29_combout\ = (\b2v_inst2|b2v_inst8|q\(3) & ((\b2v_inst2|b2v_inst8|q\(2) & ((\b2v_inst2|b2v_inst16|o[2]~26_combout\))) # (!\b2v_inst2|b2v_inst8|q\(2) & (\b2v_inst2|b2v_inst16|o[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst8|q\(3),
	datab => \b2v_inst2|b2v_inst8|q\(2),
	datac => \b2v_inst2|b2v_inst16|o[2]~28_combout\,
	datad => \b2v_inst2|b2v_inst16|o[2]~26_combout\,
	combout => \b2v_inst2|b2v_inst16|o[2]~29_combout\);

-- Location: LCCOMB_X52_Y12_N26
\b2v_inst2|b2v_inst16|o[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|o[2]~21_combout\ = (\b2v_inst2|b2v_inst8|q\(0) & (\b2v_inst2|b2v_inst8|q\(1))) # (!\b2v_inst2|b2v_inst8|q\(0) & ((\b2v_inst2|b2v_inst8|q\(1) & ((\b2v_inst2|b2v_inst16|Mux7~0_combout\))) # (!\b2v_inst2|b2v_inst8|q\(1) & 
-- (\b2v_inst2|b2v_inst16|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst8|q\(0),
	datab => \b2v_inst2|b2v_inst8|q\(1),
	datac => \b2v_inst2|b2v_inst16|Mux4~0_combout\,
	datad => \b2v_inst2|b2v_inst16|Mux7~0_combout\,
	combout => \b2v_inst2|b2v_inst16|o[2]~21_combout\);

-- Location: LCCOMB_X52_Y12_N24
\b2v_inst2|b2v_inst16|o[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|o[2]~22_combout\ = (\b2v_inst2|b2v_inst8|q\(0) & ((\b2v_inst2|b2v_inst16|o[2]~21_combout\ & ((\b2v_inst2|b2v_inst16|Mux9~0_combout\))) # (!\b2v_inst2|b2v_inst16|o[2]~21_combout\ & (\b2v_inst2|b2v_inst16|Mux5~0_combout\)))) # 
-- (!\b2v_inst2|b2v_inst8|q\(0) & (((\b2v_inst2|b2v_inst16|o[2]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst16|Mux5~0_combout\,
	datab => \b2v_inst2|b2v_inst8|q\(0),
	datac => \b2v_inst2|b2v_inst16|o[2]~21_combout\,
	datad => \b2v_inst2|b2v_inst16|Mux9~0_combout\,
	combout => \b2v_inst2|b2v_inst16|o[2]~22_combout\);

-- Location: LCCOMB_X52_Y12_N30
\b2v_inst2|b2v_inst16|o[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|o[2]~23_combout\ = (\b2v_inst2|b2v_inst16|o[2]~3_combout\ & (((\b2v_inst2|b2v_inst16|o[2]~22_combout\) # (!\b2v_inst2|b2v_inst16|o[2]~2_combout\)))) # (!\b2v_inst2|b2v_inst16|o[2]~3_combout\ & (\b2v_inst2|b2v_inst4|q\(2) & 
-- (\b2v_inst2|b2v_inst16|o[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst4|q\(2),
	datab => \b2v_inst2|b2v_inst16|o[2]~3_combout\,
	datac => \b2v_inst2|b2v_inst16|o[2]~2_combout\,
	datad => \b2v_inst2|b2v_inst16|o[2]~22_combout\,
	combout => \b2v_inst2|b2v_inst16|o[2]~23_combout\);

-- Location: LCCOMB_X52_Y12_N8
\b2v_inst2|b2v_inst16|o[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|o[2]~24_combout\ = (\b2v_inst2|b2v_inst16|o[2]~5_combout\ & (\b2v_inst2|b2v_inst4|q\(1) $ (((\b2v_inst2|b2v_inst4|q\(2) & \b2v_inst2|b2v_inst16|o[2]~23_combout\))))) # (!\b2v_inst2|b2v_inst16|o[2]~5_combout\ & 
-- (((\b2v_inst2|b2v_inst16|o[2]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst4|q\(2),
	datab => \b2v_inst2|b2v_inst4|q\(1),
	datac => \b2v_inst2|b2v_inst16|o[2]~23_combout\,
	datad => \b2v_inst2|b2v_inst16|o[2]~5_combout\,
	combout => \b2v_inst2|b2v_inst16|o[2]~24_combout\);

-- Location: LCCOMB_X53_Y8_N18
\b2v_inst2|b2v_inst15|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|Mux7~0_combout\ = \b2v_inst2|b2v_inst3|q\(0) $ (\b2v_inst2|b2v_inst3|q\(1) $ (\b2v_inst2|b2v_inst3|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst3|q\(0),
	datac => \b2v_inst2|b2v_inst3|q\(1),
	datad => \b2v_inst2|b2v_inst3|q\(3),
	combout => \b2v_inst2|b2v_inst15|Mux7~0_combout\);

-- Location: LCCOMB_X53_Y8_N24
\b2v_inst2|b2v_inst15|o[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[2]~28_combout\ = (\b2v_inst2|b2v_inst7|q\(0) & (\b2v_inst2|b2v_inst7|q\(1))) # (!\b2v_inst2|b2v_inst7|q\(0) & ((\b2v_inst2|b2v_inst7|q\(1) & ((\b2v_inst2|b2v_inst15|Mux7~0_combout\))) # (!\b2v_inst2|b2v_inst7|q\(1) & 
-- (\b2v_inst2|b2v_inst15|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst7|q\(0),
	datab => \b2v_inst2|b2v_inst7|q\(1),
	datac => \b2v_inst2|b2v_inst15|Mux4~0_combout\,
	datad => \b2v_inst2|b2v_inst15|Mux7~0_combout\,
	combout => \b2v_inst2|b2v_inst15|o[2]~28_combout\);

-- Location: LCCOMB_X53_Y8_N26
\b2v_inst2|b2v_inst15|o[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[2]~29_combout\ = (\b2v_inst2|b2v_inst7|q\(0) & ((\b2v_inst2|b2v_inst15|o[2]~28_combout\ & (\b2v_inst2|b2v_inst15|Mux9~0_combout\)) # (!\b2v_inst2|b2v_inst15|o[2]~28_combout\ & ((\b2v_inst2|b2v_inst15|Mux5~0_combout\))))) # 
-- (!\b2v_inst2|b2v_inst7|q\(0) & (((\b2v_inst2|b2v_inst15|o[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst15|Mux9~0_combout\,
	datab => \b2v_inst2|b2v_inst15|Mux5~0_combout\,
	datac => \b2v_inst2|b2v_inst7|q\(0),
	datad => \b2v_inst2|b2v_inst15|o[2]~28_combout\,
	combout => \b2v_inst2|b2v_inst15|o[2]~29_combout\);

-- Location: LCCOMB_X53_Y11_N28
\b2v_inst2|b2v_inst15|o[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[2]~30_combout\ = (\b2v_inst2|b2v_inst15|o[1]~7_combout\ & ((\b2v_inst2|b2v_inst15|o[1]~8_combout\ & ((\b2v_inst2|b2v_inst15|o[2]~29_combout\))) # (!\b2v_inst2|b2v_inst15|o[1]~8_combout\ & (\b2v_inst2|b2v_inst3|q\(2))))) # 
-- (!\b2v_inst2|b2v_inst15|o[1]~7_combout\ & (((\b2v_inst2|b2v_inst15|o[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst3|q\(2),
	datab => \b2v_inst2|b2v_inst15|o[1]~7_combout\,
	datac => \b2v_inst2|b2v_inst15|o[2]~29_combout\,
	datad => \b2v_inst2|b2v_inst15|o[1]~8_combout\,
	combout => \b2v_inst2|b2v_inst15|o[2]~30_combout\);

-- Location: LCCOMB_X53_Y11_N22
\b2v_inst2|b2v_inst15|o[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[2]~31_combout\ = (\b2v_inst2|b2v_inst15|o[1]~10_combout\ & (\b2v_inst2|b2v_inst3|q\(1) $ (((\b2v_inst2|b2v_inst3|q\(2) & \b2v_inst2|b2v_inst15|o[2]~30_combout\))))) # (!\b2v_inst2|b2v_inst15|o[1]~10_combout\ & 
-- (((\b2v_inst2|b2v_inst15|o[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst15|o[1]~10_combout\,
	datab => \b2v_inst2|b2v_inst3|q\(1),
	datac => \b2v_inst2|b2v_inst3|q\(2),
	datad => \b2v_inst2|b2v_inst15|o[2]~30_combout\,
	combout => \b2v_inst2|b2v_inst15|o[2]~31_combout\);

-- Location: LCCOMB_X54_Y8_N30
\b2v_inst2|b2v_inst15|o[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[2]~23_combout\ = (\b2v_inst2|b2v_inst7|q\(1) & (((\b2v_inst2|b2v_inst7|q\(0))))) # (!\b2v_inst2|b2v_inst7|q\(1) & (\b2v_inst2|b2v_inst3|q\(0) $ (((\b2v_inst2|b2v_inst3|q\(2) & !\b2v_inst2|b2v_inst7|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst3|q\(2),
	datab => \b2v_inst2|b2v_inst7|q\(0),
	datac => \b2v_inst2|b2v_inst7|q\(1),
	datad => \b2v_inst2|b2v_inst3|q\(0),
	combout => \b2v_inst2|b2v_inst15|o[2]~23_combout\);

-- Location: LCCOMB_X54_Y8_N20
\b2v_inst2|b2v_inst15|o[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[2]~24_combout\ = (\b2v_inst2|b2v_inst7|q\(1) & (\b2v_inst2|b2v_inst15|Mux8~0_combout\ $ (((\b2v_inst2|b2v_inst3|q\(2) & !\b2v_inst2|b2v_inst15|o[2]~23_combout\))))) # (!\b2v_inst2|b2v_inst7|q\(1) & 
-- (((\b2v_inst2|b2v_inst15|o[2]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst3|q\(2),
	datab => \b2v_inst2|b2v_inst7|q\(1),
	datac => \b2v_inst2|b2v_inst15|o[2]~23_combout\,
	datad => \b2v_inst2|b2v_inst15|Mux8~0_combout\,
	combout => \b2v_inst2|b2v_inst15|o[2]~24_combout\);

-- Location: LCCOMB_X53_Y8_N16
\b2v_inst2|b2v_inst15|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|Mux0~0_combout\ = \b2v_inst2|b2v_inst3|q\(2) $ (\b2v_inst2|b2v_inst3|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|b2v_inst3|q\(2),
	datad => \b2v_inst2|b2v_inst3|q\(3),
	combout => \b2v_inst2|b2v_inst15|Mux0~0_combout\);

-- Location: LCCOMB_X53_Y8_N22
\b2v_inst2|b2v_inst15|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|Mux3~0_combout\ = \b2v_inst2|b2v_inst3|q\(2) $ (\b2v_inst2|b2v_inst3|q\(1) $ (\b2v_inst2|b2v_inst3|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst3|q\(2),
	datac => \b2v_inst2|b2v_inst3|q\(1),
	datad => \b2v_inst2|b2v_inst3|q\(3),
	combout => \b2v_inst2|b2v_inst15|Mux3~0_combout\);

-- Location: LCCOMB_X54_Y8_N18
\b2v_inst2|b2v_inst15|o[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[2]~25_combout\ = (\b2v_inst2|b2v_inst7|q\(1) & ((\b2v_inst2|b2v_inst7|q\(0)) # ((\b2v_inst2|b2v_inst15|Mux3~0_combout\)))) # (!\b2v_inst2|b2v_inst7|q\(1) & (!\b2v_inst2|b2v_inst7|q\(0) & (\b2v_inst2|b2v_inst15|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst7|q\(1),
	datab => \b2v_inst2|b2v_inst7|q\(0),
	datac => \b2v_inst2|b2v_inst15|Mux0~0_combout\,
	datad => \b2v_inst2|b2v_inst15|Mux3~0_combout\,
	combout => \b2v_inst2|b2v_inst15|o[2]~25_combout\);

-- Location: LCCOMB_X54_Y8_N28
\b2v_inst2|b2v_inst15|o[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[2]~26_combout\ = (\b2v_inst2|b2v_inst7|q\(0) & (\b2v_inst2|b2v_inst3|q\(3) $ (((\b2v_inst2|b2v_inst3|q\(1) & \b2v_inst2|b2v_inst15|o[2]~25_combout\))))) # (!\b2v_inst2|b2v_inst7|q\(0) & (((\b2v_inst2|b2v_inst15|o[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst3|q\(1),
	datab => \b2v_inst2|b2v_inst7|q\(0),
	datac => \b2v_inst2|b2v_inst3|q\(3),
	datad => \b2v_inst2|b2v_inst15|o[2]~25_combout\,
	combout => \b2v_inst2|b2v_inst15|o[2]~26_combout\);

-- Location: LCCOMB_X54_Y8_N22
\b2v_inst2|b2v_inst15|o[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[2]~27_combout\ = (\b2v_inst2|b2v_inst7|q\(3) & ((\b2v_inst2|b2v_inst7|q\(2) & (\b2v_inst2|b2v_inst15|o[2]~24_combout\)) # (!\b2v_inst2|b2v_inst7|q\(2) & ((\b2v_inst2|b2v_inst15|o[2]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst7|q\(2),
	datab => \b2v_inst2|b2v_inst15|o[2]~24_combout\,
	datac => \b2v_inst2|b2v_inst7|q\(3),
	datad => \b2v_inst2|b2v_inst15|o[2]~26_combout\,
	combout => \b2v_inst2|b2v_inst15|o[2]~27_combout\);

-- Location: LCCOMB_X53_Y11_N24
\b2v_inst2|b2v_inst15|o[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[2]~32_combout\ = (\b2v_inst2|b2v_inst15|o[2]~27_combout\) # ((!\b2v_inst2|b2v_inst7|q\(3) & \b2v_inst2|b2v_inst15|o[2]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst7|q\(3),
	datac => \b2v_inst2|b2v_inst15|o[2]~31_combout\,
	datad => \b2v_inst2|b2v_inst15|o[2]~27_combout\,
	combout => \b2v_inst2|b2v_inst15|o[2]~32_combout\);

-- Location: LCCOMB_X53_Y11_N30
\b2v_inst2|b2v_inst37|c[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst37|c[2]~6_combout\ = \b2v_inst2|b2v_inst15|o[2]~32_combout\ $ (((\b2v_inst2|b2v_inst16|o[2]~29_combout\) # ((!\b2v_inst2|b2v_inst8|q\(3) & \b2v_inst2|b2v_inst16|o[2]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst16|o[2]~29_combout\,
	datab => \b2v_inst2|b2v_inst8|q\(3),
	datac => \b2v_inst2|b2v_inst16|o[2]~24_combout\,
	datad => \b2v_inst2|b2v_inst15|o[2]~32_combout\,
	combout => \b2v_inst2|b2v_inst37|c[2]~6_combout\);

-- Location: LCCOMB_X53_Y11_N12
\b2v_inst2|b2v_inst37|c[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst37|c[2]~8_combout\ = \b2v_inst2|b2v_inst37|c[2]~6_combout\ $ (\b2v_inst2|b2v_inst37|c[2]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|b2v_inst37|c[2]~6_combout\,
	datad => \b2v_inst2|b2v_inst37|c[2]~7_combout\,
	combout => \b2v_inst2|b2v_inst37|c[2]~8_combout\);

-- Location: FF_X53_Y11_N13
\b2v_inst2|b2v_inst26|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst37|c[2]~8_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	ena => \b2v_inst|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst26|q\(2));

-- Location: LCCOMB_X53_Y8_N10
\b2v_inst2|b2v_inst32|o[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst32|o[2]~3_combout\ = (\b2v_inst2|b2v_inst26|q\(0) & (\b2v_inst2|b2v_inst26|q\(1) $ (((\b2v_inst2|b2v_inst26|q\(2) & \b2v_inst2|b2v_inst26|q\(3)))))) # (!\b2v_inst2|b2v_inst26|q\(0) & (\b2v_inst2|b2v_inst26|q\(2) $ 
-- ((\b2v_inst2|b2v_inst26|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst26|q\(2),
	datab => \b2v_inst2|b2v_inst26|q\(0),
	datac => \b2v_inst2|b2v_inst26|q\(3),
	datad => \b2v_inst2|b2v_inst26|q\(1),
	combout => \b2v_inst2|b2v_inst32|o[2]~3_combout\);

-- Location: LCCOMB_X54_Y10_N26
\b2v_inst2|b2v_inst21|o[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[3]~9_combout\ = (\b2v_inst2|b2v_inst32|o[1]~2_combout\ & ((\b2v_inst2|b2v_inst32|o[0]~1_combout\) # ((\b2v_inst2|b2v_inst21|Mux5~0_combout\)))) # (!\b2v_inst2|b2v_inst32|o[1]~2_combout\ & (!\b2v_inst2|b2v_inst32|o[0]~1_combout\ & 
-- ((\b2v_inst2|b2v_inst21|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datab => \b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datac => \b2v_inst2|b2v_inst21|Mux5~0_combout\,
	datad => \b2v_inst2|b2v_inst21|Mux4~4_combout\,
	combout => \b2v_inst2|b2v_inst21|o[3]~9_combout\);

-- Location: LCCOMB_X54_Y10_N4
\b2v_inst2|b2v_inst21|o[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[3]~10_combout\ = (\b2v_inst2|b2v_inst32|o[0]~1_combout\ & (\b2v_inst2|b2v_inst37|c[0]~2_combout\ $ (((\b2v_inst2|b2v_inst21|o[3]~9_combout\ & \b2v_inst2|b2v_inst37|c[2]~8_combout\))))) # (!\b2v_inst2|b2v_inst32|o[0]~1_combout\ & 
-- (((\b2v_inst2|b2v_inst21|o[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst37|c[0]~2_combout\,
	datab => \b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datac => \b2v_inst2|b2v_inst21|o[3]~9_combout\,
	datad => \b2v_inst2|b2v_inst37|c[2]~8_combout\,
	combout => \b2v_inst2|b2v_inst21|o[3]~10_combout\);

-- Location: LCCOMB_X55_Y10_N14
\b2v_inst2|b2v_inst21|o[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[3]~7_combout\ = (\b2v_inst2|b2v_inst32|o[1]~2_combout\ & (\b2v_inst2|b2v_inst32|o[0]~1_combout\)) # (!\b2v_inst2|b2v_inst32|o[1]~2_combout\ & (\b2v_inst2|b2v_inst21|Mux7~2_combout\ $ (((!\b2v_inst2|b2v_inst32|o[0]~1_combout\ & 
-- \b2v_inst2|b2v_inst37|c[3]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datab => \b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst2|b2v_inst37|c[3]~11_combout\,
	datad => \b2v_inst2|b2v_inst21|Mux7~2_combout\,
	combout => \b2v_inst2|b2v_inst21|o[3]~7_combout\);

-- Location: LCCOMB_X54_Y10_N0
\b2v_inst2|b2v_inst21|o[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[3]~8_combout\ = (\b2v_inst2|b2v_inst32|o[1]~2_combout\ & ((\b2v_inst2|b2v_inst21|o[3]~7_combout\ & ((\b2v_inst2|b2v_inst21|Mux10~2_combout\))) # (!\b2v_inst2|b2v_inst21|o[3]~7_combout\ & (\b2v_inst2|b2v_inst21|Mux9~0_combout\)))) # 
-- (!\b2v_inst2|b2v_inst32|o[1]~2_combout\ & (((\b2v_inst2|b2v_inst21|o[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datab => \b2v_inst2|b2v_inst21|Mux9~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[3]~7_combout\,
	datad => \b2v_inst2|b2v_inst21|Mux10~2_combout\,
	combout => \b2v_inst2|b2v_inst21|o[3]~8_combout\);

-- Location: LCCOMB_X54_Y10_N10
\b2v_inst2|b2v_inst21|o[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[3]~11_combout\ = (\b2v_inst2|b2v_inst32|o[3]~0_combout\ & ((\b2v_inst2|b2v_inst32|o[2]~3_combout\ & ((\b2v_inst2|b2v_inst21|o[3]~8_combout\))) # (!\b2v_inst2|b2v_inst32|o[2]~3_combout\ & (\b2v_inst2|b2v_inst21|o[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst32|o[2]~3_combout\,
	datab => \b2v_inst2|b2v_inst21|o[3]~10_combout\,
	datac => \b2v_inst2|b2v_inst32|o[3]~0_combout\,
	datad => \b2v_inst2|b2v_inst21|o[3]~8_combout\,
	combout => \b2v_inst2|b2v_inst21|o[3]~11_combout\);

-- Location: LCCOMB_X54_Y10_N12
\b2v_inst2|b2v_inst7|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst7|q[3]~1_combout\ = (\b2v_inst|WideOr2~0_combout\ & ((\b2v_inst2|b2v_inst21|o[3]~11_combout\) # ((!\b2v_inst2|b2v_inst32|o[3]~0_combout\ & \b2v_inst2|b2v_inst21|o[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst21|o[3]~11_combout\,
	datab => \b2v_inst2|b2v_inst32|o[3]~0_combout\,
	datac => \b2v_inst|WideOr2~0_combout\,
	datad => \b2v_inst2|b2v_inst21|o[3]~6_combout\,
	combout => \b2v_inst2|b2v_inst7|q[3]~1_combout\);

-- Location: LCCOMB_X55_Y9_N28
\b2v_inst2|b2v_inst19|o[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|o[3]~4_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst2|b2v_inst19|Mux7~0_combout\ $ (((\b2v_inst2|b2v_inst11|q\(3) & 
-- !\b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst19|Mux7~0_combout\,
	datab => \b2v_inst2|b2v_inst11|q\(3),
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst19|o[3]~4_combout\);

-- Location: LCCOMB_X55_Y9_N10
\b2v_inst2|b2v_inst19|o[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|o[3]~5_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst2|b2v_inst19|o[3]~4_combout\ & (\b2v_inst2|b2v_inst19|Mux10~0_combout\)) # (!\b2v_inst2|b2v_inst19|o[3]~4_combout\ & ((\b2v_inst2|b2v_inst19|Mux9~0_combout\))))) 
-- # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst2|b2v_inst19|o[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst19|Mux10~0_combout\,
	datab => \b2v_inst2|b2v_inst19|Mux9~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst2|b2v_inst19|o[3]~4_combout\,
	combout => \b2v_inst2|b2v_inst19|o[3]~5_combout\);

-- Location: LCCOMB_X53_Y9_N28
\b2v_inst2|b2v_inst19|o[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|o[3]~6_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- (\b2v_inst2|b2v_inst19|Mux5~0_combout\)) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst2|b2v_inst19|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst19|Mux5~0_combout\,
	datab => \b2v_inst2|b2v_inst19|Mux4~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst19|o[3]~6_combout\);

-- Location: LCCOMB_X53_Y9_N14
\b2v_inst2|b2v_inst19|o[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|o[3]~7_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst2|b2v_inst11|q\(0) $ (((\b2v_inst2|b2v_inst11|q\(2) & \b2v_inst2|b2v_inst19|o[3]~6_combout\))))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & 
-- (((\b2v_inst2|b2v_inst19|o[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst11|q\(2),
	datab => \b2v_inst2|b2v_inst11|q\(0),
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst19|o[3]~6_combout\,
	combout => \b2v_inst2|b2v_inst19|o[3]~7_combout\);

-- Location: LCCOMB_X54_Y9_N12
\b2v_inst2|b2v_inst7|q[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst7|q[3]~2_combout\ = (\b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst2|b2v_inst21|o[2]~41_combout\ & (\b2v_inst2|b2v_inst19|o[3]~5_combout\)) # (!\b2v_inst2|b2v_inst21|o[2]~41_combout\ & ((\b2v_inst2|b2v_inst19|o[3]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datab => \b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datac => \b2v_inst2|b2v_inst19|o[3]~5_combout\,
	datad => \b2v_inst2|b2v_inst19|o[3]~7_combout\,
	combout => \b2v_inst2|b2v_inst7|q[3]~2_combout\);

-- Location: LCCOMB_X54_Y9_N16
\b2v_inst2|b2v_inst19|o[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|o[3]~0_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst2|b2v_inst11|q\(1) $ (((\b2v_inst2|b2v_inst11|q\(3) & 
-- \b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst11|q\(1),
	datab => \b2v_inst2|b2v_inst11|q\(3),
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst19|o[3]~0_combout\);

-- Location: LCCOMB_X54_Y9_N18
\b2v_inst2|b2v_inst19|o[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|o[3]~1_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst2|b2v_inst19|Mux2~0_combout\ $ (((\b2v_inst2|b2v_inst11|q\(3) & \b2v_inst2|b2v_inst19|o[3]~0_combout\))))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- (((\b2v_inst2|b2v_inst19|o[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst11|q\(3),
	datab => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datac => \b2v_inst2|b2v_inst19|Mux2~0_combout\,
	datad => \b2v_inst2|b2v_inst19|o[3]~0_combout\,
	combout => \b2v_inst2|b2v_inst19|o[3]~1_combout\);

-- Location: LCCOMB_X54_Y9_N0
\b2v_inst2|b2v_inst19|o[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|o[3]~2_combout\ = (\b2v_inst2|b2v_inst18|o[2]~2_combout\ & (((\b2v_inst2|b2v_inst19|o[3]~1_combout\) # (!\b2v_inst2|b2v_inst18|o[2]~1_combout\)))) # (!\b2v_inst2|b2v_inst18|o[2]~2_combout\ & (\b2v_inst2|b2v_inst11|q\(3) & 
-- (\b2v_inst2|b2v_inst18|o[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst18|o[2]~2_combout\,
	datab => \b2v_inst2|b2v_inst11|q\(3),
	datac => \b2v_inst2|b2v_inst18|o[2]~1_combout\,
	datad => \b2v_inst2|b2v_inst19|o[3]~1_combout\,
	combout => \b2v_inst2|b2v_inst19|o[3]~2_combout\);

-- Location: LCCOMB_X54_Y9_N2
\b2v_inst2|b2v_inst19|o[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst19|o[3]~3_combout\ = (\b2v_inst2|b2v_inst18|o[2]~0_combout\ & (\b2v_inst2|b2v_inst11|q\(2) $ (((\b2v_inst2|b2v_inst11|q\(3) & \b2v_inst2|b2v_inst19|o[3]~2_combout\))))) # (!\b2v_inst2|b2v_inst18|o[2]~0_combout\ & 
-- (((\b2v_inst2|b2v_inst19|o[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst11|q\(3),
	datab => \b2v_inst2|b2v_inst11|q\(2),
	datac => \b2v_inst2|b2v_inst18|o[2]~0_combout\,
	datad => \b2v_inst2|b2v_inst19|o[3]~2_combout\,
	combout => \b2v_inst2|b2v_inst19|o[3]~3_combout\);

-- Location: LCCOMB_X54_Y9_N4
\b2v_inst2|b2v_inst7|q[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst7|q[3]~3_combout\ = \b2v_inst2|b2v_inst7|q\(3) $ (((\b2v_inst2|b2v_inst7|q[3]~2_combout\) # ((\b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst2|b2v_inst19|o[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst7|q[3]~2_combout\,
	datab => \b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datac => \b2v_inst2|b2v_inst7|q\(3),
	datad => \b2v_inst2|b2v_inst19|o[3]~3_combout\,
	combout => \b2v_inst2|b2v_inst7|q[3]~3_combout\);

-- Location: FF_X54_Y9_N5
\b2v_inst2|b2v_inst7|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst7|q[3]~3_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst7|q\(3));

-- Location: LCCOMB_X52_Y8_N12
\b2v_inst2|b2v_inst15|o[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[1]~15_combout\ = (\b2v_inst2|b2v_inst7|q\(1) & (((\b2v_inst2|b2v_inst7|q\(0)) # (\b2v_inst2|b2v_inst15|Mux9~0_combout\)))) # (!\b2v_inst2|b2v_inst7|q\(1) & (\b2v_inst2|b2v_inst15|Mux2~0_combout\ & (!\b2v_inst2|b2v_inst7|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst15|Mux2~0_combout\,
	datab => \b2v_inst2|b2v_inst7|q\(1),
	datac => \b2v_inst2|b2v_inst7|q\(0),
	datad => \b2v_inst2|b2v_inst15|Mux9~0_combout\,
	combout => \b2v_inst2|b2v_inst15|o[1]~15_combout\);

-- Location: LCCOMB_X52_Y8_N30
\b2v_inst2|b2v_inst15|o[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[1]~16_combout\ = (\b2v_inst2|b2v_inst7|q\(0) & ((\b2v_inst2|b2v_inst15|o[1]~15_combout\ & ((\b2v_inst2|b2v_inst15|Mux5~0_combout\))) # (!\b2v_inst2|b2v_inst15|o[1]~15_combout\ & (\b2v_inst2|b2v_inst3|q\(2))))) # 
-- (!\b2v_inst2|b2v_inst7|q\(0) & (((\b2v_inst2|b2v_inst15|o[1]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst3|q\(2),
	datab => \b2v_inst2|b2v_inst15|Mux5~0_combout\,
	datac => \b2v_inst2|b2v_inst7|q\(0),
	datad => \b2v_inst2|b2v_inst15|o[1]~15_combout\,
	combout => \b2v_inst2|b2v_inst15|o[1]~16_combout\);

-- Location: LCCOMB_X54_Y8_N10
\b2v_inst2|b2v_inst15|o[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[1]~13_combout\ = (\b2v_inst2|b2v_inst7|q\(1) & (\b2v_inst2|b2v_inst7|q\(0))) # (!\b2v_inst2|b2v_inst7|q\(1) & (\b2v_inst2|b2v_inst3|q\(3) $ (((!\b2v_inst2|b2v_inst7|q\(0) & \b2v_inst2|b2v_inst3|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst7|q\(1),
	datab => \b2v_inst2|b2v_inst7|q\(0),
	datac => \b2v_inst2|b2v_inst3|q\(3),
	datad => \b2v_inst2|b2v_inst3|q\(1),
	combout => \b2v_inst2|b2v_inst15|o[1]~13_combout\);

-- Location: LCCOMB_X54_Y8_N24
\b2v_inst2|b2v_inst15|o[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[1]~14_combout\ = (\b2v_inst2|b2v_inst7|q\(1) & (\b2v_inst2|b2v_inst3|q\(0) $ (((\b2v_inst2|b2v_inst3|q\(1) & !\b2v_inst2|b2v_inst15|o[1]~13_combout\))))) # (!\b2v_inst2|b2v_inst7|q\(1) & 
-- (((\b2v_inst2|b2v_inst15|o[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst3|q\(1),
	datab => \b2v_inst2|b2v_inst3|q\(0),
	datac => \b2v_inst2|b2v_inst7|q\(1),
	datad => \b2v_inst2|b2v_inst15|o[1]~13_combout\,
	combout => \b2v_inst2|b2v_inst15|o[1]~14_combout\);

-- Location: LCCOMB_X52_Y8_N4
\b2v_inst2|b2v_inst15|o[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[1]~17_combout\ = (\b2v_inst2|b2v_inst7|q\(3) & ((\b2v_inst2|b2v_inst7|q\(2) & ((\b2v_inst2|b2v_inst15|o[1]~14_combout\))) # (!\b2v_inst2|b2v_inst7|q\(2) & (\b2v_inst2|b2v_inst15|o[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst7|q\(3),
	datab => \b2v_inst2|b2v_inst7|q\(2),
	datac => \b2v_inst2|b2v_inst15|o[1]~16_combout\,
	datad => \b2v_inst2|b2v_inst15|o[1]~14_combout\,
	combout => \b2v_inst2|b2v_inst15|o[1]~17_combout\);

-- Location: LCCOMB_X52_Y8_N26
\b2v_inst2|b2v_inst15|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|Mux6~0_combout\ = \b2v_inst2|b2v_inst3|q\(2) $ (\b2v_inst2|b2v_inst3|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst3|q\(2),
	datac => \b2v_inst2|b2v_inst3|q\(0),
	combout => \b2v_inst2|b2v_inst15|Mux6~0_combout\);

-- Location: LCCOMB_X52_Y8_N28
\b2v_inst2|b2v_inst15|o[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[1]~18_combout\ = (\b2v_inst2|b2v_inst7|q\(0) & ((\b2v_inst2|b2v_inst15|Mux3~0_combout\) # ((\b2v_inst2|b2v_inst7|q\(1))))) # (!\b2v_inst2|b2v_inst7|q\(0) & (((!\b2v_inst2|b2v_inst7|q\(1) & \b2v_inst2|b2v_inst15|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst7|q\(0),
	datab => \b2v_inst2|b2v_inst15|Mux3~0_combout\,
	datac => \b2v_inst2|b2v_inst7|q\(1),
	datad => \b2v_inst2|b2v_inst15|Mux0~0_combout\,
	combout => \b2v_inst2|b2v_inst15|o[1]~18_combout\);

-- Location: LCCOMB_X52_Y8_N14
\b2v_inst2|b2v_inst15|o[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[1]~19_combout\ = (\b2v_inst2|b2v_inst7|q\(1) & ((\b2v_inst2|b2v_inst15|o[1]~18_combout\ & ((\b2v_inst2|b2v_inst15|Mux10~0_combout\))) # (!\b2v_inst2|b2v_inst15|o[1]~18_combout\ & (\b2v_inst2|b2v_inst15|Mux6~0_combout\)))) # 
-- (!\b2v_inst2|b2v_inst7|q\(1) & (((\b2v_inst2|b2v_inst15|o[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst15|Mux6~0_combout\,
	datab => \b2v_inst2|b2v_inst7|q\(1),
	datac => \b2v_inst2|b2v_inst15|Mux10~0_combout\,
	datad => \b2v_inst2|b2v_inst15|o[1]~18_combout\,
	combout => \b2v_inst2|b2v_inst15|o[1]~19_combout\);

-- Location: LCCOMB_X52_Y8_N24
\b2v_inst2|b2v_inst15|o[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[1]~20_combout\ = (\b2v_inst2|b2v_inst15|o[1]~7_combout\ & ((\b2v_inst2|b2v_inst15|o[1]~8_combout\ & ((\b2v_inst2|b2v_inst15|o[1]~19_combout\))) # (!\b2v_inst2|b2v_inst15|o[1]~8_combout\ & (\b2v_inst2|b2v_inst3|q\(1))))) # 
-- (!\b2v_inst2|b2v_inst15|o[1]~7_combout\ & (((\b2v_inst2|b2v_inst15|o[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst3|q\(1),
	datab => \b2v_inst2|b2v_inst15|o[1]~7_combout\,
	datac => \b2v_inst2|b2v_inst15|o[1]~19_combout\,
	datad => \b2v_inst2|b2v_inst15|o[1]~8_combout\,
	combout => \b2v_inst2|b2v_inst15|o[1]~20_combout\);

-- Location: LCCOMB_X52_Y8_N2
\b2v_inst2|b2v_inst15|o[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[1]~21_combout\ = (\b2v_inst2|b2v_inst15|o[1]~10_combout\ & ((\b2v_inst2|b2v_inst15|o[1]~20_combout\ & ((\b2v_inst2|b2v_inst15|Mux7~0_combout\))) # (!\b2v_inst2|b2v_inst15|o[1]~20_combout\ & 
-- (\b2v_inst2|b2v_inst15|Mux4~0_combout\)))) # (!\b2v_inst2|b2v_inst15|o[1]~10_combout\ & (((\b2v_inst2|b2v_inst15|o[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst15|Mux4~0_combout\,
	datab => \b2v_inst2|b2v_inst15|Mux7~0_combout\,
	datac => \b2v_inst2|b2v_inst15|o[1]~10_combout\,
	datad => \b2v_inst2|b2v_inst15|o[1]~20_combout\,
	combout => \b2v_inst2|b2v_inst15|o[1]~21_combout\);

-- Location: LCCOMB_X52_Y8_N16
\b2v_inst2|b2v_inst15|o[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[1]~22_combout\ = (\b2v_inst2|b2v_inst15|o[1]~17_combout\) # ((!\b2v_inst2|b2v_inst7|q\(3) & \b2v_inst2|b2v_inst15|o[1]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst7|q\(3),
	datac => \b2v_inst2|b2v_inst15|o[1]~17_combout\,
	datad => \b2v_inst2|b2v_inst15|o[1]~21_combout\,
	combout => \b2v_inst2|b2v_inst15|o[1]~22_combout\);

-- Location: LCCOMB_X50_Y10_N4
\b2v_inst2|b2v_inst37|c[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst37|c[1]~3_combout\ = \b2v_inst2|b2v_inst|q\(1) $ (((!\b2v_inst2|b2v_inst14|o[1]~20_combout\ & ((\b2v_inst2|b2v_inst6|q\(3)) # (!\b2v_inst2|b2v_inst14|o[1]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst6|q\(3),
	datab => \b2v_inst2|b2v_inst14|o[1]~20_combout\,
	datac => \b2v_inst2|b2v_inst|q\(1),
	datad => \b2v_inst2|b2v_inst14|o[1]~15_combout\,
	combout => \b2v_inst2|b2v_inst37|c[1]~3_combout\);

-- Location: LCCOMB_X51_Y12_N24
\b2v_inst2|b2v_inst37|c[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst37|c[1]~4_combout\ = (\b2v_inst2|b2v_inst16|o[1]~20_combout\) # ((!\b2v_inst2|b2v_inst8|q\(3) & \b2v_inst2|b2v_inst16|o[1]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst8|q\(3),
	datac => \b2v_inst2|b2v_inst16|o[1]~20_combout\,
	datad => \b2v_inst2|b2v_inst16|o[1]~15_combout\,
	combout => \b2v_inst2|b2v_inst37|c[1]~4_combout\);

-- Location: LCCOMB_X50_Y10_N8
\b2v_inst2|b2v_inst37|c[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst37|c[1]~5_combout\ = \b2v_inst2|b2v_inst15|o[1]~22_combout\ $ (\b2v_inst2|b2v_inst37|c[1]~3_combout\ $ (\b2v_inst2|b2v_inst37|c[1]~4_combout\ $ (!\b2v_inst2|b2v_inst13|o[1]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst15|o[1]~22_combout\,
	datab => \b2v_inst2|b2v_inst37|c[1]~3_combout\,
	datac => \b2v_inst2|b2v_inst37|c[1]~4_combout\,
	datad => \b2v_inst2|b2v_inst13|o[1]~22_combout\,
	combout => \b2v_inst2|b2v_inst37|c[1]~5_combout\);

-- Location: FF_X51_Y10_N11
\b2v_inst2|b2v_inst26|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst2|b2v_inst37|c[1]~5_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	sload => VCC,
	ena => \b2v_inst|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst26|q\(1));

-- Location: LCCOMB_X52_Y10_N30
\b2v_inst2|b2v_inst32|o[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst32|o[3]~0_combout\ = (\b2v_inst2|b2v_inst26|q\(3) & (\b2v_inst2|b2v_inst26|q\(0) $ (((!\b2v_inst2|b2v_inst26|q\(2)) # (!\b2v_inst2|b2v_inst26|q\(1)))))) # (!\b2v_inst2|b2v_inst26|q\(3) & ((\b2v_inst2|b2v_inst26|q\(1) $ 
-- (\b2v_inst2|b2v_inst26|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst26|q\(0),
	datab => \b2v_inst2|b2v_inst26|q\(1),
	datac => \b2v_inst2|b2v_inst26|q\(2),
	datad => \b2v_inst2|b2v_inst26|q\(3),
	combout => \b2v_inst2|b2v_inst32|o[3]~0_combout\);

-- Location: LCCOMB_X54_Y10_N2
\b2v_inst2|b2v_inst21|o[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[2]~32_combout\ = (\b2v_inst2|b2v_inst32|o[1]~2_combout\ & (\b2v_inst2|b2v_inst32|o[0]~1_combout\)) # (!\b2v_inst2|b2v_inst32|o[1]~2_combout\ & (\b2v_inst2|b2v_inst37|c[0]~2_combout\ $ (((!\b2v_inst2|b2v_inst32|o[0]~1_combout\ & 
-- \b2v_inst2|b2v_inst37|c[2]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datab => \b2v_inst2|b2v_inst37|c[0]~2_combout\,
	datac => \b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datad => \b2v_inst2|b2v_inst37|c[2]~8_combout\,
	combout => \b2v_inst2|b2v_inst21|o[2]~32_combout\);

-- Location: LCCOMB_X54_Y10_N8
\b2v_inst2|b2v_inst21|o[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[2]~33_combout\ = (\b2v_inst2|b2v_inst32|o[1]~2_combout\ & (\b2v_inst2|b2v_inst21|Mux7~2_combout\ $ (((\b2v_inst2|b2v_inst37|c[2]~8_combout\ & !\b2v_inst2|b2v_inst21|o[2]~32_combout\))))) # (!\b2v_inst2|b2v_inst32|o[1]~2_combout\ & 
-- (((\b2v_inst2|b2v_inst21|o[2]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst37|c[2]~8_combout\,
	datab => \b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst2|b2v_inst21|Mux7~2_combout\,
	datad => \b2v_inst2|b2v_inst21|o[2]~32_combout\,
	combout => \b2v_inst2|b2v_inst21|o[2]~33_combout\);

-- Location: LCCOMB_X50_Y10_N10
\b2v_inst2|b2v_inst21|o[2]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[2]~34_combout\ = (\b2v_inst2|b2v_inst32|o[1]~2_combout\ & ((\b2v_inst2|b2v_inst32|o[0]~1_combout\) # ((\b2v_inst2|b2v_inst21|Mux3~0_combout\)))) # (!\b2v_inst2|b2v_inst32|o[1]~2_combout\ & (!\b2v_inst2|b2v_inst32|o[0]~1_combout\ & 
-- ((\b2v_inst2|b2v_inst21|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datab => \b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datac => \b2v_inst2|b2v_inst21|Mux3~0_combout\,
	datad => \b2v_inst2|b2v_inst21|Mux0~0_combout\,
	combout => \b2v_inst2|b2v_inst21|o[2]~34_combout\);

-- Location: LCCOMB_X50_Y10_N24
\b2v_inst2|b2v_inst21|o[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[2]~35_combout\ = (\b2v_inst2|b2v_inst32|o[0]~1_combout\ & (\b2v_inst2|b2v_inst37|c[3]~11_combout\ $ (((\b2v_inst2|b2v_inst37|c[1]~5_combout\ & \b2v_inst2|b2v_inst21|o[2]~34_combout\))))) # (!\b2v_inst2|b2v_inst32|o[0]~1_combout\ & 
-- (((\b2v_inst2|b2v_inst21|o[2]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst37|c[3]~11_combout\,
	datab => \b2v_inst2|b2v_inst37|c[1]~5_combout\,
	datac => \b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datad => \b2v_inst2|b2v_inst21|o[2]~34_combout\,
	combout => \b2v_inst2|b2v_inst21|o[2]~35_combout\);

-- Location: LCCOMB_X54_Y10_N14
\b2v_inst2|b2v_inst21|o[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[2]~36_combout\ = (\b2v_inst2|b2v_inst32|o[3]~0_combout\ & ((\b2v_inst2|b2v_inst32|o[2]~3_combout\ & (\b2v_inst2|b2v_inst21|o[2]~33_combout\)) # (!\b2v_inst2|b2v_inst32|o[2]~3_combout\ & ((\b2v_inst2|b2v_inst21|o[2]~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst32|o[2]~3_combout\,
	datab => \b2v_inst2|b2v_inst32|o[3]~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[2]~33_combout\,
	datad => \b2v_inst2|b2v_inst21|o[2]~35_combout\,
	combout => \b2v_inst2|b2v_inst21|o[2]~36_combout\);

-- Location: LCCOMB_X53_Y10_N30
\b2v_inst2|b2v_inst21|o[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[2]~37_combout\ = (\b2v_inst2|b2v_inst32|o[0]~1_combout\ & ((\b2v_inst2|b2v_inst32|o[1]~2_combout\) # ((\b2v_inst2|b2v_inst21|Mux5~0_combout\)))) # (!\b2v_inst2|b2v_inst32|o[0]~1_combout\ & (!\b2v_inst2|b2v_inst32|o[1]~2_combout\ & 
-- (\b2v_inst2|b2v_inst21|Mux4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst32|o[0]~1_combout\,
	datab => \b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst2|b2v_inst21|Mux4~4_combout\,
	datad => \b2v_inst2|b2v_inst21|Mux5~0_combout\,
	combout => \b2v_inst2|b2v_inst21|o[2]~37_combout\);

-- Location: LCCOMB_X53_Y10_N20
\b2v_inst2|b2v_inst21|o[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[2]~38_combout\ = (\b2v_inst2|b2v_inst21|o[2]~37_combout\ & (((\b2v_inst2|b2v_inst21|Mux9~0_combout\)) # (!\b2v_inst2|b2v_inst32|o[1]~2_combout\))) # (!\b2v_inst2|b2v_inst21|o[2]~37_combout\ & (\b2v_inst2|b2v_inst32|o[1]~2_combout\ 
-- & (\b2v_inst2|b2v_inst21|Mux7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst21|o[2]~37_combout\,
	datab => \b2v_inst2|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst2|b2v_inst21|Mux7~3_combout\,
	datad => \b2v_inst2|b2v_inst21|Mux9~0_combout\,
	combout => \b2v_inst2|b2v_inst21|o[2]~38_combout\);

-- Location: LCCOMB_X53_Y10_N2
\b2v_inst2|b2v_inst21|o[2]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[2]~39_combout\ = (\b2v_inst2|b2v_inst21|o[0]~2_combout\ & ((\b2v_inst2|b2v_inst21|o[0]~3_combout\ & ((\b2v_inst2|b2v_inst21|o[2]~38_combout\))) # (!\b2v_inst2|b2v_inst21|o[0]~3_combout\ & (\b2v_inst2|b2v_inst37|c[2]~8_combout\)))) 
-- # (!\b2v_inst2|b2v_inst21|o[0]~2_combout\ & (\b2v_inst2|b2v_inst21|o[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst21|o[0]~2_combout\,
	datab => \b2v_inst2|b2v_inst21|o[0]~3_combout\,
	datac => \b2v_inst2|b2v_inst37|c[2]~8_combout\,
	datad => \b2v_inst2|b2v_inst21|o[2]~38_combout\,
	combout => \b2v_inst2|b2v_inst21|o[2]~39_combout\);

-- Location: LCCOMB_X53_Y10_N28
\b2v_inst2|b2v_inst21|o[2]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[2]~40_combout\ = (\b2v_inst2|b2v_inst21|o[0]~5_combout\ & (\b2v_inst2|b2v_inst37|c[1]~5_combout\ $ (((\b2v_inst2|b2v_inst37|c[2]~8_combout\ & \b2v_inst2|b2v_inst21|o[2]~39_combout\))))) # (!\b2v_inst2|b2v_inst21|o[0]~5_combout\ & 
-- (((\b2v_inst2|b2v_inst21|o[2]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst37|c[1]~5_combout\,
	datab => \b2v_inst2|b2v_inst21|o[0]~5_combout\,
	datac => \b2v_inst2|b2v_inst37|c[2]~8_combout\,
	datad => \b2v_inst2|b2v_inst21|o[2]~39_combout\,
	combout => \b2v_inst2|b2v_inst21|o[2]~40_combout\);

-- Location: LCCOMB_X53_Y10_N26
\b2v_inst2|b2v_inst21|o[2]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst21|o[2]~41_combout\ = (\b2v_inst2|b2v_inst21|o[2]~36_combout\) # ((!\b2v_inst2|b2v_inst32|o[3]~0_combout\ & \b2v_inst2|b2v_inst21|o[2]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst32|o[3]~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[2]~36_combout\,
	datad => \b2v_inst2|b2v_inst21|o[2]~40_combout\,
	combout => \b2v_inst2|b2v_inst21|o[2]~41_combout\);

-- Location: LCCOMB_X54_Y12_N6
\b2v_inst2|b2v_inst20|o[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|o[2]~28_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst2|b2v_inst21|o[0]~21_combout\)))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst2|b2v_inst36|q\(0) $ (((\b2v_inst2|b2v_inst36|q\(2) & 
-- !\b2v_inst2|b2v_inst21|o[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst36|q\(2),
	datab => \b2v_inst2|b2v_inst36|q\(0),
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst20|o[2]~28_combout\);

-- Location: LCCOMB_X54_Y12_N0
\b2v_inst2|b2v_inst20|o[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|o[2]~29_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (\b2v_inst2|b2v_inst20|Mux7~0_combout\ $ (((\b2v_inst2|b2v_inst36|q\(2) & !\b2v_inst2|b2v_inst20|o[2]~28_combout\))))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- (((\b2v_inst2|b2v_inst20|o[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst20|Mux7~0_combout\,
	datab => \b2v_inst2|b2v_inst36|q\(2),
	datac => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst2|b2v_inst20|o[2]~28_combout\,
	combout => \b2v_inst2|b2v_inst20|o[2]~29_combout\);

-- Location: LCCOMB_X54_Y12_N10
\b2v_inst2|b2v_inst20|o[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|o[2]~30_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & ((\b2v_inst2|b2v_inst21|o[1]~31_combout\ & 
-- (\b2v_inst2|b2v_inst20|Mux3~0_combout\)) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst2|b2v_inst20|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst20|Mux3~0_combout\,
	datab => \b2v_inst2|b2v_inst20|Mux0~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst20|o[2]~30_combout\);

-- Location: LCCOMB_X54_Y12_N16
\b2v_inst2|b2v_inst20|o[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|o[2]~31_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst2|b2v_inst36|q\(3) $ (((\b2v_inst2|b2v_inst36|q\(1) & \b2v_inst2|b2v_inst20|o[2]~30_combout\))))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & 
-- (((\b2v_inst2|b2v_inst20|o[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst36|q\(3),
	datab => \b2v_inst2|b2v_inst36|q\(1),
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst20|o[2]~30_combout\,
	combout => \b2v_inst2|b2v_inst20|o[2]~31_combout\);

-- Location: LCCOMB_X53_Y12_N22
\b2v_inst2|b2v_inst8|q[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst8|q[2]~6_combout\ = (\b2v_inst2|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst2|b2v_inst21|o[2]~41_combout\ & (\b2v_inst2|b2v_inst20|o[2]~29_combout\)) # (!\b2v_inst2|b2v_inst21|o[2]~41_combout\ & ((\b2v_inst2|b2v_inst20|o[2]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst21|o[2]~41_combout\,
	datab => \b2v_inst2|b2v_inst7|q[3]~1_combout\,
	datac => \b2v_inst2|b2v_inst20|o[2]~29_combout\,
	datad => \b2v_inst2|b2v_inst20|o[2]~31_combout\,
	combout => \b2v_inst2|b2v_inst8|q[2]~6_combout\);

-- Location: LCCOMB_X54_Y12_N4
\b2v_inst2|b2v_inst20|o[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|o[2]~24_combout\ = (\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (((\b2v_inst2|b2v_inst20|Mux5~0_combout\) # (\b2v_inst2|b2v_inst21|o[1]~31_combout\)))) # (!\b2v_inst2|b2v_inst21|o[0]~21_combout\ & (\b2v_inst2|b2v_inst20|Mux4~0_combout\ 
-- & ((!\b2v_inst2|b2v_inst21|o[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst20|Mux4~0_combout\,
	datab => \b2v_inst2|b2v_inst20|Mux5~0_combout\,
	datac => \b2v_inst2|b2v_inst21|o[0]~21_combout\,
	datad => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst2|b2v_inst20|o[2]~24_combout\);

-- Location: LCCOMB_X53_Y12_N12
\b2v_inst2|b2v_inst20|o[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|o[2]~25_combout\ = (\b2v_inst2|b2v_inst21|o[1]~31_combout\ & ((\b2v_inst2|b2v_inst20|o[2]~24_combout\ & (\b2v_inst2|b2v_inst20|Mux9~0_combout\)) # (!\b2v_inst2|b2v_inst20|o[2]~24_combout\ & 
-- ((\b2v_inst2|b2v_inst20|Mux7~1_combout\))))) # (!\b2v_inst2|b2v_inst21|o[1]~31_combout\ & (((\b2v_inst2|b2v_inst20|o[2]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst20|Mux9~0_combout\,
	datab => \b2v_inst2|b2v_inst20|Mux7~1_combout\,
	datac => \b2v_inst2|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst2|b2v_inst20|o[2]~24_combout\,
	combout => \b2v_inst2|b2v_inst20|o[2]~25_combout\);

-- Location: LCCOMB_X53_Y12_N2
\b2v_inst2|b2v_inst20|o[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|o[2]~26_combout\ = (\b2v_inst2|b2v_inst18|o[2]~1_combout\ & ((\b2v_inst2|b2v_inst18|o[2]~2_combout\ & ((\b2v_inst2|b2v_inst20|o[2]~25_combout\))) # (!\b2v_inst2|b2v_inst18|o[2]~2_combout\ & (\b2v_inst2|b2v_inst36|q\(2))))) # 
-- (!\b2v_inst2|b2v_inst18|o[2]~1_combout\ & (((\b2v_inst2|b2v_inst18|o[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst36|q\(2),
	datab => \b2v_inst2|b2v_inst18|o[2]~1_combout\,
	datac => \b2v_inst2|b2v_inst18|o[2]~2_combout\,
	datad => \b2v_inst2|b2v_inst20|o[2]~25_combout\,
	combout => \b2v_inst2|b2v_inst20|o[2]~26_combout\);

-- Location: LCCOMB_X53_Y12_N20
\b2v_inst2|b2v_inst20|o[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst20|o[2]~27_combout\ = (\b2v_inst2|b2v_inst18|o[2]~0_combout\ & (\b2v_inst2|b2v_inst36|q\(1) $ (((\b2v_inst2|b2v_inst36|q\(2) & \b2v_inst2|b2v_inst20|o[2]~26_combout\))))) # (!\b2v_inst2|b2v_inst18|o[2]~0_combout\ & 
-- (((\b2v_inst2|b2v_inst20|o[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst36|q\(1),
	datab => \b2v_inst2|b2v_inst36|q\(2),
	datac => \b2v_inst2|b2v_inst18|o[2]~0_combout\,
	datad => \b2v_inst2|b2v_inst20|o[2]~26_combout\,
	combout => \b2v_inst2|b2v_inst20|o[2]~27_combout\);

-- Location: LCCOMB_X53_Y12_N14
\b2v_inst2|b2v_inst8|q[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst8|q[2]~7_combout\ = \b2v_inst2|b2v_inst8|q\(2) $ (((\b2v_inst2|b2v_inst8|q[2]~6_combout\) # ((\b2v_inst2|b2v_inst7|q[1]~0_combout\ & \b2v_inst2|b2v_inst20|o[2]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst8|q[2]~6_combout\,
	datab => \b2v_inst2|b2v_inst7|q[1]~0_combout\,
	datac => \b2v_inst2|b2v_inst8|q\(2),
	datad => \b2v_inst2|b2v_inst20|o[2]~27_combout\,
	combout => \b2v_inst2|b2v_inst8|q[2]~7_combout\);

-- Location: FF_X53_Y12_N15
\b2v_inst2|b2v_inst8|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst8|q[2]~7_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst8|q\(2));

-- Location: LCCOMB_X53_Y12_N8
\b2v_inst2|b2v_inst16|o[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|o[2]~5_combout\ = (!\b2v_inst2|b2v_inst8|q\(2) & \b2v_inst2|b2v_inst8|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|b2v_inst8|q\(2),
	datad => \b2v_inst2|b2v_inst8|q\(1),
	combout => \b2v_inst2|b2v_inst16|o[2]~5_combout\);

-- Location: LCCOMB_X50_Y12_N2
\b2v_inst2|b2v_inst16|o[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|o[0]~0_combout\ = (\b2v_inst2|b2v_inst8|q\(1) & (((\b2v_inst2|b2v_inst8|q\(0))))) # (!\b2v_inst2|b2v_inst8|q\(1) & (\b2v_inst2|b2v_inst4|q\(2) $ (((\b2v_inst2|b2v_inst4|q\(0) & \b2v_inst2|b2v_inst8|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst4|q\(0),
	datab => \b2v_inst2|b2v_inst4|q\(2),
	datac => \b2v_inst2|b2v_inst8|q\(1),
	datad => \b2v_inst2|b2v_inst8|q\(0),
	combout => \b2v_inst2|b2v_inst16|o[0]~0_combout\);

-- Location: LCCOMB_X50_Y12_N18
\b2v_inst2|b2v_inst16|o[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|o[0]~1_combout\ = (\b2v_inst2|b2v_inst8|q\(1) & ((\b2v_inst2|b2v_inst16|o[0]~0_combout\ & ((\b2v_inst2|b2v_inst16|Mux5~0_combout\))) # (!\b2v_inst2|b2v_inst16|o[0]~0_combout\ & (\b2v_inst2|b2v_inst16|Mux0~0_combout\)))) # 
-- (!\b2v_inst2|b2v_inst8|q\(1) & (((\b2v_inst2|b2v_inst16|o[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst8|q\(1),
	datab => \b2v_inst2|b2v_inst16|Mux0~0_combout\,
	datac => \b2v_inst2|b2v_inst16|Mux5~0_combout\,
	datad => \b2v_inst2|b2v_inst16|o[0]~0_combout\,
	combout => \b2v_inst2|b2v_inst16|o[0]~1_combout\);

-- Location: LCCOMB_X51_Y12_N20
\b2v_inst2|b2v_inst16|o[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|o[0]~4_combout\ = (\b2v_inst2|b2v_inst16|o[2]~3_combout\ & (((\b2v_inst2|b2v_inst16|o[0]~1_combout\) # (!\b2v_inst2|b2v_inst16|o[2]~2_combout\)))) # (!\b2v_inst2|b2v_inst16|o[2]~3_combout\ & (\b2v_inst2|b2v_inst4|q\(0) & 
-- (\b2v_inst2|b2v_inst16|o[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst16|o[2]~3_combout\,
	datab => \b2v_inst2|b2v_inst4|q\(0),
	datac => \b2v_inst2|b2v_inst16|o[2]~2_combout\,
	datad => \b2v_inst2|b2v_inst16|o[0]~1_combout\,
	combout => \b2v_inst2|b2v_inst16|o[0]~4_combout\);

-- Location: LCCOMB_X51_Y12_N10
\b2v_inst2|b2v_inst16|o[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|o[0]~6_combout\ = (\b2v_inst2|b2v_inst16|o[2]~5_combout\ & (\b2v_inst2|b2v_inst4|q\(3) $ (((\b2v_inst2|b2v_inst4|q\(0) & \b2v_inst2|b2v_inst16|o[0]~4_combout\))))) # (!\b2v_inst2|b2v_inst16|o[2]~5_combout\ & 
-- (((\b2v_inst2|b2v_inst16|o[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst4|q\(0),
	datab => \b2v_inst2|b2v_inst4|q\(3),
	datac => \b2v_inst2|b2v_inst16|o[2]~5_combout\,
	datad => \b2v_inst2|b2v_inst16|o[0]~4_combout\,
	combout => \b2v_inst2|b2v_inst16|o[0]~6_combout\);

-- Location: LCCOMB_X54_Y8_N4
\b2v_inst2|b2v_inst15|o[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[0]~5_combout\ = (\b2v_inst2|b2v_inst7|q\(1) & (\b2v_inst2|b2v_inst7|q\(0))) # (!\b2v_inst2|b2v_inst7|q\(1) & (\b2v_inst2|b2v_inst3|q\(2) $ (((\b2v_inst2|b2v_inst7|q\(0) & \b2v_inst2|b2v_inst3|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst7|q\(0),
	datab => \b2v_inst2|b2v_inst3|q\(0),
	datac => \b2v_inst2|b2v_inst7|q\(1),
	datad => \b2v_inst2|b2v_inst3|q\(2),
	combout => \b2v_inst2|b2v_inst15|o[0]~5_combout\);

-- Location: LCCOMB_X54_Y8_N6
\b2v_inst2|b2v_inst15|o[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[0]~6_combout\ = (\b2v_inst2|b2v_inst7|q\(1) & ((\b2v_inst2|b2v_inst15|o[0]~5_combout\ & ((\b2v_inst2|b2v_inst15|Mux5~0_combout\))) # (!\b2v_inst2|b2v_inst15|o[0]~5_combout\ & (\b2v_inst2|b2v_inst15|Mux0~0_combout\)))) # 
-- (!\b2v_inst2|b2v_inst7|q\(1) & (((\b2v_inst2|b2v_inst15|o[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst15|Mux0~0_combout\,
	datab => \b2v_inst2|b2v_inst7|q\(1),
	datac => \b2v_inst2|b2v_inst15|o[0]~5_combout\,
	datad => \b2v_inst2|b2v_inst15|Mux5~0_combout\,
	combout => \b2v_inst2|b2v_inst15|o[0]~6_combout\);

-- Location: LCCOMB_X54_Y8_N16
\b2v_inst2|b2v_inst15|o[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[0]~9_combout\ = (\b2v_inst2|b2v_inst15|o[1]~8_combout\ & (((\b2v_inst2|b2v_inst15|o[0]~6_combout\) # (!\b2v_inst2|b2v_inst15|o[1]~7_combout\)))) # (!\b2v_inst2|b2v_inst15|o[1]~8_combout\ & (\b2v_inst2|b2v_inst3|q\(0) & 
-- (\b2v_inst2|b2v_inst15|o[1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst15|o[1]~8_combout\,
	datab => \b2v_inst2|b2v_inst3|q\(0),
	datac => \b2v_inst2|b2v_inst15|o[1]~7_combout\,
	datad => \b2v_inst2|b2v_inst15|o[0]~6_combout\,
	combout => \b2v_inst2|b2v_inst15|o[0]~9_combout\);

-- Location: LCCOMB_X51_Y8_N26
\b2v_inst2|b2v_inst15|o[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[0]~11_combout\ = (\b2v_inst2|b2v_inst15|o[1]~10_combout\ & (\b2v_inst2|b2v_inst3|q\(3) $ (((\b2v_inst2|b2v_inst3|q\(0) & \b2v_inst2|b2v_inst15|o[0]~9_combout\))))) # (!\b2v_inst2|b2v_inst15|o[1]~10_combout\ & 
-- (((\b2v_inst2|b2v_inst15|o[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst3|q\(3),
	datab => \b2v_inst2|b2v_inst3|q\(0),
	datac => \b2v_inst2|b2v_inst15|o[1]~10_combout\,
	datad => \b2v_inst2|b2v_inst15|o[0]~9_combout\,
	combout => \b2v_inst2|b2v_inst15|o[0]~11_combout\);

-- Location: LCCOMB_X53_Y8_N28
\b2v_inst2|b2v_inst15|o[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[0]~2_combout\ = (\b2v_inst2|b2v_inst7|q\(0) & (((\b2v_inst2|b2v_inst7|q\(1))))) # (!\b2v_inst2|b2v_inst7|q\(0) & (\b2v_inst2|b2v_inst3|q\(1) $ (((\b2v_inst2|b2v_inst3|q\(3) & \b2v_inst2|b2v_inst7|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst3|q\(3),
	datab => \b2v_inst2|b2v_inst3|q\(1),
	datac => \b2v_inst2|b2v_inst7|q\(1),
	datad => \b2v_inst2|b2v_inst7|q\(0),
	combout => \b2v_inst2|b2v_inst15|o[0]~2_combout\);

-- Location: LCCOMB_X53_Y8_N2
\b2v_inst2|b2v_inst15|o[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[0]~3_combout\ = (\b2v_inst2|b2v_inst7|q\(0) & (\b2v_inst2|b2v_inst15|Mux8~0_combout\ $ (((\b2v_inst2|b2v_inst3|q\(3) & \b2v_inst2|b2v_inst15|o[0]~2_combout\))))) # (!\b2v_inst2|b2v_inst7|q\(0) & 
-- (((\b2v_inst2|b2v_inst15|o[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst3|q\(3),
	datab => \b2v_inst2|b2v_inst7|q\(0),
	datac => \b2v_inst2|b2v_inst15|Mux8~0_combout\,
	datad => \b2v_inst2|b2v_inst15|o[0]~2_combout\,
	combout => \b2v_inst2|b2v_inst15|o[0]~3_combout\);

-- Location: LCCOMB_X52_Y8_N0
\b2v_inst2|b2v_inst15|o[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[0]~0_combout\ = (\b2v_inst2|b2v_inst7|q\(0) & ((\b2v_inst2|b2v_inst7|q\(1)) # ((\b2v_inst2|b2v_inst15|Mux10~0_combout\)))) # (!\b2v_inst2|b2v_inst7|q\(0) & (!\b2v_inst2|b2v_inst7|q\(1) & ((\b2v_inst2|b2v_inst15|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst7|q\(0),
	datab => \b2v_inst2|b2v_inst7|q\(1),
	datac => \b2v_inst2|b2v_inst15|Mux10~0_combout\,
	datad => \b2v_inst2|b2v_inst15|Mux2~0_combout\,
	combout => \b2v_inst2|b2v_inst15|o[0]~0_combout\);

-- Location: LCCOMB_X52_Y8_N22
\b2v_inst2|b2v_inst15|o[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[0]~1_combout\ = (\b2v_inst2|b2v_inst7|q\(1) & ((\b2v_inst2|b2v_inst15|o[0]~0_combout\ & (\b2v_inst2|b2v_inst15|Mux9~0_combout\)) # (!\b2v_inst2|b2v_inst15|o[0]~0_combout\ & ((\b2v_inst2|b2v_inst15|Mux3~0_combout\))))) # 
-- (!\b2v_inst2|b2v_inst7|q\(1) & (((\b2v_inst2|b2v_inst15|o[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst15|Mux9~0_combout\,
	datab => \b2v_inst2|b2v_inst15|Mux3~0_combout\,
	datac => \b2v_inst2|b2v_inst7|q\(1),
	datad => \b2v_inst2|b2v_inst15|o[0]~0_combout\,
	combout => \b2v_inst2|b2v_inst15|o[0]~1_combout\);

-- Location: LCCOMB_X51_Y8_N20
\b2v_inst2|b2v_inst15|o[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[0]~4_combout\ = (\b2v_inst2|b2v_inst7|q\(3) & ((\b2v_inst2|b2v_inst7|q\(2) & ((\b2v_inst2|b2v_inst15|o[0]~1_combout\))) # (!\b2v_inst2|b2v_inst7|q\(2) & (\b2v_inst2|b2v_inst15|o[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst7|q\(2),
	datab => \b2v_inst2|b2v_inst7|q\(3),
	datac => \b2v_inst2|b2v_inst15|o[0]~3_combout\,
	datad => \b2v_inst2|b2v_inst15|o[0]~1_combout\,
	combout => \b2v_inst2|b2v_inst15|o[0]~4_combout\);

-- Location: LCCOMB_X51_Y8_N4
\b2v_inst2|b2v_inst15|o[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|o[0]~12_combout\ = (\b2v_inst2|b2v_inst15|o[0]~4_combout\) # ((!\b2v_inst2|b2v_inst7|q\(3) & \b2v_inst2|b2v_inst15|o[0]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst7|q\(3),
	datac => \b2v_inst2|b2v_inst15|o[0]~11_combout\,
	datad => \b2v_inst2|b2v_inst15|o[0]~4_combout\,
	combout => \b2v_inst2|b2v_inst15|o[0]~12_combout\);

-- Location: LCCOMB_X49_Y12_N0
\b2v_inst2|b2v_inst16|o[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|o[0]~7_combout\ = (\b2v_inst2|b2v_inst8|q\(1) & (((\b2v_inst2|b2v_inst8|q\(0))))) # (!\b2v_inst2|b2v_inst8|q\(1) & ((\b2v_inst2|b2v_inst8|q\(0) & ((\b2v_inst2|b2v_inst16|Mux10~0_combout\))) # (!\b2v_inst2|b2v_inst8|q\(0) & 
-- (\b2v_inst2|b2v_inst16|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst16|Mux2~0_combout\,
	datab => \b2v_inst2|b2v_inst8|q\(1),
	datac => \b2v_inst2|b2v_inst8|q\(0),
	datad => \b2v_inst2|b2v_inst16|Mux10~0_combout\,
	combout => \b2v_inst2|b2v_inst16|o[0]~7_combout\);

-- Location: LCCOMB_X49_Y12_N26
\b2v_inst2|b2v_inst16|o[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|o[0]~8_combout\ = (\b2v_inst2|b2v_inst8|q\(1) & ((\b2v_inst2|b2v_inst16|o[0]~7_combout\ & ((\b2v_inst2|b2v_inst16|Mux9~0_combout\))) # (!\b2v_inst2|b2v_inst16|o[0]~7_combout\ & (\b2v_inst2|b2v_inst16|Mux3~0_combout\)))) # 
-- (!\b2v_inst2|b2v_inst8|q\(1) & (((\b2v_inst2|b2v_inst16|o[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst16|Mux3~0_combout\,
	datab => \b2v_inst2|b2v_inst8|q\(1),
	datac => \b2v_inst2|b2v_inst16|Mux9~0_combout\,
	datad => \b2v_inst2|b2v_inst16|o[0]~7_combout\,
	combout => \b2v_inst2|b2v_inst16|o[0]~8_combout\);

-- Location: LCCOMB_X49_Y12_N28
\b2v_inst2|b2v_inst16|o[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|o[0]~9_combout\ = (\b2v_inst2|b2v_inst8|q\(0) & (((\b2v_inst2|b2v_inst8|q\(1))))) # (!\b2v_inst2|b2v_inst8|q\(0) & (\b2v_inst2|b2v_inst4|q\(1) $ (((\b2v_inst2|b2v_inst4|q\(3) & \b2v_inst2|b2v_inst8|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst4|q\(3),
	datab => \b2v_inst2|b2v_inst4|q\(1),
	datac => \b2v_inst2|b2v_inst8|q\(1),
	datad => \b2v_inst2|b2v_inst8|q\(0),
	combout => \b2v_inst2|b2v_inst16|o[0]~9_combout\);

-- Location: LCCOMB_X49_Y12_N14
\b2v_inst2|b2v_inst16|o[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|o[0]~10_combout\ = (\b2v_inst2|b2v_inst8|q\(0) & (\b2v_inst2|b2v_inst16|Mux8~0_combout\ $ (((\b2v_inst2|b2v_inst4|q\(3) & \b2v_inst2|b2v_inst16|o[0]~9_combout\))))) # (!\b2v_inst2|b2v_inst8|q\(0) & 
-- (((\b2v_inst2|b2v_inst16|o[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst4|q\(3),
	datab => \b2v_inst2|b2v_inst8|q\(0),
	datac => \b2v_inst2|b2v_inst16|Mux8~0_combout\,
	datad => \b2v_inst2|b2v_inst16|o[0]~9_combout\,
	combout => \b2v_inst2|b2v_inst16|o[0]~10_combout\);

-- Location: LCCOMB_X50_Y12_N4
\b2v_inst2|b2v_inst16|o[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst16|o[0]~11_combout\ = (\b2v_inst2|b2v_inst8|q\(3) & ((\b2v_inst2|b2v_inst8|q\(2) & (\b2v_inst2|b2v_inst16|o[0]~8_combout\)) # (!\b2v_inst2|b2v_inst8|q\(2) & ((\b2v_inst2|b2v_inst16|o[0]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst8|q\(3),
	datab => \b2v_inst2|b2v_inst8|q\(2),
	datac => \b2v_inst2|b2v_inst16|o[0]~8_combout\,
	datad => \b2v_inst2|b2v_inst16|o[0]~10_combout\,
	combout => \b2v_inst2|b2v_inst16|o[0]~11_combout\);

-- Location: LCCOMB_X51_Y8_N14
\b2v_inst2|b2v_inst37|c[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst37|c[0]~0_combout\ = \b2v_inst2|b2v_inst15|o[0]~12_combout\ $ (((\b2v_inst2|b2v_inst16|o[0]~11_combout\) # ((\b2v_inst2|b2v_inst16|o[0]~6_combout\ & !\b2v_inst2|b2v_inst8|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst16|o[0]~6_combout\,
	datab => \b2v_inst2|b2v_inst8|q\(3),
	datac => \b2v_inst2|b2v_inst15|o[0]~12_combout\,
	datad => \b2v_inst2|b2v_inst16|o[0]~11_combout\,
	combout => \b2v_inst2|b2v_inst37|c[0]~0_combout\);

-- Location: LCCOMB_X51_Y8_N24
\b2v_inst2|b2v_inst37|c[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst37|c[0]~2_combout\ = \b2v_inst2|b2v_inst|q\(0) $ (\b2v_inst2|b2v_inst37|c[0]~0_combout\ $ (\b2v_inst2|b2v_inst37|c[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst|q\(0),
	datac => \b2v_inst2|b2v_inst37|c[0]~0_combout\,
	datad => \b2v_inst2|b2v_inst37|c[0]~1_combout\,
	combout => \b2v_inst2|b2v_inst37|c[0]~2_combout\);

-- Location: LCCOMB_X52_Y10_N4
\b2v_inst2|Nerror~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|Nerror~0_combout\ = (\b2v_inst2|b2v_inst37|c[0]~2_combout\) # ((\b2v_inst2|b2v_inst37|c[3]~11_combout\) # ((\b2v_inst2|b2v_inst37|c[1]~5_combout\) # (\b2v_inst2|b2v_inst37|c[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst37|c[0]~2_combout\,
	datab => \b2v_inst2|b2v_inst37|c[3]~11_combout\,
	datac => \b2v_inst2|b2v_inst37|c[1]~5_combout\,
	datad => \b2v_inst2|b2v_inst37|c[2]~8_combout\,
	combout => \b2v_inst2|Nerror~0_combout\);

-- Location: LCCOMB_X51_Y6_N0
\b2v_inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector0~0_combout\ = (!\Count8~input_o\ & (\Impar~input_o\ & (\b2v_inst|WideOr2~0_combout\ & \b2v_inst2|Nerror~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Count8~input_o\,
	datab => \Impar~input_o\,
	datac => \b2v_inst|WideOr2~0_combout\,
	datad => \b2v_inst2|Nerror~0_combout\,
	combout => \b2v_inst|Selector0~0_combout\);

-- Location: LCCOMB_X51_Y6_N22
\b2v_inst|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector6~0_combout\ = (\b2v_inst|WideOr2~0_combout\ & (!\Count8~input_o\ & ((\b2v_inst2|Nerror~0_combout\) # (!\Impar~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|Nerror~0_combout\,
	datab => \b2v_inst|WideOr2~0_combout\,
	datac => \Count8~input_o\,
	datad => \Impar~input_o\,
	combout => \b2v_inst|Selector6~0_combout\);

-- Location: LCCOMB_X51_Y6_N6
\b2v_inst|Selector6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector6~4_combout\ = (\b2v_inst|Selector6~1_combout\) # ((\b2v_inst|Selector6~0_combout\) # ((\b2v_inst|Selector6~2_combout\) # (!\b2v_inst|Selector6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Selector6~1_combout\,
	datab => \b2v_inst|Selector6~0_combout\,
	datac => \b2v_inst|Selector6~3_combout\,
	datad => \b2v_inst|Selector6~2_combout\,
	combout => \b2v_inst|Selector6~4_combout\);

-- Location: LCCOMB_X51_Y6_N28
\b2v_inst|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector5~0_combout\ = (\b2v_inst|estadoAtual.idle2~q\) # ((\Count4~input_o\ & (\b2v_inst|estadoAtual.avaliador2~q\)) # (!\Count4~input_o\ & ((\b2v_inst|estadoAtual.avaliador~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|estadoAtual.avaliador2~q\,
	datab => \Count4~input_o\,
	datac => \b2v_inst|estadoAtual.avaliador~q\,
	datad => \b2v_inst|estadoAtual.idle2~q\,
	combout => \b2v_inst|Selector5~0_combout\);

-- Location: LCCOMB_X51_Y6_N18
\b2v_inst|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector5~1_combout\ = (\b2v_inst|Selector5~0_combout\) # ((\b2v_inst|WideOr2~0_combout\ & ((\Count8~input_o\) # (!\Impar~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Count8~input_o\,
	datab => \Impar~input_o\,
	datac => \b2v_inst|WideOr2~0_combout\,
	datad => \b2v_inst|Selector5~0_combout\,
	combout => \b2v_inst|Selector5~1_combout\);

-- Location: LCCOMB_X51_Y6_N4
\b2v_inst|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector4~0_combout\ = (!\b2v_inst|estadoAtual.avaliador~q\ & (!\b2v_inst|estadoAtual.clearSyn~q\ & ((!\Count4~input_o\) # (!\b2v_inst|estadoAtual.avaliador2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|estadoAtual.avaliador2~q\,
	datab => \b2v_inst|estadoAtual.avaliador~q\,
	datac => \b2v_inst|estadoAtual.clearSyn~q\,
	datad => \Count4~input_o\,
	combout => \b2v_inst|Selector4~0_combout\);

-- Location: LCCOMB_X51_Y6_N30
\b2v_inst|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector3~2_combout\ = (\b2v_inst|estadoAtual.localizador~q\) # ((\b2v_inst|estadoAtual.localizador2~q\) # (!\b2v_inst|Selector4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|estadoAtual.localizador~q\,
	datac => \b2v_inst|Selector4~0_combout\,
	datad => \b2v_inst|estadoAtual.localizador2~q\,
	combout => \b2v_inst|Selector3~2_combout\);

-- Location: LCCOMB_X51_Y6_N26
\b2v_inst|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector2~0_combout\ = (\b2v_inst|estadoAtual.store~q\) # ((\b2v_inst|estadoAtual.avaliador2~q\ & !\Count4~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|estadoAtual.avaliador2~q\,
	datab => \b2v_inst|estadoAtual.store~q\,
	datad => \Count4~input_o\,
	combout => \b2v_inst|Selector2~0_combout\);

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

ww_DS_reg(0) <= \DS_reg[0]~output_o\;

ww_DS_reg(1) <= \DS_reg[1]~output_o\;

ww_DS_reg(2) <= \DS_reg[2]~output_o\;

ww_DS_reg(3) <= \DS_reg[3]~output_o\;

ww_Lamb1(0) <= \Lamb1[0]~output_o\;

ww_Lamb1(1) <= \Lamb1[1]~output_o\;

ww_Lamb1(2) <= \Lamb1[2]~output_o\;

ww_Lamb1(3) <= \Lamb1[3]~output_o\;

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

ww_Omega(0) <= \Omega[0]~output_o\;

ww_Omega(1) <= \Omega[1]~output_o\;

ww_Omega(2) <= \Omega[2]~output_o\;

ww_Omega(3) <= \Omega[3]~output_o\;

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


