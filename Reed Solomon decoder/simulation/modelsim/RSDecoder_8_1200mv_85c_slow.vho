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

-- DATE "09/30/2016 01:43:04"

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

ENTITY 	ChienForney IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	inicia : IN std_logic;
	Input : IN std_logic_vector(3 DOWNTO 0);
	Lamb0 : IN std_logic_vector(3 DOWNTO 0);
	Lamb1 : IN std_logic_vector(3 DOWNTO 0);
	Lamb2 : IN std_logic_vector(3 DOWNTO 0);
	Lamb3 : IN std_logic_vector(3 DOWNTO 0);
	Omega0 : IN std_logic_vector(3 DOWNTO 0);
	Omega1 : IN std_logic_vector(3 DOWNTO 0);
	Omega2 : IN std_logic_vector(3 DOWNTO 0);
	Omega3 : IN std_logic_vector(3 DOWNTO 0);
	pin_name1 : OUT std_logic;
	Decod : OUT std_logic_vector(3 DOWNTO 0)
	);
END ChienForney;

-- Design Ports Information
-- pin_name1	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Decod[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Decod[1]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Decod[2]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Decod[3]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[0]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[1]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[2]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[3]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega0[0]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega2[0]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega1[0]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega3[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega0[2]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega2[2]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega1[2]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega3[2]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega0[3]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega2[3]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega1[3]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega3[3]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lamb2[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lamb0[0]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lamb2[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lamb0[3]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lamb2[2]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lamb0[2]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lamb2[1]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lamb0[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lamb1[1]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lamb3[1]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lamb1[0]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lamb3[0]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lamb1[2]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lamb3[2]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lamb1[3]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lamb3[3]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega0[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega2[1]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega1[1]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega3[1]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inicia	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ChienForney IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_inicia : std_logic;
SIGNAL ww_Input : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Lamb0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Lamb1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Lamb2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Lamb3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Omega0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Omega1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Omega2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Omega3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_pin_name1 : std_logic;
SIGNAL ww_Decod : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pin_name1~output_o\ : std_logic;
SIGNAL \Decod[0]~output_o\ : std_logic;
SIGNAL \Decod[1]~output_o\ : std_logic;
SIGNAL \Decod[2]~output_o\ : std_logic;
SIGNAL \Decod[3]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \inicia~input_o\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|estadoAtual.idle~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|estadoAtual.idle~q\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|estadoAtual.mux2~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst|estadoAtual.mux2~q\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst11|o[2]~1_combout\ : std_logic;
SIGNAL \Lamb2[2]~input_o\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst11|o[1]~2_combout\ : std_logic;
SIGNAL \Lamb2[1]~input_o\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst4|q[0]~feeder_combout\ : std_logic;
SIGNAL \Lamb2[0]~input_o\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst11|o[3]~0_combout\ : std_logic;
SIGNAL \Lamb2[3]~input_o\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst5|q[0]~feeder_combout\ : std_logic;
SIGNAL \Lamb0[0]~input_o\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst10|o[1]~0_combout\ : std_logic;
SIGNAL \Lamb0[1]~input_o\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst5|q[2]~feeder_combout\ : std_logic;
SIGNAL \Lamb0[2]~input_o\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst5|q[3]~feeder_combout\ : std_logic;
SIGNAL \Lamb0[3]~input_o\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst|o[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst9|o[1]~0_combout\ : std_logic;
SIGNAL \Lamb3[1]~input_o\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst9|o[2]~2_combout\ : std_logic;
SIGNAL \Lamb3[2]~input_o\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst9|o[3]~3_combout\ : std_logic;
SIGNAL \Lamb3[3]~input_o\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst9|o[0]~1_combout\ : std_logic;
SIGNAL \Lamb3[0]~input_o\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst8|o[1]~0_combout\ : std_logic;
SIGNAL \Lamb1[1]~input_o\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst6|q[3]~feeder_combout\ : std_logic;
SIGNAL \Lamb1[3]~input_o\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst8|o[2]~1_combout\ : std_logic;
SIGNAL \Lamb1[2]~input_o\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst6|q[0]~feeder_combout\ : std_logic;
SIGNAL \Lamb1[0]~input_o\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|c[0]~0_combout\ : std_logic;
SIGNAL \SYNTHESIZED_WIRE_0~0_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|c[2]~1_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst2|b2v_inst14|c[3]~2_combout\ : std_logic;
SIGNAL \SYNTHESIZED_WIRE_0~1_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[0]~7_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst|o[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[0]~8_combout\ : std_logic;
SIGNAL \b2v_inst|b2v_inst3|b2v_inst4|q[3]~feeder_combout\ : std_logic;
SIGNAL \Omega2[3]~input_o\ : std_logic;
SIGNAL \b2v_inst|b2v_inst3|b2v_inst4|q[0]~feeder_combout\ : std_logic;
SIGNAL \Omega2[0]~input_o\ : std_logic;
SIGNAL \b2v_inst|b2v_inst3|b2v_inst11|o[2]~0_combout\ : std_logic;
SIGNAL \Omega2[2]~input_o\ : std_logic;
SIGNAL \b2v_inst|b2v_inst3|b2v_inst11|o[1]~1_combout\ : std_logic;
SIGNAL \Omega2[1]~input_o\ : std_logic;
SIGNAL \b2v_inst|b2v_inst3|b2v_inst6|q[2]~feeder_combout\ : std_logic;
SIGNAL \Omega1[2]~input_o\ : std_logic;
SIGNAL \b2v_inst|b2v_inst3|b2v_inst6|q[3]~feeder_combout\ : std_logic;
SIGNAL \Omega1[3]~input_o\ : std_logic;
SIGNAL \b2v_inst|b2v_inst3|b2v_inst6|q[0]~feeder_combout\ : std_logic;
SIGNAL \Omega1[0]~input_o\ : std_logic;
SIGNAL \b2v_inst|b2v_inst3|b2v_inst8|o[1]~0_combout\ : std_logic;
SIGNAL \Omega1[1]~input_o\ : std_logic;
SIGNAL \Omega0[1]~input_o\ : std_logic;
SIGNAL \b2v_inst|b2v_inst3|b2v_inst7|q[0]~feeder_combout\ : std_logic;
SIGNAL \Omega3[0]~input_o\ : std_logic;
SIGNAL \b2v_inst|b2v_inst3|b2v_inst9|o[3]~1_combout\ : std_logic;
SIGNAL \Omega3[3]~input_o\ : std_logic;
SIGNAL \b2v_inst|b2v_inst3|b2v_inst9|o[2]~0_combout\ : std_logic;
SIGNAL \Omega3[2]~input_o\ : std_logic;
SIGNAL \b2v_inst|b2v_inst3|b2v_inst9|o[1]~2_combout\ : std_logic;
SIGNAL \Omega3[1]~input_o\ : std_logic;
SIGNAL \b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ : std_logic;
SIGNAL \Omega0[0]~input_o\ : std_logic;
SIGNAL \b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst2|Mux8~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst|o[0]~1_combout\ : std_logic;
SIGNAL \Omega0[3]~input_o\ : std_logic;
SIGNAL \b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst|o[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[0]~11_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[0]~12_combout\ : std_logic;
SIGNAL \Omega0[2]~input_o\ : std_logic;
SIGNAL \b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst2|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst2|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst2|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[0]~9_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst2|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[0]~10_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[0]~13_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[1]~2_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[1]~3_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst2|Mux5~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst2|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[1]~5_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[0]~6_combout\ : std_logic;
SIGNAL \Input[0]~input_o\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[1]~20_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[1]~21_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[1]~18_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[1]~19_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[1]~22_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst2|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[1]~14_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst2|Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[1]~15_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[1]~16_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst2|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[1]~17_combout\ : std_logic;
SIGNAL \Input[1]~input_o\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[2]~29_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[2]~30_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[2]~27_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[2]~28_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[2]~31_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[2]~23_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[2]~24_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[2]~25_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[2]~26_combout\ : std_logic;
SIGNAL \Input[2]~input_o\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[3]~38_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[3]~39_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[3]~36_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[3]~37_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[3]~40_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[3]~32_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[3]~33_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[3]~34_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst3|O[3]~35_combout\ : std_logic;
SIGNAL \Input[3]~input_o\ : std_logic;
SIGNAL \b2v_inst|b2v_inst3|b2v_inst4|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst3|b2v_inst6|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst3|b2v_inst7|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst2|b2v_inst15|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst2|b2v_inst4|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst2|b2v_inst5|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst2|b2v_inst6|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst2|b2v_inst7|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst3|b2v_inst5|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst2|b2v_inst1|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_inicia <= inicia;
ww_Input <= Input;
ww_Lamb0 <= Lamb0;
ww_Lamb1 <= Lamb1;
ww_Lamb2 <= Lamb2;
ww_Lamb3 <= Lamb3;
ww_Omega0 <= Omega0;
ww_Omega1 <= Omega1;
ww_Omega2 <= Omega2;
ww_Omega3 <= Omega3;
pin_name1 <= ww_pin_name1;
Decod <= ww_Decod;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\ <= NOT \b2v_inst|b2v_inst|estadoAtual.mux2~q\;
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X67_Y39_N16
\pin_name1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|b2v_inst|estadoAtual.mux2~q\,
	devoe => ww_devoe,
	o => \pin_name1~output_o\);

-- Location: IOOBUF_X67_Y37_N2
\Decod[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst1|c\(0),
	devoe => ww_devoe,
	o => \Decod[0]~output_o\);

-- Location: IOOBUF_X67_Y37_N23
\Decod[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst1|c\(1),
	devoe => ww_devoe,
	o => \Decod[1]~output_o\);

-- Location: IOOBUF_X67_Y36_N9
\Decod[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst1|c\(2),
	devoe => ww_devoe,
	o => \Decod[2]~output_o\);

-- Location: IOOBUF_X67_Y41_N16
\Decod[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst1|c\(3),
	devoe => ww_devoe,
	o => \Decod[3]~output_o\);

-- Location: IOIBUF_X0_Y21_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X67_Y22_N15
\inicia~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inicia,
	o => \inicia~input_o\);

-- Location: LCCOMB_X60_Y39_N6
\b2v_inst|b2v_inst|estadoAtual.idle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst|estadoAtual.idle~0_combout\ = (\b2v_inst|b2v_inst|estadoAtual.idle~q\) # (\inicia~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	datad => \inicia~input_o\,
	combout => \b2v_inst|b2v_inst|estadoAtual.idle~0_combout\);

-- Location: IOIBUF_X0_Y21_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X60_Y39_N7
\b2v_inst|b2v_inst|estadoAtual.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst|estadoAtual.idle~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst|estadoAtual.idle~q\);

-- Location: LCCOMB_X60_Y39_N16
\b2v_inst|b2v_inst|estadoAtual.mux2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst|estadoAtual.mux2~feeder_combout\ = \b2v_inst|b2v_inst|estadoAtual.idle~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	combout => \b2v_inst|b2v_inst|estadoAtual.mux2~feeder_combout\);

-- Location: FF_X60_Y39_N17
\b2v_inst|b2v_inst|estadoAtual.mux2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst|estadoAtual.mux2~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst|estadoAtual.mux2~q\);

-- Location: LCCOMB_X59_Y39_N30
\b2v_inst|b2v_inst2|b2v_inst11|o[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst11|o[2]~1_combout\ = \b2v_inst|b2v_inst2|b2v_inst4|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst4|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst11|o[2]~1_combout\);

-- Location: IOIBUF_X54_Y43_N8
\Lamb2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lamb2(2),
	o => \Lamb2[2]~input_o\);

-- Location: FF_X59_Y39_N31
\b2v_inst|b2v_inst2|b2v_inst4|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst11|o[2]~1_combout\,
	asdata => \Lamb2[2]~input_o\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst4|q\(2));

-- Location: LCCOMB_X59_Y39_N10
\b2v_inst|b2v_inst2|b2v_inst11|o[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst11|o[1]~2_combout\ = \b2v_inst|b2v_inst2|b2v_inst4|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst4|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst4|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst11|o[1]~2_combout\);

-- Location: IOIBUF_X52_Y43_N29
\Lamb2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lamb2(1),
	o => \Lamb2[1]~input_o\);

