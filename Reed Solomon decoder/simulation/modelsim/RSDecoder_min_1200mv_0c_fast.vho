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

-- DATE "09/25/2016 22:54:12"

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
	Registra : BUFFER std_logic;
	di : BUFFER std_logic;
	loadS : BUFFER std_logic;
	loadB : BUFFER std_logic;
	loadC : BUFFER std_logic;
	clearS : BUFFER std_logic;
	clearB : BUFFER std_logic;
	clearC : BUFFER std_logic;
	MuxSel : BUFFER std_logic;
	Lambda1 : BUFFER std_logic_vector(3 DOWNTO 0);
	Lambda2 : BUFFER std_logic_vector(3 DOWNTO 0);
	Lambda3 : BUFFER std_logic_vector(3 DOWNTO 0);
	Lambda4 : BUFFER std_logic_vector(3 DOWNTO 0);
	Omega : BUFFER std_logic_vector(3 DOWNTO 0);
	Test_state : BUFFER std_logic_vector(4 DOWNTO 0)
	);
END BerleMas;

-- Design Ports Information
-- Registra	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- loadS	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- loadB	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- loadC	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clearS	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clearB	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clearC	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxSel	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda1[0]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda1[1]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda1[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda1[3]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda2[0]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda2[1]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda2[2]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda2[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda3[0]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda3[1]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda3[2]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda3[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda4[0]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda4[1]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda4[2]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lambda4[3]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega[0]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega[3]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Test_state[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Test_state[1]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Test_state[2]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Test_state[3]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Test_state[4]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Impar	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count8	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count4	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Inicia	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[1]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[0]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_Lambda1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Lambda2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Lambda3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Lambda4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Omega : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \Omega[0]~output_o\ : std_logic;
SIGNAL \Omega[1]~output_o\ : std_logic;
SIGNAL \Omega[2]~output_o\ : std_logic;
SIGNAL \Omega[3]~output_o\ : std_logic;
SIGNAL \Test_state[0]~output_o\ : std_logic;
SIGNAL \Test_state[1]~output_o\ : std_logic;
SIGNAL \Test_state[2]~output_o\ : std_logic;
SIGNAL \Test_state[3]~output_o\ : std_logic;
SIGNAL \Test_state[4]~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \Impar~input_o\ : std_logic;
SIGNAL \Count8~input_o\ : std_logic;
SIGNAL \b2v_inst|proximoEstado.localizador2~0_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst|estadoAtual.localizador2~q\ : std_logic;
SIGNAL \b2v_inst|Selector8~0_combout\ : std_logic;
SIGNAL \Inicia~input_o\ : std_logic;
SIGNAL \b2v_inst|Selector6~3_combout\ : std_logic;
SIGNAL \b2v_inst|estadoAtual.idle~q\ : std_logic;
SIGNAL \b2v_inst|Selector6~2_combout\ : std_logic;
SIGNAL \b2v_inst|estadoAtual.idle2~q\ : std_logic;
SIGNAL \b2v_inst|Selector8~1_combout\ : std_logic;
SIGNAL \b2v_inst|estadoAtual.localizador~q\ : std_logic;
SIGNAL \b2v_inst|Selector9~0_combout\ : std_logic;
SIGNAL \b2v_inst|estadoAtual.clearSyn~q\ : std_logic;
SIGNAL \Count4~input_o\ : std_logic;
SIGNAL \b2v_inst|Selector5~2_combout\ : std_logic;
SIGNAL \b2v_inst|estadoAtual.avaliador2~q\ : std_logic;
SIGNAL \b2v_inst|Selector10~0_combout\ : std_logic;
SIGNAL \b2v_inst|estadoAtual.avaliador~q\ : std_logic;
SIGNAL \b2v_inst|Selector6~1_combout\ : std_logic;
SIGNAL \b2v_inst|estadoAtual.store~q\ : std_logic;
SIGNAL \b2v_inst|WideOr2~0_combout\ : std_logic;
SIGNAL \b2v_inst|clearB~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst32|o[1]~2_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst32|o[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[1]~23_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[1]~24_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[1]~25_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[1]~26_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[1]~27_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[0]~10_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|Mux7~1_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[0]~7_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[0]~8_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|Mux5~1_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[1]~28_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[1]~29_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[1]~30_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[1]~31_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[1]~32_combout\ : std_logic;
SIGNAL \b2v_inst|Selector1~3_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst35|O[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst34|O[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst33|O[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst22|O[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[0]~13_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[0]~14_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[0]~15_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[0]~16_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[0]~17_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[0]~18_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[0]~19_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[0]~20_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[0]~21_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[0]~22_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|o[1]~20_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|o[1]~21_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|o[1]~18_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|o[1]~19_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst6|q[1]~2_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|Mux7~1_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|o[3]~5_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|Mux5~1_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|o[1]~14_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|o[1]~15_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|o[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|o[1]~16_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|o[3]~38_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|o[1]~17_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst6|q[1]~3_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst34|O[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|o[0]~23_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|o[0]~24_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|o[0]~25_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|o[0]~26_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst7|q[0]~6_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|o[0]~37_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|o[0]~20_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|o[0]~21_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|o[0]~22_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst7|q[0]~7_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst33|O[0]~3_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst22|O[0]~3_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|o[0]~20_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|o[0]~21_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|o[0]~22_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|o[0]~23_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst5|q[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|Mux5~1_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|o[0]~16_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|o[0]~17_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|o[0]~18_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|o[0]~19_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst5|q[0]~5_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst35|O[0]~3_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|o[0]~26_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|o[0]~27_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|o[0]~28_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|o[0]~29_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst6|q[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|o[0]~22_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|o[0]~23_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|o[0]~24_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|o[0]~25_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst6|q[0]~5_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst34|O[0]~3_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|o[1]~16_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|o[1]~17_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|o[1]~18_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|o[1]~19_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst7|q[1]~4_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|Mux7~1_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|Mux5~1_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|o[1]~12_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|o[1]~13_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|o[1]~14_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|o[1]~15_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst7|q[1]~5_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst33|O[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst22|O[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|o[1]~12_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|o[1]~13_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|o[1]~14_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|o[1]~15_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst5|q[1]~2_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|Mux7~1_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|o[1]~8_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|o[1]~9_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|o[1]~10_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|o[1]~11_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst5|q[1]~3_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst35|O[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|o[2]~36_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|o[2]~37_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|o[2]~34_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|o[2]~35_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst6|q[2]~6_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|o[2]~30_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|o[2]~31_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|o[2]~32_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|o[2]~33_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst6|q[2]~7_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst34|O[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|o[2]~33_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|o[2]~34_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|o[2]~31_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|o[2]~32_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst7|q[2]~8_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|o[2]~27_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|o[2]~28_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|o[2]~29_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|o[2]~30_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst7|q[2]~9_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst33|O[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst22|O[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|o[2]~28_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|o[2]~29_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|o[2]~30_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|o[2]~31_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst5|q[2]~6_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|o[2]~24_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|o[2]~25_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|o[2]~26_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|o[2]~27_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst5|q[2]~7_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst35|O[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|o[3]~10_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|o[3]~11_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|o[3]~12_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|o[3]~13_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst6|q[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|o[3]~6_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|o[3]~7_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|o[3]~8_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst18|o[3]~9_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst6|q[3]~1_combout\ : std_logic;
SIGNAL \Input[2]~input_o\ : std_logic;
SIGNAL \b2v_inst|WideOr0~0_combout\ : std_logic;
SIGNAL \b2v_inst|WideOr0~combout\ : std_logic;
SIGNAL \Input[0]~input_o\ : std_logic;
SIGNAL \Input[3]~input_o\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[3]~35_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[3]~36_combout\ : std_logic;
SIGNAL \Input[1]~input_o\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|Mux8~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[3]~33_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[3]~34_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[3]~37_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[3]~10_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[3]~8_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[3]~38_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[3]~39_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[3]~7_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[3]~40_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[3]~41_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[3]~42_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|Mux8~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[3]~33_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[3]~34_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[3]~35_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[3]~36_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[3]~37_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[3]~38_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[3]~39_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[0]~7_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[0]~8_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[3]~40_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[0]~10_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[3]~41_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[3]~42_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[3]~10_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[3]~8_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[3]~7_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[3]~38_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[3]~39_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[3]~40_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[3]~41_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[3]~35_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[3]~36_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|Mux8~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[3]~33_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[3]~34_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[3]~37_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[3]~42_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|o[2]~30_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|o[2]~31_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|o[2]~28_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|o[2]~29_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst8|q[2]~6_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|Mux7~1_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|o[2]~24_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|o[2]~25_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|o[2]~26_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|o[2]~27_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst8|q[2]~7_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|o[0]~22_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|o[0]~23_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|o[0]~20_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|o[0]~21_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst8|q[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|Mux5~1_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|o[0]~16_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|o[0]~17_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|o[0]~18_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|o[0]~19_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst8|q[0]~5_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|o[1]~12_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|o[1]~13_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|o[1]~14_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|o[1]~15_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst8|q[1]~2_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|o[1]~8_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|o[1]~9_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|o[1]~10_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|o[1]~11_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst8|q[1]~3_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[3]~35_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[3]~36_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|Mux8~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[3]~33_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[3]~34_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[3]~37_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[2]~10_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[2]~7_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[2]~8_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[3]~38_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[3]~39_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[3]~40_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[3]~41_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[3]~42_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst32|o[2]~3_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[2]~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[2]~1_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[2]~3_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[2]~4_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[2]~5_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[2]~6_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[2]~9_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[2]~11_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[2]~12_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|o[3]~6_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|o[3]~7_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|o[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|o[3]~5_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst5|q[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|o[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|o[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|o[3]~2_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst17|o[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst5|q[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[2]~28_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[2]~29_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[2]~30_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[2]~31_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[2]~25_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[2]~26_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[2]~23_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[2]~24_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[2]~27_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[2]~32_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[2]~28_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[2]~29_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[2]~30_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[2]~31_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[2]~25_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[2]~26_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[2]~23_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[2]~24_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[2]~27_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[2]~32_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[2]~23_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[2]~24_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[2]~25_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[2]~26_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[2]~27_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[2]~28_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[2]~29_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[2]~30_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[2]~31_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[2]~32_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[2]~25_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[2]~26_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[2]~23_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[2]~24_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[2]~27_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[2]~28_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[2]~29_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[2]~30_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[2]~31_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[2]~32_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[3]~33_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[3]~34_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[3]~35_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[3]~36_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[3]~39_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[3]~40_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[3]~37_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[3]~38_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst21|o[3]~41_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst7|q[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|o[3]~6_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|o[3]~7_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|o[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|o[3]~5_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst8|q[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|o[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|o[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|o[3]~2_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst20|o[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst8|q[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[1]~18_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[1]~19_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[1]~20_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[1]~21_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[1]~13_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[1]~14_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[1]~15_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[1]~16_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[1]~17_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[1]~22_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[1]~18_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[1]~19_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[1]~20_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[1]~21_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[1]~13_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[1]~14_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[1]~15_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[1]~16_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[1]~17_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[1]~22_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[1]~15_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[1]~16_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[1]~13_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[1]~14_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[1]~17_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[1]~18_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[1]~19_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[1]~20_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[1]~21_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[1]~22_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[1]~15_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[1]~16_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[1]~13_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[1]~14_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[1]~17_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[1]~18_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[1]~19_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[1]~20_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[1]~21_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[1]~22_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst32|o[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst7|q[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|o[3]~35_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|o[3]~36_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|o[3]~6_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|o[3]~7_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|o[3]~10_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|o[3]~11_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|o[3]~8_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst19|o[3]~9_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst7|q[3]~2_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst7|q[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[0]~5_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[0]~6_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[0]~9_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[0]~11_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[0]~2_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[0]~3_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst15|o[0]~12_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[0]~2_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[0]~3_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[0]~5_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[0]~6_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[0]~9_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[0]~11_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst13|o[0]~12_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[0]~5_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[0]~6_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[0]~9_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[0]~11_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[0]~2_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[0]~3_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst16|o[0]~12_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[0]~2_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[0]~3_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[0]~5_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[0]~6_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[0]~9_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[0]~11_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst14|o[0]~12_combout\ : std_logic;
SIGNAL \b2v_inst|Selector1~2_combout\ : std_logic;
SIGNAL \b2v_inst|Selector0~2_combout\ : std_logic;
SIGNAL \b2v_inst|Selector6~0_combout\ : std_logic;
SIGNAL \b2v_inst|Selector6~4_combout\ : std_logic;
SIGNAL \b2v_inst|Selector5~0_combout\ : std_logic;
SIGNAL \b2v_inst|Selector5~1_combout\ : std_logic;
SIGNAL \b2v_inst|Selector4~0_combout\ : std_logic;
SIGNAL \b2v_inst|Selector4~1_combout\ : std_logic;
SIGNAL \b2v_inst|Selector3~0_combout\ : std_logic;
SIGNAL \b2v_inst|Selector2~0_combout\ : std_logic;
SIGNAL \b2v_inst1|b2v_inst7|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst1|b2v_inst8|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst1|b2v_inst3|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst1|b2v_inst1|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst1|b2v_inst4|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst1|b2v_inst5|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst1|b2v_inst25|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst1|b2v_inst6|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst1|b2v_inst2|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst1|b2v_inst11|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst1|b2v_inst26|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst1|b2v_inst12|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst1|b2v_inst9|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst1|b2v_inst|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst1|b2v_inst10|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_clearB~0_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_WideOr0~0_combout\ : std_logic;

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
Lambda1 <= ww_Lambda1;
Lambda2 <= ww_Lambda2;
Lambda3 <= ww_Lambda3;
Lambda4 <= ww_Lambda4;
Omega <= ww_Omega;
Test_state <= ww_Test_state;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset~input_o\);

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);
\ALT_INV_Reset~inputclkctrl_outclk\ <= NOT \Reset~inputclkctrl_outclk\;
\b2v_inst|ALT_INV_clearB~0_combout\ <= NOT \b2v_inst|clearB~0_combout\;
\b2v_inst|ALT_INV_WideOr0~0_combout\ <= NOT \b2v_inst|WideOr0~0_combout\;

-- Location: IOOBUF_X36_Y43_N23
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

-- Location: IOOBUF_X14_Y43_N16
\di~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|Selector0~2_combout\,
	devoe => ww_devoe,
	o => \di~output_o\);

-- Location: IOOBUF_X32_Y43_N23
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

-- Location: IOOBUF_X25_Y43_N16
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

-- Location: IOOBUF_X25_Y43_N2
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

-- Location: IOOBUF_X45_Y43_N30
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

-- Location: IOOBUF_X20_Y43_N9
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

-- Location: IOOBUF_X20_Y43_N30
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

-- Location: IOOBUF_X9_Y43_N2
\MuxSel~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|Selector1~3_combout\,
	devoe => ww_devoe,
	o => \MuxSel~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\Lambda1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst1|b2v_inst8|q\(0),
	devoe => ww_devoe,
	o => \Lambda1[0]~output_o\);

-- Location: IOOBUF_X29_Y43_N2
\Lambda1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst1|b2v_inst8|q\(1),
	devoe => ww_devoe,
	o => \Lambda1[1]~output_o\);

-- Location: IOOBUF_X25_Y43_N30
\Lambda1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst1|b2v_inst8|q\(2),
	devoe => ww_devoe,
	o => \Lambda1[2]~output_o\);

-- Location: IOOBUF_X11_Y43_N16
\Lambda1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst1|b2v_inst8|q\(3),
	devoe => ww_devoe,
	o => \Lambda1[3]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\Lambda2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst1|b2v_inst7|q\(0),
	devoe => ww_devoe,
	o => \Lambda2[0]~output_o\);

-- Location: IOOBUF_X25_Y43_N23
\Lambda2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst1|b2v_inst7|q\(1),
	devoe => ww_devoe,
	o => \Lambda2[1]~output_o\);

-- Location: IOOBUF_X22_Y43_N30
\Lambda2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst1|b2v_inst7|q\(2),
	devoe => ww_devoe,
	o => \Lambda2[2]~output_o\);

-- Location: IOOBUF_X32_Y43_N9
\Lambda2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst1|b2v_inst7|q\(3),
	devoe => ww_devoe,
	o => \Lambda2[3]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\Lambda3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst1|b2v_inst6|q\(0),
	devoe => ww_devoe,
	o => \Lambda3[0]~output_o\);

-- Location: IOOBUF_X20_Y43_N2
\Lambda3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst1|b2v_inst6|q\(1),
	devoe => ww_devoe,
	o => \Lambda3[1]~output_o\);

-- Location: IOOBUF_X9_Y43_N30
\Lambda3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst1|b2v_inst6|q\(2),
	devoe => ww_devoe,
	o => \Lambda3[2]~output_o\);

-- Location: IOOBUF_X9_Y43_N9
\Lambda3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst1|b2v_inst6|q\(3),
	devoe => ww_devoe,
	o => \Lambda3[3]~output_o\);

-- Location: IOOBUF_X27_Y43_N2
\Lambda4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst1|b2v_inst5|q\(0),
	devoe => ww_devoe,
	o => \Lambda4[0]~output_o\);

-- Location: IOOBUF_X22_Y43_N2
\Lambda4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst1|b2v_inst5|q\(1),
	devoe => ww_devoe,
	o => \Lambda4[1]~output_o\);

-- Location: IOOBUF_X18_Y43_N2
\Lambda4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst1|b2v_inst5|q\(2),
	devoe => ww_devoe,
	o => \Lambda4[2]~output_o\);

-- Location: IOOBUF_X25_Y43_N9
\Lambda4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst1|b2v_inst5|q\(3),
	devoe => ww_devoe,
	o => \Lambda4[3]~output_o\);

-- Location: IOOBUF_X32_Y43_N30
\Omega[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst1|b2v_inst25|c\(0),
	devoe => ww_devoe,
	o => \Omega[0]~output_o\);

-- Location: IOOBUF_X32_Y43_N16
\Omega[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst1|b2v_inst25|c\(1),
	devoe => ww_devoe,
	o => \Omega[1]~output_o\);

-- Location: IOOBUF_X38_Y43_N30
\Omega[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst1|b2v_inst25|c\(2),
	devoe => ww_devoe,
	o => \Omega[2]~output_o\);

-- Location: IOOBUF_X29_Y43_N23
\Omega[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst1|b2v_inst25|c\(3),
	devoe => ww_devoe,
	o => \Omega[3]~output_o\);

-- Location: IOOBUF_X45_Y43_N23
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

-- Location: IOOBUF_X45_Y43_N16
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

-- Location: IOOBUF_X11_Y43_N30
\Test_state[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|Selector4~1_combout\,
	devoe => ww_devoe,
	o => \Test_state[2]~output_o\);

-- Location: IOOBUF_X36_Y43_N16
\Test_state[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|Selector3~0_combout\,
	devoe => ww_devoe,
	o => \Test_state[3]~output_o\);

-- Location: IOOBUF_X41_Y43_N9
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

-- Location: IOIBUF_X38_Y43_N22
\Impar~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Impar,
	o => \Impar~input_o\);

-- Location: IOIBUF_X45_Y43_N8
\Count8~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Count8,
	o => \Count8~input_o\);

-- Location: LCCOMB_X30_Y30_N6
\b2v_inst|proximoEstado.localizador2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|proximoEstado.localizador2~0_combout\ = (\b2v_inst|estadoAtual.localizador~q\ & ((\Impar~input_o\) # (!\Count8~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|estadoAtual.localizador~q\,
	datac => \Impar~input_o\,
	datad => \Count8~input_o\,
	combout => \b2v_inst|proximoEstado.localizador2~0_combout\);

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

-- Location: FF_X30_Y30_N7
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

-- Location: LCCOMB_X30_Y30_N26
\b2v_inst|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector8~0_combout\ = (\b2v_inst|estadoAtual.localizador2~q\ & ((\Impar~input_o\) # (!\Count8~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Impar~input_o\,
	datac => \b2v_inst|estadoAtual.localizador2~q\,
	datad => \Count8~input_o\,
	combout => \b2v_inst|Selector8~0_combout\);

-- Location: IOIBUF_X38_Y43_N1
\Inicia~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Inicia,
	o => \Inicia~input_o\);

-- Location: LCCOMB_X29_Y27_N14
\b2v_inst|Selector6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector6~3_combout\ = (!\b2v_inst|estadoAtual.store~q\ & ((\Inicia~input_o\) # (!\b2v_inst|estadoAtual.idle2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inicia~input_o\,
	datac => \b2v_inst|estadoAtual.idle2~q\,
	datad => \b2v_inst|estadoAtual.store~q\,
	combout => \b2v_inst|Selector6~3_combout\);

-- Location: FF_X29_Y27_N23
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

-- Location: LCCOMB_X29_Y27_N24
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

-- Location: FF_X29_Y27_N25
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

-- Location: LCCOMB_X30_Y30_N0
\b2v_inst|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector8~1_combout\ = (\b2v_inst|Selector8~0_combout\) # ((\Inicia~input_o\ & ((\b2v_inst|estadoAtual.idle2~q\) # (!\b2v_inst|estadoAtual.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Selector8~0_combout\,
	datab => \b2v_inst|estadoAtual.idle2~q\,
	datac => \Inicia~input_o\,
	datad => \b2v_inst|estadoAtual.idle~q\,
	combout => \b2v_inst|Selector8~1_combout\);

-- Location: FF_X30_Y30_N1
\b2v_inst|estadoAtual.localizador\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|Selector8~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|estadoAtual.localizador~q\);

-- Location: LCCOMB_X30_Y30_N18
\b2v_inst|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector9~0_combout\ = (!\Impar~input_o\ & (\Count8~input_o\ & ((\b2v_inst|estadoAtual.localizador~q\) # (\b2v_inst|estadoAtual.localizador2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Impar~input_o\,
	datab => \b2v_inst|estadoAtual.localizador~q\,
	datac => \b2v_inst|estadoAtual.localizador2~q\,
	datad => \Count8~input_o\,
	combout => \b2v_inst|Selector9~0_combout\);

-- Location: FF_X29_Y27_N27
\b2v_inst|estadoAtual.clearSyn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|Selector9~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|estadoAtual.clearSyn~q\);

-- Location: IOIBUF_X36_Y43_N8
\Count4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Count4,
	o => \Count4~input_o\);

-- Location: LCCOMB_X29_Y27_N16
\b2v_inst|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector5~2_combout\ = (\b2v_inst|estadoAtual.avaliador~q\ & !\Count4~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|estadoAtual.avaliador~q\,
	datac => \Count4~input_o\,
	combout => \b2v_inst|Selector5~2_combout\);

-- Location: FF_X29_Y27_N17
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

-- Location: LCCOMB_X29_Y27_N30
\b2v_inst|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector10~0_combout\ = (\b2v_inst|estadoAtual.clearSyn~q\) # ((!\Count4~input_o\ & \b2v_inst|estadoAtual.avaliador2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|estadoAtual.clearSyn~q\,
	datac => \Count4~input_o\,
	datad => \b2v_inst|estadoAtual.avaliador2~q\,
	combout => \b2v_inst|Selector10~0_combout\);

-- Location: FF_X29_Y27_N31
\b2v_inst|estadoAtual.avaliador\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|Selector10~0_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|estadoAtual.avaliador~q\);

-- Location: LCCOMB_X29_Y27_N22
\b2v_inst|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector6~1_combout\ = (\Count4~input_o\ & ((\b2v_inst|estadoAtual.avaliador~q\) # (\b2v_inst|estadoAtual.avaliador2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|estadoAtual.avaliador~q\,
	datab => \Count4~input_o\,
	datad => \b2v_inst|estadoAtual.avaliador2~q\,
	combout => \b2v_inst|Selector6~1_combout\);

-- Location: FF_X29_Y27_N1
\b2v_inst|estadoAtual.store\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst|Selector6~1_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|estadoAtual.store~q\);

-- Location: LCCOMB_X30_Y31_N28
\b2v_inst|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|WideOr2~0_combout\ = (\b2v_inst|estadoAtual.localizador2~q\) # (\b2v_inst|estadoAtual.localizador~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|estadoAtual.localizador2~q\,
	datad => \b2v_inst|estadoAtual.localizador~q\,
	combout => \b2v_inst|WideOr2~0_combout\);

-- Location: LCCOMB_X29_Y27_N0
\b2v_inst|clearB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|clearB~0_combout\ = (\b2v_inst|estadoAtual.idle2~q\) # (!\b2v_inst|estadoAtual.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|estadoAtual.idle~q\,
	datad => \b2v_inst|estadoAtual.idle2~q\,
	combout => \b2v_inst|clearB~0_combout\);

-- Location: FF_X27_Y28_N17
\b2v_inst1|b2v_inst26|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|b2v_inst25|c\(0),
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	ena => \b2v_inst|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst26|q\(0));

-- Location: FF_X29_Y28_N3
\b2v_inst1|b2v_inst26|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|b2v_inst25|c\(2),
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	ena => \b2v_inst|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst26|q\(2));

-- Location: LCCOMB_X32_Y28_N16
\b2v_inst1|b2v_inst32|o[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst32|o[1]~2_combout\ = (\b2v_inst1|b2v_inst26|q\(1) & ((\b2v_inst1|b2v_inst26|q\(0) & (!\b2v_inst1|b2v_inst26|q\(3))) # (!\b2v_inst1|b2v_inst26|q\(0) & ((\b2v_inst1|b2v_inst26|q\(2)))))) # (!\b2v_inst1|b2v_inst26|q\(1) & 
-- (\b2v_inst1|b2v_inst26|q\(3) $ (((\b2v_inst1|b2v_inst26|q\(0) & \b2v_inst1|b2v_inst26|q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst26|q\(1),
	datab => \b2v_inst1|b2v_inst26|q\(3),
	datac => \b2v_inst1|b2v_inst26|q\(0),
	datad => \b2v_inst1|b2v_inst26|q\(2),
	combout => \b2v_inst1|b2v_inst32|o[1]~2_combout\);

-- Location: LCCOMB_X32_Y28_N26
\b2v_inst1|b2v_inst32|o[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst32|o[0]~1_combout\ = (\b2v_inst1|b2v_inst26|q\(1) & (\b2v_inst1|b2v_inst26|q\(0) $ (((\b2v_inst1|b2v_inst26|q\(2)) # (!\b2v_inst1|b2v_inst26|q\(3)))))) # (!\b2v_inst1|b2v_inst26|q\(1) & (\b2v_inst1|b2v_inst26|q\(3) $ 
-- (((\b2v_inst1|b2v_inst26|q\(0)) # (\b2v_inst1|b2v_inst26|q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst26|q\(1),
	datab => \b2v_inst1|b2v_inst26|q\(3),
	datac => \b2v_inst1|b2v_inst26|q\(0),
	datad => \b2v_inst1|b2v_inst26|q\(2),
	combout => \b2v_inst1|b2v_inst32|o[0]~1_combout\);

-- Location: LCCOMB_X27_Y28_N20
\b2v_inst1|b2v_inst21|o[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[1]~23_combout\ = (\b2v_inst1|b2v_inst32|o[1]~2_combout\ & (\b2v_inst1|b2v_inst32|o[0]~1_combout\)) # (!\b2v_inst1|b2v_inst32|o[1]~2_combout\ & (\b2v_inst1|b2v_inst25|c\(3) $ (((!\b2v_inst1|b2v_inst32|o[0]~1_combout\ & 
-- \b2v_inst1|b2v_inst25|c\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst32|o[0]~1_combout\,
	datab => \b2v_inst1|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst1|b2v_inst25|c\(1),
	datad => \b2v_inst1|b2v_inst25|c\(3),
	combout => \b2v_inst1|b2v_inst21|o[1]~23_combout\);

-- Location: LCCOMB_X27_Y28_N26
\b2v_inst1|b2v_inst21|o[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[1]~24_combout\ = (\b2v_inst1|b2v_inst32|o[1]~2_combout\ & (\b2v_inst1|b2v_inst25|c\(0) $ (((\b2v_inst1|b2v_inst25|c\(1) & !\b2v_inst1|b2v_inst21|o[1]~23_combout\))))) # (!\b2v_inst1|b2v_inst32|o[1]~2_combout\ & 
-- (((\b2v_inst1|b2v_inst21|o[1]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst32|o[1]~2_combout\,
	datab => \b2v_inst1|b2v_inst25|c\(0),
	datac => \b2v_inst1|b2v_inst25|c\(1),
	datad => \b2v_inst1|b2v_inst21|o[1]~23_combout\,
	combout => \b2v_inst1|b2v_inst21|o[1]~24_combout\);

-- Location: LCCOMB_X29_Y28_N4
\b2v_inst1|b2v_inst21|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|Mux5~0_combout\ = \b2v_inst1|b2v_inst25|c\(2) $ (\b2v_inst1|b2v_inst25|c\(0) $ (\b2v_inst1|b2v_inst25|c\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst25|c\(2),
	datac => \b2v_inst1|b2v_inst25|c\(0),
	datad => \b2v_inst1|b2v_inst25|c\(3),
	combout => \b2v_inst1|b2v_inst21|Mux5~0_combout\);

-- Location: LCCOMB_X28_Y28_N20
\b2v_inst1|b2v_inst21|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|Mux2~0_combout\ = \b2v_inst1|b2v_inst25|c\(2) $ (\b2v_inst1|b2v_inst25|c\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|b2v_inst25|c\(2),
	datad => \b2v_inst1|b2v_inst25|c\(1),
	combout => \b2v_inst1|b2v_inst21|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y28_N16
\b2v_inst1|b2v_inst21|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|Mux9~0_combout\ = \b2v_inst1|b2v_inst25|c\(0) $ (\b2v_inst1|b2v_inst25|c\(2) $ (\b2v_inst1|b2v_inst25|c\(3) $ (\b2v_inst1|b2v_inst25|c\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst25|c\(0),
	datab => \b2v_inst1|b2v_inst25|c\(2),
	datac => \b2v_inst1|b2v_inst25|c\(3),
	datad => \b2v_inst1|b2v_inst25|c\(1),
	combout => \b2v_inst1|b2v_inst21|Mux9~0_combout\);

-- Location: LCCOMB_X27_Y28_N0
\b2v_inst1|b2v_inst21|o[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[1]~25_combout\ = (\b2v_inst1|b2v_inst32|o[0]~1_combout\ & (\b2v_inst1|b2v_inst32|o[1]~2_combout\)) # (!\b2v_inst1|b2v_inst32|o[0]~1_combout\ & ((\b2v_inst1|b2v_inst32|o[1]~2_combout\ & ((\b2v_inst1|b2v_inst21|Mux9~0_combout\))) # 
-- (!\b2v_inst1|b2v_inst32|o[1]~2_combout\ & (\b2v_inst1|b2v_inst21|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst32|o[0]~1_combout\,
	datab => \b2v_inst1|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst1|b2v_inst21|Mux2~0_combout\,
	datad => \b2v_inst1|b2v_inst21|Mux9~0_combout\,
	combout => \b2v_inst1|b2v_inst21|o[1]~25_combout\);

-- Location: LCCOMB_X27_Y28_N10
\b2v_inst1|b2v_inst21|o[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[1]~26_combout\ = (\b2v_inst1|b2v_inst32|o[0]~1_combout\ & ((\b2v_inst1|b2v_inst21|o[1]~25_combout\ & ((\b2v_inst1|b2v_inst21|Mux5~0_combout\))) # (!\b2v_inst1|b2v_inst21|o[1]~25_combout\ & (\b2v_inst1|b2v_inst25|c\(2))))) # 
-- (!\b2v_inst1|b2v_inst32|o[0]~1_combout\ & (((\b2v_inst1|b2v_inst21|o[1]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst32|o[0]~1_combout\,
	datab => \b2v_inst1|b2v_inst25|c\(2),
	datac => \b2v_inst1|b2v_inst21|Mux5~0_combout\,
	datad => \b2v_inst1|b2v_inst21|o[1]~25_combout\,
	combout => \b2v_inst1|b2v_inst21|o[1]~26_combout\);

-- Location: LCCOMB_X27_Y28_N4
\b2v_inst1|b2v_inst21|o[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[1]~27_combout\ = (\b2v_inst1|b2v_inst32|o[3]~0_combout\ & ((\b2v_inst1|b2v_inst32|o[2]~3_combout\ & (\b2v_inst1|b2v_inst21|o[1]~24_combout\)) # (!\b2v_inst1|b2v_inst32|o[2]~3_combout\ & ((\b2v_inst1|b2v_inst21|o[1]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst32|o[3]~0_combout\,
	datab => \b2v_inst1|b2v_inst32|o[2]~3_combout\,
	datac => \b2v_inst1|b2v_inst21|o[1]~24_combout\,
	datad => \b2v_inst1|b2v_inst21|o[1]~26_combout\,
	combout => \b2v_inst1|b2v_inst21|o[1]~27_combout\);

-- Location: LCCOMB_X30_Y28_N16
\b2v_inst1|b2v_inst21|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|Mux4~0_combout\ = \b2v_inst1|b2v_inst25|c\(0) $ (\b2v_inst1|b2v_inst25|c\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|b2v_inst25|c\(0),
	datad => \b2v_inst1|b2v_inst25|c\(3),
	combout => \b2v_inst1|b2v_inst21|Mux4~0_combout\);

-- Location: LCCOMB_X30_Y28_N26
\b2v_inst1|b2v_inst21|o[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[0]~10_combout\ = (\b2v_inst1|b2v_inst32|o[1]~2_combout\ & !\b2v_inst1|b2v_inst32|o[2]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst32|o[1]~2_combout\,
	datad => \b2v_inst1|b2v_inst32|o[2]~3_combout\,
	combout => \b2v_inst1|b2v_inst21|o[0]~10_combout\);

-- Location: LCCOMB_X27_Y28_N22
\b2v_inst1|b2v_inst21|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|Mux7~1_combout\ = \b2v_inst1|b2v_inst25|c\(0) $ (\b2v_inst1|b2v_inst25|c\(1) $ (\b2v_inst1|b2v_inst25|c\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst25|c\(0),
	datac => \b2v_inst1|b2v_inst25|c\(1),
	datad => \b2v_inst1|b2v_inst25|c\(3),
	combout => \b2v_inst1|b2v_inst21|Mux7~1_combout\);

-- Location: LCCOMB_X32_Y28_N20
\b2v_inst1|b2v_inst21|o[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[0]~7_combout\ = (\b2v_inst1|b2v_inst32|o[2]~3_combout\) # ((!\b2v_inst1|b2v_inst32|o[1]~2_combout\ & \b2v_inst1|b2v_inst32|o[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst1|b2v_inst32|o[0]~1_combout\,
	datad => \b2v_inst1|b2v_inst32|o[2]~3_combout\,
	combout => \b2v_inst1|b2v_inst21|o[0]~7_combout\);

-- Location: LCCOMB_X32_Y28_N30
\b2v_inst1|b2v_inst21|o[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[0]~8_combout\ = (\b2v_inst1|b2v_inst32|o[2]~3_combout\) # ((\b2v_inst1|b2v_inst32|o[1]~2_combout\ & \b2v_inst1|b2v_inst32|o[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst1|b2v_inst32|o[0]~1_combout\,
	datad => \b2v_inst1|b2v_inst32|o[2]~3_combout\,
	combout => \b2v_inst1|b2v_inst21|o[0]~8_combout\);

-- Location: LCCOMB_X28_Y28_N30
\b2v_inst1|b2v_inst21|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|Mux10~0_combout\ = \b2v_inst1|b2v_inst25|c\(1) $ (\b2v_inst1|b2v_inst25|c\(0) $ (\b2v_inst1|b2v_inst25|c\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst25|c\(1),
	datac => \b2v_inst1|b2v_inst25|c\(0),
	datad => \b2v_inst1|b2v_inst25|c\(2),
	combout => \b2v_inst1|b2v_inst21|Mux10~0_combout\);

-- Location: LCCOMB_X30_Y28_N6
\b2v_inst1|b2v_inst21|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|Mux5~1_combout\ = \b2v_inst1|b2v_inst25|c\(0) $ (\b2v_inst1|b2v_inst25|c\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|b2v_inst25|c\(0),
	datad => \b2v_inst1|b2v_inst25|c\(2),
	combout => \b2v_inst1|b2v_inst21|Mux5~1_combout\);

-- Location: LCCOMB_X29_Y28_N12
\b2v_inst1|b2v_inst21|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|Mux3~0_combout\ = \b2v_inst1|b2v_inst25|c\(2) $ (\b2v_inst1|b2v_inst25|c\(1) $ (\b2v_inst1|b2v_inst25|c\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst25|c\(2),
	datac => \b2v_inst1|b2v_inst25|c\(1),
	datad => \b2v_inst1|b2v_inst25|c\(3),
	combout => \b2v_inst1|b2v_inst21|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y28_N6
\b2v_inst1|b2v_inst21|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|Mux0~0_combout\ = \b2v_inst1|b2v_inst25|c\(3) $ (\b2v_inst1|b2v_inst25|c\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|b2v_inst25|c\(3),
	datad => \b2v_inst1|b2v_inst25|c\(2),
	combout => \b2v_inst1|b2v_inst21|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y28_N2
\b2v_inst1|b2v_inst21|o[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[1]~28_combout\ = (\b2v_inst1|b2v_inst32|o[0]~1_combout\ & ((\b2v_inst1|b2v_inst32|o[1]~2_combout\) # ((\b2v_inst1|b2v_inst21|Mux3~0_combout\)))) # (!\b2v_inst1|b2v_inst32|o[0]~1_combout\ & (!\b2v_inst1|b2v_inst32|o[1]~2_combout\ & 
-- ((\b2v_inst1|b2v_inst21|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst32|o[0]~1_combout\,
	datab => \b2v_inst1|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst1|b2v_inst21|Mux3~0_combout\,
	datad => \b2v_inst1|b2v_inst21|Mux0~0_combout\,
	combout => \b2v_inst1|b2v_inst21|o[1]~28_combout\);

-- Location: LCCOMB_X27_Y28_N24
\b2v_inst1|b2v_inst21|o[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[1]~29_combout\ = (\b2v_inst1|b2v_inst32|o[1]~2_combout\ & ((\b2v_inst1|b2v_inst21|o[1]~28_combout\ & (\b2v_inst1|b2v_inst21|Mux10~0_combout\)) # (!\b2v_inst1|b2v_inst21|o[1]~28_combout\ & 
-- ((\b2v_inst1|b2v_inst21|Mux5~1_combout\))))) # (!\b2v_inst1|b2v_inst32|o[1]~2_combout\ & (((\b2v_inst1|b2v_inst21|o[1]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst21|Mux10~0_combout\,
	datab => \b2v_inst1|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst1|b2v_inst21|Mux5~1_combout\,
	datad => \b2v_inst1|b2v_inst21|o[1]~28_combout\,
	combout => \b2v_inst1|b2v_inst21|o[1]~29_combout\);

-- Location: LCCOMB_X27_Y28_N18
\b2v_inst1|b2v_inst21|o[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[1]~30_combout\ = (\b2v_inst1|b2v_inst21|o[0]~7_combout\ & ((\b2v_inst1|b2v_inst21|o[0]~8_combout\ & ((\b2v_inst1|b2v_inst21|o[1]~29_combout\))) # (!\b2v_inst1|b2v_inst21|o[0]~8_combout\ & (\b2v_inst1|b2v_inst25|c\(1))))) # 
-- (!\b2v_inst1|b2v_inst21|o[0]~7_combout\ & (\b2v_inst1|b2v_inst21|o[0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst21|o[0]~7_combout\,
	datab => \b2v_inst1|b2v_inst21|o[0]~8_combout\,
	datac => \b2v_inst1|b2v_inst25|c\(1),
	datad => \b2v_inst1|b2v_inst21|o[1]~29_combout\,
	combout => \b2v_inst1|b2v_inst21|o[1]~30_combout\);

-- Location: LCCOMB_X27_Y28_N12
\b2v_inst1|b2v_inst21|o[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[1]~31_combout\ = (\b2v_inst1|b2v_inst21|o[0]~10_combout\ & ((\b2v_inst1|b2v_inst21|o[1]~30_combout\ & ((\b2v_inst1|b2v_inst21|Mux7~1_combout\))) # (!\b2v_inst1|b2v_inst21|o[1]~30_combout\ & 
-- (\b2v_inst1|b2v_inst21|Mux4~0_combout\)))) # (!\b2v_inst1|b2v_inst21|o[0]~10_combout\ & (((\b2v_inst1|b2v_inst21|o[1]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst21|Mux4~0_combout\,
	datab => \b2v_inst1|b2v_inst21|o[0]~10_combout\,
	datac => \b2v_inst1|b2v_inst21|Mux7~1_combout\,
	datad => \b2v_inst1|b2v_inst21|o[1]~30_combout\,
	combout => \b2v_inst1|b2v_inst21|o[1]~31_combout\);

-- Location: LCCOMB_X27_Y28_N30
\b2v_inst1|b2v_inst21|o[1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[1]~32_combout\ = (\b2v_inst1|b2v_inst21|o[1]~27_combout\) # ((!\b2v_inst1|b2v_inst32|o[3]~0_combout\ & \b2v_inst1|b2v_inst21|o[1]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst32|o[3]~0_combout\,
	datac => \b2v_inst1|b2v_inst21|o[1]~27_combout\,
	datad => \b2v_inst1|b2v_inst21|o[1]~31_combout\,
	combout => \b2v_inst1|b2v_inst21|o[1]~32_combout\);

-- Location: LCCOMB_X30_Y30_N2
\b2v_inst|Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector1~3_combout\ = (\Impar~input_o\ & (\b2v_inst|Selector1~2_combout\ & ((\b2v_inst|estadoAtual.localizador~q\) # (\b2v_inst|estadoAtual.localizador2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Impar~input_o\,
	datab => \b2v_inst|estadoAtual.localizador~q\,
	datac => \b2v_inst|Selector1~2_combout\,
	datad => \b2v_inst|estadoAtual.localizador2~q\,
	combout => \b2v_inst|Selector1~3_combout\);

-- Location: LCCOMB_X30_Y30_N24
\b2v_inst1|b2v_inst35|O[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst35|O[3]~0_combout\ = (\b2v_inst|Selector1~3_combout\ & ((\b2v_inst1|b2v_inst5|q\(3)))) # (!\b2v_inst|Selector1~3_combout\ & (\b2v_inst1|b2v_inst9|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst9|q\(3),
	datac => \b2v_inst1|b2v_inst5|q\(3),
	datad => \b2v_inst|Selector1~3_combout\,
	combout => \b2v_inst1|b2v_inst35|O[3]~0_combout\);

-- Location: FF_X30_Y30_N25
\b2v_inst1|b2v_inst10|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|b2v_inst35|O[3]~0_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	ena => \b2v_inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst10|q\(3));

-- Location: LCCOMB_X30_Y30_N20
\b2v_inst1|b2v_inst34|O[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst34|O[3]~0_combout\ = (\b2v_inst|Selector1~3_combout\ & ((\b2v_inst1|b2v_inst6|q\(3)))) # (!\b2v_inst|Selector1~3_combout\ & (\b2v_inst1|b2v_inst10|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst10|q\(3),
	datac => \b2v_inst1|b2v_inst6|q\(3),
	datad => \b2v_inst|Selector1~3_combout\,
	combout => \b2v_inst1|b2v_inst34|O[3]~0_combout\);

-- Location: FF_X30_Y30_N21
\b2v_inst1|b2v_inst11|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|b2v_inst34|O[3]~0_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	ena => \b2v_inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst11|q\(3));

-- Location: LCCOMB_X30_Y30_N30
\b2v_inst1|b2v_inst33|O[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst33|O[3]~0_combout\ = (\b2v_inst|Selector1~3_combout\ & (\b2v_inst1|b2v_inst7|q\(3))) # (!\b2v_inst|Selector1~3_combout\ & ((\b2v_inst1|b2v_inst11|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q\(3),
	datab => \b2v_inst1|b2v_inst11|q\(3),
	datad => \b2v_inst|Selector1~3_combout\,
	combout => \b2v_inst1|b2v_inst33|O[3]~0_combout\);

-- Location: FF_X30_Y30_N31
\b2v_inst1|b2v_inst12|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|b2v_inst33|O[3]~0_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	ena => \b2v_inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst12|q\(3));

-- Location: LCCOMB_X30_Y30_N16
\b2v_inst1|b2v_inst22|O[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst22|O[3]~0_combout\ = (\b2v_inst1|b2v_inst12|q\(3) & (((!\b2v_inst|WideOr2~0_combout\) # (!\b2v_inst|Selector1~2_combout\)) # (!\Impar~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Impar~input_o\,
	datab => \b2v_inst1|b2v_inst12|q\(3),
	datac => \b2v_inst|Selector1~2_combout\,
	datad => \b2v_inst|WideOr2~0_combout\,
	combout => \b2v_inst1|b2v_inst22|O[3]~0_combout\);

-- Location: FF_X30_Y30_N17
\b2v_inst1|b2v_inst9|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|b2v_inst22|O[3]~0_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	ena => \b2v_inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst9|q\(3));

-- Location: LCCOMB_X27_Y26_N10
\b2v_inst1|b2v_inst17|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|Mux3~0_combout\ = \b2v_inst1|b2v_inst9|q\(1) $ (\b2v_inst1|b2v_inst9|q\(3) $ (\b2v_inst1|b2v_inst9|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst9|q\(1),
	datab => \b2v_inst1|b2v_inst9|q\(3),
	datad => \b2v_inst1|b2v_inst9|q\(2),
	combout => \b2v_inst1|b2v_inst17|Mux3~0_combout\);

-- Location: LCCOMB_X25_Y27_N2
\b2v_inst1|b2v_inst18|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|Mux5~0_combout\ = \b2v_inst1|b2v_inst10|q\(2) $ (\b2v_inst1|b2v_inst10|q\(3) $ (\b2v_inst1|b2v_inst10|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst10|q\(2),
	datac => \b2v_inst1|b2v_inst10|q\(3),
	datad => \b2v_inst1|b2v_inst10|q\(0),
	combout => \b2v_inst1|b2v_inst18|Mux5~0_combout\);

-- Location: LCCOMB_X28_Y28_N10
\b2v_inst1|b2v_inst21|o[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[0]~13_combout\ = (\b2v_inst1|b2v_inst32|o[1]~2_combout\ & (\b2v_inst1|b2v_inst32|o[0]~1_combout\)) # (!\b2v_inst1|b2v_inst32|o[1]~2_combout\ & ((\b2v_inst1|b2v_inst32|o[0]~1_combout\ & (\b2v_inst1|b2v_inst21|Mux10~0_combout\)) # 
-- (!\b2v_inst1|b2v_inst32|o[0]~1_combout\ & ((\b2v_inst1|b2v_inst21|Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst32|o[1]~2_combout\,
	datab => \b2v_inst1|b2v_inst32|o[0]~1_combout\,
	datac => \b2v_inst1|b2v_inst21|Mux10~0_combout\,
	datad => \b2v_inst1|b2v_inst21|Mux2~0_combout\,
	combout => \b2v_inst1|b2v_inst21|o[0]~13_combout\);

-- Location: LCCOMB_X28_Y28_N4
\b2v_inst1|b2v_inst21|o[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[0]~14_combout\ = (\b2v_inst1|b2v_inst32|o[1]~2_combout\ & ((\b2v_inst1|b2v_inst21|o[0]~13_combout\ & (\b2v_inst1|b2v_inst21|Mux9~0_combout\)) # (!\b2v_inst1|b2v_inst21|o[0]~13_combout\ & ((\b2v_inst1|b2v_inst21|Mux3~0_combout\))))) 
-- # (!\b2v_inst1|b2v_inst32|o[1]~2_combout\ & (((\b2v_inst1|b2v_inst21|o[0]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst32|o[1]~2_combout\,
	datab => \b2v_inst1|b2v_inst21|Mux9~0_combout\,
	datac => \b2v_inst1|b2v_inst21|Mux3~0_combout\,
	datad => \b2v_inst1|b2v_inst21|o[0]~13_combout\,
	combout => \b2v_inst1|b2v_inst21|o[0]~14_combout\);

-- Location: LCCOMB_X28_Y28_N8
\b2v_inst1|b2v_inst21|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|Mux7~0_combout\ = \b2v_inst1|b2v_inst25|c\(0) $ (\b2v_inst1|b2v_inst25|c\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|b2v_inst25|c\(0),
	datad => \b2v_inst1|b2v_inst25|c\(1),
	combout => \b2v_inst1|b2v_inst21|Mux7~0_combout\);

-- Location: LCCOMB_X28_Y28_N22
\b2v_inst1|b2v_inst21|o[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[0]~15_combout\ = (\b2v_inst1|b2v_inst32|o[0]~1_combout\ & (((\b2v_inst1|b2v_inst32|o[1]~2_combout\)))) # (!\b2v_inst1|b2v_inst32|o[0]~1_combout\ & (\b2v_inst1|b2v_inst25|c\(1) $ (((\b2v_inst1|b2v_inst25|c\(3) & 
-- \b2v_inst1|b2v_inst32|o[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst25|c\(3),
	datab => \b2v_inst1|b2v_inst32|o[0]~1_combout\,
	datac => \b2v_inst1|b2v_inst25|c\(1),
	datad => \b2v_inst1|b2v_inst32|o[1]~2_combout\,
	combout => \b2v_inst1|b2v_inst21|o[0]~15_combout\);

-- Location: LCCOMB_X28_Y28_N12
\b2v_inst1|b2v_inst21|o[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[0]~16_combout\ = (\b2v_inst1|b2v_inst32|o[0]~1_combout\ & (\b2v_inst1|b2v_inst21|Mux7~0_combout\ $ (((\b2v_inst1|b2v_inst25|c\(3) & \b2v_inst1|b2v_inst21|o[0]~15_combout\))))) # (!\b2v_inst1|b2v_inst32|o[0]~1_combout\ & 
-- (((\b2v_inst1|b2v_inst21|o[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst25|c\(3),
	datab => \b2v_inst1|b2v_inst32|o[0]~1_combout\,
	datac => \b2v_inst1|b2v_inst21|Mux7~0_combout\,
	datad => \b2v_inst1|b2v_inst21|o[0]~15_combout\,
	combout => \b2v_inst1|b2v_inst21|o[0]~16_combout\);

-- Location: LCCOMB_X28_Y28_N14
\b2v_inst1|b2v_inst21|o[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[0]~17_combout\ = (\b2v_inst1|b2v_inst32|o[3]~0_combout\ & ((\b2v_inst1|b2v_inst32|o[2]~3_combout\ & (\b2v_inst1|b2v_inst21|o[0]~14_combout\)) # (!\b2v_inst1|b2v_inst32|o[2]~3_combout\ & ((\b2v_inst1|b2v_inst21|o[0]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst32|o[3]~0_combout\,
	datab => \b2v_inst1|b2v_inst32|o[2]~3_combout\,
	datac => \b2v_inst1|b2v_inst21|o[0]~14_combout\,
	datad => \b2v_inst1|b2v_inst21|o[0]~16_combout\,
	combout => \b2v_inst1|b2v_inst21|o[0]~17_combout\);

-- Location: LCCOMB_X30_Y28_N4
\b2v_inst1|b2v_inst21|o[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[0]~18_combout\ = (\b2v_inst1|b2v_inst32|o[0]~1_combout\ & (((\b2v_inst1|b2v_inst32|o[1]~2_combout\)))) # (!\b2v_inst1|b2v_inst32|o[0]~1_combout\ & (\b2v_inst1|b2v_inst25|c\(2) $ (((\b2v_inst1|b2v_inst32|o[1]~2_combout\ & 
-- \b2v_inst1|b2v_inst25|c\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst25|c\(2),
	datab => \b2v_inst1|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst1|b2v_inst32|o[0]~1_combout\,
	datad => \b2v_inst1|b2v_inst25|c\(3),
	combout => \b2v_inst1|b2v_inst21|o[0]~18_combout\);

-- Location: LCCOMB_X30_Y28_N12
\b2v_inst1|b2v_inst21|o[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[0]~19_combout\ = (\b2v_inst1|b2v_inst32|o[0]~1_combout\ & (\b2v_inst1|b2v_inst21|Mux5~1_combout\ $ (((\b2v_inst1|b2v_inst25|c\(3) & \b2v_inst1|b2v_inst21|o[0]~18_combout\))))) # (!\b2v_inst1|b2v_inst32|o[0]~1_combout\ & 
-- (((\b2v_inst1|b2v_inst21|o[0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst32|o[0]~1_combout\,
	datab => \b2v_inst1|b2v_inst25|c\(3),
	datac => \b2v_inst1|b2v_inst21|o[0]~18_combout\,
	datad => \b2v_inst1|b2v_inst21|Mux5~1_combout\,
	combout => \b2v_inst1|b2v_inst21|o[0]~19_combout\);

-- Location: LCCOMB_X28_Y28_N28
\b2v_inst1|b2v_inst21|o[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[0]~20_combout\ = (\b2v_inst1|b2v_inst21|o[0]~8_combout\ & (((\b2v_inst1|b2v_inst21|o[0]~19_combout\)) # (!\b2v_inst1|b2v_inst21|o[0]~7_combout\))) # (!\b2v_inst1|b2v_inst21|o[0]~8_combout\ & (\b2v_inst1|b2v_inst21|o[0]~7_combout\ & 
-- (\b2v_inst1|b2v_inst25|c\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst21|o[0]~8_combout\,
	datab => \b2v_inst1|b2v_inst21|o[0]~7_combout\,
	datac => \b2v_inst1|b2v_inst25|c\(0),
	datad => \b2v_inst1|b2v_inst21|o[0]~19_combout\,
	combout => \b2v_inst1|b2v_inst21|o[0]~20_combout\);

-- Location: LCCOMB_X28_Y28_N2
\b2v_inst1|b2v_inst21|o[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[0]~21_combout\ = (\b2v_inst1|b2v_inst21|o[0]~10_combout\ & (\b2v_inst1|b2v_inst25|c\(3) $ (((\b2v_inst1|b2v_inst25|c\(0) & \b2v_inst1|b2v_inst21|o[0]~20_combout\))))) # (!\b2v_inst1|b2v_inst21|o[0]~10_combout\ & 
-- (((\b2v_inst1|b2v_inst21|o[0]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst25|c\(3),
	datab => \b2v_inst1|b2v_inst21|o[0]~10_combout\,
	datac => \b2v_inst1|b2v_inst25|c\(0),
	datad => \b2v_inst1|b2v_inst21|o[0]~20_combout\,
	combout => \b2v_inst1|b2v_inst21|o[0]~21_combout\);

-- Location: LCCOMB_X28_Y28_N0
\b2v_inst1|b2v_inst21|o[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[0]~22_combout\ = (\b2v_inst1|b2v_inst21|o[0]~17_combout\) # ((!\b2v_inst1|b2v_inst32|o[3]~0_combout\ & \b2v_inst1|b2v_inst21|o[0]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst32|o[3]~0_combout\,
	datac => \b2v_inst1|b2v_inst21|o[0]~17_combout\,
	datad => \b2v_inst1|b2v_inst21|o[0]~21_combout\,
	combout => \b2v_inst1|b2v_inst21|o[0]~22_combout\);

-- Location: LCCOMB_X25_Y28_N18
\b2v_inst1|b2v_inst18|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|Mux2~0_combout\ = \b2v_inst1|b2v_inst10|q\(1) $ (\b2v_inst1|b2v_inst10|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|b2v_inst10|q\(1),
	datad => \b2v_inst1|b2v_inst10|q\(2),
	combout => \b2v_inst1|b2v_inst18|Mux2~0_combout\);

-- Location: LCCOMB_X26_Y28_N10
\b2v_inst1|b2v_inst18|o[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|o[1]~20_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & ((\b2v_inst1|b2v_inst18|Mux9~0_combout\) # ((\b2v_inst1|b2v_inst21|o[0]~22_combout\)))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & 
-- (((\b2v_inst1|b2v_inst18|Mux2~0_combout\ & !\b2v_inst1|b2v_inst21|o[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst18|Mux9~0_combout\,
	datab => \b2v_inst1|b2v_inst18|Mux2~0_combout\,
	datac => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datad => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	combout => \b2v_inst1|b2v_inst18|o[1]~20_combout\);

-- Location: LCCOMB_X26_Y28_N20
\b2v_inst1|b2v_inst18|o[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|o[1]~21_combout\ = (\b2v_inst1|b2v_inst21|o[0]~22_combout\ & ((\b2v_inst1|b2v_inst18|o[1]~20_combout\ & ((\b2v_inst1|b2v_inst18|Mux5~0_combout\))) # (!\b2v_inst1|b2v_inst18|o[1]~20_combout\ & (\b2v_inst1|b2v_inst10|q\(2))))) # 
-- (!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (((\b2v_inst1|b2v_inst18|o[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst10|q\(2),
	datab => \b2v_inst1|b2v_inst18|Mux5~0_combout\,
	datac => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datad => \b2v_inst1|b2v_inst18|o[1]~20_combout\,
	combout => \b2v_inst1|b2v_inst18|o[1]~21_combout\);

-- Location: LCCOMB_X26_Y28_N22
\b2v_inst1|b2v_inst18|o[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|o[1]~18_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (((\b2v_inst1|b2v_inst21|o[0]~22_combout\)))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (\b2v_inst1|b2v_inst10|q\(3) $ (((\b2v_inst1|b2v_inst10|q\(1) & 
-- !\b2v_inst1|b2v_inst21|o[0]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datab => \b2v_inst1|b2v_inst10|q\(1),
	datac => \b2v_inst1|b2v_inst10|q\(3),
	datad => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	combout => \b2v_inst1|b2v_inst18|o[1]~18_combout\);

-- Location: LCCOMB_X26_Y28_N24
\b2v_inst1|b2v_inst18|o[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|o[1]~19_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (\b2v_inst1|b2v_inst10|q\(0) $ (((\b2v_inst1|b2v_inst10|q\(1) & !\b2v_inst1|b2v_inst18|o[1]~18_combout\))))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & 
-- (((\b2v_inst1|b2v_inst18|o[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datab => \b2v_inst1|b2v_inst10|q\(1),
	datac => \b2v_inst1|b2v_inst18|o[1]~18_combout\,
	datad => \b2v_inst1|b2v_inst10|q\(0),
	combout => \b2v_inst1|b2v_inst18|o[1]~19_combout\);

-- Location: LCCOMB_X26_Y28_N18
\b2v_inst1|b2v_inst6|q[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst6|q[1]~2_combout\ = (\b2v_inst1|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst1|b2v_inst21|o[2]~12_combout\ & ((\b2v_inst1|b2v_inst18|o[1]~19_combout\))) # (!\b2v_inst1|b2v_inst21|o[2]~12_combout\ & (\b2v_inst1|b2v_inst18|o[1]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q[3]~1_combout\,
	datab => \b2v_inst1|b2v_inst18|o[1]~21_combout\,
	datac => \b2v_inst1|b2v_inst21|o[2]~12_combout\,
	datad => \b2v_inst1|b2v_inst18|o[1]~19_combout\,
	combout => \b2v_inst1|b2v_inst6|q[1]~2_combout\);

-- Location: LCCOMB_X25_Y28_N8
\b2v_inst1|b2v_inst18|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|Mux4~0_combout\ = \b2v_inst1|b2v_inst10|q\(3) $ (\b2v_inst1|b2v_inst10|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst10|q\(3),
	datad => \b2v_inst1|b2v_inst10|q\(0),
	combout => \b2v_inst1|b2v_inst18|Mux4~0_combout\);

-- Location: LCCOMB_X26_Y27_N26
\b2v_inst1|b2v_inst18|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|Mux7~1_combout\ = \b2v_inst1|b2v_inst10|q\(1) $ (\b2v_inst1|b2v_inst10|q\(0) $ (\b2v_inst1|b2v_inst10|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst10|q\(1),
	datac => \b2v_inst1|b2v_inst10|q\(0),
	datad => \b2v_inst1|b2v_inst10|q\(3),
	combout => \b2v_inst1|b2v_inst18|Mux7~1_combout\);

-- Location: LCCOMB_X26_Y28_N8
\b2v_inst1|b2v_inst18|o[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|o[3]~5_combout\ = (\b2v_inst1|b2v_inst21|o[2]~12_combout\) # ((\b2v_inst1|b2v_inst21|o[0]~22_combout\ & \b2v_inst1|b2v_inst21|o[1]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datac => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datad => \b2v_inst1|b2v_inst21|o[2]~12_combout\,
	combout => \b2v_inst1|b2v_inst18|o[3]~5_combout\);

-- Location: LCCOMB_X27_Y27_N2
\b2v_inst1|b2v_inst18|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|Mux3~0_combout\ = \b2v_inst1|b2v_inst10|q\(1) $ (\b2v_inst1|b2v_inst10|q\(2) $ (\b2v_inst1|b2v_inst10|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst10|q\(1),
	datab => \b2v_inst1|b2v_inst10|q\(2),
	datad => \b2v_inst1|b2v_inst10|q\(3),
	combout => \b2v_inst1|b2v_inst18|Mux3~0_combout\);

-- Location: LCCOMB_X25_Y27_N0
\b2v_inst1|b2v_inst18|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|Mux10~0_combout\ = \b2v_inst1|b2v_inst10|q\(2) $ (\b2v_inst1|b2v_inst10|q\(1) $ (\b2v_inst1|b2v_inst10|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst10|q\(2),
	datac => \b2v_inst1|b2v_inst10|q\(1),
	datad => \b2v_inst1|b2v_inst10|q\(0),
	combout => \b2v_inst1|b2v_inst18|Mux10~0_combout\);

-- Location: LCCOMB_X27_Y27_N14
\b2v_inst1|b2v_inst18|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|Mux0~0_combout\ = \b2v_inst1|b2v_inst10|q\(2) $ (\b2v_inst1|b2v_inst10|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst10|q\(2),
	datad => \b2v_inst1|b2v_inst10|q\(3),
	combout => \b2v_inst1|b2v_inst18|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y27_N8
\b2v_inst1|b2v_inst18|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|Mux5~1_combout\ = \b2v_inst1|b2v_inst10|q\(2) $ (\b2v_inst1|b2v_inst10|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst10|q\(2),
	datac => \b2v_inst1|b2v_inst10|q\(0),
	combout => \b2v_inst1|b2v_inst18|Mux5~1_combout\);

-- Location: LCCOMB_X26_Y28_N14
\b2v_inst1|b2v_inst18|o[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|o[1]~14_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (((\b2v_inst1|b2v_inst18|Mux5~1_combout\) # (\b2v_inst1|b2v_inst21|o[0]~22_combout\)))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (\b2v_inst1|b2v_inst18|Mux0~0_combout\ 
-- & ((!\b2v_inst1|b2v_inst21|o[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst18|Mux0~0_combout\,
	datab => \b2v_inst1|b2v_inst18|Mux5~1_combout\,
	datac => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datad => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	combout => \b2v_inst1|b2v_inst18|o[1]~14_combout\);

-- Location: LCCOMB_X26_Y28_N4
\b2v_inst1|b2v_inst18|o[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|o[1]~15_combout\ = (\b2v_inst1|b2v_inst18|o[1]~14_combout\ & (((\b2v_inst1|b2v_inst18|Mux10~0_combout\) # (!\b2v_inst1|b2v_inst21|o[0]~22_combout\)))) # (!\b2v_inst1|b2v_inst18|o[1]~14_combout\ & 
-- (\b2v_inst1|b2v_inst18|Mux3~0_combout\ & ((\b2v_inst1|b2v_inst21|o[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst18|Mux3~0_combout\,
	datab => \b2v_inst1|b2v_inst18|Mux10~0_combout\,
	datac => \b2v_inst1|b2v_inst18|o[1]~14_combout\,
	datad => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	combout => \b2v_inst1|b2v_inst18|o[1]~15_combout\);

-- Location: LCCOMB_X25_Y28_N30
\b2v_inst1|b2v_inst18|o[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|o[3]~4_combout\ = (\b2v_inst1|b2v_inst21|o[2]~12_combout\) # ((\b2v_inst1|b2v_inst21|o[0]~22_combout\ & !\b2v_inst1|b2v_inst21|o[1]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datac => \b2v_inst1|b2v_inst21|o[2]~12_combout\,
	datad => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	combout => \b2v_inst1|b2v_inst18|o[3]~4_combout\);

-- Location: LCCOMB_X26_Y28_N26
\b2v_inst1|b2v_inst18|o[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|o[1]~16_combout\ = (\b2v_inst1|b2v_inst18|o[3]~5_combout\ & (((\b2v_inst1|b2v_inst18|o[1]~15_combout\) # (!\b2v_inst1|b2v_inst18|o[3]~4_combout\)))) # (!\b2v_inst1|b2v_inst18|o[3]~5_combout\ & (\b2v_inst1|b2v_inst10|q\(1) & 
-- ((\b2v_inst1|b2v_inst18|o[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst10|q\(1),
	datab => \b2v_inst1|b2v_inst18|o[3]~5_combout\,
	datac => \b2v_inst1|b2v_inst18|o[1]~15_combout\,
	datad => \b2v_inst1|b2v_inst18|o[3]~4_combout\,
	combout => \b2v_inst1|b2v_inst18|o[1]~16_combout\);

-- Location: LCCOMB_X26_Y28_N6
\b2v_inst1|b2v_inst18|o[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|o[3]~38_combout\ = (!\b2v_inst1|b2v_inst21|o[2]~12_combout\ & ((\b2v_inst1|b2v_inst21|o[1]~27_combout\) # ((!\b2v_inst1|b2v_inst32|o[3]~0_combout\ & \b2v_inst1|b2v_inst21|o[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst32|o[3]~0_combout\,
	datab => \b2v_inst1|b2v_inst21|o[1]~27_combout\,
	datac => \b2v_inst1|b2v_inst21|o[1]~31_combout\,
	datad => \b2v_inst1|b2v_inst21|o[2]~12_combout\,
	combout => \b2v_inst1|b2v_inst18|o[3]~38_combout\);

-- Location: LCCOMB_X26_Y28_N28
\b2v_inst1|b2v_inst18|o[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|o[1]~17_combout\ = (\b2v_inst1|b2v_inst18|o[1]~16_combout\ & (((\b2v_inst1|b2v_inst18|Mux7~1_combout\) # (!\b2v_inst1|b2v_inst18|o[3]~38_combout\)))) # (!\b2v_inst1|b2v_inst18|o[1]~16_combout\ & (\b2v_inst1|b2v_inst18|Mux4~0_combout\ 
-- & ((\b2v_inst1|b2v_inst18|o[3]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst18|Mux4~0_combout\,
	datab => \b2v_inst1|b2v_inst18|Mux7~1_combout\,
	datac => \b2v_inst1|b2v_inst18|o[1]~16_combout\,
	datad => \b2v_inst1|b2v_inst18|o[3]~38_combout\,
	combout => \b2v_inst1|b2v_inst18|o[1]~17_combout\);

-- Location: LCCOMB_X26_Y28_N12
\b2v_inst1|b2v_inst6|q[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst6|q[1]~3_combout\ = \b2v_inst1|b2v_inst6|q\(1) $ (((\b2v_inst1|b2v_inst6|q[1]~2_combout\) # ((\b2v_inst1|b2v_inst7|q[1]~0_combout\ & \b2v_inst1|b2v_inst18|o[1]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q[1]~0_combout\,
	datab => \b2v_inst1|b2v_inst6|q[1]~2_combout\,
	datac => \b2v_inst1|b2v_inst6|q\(1),
	datad => \b2v_inst1|b2v_inst18|o[1]~17_combout\,
	combout => \b2v_inst1|b2v_inst6|q[1]~3_combout\);

-- Location: FF_X26_Y28_N13
\b2v_inst1|b2v_inst6|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|b2v_inst6|q[1]~3_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst6|q\(1));

-- Location: LCCOMB_X26_Y27_N16
\b2v_inst1|b2v_inst34|O[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst34|O[1]~1_combout\ = (\b2v_inst|Selector1~3_combout\ & ((\b2v_inst1|b2v_inst6|q\(1)))) # (!\b2v_inst|Selector1~3_combout\ & (\b2v_inst1|b2v_inst10|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Selector1~3_combout\,
	datab => \b2v_inst1|b2v_inst10|q\(1),
	datad => \b2v_inst1|b2v_inst6|q\(1),
	combout => \b2v_inst1|b2v_inst34|O[1]~1_combout\);

-- Location: FF_X26_Y27_N17
\b2v_inst1|b2v_inst11|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|b2v_inst34|O[1]~1_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	ena => \b2v_inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst11|q\(1));

-- Location: LCCOMB_X28_Y27_N26
\b2v_inst1|b2v_inst19|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|Mux9~0_combout\ = \b2v_inst1|b2v_inst11|q\(1) $ (\b2v_inst1|b2v_inst11|q\(2) $ (\b2v_inst1|b2v_inst11|q\(0) $ (\b2v_inst1|b2v_inst11|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst11|q\(1),
	datab => \b2v_inst1|b2v_inst11|q\(2),
	datac => \b2v_inst1|b2v_inst11|q\(0),
	datad => \b2v_inst1|b2v_inst11|q\(3),
	combout => \b2v_inst1|b2v_inst19|Mux9~0_combout\);

-- Location: LCCOMB_X25_Y31_N14
\b2v_inst1|b2v_inst19|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|Mux3~0_combout\ = \b2v_inst1|b2v_inst11|q\(2) $ (\b2v_inst1|b2v_inst11|q\(3) $ (\b2v_inst1|b2v_inst11|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst11|q\(2),
	datab => \b2v_inst1|b2v_inst11|q\(3),
	datad => \b2v_inst1|b2v_inst11|q\(1),
	combout => \b2v_inst1|b2v_inst19|Mux3~0_combout\);

-- Location: LCCOMB_X26_Y31_N2
\b2v_inst1|b2v_inst19|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|Mux2~0_combout\ = \b2v_inst1|b2v_inst11|q\(2) $ (\b2v_inst1|b2v_inst11|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|b2v_inst11|q\(2),
	datad => \b2v_inst1|b2v_inst11|q\(1),
	combout => \b2v_inst1|b2v_inst19|Mux2~0_combout\);

-- Location: LCCOMB_X25_Y31_N8
\b2v_inst1|b2v_inst19|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|Mux10~0_combout\ = \b2v_inst1|b2v_inst11|q\(2) $ (\b2v_inst1|b2v_inst11|q\(0) $ (\b2v_inst1|b2v_inst11|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst11|q\(2),
	datab => \b2v_inst1|b2v_inst11|q\(0),
	datad => \b2v_inst1|b2v_inst11|q\(1),
	combout => \b2v_inst1|b2v_inst19|Mux10~0_combout\);

-- Location: LCCOMB_X25_Y31_N18
\b2v_inst1|b2v_inst19|o[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|o[0]~23_combout\ = (\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (((\b2v_inst1|b2v_inst19|Mux10~0_combout\) # (\b2v_inst1|b2v_inst21|o[1]~32_combout\)))) # (!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (\b2v_inst1|b2v_inst19|Mux2~0_combout\ 
-- & ((!\b2v_inst1|b2v_inst21|o[1]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst19|Mux2~0_combout\,
	datab => \b2v_inst1|b2v_inst19|Mux10~0_combout\,
	datac => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datad => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	combout => \b2v_inst1|b2v_inst19|o[0]~23_combout\);

-- Location: LCCOMB_X25_Y31_N4
\b2v_inst1|b2v_inst19|o[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|o[0]~24_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & ((\b2v_inst1|b2v_inst19|o[0]~23_combout\ & (\b2v_inst1|b2v_inst19|Mux9~0_combout\)) # (!\b2v_inst1|b2v_inst19|o[0]~23_combout\ & 
-- ((\b2v_inst1|b2v_inst19|Mux3~0_combout\))))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (((\b2v_inst1|b2v_inst19|o[0]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst19|Mux9~0_combout\,
	datab => \b2v_inst1|b2v_inst19|Mux3~0_combout\,
	datac => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datad => \b2v_inst1|b2v_inst19|o[0]~23_combout\,
	combout => \b2v_inst1|b2v_inst19|o[0]~24_combout\);

-- Location: LCCOMB_X25_Y31_N26
\b2v_inst1|b2v_inst19|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|Mux7~0_combout\ = \b2v_inst1|b2v_inst11|q\(0) $ (\b2v_inst1|b2v_inst11|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst11|q\(0),
	datad => \b2v_inst1|b2v_inst11|q\(1),
	combout => \b2v_inst1|b2v_inst19|Mux7~0_combout\);

-- Location: LCCOMB_X25_Y31_N6
\b2v_inst1|b2v_inst19|o[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|o[0]~25_combout\ = (\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (((\b2v_inst1|b2v_inst21|o[1]~32_combout\)))) # (!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (\b2v_inst1|b2v_inst11|q\(1) $ (((\b2v_inst1|b2v_inst11|q\(3) & 
-- \b2v_inst1|b2v_inst21|o[1]~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst11|q\(1),
	datab => \b2v_inst1|b2v_inst11|q\(3),
	datac => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datad => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	combout => \b2v_inst1|b2v_inst19|o[0]~25_combout\);

-- Location: LCCOMB_X25_Y31_N12
\b2v_inst1|b2v_inst19|o[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|o[0]~26_combout\ = (\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (\b2v_inst1|b2v_inst19|Mux7~0_combout\ $ (((\b2v_inst1|b2v_inst11|q\(3) & \b2v_inst1|b2v_inst19|o[0]~25_combout\))))) # (!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & 
-- (((\b2v_inst1|b2v_inst19|o[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst19|Mux7~0_combout\,
	datab => \b2v_inst1|b2v_inst11|q\(3),
	datac => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datad => \b2v_inst1|b2v_inst19|o[0]~25_combout\,
	combout => \b2v_inst1|b2v_inst19|o[0]~26_combout\);

-- Location: LCCOMB_X25_Y31_N2
\b2v_inst1|b2v_inst7|q[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst7|q[0]~6_combout\ = (\b2v_inst1|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst1|b2v_inst21|o[2]~12_combout\ & (\b2v_inst1|b2v_inst19|o[0]~24_combout\)) # (!\b2v_inst1|b2v_inst21|o[2]~12_combout\ & ((\b2v_inst1|b2v_inst19|o[0]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q[3]~1_combout\,
	datab => \b2v_inst1|b2v_inst21|o[2]~12_combout\,
	datac => \b2v_inst1|b2v_inst19|o[0]~24_combout\,
	datad => \b2v_inst1|b2v_inst19|o[0]~26_combout\,
	combout => \b2v_inst1|b2v_inst7|q[0]~6_combout\);

-- Location: LCCOMB_X25_Y31_N16
\b2v_inst1|b2v_inst19|o[0]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|o[0]~37_combout\ = \b2v_inst1|b2v_inst11|q\(2) $ (((\b2v_inst1|b2v_inst11|q\(0) & \b2v_inst1|b2v_inst21|o[0]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst11|q\(2),
	datab => \b2v_inst1|b2v_inst11|q\(0),
	datac => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	combout => \b2v_inst1|b2v_inst19|o[0]~37_combout\);

-- Location: LCCOMB_X25_Y31_N0
\b2v_inst1|b2v_inst19|o[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|o[0]~20_combout\ = \b2v_inst1|b2v_inst19|o[0]~37_combout\ $ (((\b2v_inst1|b2v_inst11|q\(3) & \b2v_inst1|b2v_inst21|o[1]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst11|q\(3),
	datac => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datad => \b2v_inst1|b2v_inst19|o[0]~37_combout\,
	combout => \b2v_inst1|b2v_inst19|o[0]~20_combout\);

-- Location: LCCOMB_X25_Y31_N10
\b2v_inst1|b2v_inst19|o[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|o[0]~21_combout\ = (\b2v_inst1|b2v_inst18|o[3]~5_combout\ & (((\b2v_inst1|b2v_inst19|o[0]~20_combout\) # (!\b2v_inst1|b2v_inst18|o[3]~4_combout\)))) # (!\b2v_inst1|b2v_inst18|o[3]~5_combout\ & (\b2v_inst1|b2v_inst11|q\(0) & 
-- ((\b2v_inst1|b2v_inst18|o[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst11|q\(0),
	datab => \b2v_inst1|b2v_inst19|o[0]~20_combout\,
	datac => \b2v_inst1|b2v_inst18|o[3]~5_combout\,
	datad => \b2v_inst1|b2v_inst18|o[3]~4_combout\,
	combout => \b2v_inst1|b2v_inst19|o[0]~21_combout\);

-- Location: LCCOMB_X25_Y31_N28
\b2v_inst1|b2v_inst19|o[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|o[0]~22_combout\ = (\b2v_inst1|b2v_inst18|o[3]~38_combout\ & (\b2v_inst1|b2v_inst11|q\(3) $ (((\b2v_inst1|b2v_inst11|q\(0) & \b2v_inst1|b2v_inst19|o[0]~21_combout\))))) # (!\b2v_inst1|b2v_inst18|o[3]~38_combout\ & 
-- (((\b2v_inst1|b2v_inst19|o[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst11|q\(3),
	datab => \b2v_inst1|b2v_inst11|q\(0),
	datac => \b2v_inst1|b2v_inst18|o[3]~38_combout\,
	datad => \b2v_inst1|b2v_inst19|o[0]~21_combout\,
	combout => \b2v_inst1|b2v_inst19|o[0]~22_combout\);

-- Location: LCCOMB_X25_Y31_N20
\b2v_inst1|b2v_inst7|q[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst7|q[0]~7_combout\ = \b2v_inst1|b2v_inst7|q\(0) $ (((\b2v_inst1|b2v_inst7|q[0]~6_combout\) # ((\b2v_inst1|b2v_inst7|q[1]~0_combout\ & \b2v_inst1|b2v_inst19|o[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q[1]~0_combout\,
	datab => \b2v_inst1|b2v_inst7|q[0]~6_combout\,
	datac => \b2v_inst1|b2v_inst7|q\(0),
	datad => \b2v_inst1|b2v_inst19|o[0]~22_combout\,
	combout => \b2v_inst1|b2v_inst7|q[0]~7_combout\);

-- Location: FF_X25_Y31_N21
\b2v_inst1|b2v_inst7|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|b2v_inst7|q[0]~7_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst7|q\(0));

-- Location: LCCOMB_X30_Y31_N2
\b2v_inst1|b2v_inst33|O[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst33|O[0]~3_combout\ = (\b2v_inst|Selector1~3_combout\ & ((!\b2v_inst1|b2v_inst7|q\(0)))) # (!\b2v_inst|Selector1~3_combout\ & (!\b2v_inst1|b2v_inst11|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst11|q\(0),
	datab => \b2v_inst1|b2v_inst7|q\(0),
	datad => \b2v_inst|Selector1~3_combout\,
	combout => \b2v_inst1|b2v_inst33|O[0]~3_combout\);

-- Location: FF_X30_Y31_N3
\b2v_inst1|b2v_inst12|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|b2v_inst33|O[0]~3_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	ena => \b2v_inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst12|q\(0));

-- Location: LCCOMB_X30_Y30_N14
\b2v_inst1|b2v_inst22|O[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst22|O[0]~3_combout\ = ((\Impar~input_o\ & (\b2v_inst|Selector1~2_combout\ & \b2v_inst|WideOr2~0_combout\))) # (!\b2v_inst1|b2v_inst12|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Impar~input_o\,
	datab => \b2v_inst1|b2v_inst12|q\(0),
	datac => \b2v_inst|Selector1~2_combout\,
	datad => \b2v_inst|WideOr2~0_combout\,
	combout => \b2v_inst1|b2v_inst22|O[0]~3_combout\);

-- Location: FF_X30_Y30_N15
\b2v_inst1|b2v_inst9|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|b2v_inst22|O[0]~3_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	ena => \b2v_inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst9|q\(0));

-- Location: LCCOMB_X27_Y26_N4
\b2v_inst1|b2v_inst17|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|Mux9~0_combout\ = \b2v_inst1|b2v_inst9|q\(1) $ (\b2v_inst1|b2v_inst9|q\(3) $ (\b2v_inst1|b2v_inst9|q\(0) $ (\b2v_inst1|b2v_inst9|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst9|q\(1),
	datab => \b2v_inst1|b2v_inst9|q\(3),
	datac => \b2v_inst1|b2v_inst9|q\(0),
	datad => \b2v_inst1|b2v_inst9|q\(2),
	combout => \b2v_inst1|b2v_inst17|Mux9~0_combout\);

-- Location: LCCOMB_X26_Y26_N14
\b2v_inst1|b2v_inst17|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|Mux10~0_combout\ = \b2v_inst1|b2v_inst9|q\(2) $ (\b2v_inst1|b2v_inst9|q\(0) $ (\b2v_inst1|b2v_inst9|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst9|q\(2),
	datac => \b2v_inst1|b2v_inst9|q\(0),
	datad => \b2v_inst1|b2v_inst9|q\(1),
	combout => \b2v_inst1|b2v_inst17|Mux10~0_combout\);

-- Location: LCCOMB_X26_Y26_N12
\b2v_inst1|b2v_inst17|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|Mux2~0_combout\ = \b2v_inst1|b2v_inst9|q\(2) $ (\b2v_inst1|b2v_inst9|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst9|q\(2),
	datad => \b2v_inst1|b2v_inst9|q\(1),
	combout => \b2v_inst1|b2v_inst17|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y26_N4
\b2v_inst1|b2v_inst17|o[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|o[0]~20_combout\ = (\b2v_inst1|b2v_inst21|o[0]~22_combout\ & ((\b2v_inst1|b2v_inst17|Mux10~0_combout\) # ((\b2v_inst1|b2v_inst21|o[1]~32_combout\)))) # (!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & 
-- (((\b2v_inst1|b2v_inst17|Mux2~0_combout\ & !\b2v_inst1|b2v_inst21|o[1]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst17|Mux10~0_combout\,
	datab => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datac => \b2v_inst1|b2v_inst17|Mux2~0_combout\,
	datad => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	combout => \b2v_inst1|b2v_inst17|o[0]~20_combout\);

-- Location: LCCOMB_X28_Y26_N30
\b2v_inst1|b2v_inst17|o[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|o[0]~21_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & ((\b2v_inst1|b2v_inst17|o[0]~20_combout\ & ((\b2v_inst1|b2v_inst17|Mux9~0_combout\))) # (!\b2v_inst1|b2v_inst17|o[0]~20_combout\ & 
-- (\b2v_inst1|b2v_inst17|Mux3~0_combout\)))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (((\b2v_inst1|b2v_inst17|o[0]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst17|Mux3~0_combout\,
	datab => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datac => \b2v_inst1|b2v_inst17|Mux9~0_combout\,
	datad => \b2v_inst1|b2v_inst17|o[0]~20_combout\,
	combout => \b2v_inst1|b2v_inst17|o[0]~21_combout\);

-- Location: LCCOMB_X27_Y26_N2
\b2v_inst1|b2v_inst17|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|Mux7~0_combout\ = \b2v_inst1|b2v_inst9|q\(0) $ (\b2v_inst1|b2v_inst9|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|b2v_inst9|q\(0),
	datad => \b2v_inst1|b2v_inst9|q\(1),
	combout => \b2v_inst1|b2v_inst17|Mux7~0_combout\);

-- Location: LCCOMB_X28_Y26_N16
\b2v_inst1|b2v_inst17|o[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|o[0]~22_combout\ = (\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (((\b2v_inst1|b2v_inst21|o[1]~32_combout\)))) # (!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (\b2v_inst1|b2v_inst9|q\(1) $ (((\b2v_inst1|b2v_inst9|q\(3) & 
-- \b2v_inst1|b2v_inst21|o[1]~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst9|q\(1),
	datab => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datac => \b2v_inst1|b2v_inst9|q\(3),
	datad => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	combout => \b2v_inst1|b2v_inst17|o[0]~22_combout\);

-- Location: LCCOMB_X28_Y26_N10
\b2v_inst1|b2v_inst17|o[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|o[0]~23_combout\ = (\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (\b2v_inst1|b2v_inst17|Mux7~0_combout\ $ (((\b2v_inst1|b2v_inst9|q\(3) & \b2v_inst1|b2v_inst17|o[0]~22_combout\))))) # (!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & 
-- (((\b2v_inst1|b2v_inst17|o[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst17|Mux7~0_combout\,
	datab => \b2v_inst1|b2v_inst9|q\(3),
	datac => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datad => \b2v_inst1|b2v_inst17|o[0]~22_combout\,
	combout => \b2v_inst1|b2v_inst17|o[0]~23_combout\);

-- Location: LCCOMB_X28_Y26_N8
\b2v_inst1|b2v_inst5|q[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst5|q[0]~4_combout\ = (\b2v_inst1|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst1|b2v_inst21|o[2]~12_combout\ & (\b2v_inst1|b2v_inst17|o[0]~21_combout\)) # (!\b2v_inst1|b2v_inst21|o[2]~12_combout\ & ((\b2v_inst1|b2v_inst17|o[0]~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q[3]~1_combout\,
	datab => \b2v_inst1|b2v_inst21|o[2]~12_combout\,
	datac => \b2v_inst1|b2v_inst17|o[0]~21_combout\,
	datad => \b2v_inst1|b2v_inst17|o[0]~23_combout\,
	combout => \b2v_inst1|b2v_inst5|q[0]~4_combout\);

-- Location: LCCOMB_X27_Y26_N24
\b2v_inst1|b2v_inst17|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|Mux5~1_combout\ = \b2v_inst1|b2v_inst9|q\(0) $ (\b2v_inst1|b2v_inst9|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|b2v_inst9|q\(0),
	datad => \b2v_inst1|b2v_inst9|q\(2),
	combout => \b2v_inst1|b2v_inst17|Mux5~1_combout\);

-- Location: LCCOMB_X28_Y26_N28
\b2v_inst1|b2v_inst17|o[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|o[0]~16_combout\ = (\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (((\b2v_inst1|b2v_inst21|o[1]~32_combout\)))) # (!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (\b2v_inst1|b2v_inst9|q\(2) $ (((\b2v_inst1|b2v_inst9|q\(3) & 
-- \b2v_inst1|b2v_inst21|o[1]~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst9|q\(2),
	datab => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datac => \b2v_inst1|b2v_inst9|q\(3),
	datad => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	combout => \b2v_inst1|b2v_inst17|o[0]~16_combout\);

-- Location: LCCOMB_X28_Y26_N22
\b2v_inst1|b2v_inst17|o[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|o[0]~17_combout\ = (\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (\b2v_inst1|b2v_inst17|Mux5~1_combout\ $ (((\b2v_inst1|b2v_inst9|q\(3) & \b2v_inst1|b2v_inst17|o[0]~16_combout\))))) # (!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & 
-- (((\b2v_inst1|b2v_inst17|o[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst17|Mux5~1_combout\,
	datab => \b2v_inst1|b2v_inst9|q\(3),
	datac => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datad => \b2v_inst1|b2v_inst17|o[0]~16_combout\,
	combout => \b2v_inst1|b2v_inst17|o[0]~17_combout\);

-- Location: LCCOMB_X28_Y26_N12
\b2v_inst1|b2v_inst17|o[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|o[0]~18_combout\ = (\b2v_inst1|b2v_inst18|o[3]~5_combout\ & ((\b2v_inst1|b2v_inst17|o[0]~17_combout\) # ((!\b2v_inst1|b2v_inst18|o[3]~4_combout\)))) # (!\b2v_inst1|b2v_inst18|o[3]~5_combout\ & (((\b2v_inst1|b2v_inst9|q\(0) & 
-- \b2v_inst1|b2v_inst18|o[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst17|o[0]~17_combout\,
	datab => \b2v_inst1|b2v_inst9|q\(0),
	datac => \b2v_inst1|b2v_inst18|o[3]~5_combout\,
	datad => \b2v_inst1|b2v_inst18|o[3]~4_combout\,
	combout => \b2v_inst1|b2v_inst17|o[0]~18_combout\);

-- Location: LCCOMB_X28_Y26_N18
\b2v_inst1|b2v_inst17|o[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|o[0]~19_combout\ = (\b2v_inst1|b2v_inst18|o[3]~38_combout\ & (\b2v_inst1|b2v_inst9|q\(3) $ (((\b2v_inst1|b2v_inst9|q\(0) & \b2v_inst1|b2v_inst17|o[0]~18_combout\))))) # (!\b2v_inst1|b2v_inst18|o[3]~38_combout\ & 
-- (((\b2v_inst1|b2v_inst17|o[0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst9|q\(0),
	datab => \b2v_inst1|b2v_inst9|q\(3),
	datac => \b2v_inst1|b2v_inst18|o[3]~38_combout\,
	datad => \b2v_inst1|b2v_inst17|o[0]~18_combout\,
	combout => \b2v_inst1|b2v_inst17|o[0]~19_combout\);

-- Location: LCCOMB_X28_Y26_N24
\b2v_inst1|b2v_inst5|q[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst5|q[0]~5_combout\ = \b2v_inst1|b2v_inst5|q\(0) $ (((\b2v_inst1|b2v_inst5|q[0]~4_combout\) # ((\b2v_inst1|b2v_inst7|q[1]~0_combout\ & \b2v_inst1|b2v_inst17|o[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q[1]~0_combout\,
	datab => \b2v_inst1|b2v_inst5|q[0]~4_combout\,
	datac => \b2v_inst1|b2v_inst5|q\(0),
	datad => \b2v_inst1|b2v_inst17|o[0]~19_combout\,
	combout => \b2v_inst1|b2v_inst5|q[0]~5_combout\);

-- Location: FF_X28_Y26_N25
\b2v_inst1|b2v_inst5|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|b2v_inst5|q[0]~5_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst5|q\(0));

-- Location: LCCOMB_X26_Y27_N8
\b2v_inst1|b2v_inst35|O[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst35|O[0]~3_combout\ = (\b2v_inst|Selector1~3_combout\ & (\b2v_inst1|b2v_inst5|q\(0))) # (!\b2v_inst|Selector1~3_combout\ & ((\b2v_inst1|b2v_inst9|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst5|q\(0),
	datac => \b2v_inst1|b2v_inst9|q\(0),
	datad => \b2v_inst|Selector1~3_combout\,
	combout => \b2v_inst1|b2v_inst35|O[0]~3_combout\);

-- Location: FF_X26_Y27_N9
\b2v_inst1|b2v_inst10|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|b2v_inst35|O[0]~3_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	ena => \b2v_inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst10|q\(0));

-- Location: LCCOMB_X25_Y28_N12
\b2v_inst1|b2v_inst18|o[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|o[0]~26_combout\ = (\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (((\b2v_inst1|b2v_inst18|Mux10~0_combout\) # (\b2v_inst1|b2v_inst21|o[1]~32_combout\)))) # (!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (\b2v_inst1|b2v_inst18|Mux2~0_combout\ 
-- & ((!\b2v_inst1|b2v_inst21|o[1]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst18|Mux2~0_combout\,
	datab => \b2v_inst1|b2v_inst18|Mux10~0_combout\,
	datac => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datad => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	combout => \b2v_inst1|b2v_inst18|o[0]~26_combout\);

-- Location: LCCOMB_X25_Y28_N6
\b2v_inst1|b2v_inst18|o[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|o[0]~27_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & ((\b2v_inst1|b2v_inst18|o[0]~26_combout\ & ((\b2v_inst1|b2v_inst18|Mux9~0_combout\))) # (!\b2v_inst1|b2v_inst18|o[0]~26_combout\ & 
-- (\b2v_inst1|b2v_inst18|Mux3~0_combout\)))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (((\b2v_inst1|b2v_inst18|o[0]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst18|Mux3~0_combout\,
	datab => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datac => \b2v_inst1|b2v_inst18|Mux9~0_combout\,
	datad => \b2v_inst1|b2v_inst18|o[0]~26_combout\,
	combout => \b2v_inst1|b2v_inst18|o[0]~27_combout\);

-- Location: LCCOMB_X27_Y27_N4
\b2v_inst1|b2v_inst18|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|Mux7~0_combout\ = \b2v_inst1|b2v_inst10|q\(0) $ (\b2v_inst1|b2v_inst10|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst10|q\(0),
	datad => \b2v_inst1|b2v_inst10|q\(1),
	combout => \b2v_inst1|b2v_inst18|Mux7~0_combout\);

-- Location: LCCOMB_X27_Y27_N24
\b2v_inst1|b2v_inst18|o[0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|o[0]~28_combout\ = (\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (\b2v_inst1|b2v_inst21|o[1]~32_combout\)) # (!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (\b2v_inst1|b2v_inst10|q\(1) $ (((\b2v_inst1|b2v_inst21|o[1]~32_combout\ & 
-- \b2v_inst1|b2v_inst10|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datab => \b2v_inst1|b2v_inst10|q\(3),
	datac => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datad => \b2v_inst1|b2v_inst10|q\(1),
	combout => \b2v_inst1|b2v_inst18|o[0]~28_combout\);

-- Location: LCCOMB_X27_Y27_N10
\b2v_inst1|b2v_inst18|o[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|o[0]~29_combout\ = (\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (\b2v_inst1|b2v_inst18|Mux7~0_combout\ $ (((\b2v_inst1|b2v_inst10|q\(3) & \b2v_inst1|b2v_inst18|o[0]~28_combout\))))) # (!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & 
-- (((\b2v_inst1|b2v_inst18|o[0]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst18|Mux7~0_combout\,
	datab => \b2v_inst1|b2v_inst10|q\(3),
	datac => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datad => \b2v_inst1|b2v_inst18|o[0]~28_combout\,
	combout => \b2v_inst1|b2v_inst18|o[0]~29_combout\);

-- Location: LCCOMB_X26_Y28_N0
\b2v_inst1|b2v_inst6|q[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst6|q[0]~4_combout\ = (\b2v_inst1|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst1|b2v_inst21|o[2]~12_combout\ & (\b2v_inst1|b2v_inst18|o[0]~27_combout\)) # (!\b2v_inst1|b2v_inst21|o[2]~12_combout\ & ((\b2v_inst1|b2v_inst18|o[0]~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q[3]~1_combout\,
	datab => \b2v_inst1|b2v_inst21|o[2]~12_combout\,
	datac => \b2v_inst1|b2v_inst18|o[0]~27_combout\,
	datad => \b2v_inst1|b2v_inst18|o[0]~29_combout\,
	combout => \b2v_inst1|b2v_inst6|q[0]~4_combout\);

-- Location: LCCOMB_X27_Y27_N20
\b2v_inst1|b2v_inst18|o[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|o[0]~22_combout\ = (\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (\b2v_inst1|b2v_inst21|o[1]~32_combout\)) # (!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (\b2v_inst1|b2v_inst10|q\(2) $ (((\b2v_inst1|b2v_inst21|o[1]~32_combout\ & 
-- \b2v_inst1|b2v_inst10|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datab => \b2v_inst1|b2v_inst10|q\(3),
	datac => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datad => \b2v_inst1|b2v_inst10|q\(2),
	combout => \b2v_inst1|b2v_inst18|o[0]~22_combout\);

-- Location: LCCOMB_X27_Y27_N18
\b2v_inst1|b2v_inst18|o[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|o[0]~23_combout\ = (\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (\b2v_inst1|b2v_inst18|Mux5~1_combout\ $ (((\b2v_inst1|b2v_inst10|q\(3) & \b2v_inst1|b2v_inst18|o[0]~22_combout\))))) # (!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & 
-- (((\b2v_inst1|b2v_inst18|o[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst18|Mux5~1_combout\,
	datab => \b2v_inst1|b2v_inst10|q\(3),
	datac => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datad => \b2v_inst1|b2v_inst18|o[0]~22_combout\,
	combout => \b2v_inst1|b2v_inst18|o[0]~23_combout\);

-- Location: LCCOMB_X26_Y28_N16
\b2v_inst1|b2v_inst18|o[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|o[0]~24_combout\ = (\b2v_inst1|b2v_inst18|o[3]~4_combout\ & ((\b2v_inst1|b2v_inst18|o[3]~5_combout\ & ((\b2v_inst1|b2v_inst18|o[0]~23_combout\))) # (!\b2v_inst1|b2v_inst18|o[3]~5_combout\ & (\b2v_inst1|b2v_inst10|q\(0))))) # 
-- (!\b2v_inst1|b2v_inst18|o[3]~4_combout\ & (((\b2v_inst1|b2v_inst18|o[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst10|q\(0),
	datab => \b2v_inst1|b2v_inst18|o[3]~4_combout\,
	datac => \b2v_inst1|b2v_inst18|o[3]~5_combout\,
	datad => \b2v_inst1|b2v_inst18|o[0]~23_combout\,
	combout => \b2v_inst1|b2v_inst18|o[0]~24_combout\);

-- Location: LCCOMB_X26_Y28_N2
\b2v_inst1|b2v_inst18|o[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|o[0]~25_combout\ = (\b2v_inst1|b2v_inst18|o[3]~38_combout\ & (\b2v_inst1|b2v_inst10|q\(3) $ (((\b2v_inst1|b2v_inst10|q\(0) & \b2v_inst1|b2v_inst18|o[0]~24_combout\))))) # (!\b2v_inst1|b2v_inst18|o[3]~38_combout\ & 
-- (((\b2v_inst1|b2v_inst18|o[0]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst10|q\(0),
	datab => \b2v_inst1|b2v_inst10|q\(3),
	datac => \b2v_inst1|b2v_inst18|o[3]~38_combout\,
	datad => \b2v_inst1|b2v_inst18|o[0]~24_combout\,
	combout => \b2v_inst1|b2v_inst18|o[0]~25_combout\);

-- Location: LCCOMB_X26_Y28_N30
\b2v_inst1|b2v_inst6|q[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst6|q[0]~5_combout\ = \b2v_inst1|b2v_inst6|q\(0) $ (((\b2v_inst1|b2v_inst6|q[0]~4_combout\) # ((\b2v_inst1|b2v_inst7|q[1]~0_combout\ & \b2v_inst1|b2v_inst18|o[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q[1]~0_combout\,
	datab => \b2v_inst1|b2v_inst6|q[0]~4_combout\,
	datac => \b2v_inst1|b2v_inst6|q\(0),
	datad => \b2v_inst1|b2v_inst18|o[0]~25_combout\,
	combout => \b2v_inst1|b2v_inst6|q[0]~5_combout\);

-- Location: FF_X26_Y28_N31
\b2v_inst1|b2v_inst6|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|b2v_inst6|q[0]~5_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst6|q\(0));

-- Location: LCCOMB_X26_Y27_N20
\b2v_inst1|b2v_inst34|O[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst34|O[0]~3_combout\ = (\b2v_inst|Selector1~3_combout\ & ((\b2v_inst1|b2v_inst6|q\(0)))) # (!\b2v_inst|Selector1~3_combout\ & (\b2v_inst1|b2v_inst10|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst10|q\(0),
	datac => \b2v_inst1|b2v_inst6|q\(0),
	datad => \b2v_inst|Selector1~3_combout\,
	combout => \b2v_inst1|b2v_inst34|O[0]~3_combout\);

-- Location: FF_X26_Y27_N21
\b2v_inst1|b2v_inst11|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|b2v_inst34|O[0]~3_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	ena => \b2v_inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst11|q\(0));

-- Location: LCCOMB_X26_Y31_N16
\b2v_inst1|b2v_inst19|o[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|o[1]~16_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (((\b2v_inst1|b2v_inst21|o[0]~22_combout\)))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (\b2v_inst1|b2v_inst11|q\(3) $ (((\b2v_inst1|b2v_inst11|q\(1) & 
-- !\b2v_inst1|b2v_inst21|o[0]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst11|q\(1),
	datab => \b2v_inst1|b2v_inst11|q\(3),
	datac => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datad => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	combout => \b2v_inst1|b2v_inst19|o[1]~16_combout\);

-- Location: LCCOMB_X26_Y31_N30
\b2v_inst1|b2v_inst19|o[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|o[1]~17_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (\b2v_inst1|b2v_inst11|q\(0) $ (((\b2v_inst1|b2v_inst11|q\(1) & !\b2v_inst1|b2v_inst19|o[1]~16_combout\))))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & 
-- (((\b2v_inst1|b2v_inst19|o[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datab => \b2v_inst1|b2v_inst11|q\(0),
	datac => \b2v_inst1|b2v_inst11|q\(1),
	datad => \b2v_inst1|b2v_inst19|o[1]~16_combout\,
	combout => \b2v_inst1|b2v_inst19|o[1]~17_combout\);

-- Location: LCCOMB_X26_Y31_N4
\b2v_inst1|b2v_inst19|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|Mux5~0_combout\ = \b2v_inst1|b2v_inst11|q\(2) $ (\b2v_inst1|b2v_inst11|q\(0) $ (\b2v_inst1|b2v_inst11|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst11|q\(2),
	datac => \b2v_inst1|b2v_inst11|q\(0),
	datad => \b2v_inst1|b2v_inst11|q\(3),
	combout => \b2v_inst1|b2v_inst19|Mux5~0_combout\);

-- Location: LCCOMB_X26_Y31_N20
\b2v_inst1|b2v_inst19|o[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|o[1]~18_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (((\b2v_inst1|b2v_inst19|Mux9~0_combout\) # (\b2v_inst1|b2v_inst21|o[0]~22_combout\)))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (\b2v_inst1|b2v_inst19|Mux2~0_combout\ 
-- & ((!\b2v_inst1|b2v_inst21|o[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst19|Mux2~0_combout\,
	datab => \b2v_inst1|b2v_inst19|Mux9~0_combout\,
	datac => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datad => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	combout => \b2v_inst1|b2v_inst19|o[1]~18_combout\);

-- Location: LCCOMB_X26_Y31_N10
\b2v_inst1|b2v_inst19|o[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|o[1]~19_combout\ = (\b2v_inst1|b2v_inst21|o[0]~22_combout\ & ((\b2v_inst1|b2v_inst19|o[1]~18_combout\ & ((\b2v_inst1|b2v_inst19|Mux5~0_combout\))) # (!\b2v_inst1|b2v_inst19|o[1]~18_combout\ & (\b2v_inst1|b2v_inst11|q\(2))))) # 
-- (!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (((\b2v_inst1|b2v_inst19|o[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst11|q\(2),
	datab => \b2v_inst1|b2v_inst19|Mux5~0_combout\,
	datac => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datad => \b2v_inst1|b2v_inst19|o[1]~18_combout\,
	combout => \b2v_inst1|b2v_inst19|o[1]~19_combout\);

-- Location: LCCOMB_X26_Y31_N28
\b2v_inst1|b2v_inst7|q[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst7|q[1]~4_combout\ = (\b2v_inst1|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst1|b2v_inst21|o[2]~12_combout\ & (\b2v_inst1|b2v_inst19|o[1]~17_combout\)) # (!\b2v_inst1|b2v_inst21|o[2]~12_combout\ & ((\b2v_inst1|b2v_inst19|o[1]~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst21|o[2]~12_combout\,
	datab => \b2v_inst1|b2v_inst7|q[3]~1_combout\,
	datac => \b2v_inst1|b2v_inst19|o[1]~17_combout\,
	datad => \b2v_inst1|b2v_inst19|o[1]~19_combout\,
	combout => \b2v_inst1|b2v_inst7|q[1]~4_combout\);

-- Location: LCCOMB_X28_Y27_N12
\b2v_inst1|b2v_inst19|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|Mux7~1_combout\ = \b2v_inst1|b2v_inst11|q\(1) $ (\b2v_inst1|b2v_inst11|q\(0) $ (\b2v_inst1|b2v_inst11|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst11|q\(1),
	datac => \b2v_inst1|b2v_inst11|q\(0),
	datad => \b2v_inst1|b2v_inst11|q\(3),
	combout => \b2v_inst1|b2v_inst19|Mux7~1_combout\);

-- Location: LCCOMB_X26_Y31_N22
\b2v_inst1|b2v_inst19|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|Mux4~0_combout\ = \b2v_inst1|b2v_inst11|q\(0) $ (\b2v_inst1|b2v_inst11|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst11|q\(0),
	datad => \b2v_inst1|b2v_inst11|q\(3),
	combout => \b2v_inst1|b2v_inst19|Mux4~0_combout\);

-- Location: LCCOMB_X26_Y31_N8
\b2v_inst1|b2v_inst19|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|Mux5~1_combout\ = \b2v_inst1|b2v_inst11|q\(2) $ (\b2v_inst1|b2v_inst11|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|b2v_inst11|q\(2),
	datad => \b2v_inst1|b2v_inst11|q\(0),
	combout => \b2v_inst1|b2v_inst19|Mux5~1_combout\);

-- Location: LCCOMB_X26_Y31_N26
\b2v_inst1|b2v_inst19|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|Mux0~0_combout\ = \b2v_inst1|b2v_inst11|q\(2) $ (\b2v_inst1|b2v_inst11|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|b2v_inst11|q\(2),
	datad => \b2v_inst1|b2v_inst11|q\(3),
	combout => \b2v_inst1|b2v_inst19|Mux0~0_combout\);

-- Location: LCCOMB_X26_Y31_N24
\b2v_inst1|b2v_inst19|o[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|o[1]~12_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (((\b2v_inst1|b2v_inst21|o[0]~22_combout\)))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & ((\b2v_inst1|b2v_inst21|o[0]~22_combout\ & 
-- (\b2v_inst1|b2v_inst19|Mux3~0_combout\)) # (!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & ((\b2v_inst1|b2v_inst19|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst19|Mux3~0_combout\,
	datab => \b2v_inst1|b2v_inst19|Mux0~0_combout\,
	datac => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datad => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	combout => \b2v_inst1|b2v_inst19|o[1]~12_combout\);

-- Location: LCCOMB_X26_Y31_N18
\b2v_inst1|b2v_inst19|o[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|o[1]~13_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & ((\b2v_inst1|b2v_inst19|o[1]~12_combout\ & ((\b2v_inst1|b2v_inst19|Mux10~0_combout\))) # (!\b2v_inst1|b2v_inst19|o[1]~12_combout\ & 
-- (\b2v_inst1|b2v_inst19|Mux5~1_combout\)))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (((\b2v_inst1|b2v_inst19|o[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst19|Mux5~1_combout\,
	datab => \b2v_inst1|b2v_inst19|Mux10~0_combout\,
	datac => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datad => \b2v_inst1|b2v_inst19|o[1]~12_combout\,
	combout => \b2v_inst1|b2v_inst19|o[1]~13_combout\);

-- Location: LCCOMB_X26_Y31_N12
\b2v_inst1|b2v_inst19|o[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|o[1]~14_combout\ = (\b2v_inst1|b2v_inst18|o[3]~5_combout\ & (((\b2v_inst1|b2v_inst19|o[1]~13_combout\) # (!\b2v_inst1|b2v_inst18|o[3]~4_combout\)))) # (!\b2v_inst1|b2v_inst18|o[3]~5_combout\ & (\b2v_inst1|b2v_inst11|q\(1) & 
-- (\b2v_inst1|b2v_inst18|o[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst11|q\(1),
	datab => \b2v_inst1|b2v_inst18|o[3]~5_combout\,
	datac => \b2v_inst1|b2v_inst18|o[3]~4_combout\,
	datad => \b2v_inst1|b2v_inst19|o[1]~13_combout\,
	combout => \b2v_inst1|b2v_inst19|o[1]~14_combout\);

-- Location: LCCOMB_X26_Y31_N6
\b2v_inst1|b2v_inst19|o[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|o[1]~15_combout\ = (\b2v_inst1|b2v_inst18|o[3]~38_combout\ & ((\b2v_inst1|b2v_inst19|o[1]~14_combout\ & (\b2v_inst1|b2v_inst19|Mux7~1_combout\)) # (!\b2v_inst1|b2v_inst19|o[1]~14_combout\ & 
-- ((\b2v_inst1|b2v_inst19|Mux4~0_combout\))))) # (!\b2v_inst1|b2v_inst18|o[3]~38_combout\ & (((\b2v_inst1|b2v_inst19|o[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst19|Mux7~1_combout\,
	datab => \b2v_inst1|b2v_inst19|Mux4~0_combout\,
	datac => \b2v_inst1|b2v_inst18|o[3]~38_combout\,
	datad => \b2v_inst1|b2v_inst19|o[1]~14_combout\,
	combout => \b2v_inst1|b2v_inst19|o[1]~15_combout\);

-- Location: LCCOMB_X26_Y31_N0
\b2v_inst1|b2v_inst7|q[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst7|q[1]~5_combout\ = \b2v_inst1|b2v_inst7|q\(1) $ (((\b2v_inst1|b2v_inst7|q[1]~4_combout\) # ((\b2v_inst1|b2v_inst7|q[1]~0_combout\ & \b2v_inst1|b2v_inst19|o[1]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q[1]~0_combout\,
	datab => \b2v_inst1|b2v_inst7|q[1]~4_combout\,
	datac => \b2v_inst1|b2v_inst7|q\(1),
	datad => \b2v_inst1|b2v_inst19|o[1]~15_combout\,
	combout => \b2v_inst1|b2v_inst7|q[1]~5_combout\);

-- Location: FF_X26_Y31_N1
\b2v_inst1|b2v_inst7|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|b2v_inst7|q[1]~5_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst7|q\(1));

-- Location: LCCOMB_X30_Y31_N24
\b2v_inst1|b2v_inst33|O[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst33|O[1]~1_combout\ = (\b2v_inst|Selector1~3_combout\ & (\b2v_inst1|b2v_inst7|q\(1))) # (!\b2v_inst|Selector1~3_combout\ & ((\b2v_inst1|b2v_inst11|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst7|q\(1),
	datac => \b2v_inst1|b2v_inst11|q\(1),
	datad => \b2v_inst|Selector1~3_combout\,
	combout => \b2v_inst1|b2v_inst33|O[1]~1_combout\);

-- Location: FF_X30_Y31_N25
\b2v_inst1|b2v_inst12|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|b2v_inst33|O[1]~1_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	ena => \b2v_inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst12|q\(1));

-- Location: LCCOMB_X30_Y30_N10
\b2v_inst1|b2v_inst22|O[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst22|O[1]~1_combout\ = (\b2v_inst1|b2v_inst12|q\(1) & (((!\b2v_inst|WideOr2~0_combout\) # (!\b2v_inst|Selector1~2_combout\)) # (!\Impar~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Impar~input_o\,
	datab => \b2v_inst1|b2v_inst12|q\(1),
	datac => \b2v_inst|Selector1~2_combout\,
	datad => \b2v_inst|WideOr2~0_combout\,
	combout => \b2v_inst1|b2v_inst22|O[1]~1_combout\);

-- Location: FF_X30_Y30_N11
\b2v_inst1|b2v_inst9|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|b2v_inst22|O[1]~1_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	ena => \b2v_inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst9|q\(1));

-- Location: LCCOMB_X29_Y30_N30
\b2v_inst1|b2v_inst17|o[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|o[1]~12_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (((\b2v_inst1|b2v_inst21|o[0]~22_combout\)))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (\b2v_inst1|b2v_inst9|q\(3) $ (((\b2v_inst1|b2v_inst9|q\(1) & 
-- !\b2v_inst1|b2v_inst21|o[0]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst9|q\(3),
	datab => \b2v_inst1|b2v_inst9|q\(1),
	datac => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datad => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	combout => \b2v_inst1|b2v_inst17|o[1]~12_combout\);

-- Location: LCCOMB_X29_Y30_N4
\b2v_inst1|b2v_inst17|o[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|o[1]~13_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (\b2v_inst1|b2v_inst9|q\(0) $ (((\b2v_inst1|b2v_inst9|q\(1) & !\b2v_inst1|b2v_inst17|o[1]~12_combout\))))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & 
-- (((\b2v_inst1|b2v_inst17|o[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst9|q\(1),
	datab => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datac => \b2v_inst1|b2v_inst17|o[1]~12_combout\,
	datad => \b2v_inst1|b2v_inst9|q\(0),
	combout => \b2v_inst1|b2v_inst17|o[1]~13_combout\);

-- Location: LCCOMB_X27_Y26_N20
\b2v_inst1|b2v_inst17|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|Mux5~0_combout\ = \b2v_inst1|b2v_inst9|q\(2) $ (\b2v_inst1|b2v_inst9|q\(0) $ (\b2v_inst1|b2v_inst9|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst9|q\(2),
	datac => \b2v_inst1|b2v_inst9|q\(0),
	datad => \b2v_inst1|b2v_inst9|q\(3),
	combout => \b2v_inst1|b2v_inst17|Mux5~0_combout\);

-- Location: LCCOMB_X29_Y30_N18
\b2v_inst1|b2v_inst17|o[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|o[1]~14_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & ((\b2v_inst1|b2v_inst17|Mux9~0_combout\) # ((\b2v_inst1|b2v_inst21|o[0]~22_combout\)))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & 
-- (((\b2v_inst1|b2v_inst17|Mux2~0_combout\ & !\b2v_inst1|b2v_inst21|o[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst17|Mux9~0_combout\,
	datab => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datac => \b2v_inst1|b2v_inst17|Mux2~0_combout\,
	datad => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	combout => \b2v_inst1|b2v_inst17|o[1]~14_combout\);

-- Location: LCCOMB_X29_Y30_N20
\b2v_inst1|b2v_inst17|o[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|o[1]~15_combout\ = (\b2v_inst1|b2v_inst21|o[0]~22_combout\ & ((\b2v_inst1|b2v_inst17|o[1]~14_combout\ & (\b2v_inst1|b2v_inst17|Mux5~0_combout\)) # (!\b2v_inst1|b2v_inst17|o[1]~14_combout\ & ((\b2v_inst1|b2v_inst9|q\(2)))))) # 
-- (!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (((\b2v_inst1|b2v_inst17|o[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst17|Mux5~0_combout\,
	datab => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datac => \b2v_inst1|b2v_inst9|q\(2),
	datad => \b2v_inst1|b2v_inst17|o[1]~14_combout\,
	combout => \b2v_inst1|b2v_inst17|o[1]~15_combout\);

-- Location: LCCOMB_X29_Y30_N6
\b2v_inst1|b2v_inst5|q[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst5|q[1]~2_combout\ = (\b2v_inst1|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst1|b2v_inst21|o[2]~12_combout\ & (\b2v_inst1|b2v_inst17|o[1]~13_combout\)) # (!\b2v_inst1|b2v_inst21|o[2]~12_combout\ & ((\b2v_inst1|b2v_inst17|o[1]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst21|o[2]~12_combout\,
	datab => \b2v_inst1|b2v_inst7|q[3]~1_combout\,
	datac => \b2v_inst1|b2v_inst17|o[1]~13_combout\,
	datad => \b2v_inst1|b2v_inst17|o[1]~15_combout\,
	combout => \b2v_inst1|b2v_inst5|q[1]~2_combout\);

-- Location: LCCOMB_X27_Y26_N30
\b2v_inst1|b2v_inst17|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|Mux4~0_combout\ = \b2v_inst1|b2v_inst9|q\(0) $ (\b2v_inst1|b2v_inst9|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|b2v_inst9|q\(0),
	datad => \b2v_inst1|b2v_inst9|q\(3),
	combout => \b2v_inst1|b2v_inst17|Mux4~0_combout\);

-- Location: LCCOMB_X27_Y26_N8
\b2v_inst1|b2v_inst17|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|Mux7~1_combout\ = \b2v_inst1|b2v_inst9|q\(1) $ (\b2v_inst1|b2v_inst9|q\(0) $ (\b2v_inst1|b2v_inst9|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst9|q\(1),
	datac => \b2v_inst1|b2v_inst9|q\(0),
	datad => \b2v_inst1|b2v_inst9|q\(3),
	combout => \b2v_inst1|b2v_inst17|Mux7~1_combout\);

-- Location: LCCOMB_X27_Y26_N18
\b2v_inst1|b2v_inst17|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|Mux0~0_combout\ = \b2v_inst1|b2v_inst9|q\(2) $ (\b2v_inst1|b2v_inst9|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst9|q\(2),
	datad => \b2v_inst1|b2v_inst9|q\(3),
	combout => \b2v_inst1|b2v_inst17|Mux0~0_combout\);

-- Location: LCCOMB_X29_Y30_N2
\b2v_inst1|b2v_inst17|o[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|o[1]~8_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (((\b2v_inst1|b2v_inst17|Mux5~1_combout\) # (\b2v_inst1|b2v_inst21|o[0]~22_combout\)))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (\b2v_inst1|b2v_inst17|Mux0~0_combout\ & 
-- ((!\b2v_inst1|b2v_inst21|o[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst17|Mux0~0_combout\,
	datab => \b2v_inst1|b2v_inst17|Mux5~1_combout\,
	datac => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datad => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	combout => \b2v_inst1|b2v_inst17|o[1]~8_combout\);

-- Location: LCCOMB_X29_Y30_N8
\b2v_inst1|b2v_inst17|o[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|o[1]~9_combout\ = (\b2v_inst1|b2v_inst21|o[0]~22_combout\ & ((\b2v_inst1|b2v_inst17|o[1]~8_combout\ & ((\b2v_inst1|b2v_inst17|Mux10~0_combout\))) # (!\b2v_inst1|b2v_inst17|o[1]~8_combout\ & (\b2v_inst1|b2v_inst17|Mux3~0_combout\)))) 
-- # (!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (((\b2v_inst1|b2v_inst17|o[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst17|Mux3~0_combout\,
	datab => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datac => \b2v_inst1|b2v_inst17|Mux10~0_combout\,
	datad => \b2v_inst1|b2v_inst17|o[1]~8_combout\,
	combout => \b2v_inst1|b2v_inst17|o[1]~9_combout\);

-- Location: LCCOMB_X29_Y30_N10
\b2v_inst1|b2v_inst17|o[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|o[1]~10_combout\ = (\b2v_inst1|b2v_inst18|o[3]~5_combout\ & (((\b2v_inst1|b2v_inst17|o[1]~9_combout\) # (!\b2v_inst1|b2v_inst18|o[3]~4_combout\)))) # (!\b2v_inst1|b2v_inst18|o[3]~5_combout\ & (\b2v_inst1|b2v_inst9|q\(1) & 
-- ((\b2v_inst1|b2v_inst18|o[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst9|q\(1),
	datab => \b2v_inst1|b2v_inst17|o[1]~9_combout\,
	datac => \b2v_inst1|b2v_inst18|o[3]~5_combout\,
	datad => \b2v_inst1|b2v_inst18|o[3]~4_combout\,
	combout => \b2v_inst1|b2v_inst17|o[1]~10_combout\);

-- Location: LCCOMB_X29_Y30_N28
\b2v_inst1|b2v_inst17|o[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|o[1]~11_combout\ = (\b2v_inst1|b2v_inst18|o[3]~38_combout\ & ((\b2v_inst1|b2v_inst17|o[1]~10_combout\ & ((\b2v_inst1|b2v_inst17|Mux7~1_combout\))) # (!\b2v_inst1|b2v_inst17|o[1]~10_combout\ & 
-- (\b2v_inst1|b2v_inst17|Mux4~0_combout\)))) # (!\b2v_inst1|b2v_inst18|o[3]~38_combout\ & (((\b2v_inst1|b2v_inst17|o[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst17|Mux4~0_combout\,
	datab => \b2v_inst1|b2v_inst18|o[3]~38_combout\,
	datac => \b2v_inst1|b2v_inst17|Mux7~1_combout\,
	datad => \b2v_inst1|b2v_inst17|o[1]~10_combout\,
	combout => \b2v_inst1|b2v_inst17|o[1]~11_combout\);

-- Location: LCCOMB_X29_Y30_N16
\b2v_inst1|b2v_inst5|q[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst5|q[1]~3_combout\ = \b2v_inst1|b2v_inst5|q\(1) $ (((\b2v_inst1|b2v_inst5|q[1]~2_combout\) # ((\b2v_inst1|b2v_inst7|q[1]~0_combout\ & \b2v_inst1|b2v_inst17|o[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst5|q[1]~2_combout\,
	datab => \b2v_inst1|b2v_inst7|q[1]~0_combout\,
	datac => \b2v_inst1|b2v_inst5|q\(1),
	datad => \b2v_inst1|b2v_inst17|o[1]~11_combout\,
	combout => \b2v_inst1|b2v_inst5|q[1]~3_combout\);

-- Location: FF_X29_Y30_N17
\b2v_inst1|b2v_inst5|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|b2v_inst5|q[1]~3_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst5|q\(1));

-- Location: LCCOMB_X26_Y27_N0
\b2v_inst1|b2v_inst35|O[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst35|O[1]~1_combout\ = (\b2v_inst|Selector1~3_combout\ & (\b2v_inst1|b2v_inst5|q\(1))) # (!\b2v_inst|Selector1~3_combout\ & ((\b2v_inst1|b2v_inst9|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst5|q\(1),
	datab => \b2v_inst1|b2v_inst9|q\(1),
	datad => \b2v_inst|Selector1~3_combout\,
	combout => \b2v_inst1|b2v_inst35|O[1]~1_combout\);

-- Location: FF_X26_Y27_N1
\b2v_inst1|b2v_inst10|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|b2v_inst35|O[1]~1_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	ena => \b2v_inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst10|q\(1));

-- Location: LCCOMB_X27_Y27_N12
\b2v_inst1|b2v_inst18|o[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|o[2]~36_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & ((\b2v_inst1|b2v_inst18|Mux3~0_combout\) # ((\b2v_inst1|b2v_inst21|o[0]~22_combout\)))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & 
-- (((!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & \b2v_inst1|b2v_inst18|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datab => \b2v_inst1|b2v_inst18|Mux3~0_combout\,
	datac => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datad => \b2v_inst1|b2v_inst18|Mux0~0_combout\,
	combout => \b2v_inst1|b2v_inst18|o[2]~36_combout\);

-- Location: LCCOMB_X27_Y27_N30
\b2v_inst1|b2v_inst18|o[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|o[2]~37_combout\ = (\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (\b2v_inst1|b2v_inst10|q\(3) $ (((\b2v_inst1|b2v_inst10|q\(1) & \b2v_inst1|b2v_inst18|o[2]~36_combout\))))) # (!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & 
-- (((\b2v_inst1|b2v_inst18|o[2]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst10|q\(1),
	datab => \b2v_inst1|b2v_inst10|q\(3),
	datac => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datad => \b2v_inst1|b2v_inst18|o[2]~36_combout\,
	combout => \b2v_inst1|b2v_inst18|o[2]~37_combout\);

-- Location: LCCOMB_X27_Y27_N16
\b2v_inst1|b2v_inst18|o[2]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|o[2]~34_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (((\b2v_inst1|b2v_inst21|o[0]~22_combout\)))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (\b2v_inst1|b2v_inst10|q\(0) $ (((\b2v_inst1|b2v_inst10|q\(2) & 
-- !\b2v_inst1|b2v_inst21|o[0]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datab => \b2v_inst1|b2v_inst10|q\(2),
	datac => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datad => \b2v_inst1|b2v_inst10|q\(0),
	combout => \b2v_inst1|b2v_inst18|o[2]~34_combout\);

-- Location: LCCOMB_X27_Y27_N26
\b2v_inst1|b2v_inst18|o[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|o[2]~35_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (\b2v_inst1|b2v_inst18|Mux7~0_combout\ $ (((\b2v_inst1|b2v_inst10|q\(2) & !\b2v_inst1|b2v_inst18|o[2]~34_combout\))))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & 
-- (((\b2v_inst1|b2v_inst18|o[2]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst10|q\(2),
	datab => \b2v_inst1|b2v_inst18|Mux7~0_combout\,
	datac => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datad => \b2v_inst1|b2v_inst18|o[2]~34_combout\,
	combout => \b2v_inst1|b2v_inst18|o[2]~35_combout\);

-- Location: LCCOMB_X26_Y27_N12
\b2v_inst1|b2v_inst6|q[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst6|q[2]~6_combout\ = (\b2v_inst1|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst1|b2v_inst21|o[2]~12_combout\ & ((\b2v_inst1|b2v_inst18|o[2]~35_combout\))) # (!\b2v_inst1|b2v_inst21|o[2]~12_combout\ & (\b2v_inst1|b2v_inst18|o[2]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q[3]~1_combout\,
	datab => \b2v_inst1|b2v_inst21|o[2]~12_combout\,
	datac => \b2v_inst1|b2v_inst18|o[2]~37_combout\,
	datad => \b2v_inst1|b2v_inst18|o[2]~35_combout\,
	combout => \b2v_inst1|b2v_inst6|q[2]~6_combout\);

-- Location: LCCOMB_X26_Y27_N28
\b2v_inst1|b2v_inst18|o[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|o[2]~30_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (((\b2v_inst1|b2v_inst21|o[0]~22_combout\)))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & ((\b2v_inst1|b2v_inst21|o[0]~22_combout\ & 
-- (\b2v_inst1|b2v_inst18|Mux5~0_combout\)) # (!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & ((\b2v_inst1|b2v_inst18|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst18|Mux5~0_combout\,
	datab => \b2v_inst1|b2v_inst18|Mux4~0_combout\,
	datac => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datad => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	combout => \b2v_inst1|b2v_inst18|o[2]~30_combout\);

-- Location: LCCOMB_X26_Y27_N14
\b2v_inst1|b2v_inst18|o[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|o[2]~31_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & ((\b2v_inst1|b2v_inst18|o[2]~30_combout\ & ((\b2v_inst1|b2v_inst18|Mux9~0_combout\))) # (!\b2v_inst1|b2v_inst18|o[2]~30_combout\ & 
-- (\b2v_inst1|b2v_inst18|Mux7~1_combout\)))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (((\b2v_inst1|b2v_inst18|o[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst18|Mux7~1_combout\,
	datab => \b2v_inst1|b2v_inst18|Mux9~0_combout\,
	datac => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datad => \b2v_inst1|b2v_inst18|o[2]~30_combout\,
	combout => \b2v_inst1|b2v_inst18|o[2]~31_combout\);

-- Location: LCCOMB_X26_Y27_N24
\b2v_inst1|b2v_inst18|o[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|o[2]~32_combout\ = (\b2v_inst1|b2v_inst18|o[3]~4_combout\ & ((\b2v_inst1|b2v_inst18|o[3]~5_combout\ & ((\b2v_inst1|b2v_inst18|o[2]~31_combout\))) # (!\b2v_inst1|b2v_inst18|o[3]~5_combout\ & (\b2v_inst1|b2v_inst10|q\(2))))) # 
-- (!\b2v_inst1|b2v_inst18|o[3]~4_combout\ & (((\b2v_inst1|b2v_inst18|o[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst10|q\(2),
	datab => \b2v_inst1|b2v_inst18|o[3]~4_combout\,
	datac => \b2v_inst1|b2v_inst18|o[2]~31_combout\,
	datad => \b2v_inst1|b2v_inst18|o[3]~5_combout\,
	combout => \b2v_inst1|b2v_inst18|o[2]~32_combout\);

-- Location: LCCOMB_X26_Y27_N10
\b2v_inst1|b2v_inst18|o[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|o[2]~33_combout\ = (\b2v_inst1|b2v_inst18|o[3]~38_combout\ & (\b2v_inst1|b2v_inst10|q\(1) $ (((\b2v_inst1|b2v_inst10|q\(2) & \b2v_inst1|b2v_inst18|o[2]~32_combout\))))) # (!\b2v_inst1|b2v_inst18|o[3]~38_combout\ & 
-- (((\b2v_inst1|b2v_inst18|o[2]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst10|q\(2),
	datab => \b2v_inst1|b2v_inst10|q\(1),
	datac => \b2v_inst1|b2v_inst18|o[3]~38_combout\,
	datad => \b2v_inst1|b2v_inst18|o[2]~32_combout\,
	combout => \b2v_inst1|b2v_inst18|o[2]~33_combout\);

-- Location: LCCOMB_X26_Y27_N4
\b2v_inst1|b2v_inst6|q[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst6|q[2]~7_combout\ = \b2v_inst1|b2v_inst6|q\(2) $ (((\b2v_inst1|b2v_inst6|q[2]~6_combout\) # ((\b2v_inst1|b2v_inst7|q[1]~0_combout\ & \b2v_inst1|b2v_inst18|o[2]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst6|q[2]~6_combout\,
	datab => \b2v_inst1|b2v_inst7|q[1]~0_combout\,
	datac => \b2v_inst1|b2v_inst6|q\(2),
	datad => \b2v_inst1|b2v_inst18|o[2]~33_combout\,
	combout => \b2v_inst1|b2v_inst6|q[2]~7_combout\);

-- Location: FF_X26_Y27_N5
\b2v_inst1|b2v_inst6|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|b2v_inst6|q[2]~7_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst6|q\(2));

-- Location: LCCOMB_X26_Y27_N2
\b2v_inst1|b2v_inst34|O[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst34|O[2]~2_combout\ = (\b2v_inst|Selector1~3_combout\ & ((\b2v_inst1|b2v_inst6|q\(2)))) # (!\b2v_inst|Selector1~3_combout\ & (\b2v_inst1|b2v_inst10|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst10|q\(2),
	datac => \b2v_inst1|b2v_inst6|q\(2),
	datad => \b2v_inst|Selector1~3_combout\,
	combout => \b2v_inst1|b2v_inst34|O[2]~2_combout\);

-- Location: FF_X26_Y27_N3
\b2v_inst1|b2v_inst11|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|b2v_inst34|O[2]~2_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	ena => \b2v_inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst11|q\(2));

-- Location: LCCOMB_X28_Y27_N6
\b2v_inst1|b2v_inst19|o[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|o[2]~33_combout\ = (\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (((\b2v_inst1|b2v_inst21|o[1]~32_combout\)))) # (!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & ((\b2v_inst1|b2v_inst21|o[1]~32_combout\ & 
-- ((\b2v_inst1|b2v_inst19|Mux3~0_combout\))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (\b2v_inst1|b2v_inst19|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst19|Mux0~0_combout\,
	datab => \b2v_inst1|b2v_inst19|Mux3~0_combout\,
	datac => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datad => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	combout => \b2v_inst1|b2v_inst19|o[2]~33_combout\);

-- Location: LCCOMB_X28_Y27_N8
\b2v_inst1|b2v_inst19|o[2]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|o[2]~34_combout\ = (\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (\b2v_inst1|b2v_inst11|q\(3) $ (((\b2v_inst1|b2v_inst11|q\(1) & \b2v_inst1|b2v_inst19|o[2]~33_combout\))))) # (!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & 
-- (((\b2v_inst1|b2v_inst19|o[2]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst11|q\(1),
	datab => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datac => \b2v_inst1|b2v_inst11|q\(3),
	datad => \b2v_inst1|b2v_inst19|o[2]~33_combout\,
	combout => \b2v_inst1|b2v_inst19|o[2]~34_combout\);

-- Location: LCCOMB_X28_Y27_N22
\b2v_inst1|b2v_inst19|o[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|o[2]~31_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (((\b2v_inst1|b2v_inst21|o[0]~22_combout\)))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (\b2v_inst1|b2v_inst11|q\(0) $ (((\b2v_inst1|b2v_inst11|q\(2) & 
-- !\b2v_inst1|b2v_inst21|o[0]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst11|q\(0),
	datab => \b2v_inst1|b2v_inst11|q\(2),
	datac => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datad => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	combout => \b2v_inst1|b2v_inst19|o[2]~31_combout\);

-- Location: LCCOMB_X28_Y27_N28
\b2v_inst1|b2v_inst19|o[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|o[2]~32_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (\b2v_inst1|b2v_inst19|Mux7~0_combout\ $ (((\b2v_inst1|b2v_inst11|q\(2) & !\b2v_inst1|b2v_inst19|o[2]~31_combout\))))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & 
-- (((\b2v_inst1|b2v_inst19|o[2]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst19|Mux7~0_combout\,
	datab => \b2v_inst1|b2v_inst11|q\(2),
	datac => \b2v_inst1|b2v_inst19|o[2]~31_combout\,
	datad => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	combout => \b2v_inst1|b2v_inst19|o[2]~32_combout\);

-- Location: LCCOMB_X28_Y27_N18
\b2v_inst1|b2v_inst7|q[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst7|q[2]~8_combout\ = (\b2v_inst1|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst1|b2v_inst21|o[2]~12_combout\ & ((\b2v_inst1|b2v_inst19|o[2]~32_combout\))) # (!\b2v_inst1|b2v_inst21|o[2]~12_combout\ & (\b2v_inst1|b2v_inst19|o[2]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q[3]~1_combout\,
	datab => \b2v_inst1|b2v_inst21|o[2]~12_combout\,
	datac => \b2v_inst1|b2v_inst19|o[2]~34_combout\,
	datad => \b2v_inst1|b2v_inst19|o[2]~32_combout\,
	combout => \b2v_inst1|b2v_inst7|q[2]~8_combout\);

-- Location: LCCOMB_X28_Y27_N14
\b2v_inst1|b2v_inst19|o[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|o[2]~27_combout\ = (\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (((\b2v_inst1|b2v_inst19|Mux5~0_combout\) # (\b2v_inst1|b2v_inst21|o[1]~32_combout\)))) # (!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (\b2v_inst1|b2v_inst19|Mux4~0_combout\ 
-- & ((!\b2v_inst1|b2v_inst21|o[1]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst19|Mux4~0_combout\,
	datab => \b2v_inst1|b2v_inst19|Mux5~0_combout\,
	datac => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datad => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	combout => \b2v_inst1|b2v_inst19|o[2]~27_combout\);

-- Location: LCCOMB_X28_Y27_N4
\b2v_inst1|b2v_inst19|o[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|o[2]~28_combout\ = (\b2v_inst1|b2v_inst19|o[2]~27_combout\ & (((\b2v_inst1|b2v_inst19|Mux9~0_combout\) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\)))) # (!\b2v_inst1|b2v_inst19|o[2]~27_combout\ & (\b2v_inst1|b2v_inst19|Mux7~1_combout\ 
-- & ((\b2v_inst1|b2v_inst21|o[1]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst19|Mux7~1_combout\,
	datab => \b2v_inst1|b2v_inst19|Mux9~0_combout\,
	datac => \b2v_inst1|b2v_inst19|o[2]~27_combout\,
	datad => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	combout => \b2v_inst1|b2v_inst19|o[2]~28_combout\);

-- Location: LCCOMB_X28_Y27_N2
\b2v_inst1|b2v_inst19|o[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|o[2]~29_combout\ = (\b2v_inst1|b2v_inst18|o[3]~4_combout\ & ((\b2v_inst1|b2v_inst18|o[3]~5_combout\ & ((\b2v_inst1|b2v_inst19|o[2]~28_combout\))) # (!\b2v_inst1|b2v_inst18|o[3]~5_combout\ & (\b2v_inst1|b2v_inst11|q\(2))))) # 
-- (!\b2v_inst1|b2v_inst18|o[3]~4_combout\ & (((\b2v_inst1|b2v_inst18|o[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst11|q\(2),
	datab => \b2v_inst1|b2v_inst18|o[3]~4_combout\,
	datac => \b2v_inst1|b2v_inst19|o[2]~28_combout\,
	datad => \b2v_inst1|b2v_inst18|o[3]~5_combout\,
	combout => \b2v_inst1|b2v_inst19|o[2]~29_combout\);

-- Location: LCCOMB_X28_Y27_N16
\b2v_inst1|b2v_inst19|o[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|o[2]~30_combout\ = (\b2v_inst1|b2v_inst18|o[3]~38_combout\ & (\b2v_inst1|b2v_inst11|q\(1) $ (((\b2v_inst1|b2v_inst11|q\(2) & \b2v_inst1|b2v_inst19|o[2]~29_combout\))))) # (!\b2v_inst1|b2v_inst18|o[3]~38_combout\ & 
-- (((\b2v_inst1|b2v_inst19|o[2]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst11|q\(1),
	datab => \b2v_inst1|b2v_inst11|q\(2),
	datac => \b2v_inst1|b2v_inst18|o[3]~38_combout\,
	datad => \b2v_inst1|b2v_inst19|o[2]~29_combout\,
	combout => \b2v_inst1|b2v_inst19|o[2]~30_combout\);

-- Location: LCCOMB_X28_Y27_N24
\b2v_inst1|b2v_inst7|q[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst7|q[2]~9_combout\ = \b2v_inst1|b2v_inst7|q\(2) $ (((\b2v_inst1|b2v_inst7|q[2]~8_combout\) # ((\b2v_inst1|b2v_inst7|q[1]~0_combout\ & \b2v_inst1|b2v_inst19|o[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q[1]~0_combout\,
	datab => \b2v_inst1|b2v_inst7|q[2]~8_combout\,
	datac => \b2v_inst1|b2v_inst7|q\(2),
	datad => \b2v_inst1|b2v_inst19|o[2]~30_combout\,
	combout => \b2v_inst1|b2v_inst7|q[2]~9_combout\);

-- Location: FF_X28_Y27_N25
\b2v_inst1|b2v_inst7|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|b2v_inst7|q[2]~9_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst7|q\(2));

-- Location: LCCOMB_X26_Y27_N6
\b2v_inst1|b2v_inst33|O[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst33|O[2]~2_combout\ = (\b2v_inst|Selector1~3_combout\ & ((\b2v_inst1|b2v_inst7|q\(2)))) # (!\b2v_inst|Selector1~3_combout\ & (\b2v_inst1|b2v_inst11|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst11|q\(2),
	datac => \b2v_inst1|b2v_inst7|q\(2),
	datad => \b2v_inst|Selector1~3_combout\,
	combout => \b2v_inst1|b2v_inst33|O[2]~2_combout\);

-- Location: FF_X26_Y27_N7
\b2v_inst1|b2v_inst12|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|b2v_inst33|O[2]~2_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	ena => \b2v_inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst12|q\(2));

-- Location: LCCOMB_X30_Y30_N8
\b2v_inst1|b2v_inst22|O[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst22|O[2]~2_combout\ = (\b2v_inst1|b2v_inst12|q\(2) & (((!\b2v_inst|WideOr2~0_combout\) # (!\b2v_inst|Selector1~2_combout\)) # (!\Impar~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Impar~input_o\,
	datab => \b2v_inst1|b2v_inst12|q\(2),
	datac => \b2v_inst|Selector1~2_combout\,
	datad => \b2v_inst|WideOr2~0_combout\,
	combout => \b2v_inst1|b2v_inst22|O[2]~2_combout\);

-- Location: FF_X30_Y30_N9
\b2v_inst1|b2v_inst9|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|b2v_inst22|O[2]~2_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	ena => \b2v_inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst9|q\(2));

-- Location: LCCOMB_X27_Y26_N16
\b2v_inst1|b2v_inst17|o[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|o[2]~28_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (((\b2v_inst1|b2v_inst21|o[0]~22_combout\)))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (\b2v_inst1|b2v_inst9|q\(0) $ (((\b2v_inst1|b2v_inst9|q\(2) & 
-- !\b2v_inst1|b2v_inst21|o[0]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst9|q\(2),
	datab => \b2v_inst1|b2v_inst9|q\(0),
	datac => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datad => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	combout => \b2v_inst1|b2v_inst17|o[2]~28_combout\);

-- Location: LCCOMB_X27_Y26_N26
\b2v_inst1|b2v_inst17|o[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|o[2]~29_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (\b2v_inst1|b2v_inst17|Mux7~0_combout\ $ (((\b2v_inst1|b2v_inst9|q\(2) & !\b2v_inst1|b2v_inst17|o[2]~28_combout\))))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & 
-- (((\b2v_inst1|b2v_inst17|o[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst9|q\(2),
	datab => \b2v_inst1|b2v_inst17|Mux7~0_combout\,
	datac => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datad => \b2v_inst1|b2v_inst17|o[2]~28_combout\,
	combout => \b2v_inst1|b2v_inst17|o[2]~29_combout\);

-- Location: LCCOMB_X27_Y26_N0
\b2v_inst1|b2v_inst17|o[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|o[2]~30_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & ((\b2v_inst1|b2v_inst17|Mux3~0_combout\) # ((\b2v_inst1|b2v_inst21|o[0]~22_combout\)))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & 
-- (((\b2v_inst1|b2v_inst17|Mux0~0_combout\ & !\b2v_inst1|b2v_inst21|o[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst17|Mux3~0_combout\,
	datab => \b2v_inst1|b2v_inst17|Mux0~0_combout\,
	datac => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datad => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	combout => \b2v_inst1|b2v_inst17|o[2]~30_combout\);

-- Location: LCCOMB_X27_Y26_N22
\b2v_inst1|b2v_inst17|o[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|o[2]~31_combout\ = (\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (\b2v_inst1|b2v_inst9|q\(3) $ (((\b2v_inst1|b2v_inst9|q\(1) & \b2v_inst1|b2v_inst17|o[2]~30_combout\))))) # (!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & 
-- (((\b2v_inst1|b2v_inst17|o[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst9|q\(1),
	datab => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datac => \b2v_inst1|b2v_inst9|q\(3),
	datad => \b2v_inst1|b2v_inst17|o[2]~30_combout\,
	combout => \b2v_inst1|b2v_inst17|o[2]~31_combout\);

-- Location: LCCOMB_X28_Y26_N6
\b2v_inst1|b2v_inst5|q[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst5|q[2]~6_combout\ = (\b2v_inst1|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst1|b2v_inst21|o[2]~12_combout\ & (\b2v_inst1|b2v_inst17|o[2]~29_combout\)) # (!\b2v_inst1|b2v_inst21|o[2]~12_combout\ & ((\b2v_inst1|b2v_inst17|o[2]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q[3]~1_combout\,
	datab => \b2v_inst1|b2v_inst21|o[2]~12_combout\,
	datac => \b2v_inst1|b2v_inst17|o[2]~29_combout\,
	datad => \b2v_inst1|b2v_inst17|o[2]~31_combout\,
	combout => \b2v_inst1|b2v_inst5|q[2]~6_combout\);

-- Location: LCCOMB_X27_Y26_N12
\b2v_inst1|b2v_inst17|o[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|o[2]~24_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (((\b2v_inst1|b2v_inst17|Mux9~0_combout\) # (!\b2v_inst1|b2v_inst21|o[0]~22_combout\)))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (\b2v_inst1|b2v_inst17|Mux5~0_combout\ 
-- & ((\b2v_inst1|b2v_inst21|o[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst17|Mux5~0_combout\,
	datab => \b2v_inst1|b2v_inst17|Mux9~0_combout\,
	datac => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datad => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	combout => \b2v_inst1|b2v_inst17|o[2]~24_combout\);

-- Location: LCCOMB_X27_Y26_N6
\b2v_inst1|b2v_inst17|o[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|o[2]~25_combout\ = (\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (((\b2v_inst1|b2v_inst17|o[2]~24_combout\)))) # (!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & ((\b2v_inst1|b2v_inst17|o[2]~24_combout\ & 
-- ((\b2v_inst1|b2v_inst17|Mux7~1_combout\))) # (!\b2v_inst1|b2v_inst17|o[2]~24_combout\ & (\b2v_inst1|b2v_inst17|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst17|Mux4~0_combout\,
	datab => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datac => \b2v_inst1|b2v_inst17|Mux7~1_combout\,
	datad => \b2v_inst1|b2v_inst17|o[2]~24_combout\,
	combout => \b2v_inst1|b2v_inst17|o[2]~25_combout\);

-- Location: LCCOMB_X28_Y26_N2
\b2v_inst1|b2v_inst17|o[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|o[2]~26_combout\ = (\b2v_inst1|b2v_inst18|o[3]~5_combout\ & (((\b2v_inst1|b2v_inst17|o[2]~25_combout\) # (!\b2v_inst1|b2v_inst18|o[3]~4_combout\)))) # (!\b2v_inst1|b2v_inst18|o[3]~5_combout\ & (\b2v_inst1|b2v_inst9|q\(2) & 
-- ((\b2v_inst1|b2v_inst18|o[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst9|q\(2),
	datab => \b2v_inst1|b2v_inst17|o[2]~25_combout\,
	datac => \b2v_inst1|b2v_inst18|o[3]~5_combout\,
	datad => \b2v_inst1|b2v_inst18|o[3]~4_combout\,
	combout => \b2v_inst1|b2v_inst17|o[2]~26_combout\);

-- Location: LCCOMB_X28_Y26_N0
\b2v_inst1|b2v_inst17|o[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|o[2]~27_combout\ = (\b2v_inst1|b2v_inst18|o[3]~38_combout\ & (\b2v_inst1|b2v_inst9|q\(1) $ (((\b2v_inst1|b2v_inst9|q\(2) & \b2v_inst1|b2v_inst17|o[2]~26_combout\))))) # (!\b2v_inst1|b2v_inst18|o[3]~38_combout\ & 
-- (((\b2v_inst1|b2v_inst17|o[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst9|q\(2),
	datab => \b2v_inst1|b2v_inst9|q\(1),
	datac => \b2v_inst1|b2v_inst18|o[3]~38_combout\,
	datad => \b2v_inst1|b2v_inst17|o[2]~26_combout\,
	combout => \b2v_inst1|b2v_inst17|o[2]~27_combout\);

-- Location: LCCOMB_X28_Y26_N14
\b2v_inst1|b2v_inst5|q[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst5|q[2]~7_combout\ = \b2v_inst1|b2v_inst5|q\(2) $ (((\b2v_inst1|b2v_inst5|q[2]~6_combout\) # ((\b2v_inst1|b2v_inst7|q[1]~0_combout\ & \b2v_inst1|b2v_inst17|o[2]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst5|q[2]~6_combout\,
	datab => \b2v_inst1|b2v_inst7|q[1]~0_combout\,
	datac => \b2v_inst1|b2v_inst5|q\(2),
	datad => \b2v_inst1|b2v_inst17|o[2]~27_combout\,
	combout => \b2v_inst1|b2v_inst5|q[2]~7_combout\);

-- Location: FF_X28_Y26_N15
\b2v_inst1|b2v_inst5|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|b2v_inst5|q[2]~7_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst5|q\(2));

-- Location: LCCOMB_X26_Y27_N30
\b2v_inst1|b2v_inst35|O[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst35|O[2]~2_combout\ = (\b2v_inst|Selector1~3_combout\ & (\b2v_inst1|b2v_inst5|q\(2))) # (!\b2v_inst|Selector1~3_combout\ & ((\b2v_inst1|b2v_inst9|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst5|q\(2),
	datac => \b2v_inst1|b2v_inst9|q\(2),
	datad => \b2v_inst|Selector1~3_combout\,
	combout => \b2v_inst1|b2v_inst35|O[2]~2_combout\);

-- Location: FF_X26_Y27_N31
\b2v_inst1|b2v_inst10|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|b2v_inst35|O[2]~2_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	ena => \b2v_inst|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst10|q\(2));

-- Location: LCCOMB_X25_Y28_N14
\b2v_inst1|b2v_inst18|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|Mux9~0_combout\ = \b2v_inst1|b2v_inst10|q\(2) $ (\b2v_inst1|b2v_inst10|q\(3) $ (\b2v_inst1|b2v_inst10|q\(1) $ (\b2v_inst1|b2v_inst10|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst10|q\(2),
	datab => \b2v_inst1|b2v_inst10|q\(3),
	datac => \b2v_inst1|b2v_inst10|q\(1),
	datad => \b2v_inst1|b2v_inst10|q\(0),
	combout => \b2v_inst1|b2v_inst18|Mux9~0_combout\);

-- Location: LCCOMB_X25_Y28_N0
\b2v_inst1|b2v_inst18|o[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|o[3]~10_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (((\b2v_inst1|b2v_inst21|o[0]~22_combout\)))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (\b2v_inst1|b2v_inst18|Mux7~0_combout\ $ (((\b2v_inst1|b2v_inst10|q\(3) & 
-- !\b2v_inst1|b2v_inst21|o[0]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst18|Mux7~0_combout\,
	datab => \b2v_inst1|b2v_inst10|q\(3),
	datac => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datad => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	combout => \b2v_inst1|b2v_inst18|o[3]~10_combout\);

-- Location: LCCOMB_X25_Y28_N22
\b2v_inst1|b2v_inst18|o[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|o[3]~11_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & ((\b2v_inst1|b2v_inst18|o[3]~10_combout\ & ((\b2v_inst1|b2v_inst18|Mux10~0_combout\))) # (!\b2v_inst1|b2v_inst18|o[3]~10_combout\ & 
-- (\b2v_inst1|b2v_inst18|Mux9~0_combout\)))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (((\b2v_inst1|b2v_inst18|o[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst18|Mux9~0_combout\,
	datab => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datac => \b2v_inst1|b2v_inst18|Mux10~0_combout\,
	datad => \b2v_inst1|b2v_inst18|o[3]~10_combout\,
	combout => \b2v_inst1|b2v_inst18|o[3]~11_combout\);

-- Location: LCCOMB_X25_Y28_N10
\b2v_inst1|b2v_inst18|o[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|o[3]~12_combout\ = (\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (((\b2v_inst1|b2v_inst21|o[1]~32_combout\)))) # (!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & ((\b2v_inst1|b2v_inst21|o[1]~32_combout\ & 
-- ((\b2v_inst1|b2v_inst18|Mux5~0_combout\))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (\b2v_inst1|b2v_inst18|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst18|Mux4~0_combout\,
	datab => \b2v_inst1|b2v_inst18|Mux5~0_combout\,
	datac => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datad => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	combout => \b2v_inst1|b2v_inst18|o[3]~12_combout\);

-- Location: LCCOMB_X25_Y28_N16
\b2v_inst1|b2v_inst18|o[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|o[3]~13_combout\ = (\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (\b2v_inst1|b2v_inst10|q\(0) $ (((\b2v_inst1|b2v_inst10|q\(2) & \b2v_inst1|b2v_inst18|o[3]~12_combout\))))) # (!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & 
-- (((\b2v_inst1|b2v_inst18|o[3]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst10|q\(0),
	datab => \b2v_inst1|b2v_inst10|q\(2),
	datac => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datad => \b2v_inst1|b2v_inst18|o[3]~12_combout\,
	combout => \b2v_inst1|b2v_inst18|o[3]~13_combout\);

-- Location: LCCOMB_X25_Y28_N2
\b2v_inst1|b2v_inst6|q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst6|q[3]~0_combout\ = (\b2v_inst1|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst1|b2v_inst21|o[2]~12_combout\ & (\b2v_inst1|b2v_inst18|o[3]~11_combout\)) # (!\b2v_inst1|b2v_inst21|o[2]~12_combout\ & ((\b2v_inst1|b2v_inst18|o[3]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst21|o[2]~12_combout\,
	datab => \b2v_inst1|b2v_inst7|q[3]~1_combout\,
	datac => \b2v_inst1|b2v_inst18|o[3]~11_combout\,
	datad => \b2v_inst1|b2v_inst18|o[3]~13_combout\,
	combout => \b2v_inst1|b2v_inst6|q[3]~0_combout\);

-- Location: LCCOMB_X25_Y28_N28
\b2v_inst1|b2v_inst18|o[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|o[3]~6_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (((\b2v_inst1|b2v_inst21|o[0]~22_combout\)))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (\b2v_inst1|b2v_inst10|q\(1) $ (((\b2v_inst1|b2v_inst10|q\(3) & 
-- \b2v_inst1|b2v_inst21|o[0]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst10|q\(1),
	datab => \b2v_inst1|b2v_inst10|q\(3),
	datac => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datad => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	combout => \b2v_inst1|b2v_inst18|o[3]~6_combout\);

-- Location: LCCOMB_X25_Y28_N24
\b2v_inst1|b2v_inst18|o[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|o[3]~7_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (\b2v_inst1|b2v_inst18|Mux2~0_combout\ $ (((\b2v_inst1|b2v_inst10|q\(3) & \b2v_inst1|b2v_inst18|o[3]~6_combout\))))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & 
-- (((\b2v_inst1|b2v_inst18|o[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst18|Mux2~0_combout\,
	datab => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datac => \b2v_inst1|b2v_inst10|q\(3),
	datad => \b2v_inst1|b2v_inst18|o[3]~6_combout\,
	combout => \b2v_inst1|b2v_inst18|o[3]~7_combout\);

-- Location: LCCOMB_X25_Y28_N26
\b2v_inst1|b2v_inst18|o[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|o[3]~8_combout\ = (\b2v_inst1|b2v_inst18|o[3]~4_combout\ & ((\b2v_inst1|b2v_inst18|o[3]~5_combout\ & ((\b2v_inst1|b2v_inst18|o[3]~7_combout\))) # (!\b2v_inst1|b2v_inst18|o[3]~5_combout\ & (\b2v_inst1|b2v_inst10|q\(3))))) # 
-- (!\b2v_inst1|b2v_inst18|o[3]~4_combout\ & (((\b2v_inst1|b2v_inst18|o[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst18|o[3]~4_combout\,
	datab => \b2v_inst1|b2v_inst10|q\(3),
	datac => \b2v_inst1|b2v_inst18|o[3]~5_combout\,
	datad => \b2v_inst1|b2v_inst18|o[3]~7_combout\,
	combout => \b2v_inst1|b2v_inst18|o[3]~8_combout\);

-- Location: LCCOMB_X25_Y28_N20
\b2v_inst1|b2v_inst18|o[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst18|o[3]~9_combout\ = (\b2v_inst1|b2v_inst18|o[3]~38_combout\ & (\b2v_inst1|b2v_inst10|q\(2) $ (((\b2v_inst1|b2v_inst18|o[3]~8_combout\ & \b2v_inst1|b2v_inst10|q\(3)))))) # (!\b2v_inst1|b2v_inst18|o[3]~38_combout\ & 
-- (((\b2v_inst1|b2v_inst18|o[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst18|o[3]~38_combout\,
	datab => \b2v_inst1|b2v_inst10|q\(2),
	datac => \b2v_inst1|b2v_inst18|o[3]~8_combout\,
	datad => \b2v_inst1|b2v_inst10|q\(3),
	combout => \b2v_inst1|b2v_inst18|o[3]~9_combout\);

-- Location: LCCOMB_X25_Y28_N4
\b2v_inst1|b2v_inst6|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst6|q[3]~1_combout\ = \b2v_inst1|b2v_inst6|q\(3) $ (((\b2v_inst1|b2v_inst6|q[3]~0_combout\) # ((\b2v_inst1|b2v_inst7|q[1]~0_combout\ & \b2v_inst1|b2v_inst18|o[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q[1]~0_combout\,
	datab => \b2v_inst1|b2v_inst6|q[3]~0_combout\,
	datac => \b2v_inst1|b2v_inst6|q\(3),
	datad => \b2v_inst1|b2v_inst18|o[3]~9_combout\,
	combout => \b2v_inst1|b2v_inst6|q[3]~1_combout\);

-- Location: FF_X25_Y28_N5
\b2v_inst1|b2v_inst6|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|b2v_inst6|q[3]~1_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst6|q\(3));

-- Location: IOIBUF_X32_Y43_N1
\Input[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(2),
	o => \Input[2]~input_o\);

-- Location: LCCOMB_X29_Y27_N4
\b2v_inst|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|WideOr0~0_combout\ = ((\b2v_inst|estadoAtual.clearSyn~q\) # (\b2v_inst|estadoAtual.idle2~q\)) # (!\b2v_inst|estadoAtual.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|estadoAtual.idle~q\,
	datac => \b2v_inst|estadoAtual.clearSyn~q\,
	datad => \b2v_inst|estadoAtual.idle2~q\,
	combout => \b2v_inst|WideOr0~0_combout\);

-- Location: LCCOMB_X29_Y27_N26
\b2v_inst|WideOr0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|WideOr0~combout\ = (\b2v_inst|estadoAtual.idle~q\ & (!\b2v_inst|estadoAtual.idle2~q\ & (!\b2v_inst|estadoAtual.clearSyn~q\ & !\b2v_inst|estadoAtual.store~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|estadoAtual.idle~q\,
	datab => \b2v_inst|estadoAtual.idle2~q\,
	datac => \b2v_inst|estadoAtual.clearSyn~q\,
	datad => \b2v_inst|estadoAtual.store~q\,
	combout => \b2v_inst|WideOr0~combout\);

-- Location: FF_X29_Y29_N27
\b2v_inst1|b2v_inst|q[2]\ : dffeas
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
	q => \b2v_inst1|b2v_inst|q\(2));

-- Location: FF_X29_Y29_N29
\b2v_inst1|b2v_inst1|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst1|b2v_inst|q\(2),
	clrn => \b2v_inst|ALT_INV_WideOr0~0_combout\,
	sload => VCC,
	ena => \b2v_inst|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst1|q\(2));

-- Location: FF_X27_Y30_N3
\b2v_inst1|b2v_inst2|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst1|b2v_inst1|q\(2),
	clrn => \b2v_inst|ALT_INV_WideOr0~0_combout\,
	sload => VCC,
	ena => \b2v_inst|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst2|q\(2));

-- Location: IOIBUF_X0_Y28_N15
\Input[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(0),
	o => \Input[0]~input_o\);

-- Location: FF_X29_Y29_N17
\b2v_inst1|b2v_inst|q[0]\ : dffeas
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
	q => \b2v_inst1|b2v_inst|q\(0));

-- Location: FF_X29_Y29_N31
\b2v_inst1|b2v_inst1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst1|b2v_inst|q\(0),
	clrn => \b2v_inst|ALT_INV_WideOr0~0_combout\,
	sload => VCC,
	ena => \b2v_inst|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst1|q\(0));

-- Location: FF_X27_Y30_N23
\b2v_inst1|b2v_inst2|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst1|b2v_inst1|q\(0),
	clrn => \b2v_inst|ALT_INV_WideOr0~0_combout\,
	sload => VCC,
	ena => \b2v_inst|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst2|q\(0));

-- Location: IOIBUF_X41_Y43_N15
\Input[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(3),
	o => \Input[3]~input_o\);

-- Location: FF_X29_Y29_N25
\b2v_inst1|b2v_inst|q[3]\ : dffeas
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
	q => \b2v_inst1|b2v_inst|q\(3));

-- Location: FF_X29_Y29_N9
\b2v_inst1|b2v_inst1|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst1|b2v_inst|q\(3),
	clrn => \b2v_inst|ALT_INV_WideOr0~0_combout\,
	sload => VCC,
	ena => \b2v_inst|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst1|q\(3));

-- Location: FF_X27_Y30_N1
\b2v_inst1|b2v_inst2|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst1|b2v_inst1|q\(3),
	clrn => \b2v_inst|ALT_INV_WideOr0~0_combout\,
	sload => VCC,
	ena => \b2v_inst|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst2|q\(3));

-- Location: LCCOMB_X27_Y30_N24
\b2v_inst1|b2v_inst14|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|Mux5~0_combout\ = \b2v_inst1|b2v_inst2|q\(3) $ (\b2v_inst1|b2v_inst2|q\(0) $ (\b2v_inst1|b2v_inst2|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst2|q\(3),
	datac => \b2v_inst1|b2v_inst2|q\(0),
	datad => \b2v_inst1|b2v_inst2|q\(2),
	combout => \b2v_inst1|b2v_inst14|Mux5~0_combout\);

-- Location: LCCOMB_X27_Y30_N22
\b2v_inst1|b2v_inst14|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|Mux4~0_combout\ = \b2v_inst1|b2v_inst2|q\(0) $ (\b2v_inst1|b2v_inst2|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|b2v_inst2|q\(0),
	datad => \b2v_inst1|b2v_inst2|q\(3),
	combout => \b2v_inst1|b2v_inst14|Mux4~0_combout\);

-- Location: LCCOMB_X28_Y30_N24
\b2v_inst1|b2v_inst14|o[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[3]~35_combout\ = (\b2v_inst1|b2v_inst6|q\(0) & (((\b2v_inst1|b2v_inst6|q\(1))))) # (!\b2v_inst1|b2v_inst6|q\(0) & ((\b2v_inst1|b2v_inst6|q\(1) & (\b2v_inst1|b2v_inst14|Mux5~0_combout\)) # (!\b2v_inst1|b2v_inst6|q\(1) & 
-- ((\b2v_inst1|b2v_inst14|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst6|q\(0),
	datab => \b2v_inst1|b2v_inst14|Mux5~0_combout\,
	datac => \b2v_inst1|b2v_inst6|q\(1),
	datad => \b2v_inst1|b2v_inst14|Mux4~0_combout\,
	combout => \b2v_inst1|b2v_inst14|o[3]~35_combout\);

-- Location: LCCOMB_X28_Y30_N30
\b2v_inst1|b2v_inst14|o[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[3]~36_combout\ = (\b2v_inst1|b2v_inst6|q\(0) & (\b2v_inst1|b2v_inst2|q\(0) $ (((\b2v_inst1|b2v_inst2|q\(2) & \b2v_inst1|b2v_inst14|o[3]~35_combout\))))) # (!\b2v_inst1|b2v_inst6|q\(0) & (((\b2v_inst1|b2v_inst14|o[3]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst2|q\(2),
	datab => \b2v_inst1|b2v_inst2|q\(0),
	datac => \b2v_inst1|b2v_inst6|q\(0),
	datad => \b2v_inst1|b2v_inst14|o[3]~35_combout\,
	combout => \b2v_inst1|b2v_inst14|o[3]~36_combout\);

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

-- Location: FF_X29_Y29_N1
\b2v_inst1|b2v_inst|q[1]\ : dffeas
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
	q => \b2v_inst1|b2v_inst|q\(1));

-- Location: FF_X29_Y29_N23
\b2v_inst1|b2v_inst1|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst1|b2v_inst|q\(1),
	clrn => \b2v_inst|ALT_INV_WideOr0~0_combout\,
	sload => VCC,
	ena => \b2v_inst|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst1|q\(1));

-- Location: FF_X27_Y30_N5
\b2v_inst1|b2v_inst2|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst1|b2v_inst1|q\(1),
	clrn => \b2v_inst|ALT_INV_WideOr0~0_combout\,
	sload => VCC,
	ena => \b2v_inst|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst2|q\(1));

-- Location: LCCOMB_X27_Y30_N20
\b2v_inst1|b2v_inst14|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|Mux9~0_combout\ = \b2v_inst1|b2v_inst2|q\(0) $ (\b2v_inst1|b2v_inst2|q\(2) $ (\b2v_inst1|b2v_inst2|q\(1) $ (\b2v_inst1|b2v_inst2|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst2|q\(0),
	datab => \b2v_inst1|b2v_inst2|q\(2),
	datac => \b2v_inst1|b2v_inst2|q\(1),
	datad => \b2v_inst1|b2v_inst2|q\(3),
	combout => \b2v_inst1|b2v_inst14|Mux9~0_combout\);

-- Location: LCCOMB_X27_Y30_N2
\b2v_inst1|b2v_inst14|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|Mux10~0_combout\ = \b2v_inst1|b2v_inst2|q\(0) $ (\b2v_inst1|b2v_inst2|q\(2) $ (\b2v_inst1|b2v_inst2|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst2|q\(0),
	datac => \b2v_inst1|b2v_inst2|q\(2),
	datad => \b2v_inst1|b2v_inst2|q\(1),
	combout => \b2v_inst1|b2v_inst14|Mux10~0_combout\);

-- Location: LCCOMB_X26_Y30_N0
\b2v_inst1|b2v_inst14|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|Mux8~0_combout\ = \b2v_inst1|b2v_inst2|q\(0) $ (\b2v_inst1|b2v_inst2|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|b2v_inst2|q\(0),
	datad => \b2v_inst1|b2v_inst2|q\(1),
	combout => \b2v_inst1|b2v_inst14|Mux8~0_combout\);

-- Location: LCCOMB_X26_Y30_N20
\b2v_inst1|b2v_inst14|o[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[3]~33_combout\ = (\b2v_inst1|b2v_inst6|q\(1) & (\b2v_inst1|b2v_inst6|q\(0))) # (!\b2v_inst1|b2v_inst6|q\(1) & (\b2v_inst1|b2v_inst14|Mux8~0_combout\ $ (((!\b2v_inst1|b2v_inst6|q\(0) & \b2v_inst1|b2v_inst2|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst6|q\(0),
	datab => \b2v_inst1|b2v_inst6|q\(1),
	datac => \b2v_inst1|b2v_inst2|q\(3),
	datad => \b2v_inst1|b2v_inst14|Mux8~0_combout\,
	combout => \b2v_inst1|b2v_inst14|o[3]~33_combout\);

-- Location: LCCOMB_X26_Y30_N22
\b2v_inst1|b2v_inst14|o[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[3]~34_combout\ = (\b2v_inst1|b2v_inst6|q\(1) & ((\b2v_inst1|b2v_inst14|o[3]~33_combout\ & ((\b2v_inst1|b2v_inst14|Mux10~0_combout\))) # (!\b2v_inst1|b2v_inst14|o[3]~33_combout\ & (\b2v_inst1|b2v_inst14|Mux9~0_combout\)))) # 
-- (!\b2v_inst1|b2v_inst6|q\(1) & (((\b2v_inst1|b2v_inst14|o[3]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst14|Mux9~0_combout\,
	datab => \b2v_inst1|b2v_inst6|q\(1),
	datac => \b2v_inst1|b2v_inst14|Mux10~0_combout\,
	datad => \b2v_inst1|b2v_inst14|o[3]~33_combout\,
	combout => \b2v_inst1|b2v_inst14|o[3]~34_combout\);

-- Location: LCCOMB_X28_Y30_N4
\b2v_inst1|b2v_inst14|o[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[3]~37_combout\ = (\b2v_inst1|b2v_inst6|q\(3) & ((\b2v_inst1|b2v_inst6|q\(2) & ((\b2v_inst1|b2v_inst14|o[3]~34_combout\))) # (!\b2v_inst1|b2v_inst6|q\(2) & (\b2v_inst1|b2v_inst14|o[3]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst6|q\(2),
	datab => \b2v_inst1|b2v_inst6|q\(3),
	datac => \b2v_inst1|b2v_inst14|o[3]~36_combout\,
	datad => \b2v_inst1|b2v_inst14|o[3]~34_combout\,
	combout => \b2v_inst1|b2v_inst14|o[3]~37_combout\);

-- Location: LCCOMB_X28_Y30_N12
\b2v_inst1|b2v_inst14|o[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[3]~10_combout\ = (\b2v_inst1|b2v_inst6|q\(1) & !\b2v_inst1|b2v_inst6|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|b2v_inst6|q\(1),
	datad => \b2v_inst1|b2v_inst6|q\(2),
	combout => \b2v_inst1|b2v_inst14|o[3]~10_combout\);

-- Location: LCCOMB_X28_Y30_N28
\b2v_inst1|b2v_inst14|o[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[3]~8_combout\ = (\b2v_inst1|b2v_inst6|q\(2)) # ((\b2v_inst1|b2v_inst6|q\(1) & \b2v_inst1|b2v_inst6|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst6|q\(1),
	datac => \b2v_inst1|b2v_inst6|q\(0),
	datad => \b2v_inst1|b2v_inst6|q\(2),
	combout => \b2v_inst1|b2v_inst14|o[3]~8_combout\);

-- Location: LCCOMB_X26_Y30_N16
\b2v_inst1|b2v_inst14|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|Mux2~0_combout\ = \b2v_inst1|b2v_inst2|q\(1) $ (\b2v_inst1|b2v_inst2|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst2|q\(1),
	datad => \b2v_inst1|b2v_inst2|q\(2),
	combout => \b2v_inst1|b2v_inst14|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y30_N2
\b2v_inst1|b2v_inst14|o[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[3]~38_combout\ = (\b2v_inst1|b2v_inst6|q\(1) & (((\b2v_inst1|b2v_inst6|q\(0))))) # (!\b2v_inst1|b2v_inst6|q\(1) & (\b2v_inst1|b2v_inst2|q\(1) $ (((\b2v_inst1|b2v_inst2|q\(3) & \b2v_inst1|b2v_inst6|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst2|q\(3),
	datab => \b2v_inst1|b2v_inst2|q\(1),
	datac => \b2v_inst1|b2v_inst6|q\(1),
	datad => \b2v_inst1|b2v_inst6|q\(0),
	combout => \b2v_inst1|b2v_inst14|o[3]~38_combout\);

-- Location: LCCOMB_X28_Y30_N8
\b2v_inst1|b2v_inst14|o[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[3]~39_combout\ = (\b2v_inst1|b2v_inst6|q\(1) & (\b2v_inst1|b2v_inst14|Mux2~0_combout\ $ (((\b2v_inst1|b2v_inst2|q\(3) & \b2v_inst1|b2v_inst14|o[3]~38_combout\))))) # (!\b2v_inst1|b2v_inst6|q\(1) & 
-- (((\b2v_inst1|b2v_inst14|o[3]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst2|q\(3),
	datab => \b2v_inst1|b2v_inst6|q\(1),
	datac => \b2v_inst1|b2v_inst14|Mux2~0_combout\,
	datad => \b2v_inst1|b2v_inst14|o[3]~38_combout\,
	combout => \b2v_inst1|b2v_inst14|o[3]~39_combout\);

-- Location: LCCOMB_X26_Y27_N22
\b2v_inst1|b2v_inst14|o[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[3]~7_combout\ = (\b2v_inst1|b2v_inst6|q\(2)) # ((\b2v_inst1|b2v_inst6|q\(0) & !\b2v_inst1|b2v_inst6|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst6|q\(2),
	datac => \b2v_inst1|b2v_inst6|q\(0),
	datad => \b2v_inst1|b2v_inst6|q\(1),
	combout => \b2v_inst1|b2v_inst14|o[3]~7_combout\);

-- Location: LCCOMB_X28_Y30_N10
\b2v_inst1|b2v_inst14|o[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[3]~40_combout\ = (\b2v_inst1|b2v_inst14|o[3]~8_combout\ & (((\b2v_inst1|b2v_inst14|o[3]~39_combout\) # (!\b2v_inst1|b2v_inst14|o[3]~7_combout\)))) # (!\b2v_inst1|b2v_inst14|o[3]~8_combout\ & (\b2v_inst1|b2v_inst2|q\(3) & 
-- ((\b2v_inst1|b2v_inst14|o[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst2|q\(3),
	datab => \b2v_inst1|b2v_inst14|o[3]~8_combout\,
	datac => \b2v_inst1|b2v_inst14|o[3]~39_combout\,
	datad => \b2v_inst1|b2v_inst14|o[3]~7_combout\,
	combout => \b2v_inst1|b2v_inst14|o[3]~40_combout\);

-- Location: LCCOMB_X28_Y30_N16
\b2v_inst1|b2v_inst14|o[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[3]~41_combout\ = (\b2v_inst1|b2v_inst14|o[3]~10_combout\ & (\b2v_inst1|b2v_inst2|q\(2) $ (((\b2v_inst1|b2v_inst2|q\(3) & \b2v_inst1|b2v_inst14|o[3]~40_combout\))))) # (!\b2v_inst1|b2v_inst14|o[3]~10_combout\ & 
-- (((\b2v_inst1|b2v_inst14|o[3]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst2|q\(2),
	datab => \b2v_inst1|b2v_inst14|o[3]~10_combout\,
	datac => \b2v_inst1|b2v_inst2|q\(3),
	datad => \b2v_inst1|b2v_inst14|o[3]~40_combout\,
	combout => \b2v_inst1|b2v_inst14|o[3]~41_combout\);

-- Location: LCCOMB_X28_Y30_N14
\b2v_inst1|b2v_inst14|o[3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[3]~42_combout\ = (\b2v_inst1|b2v_inst14|o[3]~37_combout\) # ((!\b2v_inst1|b2v_inst6|q\(3) & \b2v_inst1|b2v_inst14|o[3]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst6|q\(3),
	datac => \b2v_inst1|b2v_inst14|o[3]~37_combout\,
	datad => \b2v_inst1|b2v_inst14|o[3]~41_combout\,
	combout => \b2v_inst1|b2v_inst14|o[3]~42_combout\);

-- Location: LCCOMB_X29_Y29_N28
\b2v_inst1|b2v_inst13|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|Mux10~0_combout\ = \b2v_inst1|b2v_inst1|q\(1) $ (\b2v_inst1|b2v_inst1|q\(2) $ (\b2v_inst1|b2v_inst1|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst1|q\(1),
	datac => \b2v_inst1|b2v_inst1|q\(2),
	datad => \b2v_inst1|b2v_inst1|q\(0),
	combout => \b2v_inst1|b2v_inst13|Mux10~0_combout\);

-- Location: LCCOMB_X30_Y29_N2
\b2v_inst1|b2v_inst13|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|Mux8~0_combout\ = \b2v_inst1|b2v_inst1|q\(1) $ (\b2v_inst1|b2v_inst1|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst1|q\(1),
	datac => \b2v_inst1|b2v_inst1|q\(0),
	combout => \b2v_inst1|b2v_inst13|Mux8~0_combout\);

-- Location: LCCOMB_X30_Y29_N4
\b2v_inst1|b2v_inst13|o[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[3]~33_combout\ = (\b2v_inst1|b2v_inst5|q\(1) & (((\b2v_inst1|b2v_inst5|q\(0))))) # (!\b2v_inst1|b2v_inst5|q\(1) & (\b2v_inst1|b2v_inst13|Mux8~0_combout\ $ (((\b2v_inst1|b2v_inst1|q\(3) & !\b2v_inst1|b2v_inst5|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst1|q\(3),
	datab => \b2v_inst1|b2v_inst5|q\(1),
	datac => \b2v_inst1|b2v_inst5|q\(0),
	datad => \b2v_inst1|b2v_inst13|Mux8~0_combout\,
	combout => \b2v_inst1|b2v_inst13|o[3]~33_combout\);

-- Location: LCCOMB_X29_Y29_N8
\b2v_inst1|b2v_inst13|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|Mux9~0_combout\ = \b2v_inst1|b2v_inst1|q\(1) $ (\b2v_inst1|b2v_inst1|q\(0) $ (\b2v_inst1|b2v_inst1|q\(3) $ (\b2v_inst1|b2v_inst1|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst1|q\(1),
	datab => \b2v_inst1|b2v_inst1|q\(0),
	datac => \b2v_inst1|b2v_inst1|q\(3),
	datad => \b2v_inst1|b2v_inst1|q\(2),
	combout => \b2v_inst1|b2v_inst13|Mux9~0_combout\);

-- Location: LCCOMB_X30_Y29_N22
\b2v_inst1|b2v_inst13|o[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[3]~34_combout\ = (\b2v_inst1|b2v_inst5|q\(1) & ((\b2v_inst1|b2v_inst13|o[3]~33_combout\ & (\b2v_inst1|b2v_inst13|Mux10~0_combout\)) # (!\b2v_inst1|b2v_inst13|o[3]~33_combout\ & ((\b2v_inst1|b2v_inst13|Mux9~0_combout\))))) # 
-- (!\b2v_inst1|b2v_inst5|q\(1) & (((\b2v_inst1|b2v_inst13|o[3]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst13|Mux10~0_combout\,
	datab => \b2v_inst1|b2v_inst5|q\(1),
	datac => \b2v_inst1|b2v_inst13|o[3]~33_combout\,
	datad => \b2v_inst1|b2v_inst13|Mux9~0_combout\,
	combout => \b2v_inst1|b2v_inst13|o[3]~34_combout\);

-- Location: LCCOMB_X29_Y29_N30
\b2v_inst1|b2v_inst13|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|Mux5~0_combout\ = \b2v_inst1|b2v_inst1|q\(3) $ (\b2v_inst1|b2v_inst1|q\(0) $ (\b2v_inst1|b2v_inst1|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst1|q\(3),
	datac => \b2v_inst1|b2v_inst1|q\(0),
	datad => \b2v_inst1|b2v_inst1|q\(2),
	combout => \b2v_inst1|b2v_inst13|Mux5~0_combout\);

-- Location: LCCOMB_X29_Y29_N10
\b2v_inst1|b2v_inst13|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|Mux4~0_combout\ = \b2v_inst1|b2v_inst1|q\(3) $ (\b2v_inst1|b2v_inst1|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|b2v_inst1|q\(3),
	datad => \b2v_inst1|b2v_inst1|q\(0),
	combout => \b2v_inst1|b2v_inst13|Mux4~0_combout\);

-- Location: LCCOMB_X30_Y29_N24
\b2v_inst1|b2v_inst13|o[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[3]~35_combout\ = (\b2v_inst1|b2v_inst5|q\(0) & (((\b2v_inst1|b2v_inst5|q\(1))))) # (!\b2v_inst1|b2v_inst5|q\(0) & ((\b2v_inst1|b2v_inst5|q\(1) & (\b2v_inst1|b2v_inst13|Mux5~0_combout\)) # (!\b2v_inst1|b2v_inst5|q\(1) & 
-- ((\b2v_inst1|b2v_inst13|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst5|q\(0),
	datab => \b2v_inst1|b2v_inst13|Mux5~0_combout\,
	datac => \b2v_inst1|b2v_inst5|q\(1),
	datad => \b2v_inst1|b2v_inst13|Mux4~0_combout\,
	combout => \b2v_inst1|b2v_inst13|o[3]~35_combout\);

-- Location: LCCOMB_X30_Y29_N6
\b2v_inst1|b2v_inst13|o[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[3]~36_combout\ = (\b2v_inst1|b2v_inst5|q\(0) & (\b2v_inst1|b2v_inst1|q\(0) $ (((\b2v_inst1|b2v_inst1|q\(2) & \b2v_inst1|b2v_inst13|o[3]~35_combout\))))) # (!\b2v_inst1|b2v_inst5|q\(0) & (((\b2v_inst1|b2v_inst13|o[3]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst1|q\(2),
	datab => \b2v_inst1|b2v_inst5|q\(0),
	datac => \b2v_inst1|b2v_inst1|q\(0),
	datad => \b2v_inst1|b2v_inst13|o[3]~35_combout\,
	combout => \b2v_inst1|b2v_inst13|o[3]~36_combout\);

-- Location: LCCOMB_X30_Y29_N0
\b2v_inst1|b2v_inst13|o[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[3]~37_combout\ = (\b2v_inst1|b2v_inst5|q\(3) & ((\b2v_inst1|b2v_inst5|q\(2) & (\b2v_inst1|b2v_inst13|o[3]~34_combout\)) # (!\b2v_inst1|b2v_inst5|q\(2) & ((\b2v_inst1|b2v_inst13|o[3]~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst5|q\(2),
	datab => \b2v_inst1|b2v_inst5|q\(3),
	datac => \b2v_inst1|b2v_inst13|o[3]~34_combout\,
	datad => \b2v_inst1|b2v_inst13|o[3]~36_combout\,
	combout => \b2v_inst1|b2v_inst13|o[3]~37_combout\);

-- Location: LCCOMB_X29_Y30_N26
\b2v_inst1|b2v_inst13|o[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[3]~38_combout\ = (\b2v_inst1|b2v_inst5|q\(1) & (((\b2v_inst1|b2v_inst5|q\(0))))) # (!\b2v_inst1|b2v_inst5|q\(1) & (\b2v_inst1|b2v_inst1|q\(1) $ (((\b2v_inst1|b2v_inst1|q\(3) & \b2v_inst1|b2v_inst5|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst1|q\(3),
	datab => \b2v_inst1|b2v_inst5|q\(1),
	datac => \b2v_inst1|b2v_inst5|q\(0),
	datad => \b2v_inst1|b2v_inst1|q\(1),
	combout => \b2v_inst1|b2v_inst13|o[3]~38_combout\);

-- Location: LCCOMB_X29_Y29_N0
\b2v_inst1|b2v_inst13|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|Mux2~0_combout\ = \b2v_inst1|b2v_inst1|q\(1) $ (\b2v_inst1|b2v_inst1|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst1|q\(1),
	datad => \b2v_inst1|b2v_inst1|q\(2),
	combout => \b2v_inst1|b2v_inst13|Mux2~0_combout\);

-- Location: LCCOMB_X29_Y30_N24
\b2v_inst1|b2v_inst13|o[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[3]~39_combout\ = (\b2v_inst1|b2v_inst5|q\(1) & (\b2v_inst1|b2v_inst13|Mux2~0_combout\ $ (((\b2v_inst1|b2v_inst1|q\(3) & \b2v_inst1|b2v_inst13|o[3]~38_combout\))))) # (!\b2v_inst1|b2v_inst5|q\(1) & 
-- (((\b2v_inst1|b2v_inst13|o[3]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst1|q\(3),
	datab => \b2v_inst1|b2v_inst5|q\(1),
	datac => \b2v_inst1|b2v_inst13|o[3]~38_combout\,
	datad => \b2v_inst1|b2v_inst13|Mux2~0_combout\,
	combout => \b2v_inst1|b2v_inst13|o[3]~39_combout\);

-- Location: LCCOMB_X28_Y26_N20
\b2v_inst1|b2v_inst13|o[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[0]~7_combout\ = (\b2v_inst1|b2v_inst5|q\(2)) # ((\b2v_inst1|b2v_inst5|q\(0) & !\b2v_inst1|b2v_inst5|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst5|q\(0),
	datac => \b2v_inst1|b2v_inst5|q\(2),
	datad => \b2v_inst1|b2v_inst5|q\(1),
	combout => \b2v_inst1|b2v_inst13|o[0]~7_combout\);

-- Location: LCCOMB_X28_Y26_N26
\b2v_inst1|b2v_inst13|o[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[0]~8_combout\ = (\b2v_inst1|b2v_inst5|q\(2)) # ((\b2v_inst1|b2v_inst5|q\(0) & \b2v_inst1|b2v_inst5|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst5|q\(0),
	datac => \b2v_inst1|b2v_inst5|q\(2),
	datad => \b2v_inst1|b2v_inst5|q\(1),
	combout => \b2v_inst1|b2v_inst13|o[0]~8_combout\);

-- Location: LCCOMB_X29_Y30_N22
\b2v_inst1|b2v_inst13|o[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[3]~40_combout\ = (\b2v_inst1|b2v_inst13|o[0]~7_combout\ & ((\b2v_inst1|b2v_inst13|o[0]~8_combout\ & ((\b2v_inst1|b2v_inst13|o[3]~39_combout\))) # (!\b2v_inst1|b2v_inst13|o[0]~8_combout\ & (\b2v_inst1|b2v_inst1|q\(3))))) # 
-- (!\b2v_inst1|b2v_inst13|o[0]~7_combout\ & (((\b2v_inst1|b2v_inst13|o[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst1|q\(3),
	datab => \b2v_inst1|b2v_inst13|o[3]~39_combout\,
	datac => \b2v_inst1|b2v_inst13|o[0]~7_combout\,
	datad => \b2v_inst1|b2v_inst13|o[0]~8_combout\,
	combout => \b2v_inst1|b2v_inst13|o[3]~40_combout\);

-- Location: LCCOMB_X28_Y29_N22
\b2v_inst1|b2v_inst13|o[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[0]~10_combout\ = (\b2v_inst1|b2v_inst5|q\(1) & !\b2v_inst1|b2v_inst5|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst5|q\(1),
	datad => \b2v_inst1|b2v_inst5|q\(2),
	combout => \b2v_inst1|b2v_inst13|o[0]~10_combout\);

-- Location: LCCOMB_X29_Y30_N12
\b2v_inst1|b2v_inst13|o[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[3]~41_combout\ = (\b2v_inst1|b2v_inst13|o[0]~10_combout\ & (\b2v_inst1|b2v_inst1|q\(2) $ (((\b2v_inst1|b2v_inst1|q\(3) & \b2v_inst1|b2v_inst13|o[3]~40_combout\))))) # (!\b2v_inst1|b2v_inst13|o[0]~10_combout\ & 
-- (((\b2v_inst1|b2v_inst13|o[3]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst1|q\(3),
	datab => \b2v_inst1|b2v_inst1|q\(2),
	datac => \b2v_inst1|b2v_inst13|o[3]~40_combout\,
	datad => \b2v_inst1|b2v_inst13|o[0]~10_combout\,
	combout => \b2v_inst1|b2v_inst13|o[3]~41_combout\);

-- Location: LCCOMB_X29_Y30_N14
\b2v_inst1|b2v_inst13|o[3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[3]~42_combout\ = (\b2v_inst1|b2v_inst13|o[3]~37_combout\) # ((!\b2v_inst1|b2v_inst5|q\(3) & \b2v_inst1|b2v_inst13|o[3]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst5|q\(3),
	datac => \b2v_inst1|b2v_inst13|o[3]~37_combout\,
	datad => \b2v_inst1|b2v_inst13|o[3]~41_combout\,
	combout => \b2v_inst1|b2v_inst13|o[3]~42_combout\);

-- Location: FF_X29_Y31_N11
\b2v_inst1|b2v_inst3|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst1|b2v_inst2|q\(2),
	clrn => \b2v_inst|ALT_INV_WideOr0~0_combout\,
	sload => VCC,
	ena => \b2v_inst|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst3|q\(2));

-- Location: FF_X29_Y31_N25
\b2v_inst1|b2v_inst3|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst1|b2v_inst2|q\(3),
	clrn => \b2v_inst|ALT_INV_WideOr0~0_combout\,
	sload => VCC,
	ena => \b2v_inst|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst3|q\(3));

-- Location: LCCOMB_X28_Y31_N22
\b2v_inst1|b2v_inst15|o[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[3]~10_combout\ = (\b2v_inst1|b2v_inst7|q\(1) & !\b2v_inst1|b2v_inst7|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|b2v_inst7|q\(1),
	datad => \b2v_inst1|b2v_inst7|q\(2),
	combout => \b2v_inst1|b2v_inst15|o[3]~10_combout\);

-- Location: LCCOMB_X28_Y31_N12
\b2v_inst1|b2v_inst15|o[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[3]~8_combout\ = (\b2v_inst1|b2v_inst7|q\(2)) # ((\b2v_inst1|b2v_inst7|q\(1) & \b2v_inst1|b2v_inst7|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst7|q\(1),
	datac => \b2v_inst1|b2v_inst7|q\(0),
	datad => \b2v_inst1|b2v_inst7|q\(2),
	combout => \b2v_inst1|b2v_inst15|o[3]~8_combout\);

-- Location: LCCOMB_X28_Y31_N14
\b2v_inst1|b2v_inst15|o[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[3]~7_combout\ = (\b2v_inst1|b2v_inst7|q\(2)) # ((!\b2v_inst1|b2v_inst7|q\(1) & \b2v_inst1|b2v_inst7|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst7|q\(1),
	datac => \b2v_inst1|b2v_inst7|q\(0),
	datad => \b2v_inst1|b2v_inst7|q\(2),
	combout => \b2v_inst1|b2v_inst15|o[3]~7_combout\);

-- Location: FF_X29_Y31_N29
\b2v_inst1|b2v_inst3|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst1|b2v_inst2|q\(1),
	clrn => \b2v_inst|ALT_INV_WideOr0~0_combout\,
	sload => VCC,
	ena => \b2v_inst|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst3|q\(1));

-- Location: LCCOMB_X29_Y31_N24
\b2v_inst1|b2v_inst15|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|Mux2~0_combout\ = \b2v_inst1|b2v_inst3|q\(1) $ (\b2v_inst1|b2v_inst3|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst3|q\(1),
	datad => \b2v_inst1|b2v_inst3|q\(2),
	combout => \b2v_inst1|b2v_inst15|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y31_N10
\b2v_inst1|b2v_inst15|o[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[3]~38_combout\ = (\b2v_inst1|b2v_inst7|q\(1) & (((\b2v_inst1|b2v_inst7|q\(0))))) # (!\b2v_inst1|b2v_inst7|q\(1) & (\b2v_inst1|b2v_inst3|q\(1) $ (((\b2v_inst1|b2v_inst7|q\(0) & \b2v_inst1|b2v_inst3|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst3|q\(1),
	datab => \b2v_inst1|b2v_inst7|q\(0),
	datac => \b2v_inst1|b2v_inst7|q\(1),
	datad => \b2v_inst1|b2v_inst3|q\(3),
	combout => \b2v_inst1|b2v_inst15|o[3]~38_combout\);

-- Location: LCCOMB_X28_Y31_N24
\b2v_inst1|b2v_inst15|o[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[3]~39_combout\ = (\b2v_inst1|b2v_inst7|q\(1) & (\b2v_inst1|b2v_inst15|Mux2~0_combout\ $ (((\b2v_inst1|b2v_inst3|q\(3) & \b2v_inst1|b2v_inst15|o[3]~38_combout\))))) # (!\b2v_inst1|b2v_inst7|q\(1) & 
-- (((\b2v_inst1|b2v_inst15|o[3]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q\(1),
	datab => \b2v_inst1|b2v_inst3|q\(3),
	datac => \b2v_inst1|b2v_inst15|Mux2~0_combout\,
	datad => \b2v_inst1|b2v_inst15|o[3]~38_combout\,
	combout => \b2v_inst1|b2v_inst15|o[3]~39_combout\);

-- Location: LCCOMB_X28_Y31_N6
\b2v_inst1|b2v_inst15|o[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[3]~40_combout\ = (\b2v_inst1|b2v_inst15|o[3]~8_combout\ & (((\b2v_inst1|b2v_inst15|o[3]~39_combout\) # (!\b2v_inst1|b2v_inst15|o[3]~7_combout\)))) # (!\b2v_inst1|b2v_inst15|o[3]~8_combout\ & (\b2v_inst1|b2v_inst3|q\(3) & 
-- (\b2v_inst1|b2v_inst15|o[3]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst15|o[3]~8_combout\,
	datab => \b2v_inst1|b2v_inst3|q\(3),
	datac => \b2v_inst1|b2v_inst15|o[3]~7_combout\,
	datad => \b2v_inst1|b2v_inst15|o[3]~39_combout\,
	combout => \b2v_inst1|b2v_inst15|o[3]~40_combout\);

-- Location: LCCOMB_X28_Y31_N8
\b2v_inst1|b2v_inst15|o[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[3]~41_combout\ = (\b2v_inst1|b2v_inst15|o[3]~10_combout\ & (\b2v_inst1|b2v_inst3|q\(2) $ (((\b2v_inst1|b2v_inst3|q\(3) & \b2v_inst1|b2v_inst15|o[3]~40_combout\))))) # (!\b2v_inst1|b2v_inst15|o[3]~10_combout\ & 
-- (((\b2v_inst1|b2v_inst15|o[3]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst3|q\(2),
	datab => \b2v_inst1|b2v_inst3|q\(3),
	datac => \b2v_inst1|b2v_inst15|o[3]~10_combout\,
	datad => \b2v_inst1|b2v_inst15|o[3]~40_combout\,
	combout => \b2v_inst1|b2v_inst15|o[3]~41_combout\);

-- Location: FF_X29_Y31_N17
\b2v_inst1|b2v_inst3|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst1|b2v_inst2|q\(0),
	clrn => \b2v_inst|ALT_INV_WideOr0~0_combout\,
	sload => VCC,
	ena => \b2v_inst|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst3|q\(0));

-- Location: LCCOMB_X29_Y31_N10
\b2v_inst1|b2v_inst15|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|Mux5~0_combout\ = \b2v_inst1|b2v_inst3|q\(0) $ (\b2v_inst1|b2v_inst3|q\(2) $ (\b2v_inst1|b2v_inst3|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst3|q\(0),
	datac => \b2v_inst1|b2v_inst3|q\(2),
	datad => \b2v_inst1|b2v_inst3|q\(3),
	combout => \b2v_inst1|b2v_inst15|Mux5~0_combout\);

-- Location: LCCOMB_X29_Y31_N16
\b2v_inst1|b2v_inst15|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|Mux4~0_combout\ = \b2v_inst1|b2v_inst3|q\(0) $ (\b2v_inst1|b2v_inst3|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|b2v_inst3|q\(0),
	datad => \b2v_inst1|b2v_inst3|q\(3),
	combout => \b2v_inst1|b2v_inst15|Mux4~0_combout\);

-- Location: LCCOMB_X28_Y31_N20
\b2v_inst1|b2v_inst15|o[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[3]~35_combout\ = (\b2v_inst1|b2v_inst7|q\(0) & (\b2v_inst1|b2v_inst7|q\(1))) # (!\b2v_inst1|b2v_inst7|q\(0) & ((\b2v_inst1|b2v_inst7|q\(1) & (\b2v_inst1|b2v_inst15|Mux5~0_combout\)) # (!\b2v_inst1|b2v_inst7|q\(1) & 
-- ((\b2v_inst1|b2v_inst15|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q\(0),
	datab => \b2v_inst1|b2v_inst7|q\(1),
	datac => \b2v_inst1|b2v_inst15|Mux5~0_combout\,
	datad => \b2v_inst1|b2v_inst15|Mux4~0_combout\,
	combout => \b2v_inst1|b2v_inst15|o[3]~35_combout\);

-- Location: LCCOMB_X28_Y31_N30
\b2v_inst1|b2v_inst15|o[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[3]~36_combout\ = (\b2v_inst1|b2v_inst7|q\(0) & (\b2v_inst1|b2v_inst3|q\(0) $ (((\b2v_inst1|b2v_inst3|q\(2) & \b2v_inst1|b2v_inst15|o[3]~35_combout\))))) # (!\b2v_inst1|b2v_inst7|q\(0) & (((\b2v_inst1|b2v_inst15|o[3]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q\(0),
	datab => \b2v_inst1|b2v_inst3|q\(0),
	datac => \b2v_inst1|b2v_inst3|q\(2),
	datad => \b2v_inst1|b2v_inst15|o[3]~35_combout\,
	combout => \b2v_inst1|b2v_inst15|o[3]~36_combout\);

-- Location: LCCOMB_X29_Y31_N22
\b2v_inst1|b2v_inst15|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|Mux9~0_combout\ = \b2v_inst1|b2v_inst3|q\(2) $ (\b2v_inst1|b2v_inst3|q\(1) $ (\b2v_inst1|b2v_inst3|q\(0) $ (\b2v_inst1|b2v_inst3|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst3|q\(2),
	datab => \b2v_inst1|b2v_inst3|q\(1),
	datac => \b2v_inst1|b2v_inst3|q\(0),
	datad => \b2v_inst1|b2v_inst3|q\(3),
	combout => \b2v_inst1|b2v_inst15|Mux9~0_combout\);

-- Location: LCCOMB_X28_Y31_N4
\b2v_inst1|b2v_inst15|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|Mux10~0_combout\ = \b2v_inst1|b2v_inst3|q\(0) $ (\b2v_inst1|b2v_inst3|q\(2) $ (\b2v_inst1|b2v_inst3|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst3|q\(0),
	datac => \b2v_inst1|b2v_inst3|q\(2),
	datad => \b2v_inst1|b2v_inst3|q\(1),
	combout => \b2v_inst1|b2v_inst15|Mux10~0_combout\);

-- Location: LCCOMB_X30_Y31_N30
\b2v_inst1|b2v_inst15|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|Mux8~0_combout\ = \b2v_inst1|b2v_inst3|q\(0) $ (\b2v_inst1|b2v_inst3|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|b2v_inst3|q\(0),
	datad => \b2v_inst1|b2v_inst3|q\(1),
	combout => \b2v_inst1|b2v_inst15|Mux8~0_combout\);

-- Location: LCCOMB_X30_Y31_N16
\b2v_inst1|b2v_inst15|o[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[3]~33_combout\ = (\b2v_inst1|b2v_inst7|q\(1) & (((\b2v_inst1|b2v_inst7|q\(0))))) # (!\b2v_inst1|b2v_inst7|q\(1) & (\b2v_inst1|b2v_inst15|Mux8~0_combout\ $ (((\b2v_inst1|b2v_inst3|q\(3) & !\b2v_inst1|b2v_inst7|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst3|q\(3),
	datab => \b2v_inst1|b2v_inst7|q\(1),
	datac => \b2v_inst1|b2v_inst15|Mux8~0_combout\,
	datad => \b2v_inst1|b2v_inst7|q\(0),
	combout => \b2v_inst1|b2v_inst15|o[3]~33_combout\);

-- Location: LCCOMB_X28_Y31_N2
\b2v_inst1|b2v_inst15|o[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[3]~34_combout\ = (\b2v_inst1|b2v_inst7|q\(1) & ((\b2v_inst1|b2v_inst15|o[3]~33_combout\ & ((\b2v_inst1|b2v_inst15|Mux10~0_combout\))) # (!\b2v_inst1|b2v_inst15|o[3]~33_combout\ & (\b2v_inst1|b2v_inst15|Mux9~0_combout\)))) # 
-- (!\b2v_inst1|b2v_inst7|q\(1) & (((\b2v_inst1|b2v_inst15|o[3]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q\(1),
	datab => \b2v_inst1|b2v_inst15|Mux9~0_combout\,
	datac => \b2v_inst1|b2v_inst15|Mux10~0_combout\,
	datad => \b2v_inst1|b2v_inst15|o[3]~33_combout\,
	combout => \b2v_inst1|b2v_inst15|o[3]~34_combout\);

-- Location: LCCOMB_X28_Y31_N16
\b2v_inst1|b2v_inst15|o[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[3]~37_combout\ = (\b2v_inst1|b2v_inst7|q\(3) & ((\b2v_inst1|b2v_inst7|q\(2) & ((\b2v_inst1|b2v_inst15|o[3]~34_combout\))) # (!\b2v_inst1|b2v_inst7|q\(2) & (\b2v_inst1|b2v_inst15|o[3]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q\(3),
	datab => \b2v_inst1|b2v_inst7|q\(2),
	datac => \b2v_inst1|b2v_inst15|o[3]~36_combout\,
	datad => \b2v_inst1|b2v_inst15|o[3]~34_combout\,
	combout => \b2v_inst1|b2v_inst15|o[3]~37_combout\);

-- Location: LCCOMB_X28_Y31_N26
\b2v_inst1|b2v_inst15|o[3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[3]~42_combout\ = (\b2v_inst1|b2v_inst15|o[3]~37_combout\) # ((!\b2v_inst1|b2v_inst7|q\(3) & \b2v_inst1|b2v_inst15|o[3]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q\(3),
	datac => \b2v_inst1|b2v_inst15|o[3]~41_combout\,
	datad => \b2v_inst1|b2v_inst15|o[3]~37_combout\,
	combout => \b2v_inst1|b2v_inst15|o[3]~42_combout\);

-- Location: LCCOMB_X28_Y32_N14
\b2v_inst1|b2v_inst20|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|Mux0~0_combout\ = \b2v_inst1|b2v_inst12|q\(3) $ (\b2v_inst1|b2v_inst12|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst12|q\(3),
	datad => \b2v_inst1|b2v_inst12|q\(2),
	combout => \b2v_inst1|b2v_inst20|Mux0~0_combout\);

-- Location: LCCOMB_X26_Y29_N16
\b2v_inst1|b2v_inst20|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|Mux3~0_combout\ = \b2v_inst1|b2v_inst12|q\(1) $ (\b2v_inst1|b2v_inst12|q\(2) $ (\b2v_inst1|b2v_inst12|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst12|q\(1),
	datab => \b2v_inst1|b2v_inst12|q\(2),
	datac => \b2v_inst1|b2v_inst12|q\(3),
	combout => \b2v_inst1|b2v_inst20|Mux3~0_combout\);

-- Location: LCCOMB_X26_Y32_N30
\b2v_inst1|b2v_inst20|o[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|o[2]~30_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (((\b2v_inst1|b2v_inst20|Mux3~0_combout\) # (\b2v_inst1|b2v_inst21|o[0]~22_combout\)))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (\b2v_inst1|b2v_inst20|Mux0~0_combout\ 
-- & ((!\b2v_inst1|b2v_inst21|o[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst20|Mux0~0_combout\,
	datab => \b2v_inst1|b2v_inst20|Mux3~0_combout\,
	datac => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datad => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	combout => \b2v_inst1|b2v_inst20|o[2]~30_combout\);

-- Location: LCCOMB_X26_Y32_N8
\b2v_inst1|b2v_inst20|o[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|o[2]~31_combout\ = (\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (\b2v_inst1|b2v_inst12|q\(3) $ (((\b2v_inst1|b2v_inst12|q\(1) & \b2v_inst1|b2v_inst20|o[2]~30_combout\))))) # (!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & 
-- (((\b2v_inst1|b2v_inst20|o[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst12|q\(1),
	datab => \b2v_inst1|b2v_inst12|q\(3),
	datac => \b2v_inst1|b2v_inst20|o[2]~30_combout\,
	datad => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	combout => \b2v_inst1|b2v_inst20|o[2]~31_combout\);

-- Location: LCCOMB_X26_Y32_N22
\b2v_inst1|b2v_inst20|o[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|o[2]~28_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (((\b2v_inst1|b2v_inst21|o[0]~22_combout\)))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (\b2v_inst1|b2v_inst12|q\(0) $ (((\b2v_inst1|b2v_inst21|o[0]~22_combout\) # 
-- (!\b2v_inst1|b2v_inst12|q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst12|q\(2),
	datab => \b2v_inst1|b2v_inst12|q\(0),
	datac => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datad => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	combout => \b2v_inst1|b2v_inst20|o[2]~28_combout\);

-- Location: LCCOMB_X26_Y29_N4
\b2v_inst1|b2v_inst20|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|Mux7~0_combout\ = \b2v_inst1|b2v_inst12|q\(0) $ (!\b2v_inst1|b2v_inst12|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst12|q\(0),
	datac => \b2v_inst1|b2v_inst12|q\(1),
	combout => \b2v_inst1|b2v_inst20|Mux7~0_combout\);

-- Location: LCCOMB_X26_Y32_N24
\b2v_inst1|b2v_inst20|o[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|o[2]~29_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (\b2v_inst1|b2v_inst20|Mux7~0_combout\ $ (((!\b2v_inst1|b2v_inst20|o[2]~28_combout\ & \b2v_inst1|b2v_inst12|q\(2)))))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & 
-- (\b2v_inst1|b2v_inst20|o[2]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst20|o[2]~28_combout\,
	datab => \b2v_inst1|b2v_inst20|Mux7~0_combout\,
	datac => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datad => \b2v_inst1|b2v_inst12|q\(2),
	combout => \b2v_inst1|b2v_inst20|o[2]~29_combout\);

-- Location: LCCOMB_X26_Y32_N2
\b2v_inst1|b2v_inst8|q[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst8|q[2]~6_combout\ = (\b2v_inst1|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst1|b2v_inst21|o[2]~12_combout\ & ((\b2v_inst1|b2v_inst20|o[2]~29_combout\))) # (!\b2v_inst1|b2v_inst21|o[2]~12_combout\ & (\b2v_inst1|b2v_inst20|o[2]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst21|o[2]~12_combout\,
	datab => \b2v_inst1|b2v_inst7|q[3]~1_combout\,
	datac => \b2v_inst1|b2v_inst20|o[2]~31_combout\,
	datad => \b2v_inst1|b2v_inst20|o[2]~29_combout\,
	combout => \b2v_inst1|b2v_inst8|q[2]~6_combout\);

-- Location: LCCOMB_X27_Y32_N12
\b2v_inst1|b2v_inst20|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|Mux7~1_combout\ = \b2v_inst1|b2v_inst12|q\(1) $ (\b2v_inst1|b2v_inst12|q\(3) $ (!\b2v_inst1|b2v_inst12|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst12|q\(1),
	datac => \b2v_inst1|b2v_inst12|q\(3),
	datad => \b2v_inst1|b2v_inst12|q\(0),
	combout => \b2v_inst1|b2v_inst20|Mux7~1_combout\);

-- Location: LCCOMB_X26_Y29_N12
\b2v_inst1|b2v_inst20|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|Mux5~0_combout\ = \b2v_inst1|b2v_inst12|q\(2) $ (\b2v_inst1|b2v_inst12|q\(3) $ (!\b2v_inst1|b2v_inst12|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst12|q\(2),
	datac => \b2v_inst1|b2v_inst12|q\(3),
	datad => \b2v_inst1|b2v_inst12|q\(0),
	combout => \b2v_inst1|b2v_inst20|Mux5~0_combout\);

-- Location: LCCOMB_X26_Y29_N6
\b2v_inst1|b2v_inst20|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|Mux4~0_combout\ = \b2v_inst1|b2v_inst12|q\(3) $ (!\b2v_inst1|b2v_inst12|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|b2v_inst12|q\(3),
	datad => \b2v_inst1|b2v_inst12|q\(0),
	combout => \b2v_inst1|b2v_inst20|Mux4~0_combout\);

-- Location: LCCOMB_X26_Y32_N14
\b2v_inst1|b2v_inst20|o[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|o[2]~24_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (((\b2v_inst1|b2v_inst21|o[0]~22_combout\)))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & ((\b2v_inst1|b2v_inst21|o[0]~22_combout\ & 
-- (\b2v_inst1|b2v_inst20|Mux5~0_combout\)) # (!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & ((\b2v_inst1|b2v_inst20|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst20|Mux5~0_combout\,
	datab => \b2v_inst1|b2v_inst20|Mux4~0_combout\,
	datac => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datad => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	combout => \b2v_inst1|b2v_inst20|o[2]~24_combout\);

-- Location: LCCOMB_X26_Y29_N26
\b2v_inst1|b2v_inst20|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|Mux9~0_combout\ = \b2v_inst1|b2v_inst12|q\(2) $ (\b2v_inst1|b2v_inst12|q\(0) $ (\b2v_inst1|b2v_inst12|q\(3) $ (!\b2v_inst1|b2v_inst12|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst12|q\(2),
	datab => \b2v_inst1|b2v_inst12|q\(0),
	datac => \b2v_inst1|b2v_inst12|q\(3),
	datad => \b2v_inst1|b2v_inst12|q\(1),
	combout => \b2v_inst1|b2v_inst20|Mux9~0_combout\);

-- Location: LCCOMB_X26_Y32_N4
\b2v_inst1|b2v_inst20|o[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|o[2]~25_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & ((\b2v_inst1|b2v_inst20|o[2]~24_combout\ & ((\b2v_inst1|b2v_inst20|Mux9~0_combout\))) # (!\b2v_inst1|b2v_inst20|o[2]~24_combout\ & 
-- (\b2v_inst1|b2v_inst20|Mux7~1_combout\)))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (((\b2v_inst1|b2v_inst20|o[2]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datab => \b2v_inst1|b2v_inst20|Mux7~1_combout\,
	datac => \b2v_inst1|b2v_inst20|o[2]~24_combout\,
	datad => \b2v_inst1|b2v_inst20|Mux9~0_combout\,
	combout => \b2v_inst1|b2v_inst20|o[2]~25_combout\);

-- Location: LCCOMB_X26_Y32_N10
\b2v_inst1|b2v_inst20|o[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|o[2]~26_combout\ = (\b2v_inst1|b2v_inst18|o[3]~5_combout\ & (((\b2v_inst1|b2v_inst20|o[2]~25_combout\) # (!\b2v_inst1|b2v_inst18|o[3]~4_combout\)))) # (!\b2v_inst1|b2v_inst18|o[3]~5_combout\ & (\b2v_inst1|b2v_inst12|q\(2) & 
-- ((\b2v_inst1|b2v_inst18|o[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst12|q\(2),
	datab => \b2v_inst1|b2v_inst20|o[2]~25_combout\,
	datac => \b2v_inst1|b2v_inst18|o[3]~5_combout\,
	datad => \b2v_inst1|b2v_inst18|o[3]~4_combout\,
	combout => \b2v_inst1|b2v_inst20|o[2]~26_combout\);

-- Location: LCCOMB_X26_Y32_N28
\b2v_inst1|b2v_inst20|o[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|o[2]~27_combout\ = (\b2v_inst1|b2v_inst18|o[3]~38_combout\ & (\b2v_inst1|b2v_inst12|q\(1) $ (((\b2v_inst1|b2v_inst12|q\(2) & \b2v_inst1|b2v_inst20|o[2]~26_combout\))))) # (!\b2v_inst1|b2v_inst18|o[3]~38_combout\ & 
-- (((\b2v_inst1|b2v_inst20|o[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst12|q\(1),
	datab => \b2v_inst1|b2v_inst12|q\(2),
	datac => \b2v_inst1|b2v_inst18|o[3]~38_combout\,
	datad => \b2v_inst1|b2v_inst20|o[2]~26_combout\,
	combout => \b2v_inst1|b2v_inst20|o[2]~27_combout\);

-- Location: LCCOMB_X26_Y32_N16
\b2v_inst1|b2v_inst8|q[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst8|q[2]~7_combout\ = \b2v_inst1|b2v_inst8|q\(2) $ (((\b2v_inst1|b2v_inst8|q[2]~6_combout\) # ((\b2v_inst1|b2v_inst7|q[1]~0_combout\ & \b2v_inst1|b2v_inst20|o[2]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q[1]~0_combout\,
	datab => \b2v_inst1|b2v_inst8|q[2]~6_combout\,
	datac => \b2v_inst1|b2v_inst8|q\(2),
	datad => \b2v_inst1|b2v_inst20|o[2]~27_combout\,
	combout => \b2v_inst1|b2v_inst8|q[2]~7_combout\);

-- Location: FF_X26_Y32_N17
\b2v_inst1|b2v_inst8|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|b2v_inst8|q[2]~7_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst8|q\(2));

-- Location: FF_X30_Y32_N15
\b2v_inst1|b2v_inst4|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst1|b2v_inst3|q\(0),
	clrn => \b2v_inst|ALT_INV_WideOr0~0_combout\,
	sload => VCC,
	ena => \b2v_inst|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst4|q\(0));

-- Location: FF_X30_Y32_N19
\b2v_inst1|b2v_inst4|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst1|b2v_inst3|q\(2),
	clrn => \b2v_inst|ALT_INV_WideOr0~0_combout\,
	sload => VCC,
	ena => \b2v_inst|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst4|q\(2));

-- Location: LCCOMB_X27_Y29_N30
\b2v_inst1|b2v_inst20|o[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|o[0]~22_combout\ = (\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (((\b2v_inst1|b2v_inst21|o[1]~32_combout\)))) # (!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (\b2v_inst1|b2v_inst12|q\(1) $ (((\b2v_inst1|b2v_inst12|q\(3) & 
-- \b2v_inst1|b2v_inst21|o[1]~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst12|q\(3),
	datab => \b2v_inst1|b2v_inst12|q\(1),
	datac => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datad => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	combout => \b2v_inst1|b2v_inst20|o[0]~22_combout\);

-- Location: LCCOMB_X27_Y29_N4
\b2v_inst1|b2v_inst20|o[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|o[0]~23_combout\ = (\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (\b2v_inst1|b2v_inst20|Mux7~0_combout\ $ (((\b2v_inst1|b2v_inst12|q\(3) & \b2v_inst1|b2v_inst20|o[0]~22_combout\))))) # (!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & 
-- (((\b2v_inst1|b2v_inst20|o[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst12|q\(3),
	datab => \b2v_inst1|b2v_inst20|Mux7~0_combout\,
	datac => \b2v_inst1|b2v_inst20|o[0]~22_combout\,
	datad => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	combout => \b2v_inst1|b2v_inst20|o[0]~23_combout\);

-- Location: LCCOMB_X26_Y29_N8
\b2v_inst1|b2v_inst20|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|Mux10~0_combout\ = \b2v_inst1|b2v_inst12|q\(1) $ (\b2v_inst1|b2v_inst12|q\(0) $ (!\b2v_inst1|b2v_inst12|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst12|q\(1),
	datab => \b2v_inst1|b2v_inst12|q\(0),
	datac => \b2v_inst1|b2v_inst12|q\(2),
	combout => \b2v_inst1|b2v_inst20|Mux10~0_combout\);

-- Location: LCCOMB_X26_Y29_N24
\b2v_inst1|b2v_inst20|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|Mux2~0_combout\ = \b2v_inst1|b2v_inst12|q\(1) $ (\b2v_inst1|b2v_inst12|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst12|q\(1),
	datac => \b2v_inst1|b2v_inst12|q\(2),
	combout => \b2v_inst1|b2v_inst20|Mux2~0_combout\);

-- Location: LCCOMB_X26_Y29_N28
\b2v_inst1|b2v_inst20|o[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|o[0]~20_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (((\b2v_inst1|b2v_inst21|o[0]~22_combout\)))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & ((\b2v_inst1|b2v_inst21|o[0]~22_combout\ & 
-- (\b2v_inst1|b2v_inst20|Mux10~0_combout\)) # (!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & ((\b2v_inst1|b2v_inst20|Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst20|Mux10~0_combout\,
	datab => \b2v_inst1|b2v_inst20|Mux2~0_combout\,
	datac => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datad => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	combout => \b2v_inst1|b2v_inst20|o[0]~20_combout\);

-- Location: LCCOMB_X26_Y29_N22
\b2v_inst1|b2v_inst20|o[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|o[0]~21_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & ((\b2v_inst1|b2v_inst20|o[0]~20_combout\ & (\b2v_inst1|b2v_inst20|Mux9~0_combout\)) # (!\b2v_inst1|b2v_inst20|o[0]~20_combout\ & 
-- ((\b2v_inst1|b2v_inst20|Mux3~0_combout\))))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (((\b2v_inst1|b2v_inst20|o[0]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst20|Mux9~0_combout\,
	datab => \b2v_inst1|b2v_inst20|Mux3~0_combout\,
	datac => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datad => \b2v_inst1|b2v_inst20|o[0]~20_combout\,
	combout => \b2v_inst1|b2v_inst20|o[0]~21_combout\);

-- Location: LCCOMB_X27_Y29_N10
\b2v_inst1|b2v_inst8|q[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst8|q[0]~4_combout\ = (\b2v_inst1|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst1|b2v_inst21|o[2]~12_combout\ & ((\b2v_inst1|b2v_inst20|o[0]~21_combout\))) # (!\b2v_inst1|b2v_inst21|o[2]~12_combout\ & (\b2v_inst1|b2v_inst20|o[0]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q[3]~1_combout\,
	datab => \b2v_inst1|b2v_inst21|o[2]~12_combout\,
	datac => \b2v_inst1|b2v_inst20|o[0]~23_combout\,
	datad => \b2v_inst1|b2v_inst20|o[0]~21_combout\,
	combout => \b2v_inst1|b2v_inst8|q[0]~4_combout\);

-- Location: LCCOMB_X26_Y29_N10
\b2v_inst1|b2v_inst20|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|Mux5~1_combout\ = \b2v_inst1|b2v_inst12|q\(2) $ (!\b2v_inst1|b2v_inst12|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|b2v_inst12|q\(2),
	datad => \b2v_inst1|b2v_inst12|q\(0),
	combout => \b2v_inst1|b2v_inst20|Mux5~1_combout\);

-- Location: LCCOMB_X27_Y29_N2
\b2v_inst1|b2v_inst20|o[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|o[0]~16_combout\ = (\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (((\b2v_inst1|b2v_inst21|o[1]~32_combout\)))) # (!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (\b2v_inst1|b2v_inst12|q\(2) $ (((\b2v_inst1|b2v_inst12|q\(3) & 
-- \b2v_inst1|b2v_inst21|o[1]~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst12|q\(3),
	datab => \b2v_inst1|b2v_inst12|q\(2),
	datac => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datad => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	combout => \b2v_inst1|b2v_inst20|o[0]~16_combout\);

-- Location: LCCOMB_X27_Y29_N8
\b2v_inst1|b2v_inst20|o[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|o[0]~17_combout\ = (\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (\b2v_inst1|b2v_inst20|Mux5~1_combout\ $ (((\b2v_inst1|b2v_inst12|q\(3) & \b2v_inst1|b2v_inst20|o[0]~16_combout\))))) # (!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & 
-- (((\b2v_inst1|b2v_inst20|o[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst12|q\(3),
	datab => \b2v_inst1|b2v_inst20|Mux5~1_combout\,
	datac => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datad => \b2v_inst1|b2v_inst20|o[0]~16_combout\,
	combout => \b2v_inst1|b2v_inst20|o[0]~17_combout\);

-- Location: LCCOMB_X27_Y29_N18
\b2v_inst1|b2v_inst20|o[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|o[0]~18_combout\ = (\b2v_inst1|b2v_inst18|o[3]~5_combout\ & (((\b2v_inst1|b2v_inst20|o[0]~17_combout\) # (!\b2v_inst1|b2v_inst18|o[3]~4_combout\)))) # (!\b2v_inst1|b2v_inst18|o[3]~5_combout\ & (!\b2v_inst1|b2v_inst12|q\(0) & 
-- ((\b2v_inst1|b2v_inst18|o[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst18|o[3]~5_combout\,
	datab => \b2v_inst1|b2v_inst12|q\(0),
	datac => \b2v_inst1|b2v_inst20|o[0]~17_combout\,
	datad => \b2v_inst1|b2v_inst18|o[3]~4_combout\,
	combout => \b2v_inst1|b2v_inst20|o[0]~18_combout\);

-- Location: LCCOMB_X27_Y29_N16
\b2v_inst1|b2v_inst20|o[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|o[0]~19_combout\ = (\b2v_inst1|b2v_inst18|o[3]~38_combout\ & (\b2v_inst1|b2v_inst12|q\(3) $ (((!\b2v_inst1|b2v_inst12|q\(0) & \b2v_inst1|b2v_inst20|o[0]~18_combout\))))) # (!\b2v_inst1|b2v_inst18|o[3]~38_combout\ & 
-- (((\b2v_inst1|b2v_inst20|o[0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst12|q\(3),
	datab => \b2v_inst1|b2v_inst12|q\(0),
	datac => \b2v_inst1|b2v_inst18|o[3]~38_combout\,
	datad => \b2v_inst1|b2v_inst20|o[0]~18_combout\,
	combout => \b2v_inst1|b2v_inst20|o[0]~19_combout\);

-- Location: LCCOMB_X27_Y29_N22
\b2v_inst1|b2v_inst8|q[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst8|q[0]~5_combout\ = \b2v_inst1|b2v_inst8|q\(0) $ (((\b2v_inst1|b2v_inst8|q[0]~4_combout\) # ((\b2v_inst1|b2v_inst7|q[1]~0_combout\ & \b2v_inst1|b2v_inst20|o[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst8|q[0]~4_combout\,
	datab => \b2v_inst1|b2v_inst7|q[1]~0_combout\,
	datac => \b2v_inst1|b2v_inst8|q\(0),
	datad => \b2v_inst1|b2v_inst20|o[0]~19_combout\,
	combout => \b2v_inst1|b2v_inst8|q[0]~5_combout\);

-- Location: FF_X27_Y29_N23
\b2v_inst1|b2v_inst8|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|b2v_inst8|q[0]~5_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst8|q\(0));

-- Location: FF_X30_Y32_N9
\b2v_inst1|b2v_inst4|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst1|b2v_inst3|q\(3),
	clrn => \b2v_inst|ALT_INV_WideOr0~0_combout\,
	sload => VCC,
	ena => \b2v_inst|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst4|q\(3));

-- Location: LCCOMB_X30_Y32_N4
\b2v_inst1|b2v_inst16|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|Mux4~0_combout\ = \b2v_inst1|b2v_inst4|q\(0) $ (\b2v_inst1|b2v_inst4|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst4|q\(0),
	datad => \b2v_inst1|b2v_inst4|q\(3),
	combout => \b2v_inst1|b2v_inst16|Mux4~0_combout\);

-- Location: LCCOMB_X27_Y32_N6
\b2v_inst1|b2v_inst20|o[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|o[1]~12_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (\b2v_inst1|b2v_inst21|o[0]~22_combout\)) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (\b2v_inst1|b2v_inst12|q\(3) $ (((!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & 
-- \b2v_inst1|b2v_inst12|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datab => \b2v_inst1|b2v_inst12|q\(3),
	datac => \b2v_inst1|b2v_inst12|q\(1),
	datad => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	combout => \b2v_inst1|b2v_inst20|o[1]~12_combout\);

-- Location: LCCOMB_X27_Y32_N8
\b2v_inst1|b2v_inst20|o[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|o[1]~13_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (\b2v_inst1|b2v_inst12|q\(0) $ (((\b2v_inst1|b2v_inst20|o[1]~12_combout\) # (!\b2v_inst1|b2v_inst12|q\(1)))))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & 
-- (\b2v_inst1|b2v_inst20|o[1]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst20|o[1]~12_combout\,
	datab => \b2v_inst1|b2v_inst12|q\(0),
	datac => \b2v_inst1|b2v_inst12|q\(1),
	datad => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	combout => \b2v_inst1|b2v_inst20|o[1]~13_combout\);

-- Location: LCCOMB_X27_Y32_N26
\b2v_inst1|b2v_inst20|o[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|o[1]~14_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (((\b2v_inst1|b2v_inst20|Mux9~0_combout\) # (\b2v_inst1|b2v_inst21|o[0]~22_combout\)))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (\b2v_inst1|b2v_inst20|Mux2~0_combout\ 
-- & ((!\b2v_inst1|b2v_inst21|o[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst20|Mux2~0_combout\,
	datab => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datac => \b2v_inst1|b2v_inst20|Mux9~0_combout\,
	datad => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	combout => \b2v_inst1|b2v_inst20|o[1]~14_combout\);

-- Location: LCCOMB_X27_Y32_N28
\b2v_inst1|b2v_inst20|o[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|o[1]~15_combout\ = (\b2v_inst1|b2v_inst20|o[1]~14_combout\ & ((\b2v_inst1|b2v_inst20|Mux5~0_combout\) # ((!\b2v_inst1|b2v_inst21|o[0]~22_combout\)))) # (!\b2v_inst1|b2v_inst20|o[1]~14_combout\ & (((\b2v_inst1|b2v_inst12|q\(2) & 
-- \b2v_inst1|b2v_inst21|o[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst20|Mux5~0_combout\,
	datab => \b2v_inst1|b2v_inst12|q\(2),
	datac => \b2v_inst1|b2v_inst20|o[1]~14_combout\,
	datad => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	combout => \b2v_inst1|b2v_inst20|o[1]~15_combout\);

-- Location: LCCOMB_X27_Y32_N10
\b2v_inst1|b2v_inst8|q[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst8|q[1]~2_combout\ = (\b2v_inst1|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst1|b2v_inst21|o[2]~12_combout\ & (\b2v_inst1|b2v_inst20|o[1]~13_combout\)) # (!\b2v_inst1|b2v_inst21|o[2]~12_combout\ & ((\b2v_inst1|b2v_inst20|o[1]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q[3]~1_combout\,
	datab => \b2v_inst1|b2v_inst21|o[2]~12_combout\,
	datac => \b2v_inst1|b2v_inst20|o[1]~13_combout\,
	datad => \b2v_inst1|b2v_inst20|o[1]~15_combout\,
	combout => \b2v_inst1|b2v_inst8|q[1]~2_combout\);

-- Location: LCCOMB_X27_Y32_N30
\b2v_inst1|b2v_inst20|o[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|o[1]~8_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & ((\b2v_inst1|b2v_inst20|Mux5~1_combout\) # ((\b2v_inst1|b2v_inst21|o[0]~22_combout\)))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (((\b2v_inst1|b2v_inst20|Mux0~0_combout\ 
-- & !\b2v_inst1|b2v_inst21|o[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst20|Mux5~1_combout\,
	datab => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datac => \b2v_inst1|b2v_inst20|Mux0~0_combout\,
	datad => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	combout => \b2v_inst1|b2v_inst20|o[1]~8_combout\);

-- Location: LCCOMB_X27_Y32_N4
\b2v_inst1|b2v_inst20|o[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|o[1]~9_combout\ = (\b2v_inst1|b2v_inst20|o[1]~8_combout\ & ((\b2v_inst1|b2v_inst20|Mux10~0_combout\) # ((!\b2v_inst1|b2v_inst21|o[0]~22_combout\)))) # (!\b2v_inst1|b2v_inst20|o[1]~8_combout\ & (((\b2v_inst1|b2v_inst20|Mux3~0_combout\ 
-- & \b2v_inst1|b2v_inst21|o[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst20|Mux10~0_combout\,
	datab => \b2v_inst1|b2v_inst20|Mux3~0_combout\,
	datac => \b2v_inst1|b2v_inst20|o[1]~8_combout\,
	datad => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	combout => \b2v_inst1|b2v_inst20|o[1]~9_combout\);

-- Location: LCCOMB_X27_Y32_N2
\b2v_inst1|b2v_inst20|o[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|o[1]~10_combout\ = (\b2v_inst1|b2v_inst18|o[3]~5_combout\ & (((\b2v_inst1|b2v_inst20|o[1]~9_combout\) # (!\b2v_inst1|b2v_inst18|o[3]~4_combout\)))) # (!\b2v_inst1|b2v_inst18|o[3]~5_combout\ & (\b2v_inst1|b2v_inst12|q\(1) & 
-- ((\b2v_inst1|b2v_inst18|o[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst18|o[3]~5_combout\,
	datab => \b2v_inst1|b2v_inst12|q\(1),
	datac => \b2v_inst1|b2v_inst20|o[1]~9_combout\,
	datad => \b2v_inst1|b2v_inst18|o[3]~4_combout\,
	combout => \b2v_inst1|b2v_inst20|o[1]~10_combout\);

-- Location: LCCOMB_X27_Y32_N24
\b2v_inst1|b2v_inst20|o[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|o[1]~11_combout\ = (\b2v_inst1|b2v_inst18|o[3]~38_combout\ & ((\b2v_inst1|b2v_inst20|o[1]~10_combout\ & ((\b2v_inst1|b2v_inst20|Mux7~1_combout\))) # (!\b2v_inst1|b2v_inst20|o[1]~10_combout\ & 
-- (\b2v_inst1|b2v_inst20|Mux4~0_combout\)))) # (!\b2v_inst1|b2v_inst18|o[3]~38_combout\ & (((\b2v_inst1|b2v_inst20|o[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst20|Mux4~0_combout\,
	datab => \b2v_inst1|b2v_inst20|Mux7~1_combout\,
	datac => \b2v_inst1|b2v_inst18|o[3]~38_combout\,
	datad => \b2v_inst1|b2v_inst20|o[1]~10_combout\,
	combout => \b2v_inst1|b2v_inst20|o[1]~11_combout\);

-- Location: LCCOMB_X27_Y32_N20
\b2v_inst1|b2v_inst8|q[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst8|q[1]~3_combout\ = \b2v_inst1|b2v_inst8|q\(1) $ (((\b2v_inst1|b2v_inst8|q[1]~2_combout\) # ((\b2v_inst1|b2v_inst7|q[1]~0_combout\ & \b2v_inst1|b2v_inst20|o[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst8|q[1]~2_combout\,
	datab => \b2v_inst1|b2v_inst7|q[1]~0_combout\,
	datac => \b2v_inst1|b2v_inst8|q\(1),
	datad => \b2v_inst1|b2v_inst20|o[1]~11_combout\,
	combout => \b2v_inst1|b2v_inst8|q[1]~3_combout\);

-- Location: FF_X27_Y32_N21
\b2v_inst1|b2v_inst8|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|b2v_inst8|q[1]~3_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst8|q\(1));

-- Location: LCCOMB_X30_Y32_N16
\b2v_inst1|b2v_inst16|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|Mux5~0_combout\ = \b2v_inst1|b2v_inst4|q\(3) $ (\b2v_inst1|b2v_inst4|q\(0) $ (\b2v_inst1|b2v_inst4|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst4|q\(3),
	datab => \b2v_inst1|b2v_inst4|q\(0),
	datad => \b2v_inst1|b2v_inst4|q\(2),
	combout => \b2v_inst1|b2v_inst16|Mux5~0_combout\);

-- Location: LCCOMB_X29_Y32_N0
\b2v_inst1|b2v_inst16|o[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[3]~35_combout\ = (\b2v_inst1|b2v_inst8|q\(1) & (((\b2v_inst1|b2v_inst8|q\(0)) # (\b2v_inst1|b2v_inst16|Mux5~0_combout\)))) # (!\b2v_inst1|b2v_inst8|q\(1) & (\b2v_inst1|b2v_inst16|Mux4~0_combout\ & (!\b2v_inst1|b2v_inst8|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst16|Mux4~0_combout\,
	datab => \b2v_inst1|b2v_inst8|q\(1),
	datac => \b2v_inst1|b2v_inst8|q\(0),
	datad => \b2v_inst1|b2v_inst16|Mux5~0_combout\,
	combout => \b2v_inst1|b2v_inst16|o[3]~35_combout\);

-- Location: LCCOMB_X29_Y32_N26
\b2v_inst1|b2v_inst16|o[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[3]~36_combout\ = (\b2v_inst1|b2v_inst8|q\(0) & (\b2v_inst1|b2v_inst4|q\(0) $ (((\b2v_inst1|b2v_inst4|q\(2) & \b2v_inst1|b2v_inst16|o[3]~35_combout\))))) # (!\b2v_inst1|b2v_inst8|q\(0) & (((\b2v_inst1|b2v_inst16|o[3]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst4|q\(0),
	datab => \b2v_inst1|b2v_inst4|q\(2),
	datac => \b2v_inst1|b2v_inst8|q\(0),
	datad => \b2v_inst1|b2v_inst16|o[3]~35_combout\,
	combout => \b2v_inst1|b2v_inst16|o[3]~36_combout\);

-- Location: FF_X30_Y32_N5
\b2v_inst1|b2v_inst4|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst1|b2v_inst3|q\(1),
	clrn => \b2v_inst|ALT_INV_WideOr0~0_combout\,
	sload => VCC,
	ena => \b2v_inst|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst4|q\(1));

-- Location: LCCOMB_X29_Y32_N12
\b2v_inst1|b2v_inst16|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|Mux10~0_combout\ = \b2v_inst1|b2v_inst4|q\(2) $ (\b2v_inst1|b2v_inst4|q\(1) $ (\b2v_inst1|b2v_inst4|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst4|q\(2),
	datac => \b2v_inst1|b2v_inst4|q\(1),
	datad => \b2v_inst1|b2v_inst4|q\(0),
	combout => \b2v_inst1|b2v_inst16|Mux10~0_combout\);

-- Location: LCCOMB_X30_Y32_N18
\b2v_inst1|b2v_inst16|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|Mux9~0_combout\ = \b2v_inst1|b2v_inst4|q\(1) $ (\b2v_inst1|b2v_inst4|q\(0) $ (\b2v_inst1|b2v_inst4|q\(2) $ (\b2v_inst1|b2v_inst4|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst4|q\(1),
	datab => \b2v_inst1|b2v_inst4|q\(0),
	datac => \b2v_inst1|b2v_inst4|q\(2),
	datad => \b2v_inst1|b2v_inst4|q\(3),
	combout => \b2v_inst1|b2v_inst16|Mux9~0_combout\);

-- Location: LCCOMB_X29_Y32_N30
\b2v_inst1|b2v_inst16|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|Mux8~0_combout\ = \b2v_inst1|b2v_inst4|q\(1) $ (\b2v_inst1|b2v_inst4|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|b2v_inst4|q\(1),
	datad => \b2v_inst1|b2v_inst4|q\(0),
	combout => \b2v_inst1|b2v_inst16|Mux8~0_combout\);

-- Location: LCCOMB_X29_Y32_N20
\b2v_inst1|b2v_inst16|o[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[3]~33_combout\ = (\b2v_inst1|b2v_inst8|q\(1) & (((\b2v_inst1|b2v_inst8|q\(0))))) # (!\b2v_inst1|b2v_inst8|q\(1) & (\b2v_inst1|b2v_inst16|Mux8~0_combout\ $ (((\b2v_inst1|b2v_inst4|q\(3) & !\b2v_inst1|b2v_inst8|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst8|q\(1),
	datab => \b2v_inst1|b2v_inst4|q\(3),
	datac => \b2v_inst1|b2v_inst16|Mux8~0_combout\,
	datad => \b2v_inst1|b2v_inst8|q\(0),
	combout => \b2v_inst1|b2v_inst16|o[3]~33_combout\);

-- Location: LCCOMB_X29_Y32_N10
\b2v_inst1|b2v_inst16|o[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[3]~34_combout\ = (\b2v_inst1|b2v_inst8|q\(1) & ((\b2v_inst1|b2v_inst16|o[3]~33_combout\ & (\b2v_inst1|b2v_inst16|Mux10~0_combout\)) # (!\b2v_inst1|b2v_inst16|o[3]~33_combout\ & ((\b2v_inst1|b2v_inst16|Mux9~0_combout\))))) # 
-- (!\b2v_inst1|b2v_inst8|q\(1) & (((\b2v_inst1|b2v_inst16|o[3]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst16|Mux10~0_combout\,
	datab => \b2v_inst1|b2v_inst8|q\(1),
	datac => \b2v_inst1|b2v_inst16|Mux9~0_combout\,
	datad => \b2v_inst1|b2v_inst16|o[3]~33_combout\,
	combout => \b2v_inst1|b2v_inst16|o[3]~34_combout\);

-- Location: LCCOMB_X29_Y32_N4
\b2v_inst1|b2v_inst16|o[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[3]~37_combout\ = (\b2v_inst1|b2v_inst8|q\(3) & ((\b2v_inst1|b2v_inst8|q\(2) & ((\b2v_inst1|b2v_inst16|o[3]~34_combout\))) # (!\b2v_inst1|b2v_inst8|q\(2) & (\b2v_inst1|b2v_inst16|o[3]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst8|q\(2),
	datab => \b2v_inst1|b2v_inst8|q\(3),
	datac => \b2v_inst1|b2v_inst16|o[3]~36_combout\,
	datad => \b2v_inst1|b2v_inst16|o[3]~34_combout\,
	combout => \b2v_inst1|b2v_inst16|o[3]~37_combout\);

-- Location: LCCOMB_X26_Y32_N26
\b2v_inst1|b2v_inst16|o[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[2]~10_combout\ = (\b2v_inst1|b2v_inst8|q\(1) & !\b2v_inst1|b2v_inst8|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|b2v_inst8|q\(1),
	datad => \b2v_inst1|b2v_inst8|q\(2),
	combout => \b2v_inst1|b2v_inst16|o[2]~10_combout\);

-- Location: LCCOMB_X27_Y32_N14
\b2v_inst1|b2v_inst16|o[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[2]~7_combout\ = (\b2v_inst1|b2v_inst8|q\(2)) # ((!\b2v_inst1|b2v_inst8|q\(1) & \b2v_inst1|b2v_inst8|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst8|q\(1),
	datac => \b2v_inst1|b2v_inst8|q\(2),
	datad => \b2v_inst1|b2v_inst8|q\(0),
	combout => \b2v_inst1|b2v_inst16|o[2]~7_combout\);

-- Location: LCCOMB_X26_Y32_N6
\b2v_inst1|b2v_inst16|o[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[2]~8_combout\ = (\b2v_inst1|b2v_inst8|q\(2)) # ((\b2v_inst1|b2v_inst8|q\(1) & \b2v_inst1|b2v_inst8|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst8|q\(2),
	datac => \b2v_inst1|b2v_inst8|q\(1),
	datad => \b2v_inst1|b2v_inst8|q\(0),
	combout => \b2v_inst1|b2v_inst16|o[2]~8_combout\);

-- Location: LCCOMB_X30_Y32_N28
\b2v_inst1|b2v_inst16|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|Mux2~0_combout\ = \b2v_inst1|b2v_inst4|q\(1) $ (\b2v_inst1|b2v_inst4|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|b2v_inst4|q\(1),
	datad => \b2v_inst1|b2v_inst4|q\(2),
	combout => \b2v_inst1|b2v_inst16|Mux2~0_combout\);

-- Location: LCCOMB_X27_Y32_N0
\b2v_inst1|b2v_inst16|o[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[3]~38_combout\ = (\b2v_inst1|b2v_inst8|q\(1) & (((\b2v_inst1|b2v_inst8|q\(0))))) # (!\b2v_inst1|b2v_inst8|q\(1) & (\b2v_inst1|b2v_inst4|q\(1) $ (((\b2v_inst1|b2v_inst4|q\(3) & \b2v_inst1|b2v_inst8|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst4|q\(3),
	datab => \b2v_inst1|b2v_inst8|q\(1),
	datac => \b2v_inst1|b2v_inst4|q\(1),
	datad => \b2v_inst1|b2v_inst8|q\(0),
	combout => \b2v_inst1|b2v_inst16|o[3]~38_combout\);

-- Location: LCCOMB_X27_Y32_N18
\b2v_inst1|b2v_inst16|o[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[3]~39_combout\ = (\b2v_inst1|b2v_inst8|q\(1) & (\b2v_inst1|b2v_inst16|Mux2~0_combout\ $ (((\b2v_inst1|b2v_inst4|q\(3) & \b2v_inst1|b2v_inst16|o[3]~38_combout\))))) # (!\b2v_inst1|b2v_inst8|q\(1) & 
-- (((\b2v_inst1|b2v_inst16|o[3]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst4|q\(3),
	datab => \b2v_inst1|b2v_inst8|q\(1),
	datac => \b2v_inst1|b2v_inst16|Mux2~0_combout\,
	datad => \b2v_inst1|b2v_inst16|o[3]~38_combout\,
	combout => \b2v_inst1|b2v_inst16|o[3]~39_combout\);

-- Location: LCCOMB_X27_Y32_N16
\b2v_inst1|b2v_inst16|o[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[3]~40_combout\ = (\b2v_inst1|b2v_inst16|o[2]~7_combout\ & ((\b2v_inst1|b2v_inst16|o[2]~8_combout\ & ((\b2v_inst1|b2v_inst16|o[3]~39_combout\))) # (!\b2v_inst1|b2v_inst16|o[2]~8_combout\ & (\b2v_inst1|b2v_inst4|q\(3))))) # 
-- (!\b2v_inst1|b2v_inst16|o[2]~7_combout\ & (((\b2v_inst1|b2v_inst16|o[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst4|q\(3),
	datab => \b2v_inst1|b2v_inst16|o[2]~7_combout\,
	datac => \b2v_inst1|b2v_inst16|o[2]~8_combout\,
	datad => \b2v_inst1|b2v_inst16|o[3]~39_combout\,
	combout => \b2v_inst1|b2v_inst16|o[3]~40_combout\);

-- Location: LCCOMB_X27_Y32_N22
\b2v_inst1|b2v_inst16|o[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[3]~41_combout\ = (\b2v_inst1|b2v_inst16|o[2]~10_combout\ & (\b2v_inst1|b2v_inst4|q\(2) $ (((\b2v_inst1|b2v_inst4|q\(3) & \b2v_inst1|b2v_inst16|o[3]~40_combout\))))) # (!\b2v_inst1|b2v_inst16|o[2]~10_combout\ & 
-- (((\b2v_inst1|b2v_inst16|o[3]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst4|q\(3),
	datab => \b2v_inst1|b2v_inst4|q\(2),
	datac => \b2v_inst1|b2v_inst16|o[2]~10_combout\,
	datad => \b2v_inst1|b2v_inst16|o[3]~40_combout\,
	combout => \b2v_inst1|b2v_inst16|o[3]~41_combout\);

-- Location: LCCOMB_X29_Y32_N14
\b2v_inst1|b2v_inst16|o[3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[3]~42_combout\ = (\b2v_inst1|b2v_inst16|o[3]~37_combout\) # ((!\b2v_inst1|b2v_inst8|q\(3) & \b2v_inst1|b2v_inst16|o[3]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst8|q\(3),
	datac => \b2v_inst1|b2v_inst16|o[3]~37_combout\,
	datad => \b2v_inst1|b2v_inst16|o[3]~41_combout\,
	combout => \b2v_inst1|b2v_inst16|o[3]~42_combout\);

-- Location: LCCOMB_X29_Y30_N0
\b2v_inst1|b2v_inst25|c[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst25|c\(3) = \b2v_inst1|b2v_inst14|o[3]~42_combout\ $ (\b2v_inst1|b2v_inst13|o[3]~42_combout\ $ (\b2v_inst1|b2v_inst15|o[3]~42_combout\ $ (\b2v_inst1|b2v_inst16|o[3]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst14|o[3]~42_combout\,
	datab => \b2v_inst1|b2v_inst13|o[3]~42_combout\,
	datac => \b2v_inst1|b2v_inst15|o[3]~42_combout\,
	datad => \b2v_inst1|b2v_inst16|o[3]~42_combout\,
	combout => \b2v_inst1|b2v_inst25|c\(3));

-- Location: FF_X29_Y30_N1
\b2v_inst1|b2v_inst26|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|b2v_inst25|c\(3),
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	ena => \b2v_inst|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst26|q\(3));

-- Location: LCCOMB_X32_Y28_N18
\b2v_inst1|b2v_inst32|o[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst32|o[2]~3_combout\ = (\b2v_inst1|b2v_inst26|q\(0) & (\b2v_inst1|b2v_inst26|q\(1) $ (((\b2v_inst1|b2v_inst26|q\(3) & \b2v_inst1|b2v_inst26|q\(2)))))) # (!\b2v_inst1|b2v_inst26|q\(0) & ((\b2v_inst1|b2v_inst26|q\(3) $ 
-- (\b2v_inst1|b2v_inst26|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst26|q\(1),
	datab => \b2v_inst1|b2v_inst26|q\(3),
	datac => \b2v_inst1|b2v_inst26|q\(0),
	datad => \b2v_inst1|b2v_inst26|q\(2),
	combout => \b2v_inst1|b2v_inst32|o[2]~3_combout\);

-- Location: LCCOMB_X28_Y28_N26
\b2v_inst1|b2v_inst21|o[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[2]~0_combout\ = (\b2v_inst1|b2v_inst32|o[1]~2_combout\ & (((\b2v_inst1|b2v_inst32|o[0]~1_combout\)))) # (!\b2v_inst1|b2v_inst32|o[1]~2_combout\ & (\b2v_inst1|b2v_inst25|c\(0) $ (((!\b2v_inst1|b2v_inst32|o[0]~1_combout\ & 
-- \b2v_inst1|b2v_inst25|c\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst25|c\(0),
	datab => \b2v_inst1|b2v_inst32|o[0]~1_combout\,
	datac => \b2v_inst1|b2v_inst32|o[1]~2_combout\,
	datad => \b2v_inst1|b2v_inst25|c\(2),
	combout => \b2v_inst1|b2v_inst21|o[2]~0_combout\);

-- Location: LCCOMB_X28_Y28_N24
\b2v_inst1|b2v_inst21|o[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[2]~1_combout\ = (\b2v_inst1|b2v_inst32|o[1]~2_combout\ & (\b2v_inst1|b2v_inst21|Mux7~0_combout\ $ (((!\b2v_inst1|b2v_inst21|o[2]~0_combout\ & \b2v_inst1|b2v_inst25|c\(2)))))) # (!\b2v_inst1|b2v_inst32|o[1]~2_combout\ & 
-- (((\b2v_inst1|b2v_inst21|o[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst32|o[1]~2_combout\,
	datab => \b2v_inst1|b2v_inst21|Mux7~0_combout\,
	datac => \b2v_inst1|b2v_inst21|o[2]~0_combout\,
	datad => \b2v_inst1|b2v_inst25|c\(2),
	combout => \b2v_inst1|b2v_inst21|o[2]~1_combout\);

-- Location: LCCOMB_X29_Y28_N6
\b2v_inst1|b2v_inst21|o[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[2]~2_combout\ = (\b2v_inst1|b2v_inst32|o[1]~2_combout\ & ((\b2v_inst1|b2v_inst32|o[0]~1_combout\) # ((\b2v_inst1|b2v_inst21|Mux3~0_combout\)))) # (!\b2v_inst1|b2v_inst32|o[1]~2_combout\ & (!\b2v_inst1|b2v_inst32|o[0]~1_combout\ & 
-- (\b2v_inst1|b2v_inst21|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst32|o[1]~2_combout\,
	datab => \b2v_inst1|b2v_inst32|o[0]~1_combout\,
	datac => \b2v_inst1|b2v_inst21|Mux0~0_combout\,
	datad => \b2v_inst1|b2v_inst21|Mux3~0_combout\,
	combout => \b2v_inst1|b2v_inst21|o[2]~2_combout\);

-- Location: LCCOMB_X29_Y28_N16
\b2v_inst1|b2v_inst21|o[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[2]~3_combout\ = (\b2v_inst1|b2v_inst32|o[0]~1_combout\ & (\b2v_inst1|b2v_inst25|c\(3) $ (((\b2v_inst1|b2v_inst25|c\(1) & \b2v_inst1|b2v_inst21|o[2]~2_combout\))))) # (!\b2v_inst1|b2v_inst32|o[0]~1_combout\ & 
-- (((\b2v_inst1|b2v_inst21|o[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst32|o[0]~1_combout\,
	datab => \b2v_inst1|b2v_inst25|c\(3),
	datac => \b2v_inst1|b2v_inst25|c\(1),
	datad => \b2v_inst1|b2v_inst21|o[2]~2_combout\,
	combout => \b2v_inst1|b2v_inst21|o[2]~3_combout\);

-- Location: LCCOMB_X29_Y28_N30
\b2v_inst1|b2v_inst21|o[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[2]~4_combout\ = (\b2v_inst1|b2v_inst32|o[3]~0_combout\ & ((\b2v_inst1|b2v_inst32|o[2]~3_combout\ & (\b2v_inst1|b2v_inst21|o[2]~1_combout\)) # (!\b2v_inst1|b2v_inst32|o[2]~3_combout\ & ((\b2v_inst1|b2v_inst21|o[2]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst32|o[2]~3_combout\,
	datab => \b2v_inst1|b2v_inst32|o[3]~0_combout\,
	datac => \b2v_inst1|b2v_inst21|o[2]~1_combout\,
	datad => \b2v_inst1|b2v_inst21|o[2]~3_combout\,
	combout => \b2v_inst1|b2v_inst21|o[2]~4_combout\);

-- Location: LCCOMB_X29_Y28_N18
\b2v_inst1|b2v_inst21|o[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[2]~5_combout\ = (\b2v_inst1|b2v_inst32|o[1]~2_combout\ & (\b2v_inst1|b2v_inst32|o[0]~1_combout\)) # (!\b2v_inst1|b2v_inst32|o[1]~2_combout\ & ((\b2v_inst1|b2v_inst32|o[0]~1_combout\ & (\b2v_inst1|b2v_inst21|Mux5~0_combout\)) # 
-- (!\b2v_inst1|b2v_inst32|o[0]~1_combout\ & ((\b2v_inst1|b2v_inst21|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst32|o[1]~2_combout\,
	datab => \b2v_inst1|b2v_inst32|o[0]~1_combout\,
	datac => \b2v_inst1|b2v_inst21|Mux5~0_combout\,
	datad => \b2v_inst1|b2v_inst21|Mux4~0_combout\,
	combout => \b2v_inst1|b2v_inst21|o[2]~5_combout\);

-- Location: LCCOMB_X29_Y28_N28
\b2v_inst1|b2v_inst21|o[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[2]~6_combout\ = (\b2v_inst1|b2v_inst32|o[1]~2_combout\ & ((\b2v_inst1|b2v_inst21|o[2]~5_combout\ & (\b2v_inst1|b2v_inst21|Mux9~0_combout\)) # (!\b2v_inst1|b2v_inst21|o[2]~5_combout\ & ((\b2v_inst1|b2v_inst21|Mux7~1_combout\))))) # 
-- (!\b2v_inst1|b2v_inst32|o[1]~2_combout\ & (((\b2v_inst1|b2v_inst21|o[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst21|Mux9~0_combout\,
	datab => \b2v_inst1|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst1|b2v_inst21|Mux7~1_combout\,
	datad => \b2v_inst1|b2v_inst21|o[2]~5_combout\,
	combout => \b2v_inst1|b2v_inst21|o[2]~6_combout\);

-- Location: LCCOMB_X29_Y28_N10
\b2v_inst1|b2v_inst21|o[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[2]~9_combout\ = (\b2v_inst1|b2v_inst21|o[0]~7_combout\ & ((\b2v_inst1|b2v_inst21|o[0]~8_combout\ & ((\b2v_inst1|b2v_inst21|o[2]~6_combout\))) # (!\b2v_inst1|b2v_inst21|o[0]~8_combout\ & (\b2v_inst1|b2v_inst25|c\(2))))) # 
-- (!\b2v_inst1|b2v_inst21|o[0]~7_combout\ & (((\b2v_inst1|b2v_inst21|o[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst21|o[0]~7_combout\,
	datab => \b2v_inst1|b2v_inst25|c\(2),
	datac => \b2v_inst1|b2v_inst21|o[0]~8_combout\,
	datad => \b2v_inst1|b2v_inst21|o[2]~6_combout\,
	combout => \b2v_inst1|b2v_inst21|o[2]~9_combout\);

-- Location: LCCOMB_X29_Y28_N0
\b2v_inst1|b2v_inst21|o[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[2]~11_combout\ = (\b2v_inst1|b2v_inst21|o[0]~10_combout\ & (\b2v_inst1|b2v_inst25|c\(1) $ (((\b2v_inst1|b2v_inst25|c\(2) & \b2v_inst1|b2v_inst21|o[2]~9_combout\))))) # (!\b2v_inst1|b2v_inst21|o[0]~10_combout\ & 
-- (((\b2v_inst1|b2v_inst21|o[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst25|c\(1),
	datab => \b2v_inst1|b2v_inst25|c\(2),
	datac => \b2v_inst1|b2v_inst21|o[0]~10_combout\,
	datad => \b2v_inst1|b2v_inst21|o[2]~9_combout\,
	combout => \b2v_inst1|b2v_inst21|o[2]~11_combout\);

-- Location: LCCOMB_X29_Y28_N26
\b2v_inst1|b2v_inst21|o[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[2]~12_combout\ = (\b2v_inst1|b2v_inst21|o[2]~4_combout\) # ((!\b2v_inst1|b2v_inst32|o[3]~0_combout\ & \b2v_inst1|b2v_inst21|o[2]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst32|o[3]~0_combout\,
	datac => \b2v_inst1|b2v_inst21|o[2]~4_combout\,
	datad => \b2v_inst1|b2v_inst21|o[2]~11_combout\,
	combout => \b2v_inst1|b2v_inst21|o[2]~12_combout\);

-- Location: LCCOMB_X26_Y26_N2
\b2v_inst1|b2v_inst17|o[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|o[3]~6_combout\ = (\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (((\b2v_inst1|b2v_inst21|o[1]~32_combout\)))) # (!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & ((\b2v_inst1|b2v_inst21|o[1]~32_combout\ & 
-- (\b2v_inst1|b2v_inst17|Mux5~0_combout\)) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & ((\b2v_inst1|b2v_inst17|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst17|Mux5~0_combout\,
	datab => \b2v_inst1|b2v_inst17|Mux4~0_combout\,
	datac => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datad => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	combout => \b2v_inst1|b2v_inst17|o[3]~6_combout\);

-- Location: LCCOMB_X26_Y26_N8
\b2v_inst1|b2v_inst17|o[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|o[3]~7_combout\ = (\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (\b2v_inst1|b2v_inst9|q\(0) $ (((\b2v_inst1|b2v_inst9|q\(2) & \b2v_inst1|b2v_inst17|o[3]~6_combout\))))) # (!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & 
-- (((\b2v_inst1|b2v_inst17|o[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst9|q\(0),
	datab => \b2v_inst1|b2v_inst9|q\(2),
	datac => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datad => \b2v_inst1|b2v_inst17|o[3]~6_combout\,
	combout => \b2v_inst1|b2v_inst17|o[3]~7_combout\);

-- Location: LCCOMB_X26_Y26_N24
\b2v_inst1|b2v_inst17|o[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|o[3]~4_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (((\b2v_inst1|b2v_inst21|o[0]~22_combout\)))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (\b2v_inst1|b2v_inst17|Mux7~0_combout\ $ (((\b2v_inst1|b2v_inst9|q\(3) & 
-- !\b2v_inst1|b2v_inst21|o[0]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst17|Mux7~0_combout\,
	datab => \b2v_inst1|b2v_inst9|q\(3),
	datac => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datad => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	combout => \b2v_inst1|b2v_inst17|o[3]~4_combout\);

-- Location: LCCOMB_X26_Y26_N28
\b2v_inst1|b2v_inst17|o[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|o[3]~5_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & ((\b2v_inst1|b2v_inst17|o[3]~4_combout\ & ((\b2v_inst1|b2v_inst17|Mux10~0_combout\))) # (!\b2v_inst1|b2v_inst17|o[3]~4_combout\ & (\b2v_inst1|b2v_inst17|Mux9~0_combout\)))) 
-- # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (((\b2v_inst1|b2v_inst17|o[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst17|Mux9~0_combout\,
	datab => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datac => \b2v_inst1|b2v_inst17|Mux10~0_combout\,
	datad => \b2v_inst1|b2v_inst17|o[3]~4_combout\,
	combout => \b2v_inst1|b2v_inst17|o[3]~5_combout\);

-- Location: LCCOMB_X26_Y26_N18
\b2v_inst1|b2v_inst5|q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst5|q[3]~0_combout\ = (\b2v_inst1|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst1|b2v_inst21|o[2]~12_combout\ & ((\b2v_inst1|b2v_inst17|o[3]~5_combout\))) # (!\b2v_inst1|b2v_inst21|o[2]~12_combout\ & (\b2v_inst1|b2v_inst17|o[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q[3]~1_combout\,
	datab => \b2v_inst1|b2v_inst21|o[2]~12_combout\,
	datac => \b2v_inst1|b2v_inst17|o[3]~7_combout\,
	datad => \b2v_inst1|b2v_inst17|o[3]~5_combout\,
	combout => \b2v_inst1|b2v_inst5|q[3]~0_combout\);

-- Location: LCCOMB_X26_Y26_N22
\b2v_inst1|b2v_inst17|o[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|o[3]~0_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (((\b2v_inst1|b2v_inst21|o[0]~22_combout\)))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (\b2v_inst1|b2v_inst9|q\(1) $ (((\b2v_inst1|b2v_inst9|q\(3) & 
-- \b2v_inst1|b2v_inst21|o[0]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst9|q\(1),
	datab => \b2v_inst1|b2v_inst9|q\(3),
	datac => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datad => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	combout => \b2v_inst1|b2v_inst17|o[3]~0_combout\);

-- Location: LCCOMB_X26_Y26_N26
\b2v_inst1|b2v_inst17|o[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|o[3]~1_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (\b2v_inst1|b2v_inst17|Mux2~0_combout\ $ (((\b2v_inst1|b2v_inst9|q\(3) & \b2v_inst1|b2v_inst17|o[3]~0_combout\))))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & 
-- (((\b2v_inst1|b2v_inst17|o[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst17|Mux2~0_combout\,
	datab => \b2v_inst1|b2v_inst9|q\(3),
	datac => \b2v_inst1|b2v_inst17|o[3]~0_combout\,
	datad => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	combout => \b2v_inst1|b2v_inst17|o[3]~1_combout\);

-- Location: LCCOMB_X26_Y26_N16
\b2v_inst1|b2v_inst17|o[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|o[3]~2_combout\ = (\b2v_inst1|b2v_inst18|o[3]~5_combout\ & (((\b2v_inst1|b2v_inst17|o[3]~1_combout\) # (!\b2v_inst1|b2v_inst18|o[3]~4_combout\)))) # (!\b2v_inst1|b2v_inst18|o[3]~5_combout\ & (\b2v_inst1|b2v_inst9|q\(3) & 
-- ((\b2v_inst1|b2v_inst18|o[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst9|q\(3),
	datab => \b2v_inst1|b2v_inst18|o[3]~5_combout\,
	datac => \b2v_inst1|b2v_inst17|o[3]~1_combout\,
	datad => \b2v_inst1|b2v_inst18|o[3]~4_combout\,
	combout => \b2v_inst1|b2v_inst17|o[3]~2_combout\);

-- Location: LCCOMB_X26_Y26_N10
\b2v_inst1|b2v_inst17|o[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst17|o[3]~3_combout\ = (\b2v_inst1|b2v_inst18|o[3]~38_combout\ & (\b2v_inst1|b2v_inst9|q\(2) $ (((\b2v_inst1|b2v_inst9|q\(3) & \b2v_inst1|b2v_inst17|o[3]~2_combout\))))) # (!\b2v_inst1|b2v_inst18|o[3]~38_combout\ & 
-- (((\b2v_inst1|b2v_inst17|o[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst9|q\(2),
	datab => \b2v_inst1|b2v_inst9|q\(3),
	datac => \b2v_inst1|b2v_inst18|o[3]~38_combout\,
	datad => \b2v_inst1|b2v_inst17|o[3]~2_combout\,
	combout => \b2v_inst1|b2v_inst17|o[3]~3_combout\);

-- Location: LCCOMB_X26_Y26_N0
\b2v_inst1|b2v_inst5|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst5|q[3]~1_combout\ = \b2v_inst1|b2v_inst5|q\(3) $ (((\b2v_inst1|b2v_inst5|q[3]~0_combout\) # ((\b2v_inst1|b2v_inst7|q[1]~0_combout\ & \b2v_inst1|b2v_inst17|o[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q[1]~0_combout\,
	datab => \b2v_inst1|b2v_inst5|q[3]~0_combout\,
	datac => \b2v_inst1|b2v_inst5|q\(3),
	datad => \b2v_inst1|b2v_inst17|o[3]~3_combout\,
	combout => \b2v_inst1|b2v_inst5|q[3]~1_combout\);

-- Location: FF_X26_Y26_N1
\b2v_inst1|b2v_inst5|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|b2v_inst5|q[3]~1_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst5|q\(3));

-- Location: LCCOMB_X29_Y29_N24
\b2v_inst1|b2v_inst13|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|Mux7~0_combout\ = \b2v_inst1|b2v_inst1|q\(1) $ (\b2v_inst1|b2v_inst1|q\(3) $ (\b2v_inst1|b2v_inst1|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst1|q\(1),
	datab => \b2v_inst1|b2v_inst1|q\(3),
	datad => \b2v_inst1|b2v_inst1|q\(0),
	combout => \b2v_inst1|b2v_inst13|Mux7~0_combout\);

-- Location: LCCOMB_X29_Y29_N6
\b2v_inst1|b2v_inst13|o[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[2]~28_combout\ = (\b2v_inst1|b2v_inst5|q\(1) & (((\b2v_inst1|b2v_inst13|Mux7~0_combout\) # (\b2v_inst1|b2v_inst5|q\(0))))) # (!\b2v_inst1|b2v_inst5|q\(1) & (\b2v_inst1|b2v_inst13|Mux4~0_combout\ & ((!\b2v_inst1|b2v_inst5|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst13|Mux4~0_combout\,
	datab => \b2v_inst1|b2v_inst13|Mux7~0_combout\,
	datac => \b2v_inst1|b2v_inst5|q\(1),
	datad => \b2v_inst1|b2v_inst5|q\(0),
	combout => \b2v_inst1|b2v_inst13|o[2]~28_combout\);

-- Location: LCCOMB_X29_Y29_N14
\b2v_inst1|b2v_inst13|o[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[2]~29_combout\ = (\b2v_inst1|b2v_inst5|q\(0) & ((\b2v_inst1|b2v_inst13|o[2]~28_combout\ & (\b2v_inst1|b2v_inst13|Mux9~0_combout\)) # (!\b2v_inst1|b2v_inst13|o[2]~28_combout\ & ((\b2v_inst1|b2v_inst13|Mux5~0_combout\))))) # 
-- (!\b2v_inst1|b2v_inst5|q\(0) & (((\b2v_inst1|b2v_inst13|o[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst13|Mux9~0_combout\,
	datab => \b2v_inst1|b2v_inst5|q\(0),
	datac => \b2v_inst1|b2v_inst13|Mux5~0_combout\,
	datad => \b2v_inst1|b2v_inst13|o[2]~28_combout\,
	combout => \b2v_inst1|b2v_inst13|o[2]~29_combout\);

-- Location: LCCOMB_X28_Y29_N0
\b2v_inst1|b2v_inst13|o[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[2]~30_combout\ = (\b2v_inst1|b2v_inst13|o[0]~8_combout\ & (((\b2v_inst1|b2v_inst13|o[2]~29_combout\) # (!\b2v_inst1|b2v_inst13|o[0]~7_combout\)))) # (!\b2v_inst1|b2v_inst13|o[0]~8_combout\ & (\b2v_inst1|b2v_inst1|q\(2) & 
-- ((\b2v_inst1|b2v_inst13|o[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst13|o[0]~8_combout\,
	datab => \b2v_inst1|b2v_inst1|q\(2),
	datac => \b2v_inst1|b2v_inst13|o[2]~29_combout\,
	datad => \b2v_inst1|b2v_inst13|o[0]~7_combout\,
	combout => \b2v_inst1|b2v_inst13|o[2]~30_combout\);

-- Location: LCCOMB_X28_Y29_N26
\b2v_inst1|b2v_inst13|o[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[2]~31_combout\ = (\b2v_inst1|b2v_inst13|o[0]~10_combout\ & (\b2v_inst1|b2v_inst1|q\(1) $ (((\b2v_inst1|b2v_inst1|q\(2) & \b2v_inst1|b2v_inst13|o[2]~30_combout\))))) # (!\b2v_inst1|b2v_inst13|o[0]~10_combout\ & 
-- (((\b2v_inst1|b2v_inst13|o[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst1|q\(1),
	datab => \b2v_inst1|b2v_inst1|q\(2),
	datac => \b2v_inst1|b2v_inst13|o[0]~10_combout\,
	datad => \b2v_inst1|b2v_inst13|o[2]~30_combout\,
	combout => \b2v_inst1|b2v_inst13|o[2]~31_combout\);

-- Location: LCCOMB_X29_Y29_N16
\b2v_inst1|b2v_inst13|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|Mux3~0_combout\ = \b2v_inst1|b2v_inst1|q\(1) $ (\b2v_inst1|b2v_inst1|q\(3) $ (\b2v_inst1|b2v_inst1|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst1|q\(1),
	datab => \b2v_inst1|b2v_inst1|q\(3),
	datad => \b2v_inst1|b2v_inst1|q\(2),
	combout => \b2v_inst1|b2v_inst13|Mux3~0_combout\);

-- Location: LCCOMB_X29_Y29_N26
\b2v_inst1|b2v_inst13|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|Mux0~0_combout\ = \b2v_inst1|b2v_inst1|q\(3) $ (\b2v_inst1|b2v_inst1|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst1|q\(3),
	datad => \b2v_inst1|b2v_inst1|q\(2),
	combout => \b2v_inst1|b2v_inst13|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y29_N18
\b2v_inst1|b2v_inst13|o[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[2]~25_combout\ = (\b2v_inst1|b2v_inst5|q\(1) & ((\b2v_inst1|b2v_inst13|Mux3~0_combout\) # ((\b2v_inst1|b2v_inst5|q\(0))))) # (!\b2v_inst1|b2v_inst5|q\(1) & (((!\b2v_inst1|b2v_inst5|q\(0) & \b2v_inst1|b2v_inst13|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst5|q\(1),
	datab => \b2v_inst1|b2v_inst13|Mux3~0_combout\,
	datac => \b2v_inst1|b2v_inst5|q\(0),
	datad => \b2v_inst1|b2v_inst13|Mux0~0_combout\,
	combout => \b2v_inst1|b2v_inst13|o[2]~25_combout\);

-- Location: LCCOMB_X28_Y29_N4
\b2v_inst1|b2v_inst13|o[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[2]~26_combout\ = (\b2v_inst1|b2v_inst5|q\(0) & (\b2v_inst1|b2v_inst1|q\(3) $ (((\b2v_inst1|b2v_inst1|q\(1) & \b2v_inst1|b2v_inst13|o[2]~25_combout\))))) # (!\b2v_inst1|b2v_inst5|q\(0) & (((\b2v_inst1|b2v_inst13|o[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst5|q\(0),
	datab => \b2v_inst1|b2v_inst1|q\(3),
	datac => \b2v_inst1|b2v_inst1|q\(1),
	datad => \b2v_inst1|b2v_inst13|o[2]~25_combout\,
	combout => \b2v_inst1|b2v_inst13|o[2]~26_combout\);

-- Location: LCCOMB_X30_Y29_N12
\b2v_inst1|b2v_inst13|o[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[2]~23_combout\ = (\b2v_inst1|b2v_inst5|q\(1) & (((\b2v_inst1|b2v_inst5|q\(0))))) # (!\b2v_inst1|b2v_inst5|q\(1) & (\b2v_inst1|b2v_inst1|q\(0) $ (((\b2v_inst1|b2v_inst1|q\(2) & !\b2v_inst1|b2v_inst5|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst1|q\(2),
	datab => \b2v_inst1|b2v_inst1|q\(0),
	datac => \b2v_inst1|b2v_inst5|q\(1),
	datad => \b2v_inst1|b2v_inst5|q\(0),
	combout => \b2v_inst1|b2v_inst13|o[2]~23_combout\);

-- Location: LCCOMB_X30_Y29_N14
\b2v_inst1|b2v_inst13|o[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[2]~24_combout\ = (\b2v_inst1|b2v_inst5|q\(1) & (\b2v_inst1|b2v_inst13|Mux8~0_combout\ $ (((\b2v_inst1|b2v_inst1|q\(2) & !\b2v_inst1|b2v_inst13|o[2]~23_combout\))))) # (!\b2v_inst1|b2v_inst5|q\(1) & 
-- (((\b2v_inst1|b2v_inst13|o[2]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst1|q\(2),
	datab => \b2v_inst1|b2v_inst13|Mux8~0_combout\,
	datac => \b2v_inst1|b2v_inst5|q\(1),
	datad => \b2v_inst1|b2v_inst13|o[2]~23_combout\,
	combout => \b2v_inst1|b2v_inst13|o[2]~24_combout\);

-- Location: LCCOMB_X28_Y29_N2
\b2v_inst1|b2v_inst13|o[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[2]~27_combout\ = (\b2v_inst1|b2v_inst5|q\(3) & ((\b2v_inst1|b2v_inst5|q\(2) & ((\b2v_inst1|b2v_inst13|o[2]~24_combout\))) # (!\b2v_inst1|b2v_inst5|q\(2) & (\b2v_inst1|b2v_inst13|o[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst5|q\(3),
	datab => \b2v_inst1|b2v_inst5|q\(2),
	datac => \b2v_inst1|b2v_inst13|o[2]~26_combout\,
	datad => \b2v_inst1|b2v_inst13|o[2]~24_combout\,
	combout => \b2v_inst1|b2v_inst13|o[2]~27_combout\);

-- Location: LCCOMB_X28_Y29_N8
\b2v_inst1|b2v_inst13|o[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[2]~32_combout\ = (\b2v_inst1|b2v_inst13|o[2]~27_combout\) # ((!\b2v_inst1|b2v_inst5|q\(3) & \b2v_inst1|b2v_inst13|o[2]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst5|q\(3),
	datac => \b2v_inst1|b2v_inst13|o[2]~31_combout\,
	datad => \b2v_inst1|b2v_inst13|o[2]~27_combout\,
	combout => \b2v_inst1|b2v_inst13|o[2]~32_combout\);

-- Location: LCCOMB_X29_Y31_N28
\b2v_inst1|b2v_inst15|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|Mux7~0_combout\ = \b2v_inst1|b2v_inst3|q\(0) $ (\b2v_inst1|b2v_inst3|q\(1) $ (\b2v_inst1|b2v_inst3|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst3|q\(0),
	datac => \b2v_inst1|b2v_inst3|q\(1),
	datad => \b2v_inst1|b2v_inst3|q\(3),
	combout => \b2v_inst1|b2v_inst15|Mux7~0_combout\);

-- Location: LCCOMB_X29_Y31_N6
\b2v_inst1|b2v_inst15|o[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[2]~28_combout\ = (\b2v_inst1|b2v_inst7|q\(0) & (\b2v_inst1|b2v_inst7|q\(1))) # (!\b2v_inst1|b2v_inst7|q\(0) & ((\b2v_inst1|b2v_inst7|q\(1) & ((\b2v_inst1|b2v_inst15|Mux7~0_combout\))) # (!\b2v_inst1|b2v_inst7|q\(1) & 
-- (\b2v_inst1|b2v_inst15|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q\(0),
	datab => \b2v_inst1|b2v_inst7|q\(1),
	datac => \b2v_inst1|b2v_inst15|Mux4~0_combout\,
	datad => \b2v_inst1|b2v_inst15|Mux7~0_combout\,
	combout => \b2v_inst1|b2v_inst15|o[2]~28_combout\);

-- Location: LCCOMB_X29_Y31_N4
\b2v_inst1|b2v_inst15|o[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[2]~29_combout\ = (\b2v_inst1|b2v_inst7|q\(0) & ((\b2v_inst1|b2v_inst15|o[2]~28_combout\ & ((\b2v_inst1|b2v_inst15|Mux9~0_combout\))) # (!\b2v_inst1|b2v_inst15|o[2]~28_combout\ & (\b2v_inst1|b2v_inst15|Mux5~0_combout\)))) # 
-- (!\b2v_inst1|b2v_inst7|q\(0) & (((\b2v_inst1|b2v_inst15|o[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q\(0),
	datab => \b2v_inst1|b2v_inst15|Mux5~0_combout\,
	datac => \b2v_inst1|b2v_inst15|Mux9~0_combout\,
	datad => \b2v_inst1|b2v_inst15|o[2]~28_combout\,
	combout => \b2v_inst1|b2v_inst15|o[2]~29_combout\);

-- Location: LCCOMB_X29_Y31_N2
\b2v_inst1|b2v_inst15|o[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[2]~30_combout\ = (\b2v_inst1|b2v_inst15|o[3]~8_combout\ & (((\b2v_inst1|b2v_inst15|o[2]~29_combout\) # (!\b2v_inst1|b2v_inst15|o[3]~7_combout\)))) # (!\b2v_inst1|b2v_inst15|o[3]~8_combout\ & (\b2v_inst1|b2v_inst3|q\(2) & 
-- ((\b2v_inst1|b2v_inst15|o[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst15|o[3]~8_combout\,
	datab => \b2v_inst1|b2v_inst3|q\(2),
	datac => \b2v_inst1|b2v_inst15|o[2]~29_combout\,
	datad => \b2v_inst1|b2v_inst15|o[3]~7_combout\,
	combout => \b2v_inst1|b2v_inst15|o[2]~30_combout\);

-- Location: LCCOMB_X29_Y31_N20
\b2v_inst1|b2v_inst15|o[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[2]~31_combout\ = (\b2v_inst1|b2v_inst15|o[3]~10_combout\ & (\b2v_inst1|b2v_inst3|q\(1) $ (((\b2v_inst1|b2v_inst3|q\(2) & \b2v_inst1|b2v_inst15|o[2]~30_combout\))))) # (!\b2v_inst1|b2v_inst15|o[3]~10_combout\ & 
-- (((\b2v_inst1|b2v_inst15|o[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst3|q\(2),
	datab => \b2v_inst1|b2v_inst15|o[3]~10_combout\,
	datac => \b2v_inst1|b2v_inst3|q\(1),
	datad => \b2v_inst1|b2v_inst15|o[2]~30_combout\,
	combout => \b2v_inst1|b2v_inst15|o[2]~31_combout\);

-- Location: LCCOMB_X29_Y31_N18
\b2v_inst1|b2v_inst15|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|Mux3~0_combout\ = \b2v_inst1|b2v_inst3|q\(2) $ (\b2v_inst1|b2v_inst3|q\(1) $ (\b2v_inst1|b2v_inst3|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst3|q\(2),
	datab => \b2v_inst1|b2v_inst3|q\(1),
	datad => \b2v_inst1|b2v_inst3|q\(3),
	combout => \b2v_inst1|b2v_inst15|Mux3~0_combout\);

-- Location: LCCOMB_X29_Y31_N12
\b2v_inst1|b2v_inst15|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|Mux0~0_combout\ = \b2v_inst1|b2v_inst3|q\(2) $ (\b2v_inst1|b2v_inst3|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst3|q\(2),
	datad => \b2v_inst1|b2v_inst3|q\(3),
	combout => \b2v_inst1|b2v_inst15|Mux0~0_combout\);

-- Location: LCCOMB_X29_Y31_N0
\b2v_inst1|b2v_inst15|o[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[2]~25_combout\ = (\b2v_inst1|b2v_inst7|q\(1) & ((\b2v_inst1|b2v_inst15|Mux3~0_combout\) # ((\b2v_inst1|b2v_inst7|q\(0))))) # (!\b2v_inst1|b2v_inst7|q\(1) & (((!\b2v_inst1|b2v_inst7|q\(0) & \b2v_inst1|b2v_inst15|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q\(1),
	datab => \b2v_inst1|b2v_inst15|Mux3~0_combout\,
	datac => \b2v_inst1|b2v_inst7|q\(0),
	datad => \b2v_inst1|b2v_inst15|Mux0~0_combout\,
	combout => \b2v_inst1|b2v_inst15|o[2]~25_combout\);

-- Location: LCCOMB_X29_Y31_N30
\b2v_inst1|b2v_inst15|o[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[2]~26_combout\ = (\b2v_inst1|b2v_inst7|q\(0) & (\b2v_inst1|b2v_inst3|q\(3) $ (((\b2v_inst1|b2v_inst3|q\(1) & \b2v_inst1|b2v_inst15|o[2]~25_combout\))))) # (!\b2v_inst1|b2v_inst7|q\(0) & (((\b2v_inst1|b2v_inst15|o[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst3|q\(3),
	datab => \b2v_inst1|b2v_inst3|q\(1),
	datac => \b2v_inst1|b2v_inst7|q\(0),
	datad => \b2v_inst1|b2v_inst15|o[2]~25_combout\,
	combout => \b2v_inst1|b2v_inst15|o[2]~26_combout\);

-- Location: LCCOMB_X30_Y31_N0
\b2v_inst1|b2v_inst15|o[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[2]~23_combout\ = (\b2v_inst1|b2v_inst7|q\(1) & (((\b2v_inst1|b2v_inst7|q\(0))))) # (!\b2v_inst1|b2v_inst7|q\(1) & (\b2v_inst1|b2v_inst3|q\(0) $ (((\b2v_inst1|b2v_inst3|q\(2) & !\b2v_inst1|b2v_inst7|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst3|q\(2),
	datab => \b2v_inst1|b2v_inst3|q\(0),
	datac => \b2v_inst1|b2v_inst7|q\(1),
	datad => \b2v_inst1|b2v_inst7|q\(0),
	combout => \b2v_inst1|b2v_inst15|o[2]~23_combout\);

-- Location: LCCOMB_X30_Y31_N26
\b2v_inst1|b2v_inst15|o[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[2]~24_combout\ = (\b2v_inst1|b2v_inst7|q\(1) & (\b2v_inst1|b2v_inst15|Mux8~0_combout\ $ (((\b2v_inst1|b2v_inst3|q\(2) & !\b2v_inst1|b2v_inst15|o[2]~23_combout\))))) # (!\b2v_inst1|b2v_inst7|q\(1) & 
-- (((\b2v_inst1|b2v_inst15|o[2]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst15|Mux8~0_combout\,
	datab => \b2v_inst1|b2v_inst3|q\(2),
	datac => \b2v_inst1|b2v_inst7|q\(1),
	datad => \b2v_inst1|b2v_inst15|o[2]~23_combout\,
	combout => \b2v_inst1|b2v_inst15|o[2]~24_combout\);

-- Location: LCCOMB_X29_Y31_N8
\b2v_inst1|b2v_inst15|o[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[2]~27_combout\ = (\b2v_inst1|b2v_inst7|q\(3) & ((\b2v_inst1|b2v_inst7|q\(2) & ((\b2v_inst1|b2v_inst15|o[2]~24_combout\))) # (!\b2v_inst1|b2v_inst7|q\(2) & (\b2v_inst1|b2v_inst15|o[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q\(3),
	datab => \b2v_inst1|b2v_inst7|q\(2),
	datac => \b2v_inst1|b2v_inst15|o[2]~26_combout\,
	datad => \b2v_inst1|b2v_inst15|o[2]~24_combout\,
	combout => \b2v_inst1|b2v_inst15|o[2]~27_combout\);

-- Location: LCCOMB_X29_Y31_N14
\b2v_inst1|b2v_inst15|o[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[2]~32_combout\ = (\b2v_inst1|b2v_inst15|o[2]~27_combout\) # ((!\b2v_inst1|b2v_inst7|q\(3) & \b2v_inst1|b2v_inst15|o[2]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q\(3),
	datab => \b2v_inst1|b2v_inst15|o[2]~31_combout\,
	datac => \b2v_inst1|b2v_inst15|o[2]~27_combout\,
	combout => \b2v_inst1|b2v_inst15|o[2]~32_combout\);

-- Location: LCCOMB_X25_Y30_N16
\b2v_inst1|b2v_inst14|o[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[2]~23_combout\ = (\b2v_inst1|b2v_inst6|q\(1) & (\b2v_inst1|b2v_inst6|q\(0))) # (!\b2v_inst1|b2v_inst6|q\(1) & (\b2v_inst1|b2v_inst2|q\(0) $ (((!\b2v_inst1|b2v_inst6|q\(0) & \b2v_inst1|b2v_inst2|q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst6|q\(0),
	datab => \b2v_inst1|b2v_inst6|q\(1),
	datac => \b2v_inst1|b2v_inst2|q\(2),
	datad => \b2v_inst1|b2v_inst2|q\(0),
	combout => \b2v_inst1|b2v_inst14|o[2]~23_combout\);

-- Location: LCCOMB_X25_Y30_N22
\b2v_inst1|b2v_inst14|o[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[2]~24_combout\ = (\b2v_inst1|b2v_inst6|q\(1) & (\b2v_inst1|b2v_inst14|Mux8~0_combout\ $ (((\b2v_inst1|b2v_inst2|q\(2) & !\b2v_inst1|b2v_inst14|o[2]~23_combout\))))) # (!\b2v_inst1|b2v_inst6|q\(1) & 
-- (((\b2v_inst1|b2v_inst14|o[2]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst2|q\(2),
	datab => \b2v_inst1|b2v_inst6|q\(1),
	datac => \b2v_inst1|b2v_inst14|Mux8~0_combout\,
	datad => \b2v_inst1|b2v_inst14|o[2]~23_combout\,
	combout => \b2v_inst1|b2v_inst14|o[2]~24_combout\);

-- Location: LCCOMB_X27_Y30_N10
\b2v_inst1|b2v_inst14|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|Mux0~0_combout\ = \b2v_inst1|b2v_inst2|q\(2) $ (\b2v_inst1|b2v_inst2|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst2|q\(2),
	datad => \b2v_inst1|b2v_inst2|q\(3),
	combout => \b2v_inst1|b2v_inst14|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y30_N0
\b2v_inst1|b2v_inst14|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|Mux3~0_combout\ = \b2v_inst1|b2v_inst2|q\(2) $ (\b2v_inst1|b2v_inst2|q\(3) $ (\b2v_inst1|b2v_inst2|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst2|q\(2),
	datac => \b2v_inst1|b2v_inst2|q\(3),
	datad => \b2v_inst1|b2v_inst2|q\(1),
	combout => \b2v_inst1|b2v_inst14|Mux3~0_combout\);

-- Location: LCCOMB_X27_Y30_N28
\b2v_inst1|b2v_inst14|o[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[2]~25_combout\ = (\b2v_inst1|b2v_inst6|q\(1) & (((\b2v_inst1|b2v_inst14|Mux3~0_combout\) # (\b2v_inst1|b2v_inst6|q\(0))))) # (!\b2v_inst1|b2v_inst6|q\(1) & (\b2v_inst1|b2v_inst14|Mux0~0_combout\ & ((!\b2v_inst1|b2v_inst6|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst14|Mux0~0_combout\,
	datab => \b2v_inst1|b2v_inst6|q\(1),
	datac => \b2v_inst1|b2v_inst14|Mux3~0_combout\,
	datad => \b2v_inst1|b2v_inst6|q\(0),
	combout => \b2v_inst1|b2v_inst14|o[2]~25_combout\);

-- Location: LCCOMB_X27_Y30_N14
\b2v_inst1|b2v_inst14|o[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[2]~26_combout\ = (\b2v_inst1|b2v_inst6|q\(0) & (\b2v_inst1|b2v_inst2|q\(3) $ (((\b2v_inst1|b2v_inst2|q\(1) & \b2v_inst1|b2v_inst14|o[2]~25_combout\))))) # (!\b2v_inst1|b2v_inst6|q\(0) & (((\b2v_inst1|b2v_inst14|o[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst6|q\(0),
	datab => \b2v_inst1|b2v_inst2|q\(3),
	datac => \b2v_inst1|b2v_inst2|q\(1),
	datad => \b2v_inst1|b2v_inst14|o[2]~25_combout\,
	combout => \b2v_inst1|b2v_inst14|o[2]~26_combout\);

-- Location: LCCOMB_X28_Y30_N0
\b2v_inst1|b2v_inst14|o[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[2]~27_combout\ = (\b2v_inst1|b2v_inst6|q\(3) & ((\b2v_inst1|b2v_inst6|q\(2) & (\b2v_inst1|b2v_inst14|o[2]~24_combout\)) # (!\b2v_inst1|b2v_inst6|q\(2) & ((\b2v_inst1|b2v_inst14|o[2]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst6|q\(2),
	datab => \b2v_inst1|b2v_inst6|q\(3),
	datac => \b2v_inst1|b2v_inst14|o[2]~24_combout\,
	datad => \b2v_inst1|b2v_inst14|o[2]~26_combout\,
	combout => \b2v_inst1|b2v_inst14|o[2]~27_combout\);

-- Location: LCCOMB_X27_Y30_N26
\b2v_inst1|b2v_inst14|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|Mux7~0_combout\ = \b2v_inst1|b2v_inst2|q\(0) $ (\b2v_inst1|b2v_inst2|q\(1) $ (\b2v_inst1|b2v_inst2|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst2|q\(0),
	datac => \b2v_inst1|b2v_inst2|q\(1),
	datad => \b2v_inst1|b2v_inst2|q\(3),
	combout => \b2v_inst1|b2v_inst14|Mux7~0_combout\);

-- Location: LCCOMB_X27_Y30_N8
\b2v_inst1|b2v_inst14|o[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[2]~28_combout\ = (\b2v_inst1|b2v_inst6|q\(0) & (((\b2v_inst1|b2v_inst6|q\(1))))) # (!\b2v_inst1|b2v_inst6|q\(0) & ((\b2v_inst1|b2v_inst6|q\(1) & (\b2v_inst1|b2v_inst14|Mux7~0_combout\)) # (!\b2v_inst1|b2v_inst6|q\(1) & 
-- ((\b2v_inst1|b2v_inst14|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst14|Mux7~0_combout\,
	datab => \b2v_inst1|b2v_inst14|Mux4~0_combout\,
	datac => \b2v_inst1|b2v_inst6|q\(0),
	datad => \b2v_inst1|b2v_inst6|q\(1),
	combout => \b2v_inst1|b2v_inst14|o[2]~28_combout\);

-- Location: LCCOMB_X27_Y30_N6
\b2v_inst1|b2v_inst14|o[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[2]~29_combout\ = (\b2v_inst1|b2v_inst14|o[2]~28_combout\ & ((\b2v_inst1|b2v_inst14|Mux9~0_combout\) # ((!\b2v_inst1|b2v_inst6|q\(0))))) # (!\b2v_inst1|b2v_inst14|o[2]~28_combout\ & (((\b2v_inst1|b2v_inst6|q\(0) & 
-- \b2v_inst1|b2v_inst14|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst14|Mux9~0_combout\,
	datab => \b2v_inst1|b2v_inst14|o[2]~28_combout\,
	datac => \b2v_inst1|b2v_inst6|q\(0),
	datad => \b2v_inst1|b2v_inst14|Mux5~0_combout\,
	combout => \b2v_inst1|b2v_inst14|o[2]~29_combout\);

-- Location: LCCOMB_X28_Y30_N18
\b2v_inst1|b2v_inst14|o[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[2]~30_combout\ = (\b2v_inst1|b2v_inst14|o[3]~8_combout\ & (((\b2v_inst1|b2v_inst14|o[2]~29_combout\) # (!\b2v_inst1|b2v_inst14|o[3]~7_combout\)))) # (!\b2v_inst1|b2v_inst14|o[3]~8_combout\ & (\b2v_inst1|b2v_inst2|q\(2) & 
-- ((\b2v_inst1|b2v_inst14|o[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst2|q\(2),
	datab => \b2v_inst1|b2v_inst14|o[3]~8_combout\,
	datac => \b2v_inst1|b2v_inst14|o[2]~29_combout\,
	datad => \b2v_inst1|b2v_inst14|o[3]~7_combout\,
	combout => \b2v_inst1|b2v_inst14|o[2]~30_combout\);

-- Location: LCCOMB_X28_Y30_N20
\b2v_inst1|b2v_inst14|o[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[2]~31_combout\ = (\b2v_inst1|b2v_inst14|o[3]~10_combout\ & (\b2v_inst1|b2v_inst2|q\(1) $ (((\b2v_inst1|b2v_inst2|q\(2) & \b2v_inst1|b2v_inst14|o[2]~30_combout\))))) # (!\b2v_inst1|b2v_inst14|o[3]~10_combout\ & 
-- (((\b2v_inst1|b2v_inst14|o[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst2|q\(2),
	datab => \b2v_inst1|b2v_inst2|q\(1),
	datac => \b2v_inst1|b2v_inst14|o[3]~10_combout\,
	datad => \b2v_inst1|b2v_inst14|o[2]~30_combout\,
	combout => \b2v_inst1|b2v_inst14|o[2]~31_combout\);

-- Location: LCCOMB_X28_Y30_N22
\b2v_inst1|b2v_inst14|o[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[2]~32_combout\ = (\b2v_inst1|b2v_inst14|o[2]~27_combout\) # ((!\b2v_inst1|b2v_inst6|q\(3) & \b2v_inst1|b2v_inst14|o[2]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst14|o[2]~27_combout\,
	datac => \b2v_inst1|b2v_inst6|q\(3),
	datad => \b2v_inst1|b2v_inst14|o[2]~31_combout\,
	combout => \b2v_inst1|b2v_inst14|o[2]~32_combout\);

-- Location: LCCOMB_X30_Y32_N14
\b2v_inst1|b2v_inst16|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|Mux3~0_combout\ = \b2v_inst1|b2v_inst4|q\(1) $ (\b2v_inst1|b2v_inst4|q\(2) $ (\b2v_inst1|b2v_inst4|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst4|q\(1),
	datab => \b2v_inst1|b2v_inst4|q\(2),
	datad => \b2v_inst1|b2v_inst4|q\(3),
	combout => \b2v_inst1|b2v_inst16|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y32_N30
\b2v_inst1|b2v_inst16|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|Mux0~0_combout\ = \b2v_inst1|b2v_inst4|q\(2) $ (\b2v_inst1|b2v_inst4|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst4|q\(2),
	datad => \b2v_inst1|b2v_inst4|q\(3),
	combout => \b2v_inst1|b2v_inst16|Mux0~0_combout\);

-- Location: LCCOMB_X30_Y32_N24
\b2v_inst1|b2v_inst16|o[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[2]~25_combout\ = (\b2v_inst1|b2v_inst8|q\(1) & ((\b2v_inst1|b2v_inst16|Mux3~0_combout\) # ((\b2v_inst1|b2v_inst8|q\(0))))) # (!\b2v_inst1|b2v_inst8|q\(1) & (((\b2v_inst1|b2v_inst16|Mux0~0_combout\ & !\b2v_inst1|b2v_inst8|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst16|Mux3~0_combout\,
	datab => \b2v_inst1|b2v_inst16|Mux0~0_combout\,
	datac => \b2v_inst1|b2v_inst8|q\(1),
	datad => \b2v_inst1|b2v_inst8|q\(0),
	combout => \b2v_inst1|b2v_inst16|o[2]~25_combout\);

-- Location: LCCOMB_X30_Y32_N10
\b2v_inst1|b2v_inst16|o[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[2]~26_combout\ = (\b2v_inst1|b2v_inst8|q\(0) & (\b2v_inst1|b2v_inst4|q\(3) $ (((\b2v_inst1|b2v_inst4|q\(1) & \b2v_inst1|b2v_inst16|o[2]~25_combout\))))) # (!\b2v_inst1|b2v_inst8|q\(0) & (((\b2v_inst1|b2v_inst16|o[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst4|q\(3),
	datab => \b2v_inst1|b2v_inst4|q\(1),
	datac => \b2v_inst1|b2v_inst8|q\(0),
	datad => \b2v_inst1|b2v_inst16|o[2]~25_combout\,
	combout => \b2v_inst1|b2v_inst16|o[2]~26_combout\);

-- Location: LCCOMB_X28_Y32_N12
\b2v_inst1|b2v_inst16|o[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[2]~23_combout\ = (\b2v_inst1|b2v_inst8|q\(1) & (((\b2v_inst1|b2v_inst8|q\(0))))) # (!\b2v_inst1|b2v_inst8|q\(1) & (\b2v_inst1|b2v_inst4|q\(0) $ (((\b2v_inst1|b2v_inst4|q\(2) & !\b2v_inst1|b2v_inst8|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst8|q\(1),
	datab => \b2v_inst1|b2v_inst4|q\(2),
	datac => \b2v_inst1|b2v_inst8|q\(0),
	datad => \b2v_inst1|b2v_inst4|q\(0),
	combout => \b2v_inst1|b2v_inst16|o[2]~23_combout\);

-- Location: LCCOMB_X29_Y32_N18
\b2v_inst1|b2v_inst16|o[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[2]~24_combout\ = (\b2v_inst1|b2v_inst8|q\(1) & (\b2v_inst1|b2v_inst16|Mux8~0_combout\ $ (((\b2v_inst1|b2v_inst4|q\(2) & !\b2v_inst1|b2v_inst16|o[2]~23_combout\))))) # (!\b2v_inst1|b2v_inst8|q\(1) & 
-- (((\b2v_inst1|b2v_inst16|o[2]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst8|q\(1),
	datab => \b2v_inst1|b2v_inst4|q\(2),
	datac => \b2v_inst1|b2v_inst16|Mux8~0_combout\,
	datad => \b2v_inst1|b2v_inst16|o[2]~23_combout\,
	combout => \b2v_inst1|b2v_inst16|o[2]~24_combout\);

-- Location: LCCOMB_X29_Y32_N8
\b2v_inst1|b2v_inst16|o[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[2]~27_combout\ = (\b2v_inst1|b2v_inst8|q\(3) & ((\b2v_inst1|b2v_inst8|q\(2) & ((\b2v_inst1|b2v_inst16|o[2]~24_combout\))) # (!\b2v_inst1|b2v_inst8|q\(2) & (\b2v_inst1|b2v_inst16|o[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst8|q\(2),
	datab => \b2v_inst1|b2v_inst8|q\(3),
	datac => \b2v_inst1|b2v_inst16|o[2]~26_combout\,
	datad => \b2v_inst1|b2v_inst16|o[2]~24_combout\,
	combout => \b2v_inst1|b2v_inst16|o[2]~27_combout\);

-- Location: LCCOMB_X30_Y32_N26
\b2v_inst1|b2v_inst16|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|Mux7~0_combout\ = \b2v_inst1|b2v_inst4|q\(1) $ (\b2v_inst1|b2v_inst4|q\(0) $ (\b2v_inst1|b2v_inst4|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst4|q\(1),
	datac => \b2v_inst1|b2v_inst4|q\(0),
	datad => \b2v_inst1|b2v_inst4|q\(3),
	combout => \b2v_inst1|b2v_inst16|Mux7~0_combout\);

-- Location: LCCOMB_X30_Y32_N20
\b2v_inst1|b2v_inst16|o[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[2]~28_combout\ = (\b2v_inst1|b2v_inst8|q\(1) & (((\b2v_inst1|b2v_inst16|Mux7~0_combout\) # (\b2v_inst1|b2v_inst8|q\(0))))) # (!\b2v_inst1|b2v_inst8|q\(1) & (\b2v_inst1|b2v_inst16|Mux4~0_combout\ & ((!\b2v_inst1|b2v_inst8|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst8|q\(1),
	datab => \b2v_inst1|b2v_inst16|Mux4~0_combout\,
	datac => \b2v_inst1|b2v_inst16|Mux7~0_combout\,
	datad => \b2v_inst1|b2v_inst8|q\(0),
	combout => \b2v_inst1|b2v_inst16|o[2]~28_combout\);

-- Location: LCCOMB_X30_Y32_N22
\b2v_inst1|b2v_inst16|o[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[2]~29_combout\ = (\b2v_inst1|b2v_inst8|q\(0) & ((\b2v_inst1|b2v_inst16|o[2]~28_combout\ & ((\b2v_inst1|b2v_inst16|Mux9~0_combout\))) # (!\b2v_inst1|b2v_inst16|o[2]~28_combout\ & (\b2v_inst1|b2v_inst16|Mux5~0_combout\)))) # 
-- (!\b2v_inst1|b2v_inst8|q\(0) & (((\b2v_inst1|b2v_inst16|o[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst8|q\(0),
	datab => \b2v_inst1|b2v_inst16|Mux5~0_combout\,
	datac => \b2v_inst1|b2v_inst16|Mux9~0_combout\,
	datad => \b2v_inst1|b2v_inst16|o[2]~28_combout\,
	combout => \b2v_inst1|b2v_inst16|o[2]~29_combout\);

-- Location: LCCOMB_X29_Y32_N6
\b2v_inst1|b2v_inst16|o[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[2]~30_combout\ = (\b2v_inst1|b2v_inst16|o[2]~8_combout\ & (((\b2v_inst1|b2v_inst16|o[2]~29_combout\) # (!\b2v_inst1|b2v_inst16|o[2]~7_combout\)))) # (!\b2v_inst1|b2v_inst16|o[2]~8_combout\ & (\b2v_inst1|b2v_inst4|q\(2) & 
-- (\b2v_inst1|b2v_inst16|o[2]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst4|q\(2),
	datab => \b2v_inst1|b2v_inst16|o[2]~8_combout\,
	datac => \b2v_inst1|b2v_inst16|o[2]~7_combout\,
	datad => \b2v_inst1|b2v_inst16|o[2]~29_combout\,
	combout => \b2v_inst1|b2v_inst16|o[2]~30_combout\);

-- Location: LCCOMB_X29_Y32_N24
\b2v_inst1|b2v_inst16|o[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[2]~31_combout\ = (\b2v_inst1|b2v_inst16|o[2]~10_combout\ & (\b2v_inst1|b2v_inst4|q\(1) $ (((\b2v_inst1|b2v_inst4|q\(2) & \b2v_inst1|b2v_inst16|o[2]~30_combout\))))) # (!\b2v_inst1|b2v_inst16|o[2]~10_combout\ & 
-- (((\b2v_inst1|b2v_inst16|o[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst4|q\(2),
	datab => \b2v_inst1|b2v_inst4|q\(1),
	datac => \b2v_inst1|b2v_inst16|o[2]~10_combout\,
	datad => \b2v_inst1|b2v_inst16|o[2]~30_combout\,
	combout => \b2v_inst1|b2v_inst16|o[2]~31_combout\);

-- Location: LCCOMB_X29_Y32_N22
\b2v_inst1|b2v_inst16|o[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[2]~32_combout\ = (\b2v_inst1|b2v_inst16|o[2]~27_combout\) # ((!\b2v_inst1|b2v_inst8|q\(3) & \b2v_inst1|b2v_inst16|o[2]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst8|q\(3),
	datac => \b2v_inst1|b2v_inst16|o[2]~27_combout\,
	datad => \b2v_inst1|b2v_inst16|o[2]~31_combout\,
	combout => \b2v_inst1|b2v_inst16|o[2]~32_combout\);

-- Location: LCCOMB_X29_Y28_N2
\b2v_inst1|b2v_inst25|c[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst25|c\(2) = \b2v_inst1|b2v_inst13|o[2]~32_combout\ $ (\b2v_inst1|b2v_inst15|o[2]~32_combout\ $ (\b2v_inst1|b2v_inst14|o[2]~32_combout\ $ (\b2v_inst1|b2v_inst16|o[2]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst13|o[2]~32_combout\,
	datab => \b2v_inst1|b2v_inst15|o[2]~32_combout\,
	datac => \b2v_inst1|b2v_inst14|o[2]~32_combout\,
	datad => \b2v_inst1|b2v_inst16|o[2]~32_combout\,
	combout => \b2v_inst1|b2v_inst25|c\(2));

-- Location: LCCOMB_X30_Y28_N18
\b2v_inst1|b2v_inst21|o[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[3]~33_combout\ = (\b2v_inst1|b2v_inst32|o[1]~2_combout\ & (\b2v_inst1|b2v_inst32|o[0]~1_combout\)) # (!\b2v_inst1|b2v_inst32|o[1]~2_combout\ & (\b2v_inst1|b2v_inst25|c\(1) $ (((\b2v_inst1|b2v_inst32|o[0]~1_combout\ & 
-- \b2v_inst1|b2v_inst25|c\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst32|o[0]~1_combout\,
	datab => \b2v_inst1|b2v_inst25|c\(3),
	datac => \b2v_inst1|b2v_inst32|o[1]~2_combout\,
	datad => \b2v_inst1|b2v_inst25|c\(1),
	combout => \b2v_inst1|b2v_inst21|o[3]~33_combout\);

-- Location: LCCOMB_X30_Y28_N24
\b2v_inst1|b2v_inst21|o[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[3]~34_combout\ = (\b2v_inst1|b2v_inst32|o[1]~2_combout\ & (\b2v_inst1|b2v_inst21|Mux2~0_combout\ $ (((\b2v_inst1|b2v_inst25|c\(3) & \b2v_inst1|b2v_inst21|o[3]~33_combout\))))) # (!\b2v_inst1|b2v_inst32|o[1]~2_combout\ & 
-- (((\b2v_inst1|b2v_inst21|o[3]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst32|o[1]~2_combout\,
	datab => \b2v_inst1|b2v_inst25|c\(3),
	datac => \b2v_inst1|b2v_inst21|Mux2~0_combout\,
	datad => \b2v_inst1|b2v_inst21|o[3]~33_combout\,
	combout => \b2v_inst1|b2v_inst21|o[3]~34_combout\);

-- Location: LCCOMB_X30_Y28_N10
\b2v_inst1|b2v_inst21|o[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[3]~35_combout\ = (\b2v_inst1|b2v_inst21|o[0]~7_combout\ & ((\b2v_inst1|b2v_inst21|o[0]~8_combout\ & ((\b2v_inst1|b2v_inst21|o[3]~34_combout\))) # (!\b2v_inst1|b2v_inst21|o[0]~8_combout\ & (\b2v_inst1|b2v_inst25|c\(3))))) # 
-- (!\b2v_inst1|b2v_inst21|o[0]~7_combout\ & (((\b2v_inst1|b2v_inst21|o[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst21|o[0]~7_combout\,
	datab => \b2v_inst1|b2v_inst25|c\(3),
	datac => \b2v_inst1|b2v_inst21|o[0]~8_combout\,
	datad => \b2v_inst1|b2v_inst21|o[3]~34_combout\,
	combout => \b2v_inst1|b2v_inst21|o[3]~35_combout\);

-- Location: LCCOMB_X30_Y28_N8
\b2v_inst1|b2v_inst21|o[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[3]~36_combout\ = (\b2v_inst1|b2v_inst21|o[0]~10_combout\ & (\b2v_inst1|b2v_inst25|c\(2) $ (((\b2v_inst1|b2v_inst25|c\(3) & \b2v_inst1|b2v_inst21|o[3]~35_combout\))))) # (!\b2v_inst1|b2v_inst21|o[0]~10_combout\ & 
-- (((\b2v_inst1|b2v_inst21|o[3]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst25|c\(2),
	datab => \b2v_inst1|b2v_inst25|c\(3),
	datac => \b2v_inst1|b2v_inst21|o[0]~10_combout\,
	datad => \b2v_inst1|b2v_inst21|o[3]~35_combout\,
	combout => \b2v_inst1|b2v_inst21|o[3]~36_combout\);

-- Location: LCCOMB_X30_Y28_N20
\b2v_inst1|b2v_inst21|o[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[3]~39_combout\ = (\b2v_inst1|b2v_inst32|o[0]~1_combout\ & (\b2v_inst1|b2v_inst32|o[1]~2_combout\)) # (!\b2v_inst1|b2v_inst32|o[0]~1_combout\ & ((\b2v_inst1|b2v_inst32|o[1]~2_combout\ & (\b2v_inst1|b2v_inst21|Mux5~0_combout\)) # 
-- (!\b2v_inst1|b2v_inst32|o[1]~2_combout\ & ((\b2v_inst1|b2v_inst21|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst32|o[0]~1_combout\,
	datab => \b2v_inst1|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst1|b2v_inst21|Mux5~0_combout\,
	datad => \b2v_inst1|b2v_inst21|Mux4~0_combout\,
	combout => \b2v_inst1|b2v_inst21|o[3]~39_combout\);

-- Location: LCCOMB_X30_Y28_N22
\b2v_inst1|b2v_inst21|o[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[3]~40_combout\ = (\b2v_inst1|b2v_inst32|o[0]~1_combout\ & (\b2v_inst1|b2v_inst25|c\(0) $ (((\b2v_inst1|b2v_inst21|o[3]~39_combout\ & \b2v_inst1|b2v_inst25|c\(2)))))) # (!\b2v_inst1|b2v_inst32|o[0]~1_combout\ & 
-- (\b2v_inst1|b2v_inst21|o[3]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst32|o[0]~1_combout\,
	datab => \b2v_inst1|b2v_inst21|o[3]~39_combout\,
	datac => \b2v_inst1|b2v_inst25|c\(0),
	datad => \b2v_inst1|b2v_inst25|c\(2),
	combout => \b2v_inst1|b2v_inst21|o[3]~40_combout\);

-- Location: LCCOMB_X28_Y28_N18
\b2v_inst1|b2v_inst21|o[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[3]~37_combout\ = (\b2v_inst1|b2v_inst32|o[1]~2_combout\ & (((\b2v_inst1|b2v_inst32|o[0]~1_combout\)))) # (!\b2v_inst1|b2v_inst32|o[1]~2_combout\ & (\b2v_inst1|b2v_inst21|Mux7~0_combout\ $ (((\b2v_inst1|b2v_inst25|c\(3) & 
-- !\b2v_inst1|b2v_inst32|o[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst25|c\(3),
	datab => \b2v_inst1|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst1|b2v_inst21|Mux7~0_combout\,
	datad => \b2v_inst1|b2v_inst32|o[0]~1_combout\,
	combout => \b2v_inst1|b2v_inst21|o[3]~37_combout\);

-- Location: LCCOMB_X30_Y28_N2
\b2v_inst1|b2v_inst21|o[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[3]~38_combout\ = (\b2v_inst1|b2v_inst32|o[1]~2_combout\ & ((\b2v_inst1|b2v_inst21|o[3]~37_combout\ & ((\b2v_inst1|b2v_inst21|Mux10~0_combout\))) # (!\b2v_inst1|b2v_inst21|o[3]~37_combout\ & 
-- (\b2v_inst1|b2v_inst21|Mux9~0_combout\)))) # (!\b2v_inst1|b2v_inst32|o[1]~2_combout\ & (((\b2v_inst1|b2v_inst21|o[3]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst21|Mux9~0_combout\,
	datab => \b2v_inst1|b2v_inst32|o[1]~2_combout\,
	datac => \b2v_inst1|b2v_inst21|Mux10~0_combout\,
	datad => \b2v_inst1|b2v_inst21|o[3]~37_combout\,
	combout => \b2v_inst1|b2v_inst21|o[3]~38_combout\);

-- Location: LCCOMB_X30_Y28_N28
\b2v_inst1|b2v_inst21|o[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst21|o[3]~41_combout\ = (\b2v_inst1|b2v_inst32|o[3]~0_combout\ & ((\b2v_inst1|b2v_inst32|o[2]~3_combout\ & ((\b2v_inst1|b2v_inst21|o[3]~38_combout\))) # (!\b2v_inst1|b2v_inst32|o[2]~3_combout\ & (\b2v_inst1|b2v_inst21|o[3]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst32|o[3]~0_combout\,
	datab => \b2v_inst1|b2v_inst32|o[2]~3_combout\,
	datac => \b2v_inst1|b2v_inst21|o[3]~40_combout\,
	datad => \b2v_inst1|b2v_inst21|o[3]~38_combout\,
	combout => \b2v_inst1|b2v_inst21|o[3]~41_combout\);

-- Location: LCCOMB_X30_Y28_N0
\b2v_inst1|b2v_inst7|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst7|q[3]~1_combout\ = (\b2v_inst|WideOr2~0_combout\ & ((\b2v_inst1|b2v_inst21|o[3]~41_combout\) # ((!\b2v_inst1|b2v_inst32|o[3]~0_combout\ & \b2v_inst1|b2v_inst21|o[3]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|WideOr2~0_combout\,
	datab => \b2v_inst1|b2v_inst32|o[3]~0_combout\,
	datac => \b2v_inst1|b2v_inst21|o[3]~36_combout\,
	datad => \b2v_inst1|b2v_inst21|o[3]~41_combout\,
	combout => \b2v_inst1|b2v_inst7|q[3]~1_combout\);

-- Location: LCCOMB_X27_Y29_N24
\b2v_inst1|b2v_inst20|o[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|o[3]~6_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & ((\b2v_inst1|b2v_inst20|Mux5~0_combout\) # ((\b2v_inst1|b2v_inst21|o[0]~22_combout\)))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (((\b2v_inst1|b2v_inst20|Mux4~0_combout\ 
-- & !\b2v_inst1|b2v_inst21|o[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst20|Mux5~0_combout\,
	datab => \b2v_inst1|b2v_inst20|Mux4~0_combout\,
	datac => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datad => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	combout => \b2v_inst1|b2v_inst20|o[3]~6_combout\);

-- Location: LCCOMB_X27_Y29_N26
\b2v_inst1|b2v_inst20|o[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|o[3]~7_combout\ = (\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (\b2v_inst1|b2v_inst12|q\(0) $ (((!\b2v_inst1|b2v_inst20|o[3]~6_combout\) # (!\b2v_inst1|b2v_inst12|q\(2)))))) # (!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & 
-- (((\b2v_inst1|b2v_inst20|o[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst12|q\(2),
	datab => \b2v_inst1|b2v_inst12|q\(0),
	datac => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datad => \b2v_inst1|b2v_inst20|o[3]~6_combout\,
	combout => \b2v_inst1|b2v_inst20|o[3]~7_combout\);

-- Location: LCCOMB_X26_Y29_N18
\b2v_inst1|b2v_inst20|o[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|o[3]~4_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (((\b2v_inst1|b2v_inst21|o[0]~22_combout\)))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (\b2v_inst1|b2v_inst20|Mux7~0_combout\ $ (((\b2v_inst1|b2v_inst12|q\(3) & 
-- !\b2v_inst1|b2v_inst21|o[0]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst20|Mux7~0_combout\,
	datab => \b2v_inst1|b2v_inst12|q\(3),
	datac => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datad => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	combout => \b2v_inst1|b2v_inst20|o[3]~4_combout\);

-- Location: LCCOMB_X26_Y29_N2
\b2v_inst1|b2v_inst20|o[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|o[3]~5_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & ((\b2v_inst1|b2v_inst20|o[3]~4_combout\ & ((\b2v_inst1|b2v_inst20|Mux10~0_combout\))) # (!\b2v_inst1|b2v_inst20|o[3]~4_combout\ & (\b2v_inst1|b2v_inst20|Mux9~0_combout\)))) 
-- # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (((\b2v_inst1|b2v_inst20|o[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst20|Mux9~0_combout\,
	datab => \b2v_inst1|b2v_inst20|Mux10~0_combout\,
	datac => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datad => \b2v_inst1|b2v_inst20|o[3]~4_combout\,
	combout => \b2v_inst1|b2v_inst20|o[3]~5_combout\);

-- Location: LCCOMB_X27_Y29_N12
\b2v_inst1|b2v_inst8|q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst8|q[3]~0_combout\ = (\b2v_inst1|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst1|b2v_inst21|o[2]~12_combout\ & ((\b2v_inst1|b2v_inst20|o[3]~5_combout\))) # (!\b2v_inst1|b2v_inst21|o[2]~12_combout\ & (\b2v_inst1|b2v_inst20|o[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q[3]~1_combout\,
	datab => \b2v_inst1|b2v_inst21|o[2]~12_combout\,
	datac => \b2v_inst1|b2v_inst20|o[3]~7_combout\,
	datad => \b2v_inst1|b2v_inst20|o[3]~5_combout\,
	combout => \b2v_inst1|b2v_inst8|q[3]~0_combout\);

-- Location: LCCOMB_X27_Y29_N0
\b2v_inst1|b2v_inst20|o[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|o[3]~0_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (((\b2v_inst1|b2v_inst21|o[0]~22_combout\)))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (\b2v_inst1|b2v_inst12|q\(1) $ (((\b2v_inst1|b2v_inst12|q\(3) & 
-- \b2v_inst1|b2v_inst21|o[0]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst12|q\(3),
	datab => \b2v_inst1|b2v_inst12|q\(1),
	datac => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datad => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	combout => \b2v_inst1|b2v_inst20|o[3]~0_combout\);

-- Location: LCCOMB_X27_Y29_N14
\b2v_inst1|b2v_inst20|o[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|o[3]~1_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (\b2v_inst1|b2v_inst20|Mux2~0_combout\ $ (((\b2v_inst1|b2v_inst12|q\(3) & \b2v_inst1|b2v_inst20|o[3]~0_combout\))))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & 
-- (((\b2v_inst1|b2v_inst20|o[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst20|Mux2~0_combout\,
	datab => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datac => \b2v_inst1|b2v_inst12|q\(3),
	datad => \b2v_inst1|b2v_inst20|o[3]~0_combout\,
	combout => \b2v_inst1|b2v_inst20|o[3]~1_combout\);

-- Location: LCCOMB_X27_Y29_N20
\b2v_inst1|b2v_inst20|o[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|o[3]~2_combout\ = (\b2v_inst1|b2v_inst18|o[3]~5_combout\ & (((\b2v_inst1|b2v_inst20|o[3]~1_combout\) # (!\b2v_inst1|b2v_inst18|o[3]~4_combout\)))) # (!\b2v_inst1|b2v_inst18|o[3]~5_combout\ & (\b2v_inst1|b2v_inst12|q\(3) & 
-- ((\b2v_inst1|b2v_inst18|o[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst18|o[3]~5_combout\,
	datab => \b2v_inst1|b2v_inst12|q\(3),
	datac => \b2v_inst1|b2v_inst20|o[3]~1_combout\,
	datad => \b2v_inst1|b2v_inst18|o[3]~4_combout\,
	combout => \b2v_inst1|b2v_inst20|o[3]~2_combout\);

-- Location: LCCOMB_X27_Y29_N6
\b2v_inst1|b2v_inst20|o[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst20|o[3]~3_combout\ = (\b2v_inst1|b2v_inst18|o[3]~38_combout\ & (\b2v_inst1|b2v_inst12|q\(2) $ (((\b2v_inst1|b2v_inst12|q\(3) & \b2v_inst1|b2v_inst20|o[3]~2_combout\))))) # (!\b2v_inst1|b2v_inst18|o[3]~38_combout\ & 
-- (((\b2v_inst1|b2v_inst20|o[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst12|q\(3),
	datab => \b2v_inst1|b2v_inst12|q\(2),
	datac => \b2v_inst1|b2v_inst18|o[3]~38_combout\,
	datad => \b2v_inst1|b2v_inst20|o[3]~2_combout\,
	combout => \b2v_inst1|b2v_inst20|o[3]~3_combout\);

-- Location: LCCOMB_X27_Y29_N28
\b2v_inst1|b2v_inst8|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst8|q[3]~1_combout\ = \b2v_inst1|b2v_inst8|q\(3) $ (((\b2v_inst1|b2v_inst8|q[3]~0_combout\) # ((\b2v_inst1|b2v_inst7|q[1]~0_combout\ & \b2v_inst1|b2v_inst20|o[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst8|q[3]~0_combout\,
	datab => \b2v_inst1|b2v_inst7|q[1]~0_combout\,
	datac => \b2v_inst1|b2v_inst8|q\(3),
	datad => \b2v_inst1|b2v_inst20|o[3]~3_combout\,
	combout => \b2v_inst1|b2v_inst8|q[3]~1_combout\);

-- Location: FF_X27_Y29_N29
\b2v_inst1|b2v_inst8|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|b2v_inst8|q[3]~1_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst8|q\(3));

-- Location: LCCOMB_X30_Y32_N8
\b2v_inst1|b2v_inst16|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|Mux6~0_combout\ = \b2v_inst1|b2v_inst4|q\(0) $ (\b2v_inst1|b2v_inst4|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst4|q\(0),
	datad => \b2v_inst1|b2v_inst4|q\(2),
	combout => \b2v_inst1|b2v_inst16|Mux6~0_combout\);

-- Location: LCCOMB_X30_Y32_N0
\b2v_inst1|b2v_inst16|o[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[1]~18_combout\ = (\b2v_inst1|b2v_inst8|q\(1) & (((\b2v_inst1|b2v_inst8|q\(0))))) # (!\b2v_inst1|b2v_inst8|q\(1) & ((\b2v_inst1|b2v_inst8|q\(0) & (\b2v_inst1|b2v_inst16|Mux3~0_combout\)) # (!\b2v_inst1|b2v_inst8|q\(0) & 
-- ((\b2v_inst1|b2v_inst16|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst16|Mux3~0_combout\,
	datab => \b2v_inst1|b2v_inst8|q\(1),
	datac => \b2v_inst1|b2v_inst16|Mux0~0_combout\,
	datad => \b2v_inst1|b2v_inst8|q\(0),
	combout => \b2v_inst1|b2v_inst16|o[1]~18_combout\);

-- Location: LCCOMB_X30_Y32_N6
\b2v_inst1|b2v_inst16|o[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[1]~19_combout\ = (\b2v_inst1|b2v_inst8|q\(1) & ((\b2v_inst1|b2v_inst16|o[1]~18_combout\ & (\b2v_inst1|b2v_inst16|Mux10~0_combout\)) # (!\b2v_inst1|b2v_inst16|o[1]~18_combout\ & ((\b2v_inst1|b2v_inst16|Mux6~0_combout\))))) # 
-- (!\b2v_inst1|b2v_inst8|q\(1) & (((\b2v_inst1|b2v_inst16|o[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst16|Mux10~0_combout\,
	datab => \b2v_inst1|b2v_inst8|q\(1),
	datac => \b2v_inst1|b2v_inst16|Mux6~0_combout\,
	datad => \b2v_inst1|b2v_inst16|o[1]~18_combout\,
	combout => \b2v_inst1|b2v_inst16|o[1]~19_combout\);

-- Location: LCCOMB_X30_Y32_N12
\b2v_inst1|b2v_inst16|o[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[1]~20_combout\ = (\b2v_inst1|b2v_inst16|o[2]~8_combout\ & (((\b2v_inst1|b2v_inst16|o[1]~19_combout\) # (!\b2v_inst1|b2v_inst16|o[2]~7_combout\)))) # (!\b2v_inst1|b2v_inst16|o[2]~8_combout\ & (\b2v_inst1|b2v_inst4|q\(1) & 
-- (\b2v_inst1|b2v_inst16|o[2]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst4|q\(1),
	datab => \b2v_inst1|b2v_inst16|o[2]~8_combout\,
	datac => \b2v_inst1|b2v_inst16|o[2]~7_combout\,
	datad => \b2v_inst1|b2v_inst16|o[1]~19_combout\,
	combout => \b2v_inst1|b2v_inst16|o[1]~20_combout\);

-- Location: LCCOMB_X30_Y32_N2
\b2v_inst1|b2v_inst16|o[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[1]~21_combout\ = (\b2v_inst1|b2v_inst16|o[2]~10_combout\ & ((\b2v_inst1|b2v_inst16|o[1]~20_combout\ & ((\b2v_inst1|b2v_inst16|Mux7~0_combout\))) # (!\b2v_inst1|b2v_inst16|o[1]~20_combout\ & 
-- (\b2v_inst1|b2v_inst16|Mux4~0_combout\)))) # (!\b2v_inst1|b2v_inst16|o[2]~10_combout\ & (((\b2v_inst1|b2v_inst16|o[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst16|o[2]~10_combout\,
	datab => \b2v_inst1|b2v_inst16|Mux4~0_combout\,
	datac => \b2v_inst1|b2v_inst16|Mux7~0_combout\,
	datad => \b2v_inst1|b2v_inst16|o[1]~20_combout\,
	combout => \b2v_inst1|b2v_inst16|o[1]~21_combout\);

-- Location: LCCOMB_X28_Y32_N18
\b2v_inst1|b2v_inst16|o[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[1]~13_combout\ = (\b2v_inst1|b2v_inst8|q\(1) & (\b2v_inst1|b2v_inst8|q\(0))) # (!\b2v_inst1|b2v_inst8|q\(1) & (\b2v_inst1|b2v_inst4|q\(3) $ (((!\b2v_inst1|b2v_inst8|q\(0) & \b2v_inst1|b2v_inst4|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst8|q\(0),
	datab => \b2v_inst1|b2v_inst4|q\(3),
	datac => \b2v_inst1|b2v_inst4|q\(1),
	datad => \b2v_inst1|b2v_inst8|q\(1),
	combout => \b2v_inst1|b2v_inst16|o[1]~13_combout\);

-- Location: LCCOMB_X28_Y32_N8
\b2v_inst1|b2v_inst16|o[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[1]~14_combout\ = (\b2v_inst1|b2v_inst8|q\(1) & (\b2v_inst1|b2v_inst4|q\(0) $ (((!\b2v_inst1|b2v_inst16|o[1]~13_combout\ & \b2v_inst1|b2v_inst4|q\(1)))))) # (!\b2v_inst1|b2v_inst8|q\(1) & 
-- (((\b2v_inst1|b2v_inst16|o[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst4|q\(0),
	datab => \b2v_inst1|b2v_inst16|o[1]~13_combout\,
	datac => \b2v_inst1|b2v_inst4|q\(1),
	datad => \b2v_inst1|b2v_inst8|q\(1),
	combout => \b2v_inst1|b2v_inst16|o[1]~14_combout\);

-- Location: LCCOMB_X29_Y32_N16
\b2v_inst1|b2v_inst16|o[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[1]~15_combout\ = (\b2v_inst1|b2v_inst8|q\(1) & (((\b2v_inst1|b2v_inst8|q\(0)) # (\b2v_inst1|b2v_inst16|Mux9~0_combout\)))) # (!\b2v_inst1|b2v_inst8|q\(1) & (\b2v_inst1|b2v_inst16|Mux2~0_combout\ & (!\b2v_inst1|b2v_inst8|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst8|q\(1),
	datab => \b2v_inst1|b2v_inst16|Mux2~0_combout\,
	datac => \b2v_inst1|b2v_inst8|q\(0),
	datad => \b2v_inst1|b2v_inst16|Mux9~0_combout\,
	combout => \b2v_inst1|b2v_inst16|o[1]~15_combout\);

-- Location: LCCOMB_X28_Y32_N6
\b2v_inst1|b2v_inst16|o[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[1]~16_combout\ = (\b2v_inst1|b2v_inst8|q\(0) & ((\b2v_inst1|b2v_inst16|o[1]~15_combout\ & (\b2v_inst1|b2v_inst16|Mux5~0_combout\)) # (!\b2v_inst1|b2v_inst16|o[1]~15_combout\ & ((\b2v_inst1|b2v_inst4|q\(2)))))) # 
-- (!\b2v_inst1|b2v_inst8|q\(0) & (((\b2v_inst1|b2v_inst16|o[1]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst16|Mux5~0_combout\,
	datab => \b2v_inst1|b2v_inst4|q\(2),
	datac => \b2v_inst1|b2v_inst8|q\(0),
	datad => \b2v_inst1|b2v_inst16|o[1]~15_combout\,
	combout => \b2v_inst1|b2v_inst16|o[1]~16_combout\);

-- Location: LCCOMB_X28_Y32_N16
\b2v_inst1|b2v_inst16|o[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[1]~17_combout\ = (\b2v_inst1|b2v_inst8|q\(3) & ((\b2v_inst1|b2v_inst8|q\(2) & (\b2v_inst1|b2v_inst16|o[1]~14_combout\)) # (!\b2v_inst1|b2v_inst8|q\(2) & ((\b2v_inst1|b2v_inst16|o[1]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst8|q\(2),
	datab => \b2v_inst1|b2v_inst8|q\(3),
	datac => \b2v_inst1|b2v_inst16|o[1]~14_combout\,
	datad => \b2v_inst1|b2v_inst16|o[1]~16_combout\,
	combout => \b2v_inst1|b2v_inst16|o[1]~17_combout\);

-- Location: LCCOMB_X28_Y32_N22
\b2v_inst1|b2v_inst16|o[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[1]~22_combout\ = (\b2v_inst1|b2v_inst16|o[1]~17_combout\) # ((!\b2v_inst1|b2v_inst8|q\(3) & \b2v_inst1|b2v_inst16|o[1]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst8|q\(3),
	datac => \b2v_inst1|b2v_inst16|o[1]~21_combout\,
	datad => \b2v_inst1|b2v_inst16|o[1]~17_combout\,
	combout => \b2v_inst1|b2v_inst16|o[1]~22_combout\);

-- Location: LCCOMB_X28_Y31_N28
\b2v_inst1|b2v_inst15|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|Mux6~0_combout\ = \b2v_inst1|b2v_inst3|q\(2) $ (\b2v_inst1|b2v_inst3|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|b2v_inst3|q\(2),
	datad => \b2v_inst1|b2v_inst3|q\(0),
	combout => \b2v_inst1|b2v_inst15|Mux6~0_combout\);

-- Location: LCCOMB_X29_Y31_N26
\b2v_inst1|b2v_inst15|o[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[1]~18_combout\ = (\b2v_inst1|b2v_inst7|q\(1) & (((\b2v_inst1|b2v_inst7|q\(0))))) # (!\b2v_inst1|b2v_inst7|q\(1) & ((\b2v_inst1|b2v_inst7|q\(0) & ((\b2v_inst1|b2v_inst15|Mux3~0_combout\))) # (!\b2v_inst1|b2v_inst7|q\(0) & 
-- (\b2v_inst1|b2v_inst15|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst15|Mux0~0_combout\,
	datab => \b2v_inst1|b2v_inst7|q\(1),
	datac => \b2v_inst1|b2v_inst7|q\(0),
	datad => \b2v_inst1|b2v_inst15|Mux3~0_combout\,
	combout => \b2v_inst1|b2v_inst15|o[1]~18_combout\);

-- Location: LCCOMB_X28_Y31_N18
\b2v_inst1|b2v_inst15|o[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[1]~19_combout\ = (\b2v_inst1|b2v_inst7|q\(1) & ((\b2v_inst1|b2v_inst15|o[1]~18_combout\ & ((\b2v_inst1|b2v_inst15|Mux10~0_combout\))) # (!\b2v_inst1|b2v_inst15|o[1]~18_combout\ & (\b2v_inst1|b2v_inst15|Mux6~0_combout\)))) # 
-- (!\b2v_inst1|b2v_inst7|q\(1) & (((\b2v_inst1|b2v_inst15|o[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q\(1),
	datab => \b2v_inst1|b2v_inst15|Mux6~0_combout\,
	datac => \b2v_inst1|b2v_inst15|Mux10~0_combout\,
	datad => \b2v_inst1|b2v_inst15|o[1]~18_combout\,
	combout => \b2v_inst1|b2v_inst15|o[1]~19_combout\);

-- Location: LCCOMB_X28_Y31_N0
\b2v_inst1|b2v_inst15|o[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[1]~20_combout\ = (\b2v_inst1|b2v_inst15|o[3]~8_combout\ & (((\b2v_inst1|b2v_inst15|o[1]~19_combout\) # (!\b2v_inst1|b2v_inst15|o[3]~7_combout\)))) # (!\b2v_inst1|b2v_inst15|o[3]~8_combout\ & (\b2v_inst1|b2v_inst3|q\(1) & 
-- (\b2v_inst1|b2v_inst15|o[3]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst15|o[3]~8_combout\,
	datab => \b2v_inst1|b2v_inst3|q\(1),
	datac => \b2v_inst1|b2v_inst15|o[3]~7_combout\,
	datad => \b2v_inst1|b2v_inst15|o[1]~19_combout\,
	combout => \b2v_inst1|b2v_inst15|o[1]~20_combout\);

-- Location: LCCOMB_X28_Y32_N26
\b2v_inst1|b2v_inst15|o[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[1]~21_combout\ = (\b2v_inst1|b2v_inst15|o[3]~10_combout\ & ((\b2v_inst1|b2v_inst15|o[1]~20_combout\ & ((\b2v_inst1|b2v_inst15|Mux7~0_combout\))) # (!\b2v_inst1|b2v_inst15|o[1]~20_combout\ & 
-- (\b2v_inst1|b2v_inst15|Mux4~0_combout\)))) # (!\b2v_inst1|b2v_inst15|o[3]~10_combout\ & (((\b2v_inst1|b2v_inst15|o[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst15|Mux4~0_combout\,
	datab => \b2v_inst1|b2v_inst15|Mux7~0_combout\,
	datac => \b2v_inst1|b2v_inst15|o[3]~10_combout\,
	datad => \b2v_inst1|b2v_inst15|o[1]~20_combout\,
	combout => \b2v_inst1|b2v_inst15|o[1]~21_combout\);

-- Location: LCCOMB_X27_Y31_N18
\b2v_inst1|b2v_inst15|o[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[1]~13_combout\ = (\b2v_inst1|b2v_inst7|q\(1) & (((\b2v_inst1|b2v_inst7|q\(0))))) # (!\b2v_inst1|b2v_inst7|q\(1) & (\b2v_inst1|b2v_inst3|q\(3) $ (((!\b2v_inst1|b2v_inst7|q\(0) & \b2v_inst1|b2v_inst3|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q\(1),
	datab => \b2v_inst1|b2v_inst3|q\(3),
	datac => \b2v_inst1|b2v_inst7|q\(0),
	datad => \b2v_inst1|b2v_inst3|q\(1),
	combout => \b2v_inst1|b2v_inst15|o[1]~13_combout\);

-- Location: LCCOMB_X27_Y31_N4
\b2v_inst1|b2v_inst15|o[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[1]~14_combout\ = (\b2v_inst1|b2v_inst7|q\(1) & (\b2v_inst1|b2v_inst3|q\(0) $ (((\b2v_inst1|b2v_inst3|q\(1) & !\b2v_inst1|b2v_inst15|o[1]~13_combout\))))) # (!\b2v_inst1|b2v_inst7|q\(1) & 
-- (((\b2v_inst1|b2v_inst15|o[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q\(1),
	datab => \b2v_inst1|b2v_inst3|q\(1),
	datac => \b2v_inst1|b2v_inst3|q\(0),
	datad => \b2v_inst1|b2v_inst15|o[1]~13_combout\,
	combout => \b2v_inst1|b2v_inst15|o[1]~14_combout\);

-- Location: LCCOMB_X27_Y31_N10
\b2v_inst1|b2v_inst15|o[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[1]~15_combout\ = (\b2v_inst1|b2v_inst7|q\(1) & ((\b2v_inst1|b2v_inst7|q\(0)) # ((\b2v_inst1|b2v_inst15|Mux9~0_combout\)))) # (!\b2v_inst1|b2v_inst7|q\(1) & (!\b2v_inst1|b2v_inst7|q\(0) & (\b2v_inst1|b2v_inst15|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q\(1),
	datab => \b2v_inst1|b2v_inst7|q\(0),
	datac => \b2v_inst1|b2v_inst15|Mux2~0_combout\,
	datad => \b2v_inst1|b2v_inst15|Mux9~0_combout\,
	combout => \b2v_inst1|b2v_inst15|o[1]~15_combout\);

-- Location: LCCOMB_X27_Y31_N28
\b2v_inst1|b2v_inst15|o[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[1]~16_combout\ = (\b2v_inst1|b2v_inst7|q\(0) & ((\b2v_inst1|b2v_inst15|o[1]~15_combout\ & (\b2v_inst1|b2v_inst15|Mux5~0_combout\)) # (!\b2v_inst1|b2v_inst15|o[1]~15_combout\ & ((\b2v_inst1|b2v_inst3|q\(2)))))) # 
-- (!\b2v_inst1|b2v_inst7|q\(0) & (((\b2v_inst1|b2v_inst15|o[1]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst15|Mux5~0_combout\,
	datab => \b2v_inst1|b2v_inst3|q\(2),
	datac => \b2v_inst1|b2v_inst7|q\(0),
	datad => \b2v_inst1|b2v_inst15|o[1]~15_combout\,
	combout => \b2v_inst1|b2v_inst15|o[1]~16_combout\);

-- Location: LCCOMB_X27_Y31_N22
\b2v_inst1|b2v_inst15|o[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[1]~17_combout\ = (\b2v_inst1|b2v_inst7|q\(3) & ((\b2v_inst1|b2v_inst7|q\(2) & (\b2v_inst1|b2v_inst15|o[1]~14_combout\)) # (!\b2v_inst1|b2v_inst7|q\(2) & ((\b2v_inst1|b2v_inst15|o[1]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q\(2),
	datab => \b2v_inst1|b2v_inst7|q\(3),
	datac => \b2v_inst1|b2v_inst15|o[1]~14_combout\,
	datad => \b2v_inst1|b2v_inst15|o[1]~16_combout\,
	combout => \b2v_inst1|b2v_inst15|o[1]~17_combout\);

-- Location: LCCOMB_X28_Y32_N4
\b2v_inst1|b2v_inst15|o[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[1]~22_combout\ = (\b2v_inst1|b2v_inst15|o[1]~17_combout\) # ((!\b2v_inst1|b2v_inst7|q\(3) & \b2v_inst1|b2v_inst15|o[1]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst7|q\(3),
	datac => \b2v_inst1|b2v_inst15|o[1]~21_combout\,
	datad => \b2v_inst1|b2v_inst15|o[1]~17_combout\,
	combout => \b2v_inst1|b2v_inst15|o[1]~22_combout\);

-- Location: LCCOMB_X29_Y29_N20
\b2v_inst1|b2v_inst13|o[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[1]~15_combout\ = (\b2v_inst1|b2v_inst5|q\(0) & (((\b2v_inst1|b2v_inst5|q\(1))))) # (!\b2v_inst1|b2v_inst5|q\(0) & ((\b2v_inst1|b2v_inst5|q\(1) & (\b2v_inst1|b2v_inst13|Mux9~0_combout\)) # (!\b2v_inst1|b2v_inst5|q\(1) & 
-- ((\b2v_inst1|b2v_inst13|Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst13|Mux9~0_combout\,
	datab => \b2v_inst1|b2v_inst5|q\(0),
	datac => \b2v_inst1|b2v_inst5|q\(1),
	datad => \b2v_inst1|b2v_inst13|Mux2~0_combout\,
	combout => \b2v_inst1|b2v_inst13|o[1]~15_combout\);

-- Location: LCCOMB_X29_Y29_N4
\b2v_inst1|b2v_inst13|o[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[1]~16_combout\ = (\b2v_inst1|b2v_inst5|q\(0) & ((\b2v_inst1|b2v_inst13|o[1]~15_combout\ & ((\b2v_inst1|b2v_inst13|Mux5~0_combout\))) # (!\b2v_inst1|b2v_inst13|o[1]~15_combout\ & (\b2v_inst1|b2v_inst1|q\(2))))) # 
-- (!\b2v_inst1|b2v_inst5|q\(0) & (((\b2v_inst1|b2v_inst13|o[1]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst5|q\(0),
	datab => \b2v_inst1|b2v_inst1|q\(2),
	datac => \b2v_inst1|b2v_inst13|Mux5~0_combout\,
	datad => \b2v_inst1|b2v_inst13|o[1]~15_combout\,
	combout => \b2v_inst1|b2v_inst13|o[1]~16_combout\);

-- Location: LCCOMB_X30_Y29_N28
\b2v_inst1|b2v_inst13|o[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[1]~13_combout\ = (\b2v_inst1|b2v_inst5|q\(1) & (((\b2v_inst1|b2v_inst5|q\(0))))) # (!\b2v_inst1|b2v_inst5|q\(1) & (\b2v_inst1|b2v_inst1|q\(3) $ (((\b2v_inst1|b2v_inst1|q\(1) & !\b2v_inst1|b2v_inst5|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst1|q\(1),
	datab => \b2v_inst1|b2v_inst5|q\(1),
	datac => \b2v_inst1|b2v_inst5|q\(0),
	datad => \b2v_inst1|b2v_inst1|q\(3),
	combout => \b2v_inst1|b2v_inst13|o[1]~13_combout\);

-- Location: LCCOMB_X30_Y29_N26
\b2v_inst1|b2v_inst13|o[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[1]~14_combout\ = (\b2v_inst1|b2v_inst5|q\(1) & (\b2v_inst1|b2v_inst1|q\(0) $ (((\b2v_inst1|b2v_inst1|q\(1) & !\b2v_inst1|b2v_inst13|o[1]~13_combout\))))) # (!\b2v_inst1|b2v_inst5|q\(1) & 
-- (((\b2v_inst1|b2v_inst13|o[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst1|q\(1),
	datab => \b2v_inst1|b2v_inst1|q\(0),
	datac => \b2v_inst1|b2v_inst5|q\(1),
	datad => \b2v_inst1|b2v_inst13|o[1]~13_combout\,
	combout => \b2v_inst1|b2v_inst13|o[1]~14_combout\);

-- Location: LCCOMB_X29_Y29_N18
\b2v_inst1|b2v_inst13|o[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[1]~17_combout\ = (\b2v_inst1|b2v_inst5|q\(3) & ((\b2v_inst1|b2v_inst5|q\(2) & ((\b2v_inst1|b2v_inst13|o[1]~14_combout\))) # (!\b2v_inst1|b2v_inst5|q\(2) & (\b2v_inst1|b2v_inst13|o[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst5|q\(2),
	datab => \b2v_inst1|b2v_inst5|q\(3),
	datac => \b2v_inst1|b2v_inst13|o[1]~16_combout\,
	datad => \b2v_inst1|b2v_inst13|o[1]~14_combout\,
	combout => \b2v_inst1|b2v_inst13|o[1]~17_combout\);

-- Location: LCCOMB_X28_Y29_N30
\b2v_inst1|b2v_inst13|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|Mux6~0_combout\ = \b2v_inst1|b2v_inst1|q\(0) $ (\b2v_inst1|b2v_inst1|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|b2v_inst1|q\(0),
	datad => \b2v_inst1|b2v_inst1|q\(2),
	combout => \b2v_inst1|b2v_inst13|Mux6~0_combout\);

-- Location: LCCOMB_X28_Y29_N20
\b2v_inst1|b2v_inst13|o[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[1]~18_combout\ = (\b2v_inst1|b2v_inst5|q\(1) & (((\b2v_inst1|b2v_inst5|q\(0))))) # (!\b2v_inst1|b2v_inst5|q\(1) & ((\b2v_inst1|b2v_inst5|q\(0) & ((\b2v_inst1|b2v_inst13|Mux3~0_combout\))) # (!\b2v_inst1|b2v_inst5|q\(0) & 
-- (\b2v_inst1|b2v_inst13|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst5|q\(1),
	datab => \b2v_inst1|b2v_inst13|Mux0~0_combout\,
	datac => \b2v_inst1|b2v_inst5|q\(0),
	datad => \b2v_inst1|b2v_inst13|Mux3~0_combout\,
	combout => \b2v_inst1|b2v_inst13|o[1]~18_combout\);

-- Location: LCCOMB_X28_Y29_N14
\b2v_inst1|b2v_inst13|o[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[1]~19_combout\ = (\b2v_inst1|b2v_inst5|q\(1) & ((\b2v_inst1|b2v_inst13|o[1]~18_combout\ & (\b2v_inst1|b2v_inst13|Mux10~0_combout\)) # (!\b2v_inst1|b2v_inst13|o[1]~18_combout\ & ((\b2v_inst1|b2v_inst13|Mux6~0_combout\))))) # 
-- (!\b2v_inst1|b2v_inst5|q\(1) & (((\b2v_inst1|b2v_inst13|o[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst5|q\(1),
	datab => \b2v_inst1|b2v_inst13|Mux10~0_combout\,
	datac => \b2v_inst1|b2v_inst13|Mux6~0_combout\,
	datad => \b2v_inst1|b2v_inst13|o[1]~18_combout\,
	combout => \b2v_inst1|b2v_inst13|o[1]~19_combout\);

-- Location: LCCOMB_X28_Y29_N12
\b2v_inst1|b2v_inst13|o[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[1]~20_combout\ = (\b2v_inst1|b2v_inst13|o[0]~8_combout\ & (((\b2v_inst1|b2v_inst13|o[1]~19_combout\) # (!\b2v_inst1|b2v_inst13|o[0]~7_combout\)))) # (!\b2v_inst1|b2v_inst13|o[0]~8_combout\ & (\b2v_inst1|b2v_inst1|q\(1) & 
-- ((\b2v_inst1|b2v_inst13|o[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst1|q\(1),
	datab => \b2v_inst1|b2v_inst13|o[1]~19_combout\,
	datac => \b2v_inst1|b2v_inst13|o[0]~8_combout\,
	datad => \b2v_inst1|b2v_inst13|o[0]~7_combout\,
	combout => \b2v_inst1|b2v_inst13|o[1]~20_combout\);

-- Location: LCCOMB_X28_Y32_N28
\b2v_inst1|b2v_inst13|o[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[1]~21_combout\ = (\b2v_inst1|b2v_inst13|o[0]~10_combout\ & ((\b2v_inst1|b2v_inst13|o[1]~20_combout\ & ((\b2v_inst1|b2v_inst13|Mux7~0_combout\))) # (!\b2v_inst1|b2v_inst13|o[1]~20_combout\ & 
-- (\b2v_inst1|b2v_inst13|Mux4~0_combout\)))) # (!\b2v_inst1|b2v_inst13|o[0]~10_combout\ & (((\b2v_inst1|b2v_inst13|o[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst13|Mux4~0_combout\,
	datab => \b2v_inst1|b2v_inst13|Mux7~0_combout\,
	datac => \b2v_inst1|b2v_inst13|o[0]~10_combout\,
	datad => \b2v_inst1|b2v_inst13|o[1]~20_combout\,
	combout => \b2v_inst1|b2v_inst13|o[1]~21_combout\);

-- Location: LCCOMB_X28_Y32_N30
\b2v_inst1|b2v_inst13|o[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[1]~22_combout\ = (\b2v_inst1|b2v_inst13|o[1]~17_combout\) # ((!\b2v_inst1|b2v_inst5|q\(3) & \b2v_inst1|b2v_inst13|o[1]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst5|q\(3),
	datac => \b2v_inst1|b2v_inst13|o[1]~17_combout\,
	datad => \b2v_inst1|b2v_inst13|o[1]~21_combout\,
	combout => \b2v_inst1|b2v_inst13|o[1]~22_combout\);

-- Location: LCCOMB_X26_Y30_N2
\b2v_inst1|b2v_inst14|o[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[1]~15_combout\ = (\b2v_inst1|b2v_inst6|q\(0) & (\b2v_inst1|b2v_inst6|q\(1))) # (!\b2v_inst1|b2v_inst6|q\(0) & ((\b2v_inst1|b2v_inst6|q\(1) & (\b2v_inst1|b2v_inst14|Mux9~0_combout\)) # (!\b2v_inst1|b2v_inst6|q\(1) & 
-- ((\b2v_inst1|b2v_inst14|Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst6|q\(0),
	datab => \b2v_inst1|b2v_inst6|q\(1),
	datac => \b2v_inst1|b2v_inst14|Mux9~0_combout\,
	datad => \b2v_inst1|b2v_inst14|Mux2~0_combout\,
	combout => \b2v_inst1|b2v_inst14|o[1]~15_combout\);

-- Location: LCCOMB_X26_Y30_N8
\b2v_inst1|b2v_inst14|o[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[1]~16_combout\ = (\b2v_inst1|b2v_inst6|q\(0) & ((\b2v_inst1|b2v_inst14|o[1]~15_combout\ & ((\b2v_inst1|b2v_inst14|Mux5~0_combout\))) # (!\b2v_inst1|b2v_inst14|o[1]~15_combout\ & (\b2v_inst1|b2v_inst2|q\(2))))) # 
-- (!\b2v_inst1|b2v_inst6|q\(0) & (((\b2v_inst1|b2v_inst14|o[1]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst2|q\(2),
	datab => \b2v_inst1|b2v_inst14|Mux5~0_combout\,
	datac => \b2v_inst1|b2v_inst6|q\(0),
	datad => \b2v_inst1|b2v_inst14|o[1]~15_combout\,
	combout => \b2v_inst1|b2v_inst14|o[1]~16_combout\);

-- Location: LCCOMB_X26_Y30_N14
\b2v_inst1|b2v_inst14|o[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[1]~13_combout\ = (\b2v_inst1|b2v_inst6|q\(1) & (((\b2v_inst1|b2v_inst6|q\(0))))) # (!\b2v_inst1|b2v_inst6|q\(1) & (\b2v_inst1|b2v_inst2|q\(3) $ (((\b2v_inst1|b2v_inst2|q\(1) & !\b2v_inst1|b2v_inst6|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst2|q\(1),
	datab => \b2v_inst1|b2v_inst6|q\(1),
	datac => \b2v_inst1|b2v_inst2|q\(3),
	datad => \b2v_inst1|b2v_inst6|q\(0),
	combout => \b2v_inst1|b2v_inst14|o[1]~13_combout\);

-- Location: LCCOMB_X26_Y30_N24
\b2v_inst1|b2v_inst14|o[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[1]~14_combout\ = (\b2v_inst1|b2v_inst6|q\(1) & (\b2v_inst1|b2v_inst2|q\(0) $ (((!\b2v_inst1|b2v_inst14|o[1]~13_combout\ & \b2v_inst1|b2v_inst2|q\(1)))))) # (!\b2v_inst1|b2v_inst6|q\(1) & 
-- (((\b2v_inst1|b2v_inst14|o[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst2|q\(0),
	datab => \b2v_inst1|b2v_inst6|q\(1),
	datac => \b2v_inst1|b2v_inst14|o[1]~13_combout\,
	datad => \b2v_inst1|b2v_inst2|q\(1),
	combout => \b2v_inst1|b2v_inst14|o[1]~14_combout\);

-- Location: LCCOMB_X26_Y30_N26
\b2v_inst1|b2v_inst14|o[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[1]~17_combout\ = (\b2v_inst1|b2v_inst6|q\(3) & ((\b2v_inst1|b2v_inst6|q\(2) & ((\b2v_inst1|b2v_inst14|o[1]~14_combout\))) # (!\b2v_inst1|b2v_inst6|q\(2) & (\b2v_inst1|b2v_inst14|o[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst6|q\(2),
	datab => \b2v_inst1|b2v_inst6|q\(3),
	datac => \b2v_inst1|b2v_inst14|o[1]~16_combout\,
	datad => \b2v_inst1|b2v_inst14|o[1]~14_combout\,
	combout => \b2v_inst1|b2v_inst14|o[1]~17_combout\);

-- Location: LCCOMB_X27_Y30_N4
\b2v_inst1|b2v_inst14|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|Mux6~0_combout\ = \b2v_inst1|b2v_inst2|q\(0) $ (\b2v_inst1|b2v_inst2|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst2|q\(0),
	datad => \b2v_inst1|b2v_inst2|q\(2),
	combout => \b2v_inst1|b2v_inst14|Mux6~0_combout\);

-- Location: LCCOMB_X27_Y30_N12
\b2v_inst1|b2v_inst14|o[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[1]~18_combout\ = (\b2v_inst1|b2v_inst6|q\(0) & ((\b2v_inst1|b2v_inst14|Mux3~0_combout\) # ((\b2v_inst1|b2v_inst6|q\(1))))) # (!\b2v_inst1|b2v_inst6|q\(0) & (((\b2v_inst1|b2v_inst14|Mux0~0_combout\ & !\b2v_inst1|b2v_inst6|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst14|Mux3~0_combout\,
	datab => \b2v_inst1|b2v_inst14|Mux0~0_combout\,
	datac => \b2v_inst1|b2v_inst6|q\(0),
	datad => \b2v_inst1|b2v_inst6|q\(1),
	combout => \b2v_inst1|b2v_inst14|o[1]~18_combout\);

-- Location: LCCOMB_X27_Y30_N30
\b2v_inst1|b2v_inst14|o[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[1]~19_combout\ = (\b2v_inst1|b2v_inst6|q\(1) & ((\b2v_inst1|b2v_inst14|o[1]~18_combout\ & ((\b2v_inst1|b2v_inst14|Mux10~0_combout\))) # (!\b2v_inst1|b2v_inst14|o[1]~18_combout\ & (\b2v_inst1|b2v_inst14|Mux6~0_combout\)))) # 
-- (!\b2v_inst1|b2v_inst6|q\(1) & (((\b2v_inst1|b2v_inst14|o[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst6|q\(1),
	datab => \b2v_inst1|b2v_inst14|Mux6~0_combout\,
	datac => \b2v_inst1|b2v_inst14|Mux10~0_combout\,
	datad => \b2v_inst1|b2v_inst14|o[1]~18_combout\,
	combout => \b2v_inst1|b2v_inst14|o[1]~19_combout\);

-- Location: LCCOMB_X27_Y30_N16
\b2v_inst1|b2v_inst14|o[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[1]~20_combout\ = (\b2v_inst1|b2v_inst14|o[3]~7_combout\ & ((\b2v_inst1|b2v_inst14|o[3]~8_combout\ & (\b2v_inst1|b2v_inst14|o[1]~19_combout\)) # (!\b2v_inst1|b2v_inst14|o[3]~8_combout\ & ((\b2v_inst1|b2v_inst2|q\(1)))))) # 
-- (!\b2v_inst1|b2v_inst14|o[3]~7_combout\ & (((\b2v_inst1|b2v_inst14|o[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst14|o[1]~19_combout\,
	datab => \b2v_inst1|b2v_inst2|q\(1),
	datac => \b2v_inst1|b2v_inst14|o[3]~7_combout\,
	datad => \b2v_inst1|b2v_inst14|o[3]~8_combout\,
	combout => \b2v_inst1|b2v_inst14|o[1]~20_combout\);

-- Location: LCCOMB_X27_Y30_N18
\b2v_inst1|b2v_inst14|o[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[1]~21_combout\ = (\b2v_inst1|b2v_inst14|o[3]~10_combout\ & ((\b2v_inst1|b2v_inst14|o[1]~20_combout\ & (\b2v_inst1|b2v_inst14|Mux7~0_combout\)) # (!\b2v_inst1|b2v_inst14|o[1]~20_combout\ & 
-- ((\b2v_inst1|b2v_inst14|Mux4~0_combout\))))) # (!\b2v_inst1|b2v_inst14|o[3]~10_combout\ & (((\b2v_inst1|b2v_inst14|o[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst14|Mux7~0_combout\,
	datab => \b2v_inst1|b2v_inst14|Mux4~0_combout\,
	datac => \b2v_inst1|b2v_inst14|o[3]~10_combout\,
	datad => \b2v_inst1|b2v_inst14|o[1]~20_combout\,
	combout => \b2v_inst1|b2v_inst14|o[1]~21_combout\);

-- Location: LCCOMB_X28_Y32_N20
\b2v_inst1|b2v_inst14|o[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[1]~22_combout\ = (\b2v_inst1|b2v_inst14|o[1]~17_combout\) # ((!\b2v_inst1|b2v_inst6|q\(3) & \b2v_inst1|b2v_inst14|o[1]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst6|q\(3),
	datac => \b2v_inst1|b2v_inst14|o[1]~17_combout\,
	datad => \b2v_inst1|b2v_inst14|o[1]~21_combout\,
	combout => \b2v_inst1|b2v_inst14|o[1]~22_combout\);

-- Location: LCCOMB_X28_Y32_N10
\b2v_inst1|b2v_inst25|c[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst25|c\(1) = \b2v_inst1|b2v_inst16|o[1]~22_combout\ $ (\b2v_inst1|b2v_inst15|o[1]~22_combout\ $ (\b2v_inst1|b2v_inst13|o[1]~22_combout\ $ (\b2v_inst1|b2v_inst14|o[1]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst16|o[1]~22_combout\,
	datab => \b2v_inst1|b2v_inst15|o[1]~22_combout\,
	datac => \b2v_inst1|b2v_inst13|o[1]~22_combout\,
	datad => \b2v_inst1|b2v_inst14|o[1]~22_combout\,
	combout => \b2v_inst1|b2v_inst25|c\(1));

-- Location: FF_X29_Y28_N13
\b2v_inst1|b2v_inst26|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst1|b2v_inst25|c\(1),
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	sload => VCC,
	ena => \b2v_inst|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst26|q\(1));

-- Location: LCCOMB_X32_Y28_N24
\b2v_inst1|b2v_inst32|o[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst32|o[3]~0_combout\ = (\b2v_inst1|b2v_inst26|q\(3) & (\b2v_inst1|b2v_inst26|q\(0) $ (((!\b2v_inst1|b2v_inst26|q\(2)) # (!\b2v_inst1|b2v_inst26|q\(1)))))) # (!\b2v_inst1|b2v_inst26|q\(3) & (\b2v_inst1|b2v_inst26|q\(1) $ 
-- (((\b2v_inst1|b2v_inst26|q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst26|q\(1),
	datab => \b2v_inst1|b2v_inst26|q\(3),
	datac => \b2v_inst1|b2v_inst26|q\(0),
	datad => \b2v_inst1|b2v_inst26|q\(2),
	combout => \b2v_inst1|b2v_inst32|o[3]~0_combout\);

-- Location: LCCOMB_X30_Y28_N30
\b2v_inst1|b2v_inst7|q[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst7|q[1]~0_combout\ = (\b2v_inst|WideOr2~0_combout\ & (!\b2v_inst1|b2v_inst21|o[3]~41_combout\ & ((\b2v_inst1|b2v_inst32|o[3]~0_combout\) # (!\b2v_inst1|b2v_inst21|o[3]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|WideOr2~0_combout\,
	datab => \b2v_inst1|b2v_inst32|o[3]~0_combout\,
	datac => \b2v_inst1|b2v_inst21|o[3]~36_combout\,
	datad => \b2v_inst1|b2v_inst21|o[3]~41_combout\,
	combout => \b2v_inst1|b2v_inst7|q[1]~0_combout\);

-- Location: LCCOMB_X30_Y28_N14
\b2v_inst1|b2v_inst19|o[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|o[3]~35_combout\ = \b2v_inst1|b2v_inst11|q\(1) $ (((\b2v_inst1|b2v_inst11|q\(2) & \b2v_inst1|b2v_inst21|o[1]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst11|q\(1),
	datac => \b2v_inst1|b2v_inst11|q\(2),
	datad => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	combout => \b2v_inst1|b2v_inst19|o[3]~35_combout\);

-- Location: LCCOMB_X29_Y28_N22
\b2v_inst1|b2v_inst19|o[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|o[3]~36_combout\ = (\b2v_inst1|b2v_inst21|o[2]~12_combout\ & (((!\b2v_inst1|b2v_inst21|o[0]~22_combout\)) # (!\b2v_inst1|b2v_inst11|q\(3)))) # (!\b2v_inst1|b2v_inst21|o[2]~12_combout\ & (\b2v_inst1|b2v_inst11|q\(3) $ 
-- (((\b2v_inst1|b2v_inst21|o[0]~22_combout\ & \b2v_inst1|b2v_inst21|o[1]~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst21|o[2]~12_combout\,
	datab => \b2v_inst1|b2v_inst11|q\(3),
	datac => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datad => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	combout => \b2v_inst1|b2v_inst19|o[3]~36_combout\);

-- Location: LCCOMB_X29_Y28_N24
\b2v_inst1|b2v_inst19|o[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|o[3]~6_combout\ = (\b2v_inst1|b2v_inst18|o[3]~4_combout\ & (\b2v_inst1|b2v_inst19|o[3]~36_combout\ $ (((\b2v_inst1|b2v_inst18|o[3]~5_combout\ & !\b2v_inst1|b2v_inst19|o[3]~35_combout\))))) # (!\b2v_inst1|b2v_inst18|o[3]~4_combout\ & 
-- (\b2v_inst1|b2v_inst18|o[3]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst18|o[3]~5_combout\,
	datab => \b2v_inst1|b2v_inst19|o[3]~35_combout\,
	datac => \b2v_inst1|b2v_inst19|o[3]~36_combout\,
	datad => \b2v_inst1|b2v_inst18|o[3]~4_combout\,
	combout => \b2v_inst1|b2v_inst19|o[3]~6_combout\);

-- Location: LCCOMB_X29_Y28_N14
\b2v_inst1|b2v_inst19|o[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|o[3]~7_combout\ = (\b2v_inst1|b2v_inst18|o[3]~38_combout\ & (\b2v_inst1|b2v_inst11|q\(2) $ (((\b2v_inst1|b2v_inst11|q\(3) & \b2v_inst1|b2v_inst19|o[3]~6_combout\))))) # (!\b2v_inst1|b2v_inst18|o[3]~38_combout\ & 
-- (((\b2v_inst1|b2v_inst19|o[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst11|q\(2),
	datab => \b2v_inst1|b2v_inst11|q\(3),
	datac => \b2v_inst1|b2v_inst18|o[3]~38_combout\,
	datad => \b2v_inst1|b2v_inst19|o[3]~6_combout\,
	combout => \b2v_inst1|b2v_inst19|o[3]~7_combout\);

-- Location: LCCOMB_X26_Y29_N20
\b2v_inst1|b2v_inst19|o[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|o[3]~10_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & ((\b2v_inst1|b2v_inst19|Mux5~0_combout\) # ((\b2v_inst1|b2v_inst21|o[0]~22_combout\)))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & 
-- (((\b2v_inst1|b2v_inst19|Mux4~0_combout\ & !\b2v_inst1|b2v_inst21|o[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst19|Mux5~0_combout\,
	datab => \b2v_inst1|b2v_inst19|Mux4~0_combout\,
	datac => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datad => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	combout => \b2v_inst1|b2v_inst19|o[3]~10_combout\);

-- Location: LCCOMB_X26_Y29_N30
\b2v_inst1|b2v_inst19|o[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|o[3]~11_combout\ = (\b2v_inst1|b2v_inst21|o[0]~22_combout\ & (\b2v_inst1|b2v_inst11|q\(0) $ (((\b2v_inst1|b2v_inst11|q\(2) & \b2v_inst1|b2v_inst19|o[3]~10_combout\))))) # (!\b2v_inst1|b2v_inst21|o[0]~22_combout\ & 
-- (((\b2v_inst1|b2v_inst19|o[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst11|q\(2),
	datab => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datac => \b2v_inst1|b2v_inst11|q\(0),
	datad => \b2v_inst1|b2v_inst19|o[3]~10_combout\,
	combout => \b2v_inst1|b2v_inst19|o[3]~11_combout\);

-- Location: LCCOMB_X28_Y27_N20
\b2v_inst1|b2v_inst19|o[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|o[3]~8_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (((\b2v_inst1|b2v_inst21|o[0]~22_combout\)))) # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (\b2v_inst1|b2v_inst19|Mux7~0_combout\ $ (((\b2v_inst1|b2v_inst11|q\(3) & 
-- !\b2v_inst1|b2v_inst21|o[0]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst19|Mux7~0_combout\,
	datab => \b2v_inst1|b2v_inst11|q\(3),
	datac => \b2v_inst1|b2v_inst21|o[0]~22_combout\,
	datad => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	combout => \b2v_inst1|b2v_inst19|o[3]~8_combout\);

-- Location: LCCOMB_X28_Y27_N10
\b2v_inst1|b2v_inst19|o[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst19|o[3]~9_combout\ = (\b2v_inst1|b2v_inst21|o[1]~32_combout\ & ((\b2v_inst1|b2v_inst19|o[3]~8_combout\ & ((\b2v_inst1|b2v_inst19|Mux10~0_combout\))) # (!\b2v_inst1|b2v_inst19|o[3]~8_combout\ & (\b2v_inst1|b2v_inst19|Mux9~0_combout\)))) 
-- # (!\b2v_inst1|b2v_inst21|o[1]~32_combout\ & (((\b2v_inst1|b2v_inst19|o[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst19|Mux9~0_combout\,
	datab => \b2v_inst1|b2v_inst19|Mux10~0_combout\,
	datac => \b2v_inst1|b2v_inst21|o[1]~32_combout\,
	datad => \b2v_inst1|b2v_inst19|o[3]~8_combout\,
	combout => \b2v_inst1|b2v_inst19|o[3]~9_combout\);

-- Location: LCCOMB_X29_Y28_N20
\b2v_inst1|b2v_inst7|q[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst7|q[3]~2_combout\ = (\b2v_inst1|b2v_inst7|q[3]~1_combout\ & ((\b2v_inst1|b2v_inst21|o[2]~12_combout\ & ((\b2v_inst1|b2v_inst19|o[3]~9_combout\))) # (!\b2v_inst1|b2v_inst21|o[2]~12_combout\ & (\b2v_inst1|b2v_inst19|o[3]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst21|o[2]~12_combout\,
	datab => \b2v_inst1|b2v_inst7|q[3]~1_combout\,
	datac => \b2v_inst1|b2v_inst19|o[3]~11_combout\,
	datad => \b2v_inst1|b2v_inst19|o[3]~9_combout\,
	combout => \b2v_inst1|b2v_inst7|q[3]~2_combout\);

-- Location: LCCOMB_X29_Y28_N8
\b2v_inst1|b2v_inst7|q[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst7|q[3]~3_combout\ = \b2v_inst1|b2v_inst7|q\(3) $ (((\b2v_inst1|b2v_inst7|q[3]~2_combout\) # ((\b2v_inst1|b2v_inst7|q[1]~0_combout\ & \b2v_inst1|b2v_inst19|o[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q[1]~0_combout\,
	datab => \b2v_inst1|b2v_inst19|o[3]~7_combout\,
	datac => \b2v_inst1|b2v_inst7|q\(3),
	datad => \b2v_inst1|b2v_inst7|q[3]~2_combout\,
	combout => \b2v_inst1|b2v_inst7|q[3]~3_combout\);

-- Location: FF_X29_Y28_N9
\b2v_inst1|b2v_inst7|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst1|b2v_inst7|q[3]~3_combout\,
	clrn => \b2v_inst|ALT_INV_clearB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|b2v_inst7|q\(3));

-- Location: LCCOMB_X27_Y31_N30
\b2v_inst1|b2v_inst15|o[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[0]~5_combout\ = (\b2v_inst1|b2v_inst7|q\(1) & (((\b2v_inst1|b2v_inst7|q\(0))))) # (!\b2v_inst1|b2v_inst7|q\(1) & (\b2v_inst1|b2v_inst3|q\(2) $ (((\b2v_inst1|b2v_inst3|q\(0) & \b2v_inst1|b2v_inst7|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q\(1),
	datab => \b2v_inst1|b2v_inst3|q\(0),
	datac => \b2v_inst1|b2v_inst7|q\(0),
	datad => \b2v_inst1|b2v_inst3|q\(2),
	combout => \b2v_inst1|b2v_inst15|o[0]~5_combout\);

-- Location: LCCOMB_X27_Y31_N20
\b2v_inst1|b2v_inst15|o[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[0]~6_combout\ = (\b2v_inst1|b2v_inst7|q\(1) & ((\b2v_inst1|b2v_inst15|o[0]~5_combout\ & ((\b2v_inst1|b2v_inst15|Mux5~0_combout\))) # (!\b2v_inst1|b2v_inst15|o[0]~5_combout\ & (\b2v_inst1|b2v_inst15|Mux0~0_combout\)))) # 
-- (!\b2v_inst1|b2v_inst7|q\(1) & (((\b2v_inst1|b2v_inst15|o[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst15|Mux0~0_combout\,
	datab => \b2v_inst1|b2v_inst7|q\(1),
	datac => \b2v_inst1|b2v_inst15|o[0]~5_combout\,
	datad => \b2v_inst1|b2v_inst15|Mux5~0_combout\,
	combout => \b2v_inst1|b2v_inst15|o[0]~6_combout\);

-- Location: LCCOMB_X27_Y31_N26
\b2v_inst1|b2v_inst15|o[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[0]~9_combout\ = (\b2v_inst1|b2v_inst15|o[3]~8_combout\ & (((\b2v_inst1|b2v_inst15|o[0]~6_combout\) # (!\b2v_inst1|b2v_inst15|o[3]~7_combout\)))) # (!\b2v_inst1|b2v_inst15|o[3]~8_combout\ & (\b2v_inst1|b2v_inst3|q\(0) & 
-- (\b2v_inst1|b2v_inst15|o[3]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst3|q\(0),
	datab => \b2v_inst1|b2v_inst15|o[3]~8_combout\,
	datac => \b2v_inst1|b2v_inst15|o[3]~7_combout\,
	datad => \b2v_inst1|b2v_inst15|o[0]~6_combout\,
	combout => \b2v_inst1|b2v_inst15|o[0]~9_combout\);

-- Location: LCCOMB_X27_Y31_N12
\b2v_inst1|b2v_inst15|o[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[0]~11_combout\ = (\b2v_inst1|b2v_inst15|o[3]~10_combout\ & (\b2v_inst1|b2v_inst3|q\(3) $ (((\b2v_inst1|b2v_inst3|q\(0) & \b2v_inst1|b2v_inst15|o[0]~9_combout\))))) # (!\b2v_inst1|b2v_inst15|o[3]~10_combout\ & 
-- (((\b2v_inst1|b2v_inst15|o[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst3|q\(0),
	datab => \b2v_inst1|b2v_inst3|q\(3),
	datac => \b2v_inst1|b2v_inst15|o[0]~9_combout\,
	datad => \b2v_inst1|b2v_inst15|o[3]~10_combout\,
	combout => \b2v_inst1|b2v_inst15|o[0]~11_combout\);

-- Location: LCCOMB_X27_Y31_N24
\b2v_inst1|b2v_inst15|o[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[0]~2_combout\ = (\b2v_inst1|b2v_inst7|q\(0) & (\b2v_inst1|b2v_inst7|q\(1))) # (!\b2v_inst1|b2v_inst7|q\(0) & (\b2v_inst1|b2v_inst3|q\(1) $ (((\b2v_inst1|b2v_inst7|q\(1) & \b2v_inst1|b2v_inst3|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q\(1),
	datab => \b2v_inst1|b2v_inst3|q\(3),
	datac => \b2v_inst1|b2v_inst7|q\(0),
	datad => \b2v_inst1|b2v_inst3|q\(1),
	combout => \b2v_inst1|b2v_inst15|o[0]~2_combout\);

-- Location: LCCOMB_X27_Y31_N14
\b2v_inst1|b2v_inst15|o[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[0]~3_combout\ = (\b2v_inst1|b2v_inst7|q\(0) & (\b2v_inst1|b2v_inst15|Mux8~0_combout\ $ (((\b2v_inst1|b2v_inst15|o[0]~2_combout\ & \b2v_inst1|b2v_inst3|q\(3)))))) # (!\b2v_inst1|b2v_inst7|q\(0) & 
-- (\b2v_inst1|b2v_inst15|o[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q\(0),
	datab => \b2v_inst1|b2v_inst15|o[0]~2_combout\,
	datac => \b2v_inst1|b2v_inst15|Mux8~0_combout\,
	datad => \b2v_inst1|b2v_inst3|q\(3),
	combout => \b2v_inst1|b2v_inst15|o[0]~3_combout\);

-- Location: LCCOMB_X27_Y31_N8
\b2v_inst1|b2v_inst15|o[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[0]~0_combout\ = (\b2v_inst1|b2v_inst7|q\(1) & (\b2v_inst1|b2v_inst7|q\(0))) # (!\b2v_inst1|b2v_inst7|q\(1) & ((\b2v_inst1|b2v_inst7|q\(0) & ((\b2v_inst1|b2v_inst15|Mux10~0_combout\))) # (!\b2v_inst1|b2v_inst7|q\(0) & 
-- (\b2v_inst1|b2v_inst15|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q\(1),
	datab => \b2v_inst1|b2v_inst7|q\(0),
	datac => \b2v_inst1|b2v_inst15|Mux2~0_combout\,
	datad => \b2v_inst1|b2v_inst15|Mux10~0_combout\,
	combout => \b2v_inst1|b2v_inst15|o[0]~0_combout\);

-- Location: LCCOMB_X27_Y31_N2
\b2v_inst1|b2v_inst15|o[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[0]~1_combout\ = (\b2v_inst1|b2v_inst7|q\(1) & ((\b2v_inst1|b2v_inst15|o[0]~0_combout\ & ((\b2v_inst1|b2v_inst15|Mux9~0_combout\))) # (!\b2v_inst1|b2v_inst15|o[0]~0_combout\ & (\b2v_inst1|b2v_inst15|Mux3~0_combout\)))) # 
-- (!\b2v_inst1|b2v_inst7|q\(1) & (((\b2v_inst1|b2v_inst15|o[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q\(1),
	datab => \b2v_inst1|b2v_inst15|Mux3~0_combout\,
	datac => \b2v_inst1|b2v_inst15|o[0]~0_combout\,
	datad => \b2v_inst1|b2v_inst15|Mux9~0_combout\,
	combout => \b2v_inst1|b2v_inst15|o[0]~1_combout\);

-- Location: LCCOMB_X27_Y31_N0
\b2v_inst1|b2v_inst15|o[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[0]~4_combout\ = (\b2v_inst1|b2v_inst7|q\(3) & ((\b2v_inst1|b2v_inst7|q\(2) & ((\b2v_inst1|b2v_inst15|o[0]~1_combout\))) # (!\b2v_inst1|b2v_inst7|q\(2) & (\b2v_inst1|b2v_inst15|o[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst7|q\(2),
	datab => \b2v_inst1|b2v_inst7|q\(3),
	datac => \b2v_inst1|b2v_inst15|o[0]~3_combout\,
	datad => \b2v_inst1|b2v_inst15|o[0]~1_combout\,
	combout => \b2v_inst1|b2v_inst15|o[0]~4_combout\);

-- Location: LCCOMB_X27_Y28_N8
\b2v_inst1|b2v_inst15|o[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst15|o[0]~12_combout\ = (\b2v_inst1|b2v_inst15|o[0]~4_combout\) # ((!\b2v_inst1|b2v_inst7|q\(3) & \b2v_inst1|b2v_inst15|o[0]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst7|q\(3),
	datac => \b2v_inst1|b2v_inst15|o[0]~11_combout\,
	datad => \b2v_inst1|b2v_inst15|o[0]~4_combout\,
	combout => \b2v_inst1|b2v_inst15|o[0]~12_combout\);

-- Location: LCCOMB_X30_Y29_N16
\b2v_inst1|b2v_inst13|o[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[0]~2_combout\ = (\b2v_inst1|b2v_inst5|q\(0) & (((\b2v_inst1|b2v_inst5|q\(1))))) # (!\b2v_inst1|b2v_inst5|q\(0) & (\b2v_inst1|b2v_inst1|q\(1) $ (((\b2v_inst1|b2v_inst1|q\(3) & \b2v_inst1|b2v_inst5|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst1|q\(3),
	datab => \b2v_inst1|b2v_inst1|q\(1),
	datac => \b2v_inst1|b2v_inst5|q\(1),
	datad => \b2v_inst1|b2v_inst5|q\(0),
	combout => \b2v_inst1|b2v_inst13|o[0]~2_combout\);

-- Location: LCCOMB_X30_Y29_N8
\b2v_inst1|b2v_inst13|o[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[0]~3_combout\ = (\b2v_inst1|b2v_inst5|q\(0) & (\b2v_inst1|b2v_inst13|Mux8~0_combout\ $ (((\b2v_inst1|b2v_inst1|q\(3) & \b2v_inst1|b2v_inst13|o[0]~2_combout\))))) # (!\b2v_inst1|b2v_inst5|q\(0) & 
-- (((\b2v_inst1|b2v_inst13|o[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst1|q\(3),
	datab => \b2v_inst1|b2v_inst13|Mux8~0_combout\,
	datac => \b2v_inst1|b2v_inst5|q\(0),
	datad => \b2v_inst1|b2v_inst13|o[0]~2_combout\,
	combout => \b2v_inst1|b2v_inst13|o[0]~3_combout\);

-- Location: LCCOMB_X30_Y29_N20
\b2v_inst1|b2v_inst13|o[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[0]~0_combout\ = (\b2v_inst1|b2v_inst5|q\(1) & (((\b2v_inst1|b2v_inst5|q\(0))))) # (!\b2v_inst1|b2v_inst5|q\(1) & ((\b2v_inst1|b2v_inst5|q\(0) & (\b2v_inst1|b2v_inst13|Mux10~0_combout\)) # (!\b2v_inst1|b2v_inst5|q\(0) & 
-- ((\b2v_inst1|b2v_inst13|Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst13|Mux10~0_combout\,
	datab => \b2v_inst1|b2v_inst5|q\(1),
	datac => \b2v_inst1|b2v_inst13|Mux2~0_combout\,
	datad => \b2v_inst1|b2v_inst5|q\(0),
	combout => \b2v_inst1|b2v_inst13|o[0]~0_combout\);

-- Location: LCCOMB_X30_Y29_N18
\b2v_inst1|b2v_inst13|o[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[0]~1_combout\ = (\b2v_inst1|b2v_inst5|q\(1) & ((\b2v_inst1|b2v_inst13|o[0]~0_combout\ & (\b2v_inst1|b2v_inst13|Mux9~0_combout\)) # (!\b2v_inst1|b2v_inst13|o[0]~0_combout\ & ((\b2v_inst1|b2v_inst13|Mux3~0_combout\))))) # 
-- (!\b2v_inst1|b2v_inst5|q\(1) & (((\b2v_inst1|b2v_inst13|o[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst13|Mux9~0_combout\,
	datab => \b2v_inst1|b2v_inst13|Mux3~0_combout\,
	datac => \b2v_inst1|b2v_inst5|q\(1),
	datad => \b2v_inst1|b2v_inst13|o[0]~0_combout\,
	combout => \b2v_inst1|b2v_inst13|o[0]~1_combout\);

-- Location: LCCOMB_X30_Y29_N30
\b2v_inst1|b2v_inst13|o[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[0]~4_combout\ = (\b2v_inst1|b2v_inst5|q\(3) & ((\b2v_inst1|b2v_inst5|q\(2) & ((\b2v_inst1|b2v_inst13|o[0]~1_combout\))) # (!\b2v_inst1|b2v_inst5|q\(2) & (\b2v_inst1|b2v_inst13|o[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst5|q\(2),
	datab => \b2v_inst1|b2v_inst5|q\(3),
	datac => \b2v_inst1|b2v_inst13|o[0]~3_combout\,
	datad => \b2v_inst1|b2v_inst13|o[0]~1_combout\,
	combout => \b2v_inst1|b2v_inst13|o[0]~4_combout\);

-- Location: LCCOMB_X29_Y29_N2
\b2v_inst1|b2v_inst13|o[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[0]~5_combout\ = (\b2v_inst1|b2v_inst5|q\(1) & (\b2v_inst1|b2v_inst5|q\(0))) # (!\b2v_inst1|b2v_inst5|q\(1) & (\b2v_inst1|b2v_inst1|q\(2) $ (((\b2v_inst1|b2v_inst5|q\(0) & \b2v_inst1|b2v_inst1|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst5|q\(0),
	datab => \b2v_inst1|b2v_inst1|q\(2),
	datac => \b2v_inst1|b2v_inst5|q\(1),
	datad => \b2v_inst1|b2v_inst1|q\(0),
	combout => \b2v_inst1|b2v_inst13|o[0]~5_combout\);

-- Location: LCCOMB_X29_Y29_N12
\b2v_inst1|b2v_inst13|o[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[0]~6_combout\ = (\b2v_inst1|b2v_inst5|q\(1) & ((\b2v_inst1|b2v_inst13|o[0]~5_combout\ & (\b2v_inst1|b2v_inst13|Mux5~0_combout\)) # (!\b2v_inst1|b2v_inst13|o[0]~5_combout\ & ((\b2v_inst1|b2v_inst13|Mux0~0_combout\))))) # 
-- (!\b2v_inst1|b2v_inst5|q\(1) & (((\b2v_inst1|b2v_inst13|o[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst13|Mux5~0_combout\,
	datab => \b2v_inst1|b2v_inst5|q\(1),
	datac => \b2v_inst1|b2v_inst13|Mux0~0_combout\,
	datad => \b2v_inst1|b2v_inst13|o[0]~5_combout\,
	combout => \b2v_inst1|b2v_inst13|o[0]~6_combout\);

-- Location: LCCOMB_X28_Y29_N16
\b2v_inst1|b2v_inst13|o[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[0]~9_combout\ = (\b2v_inst1|b2v_inst13|o[0]~8_combout\ & (((\b2v_inst1|b2v_inst13|o[0]~6_combout\) # (!\b2v_inst1|b2v_inst13|o[0]~7_combout\)))) # (!\b2v_inst1|b2v_inst13|o[0]~8_combout\ & (\b2v_inst1|b2v_inst1|q\(0) & 
-- ((\b2v_inst1|b2v_inst13|o[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst13|o[0]~8_combout\,
	datab => \b2v_inst1|b2v_inst1|q\(0),
	datac => \b2v_inst1|b2v_inst13|o[0]~6_combout\,
	datad => \b2v_inst1|b2v_inst13|o[0]~7_combout\,
	combout => \b2v_inst1|b2v_inst13|o[0]~9_combout\);

-- Location: LCCOMB_X28_Y29_N24
\b2v_inst1|b2v_inst13|o[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[0]~11_combout\ = (\b2v_inst1|b2v_inst13|o[0]~10_combout\ & (\b2v_inst1|b2v_inst1|q\(3) $ (((\b2v_inst1|b2v_inst1|q\(0) & \b2v_inst1|b2v_inst13|o[0]~9_combout\))))) # (!\b2v_inst1|b2v_inst13|o[0]~10_combout\ & 
-- (((\b2v_inst1|b2v_inst13|o[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst13|o[0]~10_combout\,
	datab => \b2v_inst1|b2v_inst1|q\(3),
	datac => \b2v_inst1|b2v_inst1|q\(0),
	datad => \b2v_inst1|b2v_inst13|o[0]~9_combout\,
	combout => \b2v_inst1|b2v_inst13|o[0]~11_combout\);

-- Location: LCCOMB_X27_Y28_N28
\b2v_inst1|b2v_inst13|o[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst13|o[0]~12_combout\ = (\b2v_inst1|b2v_inst13|o[0]~4_combout\) # ((!\b2v_inst1|b2v_inst5|q\(3) & \b2v_inst1|b2v_inst13|o[0]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst13|o[0]~4_combout\,
	datac => \b2v_inst1|b2v_inst5|q\(3),
	datad => \b2v_inst1|b2v_inst13|o[0]~11_combout\,
	combout => \b2v_inst1|b2v_inst13|o[0]~12_combout\);

-- Location: LCCOMB_X26_Y32_N18
\b2v_inst1|b2v_inst16|o[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[0]~5_combout\ = (\b2v_inst1|b2v_inst8|q\(1) & (((\b2v_inst1|b2v_inst8|q\(0))))) # (!\b2v_inst1|b2v_inst8|q\(1) & (\b2v_inst1|b2v_inst4|q\(2) $ (((\b2v_inst1|b2v_inst4|q\(0) & \b2v_inst1|b2v_inst8|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst8|q\(1),
	datab => \b2v_inst1|b2v_inst4|q\(2),
	datac => \b2v_inst1|b2v_inst4|q\(0),
	datad => \b2v_inst1|b2v_inst8|q\(0),
	combout => \b2v_inst1|b2v_inst16|o[0]~5_combout\);

-- Location: LCCOMB_X26_Y32_N0
\b2v_inst1|b2v_inst16|o[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[0]~6_combout\ = (\b2v_inst1|b2v_inst8|q\(1) & ((\b2v_inst1|b2v_inst16|o[0]~5_combout\ & ((\b2v_inst1|b2v_inst16|Mux5~0_combout\))) # (!\b2v_inst1|b2v_inst16|o[0]~5_combout\ & (\b2v_inst1|b2v_inst16|Mux0~0_combout\)))) # 
-- (!\b2v_inst1|b2v_inst8|q\(1) & (((\b2v_inst1|b2v_inst16|o[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst8|q\(1),
	datab => \b2v_inst1|b2v_inst16|Mux0~0_combout\,
	datac => \b2v_inst1|b2v_inst16|Mux5~0_combout\,
	datad => \b2v_inst1|b2v_inst16|o[0]~5_combout\,
	combout => \b2v_inst1|b2v_inst16|o[0]~6_combout\);

-- Location: LCCOMB_X26_Y32_N20
\b2v_inst1|b2v_inst16|o[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[0]~9_combout\ = (\b2v_inst1|b2v_inst16|o[2]~7_combout\ & ((\b2v_inst1|b2v_inst16|o[2]~8_combout\ & ((\b2v_inst1|b2v_inst16|o[0]~6_combout\))) # (!\b2v_inst1|b2v_inst16|o[2]~8_combout\ & (\b2v_inst1|b2v_inst4|q\(0))))) # 
-- (!\b2v_inst1|b2v_inst16|o[2]~7_combout\ & (((\b2v_inst1|b2v_inst16|o[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst16|o[2]~7_combout\,
	datab => \b2v_inst1|b2v_inst4|q\(0),
	datac => \b2v_inst1|b2v_inst16|o[2]~8_combout\,
	datad => \b2v_inst1|b2v_inst16|o[0]~6_combout\,
	combout => \b2v_inst1|b2v_inst16|o[0]~9_combout\);

-- Location: LCCOMB_X26_Y32_N12
\b2v_inst1|b2v_inst16|o[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[0]~11_combout\ = (\b2v_inst1|b2v_inst16|o[2]~10_combout\ & (\b2v_inst1|b2v_inst4|q\(3) $ (((\b2v_inst1|b2v_inst4|q\(0) & \b2v_inst1|b2v_inst16|o[0]~9_combout\))))) # (!\b2v_inst1|b2v_inst16|o[2]~10_combout\ & 
-- (((\b2v_inst1|b2v_inst16|o[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst16|o[2]~10_combout\,
	datab => \b2v_inst1|b2v_inst4|q\(0),
	datac => \b2v_inst1|b2v_inst4|q\(3),
	datad => \b2v_inst1|b2v_inst16|o[0]~9_combout\,
	combout => \b2v_inst1|b2v_inst16|o[0]~11_combout\);

-- Location: LCCOMB_X28_Y32_N0
\b2v_inst1|b2v_inst16|o[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[0]~2_combout\ = (\b2v_inst1|b2v_inst8|q\(0) & (((\b2v_inst1|b2v_inst8|q\(1))))) # (!\b2v_inst1|b2v_inst8|q\(0) & (\b2v_inst1|b2v_inst4|q\(1) $ (((\b2v_inst1|b2v_inst4|q\(3) & \b2v_inst1|b2v_inst8|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst8|q\(0),
	datab => \b2v_inst1|b2v_inst4|q\(1),
	datac => \b2v_inst1|b2v_inst4|q\(3),
	datad => \b2v_inst1|b2v_inst8|q\(1),
	combout => \b2v_inst1|b2v_inst16|o[0]~2_combout\);

-- Location: LCCOMB_X28_Y32_N2
\b2v_inst1|b2v_inst16|o[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[0]~3_combout\ = (\b2v_inst1|b2v_inst8|q\(0) & (\b2v_inst1|b2v_inst16|Mux8~0_combout\ $ (((\b2v_inst1|b2v_inst4|q\(3) & \b2v_inst1|b2v_inst16|o[0]~2_combout\))))) # (!\b2v_inst1|b2v_inst8|q\(0) & 
-- (((\b2v_inst1|b2v_inst16|o[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst8|q\(0),
	datab => \b2v_inst1|b2v_inst4|q\(3),
	datac => \b2v_inst1|b2v_inst16|Mux8~0_combout\,
	datad => \b2v_inst1|b2v_inst16|o[0]~2_combout\,
	combout => \b2v_inst1|b2v_inst16|o[0]~3_combout\);

-- Location: LCCOMB_X29_Y32_N2
\b2v_inst1|b2v_inst16|o[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[0]~0_combout\ = (\b2v_inst1|b2v_inst8|q\(1) & (((\b2v_inst1|b2v_inst8|q\(0))))) # (!\b2v_inst1|b2v_inst8|q\(1) & ((\b2v_inst1|b2v_inst8|q\(0) & ((\b2v_inst1|b2v_inst16|Mux10~0_combout\))) # (!\b2v_inst1|b2v_inst8|q\(0) & 
-- (\b2v_inst1|b2v_inst16|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst8|q\(1),
	datab => \b2v_inst1|b2v_inst16|Mux2~0_combout\,
	datac => \b2v_inst1|b2v_inst8|q\(0),
	datad => \b2v_inst1|b2v_inst16|Mux10~0_combout\,
	combout => \b2v_inst1|b2v_inst16|o[0]~0_combout\);

-- Location: LCCOMB_X29_Y32_N28
\b2v_inst1|b2v_inst16|o[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[0]~1_combout\ = (\b2v_inst1|b2v_inst8|q\(1) & ((\b2v_inst1|b2v_inst16|o[0]~0_combout\ & (\b2v_inst1|b2v_inst16|Mux9~0_combout\)) # (!\b2v_inst1|b2v_inst16|o[0]~0_combout\ & ((\b2v_inst1|b2v_inst16|Mux3~0_combout\))))) # 
-- (!\b2v_inst1|b2v_inst8|q\(1) & (((\b2v_inst1|b2v_inst16|o[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst16|Mux9~0_combout\,
	datab => \b2v_inst1|b2v_inst8|q\(1),
	datac => \b2v_inst1|b2v_inst16|Mux3~0_combout\,
	datad => \b2v_inst1|b2v_inst16|o[0]~0_combout\,
	combout => \b2v_inst1|b2v_inst16|o[0]~1_combout\);

-- Location: LCCOMB_X28_Y32_N24
\b2v_inst1|b2v_inst16|o[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[0]~4_combout\ = (\b2v_inst1|b2v_inst8|q\(3) & ((\b2v_inst1|b2v_inst8|q\(2) & ((\b2v_inst1|b2v_inst16|o[0]~1_combout\))) # (!\b2v_inst1|b2v_inst8|q\(2) & (\b2v_inst1|b2v_inst16|o[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst8|q\(3),
	datab => \b2v_inst1|b2v_inst16|o[0]~3_combout\,
	datac => \b2v_inst1|b2v_inst8|q\(2),
	datad => \b2v_inst1|b2v_inst16|o[0]~1_combout\,
	combout => \b2v_inst1|b2v_inst16|o[0]~4_combout\);

-- Location: LCCOMB_X27_Y28_N14
\b2v_inst1|b2v_inst16|o[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst16|o[0]~12_combout\ = (\b2v_inst1|b2v_inst16|o[0]~4_combout\) # ((\b2v_inst1|b2v_inst16|o[0]~11_combout\ & !\b2v_inst1|b2v_inst8|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst16|o[0]~11_combout\,
	datab => \b2v_inst1|b2v_inst8|q\(3),
	datad => \b2v_inst1|b2v_inst16|o[0]~4_combout\,
	combout => \b2v_inst1|b2v_inst16|o[0]~12_combout\);

-- Location: LCCOMB_X26_Y30_N18
\b2v_inst1|b2v_inst14|o[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[0]~2_combout\ = (\b2v_inst1|b2v_inst6|q\(0) & (((\b2v_inst1|b2v_inst6|q\(1))))) # (!\b2v_inst1|b2v_inst6|q\(0) & (\b2v_inst1|b2v_inst2|q\(1) $ (((\b2v_inst1|b2v_inst6|q\(1) & \b2v_inst1|b2v_inst2|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst2|q\(1),
	datab => \b2v_inst1|b2v_inst6|q\(1),
	datac => \b2v_inst1|b2v_inst2|q\(3),
	datad => \b2v_inst1|b2v_inst6|q\(0),
	combout => \b2v_inst1|b2v_inst14|o[0]~2_combout\);

-- Location: LCCOMB_X26_Y30_N30
\b2v_inst1|b2v_inst14|o[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[0]~3_combout\ = (\b2v_inst1|b2v_inst6|q\(0) & (\b2v_inst1|b2v_inst14|Mux8~0_combout\ $ (((\b2v_inst1|b2v_inst2|q\(3) & \b2v_inst1|b2v_inst14|o[0]~2_combout\))))) # (!\b2v_inst1|b2v_inst6|q\(0) & 
-- (((\b2v_inst1|b2v_inst14|o[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst6|q\(0),
	datab => \b2v_inst1|b2v_inst14|Mux8~0_combout\,
	datac => \b2v_inst1|b2v_inst2|q\(3),
	datad => \b2v_inst1|b2v_inst14|o[0]~2_combout\,
	combout => \b2v_inst1|b2v_inst14|o[0]~3_combout\);

-- Location: LCCOMB_X26_Y30_N10
\b2v_inst1|b2v_inst14|o[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[0]~0_combout\ = (\b2v_inst1|b2v_inst6|q\(0) & ((\b2v_inst1|b2v_inst6|q\(1)) # ((\b2v_inst1|b2v_inst14|Mux10~0_combout\)))) # (!\b2v_inst1|b2v_inst6|q\(0) & (!\b2v_inst1|b2v_inst6|q\(1) & ((\b2v_inst1|b2v_inst14|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst6|q\(0),
	datab => \b2v_inst1|b2v_inst6|q\(1),
	datac => \b2v_inst1|b2v_inst14|Mux10~0_combout\,
	datad => \b2v_inst1|b2v_inst14|Mux2~0_combout\,
	combout => \b2v_inst1|b2v_inst14|o[0]~0_combout\);

-- Location: LCCOMB_X26_Y30_N12
\b2v_inst1|b2v_inst14|o[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[0]~1_combout\ = (\b2v_inst1|b2v_inst6|q\(1) & ((\b2v_inst1|b2v_inst14|o[0]~0_combout\ & (\b2v_inst1|b2v_inst14|Mux9~0_combout\)) # (!\b2v_inst1|b2v_inst14|o[0]~0_combout\ & ((\b2v_inst1|b2v_inst14|Mux3~0_combout\))))) # 
-- (!\b2v_inst1|b2v_inst6|q\(1) & (((\b2v_inst1|b2v_inst14|o[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst14|Mux9~0_combout\,
	datab => \b2v_inst1|b2v_inst6|q\(1),
	datac => \b2v_inst1|b2v_inst14|Mux3~0_combout\,
	datad => \b2v_inst1|b2v_inst14|o[0]~0_combout\,
	combout => \b2v_inst1|b2v_inst14|o[0]~1_combout\);

-- Location: LCCOMB_X26_Y30_N28
\b2v_inst1|b2v_inst14|o[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[0]~4_combout\ = (\b2v_inst1|b2v_inst6|q\(3) & ((\b2v_inst1|b2v_inst6|q\(2) & ((\b2v_inst1|b2v_inst14|o[0]~1_combout\))) # (!\b2v_inst1|b2v_inst6|q\(2) & (\b2v_inst1|b2v_inst14|o[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst6|q\(2),
	datab => \b2v_inst1|b2v_inst6|q\(3),
	datac => \b2v_inst1|b2v_inst14|o[0]~3_combout\,
	datad => \b2v_inst1|b2v_inst14|o[0]~1_combout\,
	combout => \b2v_inst1|b2v_inst14|o[0]~4_combout\);

-- Location: LCCOMB_X26_Y30_N6
\b2v_inst1|b2v_inst14|o[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[0]~5_combout\ = (\b2v_inst1|b2v_inst6|q\(1) & (((\b2v_inst1|b2v_inst6|q\(0))))) # (!\b2v_inst1|b2v_inst6|q\(1) & (\b2v_inst1|b2v_inst2|q\(2) $ (((\b2v_inst1|b2v_inst2|q\(0) & \b2v_inst1|b2v_inst6|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst2|q\(2),
	datab => \b2v_inst1|b2v_inst6|q\(1),
	datac => \b2v_inst1|b2v_inst2|q\(0),
	datad => \b2v_inst1|b2v_inst6|q\(0),
	combout => \b2v_inst1|b2v_inst14|o[0]~5_combout\);

-- Location: LCCOMB_X26_Y30_N4
\b2v_inst1|b2v_inst14|o[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[0]~6_combout\ = (\b2v_inst1|b2v_inst6|q\(1) & ((\b2v_inst1|b2v_inst14|o[0]~5_combout\ & (\b2v_inst1|b2v_inst14|Mux5~0_combout\)) # (!\b2v_inst1|b2v_inst14|o[0]~5_combout\ & ((\b2v_inst1|b2v_inst14|Mux0~0_combout\))))) # 
-- (!\b2v_inst1|b2v_inst6|q\(1) & (((\b2v_inst1|b2v_inst14|o[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst6|q\(1),
	datab => \b2v_inst1|b2v_inst14|Mux5~0_combout\,
	datac => \b2v_inst1|b2v_inst14|Mux0~0_combout\,
	datad => \b2v_inst1|b2v_inst14|o[0]~5_combout\,
	combout => \b2v_inst1|b2v_inst14|o[0]~6_combout\);

-- Location: LCCOMB_X28_Y30_N6
\b2v_inst1|b2v_inst14|o[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[0]~9_combout\ = (\b2v_inst1|b2v_inst14|o[3]~8_combout\ & (((\b2v_inst1|b2v_inst14|o[0]~6_combout\) # (!\b2v_inst1|b2v_inst14|o[3]~7_combout\)))) # (!\b2v_inst1|b2v_inst14|o[3]~8_combout\ & (\b2v_inst1|b2v_inst2|q\(0) & 
-- ((\b2v_inst1|b2v_inst14|o[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst2|q\(0),
	datab => \b2v_inst1|b2v_inst14|o[3]~8_combout\,
	datac => \b2v_inst1|b2v_inst14|o[0]~6_combout\,
	datad => \b2v_inst1|b2v_inst14|o[3]~7_combout\,
	combout => \b2v_inst1|b2v_inst14|o[0]~9_combout\);

-- Location: LCCOMB_X28_Y30_N26
\b2v_inst1|b2v_inst14|o[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[0]~11_combout\ = (\b2v_inst1|b2v_inst14|o[3]~10_combout\ & (\b2v_inst1|b2v_inst2|q\(3) $ (((\b2v_inst1|b2v_inst2|q\(0) & \b2v_inst1|b2v_inst14|o[0]~9_combout\))))) # (!\b2v_inst1|b2v_inst14|o[3]~10_combout\ & 
-- (((\b2v_inst1|b2v_inst14|o[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst14|o[3]~10_combout\,
	datab => \b2v_inst1|b2v_inst2|q\(0),
	datac => \b2v_inst1|b2v_inst2|q\(3),
	datad => \b2v_inst1|b2v_inst14|o[0]~9_combout\,
	combout => \b2v_inst1|b2v_inst14|o[0]~11_combout\);

-- Location: LCCOMB_X27_Y28_N6
\b2v_inst1|b2v_inst14|o[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst14|o[0]~12_combout\ = (\b2v_inst1|b2v_inst14|o[0]~4_combout\) # ((!\b2v_inst1|b2v_inst6|q\(3) & \b2v_inst1|b2v_inst14|o[0]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|b2v_inst6|q\(3),
	datac => \b2v_inst1|b2v_inst14|o[0]~4_combout\,
	datad => \b2v_inst1|b2v_inst14|o[0]~11_combout\,
	combout => \b2v_inst1|b2v_inst14|o[0]~12_combout\);

-- Location: LCCOMB_X27_Y28_N16
\b2v_inst1|b2v_inst25|c[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|b2v_inst25|c\(0) = \b2v_inst1|b2v_inst15|o[0]~12_combout\ $ (\b2v_inst1|b2v_inst13|o[0]~12_combout\ $ (\b2v_inst1|b2v_inst16|o[0]~12_combout\ $ (\b2v_inst1|b2v_inst14|o[0]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst15|o[0]~12_combout\,
	datab => \b2v_inst1|b2v_inst13|o[0]~12_combout\,
	datac => \b2v_inst1|b2v_inst16|o[0]~12_combout\,
	datad => \b2v_inst1|b2v_inst14|o[0]~12_combout\,
	combout => \b2v_inst1|b2v_inst25|c\(0));

-- Location: LCCOMB_X30_Y30_N4
\b2v_inst|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector1~2_combout\ = (!\b2v_inst1|b2v_inst25|c\(0) & (!\b2v_inst1|b2v_inst25|c\(2) & (!\b2v_inst1|b2v_inst25|c\(1) & !\b2v_inst1|b2v_inst25|c\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|b2v_inst25|c\(0),
	datab => \b2v_inst1|b2v_inst25|c\(2),
	datac => \b2v_inst1|b2v_inst25|c\(1),
	datad => \b2v_inst1|b2v_inst25|c\(3),
	combout => \b2v_inst|Selector1~2_combout\);

-- Location: LCCOMB_X30_Y30_N28
\b2v_inst|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector0~2_combout\ = (\Impar~input_o\ & (\b2v_inst|Selector1~2_combout\ & ((\b2v_inst|estadoAtual.localizador~q\) # (\b2v_inst|estadoAtual.localizador2~q\)))) # (!\Impar~input_o\ & ((\b2v_inst|estadoAtual.localizador~q\) # 
-- ((\b2v_inst|estadoAtual.localizador2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Impar~input_o\,
	datab => \b2v_inst|estadoAtual.localizador~q\,
	datac => \b2v_inst|Selector1~2_combout\,
	datad => \b2v_inst|estadoAtual.localizador2~q\,
	combout => \b2v_inst|Selector0~2_combout\);

-- Location: LCCOMB_X30_Y30_N22
\b2v_inst|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector6~0_combout\ = (\b2v_inst|WideOr2~0_combout\ & ((\Impar~input_o\ & (!\b2v_inst|Selector1~2_combout\)) # (!\Impar~input_o\ & ((!\Count8~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Impar~input_o\,
	datab => \b2v_inst|WideOr2~0_combout\,
	datac => \b2v_inst|Selector1~2_combout\,
	datad => \Count8~input_o\,
	combout => \b2v_inst|Selector6~0_combout\);

-- Location: LCCOMB_X29_Y27_N20
\b2v_inst|Selector6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector6~4_combout\ = (\b2v_inst|Selector6~2_combout\) # (((\b2v_inst|Selector6~1_combout\) # (\b2v_inst|Selector6~0_combout\)) # (!\b2v_inst|Selector6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Selector6~2_combout\,
	datab => \b2v_inst|Selector6~3_combout\,
	datac => \b2v_inst|Selector6~1_combout\,
	datad => \b2v_inst|Selector6~0_combout\,
	combout => \b2v_inst|Selector6~4_combout\);

-- Location: LCCOMB_X30_Y30_N12
\b2v_inst|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector5~0_combout\ = (\b2v_inst|estadoAtual.idle2~q\) # ((!\Impar~input_o\ & ((\b2v_inst|estadoAtual.localizador~q\) # (\b2v_inst|estadoAtual.localizador2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Impar~input_o\,
	datab => \b2v_inst|estadoAtual.localizador~q\,
	datac => \b2v_inst|estadoAtual.idle2~q\,
	datad => \b2v_inst|estadoAtual.localizador2~q\,
	combout => \b2v_inst|Selector5~0_combout\);

-- Location: LCCOMB_X29_Y27_N2
\b2v_inst|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector5~1_combout\ = (\b2v_inst|Selector5~0_combout\) # ((\Count4~input_o\ & ((\b2v_inst|estadoAtual.avaliador2~q\))) # (!\Count4~input_o\ & (\b2v_inst|estadoAtual.avaliador~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|estadoAtual.avaliador~q\,
	datab => \Count4~input_o\,
	datac => \b2v_inst|Selector5~0_combout\,
	datad => \b2v_inst|estadoAtual.avaliador2~q\,
	combout => \b2v_inst|Selector5~1_combout\);

-- Location: LCCOMB_X29_Y27_N28
\b2v_inst|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector4~0_combout\ = (!\b2v_inst|estadoAtual.avaliador~q\ & (!\b2v_inst|estadoAtual.clearSyn~q\ & ((!\b2v_inst|estadoAtual.avaliador2~q\) # (!\Count4~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|estadoAtual.avaliador~q\,
	datab => \Count4~input_o\,
	datac => \b2v_inst|estadoAtual.clearSyn~q\,
	datad => \b2v_inst|estadoAtual.avaliador2~q\,
	combout => \b2v_inst|Selector4~0_combout\);

-- Location: LCCOMB_X27_Y31_N16
\b2v_inst|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector4~1_combout\ = (\b2v_inst|estadoAtual.localizador~q\) # (!\b2v_inst|Selector4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|estadoAtual.localizador~q\,
	datad => \b2v_inst|Selector4~0_combout\,
	combout => \b2v_inst|Selector4~1_combout\);

-- Location: LCCOMB_X30_Y31_N10
\b2v_inst|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector3~0_combout\ = (\b2v_inst|estadoAtual.localizador2~q\) # (!\b2v_inst|Selector4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|estadoAtual.localizador2~q\,
	datad => \b2v_inst|Selector4~0_combout\,
	combout => \b2v_inst|Selector3~0_combout\);

-- Location: LCCOMB_X29_Y27_N18
\b2v_inst|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector2~0_combout\ = (\b2v_inst|estadoAtual.store~q\) # ((!\Count4~input_o\ & \b2v_inst|estadoAtual.avaliador2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|estadoAtual.store~q\,
	datac => \Count4~input_o\,
	datad => \b2v_inst|estadoAtual.avaliador2~q\,
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

ww_Omega(0) <= \Omega[0]~output_o\;

ww_Omega(1) <= \Omega[1]~output_o\;

ww_Omega(2) <= \Omega[2]~output_o\;

ww_Omega(3) <= \Omega[3]~output_o\;

ww_Test_state(0) <= \Test_state[0]~output_o\;

ww_Test_state(1) <= \Test_state[1]~output_o\;

ww_Test_state(2) <= \Test_state[2]~output_o\;

ww_Test_state(3) <= \Test_state[3]~output_o\;

ww_Test_state(4) <= \Test_state[4]~output_o\;
END structure;