-- Location: FF_X59_Y39_N11
\b2v_inst|b2v_inst2|b2v_inst4|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst11|o[1]~2_combout\,
	asdata => \Lamb2[1]~input_o\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst4|q\(1));

-- Location: LCCOMB_X59_Y39_N28
\b2v_inst|b2v_inst2|b2v_inst4|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst4|q[0]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst4|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst4|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst4|q[0]~feeder_combout\);

-- Location: IOIBUF_X54_Y43_N15
\Lamb2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lamb2(0),
	o => \Lamb2[0]~input_o\);

-- Location: FF_X59_Y39_N29
\b2v_inst|b2v_inst2|b2v_inst4|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst4|q[0]~feeder_combout\,
	asdata => \Lamb2[0]~input_o\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst4|q\(0));

-- Location: LCCOMB_X59_Y39_N6
\b2v_inst|b2v_inst2|b2v_inst11|o[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst11|o[3]~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst4|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst4|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst4|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst11|o[3]~0_combout\);

-- Location: IOIBUF_X54_Y43_N22
\Lamb2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lamb2(3),
	o => \Lamb2[3]~input_o\);

-- Location: FF_X59_Y39_N7
\b2v_inst|b2v_inst2|b2v_inst4|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst11|o[3]~0_combout\,
	asdata => \Lamb2[3]~input_o\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst4|q\(3));

-- Location: LCCOMB_X60_Y39_N22
\b2v_inst|b2v_inst2|b2v_inst5|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst5|q[0]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst5|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst5|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst5|q[0]~feeder_combout\);

-- Location: IOIBUF_X56_Y43_N22
\Lamb0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lamb0(0),
	o => \Lamb0[0]~input_o\);

-- Location: FF_X60_Y39_N23
\b2v_inst|b2v_inst2|b2v_inst5|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst5|q[0]~feeder_combout\,
	asdata => \Lamb0[0]~input_o\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst5|q\(0));

-- Location: LCCOMB_X60_Y39_N20
\b2v_inst|b2v_inst2|b2v_inst10|o[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst10|o[1]~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst5|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst5|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst5|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst10|o[1]~0_combout\);

-- Location: IOIBUF_X67_Y36_N22
\Lamb0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lamb0(1),
	o => \Lamb0[1]~input_o\);

-- Location: FF_X60_Y39_N21
\b2v_inst|b2v_inst2|b2v_inst5|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst10|o[1]~0_combout\,
	asdata => \Lamb0[1]~input_o\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst5|q\(1));

-- Location: LCCOMB_X59_Y39_N0
\b2v_inst|b2v_inst2|b2v_inst5|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst5|q[2]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst5|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst5|q[2]~feeder_combout\);

-- Location: IOIBUF_X52_Y43_N15
\Lamb0[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lamb0(2),
	o => \Lamb0[2]~input_o\);

-- Location: FF_X59_Y39_N1
\b2v_inst|b2v_inst2|b2v_inst5|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst5|q[2]~feeder_combout\,
	asdata => \Lamb0[2]~input_o\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst5|q\(2));

-- Location: LCCOMB_X59_Y39_N8
\b2v_inst|b2v_inst2|b2v_inst5|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst5|q[3]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst5|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst5|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst5|q[3]~feeder_combout\);

-- Location: IOIBUF_X59_Y43_N15
\Lamb0[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lamb0(3),
	o => \Lamb0[3]~input_o\);

-- Location: FF_X59_Y39_N9
\b2v_inst|b2v_inst2|b2v_inst5|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst5|q[3]~feeder_combout\,
	asdata => \Lamb0[3]~input_o\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst5|q\(3));

-- Location: LCCOMB_X59_Y39_N2
\b2v_inst|b2v_inst2|b2v_inst15|c[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|c\(3) = \b2v_inst|b2v_inst2|b2v_inst4|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst5|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst4|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst5|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|c\(3));

-- Location: LCCOMB_X59_Y39_N12
\b2v_inst|b2v_inst2|b2v_inst15|c[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|c\(0) = \b2v_inst|b2v_inst2|b2v_inst4|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst5|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst4|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|c\(0));

-- Location: LCCOMB_X61_Y39_N14
\b2v_inst|b2v_inst2|b2v_inst15|c[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|c\(2) = \b2v_inst|b2v_inst2|b2v_inst5|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst4|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|c\(2));

-- Location: LCCOMB_X59_Y39_N4
\b2v_inst|b2v_inst2|b2v_inst15|c[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst15|c\(1) = \b2v_inst|b2v_inst2|b2v_inst4|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst5|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst4|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst5|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst15|c\(1));

-- Location: LCCOMB_X61_Y39_N30
\b2v_inst2|b2v_inst|o[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst|o[3]~3_combout\ = (\b2v_inst|b2v_inst2|b2v_inst15|c\(3) & (\b2v_inst|b2v_inst2|b2v_inst15|c\(0) $ (((!\b2v_inst|b2v_inst2|b2v_inst15|c\(1)) # (!\b2v_inst|b2v_inst2|b2v_inst15|c\(2)))))) # (!\b2v_inst|b2v_inst2|b2v_inst15|c\(3) & 
-- ((\b2v_inst|b2v_inst2|b2v_inst15|c\(2) $ (\b2v_inst|b2v_inst2|b2v_inst15|c\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst15|c\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst15|c\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|c\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst15|c\(1),
	combout => \b2v_inst2|b2v_inst|o[3]~3_combout\);

-- Location: LCCOMB_X61_Y39_N12
\b2v_inst|b2v_inst2|b2v_inst9|o[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst9|o[1]~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst7|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst7|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst7|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst9|o[1]~0_combout\);

-- Location: IOIBUF_X65_Y43_N29
\Lamb3[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lamb3(1),
	o => \Lamb3[1]~input_o\);

-- Location: FF_X61_Y39_N13
\b2v_inst|b2v_inst2|b2v_inst7|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst9|o[1]~0_combout\,
	asdata => \Lamb3[1]~input_o\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst7|q\(1));

-- Location: LCCOMB_X61_Y39_N0
\b2v_inst|b2v_inst2|b2v_inst9|o[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst9|o[2]~2_combout\ = \b2v_inst|b2v_inst2|b2v_inst7|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst7|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst7|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst9|o[2]~2_combout\);

-- Location: IOIBUF_X65_Y43_N22
\Lamb3[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lamb3(2),
	o => \Lamb3[2]~input_o\);

-- Location: FF_X61_Y39_N1
\b2v_inst|b2v_inst2|b2v_inst7|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst9|o[2]~2_combout\,
	asdata => \Lamb3[2]~input_o\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst7|q\(2));

-- Location: LCCOMB_X61_Y39_N22
\b2v_inst|b2v_inst2|b2v_inst9|o[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst9|o[3]~3_combout\ = \b2v_inst|b2v_inst2|b2v_inst7|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst7|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst2|b2v_inst7|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst9|o[3]~3_combout\);

-- Location: IOIBUF_X61_Y43_N15
\Lamb3[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lamb3(3),
	o => \Lamb3[3]~input_o\);

-- Location: FF_X61_Y39_N23
\b2v_inst|b2v_inst2|b2v_inst7|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst9|o[3]~3_combout\,
	asdata => \Lamb3[3]~input_o\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst7|q\(3));

-- Location: LCCOMB_X61_Y39_N18
\b2v_inst|b2v_inst2|b2v_inst9|o[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst9|o[0]~1_combout\ = \b2v_inst|b2v_inst2|b2v_inst7|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst7|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(3),
	datac => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst9|o[0]~1_combout\);

-- Location: IOIBUF_X61_Y43_N1
\Lamb3[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lamb3(0),
	o => \Lamb3[0]~input_o\);

-- Location: FF_X61_Y39_N19
\b2v_inst|b2v_inst2|b2v_inst7|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst9|o[0]~1_combout\,
	asdata => \Lamb3[0]~input_o\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst7|q\(0));

-- Location: LCCOMB_X59_Y39_N20
\b2v_inst|b2v_inst2|b2v_inst8|o[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst8|o[1]~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst6|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst6|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst6|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst8|o[1]~0_combout\);

-- Location: IOIBUF_X59_Y43_N1
\Lamb1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lamb1(1),
	o => \Lamb1[1]~input_o\);

-- Location: FF_X59_Y39_N21
\b2v_inst|b2v_inst2|b2v_inst6|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst8|o[1]~0_combout\,
	asdata => \Lamb1[1]~input_o\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst6|q\(1));

-- Location: LCCOMB_X59_Y39_N18
\b2v_inst|b2v_inst2|b2v_inst6|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst6|q[3]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst6|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	combout => \b2v_inst|b2v_inst2|b2v_inst6|q[3]~feeder_combout\);

-- Location: IOIBUF_X59_Y43_N8
\Lamb1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lamb1(3),
	o => \Lamb1[3]~input_o\);

-- Location: FF_X59_Y39_N19
\b2v_inst|b2v_inst2|b2v_inst6|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst6|q[3]~feeder_combout\,
	asdata => \Lamb1[3]~input_o\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst6|q\(3));

-- Location: LCCOMB_X59_Y39_N16
\b2v_inst|b2v_inst2|b2v_inst8|o[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst8|o[2]~1_combout\ = \b2v_inst|b2v_inst2|b2v_inst6|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst6|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst6|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst8|o[2]~1_combout\);

-- Location: IOIBUF_X54_Y43_N29
\Lamb1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lamb1(2),
	o => \Lamb1[2]~input_o\);

-- Location: FF_X59_Y39_N17
\b2v_inst|b2v_inst2|b2v_inst6|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst8|o[2]~1_combout\,
	asdata => \Lamb1[2]~input_o\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst6|q\(2));

-- Location: LCCOMB_X59_Y39_N26
\b2v_inst|b2v_inst2|b2v_inst6|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst6|q[0]~feeder_combout\ = \b2v_inst|b2v_inst2|b2v_inst6|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst2|b2v_inst6|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst6|q[0]~feeder_combout\);

-- Location: IOIBUF_X54_Y43_N1
\Lamb1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lamb1(0),
	o => \Lamb1[0]~input_o\);

-- Location: FF_X59_Y39_N27
\b2v_inst|b2v_inst2|b2v_inst6|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst2|b2v_inst6|q[0]~feeder_combout\,
	asdata => \Lamb1[0]~input_o\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst2|b2v_inst6|q\(0));

-- Location: LCCOMB_X59_Y39_N22
\b2v_inst|b2v_inst2|b2v_inst14|c[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|c[0]~0_combout\ = \b2v_inst|b2v_inst2|b2v_inst7|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst5|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst6|q\(0) $ (\b2v_inst|b2v_inst2|b2v_inst4|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(0),
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst6|q\(0),
	datad => \b2v_inst|b2v_inst2|b2v_inst4|q\(0),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|c[0]~0_combout\);

-- Location: LCCOMB_X59_Y39_N24
\SYNTHESIZED_WIRE_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SYNTHESIZED_WIRE_0~0_combout\ = (!\b2v_inst|b2v_inst2|b2v_inst14|c[0]~0_combout\ & (\b2v_inst|b2v_inst2|b2v_inst6|q\(1) $ (\b2v_inst|b2v_inst2|b2v_inst15|c\(1) $ (\b2v_inst|b2v_inst2|b2v_inst7|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst14|c[0]~0_combout\,
	datab => \b2v_inst|b2v_inst2|b2v_inst6|q\(1),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|c\(1),
	datad => \b2v_inst|b2v_inst2|b2v_inst7|q\(1),
	combout => \SYNTHESIZED_WIRE_0~0_combout\);

-- Location: LCCOMB_X59_Y39_N14
\b2v_inst|b2v_inst2|b2v_inst14|c[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|c[2]~1_combout\ = \b2v_inst|b2v_inst2|b2v_inst4|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst5|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst7|q\(2) $ (\b2v_inst|b2v_inst2|b2v_inst6|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst4|q\(2),
	datab => \b2v_inst|b2v_inst2|b2v_inst5|q\(2),
	datac => \b2v_inst|b2v_inst2|b2v_inst7|q\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst6|q\(2),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|c[2]~1_combout\);

-- Location: LCCOMB_X61_Y39_N24
\b2v_inst|b2v_inst2|b2v_inst14|c[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst2|b2v_inst14|c[3]~2_combout\ = \b2v_inst|b2v_inst2|b2v_inst7|q\(3) $ (\b2v_inst|b2v_inst2|b2v_inst6|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst7|q\(3),
	datad => \b2v_inst|b2v_inst2|b2v_inst6|q\(3),
	combout => \b2v_inst|b2v_inst2|b2v_inst14|c[3]~2_combout\);

-- Location: LCCOMB_X61_Y39_N10
\SYNTHESIZED_WIRE_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SYNTHESIZED_WIRE_0~1_combout\ = (\SYNTHESIZED_WIRE_0~0_combout\ & (\b2v_inst|b2v_inst2|b2v_inst14|c[2]~1_combout\ & (\b2v_inst|b2v_inst2|b2v_inst15|c\(3) $ (\b2v_inst|b2v_inst2|b2v_inst14|c[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst15|c\(3),
	datab => \SYNTHESIZED_WIRE_0~0_combout\,
	datac => \b2v_inst|b2v_inst2|b2v_inst14|c[2]~1_combout\,
	datad => \b2v_inst|b2v_inst2|b2v_inst14|c[3]~2_combout\,
	combout => \SYNTHESIZED_WIRE_0~1_combout\);

-- Location: LCCOMB_X61_Y39_N20
\b2v_inst2|b2v_inst3|O[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[0]~7_combout\ = (!\b2v_inst2|b2v_inst|o[3]~3_combout\ & !\SYNTHESIZED_WIRE_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|b2v_inst|o[3]~3_combout\,
	datad => \SYNTHESIZED_WIRE_0~1_combout\,
	combout => \b2v_inst2|b2v_inst3|O[0]~7_combout\);

-- Location: LCCOMB_X61_Y39_N8
\b2v_inst2|b2v_inst|o[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst|o[2]~2_combout\ = (\b2v_inst|b2v_inst2|b2v_inst15|c\(0) & (\b2v_inst|b2v_inst2|b2v_inst15|c\(1) $ (((\b2v_inst|b2v_inst2|b2v_inst15|c\(3) & \b2v_inst|b2v_inst2|b2v_inst15|c\(2)))))) # (!\b2v_inst|b2v_inst2|b2v_inst15|c\(0) & 
-- (\b2v_inst|b2v_inst2|b2v_inst15|c\(3) $ ((\b2v_inst|b2v_inst2|b2v_inst15|c\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst15|c\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst15|c\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|c\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst15|c\(1),
	combout => \b2v_inst2|b2v_inst|o[2]~2_combout\);

-- Location: LCCOMB_X61_Y39_N2
\b2v_inst2|b2v_inst3|O[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[0]~8_combout\ = (\b2v_inst2|b2v_inst|o[3]~3_combout\ & !\SYNTHESIZED_WIRE_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|b2v_inst|o[3]~3_combout\,
	datad => \SYNTHESIZED_WIRE_0~1_combout\,
	combout => \b2v_inst2|b2v_inst3|O[0]~8_combout\);

-- Location: LCCOMB_X60_Y39_N24
\b2v_inst|b2v_inst3|b2v_inst4|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst3|b2v_inst4|q[3]~feeder_combout\ = \b2v_inst|b2v_inst3|b2v_inst4|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst3|b2v_inst4|q\(1),
	combout => \b2v_inst|b2v_inst3|b2v_inst4|q[3]~feeder_combout\);

-- Location: IOIBUF_X56_Y43_N8
\Omega2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Omega2(3),
	o => \Omega2[3]~input_o\);

-- Location: FF_X60_Y39_N25
\b2v_inst|b2v_inst3|b2v_inst4|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst3|b2v_inst4|q[3]~feeder_combout\,
	asdata => \Omega2[3]~input_o\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst3|b2v_inst4|q\(3));

-- Location: LCCOMB_X60_Y39_N4
\b2v_inst|b2v_inst3|b2v_inst4|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst3|b2v_inst4|q[0]~feeder_combout\ = \b2v_inst|b2v_inst3|b2v_inst4|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst3|b2v_inst4|q\(2),
	combout => \b2v_inst|b2v_inst3|b2v_inst4|q[0]~feeder_combout\);

-- Location: IOIBUF_X67_Y36_N1
\Omega2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Omega2(0),
	o => \Omega2[0]~input_o\);

-- Location: FF_X60_Y39_N5
\b2v_inst|b2v_inst3|b2v_inst4|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst3|b2v_inst4|q[0]~feeder_combout\,
	asdata => \Omega2[0]~input_o\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst3|b2v_inst4|q\(0));

-- Location: LCCOMB_X60_Y39_N10
\b2v_inst|b2v_inst3|b2v_inst11|o[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst3|b2v_inst11|o[2]~0_combout\ = \b2v_inst|b2v_inst3|b2v_inst4|q\(3) $ (\b2v_inst|b2v_inst3|b2v_inst4|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst3|b2v_inst4|q\(3),
	datad => \b2v_inst|b2v_inst3|b2v_inst4|q\(0),
	combout => \b2v_inst|b2v_inst3|b2v_inst11|o[2]~0_combout\);

-- Location: IOIBUF_X67_Y35_N1
\Omega2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Omega2(2),
	o => \Omega2[2]~input_o\);

-- Location: FF_X60_Y39_N11
\b2v_inst|b2v_inst3|b2v_inst4|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst3|b2v_inst11|o[2]~0_combout\,
	asdata => \Omega2[2]~input_o\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst3|b2v_inst4|q\(2));

-- Location: LCCOMB_X60_Y39_N26
\b2v_inst|b2v_inst3|b2v_inst11|o[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst3|b2v_inst11|o[1]~1_combout\ = \b2v_inst|b2v_inst3|b2v_inst4|q\(3) $ (\b2v_inst|b2v_inst3|b2v_inst4|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst3|b2v_inst4|q\(3),
	datad => \b2v_inst|b2v_inst3|b2v_inst4|q\(2),
	combout => \b2v_inst|b2v_inst3|b2v_inst11|o[1]~1_combout\);

-- Location: IOIBUF_X61_Y43_N8
\Omega2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Omega2(1),
	o => \Omega2[1]~input_o\);

-- Location: FF_X60_Y39_N27
\b2v_inst|b2v_inst3|b2v_inst4|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst3|b2v_inst11|o[1]~1_combout\,
	asdata => \Omega2[1]~input_o\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst3|b2v_inst4|q\(1));

-- Location: LCCOMB_X60_Y39_N0
\b2v_inst|b2v_inst3|b2v_inst6|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst3|b2v_inst6|q[2]~feeder_combout\ = \b2v_inst|b2v_inst3|b2v_inst6|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst3|b2v_inst6|q\(1),
	combout => \b2v_inst|b2v_inst3|b2v_inst6|q[2]~feeder_combout\);

-- Location: IOIBUF_X67_Y36_N15
\Omega1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Omega1(2),
	o => \Omega1[2]~input_o\);

-- Location: FF_X60_Y39_N1
\b2v_inst|b2v_inst3|b2v_inst6|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst3|b2v_inst6|q[2]~feeder_combout\,
	asdata => \Omega1[2]~input_o\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst3|b2v_inst6|q\(2));

-- Location: LCCOMB_X60_Y39_N18
\b2v_inst|b2v_inst3|b2v_inst6|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst3|b2v_inst6|q[3]~feeder_combout\ = \b2v_inst|b2v_inst3|b2v_inst6|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst3|b2v_inst6|q\(2),
	combout => \b2v_inst|b2v_inst3|b2v_inst6|q[3]~feeder_combout\);

-- Location: IOIBUF_X67_Y39_N8
\Omega1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Omega1(3),
	o => \Omega1[3]~input_o\);

-- Location: FF_X60_Y39_N19
\b2v_inst|b2v_inst3|b2v_inst6|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst3|b2v_inst6|q[3]~feeder_combout\,
	asdata => \Omega1[3]~input_o\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst3|b2v_inst6|q\(3));

-- Location: LCCOMB_X60_Y39_N2
\b2v_inst|b2v_inst3|b2v_inst6|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst3|b2v_inst6|q[0]~feeder_combout\ = \b2v_inst|b2v_inst3|b2v_inst6|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst3|b2v_inst6|q\(3),
	combout => \b2v_inst|b2v_inst3|b2v_inst6|q[0]~feeder_combout\);

-- Location: IOIBUF_X61_Y43_N29
\Omega1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Omega1(0),
	o => \Omega1[0]~input_o\);

-- Location: FF_X60_Y39_N3
\b2v_inst|b2v_inst3|b2v_inst6|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst3|b2v_inst6|q[0]~feeder_combout\,
	asdata => \Omega1[0]~input_o\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst3|b2v_inst6|q\(0));

-- Location: LCCOMB_X60_Y39_N8
\b2v_inst|b2v_inst3|b2v_inst8|o[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst3|b2v_inst8|o[1]~0_combout\ = \b2v_inst|b2v_inst3|b2v_inst6|q\(0) $ (\b2v_inst|b2v_inst3|b2v_inst6|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst3|b2v_inst6|q\(0),
	datad => \b2v_inst|b2v_inst3|b2v_inst6|q\(3),
	combout => \b2v_inst|b2v_inst3|b2v_inst8|o[1]~0_combout\);

-- Location: IOIBUF_X56_Y43_N15
\Omega1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Omega1(1),
	o => \Omega1[1]~input_o\);

-- Location: FF_X60_Y39_N9
\b2v_inst|b2v_inst3|b2v_inst6|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst3|b2v_inst8|o[1]~0_combout\,
	asdata => \Omega1[1]~input_o\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst3|b2v_inst6|q\(1));

-- Location: IOIBUF_X50_Y43_N8
\Omega0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Omega0(1),
	o => \Omega0[1]~input_o\);

-- Location: FF_X57_Y39_N25
\b2v_inst|b2v_inst3|b2v_inst5|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Omega0[1]~input_o\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst3|b2v_inst5|q\(1));

-- Location: LCCOMB_X60_Y39_N12
\b2v_inst|b2v_inst3|b2v_inst7|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst3|b2v_inst7|q[0]~feeder_combout\ = \b2v_inst|b2v_inst3|b2v_inst7|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|b2v_inst3|b2v_inst7|q\(1),
	combout => \b2v_inst|b2v_inst3|b2v_inst7|q[0]~feeder_combout\);

-- Location: IOIBUF_X63_Y43_N22
\Omega3[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Omega3(0),
	o => \Omega3[0]~input_o\);

-- Location: FF_X60_Y39_N13
\b2v_inst|b2v_inst3|b2v_inst7|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst3|b2v_inst7|q[0]~feeder_combout\,
	asdata => \Omega3[0]~input_o\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst3|b2v_inst7|q\(0));

-- Location: LCCOMB_X60_Y39_N28
\b2v_inst|b2v_inst3|b2v_inst9|o[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst3|b2v_inst9|o[3]~1_combout\ = \b2v_inst|b2v_inst3|b2v_inst7|q\(3) $ (\b2v_inst|b2v_inst3|b2v_inst7|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst3|b2v_inst7|q\(3),
	datad => \b2v_inst|b2v_inst3|b2v_inst7|q\(0),
	combout => \b2v_inst|b2v_inst3|b2v_inst9|o[3]~1_combout\);

-- Location: IOIBUF_X67_Y39_N22
\Omega3[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Omega3(3),
	o => \Omega3[3]~input_o\);

-- Location: FF_X60_Y39_N29
\b2v_inst|b2v_inst3|b2v_inst7|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst3|b2v_inst9|o[3]~1_combout\,
	asdata => \Omega3[3]~input_o\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst3|b2v_inst7|q\(3));

-- Location: LCCOMB_X60_Y39_N14
\b2v_inst|b2v_inst3|b2v_inst9|o[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst3|b2v_inst9|o[2]~0_combout\ = \b2v_inst|b2v_inst3|b2v_inst7|q\(2) $ (\b2v_inst|b2v_inst3|b2v_inst7|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst3|b2v_inst7|q\(2),
	datad => \b2v_inst|b2v_inst3|b2v_inst7|q\(3),
	combout => \b2v_inst|b2v_inst3|b2v_inst9|o[2]~0_combout\);

-- Location: IOIBUF_X63_Y43_N8
\Omega3[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Omega3(2),
	o => \Omega3[2]~input_o\);

-- Location: FF_X60_Y39_N15
\b2v_inst|b2v_inst3|b2v_inst7|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst3|b2v_inst9|o[2]~0_combout\,
	asdata => \Omega3[2]~input_o\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst3|b2v_inst7|q\(2));

-- Location: LCCOMB_X60_Y39_N30
\b2v_inst|b2v_inst3|b2v_inst9|o[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst3|b2v_inst9|o[1]~2_combout\ = \b2v_inst|b2v_inst3|b2v_inst7|q\(1) $ (\b2v_inst|b2v_inst3|b2v_inst7|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst3|b2v_inst7|q\(1),
	datad => \b2v_inst|b2v_inst3|b2v_inst7|q\(2),
	combout => \b2v_inst|b2v_inst3|b2v_inst9|o[1]~2_combout\);

-- Location: IOIBUF_X67_Y22_N22
\Omega3[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Omega3(1),
	o => \Omega3[1]~input_o\);

-- Location: FF_X60_Y39_N31
\b2v_inst|b2v_inst3|b2v_inst7|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst|b2v_inst3|b2v_inst9|o[1]~2_combout\,
	asdata => \Omega3[1]~input_o\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => \b2v_inst|b2v_inst|ALT_INV_estadoAtual.mux2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst3|b2v_inst7|q\(1));

-- Location: LCCOMB_X57_Y39_N24
\b2v_inst|b2v_inst3|b2v_inst14|c[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ = \b2v_inst|b2v_inst3|b2v_inst4|q\(1) $ (\b2v_inst|b2v_inst3|b2v_inst6|q\(1) $ (\b2v_inst|b2v_inst3|b2v_inst5|q\(1) $ (\b2v_inst|b2v_inst3|b2v_inst7|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst3|b2v_inst4|q\(1),
	datab => \b2v_inst|b2v_inst3|b2v_inst6|q\(1),
	datac => \b2v_inst|b2v_inst3|b2v_inst5|q\(1),
	datad => \b2v_inst|b2v_inst3|b2v_inst7|q\(1),
	combout => \b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\);

-- Location: IOIBUF_X63_Y43_N1
\Omega0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Omega0(0),
	o => \Omega0[0]~input_o\);

-- Location: FF_X62_Y39_N29
\b2v_inst|b2v_inst3|b2v_inst5|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Omega0[0]~input_o\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst3|b2v_inst5|q\(0));

-- Location: LCCOMB_X61_Y39_N28
\b2v_inst|b2v_inst3|b2v_inst14|c[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\ = \b2v_inst|b2v_inst3|b2v_inst7|q\(0) $ (\b2v_inst|b2v_inst3|b2v_inst5|q\(0) $ (\b2v_inst|b2v_inst3|b2v_inst4|q\(0) $ (\b2v_inst|b2v_inst3|b2v_inst6|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst3|b2v_inst7|q\(0),
	datab => \b2v_inst|b2v_inst3|b2v_inst5|q\(0),
	datac => \b2v_inst|b2v_inst3|b2v_inst4|q\(0),
	datad => \b2v_inst|b2v_inst3|b2v_inst6|q\(0),
	combout => \b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\);

-- Location: LCCOMB_X63_Y39_N2
\b2v_inst2|b2v_inst2|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst2|Mux8~0_combout\ = \b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ $ (\b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\,
	datad => \b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\,
	combout => \b2v_inst2|b2v_inst2|Mux8~0_combout\);

-- Location: LCCOMB_X61_Y39_N6
\b2v_inst2|b2v_inst|o[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst|o[0]~1_combout\ = (\b2v_inst|b2v_inst2|b2v_inst15|c\(2) & ((\b2v_inst|b2v_inst2|b2v_inst15|c\(1) & ((!\b2v_inst|b2v_inst2|b2v_inst15|c\(0)))) # (!\b2v_inst|b2v_inst2|b2v_inst15|c\(1) & (!\b2v_inst|b2v_inst2|b2v_inst15|c\(3))))) # 
-- (!\b2v_inst|b2v_inst2|b2v_inst15|c\(2) & (\b2v_inst|b2v_inst2|b2v_inst15|c\(3) $ (\b2v_inst|b2v_inst2|b2v_inst15|c\(0) $ (\b2v_inst|b2v_inst2|b2v_inst15|c\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst15|c\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst15|c\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|c\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst15|c\(1),
	combout => \b2v_inst2|b2v_inst|o[0]~1_combout\);

-- Location: IOIBUF_X67_Y38_N22
\Omega0[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Omega0(3),
	o => \Omega0[3]~input_o\);

-- Location: FF_X62_Y39_N21
\b2v_inst|b2v_inst3|b2v_inst5|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Omega0[3]~input_o\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst3|b2v_inst5|q\(3));

-- Location: LCCOMB_X61_Y39_N4
\b2v_inst|b2v_inst3|b2v_inst14|c[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\ = \b2v_inst|b2v_inst3|b2v_inst4|q\(3) $ (\b2v_inst|b2v_inst3|b2v_inst6|q\(3) $ (\b2v_inst|b2v_inst3|b2v_inst5|q\(3) $ (\b2v_inst|b2v_inst3|b2v_inst7|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst3|b2v_inst4|q\(3),
	datab => \b2v_inst|b2v_inst3|b2v_inst6|q\(3),
	datac => \b2v_inst|b2v_inst3|b2v_inst5|q\(3),
	datad => \b2v_inst|b2v_inst3|b2v_inst7|q\(3),
	combout => \b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\);

-- Location: LCCOMB_X61_Y39_N16
\b2v_inst2|b2v_inst|o[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst|o[1]~0_combout\ = (\b2v_inst|b2v_inst2|b2v_inst15|c\(0) & (\b2v_inst|b2v_inst2|b2v_inst15|c\(3) $ (((\b2v_inst|b2v_inst2|b2v_inst15|c\(2)) # (\b2v_inst|b2v_inst2|b2v_inst15|c\(1)))))) # (!\b2v_inst|b2v_inst2|b2v_inst15|c\(0) & 
-- ((\b2v_inst|b2v_inst2|b2v_inst15|c\(1) & ((\b2v_inst|b2v_inst2|b2v_inst15|c\(2)))) # (!\b2v_inst|b2v_inst2|b2v_inst15|c\(1) & (\b2v_inst|b2v_inst2|b2v_inst15|c\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst2|b2v_inst15|c\(3),
	datab => \b2v_inst|b2v_inst2|b2v_inst15|c\(0),
	datac => \b2v_inst|b2v_inst2|b2v_inst15|c\(2),
	datad => \b2v_inst|b2v_inst2|b2v_inst15|c\(1),
	combout => \b2v_inst2|b2v_inst|o[1]~0_combout\);

-- Location: LCCOMB_X64_Y39_N16
\b2v_inst2|b2v_inst3|O[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[0]~11_combout\ = (\b2v_inst2|b2v_inst|o[0]~1_combout\ & (((\b2v_inst2|b2v_inst|o[1]~0_combout\)))) # (!\b2v_inst2|b2v_inst|o[0]~1_combout\ & (\b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ $ 
-- (((\b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\ & \b2v_inst2|b2v_inst|o[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	datab => \b2v_inst2|b2v_inst|o[0]~1_combout\,
	datac => \b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\,
	datad => \b2v_inst2|b2v_inst|o[1]~0_combout\,
	combout => \b2v_inst2|b2v_inst3|O[0]~11_combout\);

-- Location: LCCOMB_X64_Y39_N22
\b2v_inst2|b2v_inst3|O[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[0]~12_combout\ = (\b2v_inst2|b2v_inst|o[0]~1_combout\ & (\b2v_inst2|b2v_inst2|Mux8~0_combout\ $ (((\b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\ & \b2v_inst2|b2v_inst3|O[0]~11_combout\))))) # (!\b2v_inst2|b2v_inst|o[0]~1_combout\ & 
-- (((\b2v_inst2|b2v_inst3|O[0]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst2|Mux8~0_combout\,
	datab => \b2v_inst2|b2v_inst|o[0]~1_combout\,
	datac => \b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	datad => \b2v_inst2|b2v_inst3|O[0]~11_combout\,
	combout => \b2v_inst2|b2v_inst3|O[0]~12_combout\);

-- Location: IOIBUF_X63_Y43_N29
\Omega0[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Omega0(2),
	o => \Omega0[2]~input_o\);

-- Location: FF_X62_Y39_N23
\b2v_inst|b2v_inst3|b2v_inst5|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Omega0[2]~input_o\,
	clrn => \b2v_inst|b2v_inst|estadoAtual.idle~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|b2v_inst3|b2v_inst5|q\(2));

-- Location: LCCOMB_X61_Y39_N26
\b2v_inst|b2v_inst3|b2v_inst14|c[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\ = \b2v_inst|b2v_inst3|b2v_inst4|q\(2) $ (\b2v_inst|b2v_inst3|b2v_inst5|q\(2) $ (\b2v_inst|b2v_inst3|b2v_inst7|q\(2) $ (\b2v_inst|b2v_inst3|b2v_inst6|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst3|b2v_inst4|q\(2),
	datab => \b2v_inst|b2v_inst3|b2v_inst5|q\(2),
	datac => \b2v_inst|b2v_inst3|b2v_inst7|q\(2),
	datad => \b2v_inst|b2v_inst3|b2v_inst6|q\(2),
	combout => \b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\);

-- Location: LCCOMB_X64_Y39_N4
\b2v_inst2|b2v_inst2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst2|Mux3~0_combout\ = \b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\ $ (\b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ $ (\b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	datac => \b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\,
	datad => \b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	combout => \b2v_inst2|b2v_inst2|Mux3~0_combout\);

-- Location: LCCOMB_X63_Y39_N14
\b2v_inst2|b2v_inst2|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst2|Mux10~0_combout\ = \b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\ $ (\b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ $ (\b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	datac => \b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\,
	datad => \b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\,
	combout => \b2v_inst2|b2v_inst2|Mux10~0_combout\);

-- Location: LCCOMB_X64_Y39_N18
\b2v_inst2|b2v_inst2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst2|Mux2~0_combout\ = \b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ $ (\b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\,
	datad => \b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	combout => \b2v_inst2|b2v_inst2|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y39_N0
\b2v_inst2|b2v_inst3|O[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[0]~9_combout\ = (\b2v_inst2|b2v_inst|o[0]~1_combout\ & ((\b2v_inst2|b2v_inst2|Mux10~0_combout\) # ((\b2v_inst2|b2v_inst|o[1]~0_combout\)))) # (!\b2v_inst2|b2v_inst|o[0]~1_combout\ & (((\b2v_inst2|b2v_inst2|Mux2~0_combout\ & 
-- !\b2v_inst2|b2v_inst|o[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst2|Mux10~0_combout\,
	datab => \b2v_inst2|b2v_inst|o[0]~1_combout\,
	datac => \b2v_inst2|b2v_inst2|Mux2~0_combout\,
	datad => \b2v_inst2|b2v_inst|o[1]~0_combout\,
	combout => \b2v_inst2|b2v_inst3|O[0]~9_combout\);

-- Location: LCCOMB_X63_Y39_N4
\b2v_inst2|b2v_inst2|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst2|Mux9~0_combout\ = \b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ $ (\b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\ $ (\b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\ $ (\b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\,
	datab => \b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\,
	datac => \b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	datad => \b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	combout => \b2v_inst2|b2v_inst2|Mux9~0_combout\);

-- Location: LCCOMB_X64_Y39_N2
\b2v_inst2|b2v_inst3|O[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[0]~10_combout\ = (\b2v_inst2|b2v_inst3|O[0]~9_combout\ & (((\b2v_inst2|b2v_inst2|Mux9~0_combout\) # (!\b2v_inst2|b2v_inst|o[1]~0_combout\)))) # (!\b2v_inst2|b2v_inst3|O[0]~9_combout\ & (\b2v_inst2|b2v_inst2|Mux3~0_combout\ & 
-- ((\b2v_inst2|b2v_inst|o[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst2|Mux3~0_combout\,
	datab => \b2v_inst2|b2v_inst3|O[0]~9_combout\,
	datac => \b2v_inst2|b2v_inst2|Mux9~0_combout\,
	datad => \b2v_inst2|b2v_inst|o[1]~0_combout\,
	combout => \b2v_inst2|b2v_inst3|O[0]~10_combout\);

-- Location: LCCOMB_X64_Y39_N8
\b2v_inst2|b2v_inst3|O[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[0]~13_combout\ = (\b2v_inst2|b2v_inst3|O[0]~8_combout\ & ((\b2v_inst2|b2v_inst|o[2]~2_combout\ & ((\b2v_inst2|b2v_inst3|O[0]~10_combout\))) # (!\b2v_inst2|b2v_inst|o[2]~2_combout\ & (\b2v_inst2|b2v_inst3|O[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst|o[2]~2_combout\,
	datab => \b2v_inst2|b2v_inst3|O[0]~8_combout\,
	datac => \b2v_inst2|b2v_inst3|O[0]~12_combout\,
	datad => \b2v_inst2|b2v_inst3|O[0]~10_combout\,
	combout => \b2v_inst2|b2v_inst3|O[0]~13_combout\);

-- Location: LCCOMB_X62_Y39_N22
\b2v_inst2|b2v_inst3|O[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[1]~2_combout\ = (\b2v_inst2|b2v_inst|o[2]~2_combout\) # ((!\b2v_inst2|b2v_inst|o[1]~0_combout\ & \b2v_inst2|b2v_inst|o[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst|o[1]~0_combout\,
	datab => \b2v_inst2|b2v_inst|o[0]~1_combout\,
	datad => \b2v_inst2|b2v_inst|o[2]~2_combout\,
	combout => \b2v_inst2|b2v_inst3|O[1]~2_combout\);

-- Location: LCCOMB_X62_Y39_N30
\b2v_inst2|b2v_inst3|O[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[1]~3_combout\ = (\b2v_inst2|b2v_inst|o[2]~2_combout\) # ((\b2v_inst2|b2v_inst|o[0]~1_combout\ & \b2v_inst2|b2v_inst|o[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst|o[2]~2_combout\,
	datab => \b2v_inst2|b2v_inst|o[0]~1_combout\,
	datac => \b2v_inst2|b2v_inst|o[1]~0_combout\,
	combout => \b2v_inst2|b2v_inst3|O[1]~3_combout\);

-- Location: LCCOMB_X63_Y39_N22
\b2v_inst2|b2v_inst3|O[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[0]~0_combout\ = (\b2v_inst2|b2v_inst|o[1]~0_combout\ & (((\b2v_inst2|b2v_inst|o[0]~1_combout\)))) # (!\b2v_inst2|b2v_inst|o[1]~0_combout\ & (\b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\ $ (((\b2v_inst2|b2v_inst|o[0]~1_combout\ & 
-- \b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	datab => \b2v_inst2|b2v_inst|o[0]~1_combout\,
	datac => \b2v_inst2|b2v_inst|o[1]~0_combout\,
	datad => \b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\,
	combout => \b2v_inst2|b2v_inst3|O[0]~0_combout\);

-- Location: LCCOMB_X62_Y39_N28
\b2v_inst2|b2v_inst2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst2|Mux5~0_combout\ = \b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\ $ (\b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\ $ (\b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\,
	datab => \b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	datad => \b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	combout => \b2v_inst2|b2v_inst2|Mux5~0_combout\);

-- Location: LCCOMB_X63_Y39_N20
\b2v_inst2|b2v_inst2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst2|Mux0~0_combout\ = \b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\ $ (\b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	datac => \b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	combout => \b2v_inst2|b2v_inst2|Mux0~0_combout\);

-- Location: LCCOMB_X63_Y39_N24
\b2v_inst2|b2v_inst3|O[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[0]~1_combout\ = (\b2v_inst2|b2v_inst3|O[0]~0_combout\ & ((\b2v_inst2|b2v_inst2|Mux5~0_combout\) # ((!\b2v_inst2|b2v_inst|o[1]~0_combout\)))) # (!\b2v_inst2|b2v_inst3|O[0]~0_combout\ & (((\b2v_inst2|b2v_inst|o[1]~0_combout\ & 
-- \b2v_inst2|b2v_inst2|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst3|O[0]~0_combout\,
	datab => \b2v_inst2|b2v_inst2|Mux5~0_combout\,
	datac => \b2v_inst2|b2v_inst|o[1]~0_combout\,
	datad => \b2v_inst2|b2v_inst2|Mux0~0_combout\,
	combout => \b2v_inst2|b2v_inst3|O[0]~1_combout\);

-- Location: LCCOMB_X62_Y39_N4
\b2v_inst2|b2v_inst3|O[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[0]~4_combout\ = (\b2v_inst2|b2v_inst3|O[1]~2_combout\ & ((\b2v_inst2|b2v_inst3|O[1]~3_combout\ & ((\b2v_inst2|b2v_inst3|O[0]~1_combout\))) # (!\b2v_inst2|b2v_inst3|O[1]~3_combout\ & 
-- (\b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\)))) # (!\b2v_inst2|b2v_inst3|O[1]~2_combout\ & (((\b2v_inst2|b2v_inst3|O[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst3|O[1]~2_combout\,
	datab => \b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\,
	datac => \b2v_inst2|b2v_inst3|O[1]~3_combout\,
	datad => \b2v_inst2|b2v_inst3|O[0]~1_combout\,
	combout => \b2v_inst2|b2v_inst3|O[0]~4_combout\);

-- Location: LCCOMB_X62_Y39_N10
\b2v_inst2|b2v_inst3|O[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[1]~5_combout\ = (\b2v_inst2|b2v_inst|o[1]~0_combout\ & !\b2v_inst2|b2v_inst|o[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|b2v_inst|o[1]~0_combout\,
	datad => \b2v_inst2|b2v_inst|o[2]~2_combout\,
	combout => \b2v_inst2|b2v_inst3|O[1]~5_combout\);

-- Location: LCCOMB_X62_Y39_N12
\b2v_inst2|b2v_inst3|O[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[0]~6_combout\ = (\b2v_inst2|b2v_inst3|O[1]~5_combout\ & (\b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\ $ (((\b2v_inst2|b2v_inst3|O[0]~4_combout\ & \b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\))))) # 
-- (!\b2v_inst2|b2v_inst3|O[1]~5_combout\ & (((\b2v_inst2|b2v_inst3|O[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	datab => \b2v_inst2|b2v_inst3|O[0]~4_combout\,
	datac => \b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\,
	datad => \b2v_inst2|b2v_inst3|O[1]~5_combout\,
	combout => \b2v_inst2|b2v_inst3|O[0]~6_combout\);

-- Location: IOIBUF_X67_Y41_N22
\Input[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(0),
	o => \Input[0]~input_o\);

-- Location: LCCOMB_X66_Y39_N16
\b2v_inst2|b2v_inst1|c[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst1|c\(0) = \Input[0]~input_o\ $ (((\b2v_inst2|b2v_inst3|O[0]~13_combout\) # ((\b2v_inst2|b2v_inst3|O[0]~7_combout\ & \b2v_inst2|b2v_inst3|O[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst3|O[0]~7_combout\,
	datab => \b2v_inst2|b2v_inst3|O[0]~13_combout\,
	datac => \b2v_inst2|b2v_inst3|O[0]~6_combout\,
	datad => \Input[0]~input_o\,
	combout => \b2v_inst2|b2v_inst1|c\(0));

-- Location: LCCOMB_X64_Y39_N30
\b2v_inst2|b2v_inst3|O[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[1]~20_combout\ = (\b2v_inst2|b2v_inst|o[0]~1_combout\ & (((\b2v_inst2|b2v_inst|o[1]~0_combout\)))) # (!\b2v_inst2|b2v_inst|o[0]~1_combout\ & ((\b2v_inst2|b2v_inst|o[1]~0_combout\ & ((\b2v_inst2|b2v_inst2|Mux9~0_combout\))) # 
-- (!\b2v_inst2|b2v_inst|o[1]~0_combout\ & (\b2v_inst2|b2v_inst2|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst2|Mux2~0_combout\,
	datab => \b2v_inst2|b2v_inst|o[0]~1_combout\,
	datac => \b2v_inst2|b2v_inst2|Mux9~0_combout\,
	datad => \b2v_inst2|b2v_inst|o[1]~0_combout\,
	combout => \b2v_inst2|b2v_inst3|O[1]~20_combout\);

-- Location: LCCOMB_X64_Y39_N20
\b2v_inst2|b2v_inst3|O[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[1]~21_combout\ = (\b2v_inst2|b2v_inst3|O[1]~20_combout\ & ((\b2v_inst2|b2v_inst2|Mux5~0_combout\) # ((!\b2v_inst2|b2v_inst|o[0]~1_combout\)))) # (!\b2v_inst2|b2v_inst3|O[1]~20_combout\ & 
-- (((\b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\ & \b2v_inst2|b2v_inst|o[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst2|Mux5~0_combout\,
	datab => \b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	datac => \b2v_inst2|b2v_inst3|O[1]~20_combout\,
	datad => \b2v_inst2|b2v_inst|o[0]~1_combout\,
	combout => \b2v_inst2|b2v_inst3|O[1]~21_combout\);

-- Location: LCCOMB_X63_Y39_N10
\b2v_inst2|b2v_inst3|O[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[1]~18_combout\ = (\b2v_inst2|b2v_inst|o[1]~0_combout\ & (((\b2v_inst2|b2v_inst|o[0]~1_combout\)))) # (!\b2v_inst2|b2v_inst|o[1]~0_combout\ & (\b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\ $ 
-- (((\b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ & !\b2v_inst2|b2v_inst|o[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\,
	datab => \b2v_inst2|b2v_inst|o[0]~1_combout\,
	datac => \b2v_inst2|b2v_inst|o[1]~0_combout\,
	datad => \b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	combout => \b2v_inst2|b2v_inst3|O[1]~18_combout\);

-- Location: LCCOMB_X63_Y39_N8
\b2v_inst2|b2v_inst3|O[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[1]~19_combout\ = (\b2v_inst2|b2v_inst|o[1]~0_combout\ & (\b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\ $ (((\b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ & !\b2v_inst2|b2v_inst3|O[1]~18_combout\))))) # 
-- (!\b2v_inst2|b2v_inst|o[1]~0_combout\ & (((\b2v_inst2|b2v_inst3|O[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst|o[1]~0_combout\,
	datab => \b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\,
	datac => \b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\,
	datad => \b2v_inst2|b2v_inst3|O[1]~18_combout\,
	combout => \b2v_inst2|b2v_inst3|O[1]~19_combout\);

-- Location: LCCOMB_X64_Y39_N6
\b2v_inst2|b2v_inst3|O[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[1]~22_combout\ = (\b2v_inst2|b2v_inst3|O[0]~8_combout\ & ((\b2v_inst2|b2v_inst|o[2]~2_combout\ & ((\b2v_inst2|b2v_inst3|O[1]~19_combout\))) # (!\b2v_inst2|b2v_inst|o[2]~2_combout\ & (\b2v_inst2|b2v_inst3|O[1]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst|o[2]~2_combout\,
	datab => \b2v_inst2|b2v_inst3|O[1]~21_combout\,
	datac => \b2v_inst2|b2v_inst3|O[0]~8_combout\,
	datad => \b2v_inst2|b2v_inst3|O[1]~19_combout\,
	combout => \b2v_inst2|b2v_inst3|O[1]~22_combout\);

-- Location: LCCOMB_X62_Y39_N18
\b2v_inst2|b2v_inst2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst2|Mux4~0_combout\ = \b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\ $ (\b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	datac => \b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\,
	combout => \b2v_inst2|b2v_inst2|Mux4~0_combout\);

-- Location: LCCOMB_X63_Y39_N26
\b2v_inst2|b2v_inst3|O[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[1]~14_combout\ = (\b2v_inst2|b2v_inst|o[0]~1_combout\ & ((\b2v_inst2|b2v_inst2|Mux3~0_combout\) # ((\b2v_inst2|b2v_inst|o[1]~0_combout\)))) # (!\b2v_inst2|b2v_inst|o[0]~1_combout\ & (((!\b2v_inst2|b2v_inst|o[1]~0_combout\ & 
-- \b2v_inst2|b2v_inst2|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst2|Mux3~0_combout\,
	datab => \b2v_inst2|b2v_inst|o[0]~1_combout\,
	datac => \b2v_inst2|b2v_inst|o[1]~0_combout\,
	datad => \b2v_inst2|b2v_inst2|Mux0~0_combout\,
	combout => \b2v_inst2|b2v_inst3|O[1]~14_combout\);

-- Location: LCCOMB_X63_Y39_N16
\b2v_inst2|b2v_inst2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst2|Mux6~0_combout\ = \b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\ $ (\b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	datad => \b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\,
	combout => \b2v_inst2|b2v_inst2|Mux6~0_combout\);

-- Location: LCCOMB_X63_Y39_N28
\b2v_inst2|b2v_inst3|O[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[1]~15_combout\ = (\b2v_inst2|b2v_inst3|O[1]~14_combout\ & ((\b2v_inst2|b2v_inst2|Mux10~0_combout\) # ((!\b2v_inst2|b2v_inst|o[1]~0_combout\)))) # (!\b2v_inst2|b2v_inst3|O[1]~14_combout\ & (((\b2v_inst2|b2v_inst|o[1]~0_combout\ & 
-- \b2v_inst2|b2v_inst2|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst3|O[1]~14_combout\,
	datab => \b2v_inst2|b2v_inst2|Mux10~0_combout\,
	datac => \b2v_inst2|b2v_inst|o[1]~0_combout\,
	datad => \b2v_inst2|b2v_inst2|Mux6~0_combout\,
	combout => \b2v_inst2|b2v_inst3|O[1]~15_combout\);

-- Location: LCCOMB_X62_Y39_N8
\b2v_inst2|b2v_inst3|O[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[1]~16_combout\ = (\b2v_inst2|b2v_inst3|O[1]~3_combout\ & (((\b2v_inst2|b2v_inst3|O[1]~15_combout\) # (!\b2v_inst2|b2v_inst3|O[1]~2_combout\)))) # (!\b2v_inst2|b2v_inst3|O[1]~3_combout\ & 
-- (\b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ & (\b2v_inst2|b2v_inst3|O[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst3|O[1]~3_combout\,
	datab => \b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\,
	datac => \b2v_inst2|b2v_inst3|O[1]~2_combout\,
	datad => \b2v_inst2|b2v_inst3|O[1]~15_combout\,
	combout => \b2v_inst2|b2v_inst3|O[1]~16_combout\);

-- Location: LCCOMB_X62_Y39_N20
\b2v_inst2|b2v_inst2|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst2|Mux7~0_combout\ = \b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\ $ (\b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ $ (\b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\,
	datab => \b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\,
	datad => \b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	combout => \b2v_inst2|b2v_inst2|Mux7~0_combout\);

-- Location: LCCOMB_X62_Y39_N26
\b2v_inst2|b2v_inst3|O[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[1]~17_combout\ = (\b2v_inst2|b2v_inst3|O[1]~5_combout\ & ((\b2v_inst2|b2v_inst3|O[1]~16_combout\ & ((\b2v_inst2|b2v_inst2|Mux7~0_combout\))) # (!\b2v_inst2|b2v_inst3|O[1]~16_combout\ & (\b2v_inst2|b2v_inst2|Mux4~0_combout\)))) # 
-- (!\b2v_inst2|b2v_inst3|O[1]~5_combout\ & (((\b2v_inst2|b2v_inst3|O[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst3|O[1]~5_combout\,
	datab => \b2v_inst2|b2v_inst2|Mux4~0_combout\,
	datac => \b2v_inst2|b2v_inst3|O[1]~16_combout\,
	datad => \b2v_inst2|b2v_inst2|Mux7~0_combout\,
	combout => \b2v_inst2|b2v_inst3|O[1]~17_combout\);

-- Location: IOIBUF_X67_Y38_N8
\Input[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(1),
	o => \Input[1]~input_o\);

-- Location: LCCOMB_X66_Y39_N6
\b2v_inst2|b2v_inst1|c[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst1|c\(1) = \Input[1]~input_o\ $ (((\b2v_inst2|b2v_inst3|O[1]~22_combout\) # ((\b2v_inst2|b2v_inst3|O[0]~7_combout\ & \b2v_inst2|b2v_inst3|O[1]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst3|O[0]~7_combout\,
	datab => \b2v_inst2|b2v_inst3|O[1]~22_combout\,
	datac => \b2v_inst2|b2v_inst3|O[1]~17_combout\,
	datad => \Input[1]~input_o\,
	combout => \b2v_inst2|b2v_inst1|c\(1));

-- Location: LCCOMB_X64_Y39_N10
\b2v_inst2|b2v_inst3|O[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[2]~29_combout\ = (\b2v_inst2|b2v_inst|o[0]~1_combout\ & (((\b2v_inst2|b2v_inst|o[1]~0_combout\)))) # (!\b2v_inst2|b2v_inst|o[0]~1_combout\ & ((\b2v_inst2|b2v_inst|o[1]~0_combout\ & ((\b2v_inst2|b2v_inst2|Mux3~0_combout\))) # 
-- (!\b2v_inst2|b2v_inst|o[1]~0_combout\ & (\b2v_inst2|b2v_inst2|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst2|Mux0~0_combout\,
	datab => \b2v_inst2|b2v_inst|o[0]~1_combout\,
	datac => \b2v_inst2|b2v_inst2|Mux3~0_combout\,
	datad => \b2v_inst2|b2v_inst|o[1]~0_combout\,
	combout => \b2v_inst2|b2v_inst3|O[2]~29_combout\);

-- Location: LCCOMB_X64_Y39_N28
\b2v_inst2|b2v_inst3|O[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[2]~30_combout\ = (\b2v_inst2|b2v_inst|o[0]~1_combout\ & (\b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\ $ (((\b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ & \b2v_inst2|b2v_inst3|O[2]~29_combout\))))) # 
-- (!\b2v_inst2|b2v_inst|o[0]~1_combout\ & (((\b2v_inst2|b2v_inst3|O[2]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\,
	datab => \b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	datac => \b2v_inst2|b2v_inst|o[0]~1_combout\,
	datad => \b2v_inst2|b2v_inst3|O[2]~29_combout\,
	combout => \b2v_inst2|b2v_inst3|O[2]~30_combout\);

-- Location: LCCOMB_X63_Y39_N0
\b2v_inst2|b2v_inst3|O[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[2]~27_combout\ = (\b2v_inst2|b2v_inst|o[1]~0_combout\ & (((\b2v_inst2|b2v_inst|o[0]~1_combout\)))) # (!\b2v_inst2|b2v_inst|o[1]~0_combout\ & (\b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\ $ 
-- (((\b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\ & !\b2v_inst2|b2v_inst|o[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	datab => \b2v_inst2|b2v_inst|o[0]~1_combout\,
	datac => \b2v_inst2|b2v_inst|o[1]~0_combout\,
	datad => \b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\,
	combout => \b2v_inst2|b2v_inst3|O[2]~27_combout\);

-- Location: LCCOMB_X64_Y39_N24
\b2v_inst2|b2v_inst3|O[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[2]~28_combout\ = (\b2v_inst2|b2v_inst|o[1]~0_combout\ & (\b2v_inst2|b2v_inst2|Mux8~0_combout\ $ (((\b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\ & !\b2v_inst2|b2v_inst3|O[2]~27_combout\))))) # (!\b2v_inst2|b2v_inst|o[1]~0_combout\ 
-- & (((\b2v_inst2|b2v_inst3|O[2]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst2|Mux8~0_combout\,
	datab => \b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	datac => \b2v_inst2|b2v_inst3|O[2]~27_combout\,
	datad => \b2v_inst2|b2v_inst|o[1]~0_combout\,
	combout => \b2v_inst2|b2v_inst3|O[2]~28_combout\);

-- Location: LCCOMB_X65_Y39_N24
\b2v_inst2|b2v_inst3|O[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[2]~31_combout\ = (\b2v_inst2|b2v_inst3|O[0]~8_combout\ & ((\b2v_inst2|b2v_inst|o[2]~2_combout\ & ((\b2v_inst2|b2v_inst3|O[2]~28_combout\))) # (!\b2v_inst2|b2v_inst|o[2]~2_combout\ & (\b2v_inst2|b2v_inst3|O[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst3|O[0]~8_combout\,
	datab => \b2v_inst2|b2v_inst3|O[2]~30_combout\,
	datac => \b2v_inst2|b2v_inst|o[2]~2_combout\,
	datad => \b2v_inst2|b2v_inst3|O[2]~28_combout\,
	combout => \b2v_inst2|b2v_inst3|O[2]~31_combout\);

-- Location: LCCOMB_X62_Y39_N16
\b2v_inst2|b2v_inst3|O[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[2]~23_combout\ = (\b2v_inst2|b2v_inst|o[1]~0_combout\ & ((\b2v_inst2|b2v_inst2|Mux7~0_combout\) # ((\b2v_inst2|b2v_inst|o[0]~1_combout\)))) # (!\b2v_inst2|b2v_inst|o[1]~0_combout\ & (((!\b2v_inst2|b2v_inst|o[0]~1_combout\ & 
-- \b2v_inst2|b2v_inst2|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst|o[1]~0_combout\,
	datab => \b2v_inst2|b2v_inst2|Mux7~0_combout\,
	datac => \b2v_inst2|b2v_inst|o[0]~1_combout\,
	datad => \b2v_inst2|b2v_inst2|Mux4~0_combout\,
	combout => \b2v_inst2|b2v_inst3|O[2]~23_combout\);

-- Location: LCCOMB_X63_Y39_N18
\b2v_inst2|b2v_inst3|O[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[2]~24_combout\ = (\b2v_inst2|b2v_inst3|O[2]~23_combout\ & (((\b2v_inst2|b2v_inst2|Mux9~0_combout\) # (!\b2v_inst2|b2v_inst|o[0]~1_combout\)))) # (!\b2v_inst2|b2v_inst3|O[2]~23_combout\ & (\b2v_inst2|b2v_inst2|Mux5~0_combout\ & 
-- (\b2v_inst2|b2v_inst|o[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst3|O[2]~23_combout\,
	datab => \b2v_inst2|b2v_inst2|Mux5~0_combout\,
	datac => \b2v_inst2|b2v_inst|o[0]~1_combout\,
	datad => \b2v_inst2|b2v_inst2|Mux9~0_combout\,
	combout => \b2v_inst2|b2v_inst3|O[2]~24_combout\);

-- Location: LCCOMB_X62_Y39_N6
\b2v_inst2|b2v_inst3|O[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[2]~25_combout\ = (\b2v_inst2|b2v_inst3|O[1]~3_combout\ & (((\b2v_inst2|b2v_inst3|O[2]~24_combout\) # (!\b2v_inst2|b2v_inst3|O[1]~2_combout\)))) # (!\b2v_inst2|b2v_inst3|O[1]~3_combout\ & 
-- (\b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\ & (\b2v_inst2|b2v_inst3|O[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst3|O[1]~3_combout\,
	datab => \b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	datac => \b2v_inst2|b2v_inst3|O[1]~2_combout\,
	datad => \b2v_inst2|b2v_inst3|O[2]~24_combout\,
	combout => \b2v_inst2|b2v_inst3|O[2]~25_combout\);

-- Location: LCCOMB_X62_Y39_N24
\b2v_inst2|b2v_inst3|O[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[2]~26_combout\ = (\b2v_inst2|b2v_inst3|O[1]~5_combout\ & (\b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ $ (((\b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\ & \b2v_inst2|b2v_inst3|O[2]~25_combout\))))) # 
-- (!\b2v_inst2|b2v_inst3|O[1]~5_combout\ & (((\b2v_inst2|b2v_inst3|O[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst3|O[1]~5_combout\,
	datab => \b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	datac => \b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\,
	datad => \b2v_inst2|b2v_inst3|O[2]~25_combout\,
	combout => \b2v_inst2|b2v_inst3|O[2]~26_combout\);

-- Location: IOIBUF_X67_Y38_N15
\Input[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(2),
	o => \Input[2]~input_o\);

-- Location: LCCOMB_X66_Y39_N8
\b2v_inst2|b2v_inst1|c[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst1|c\(2) = \Input[2]~input_o\ $ (((\b2v_inst2|b2v_inst3|O[2]~31_combout\) # ((\b2v_inst2|b2v_inst3|O[0]~7_combout\ & \b2v_inst2|b2v_inst3|O[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst3|O[0]~7_combout\,
	datab => \b2v_inst2|b2v_inst3|O[2]~31_combout\,
	datac => \b2v_inst2|b2v_inst3|O[2]~26_combout\,
	datad => \Input[2]~input_o\,
	combout => \b2v_inst2|b2v_inst1|c\(2));

-- Location: LCCOMB_X62_Y39_N14
\b2v_inst2|b2v_inst3|O[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[3]~38_combout\ = (\b2v_inst2|b2v_inst|o[1]~0_combout\ & (((\b2v_inst2|b2v_inst|o[0]~1_combout\) # (\b2v_inst2|b2v_inst2|Mux5~0_combout\)))) # (!\b2v_inst2|b2v_inst|o[1]~0_combout\ & (\b2v_inst2|b2v_inst2|Mux4~0_combout\ & 
-- (!\b2v_inst2|b2v_inst|o[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst|o[1]~0_combout\,
	datab => \b2v_inst2|b2v_inst2|Mux4~0_combout\,
	datac => \b2v_inst2|b2v_inst|o[0]~1_combout\,
	datad => \b2v_inst2|b2v_inst2|Mux5~0_combout\,
	combout => \b2v_inst2|b2v_inst3|O[3]~38_combout\);

-- Location: LCCOMB_X63_Y39_N30
\b2v_inst2|b2v_inst3|O[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[3]~39_combout\ = (\b2v_inst2|b2v_inst|o[0]~1_combout\ & (\b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\ $ (((\b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\ & \b2v_inst2|b2v_inst3|O[3]~38_combout\))))) # 
-- (!\b2v_inst2|b2v_inst|o[0]~1_combout\ & (((\b2v_inst2|b2v_inst3|O[3]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	datab => \b2v_inst|b2v_inst3|b2v_inst14|c[0]~0_combout\,
	datac => \b2v_inst2|b2v_inst|o[0]~1_combout\,
	datad => \b2v_inst2|b2v_inst3|O[3]~38_combout\,
	combout => \b2v_inst2|b2v_inst3|O[3]~39_combout\);

-- Location: LCCOMB_X64_Y39_N14
\b2v_inst2|b2v_inst3|O[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[3]~36_combout\ = (\b2v_inst2|b2v_inst|o[1]~0_combout\ & (((\b2v_inst2|b2v_inst|o[0]~1_combout\)))) # (!\b2v_inst2|b2v_inst|o[1]~0_combout\ & (\b2v_inst2|b2v_inst2|Mux8~0_combout\ $ (((!\b2v_inst2|b2v_inst|o[0]~1_combout\ & 
-- \b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst2|Mux8~0_combout\,
	datab => \b2v_inst2|b2v_inst|o[0]~1_combout\,
	datac => \b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	datad => \b2v_inst2|b2v_inst|o[1]~0_combout\,
	combout => \b2v_inst2|b2v_inst3|O[3]~36_combout\);

-- Location: LCCOMB_X64_Y39_N12
\b2v_inst2|b2v_inst3|O[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[3]~37_combout\ = (\b2v_inst2|b2v_inst3|O[3]~36_combout\ & ((\b2v_inst2|b2v_inst2|Mux10~0_combout\) # ((!\b2v_inst2|b2v_inst|o[1]~0_combout\)))) # (!\b2v_inst2|b2v_inst3|O[3]~36_combout\ & (((\b2v_inst2|b2v_inst2|Mux9~0_combout\ & 
-- \b2v_inst2|b2v_inst|o[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst2|Mux10~0_combout\,
	datab => \b2v_inst2|b2v_inst3|O[3]~36_combout\,
	datac => \b2v_inst2|b2v_inst2|Mux9~0_combout\,
	datad => \b2v_inst2|b2v_inst|o[1]~0_combout\,
	combout => \b2v_inst2|b2v_inst3|O[3]~37_combout\);

-- Location: LCCOMB_X64_Y39_N26
\b2v_inst2|b2v_inst3|O[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[3]~40_combout\ = (\b2v_inst2|b2v_inst3|O[0]~8_combout\ & ((\b2v_inst2|b2v_inst|o[2]~2_combout\ & ((\b2v_inst2|b2v_inst3|O[3]~37_combout\))) # (!\b2v_inst2|b2v_inst|o[2]~2_combout\ & (\b2v_inst2|b2v_inst3|O[3]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst|o[2]~2_combout\,
	datab => \b2v_inst2|b2v_inst3|O[3]~39_combout\,
	datac => \b2v_inst2|b2v_inst3|O[0]~8_combout\,
	datad => \b2v_inst2|b2v_inst3|O[3]~37_combout\,
	combout => \b2v_inst2|b2v_inst3|O[3]~40_combout\);

-- Location: LCCOMB_X63_Y39_N6
\b2v_inst2|b2v_inst3|O[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[3]~32_combout\ = (\b2v_inst2|b2v_inst|o[1]~0_combout\ & (((\b2v_inst2|b2v_inst|o[0]~1_combout\)))) # (!\b2v_inst2|b2v_inst|o[1]~0_combout\ & (\b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\ $ (((\b2v_inst2|b2v_inst|o[0]~1_combout\ & 
-- \b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst3|b2v_inst14|c[1]~3_combout\,
	datab => \b2v_inst2|b2v_inst|o[0]~1_combout\,
	datac => \b2v_inst2|b2v_inst|o[1]~0_combout\,
	datad => \b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	combout => \b2v_inst2|b2v_inst3|O[3]~32_combout\);

-- Location: LCCOMB_X63_Y39_N12
\b2v_inst2|b2v_inst3|O[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[3]~33_combout\ = (\b2v_inst2|b2v_inst|o[1]~0_combout\ & (\b2v_inst2|b2v_inst2|Mux2~0_combout\ $ (((\b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\ & \b2v_inst2|b2v_inst3|O[3]~32_combout\))))) # (!\b2v_inst2|b2v_inst|o[1]~0_combout\ & 
-- (((\b2v_inst2|b2v_inst3|O[3]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	datab => \b2v_inst2|b2v_inst2|Mux2~0_combout\,
	datac => \b2v_inst2|b2v_inst|o[1]~0_combout\,
	datad => \b2v_inst2|b2v_inst3|O[3]~32_combout\,
	combout => \b2v_inst2|b2v_inst3|O[3]~33_combout\);

-- Location: LCCOMB_X62_Y39_N2
\b2v_inst2|b2v_inst3|O[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[3]~34_combout\ = (\b2v_inst2|b2v_inst3|O[1]~2_combout\ & ((\b2v_inst2|b2v_inst3|O[1]~3_combout\ & (\b2v_inst2|b2v_inst3|O[3]~33_combout\)) # (!\b2v_inst2|b2v_inst3|O[1]~3_combout\ & 
-- ((\b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\))))) # (!\b2v_inst2|b2v_inst3|O[1]~2_combout\ & (((\b2v_inst2|b2v_inst3|O[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst3|O[1]~2_combout\,
	datab => \b2v_inst2|b2v_inst3|O[3]~33_combout\,
	datac => \b2v_inst2|b2v_inst3|O[1]~3_combout\,
	datad => \b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	combout => \b2v_inst2|b2v_inst3|O[3]~34_combout\);

-- Location: LCCOMB_X62_Y39_N0
\b2v_inst2|b2v_inst3|O[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst3|O[3]~35_combout\ = (\b2v_inst2|b2v_inst3|O[1]~5_combout\ & (\b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\ $ (((\b2v_inst2|b2v_inst3|O[3]~34_combout\ & \b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\))))) # 
-- (!\b2v_inst2|b2v_inst3|O[1]~5_combout\ & (\b2v_inst2|b2v_inst3|O[3]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst3|O[1]~5_combout\,
	datab => \b2v_inst2|b2v_inst3|O[3]~34_combout\,
	datac => \b2v_inst|b2v_inst3|b2v_inst14|c[3]~2_combout\,
	datad => \b2v_inst|b2v_inst3|b2v_inst14|c[2]~1_combout\,
	combout => \b2v_inst2|b2v_inst3|O[3]~35_combout\);

-- Location: IOIBUF_X67_Y40_N22
\Input[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(3),
	o => \Input[3]~input_o\);

-- Location: LCCOMB_X66_Y39_N2
\b2v_inst2|b2v_inst1|c[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst1|c\(3) = \Input[3]~input_o\ $ (((\b2v_inst2|b2v_inst3|O[3]~40_combout\) # ((\b2v_inst2|b2v_inst3|O[0]~7_combout\ & \b2v_inst2|b2v_inst3|O[3]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst3|O[0]~7_combout\,
	datab => \b2v_inst2|b2v_inst3|O[3]~40_combout\,
	datac => \b2v_inst2|b2v_inst3|O[3]~35_combout\,
	datad => \Input[3]~input_o\,
	combout => \b2v_inst2|b2v_inst1|c\(3));

ww_pin_name1 <= \pin_name1~output_o\;

ww_Decod(0) <= \Decod[0]~output_o\;

ww_Decod(1) <= \Decod[1]~output_o\;

ww_Decod(2) <= \Decod[2]~output_o\;

ww_Decod(3) <= \Decod[3]~output_o\;
END structure;


