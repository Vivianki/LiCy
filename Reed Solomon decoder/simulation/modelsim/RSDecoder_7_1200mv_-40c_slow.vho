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

-- DATE "09/21/2016 21:27:52"

-- 
-- Device: Altera EP4CE30F23I7 Package FBGA484
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

ENTITY 	Syndrome IS
    PORT (
	S0 : OUT std_logic_vector(3 DOWNTO 0);
	Clear : IN std_logic;
	Clock : IN std_logic;
	Input : IN std_logic_vector(3 DOWNTO 0);
	S1 : OUT std_logic_vector(3 DOWNTO 0);
	S2 : OUT std_logic_vector(3 DOWNTO 0);
	S3 : OUT std_logic_vector(3 DOWNTO 0);
	S4 : OUT std_logic_vector(3 DOWNTO 0);
	S5 : OUT std_logic_vector(3 DOWNTO 0);
	S6 : OUT std_logic_vector(3 DOWNTO 0);
	S7 : OUT std_logic_vector(3 DOWNTO 0)
	);
END Syndrome;

-- Design Ports Information
-- S0[3]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0[2]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0[1]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0[0]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[3]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[2]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[1]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[0]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2[3]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2[2]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2[1]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2[0]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3[2]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3[1]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3[0]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4[2]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4[1]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4[0]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S5[3]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S5[2]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S5[1]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S5[0]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S6[3]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S6[2]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S6[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S6[0]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S7[3]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S7[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S7[1]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S7[0]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[3]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clear	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[2]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[1]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[0]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Syndrome IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Clear : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Input : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S5 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S6 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S7 : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst12|o[3]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst11|o[3]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst14|o[3]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst13|o[3]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst17|o[3]~13clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst30|o[3]~16clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst16|o[3]~13clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst26|o[3]~20clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clear~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \S0[3]~output_o\ : std_logic;
SIGNAL \S0[2]~output_o\ : std_logic;
SIGNAL \S0[1]~output_o\ : std_logic;
SIGNAL \S0[0]~output_o\ : std_logic;
SIGNAL \S1[3]~output_o\ : std_logic;
SIGNAL \S1[2]~output_o\ : std_logic;
SIGNAL \S1[1]~output_o\ : std_logic;
SIGNAL \S1[0]~output_o\ : std_logic;
SIGNAL \S2[3]~output_o\ : std_logic;
SIGNAL \S2[2]~output_o\ : std_logic;
SIGNAL \S2[1]~output_o\ : std_logic;
SIGNAL \S2[0]~output_o\ : std_logic;
SIGNAL \S3[3]~output_o\ : std_logic;
SIGNAL \S3[2]~output_o\ : std_logic;
SIGNAL \S3[1]~output_o\ : std_logic;
SIGNAL \S3[0]~output_o\ : std_logic;
SIGNAL \S4[3]~output_o\ : std_logic;
SIGNAL \S4[2]~output_o\ : std_logic;
SIGNAL \S4[1]~output_o\ : std_logic;
SIGNAL \S4[0]~output_o\ : std_logic;
SIGNAL \S5[3]~output_o\ : std_logic;
SIGNAL \S5[2]~output_o\ : std_logic;
SIGNAL \S5[1]~output_o\ : std_logic;
SIGNAL \S5[0]~output_o\ : std_logic;
SIGNAL \S6[3]~output_o\ : std_logic;
SIGNAL \S6[2]~output_o\ : std_logic;
SIGNAL \S6[1]~output_o\ : std_logic;
SIGNAL \S6[0]~output_o\ : std_logic;
SIGNAL \S7[3]~output_o\ : std_logic;
SIGNAL \S7[2]~output_o\ : std_logic;
SIGNAL \S7[1]~output_o\ : std_logic;
SIGNAL \S7[0]~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Input[3]~input_o\ : std_logic;
SIGNAL \Input[2]~input_o\ : std_logic;
SIGNAL \Input[1]~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \Input[0]~input_o\ : std_logic;
SIGNAL \inst11|o[0]~4_combout\ : std_logic;
SIGNAL \inst11|Equal0~0_combout\ : std_logic;
SIGNAL \inst11|o[3]~1_combout\ : std_logic;
SIGNAL \inst11|o[3]~1clkctrl_outclk\ : std_logic;
SIGNAL \Clear~input_o\ : std_logic;
SIGNAL \Clear~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst11|o[1]~3_combout\ : std_logic;
SIGNAL \inst11|o[2]~2_combout\ : std_logic;
SIGNAL \inst11|o[3]~0_combout\ : std_logic;
SIGNAL \inst12|o[1]~3_combout\ : std_logic;
SIGNAL \inst12|Equal0~0_combout\ : std_logic;
SIGNAL \inst12|o[0]~4_combout\ : std_logic;
SIGNAL \inst12|o[3]~1_combout\ : std_logic;
SIGNAL \inst12|o[3]~1clkctrl_outclk\ : std_logic;
SIGNAL \inst12|o[2]~2_combout\ : std_logic;
SIGNAL \inst12|o[3]~0_combout\ : std_logic;
SIGNAL \inst13|o[0]~4_combout\ : std_logic;
SIGNAL \inst13|o[3]~1_combout\ : std_logic;
SIGNAL \inst13|o[3]~1clkctrl_outclk\ : std_logic;
SIGNAL \inst13|o[2]~2_combout\ : std_logic;
SIGNAL \inst13|o[1]~3_combout\ : std_logic;
SIGNAL \inst13|Equal0~0_combout\ : std_logic;
SIGNAL \inst13|o[3]~0_combout\ : std_logic;
SIGNAL \inst14|o[2]~2_combout\ : std_logic;
SIGNAL \inst14|Equal0~0_combout\ : std_logic;
SIGNAL \inst14|o[1]~3_combout\ : std_logic;
SIGNAL \inst14|o[3]~1_combout\ : std_logic;
SIGNAL \inst14|o[3]~1clkctrl_outclk\ : std_logic;
SIGNAL \inst14|o[0]~4_combout\ : std_logic;
SIGNAL \inst14|o[3]~0_combout\ : std_logic;
SIGNAL \inst16|o[0]~14_combout\ : std_logic;
SIGNAL \inst16|o[1]~12_combout\ : std_logic;
SIGNAL \inst16|o[2]~11_combout\ : std_logic;
SIGNAL \inst16|o[3]~13_combout\ : std_logic;
SIGNAL \inst16|o[3]~13clkctrl_outclk\ : std_logic;
SIGNAL \inst16|Equal0~0_combout\ : std_logic;
SIGNAL \inst16|o[3]~10_combout\ : std_logic;
SIGNAL \inst17|o[1]~14_combout\ : std_logic;
SIGNAL \inst17|o[3]~13_combout\ : std_logic;
SIGNAL \inst17|o[3]~13clkctrl_outclk\ : std_logic;
SIGNAL \inst17|o[2]~11_combout\ : std_logic;
SIGNAL \inst17|o[2]~12_combout\ : std_logic;
SIGNAL \inst17|Equal0~0_combout\ : std_logic;
SIGNAL \inst17|o[3]~10_combout\ : std_logic;
SIGNAL \inst26|o[1]~16_combout\ : std_logic;
SIGNAL \inst26|o[2]~19_combout\ : std_logic;
SIGNAL \inst26|o[3]~20_combout\ : std_logic;
SIGNAL \inst26|o[3]~20clkctrl_outclk\ : std_logic;
SIGNAL \inst26|o[0]~17_combout\ : std_logic;
SIGNAL \inst26|Equal0~0_combout\ : std_logic;
SIGNAL \inst26|o[3]~18_combout\ : std_logic;
SIGNAL \inst30|o[1]~17_combout\ : std_logic;
SIGNAL \inst30|o[3]~16_combout\ : std_logic;
SIGNAL \inst30|o[3]~16clkctrl_outclk\ : std_logic;
SIGNAL \inst30|o[2]~15_combout\ : std_logic;
SIGNAL \inst30|Equal0~0_combout\ : std_logic;
SIGNAL \inst30|o[0]~18_combout\ : std_logic;
SIGNAL \inst30|o[3]~14_combout\ : std_logic;
SIGNAL \inst21|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst32|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst20|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst28|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst19|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst25|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst15|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst24|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst22|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst10|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst23|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst27|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst31|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst16|o\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst11|o\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst17|o\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst12|o\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst26|o\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst13|o\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst30|o\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst14|o\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Clear~inputclkctrl_outclk\ : std_logic;

BEGIN

S0 <= ww_S0;
ww_Clear <= Clear;
ww_Clock <= Clock;
ww_Input <= Input;
S1 <= ww_S1;
S2 <= ww_S2;
S3 <= ww_S3;
S4 <= ww_S4;
S5 <= ww_S5;
S6 <= ww_S6;
S7 <= ww_S7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst12|o[3]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst12|o[3]~1_combout\);

\inst11|o[3]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst11|o[3]~1_combout\);

\inst14|o[3]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst14|o[3]~1_combout\);

\inst13|o[3]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst13|o[3]~1_combout\);

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);

\inst17|o[3]~13clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst17|o[3]~13_combout\);

\inst30|o[3]~16clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst30|o[3]~16_combout\);

\inst16|o[3]~13clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst16|o[3]~13_combout\);

\inst26|o[3]~20clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst26|o[3]~20_combout\);

\Clear~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clear~input_o\);
\ALT_INV_Clear~inputclkctrl_outclk\ <= NOT \Clear~inputclkctrl_outclk\;

-- Location: IOOBUF_X0_Y40_N9
\S0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|q\(3),
	devoe => ww_devoe,
	o => \S0[3]~output_o\);

-- Location: IOOBUF_X3_Y43_N23
\S0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|q\(2),
	devoe => ww_devoe,
	o => \S0[2]~output_o\);

-- Location: IOOBUF_X0_Y39_N9
\S0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|q\(1),
	devoe => ww_devoe,
	o => \S0[1]~output_o\);

-- Location: IOOBUF_X0_Y40_N2
\S0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|q\(0),
	devoe => ww_devoe,
	o => \S0[0]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\S1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst19|q\(3),
	devoe => ww_devoe,
	o => \S1[3]~output_o\);

-- Location: IOOBUF_X0_Y36_N16
\S1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst19|q\(2),
	devoe => ww_devoe,
	o => \S1[2]~output_o\);

-- Location: IOOBUF_X0_Y39_N2
\S1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst19|q\(1),
	devoe => ww_devoe,
	o => \S1[1]~output_o\);

-- Location: IOOBUF_X3_Y43_N2
\S1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst19|q\(0),
	devoe => ww_devoe,
	o => \S1[0]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\S2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst20|q\(3),
	devoe => ww_devoe,
	o => \S2[3]~output_o\);

-- Location: IOOBUF_X0_Y31_N23
\S2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst20|q\(2),
	devoe => ww_devoe,
	o => \S2[2]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\S2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst20|q\(1),
	devoe => ww_devoe,
	o => \S2[1]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\S2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst20|q\(0),
	devoe => ww_devoe,
	o => \S2[0]~output_o\);

-- Location: IOOBUF_X0_Y28_N2
\S3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|q\(3),
	devoe => ww_devoe,
	o => \S3[3]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\S3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|q\(2),
	devoe => ww_devoe,
	o => \S3[2]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\S3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|q\(1),
	devoe => ww_devoe,
	o => \S3[1]~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\S3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|q\(0),
	devoe => ww_devoe,
	o => \S3[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\S4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|q\(3),
	devoe => ww_devoe,
	o => \S4[3]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\S4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|q\(2),
	devoe => ww_devoe,
	o => \S4[2]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\S4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|q\(1),
	devoe => ww_devoe,
	o => \S4[1]~output_o\);

-- Location: IOOBUF_X0_Y20_N23
\S4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|q\(0),
	devoe => ww_devoe,
	o => \S4[0]~output_o\);

-- Location: IOOBUF_X0_Y37_N2
\S5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|q\(3),
	devoe => ww_devoe,
	o => \S5[3]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\S5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|q\(2),
	devoe => ww_devoe,
	o => \S5[2]~output_o\);

-- Location: IOOBUF_X0_Y37_N16
\S5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|q\(1),
	devoe => ww_devoe,
	o => \S5[1]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\S5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|q\(0),
	devoe => ww_devoe,
	o => \S5[0]~output_o\);

-- Location: IOOBUF_X0_Y36_N2
\S6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst28|q\(3),
	devoe => ww_devoe,
	o => \S6[3]~output_o\);

-- Location: IOOBUF_X5_Y43_N2
\S6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst28|q\(2),
	devoe => ww_devoe,
	o => \S6[2]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\S6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst28|q\(1),
	devoe => ww_devoe,
	o => \S6[1]~output_o\);

-- Location: IOOBUF_X5_Y43_N30
\S6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst28|q\(0),
	devoe => ww_devoe,
	o => \S6[0]~output_o\);

-- Location: IOOBUF_X0_Y37_N23
\S7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|q\(3),
	devoe => ww_devoe,
	o => \S7[3]~output_o\);

-- Location: IOOBUF_X0_Y38_N16
\S7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|q\(2),
	devoe => ww_devoe,
	o => \S7[2]~output_o\);

-- Location: IOOBUF_X0_Y38_N23
\S7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|q\(1),
	devoe => ww_devoe,
	o => \S7[1]~output_o\);

-- Location: IOOBUF_X5_Y43_N9
\S7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|q\(0),
	devoe => ww_devoe,
	o => \S7[0]~output_o\);

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

-- Location: IOIBUF_X0_Y28_N22
\Input[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(3),
	o => \Input[3]~input_o\);

-- Location: IOIBUF_X0_Y35_N8
\Input[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(2),
	o => \Input[2]~input_o\);

-- Location: IOIBUF_X0_Y30_N15
\Input[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(1),
	o => \Input[1]~input_o\);

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

-- Location: IOIBUF_X0_Y30_N1
\Input[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(0),
	o => \Input[0]~input_o\);

-- Location: LCCOMB_X3_Y32_N30
\inst11|o[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|o[0]~4_combout\ = (!\inst15|q\(0) & ((\inst15|q\(1)) # ((\inst15|q\(2)) # (\inst15|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|q\(0),
	datab => \inst15|q\(1),
	datac => \inst15|q\(2),
	datad => \inst15|q\(3),
	combout => \inst11|o[0]~4_combout\);

-- Location: LCCOMB_X3_Y32_N20
\inst11|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~0_combout\ = (!\inst15|q\(2) & (!\inst15|q\(0) & (!\inst15|q\(1) & !\inst15|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|q\(2),
	datab => \inst15|q\(0),
	datac => \inst15|q\(1),
	datad => \inst15|q\(3),
	combout => \inst11|Equal0~0_combout\);

-- Location: LCCOMB_X3_Y32_N4
\inst11|o[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|o[3]~1_combout\ = (\inst15|q\(2)) # ((\inst15|q\(3)) # ((\inst15|q\(1)) # (\inst15|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|q\(2),
	datab => \inst15|q\(3),
	datac => \inst15|q\(1),
	datad => \inst15|q\(0),
	combout => \inst11|o[3]~1_combout\);

-- Location: CLKCTRL_G4
\inst11|o[3]~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst11|o[3]~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst11|o[3]~1clkctrl_outclk\);

-- Location: LCCOMB_X3_Y32_N10
\inst11|o[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|o\(0) = (!\inst11|Equal0~0_combout\ & ((GLOBAL(\inst11|o[3]~1clkctrl_outclk\) & ((!\inst11|o[0]~4_combout\))) # (!GLOBAL(\inst11|o[3]~1clkctrl_outclk\) & (\inst11|o\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|o\(0),
	datab => \inst11|o[0]~4_combout\,
	datac => \inst11|Equal0~0_combout\,
	datad => \inst11|o[3]~1clkctrl_outclk\,
	combout => \inst11|o\(0));

-- Location: LCCOMB_X3_Y32_N24
\inst22|c[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|c\(0) = \Input[0]~input_o\ $ (\inst11|o\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input[0]~input_o\,
	datad => \inst11|o\(0),
	combout => \inst22|c\(0));

-- Location: IOIBUF_X36_Y0_N15
\Clear~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clear,
	o => \Clear~input_o\);

-- Location: CLKCTRL_G19
\Clear~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clear~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clear~inputclkctrl_outclk\);

-- Location: FF_X3_Y32_N25
\inst15|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst22|c\(0),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|q\(0));

-- Location: LCCOMB_X3_Y32_N16
\inst11|o[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|o[1]~3_combout\ = (!\inst15|q\(1) & ((\inst15|q\(2)) # ((\inst15|q\(0)) # (\inst15|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|q\(2),
	datab => \inst15|q\(0),
	datac => \inst15|q\(1),
	datad => \inst15|q\(3),
	combout => \inst11|o[1]~3_combout\);

-- Location: LCCOMB_X3_Y32_N6
\inst11|o[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|o\(1) = (!\inst11|Equal0~0_combout\ & ((GLOBAL(\inst11|o[3]~1clkctrl_outclk\) & (!\inst11|o[1]~3_combout\)) # (!GLOBAL(\inst11|o[3]~1clkctrl_outclk\) & ((\inst11|o\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|o[1]~3_combout\,
	datab => \inst11|o\(1),
	datac => \inst11|Equal0~0_combout\,
	datad => \inst11|o[3]~1clkctrl_outclk\,
	combout => \inst11|o\(1));

-- Location: LCCOMB_X3_Y32_N8
\inst22|c[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|c\(1) = \Input[1]~input_o\ $ (\inst11|o\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Input[1]~input_o\,
	datad => \inst11|o\(1),
	combout => \inst22|c\(1));

-- Location: FF_X3_Y32_N9
\inst15|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst22|c\(1),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|q\(1));

-- Location: LCCOMB_X3_Y32_N14
\inst11|o[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|o[2]~2_combout\ = (!\inst15|q\(2) & ((\inst15|q\(1)) # ((\inst15|q\(0)) # (\inst15|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|q\(2),
	datab => \inst15|q\(1),
	datac => \inst15|q\(0),
	datad => \inst15|q\(3),
	combout => \inst11|o[2]~2_combout\);

-- Location: LCCOMB_X3_Y32_N2
\inst11|o[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|o\(2) = (!\inst11|Equal0~0_combout\ & ((GLOBAL(\inst11|o[3]~1clkctrl_outclk\) & (!\inst11|o[2]~2_combout\)) # (!GLOBAL(\inst11|o[3]~1clkctrl_outclk\) & ((\inst11|o\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|o[2]~2_combout\,
	datab => \inst11|o\(2),
	datac => \inst11|Equal0~0_combout\,
	datad => \inst11|o[3]~1clkctrl_outclk\,
	combout => \inst11|o\(2));

-- Location: LCCOMB_X3_Y32_N26
\inst22|c[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|c\(2) = \Input[2]~input_o\ $ (\inst11|o\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input[2]~input_o\,
	datad => \inst11|o\(2),
	combout => \inst22|c\(2));

-- Location: FF_X3_Y32_N27
\inst15|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst22|c\(2),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|q\(2));

-- Location: LCCOMB_X3_Y32_N0
\inst11|o[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|o[3]~0_combout\ = (\inst15|q\(3)) # ((!\inst15|q\(2) & (!\inst15|q\(0) & !\inst15|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|q\(2),
	datab => \inst15|q\(0),
	datac => \inst15|q\(1),
	datad => \inst15|q\(3),
	combout => \inst11|o[3]~0_combout\);

-- Location: LCCOMB_X3_Y32_N12
\inst11|o[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|o\(3) = (!\inst11|Equal0~0_combout\ & ((GLOBAL(\inst11|o[3]~1clkctrl_outclk\) & (\inst11|o[3]~0_combout\)) # (!GLOBAL(\inst11|o[3]~1clkctrl_outclk\) & ((\inst11|o\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|o[3]~0_combout\,
	datab => \inst11|o\(3),
	datac => \inst11|Equal0~0_combout\,
	datad => \inst11|o[3]~1clkctrl_outclk\,
	combout => \inst11|o\(3));

-- Location: LCCOMB_X3_Y32_N28
\inst22|c[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|c\(3) = \Input[3]~input_o\ $ (\inst11|o\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Input[3]~input_o\,
	datad => \inst11|o\(3),
	combout => \inst22|c\(3));

-- Location: FF_X3_Y32_N29
\inst15|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst22|c\(3),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|q\(3));

-- Location: LCCOMB_X4_Y32_N24
\inst12|o[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|o[1]~3_combout\ = \inst19|q\(0) $ (\inst19|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|q\(0),
	datad => \inst19|q\(3),
	combout => \inst12|o[1]~3_combout\);

-- Location: LCCOMB_X4_Y32_N20
\inst12|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Equal0~0_combout\ = (!\inst19|q\(2) & (!\inst19|q\(1) & (!\inst19|q\(0) & !\inst19|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|q\(2),
	datab => \inst19|q\(1),
	datac => \inst19|q\(0),
	datad => \inst19|q\(3),
	combout => \inst12|Equal0~0_combout\);

-- Location: LCCOMB_X4_Y32_N12
\inst12|o[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|o\(1) = (!\inst12|Equal0~0_combout\ & ((GLOBAL(\inst12|o[3]~1clkctrl_outclk\) & ((\inst12|o[1]~3_combout\))) # (!GLOBAL(\inst12|o[3]~1clkctrl_outclk\) & (\inst12|o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|o\(1),
	datab => \inst12|o[1]~3_combout\,
	datac => \inst12|o[3]~1clkctrl_outclk\,
	datad => \inst12|Equal0~0_combout\,
	combout => \inst12|o\(1));

-- Location: LCCOMB_X4_Y32_N8
\inst23|c[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|c\(1) = \Input[1]~input_o\ $ (\inst12|o\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[1]~input_o\,
	datad => \inst12|o\(1),
	combout => \inst23|c\(1));

-- Location: FF_X4_Y32_N9
\inst19|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst23|c\(1),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|q\(1));

-- Location: LCCOMB_X4_Y32_N22
\inst12|o[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|o[0]~4_combout\ = (\inst19|q\(3)) # ((!\inst19|q\(0) & (!\inst19|q\(1) & !\inst19|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|q\(0),
	datab => \inst19|q\(1),
	datac => \inst19|q\(2),
	datad => \inst19|q\(3),
	combout => \inst12|o[0]~4_combout\);

-- Location: LCCOMB_X4_Y32_N10
\inst12|o[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|o\(0) = (!\inst12|Equal0~0_combout\ & ((GLOBAL(\inst12|o[3]~1clkctrl_outclk\) & ((\inst12|o[0]~4_combout\))) # (!GLOBAL(\inst12|o[3]~1clkctrl_outclk\) & (\inst12|o\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|o[3]~1clkctrl_outclk\,
	datab => \inst12|o\(0),
	datac => \inst12|o[0]~4_combout\,
	datad => \inst12|Equal0~0_combout\,
	combout => \inst12|o\(0));

-- Location: LCCOMB_X4_Y32_N18
\inst23|c[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|c\(0) = \Input[0]~input_o\ $ (\inst12|o\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Input[0]~input_o\,
	datad => \inst12|o\(0),
	combout => \inst23|c\(0));

-- Location: FF_X4_Y32_N19
\inst19|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst23|c\(0),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|q\(0));

-- Location: LCCOMB_X3_Y32_N22
\inst12|o[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|o[3]~1_combout\ = (\inst19|q\(0)) # ((\inst19|q\(2)) # ((\inst19|q\(1)) # (\inst19|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|q\(0),
	datab => \inst19|q\(2),
	datac => \inst19|q\(1),
	datad => \inst19|q\(3),
	combout => \inst12|o[3]~1_combout\);

-- Location: CLKCTRL_G13
\inst12|o[3]~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst12|o[3]~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst12|o[3]~1clkctrl_outclk\);

-- Location: LCCOMB_X4_Y32_N0
\inst12|o[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|o[2]~2_combout\ = (!\inst19|q\(1) & ((\inst19|q\(2)) # ((\inst19|q\(0)) # (\inst19|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|q\(2),
	datab => \inst19|q\(1),
	datac => \inst19|q\(0),
	datad => \inst19|q\(3),
	combout => \inst12|o[2]~2_combout\);

-- Location: LCCOMB_X4_Y32_N28
\inst12|o[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|o\(2) = (!\inst12|Equal0~0_combout\ & ((GLOBAL(\inst12|o[3]~1clkctrl_outclk\) & ((!\inst12|o[2]~2_combout\))) # (!GLOBAL(\inst12|o[3]~1clkctrl_outclk\) & (\inst12|o\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|o[3]~1clkctrl_outclk\,
	datab => \inst12|o\(2),
	datac => \inst12|o[2]~2_combout\,
	datad => \inst12|Equal0~0_combout\,
	combout => \inst12|o\(2));

-- Location: LCCOMB_X4_Y32_N26
\inst23|c[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|c\(2) = \Input[2]~input_o\ $ (\inst12|o\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input[2]~input_o\,
	datad => \inst12|o\(2),
	combout => \inst23|c\(2));

-- Location: FF_X4_Y32_N27
\inst19|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst23|c\(2),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|q\(2));

-- Location: LCCOMB_X4_Y32_N30
\inst12|o[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|o[3]~0_combout\ = (!\inst19|q\(2) & ((\inst19|q\(1)) # ((\inst19|q\(0)) # (\inst19|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|q\(2),
	datab => \inst19|q\(1),
	datac => \inst19|q\(0),
	datad => \inst19|q\(3),
	combout => \inst12|o[3]~0_combout\);

-- Location: LCCOMB_X4_Y32_N4
\inst12|o[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|o\(3) = (!\inst12|Equal0~0_combout\ & ((GLOBAL(\inst12|o[3]~1clkctrl_outclk\) & (!\inst12|o[3]~0_combout\)) # (!GLOBAL(\inst12|o[3]~1clkctrl_outclk\) & ((\inst12|o\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|o[3]~0_combout\,
	datab => \inst12|o\(3),
	datac => \inst12|o[3]~1clkctrl_outclk\,
	datad => \inst12|Equal0~0_combout\,
	combout => \inst12|o\(3));

-- Location: LCCOMB_X3_Y32_N18
\inst23|c[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|c\(3) = \Input[3]~input_o\ $ (\inst12|o\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Input[3]~input_o\,
	datad => \inst12|o\(3),
	combout => \inst23|c\(3));

-- Location: FF_X3_Y32_N19
\inst19|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst23|c\(3),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|q\(3));

-- Location: LCCOMB_X4_Y32_N6
\inst13|o[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|o[0]~4_combout\ = (\inst20|q\(2)) # ((!\inst20|q\(1) & (!\inst20|q\(0) & !\inst20|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|q\(1),
	datab => \inst20|q\(0),
	datac => \inst20|q\(2),
	datad => \inst20|q\(3),
	combout => \inst13|o[0]~4_combout\);

-- Location: LCCOMB_X6_Y32_N12
\inst13|o[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|o[3]~1_combout\ = (\inst20|q\(2)) # ((\inst20|q\(0)) # ((\inst20|q\(1)) # (\inst20|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|q\(2),
	datab => \inst20|q\(0),
	datac => \inst20|q\(1),
	datad => \inst20|q\(3),
	combout => \inst13|o[3]~1_combout\);

-- Location: CLKCTRL_G14
\inst13|o[3]~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst13|o[3]~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst13|o[3]~1clkctrl_outclk\);

-- Location: LCCOMB_X4_Y32_N2
\inst13|o[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|o\(0) = (!\inst13|Equal0~0_combout\ & ((GLOBAL(\inst13|o[3]~1clkctrl_outclk\) & ((\inst13|o[0]~4_combout\))) # (!GLOBAL(\inst13|o[3]~1clkctrl_outclk\) & (\inst13|o\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Equal0~0_combout\,
	datab => \inst13|o\(0),
	datac => \inst13|o[0]~4_combout\,
	datad => \inst13|o[3]~1clkctrl_outclk\,
	combout => \inst13|o\(0));

-- Location: LCCOMB_X4_Y32_N16
\inst5|c[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|c\(0) = \Input[0]~input_o\ $ (\inst13|o\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Input[0]~input_o\,
	datad => \inst13|o\(0),
	combout => \inst5|c\(0));

-- Location: FF_X4_Y32_N17
\inst20|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst5|c\(0),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|q\(0));

-- Location: LCCOMB_X5_Y32_N2
\inst13|o[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|o[2]~2_combout\ = \inst20|q\(0) $ (\inst20|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst20|q\(0),
	datad => \inst20|q\(3),
	combout => \inst13|o[2]~2_combout\);

-- Location: LCCOMB_X5_Y32_N0
\inst13|o[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|o\(2) = (!\inst13|Equal0~0_combout\ & ((GLOBAL(\inst13|o[3]~1clkctrl_outclk\) & ((\inst13|o[2]~2_combout\))) # (!GLOBAL(\inst13|o[3]~1clkctrl_outclk\) & (\inst13|o\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|o\(2),
	datab => \inst13|Equal0~0_combout\,
	datac => \inst13|o[2]~2_combout\,
	datad => \inst13|o[3]~1clkctrl_outclk\,
	combout => \inst13|o\(2));

-- Location: LCCOMB_X5_Y32_N14
\inst5|c[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|c\(2) = \Input[2]~input_o\ $ (\inst13|o\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input[2]~input_o\,
	datad => \inst13|o\(2),
	combout => \inst5|c\(2));

-- Location: FF_X5_Y32_N15
\inst20|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst5|c\(2),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|q\(2));

-- Location: LCCOMB_X5_Y32_N28
\inst13|o[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|o[1]~3_combout\ = \inst20|q\(2) $ (\inst20|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst20|q\(2),
	datad => \inst20|q\(3),
	combout => \inst13|o[1]~3_combout\);

-- Location: LCCOMB_X5_Y32_N20
\inst13|o[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|o\(1) = (!\inst13|Equal0~0_combout\ & ((GLOBAL(\inst13|o[3]~1clkctrl_outclk\) & (\inst13|o[1]~3_combout\)) # (!GLOBAL(\inst13|o[3]~1clkctrl_outclk\) & ((\inst13|o\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|o[1]~3_combout\,
	datab => \inst13|o\(1),
	datac => \inst13|Equal0~0_combout\,
	datad => \inst13|o[3]~1clkctrl_outclk\,
	combout => \inst13|o\(1));

-- Location: LCCOMB_X5_Y32_N4
\inst5|c[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|c\(1) = \Input[1]~input_o\ $ (\inst13|o\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[1]~input_o\,
	datad => \inst13|o\(1),
	combout => \inst5|c\(1));

-- Location: FF_X5_Y32_N5
\inst20|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst5|c\(1),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|q\(1));

-- Location: LCCOMB_X4_Y32_N14
\inst13|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Equal0~0_combout\ = (!\inst20|q\(1) & (!\inst20|q\(0) & (!\inst20|q\(2) & !\inst20|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|q\(1),
	datab => \inst20|q\(0),
	datac => \inst20|q\(2),
	datad => \inst20|q\(3),
	combout => \inst13|Equal0~0_combout\);

-- Location: LCCOMB_X6_Y32_N26
\inst13|o[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|o[3]~0_combout\ = (!\inst20|q\(1) & ((\inst20|q\(0)) # ((\inst20|q\(3)) # (\inst20|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|q\(0),
	datab => \inst20|q\(3),
	datac => \inst20|q\(1),
	datad => \inst20|q\(2),
	combout => \inst13|o[3]~0_combout\);

-- Location: LCCOMB_X6_Y32_N20
\inst13|o[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|o\(3) = (!\inst13|Equal0~0_combout\ & ((GLOBAL(\inst13|o[3]~1clkctrl_outclk\) & ((!\inst13|o[3]~0_combout\))) # (!GLOBAL(\inst13|o[3]~1clkctrl_outclk\) & (\inst13|o\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Equal0~0_combout\,
	datab => \inst13|o\(3),
	datac => \inst13|o[3]~0_combout\,
	datad => \inst13|o[3]~1clkctrl_outclk\,
	combout => \inst13|o\(3));

-- Location: LCCOMB_X6_Y32_N24
\inst5|c[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|c\(3) = \Input[3]~input_o\ $ (\inst13|o\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Input[3]~input_o\,
	datad => \inst13|o\(3),
	combout => \inst5|c\(3));

-- Location: FF_X6_Y32_N25
\inst20|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst5|c\(3),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|q\(3));

-- Location: LCCOMB_X3_Y29_N16
\inst14|o[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|o[2]~2_combout\ = \inst21|q\(2) $ (\inst21|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|q\(2),
	datad => \inst21|q\(3),
	combout => \inst14|o[2]~2_combout\);

-- Location: LCCOMB_X3_Y29_N12
\inst14|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|Equal0~0_combout\ = (!\inst21|q\(0) & (!\inst21|q\(3) & (!\inst21|q\(2) & !\inst21|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|q\(0),
	datab => \inst21|q\(3),
	datac => \inst21|q\(2),
	datad => \inst21|q\(1),
	combout => \inst14|Equal0~0_combout\);

-- Location: LCCOMB_X3_Y29_N28
\inst14|o[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|o\(2) = (!\inst14|Equal0~0_combout\ & ((GLOBAL(\inst14|o[3]~1clkctrl_outclk\) & ((\inst14|o[2]~2_combout\))) # (!GLOBAL(\inst14|o[3]~1clkctrl_outclk\) & (\inst14|o\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|o\(2),
	datab => \inst14|o[2]~2_combout\,
	datac => \inst14|Equal0~0_combout\,
	datad => \inst14|o[3]~1clkctrl_outclk\,
	combout => \inst14|o\(2));

-- Location: LCCOMB_X3_Y29_N30
\inst6|c[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c\(2) = \Input[2]~input_o\ $ (\inst14|o\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input[2]~input_o\,
	datad => \inst14|o\(2),
	combout => \inst6|c\(2));

-- Location: FF_X3_Y29_N31
\inst21|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst6|c\(2),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|q\(2));

-- Location: LCCOMB_X3_Y29_N0
\inst14|o[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|o[1]~3_combout\ = \inst21|q\(1) $ (\inst21|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|q\(1),
	datad => \inst21|q\(2),
	combout => \inst14|o[1]~3_combout\);

-- Location: LCCOMB_X3_Y29_N10
\inst14|o[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|o\(1) = (!\inst14|Equal0~0_combout\ & ((GLOBAL(\inst14|o[3]~1clkctrl_outclk\) & ((\inst14|o[1]~3_combout\))) # (!GLOBAL(\inst14|o[3]~1clkctrl_outclk\) & (\inst14|o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|o\(1),
	datab => \inst14|o[1]~3_combout\,
	datac => \inst14|Equal0~0_combout\,
	datad => \inst14|o[3]~1clkctrl_outclk\,
	combout => \inst14|o\(1));

-- Location: LCCOMB_X3_Y29_N22
\inst6|c[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c\(1) = \Input[1]~input_o\ $ (\inst14|o\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[1]~input_o\,
	datad => \inst14|o\(1),
	combout => \inst6|c\(1));

-- Location: FF_X3_Y29_N23
\inst21|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst6|c\(1),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|q\(1));

-- Location: LCCOMB_X3_Y29_N8
\inst14|o[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|o[3]~1_combout\ = (\inst21|q\(1)) # ((\inst21|q\(0)) # ((\inst21|q\(2)) # (\inst21|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|q\(1),
	datab => \inst21|q\(0),
	datac => \inst21|q\(2),
	datad => \inst21|q\(3),
	combout => \inst14|o[3]~1_combout\);

-- Location: CLKCTRL_G1
\inst14|o[3]~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst14|o[3]~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst14|o[3]~1clkctrl_outclk\);

-- Location: LCCOMB_X3_Y29_N6
\inst14|o[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|o[0]~4_combout\ = (\inst21|q\(1)) # ((!\inst21|q\(2) & (!\inst21|q\(0) & !\inst21|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|q\(2),
	datab => \inst21|q\(0),
	datac => \inst21|q\(3),
	datad => \inst21|q\(1),
	combout => \inst14|o[0]~4_combout\);

-- Location: LCCOMB_X3_Y29_N20
\inst14|o[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|o\(0) = (!\inst14|Equal0~0_combout\ & ((GLOBAL(\inst14|o[3]~1clkctrl_outclk\) & ((\inst14|o[0]~4_combout\))) # (!GLOBAL(\inst14|o[3]~1clkctrl_outclk\) & (\inst14|o\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|o\(0),
	datab => \inst14|o[3]~1clkctrl_outclk\,
	datac => \inst14|o[0]~4_combout\,
	datad => \inst14|Equal0~0_combout\,
	combout => \inst14|o\(0));

-- Location: LCCOMB_X3_Y29_N26
\inst6|c[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c\(0) = \Input[0]~input_o\ $ (\inst14|o\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[0]~input_o\,
	datad => \inst14|o\(0),
	combout => \inst6|c\(0));

-- Location: FF_X3_Y29_N27
\inst21|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst6|c\(0),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|q\(0));

-- Location: LCCOMB_X3_Y29_N24
\inst14|o[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|o[3]~0_combout\ = \inst21|q\(3) $ (\inst21|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst21|q\(3),
	datad => \inst21|q\(0),
	combout => \inst14|o[3]~0_combout\);

-- Location: LCCOMB_X3_Y29_N18
\inst14|o[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|o\(3) = (!\inst14|Equal0~0_combout\ & ((GLOBAL(\inst14|o[3]~1clkctrl_outclk\) & (\inst14|o[3]~0_combout\)) # (!GLOBAL(\inst14|o[3]~1clkctrl_outclk\) & ((\inst14|o\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|o[3]~0_combout\,
	datab => \inst14|o\(3),
	datac => \inst14|Equal0~0_combout\,
	datad => \inst14|o[3]~1clkctrl_outclk\,
	combout => \inst14|o\(3));

-- Location: LCCOMB_X3_Y29_N14
\inst6|c[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c\(3) = \Input[3]~input_o\ $ (\inst14|o\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Input[3]~input_o\,
	datad => \inst14|o\(3),
	combout => \inst6|c\(3));

-- Location: FF_X3_Y29_N15
\inst21|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst6|c\(3),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|q\(3));

-- Location: LCCOMB_X4_Y29_N30
\inst16|o[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|o[0]~14_combout\ = \inst24|q\(3) $ (\inst24|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|q\(3),
	datad => \inst24|q\(0),
	combout => \inst16|o[0]~14_combout\);

-- Location: LCCOMB_X4_Y29_N16
\inst16|o[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|o[1]~12_combout\ = (\inst24|q\(0) & (\inst24|q\(3) $ (((!\inst24|q\(1)))))) # (!\inst24|q\(0) & ((\inst24|q\(3) & ((!\inst24|q\(1)))) # (!\inst24|q\(3) & ((\inst24|q\(1)) # (!\inst24|q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|q\(0),
	datab => \inst24|q\(3),
	datac => \inst24|q\(2),
	datad => \inst24|q\(1),
	combout => \inst16|o[1]~12_combout\);

-- Location: LCCOMB_X4_Y29_N20
\inst16|o[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|o\(1) = (!\inst16|Equal0~0_combout\ & ((GLOBAL(\inst16|o[3]~13clkctrl_outclk\) & ((\inst16|o[1]~12_combout\))) # (!GLOBAL(\inst16|o[3]~13clkctrl_outclk\) & (\inst16|o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|o\(1),
	datab => \inst16|Equal0~0_combout\,
	datac => \inst16|o[1]~12_combout\,
	datad => \inst16|o[3]~13clkctrl_outclk\,
	combout => \inst16|o\(1));

-- Location: LCCOMB_X4_Y29_N12
\inst7|c[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|c\(1) = \Input[1]~input_o\ $ (\inst16|o\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Input[1]~input_o\,
	datad => \inst16|o\(1),
	combout => \inst7|c\(1));

-- Location: FF_X4_Y29_N13
\inst24|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst7|c\(1),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|q\(1));

-- Location: LCCOMB_X4_Y29_N14
\inst16|o[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|o[2]~11_combout\ = \inst24|q\(1) $ (\inst24|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|q\(1),
	datad => \inst24|q\(2),
	combout => \inst16|o[2]~11_combout\);

-- Location: LCCOMB_X4_Y29_N28
\inst16|o[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|o\(2) = (!\inst16|Equal0~0_combout\ & ((GLOBAL(\inst16|o[3]~13clkctrl_outclk\) & ((\inst16|o[2]~11_combout\))) # (!GLOBAL(\inst16|o[3]~13clkctrl_outclk\) & (\inst16|o\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|o\(2),
	datab => \inst16|Equal0~0_combout\,
	datac => \inst16|o[3]~13clkctrl_outclk\,
	datad => \inst16|o[2]~11_combout\,
	combout => \inst16|o\(2));

-- Location: LCCOMB_X4_Y29_N8
\inst7|c[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|c\(2) = \Input[2]~input_o\ $ (\inst16|o\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Input[2]~input_o\,
	datad => \inst16|o\(2),
	combout => \inst7|c\(2));

-- Location: FF_X4_Y29_N9
\inst24|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst7|c\(2),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|q\(2));

-- Location: LCCOMB_X4_Y29_N6
\inst16|o[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|o[3]~13_combout\ = (\inst24|q\(0)) # ((\inst24|q\(3)) # ((\inst24|q\(2)) # (\inst24|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|q\(0),
	datab => \inst24|q\(3),
	datac => \inst24|q\(2),
	datad => \inst24|q\(1),
	combout => \inst16|o[3]~13_combout\);

-- Location: CLKCTRL_G3
\inst16|o[3]~13clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst16|o[3]~13clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst16|o[3]~13clkctrl_outclk\);

-- Location: LCCOMB_X4_Y29_N10
\inst16|o[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|o\(0) = (!\inst16|Equal0~0_combout\ & ((GLOBAL(\inst16|o[3]~13clkctrl_outclk\) & (\inst16|o[0]~14_combout\)) # (!GLOBAL(\inst16|o[3]~13clkctrl_outclk\) & ((\inst16|o\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|o[0]~14_combout\,
	datab => \inst16|Equal0~0_combout\,
	datac => \inst16|o\(0),
	datad => \inst16|o[3]~13clkctrl_outclk\,
	combout => \inst16|o\(0));

-- Location: LCCOMB_X4_Y29_N26
\inst7|c[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|c\(0) = \Input[0]~input_o\ $ (\inst16|o\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input[0]~input_o\,
	datad => \inst16|o\(0),
	combout => \inst7|c\(0));

-- Location: FF_X4_Y29_N27
\inst24|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst7|c\(0),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|q\(0));

-- Location: LCCOMB_X4_Y29_N0
\inst16|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Equal0~0_combout\ = (!\inst24|q\(0) & (!\inst24|q\(3) & (!\inst24|q\(2) & !\inst24|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|q\(0),
	datab => \inst24|q\(3),
	datac => \inst24|q\(2),
	datad => \inst24|q\(1),
	combout => \inst16|Equal0~0_combout\);

-- Location: LCCOMB_X4_Y29_N22
\inst16|o[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|o[3]~10_combout\ = \inst24|q\(3) $ (\inst24|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24|q\(3),
	datad => \inst24|q\(2),
	combout => \inst16|o[3]~10_combout\);

-- Location: LCCOMB_X4_Y29_N24
\inst16|o[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|o\(3) = (!\inst16|Equal0~0_combout\ & ((GLOBAL(\inst16|o[3]~13clkctrl_outclk\) & ((\inst16|o[3]~10_combout\))) # (!GLOBAL(\inst16|o[3]~13clkctrl_outclk\) & (\inst16|o\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|o\(3),
	datab => \inst16|Equal0~0_combout\,
	datac => \inst16|o[3]~13clkctrl_outclk\,
	datad => \inst16|o[3]~10_combout\,
	combout => \inst16|o\(3));

-- Location: LCCOMB_X4_Y29_N4
\inst7|c[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|c\(3) = \Input[3]~input_o\ $ (\inst16|o\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input[3]~input_o\,
	datad => \inst16|o\(3),
	combout => \inst7|c\(3));

-- Location: FF_X4_Y29_N5
\inst24|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst7|c\(3),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|q\(3));

-- Location: LCCOMB_X4_Y34_N0
\inst17|o[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|o[1]~14_combout\ = \inst25|q\(2) $ (\inst25|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|q\(2),
	datad => \inst25|q\(0),
	combout => \inst17|o[1]~14_combout\);

-- Location: LCCOMB_X4_Y34_N26
\inst17|o[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|o[3]~13_combout\ = (\inst25|q\(3)) # ((\inst25|q\(2)) # ((\inst25|q\(0)) # (\inst25|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|q\(3),
	datab => \inst25|q\(2),
	datac => \inst25|q\(0),
	datad => \inst25|q\(1),
	combout => \inst17|o[3]~13_combout\);

-- Location: CLKCTRL_G0
\inst17|o[3]~13clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst17|o[3]~13clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst17|o[3]~13clkctrl_outclk\);

-- Location: LCCOMB_X4_Y34_N6
\inst17|o[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|o\(1) = (!\inst17|Equal0~0_combout\ & ((GLOBAL(\inst17|o[3]~13clkctrl_outclk\) & ((\inst17|o[1]~14_combout\))) # (!GLOBAL(\inst17|o[3]~13clkctrl_outclk\) & (\inst17|o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|o\(1),
	datab => \inst17|o[1]~14_combout\,
	datac => \inst17|Equal0~0_combout\,
	datad => \inst17|o[3]~13clkctrl_outclk\,
	combout => \inst17|o\(1));

-- Location: LCCOMB_X4_Y34_N28
\inst10|c[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|c\(1) = \Input[1]~input_o\ $ (\inst17|o\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[1]~input_o\,
	datad => \inst17|o\(1),
	combout => \inst10|c\(1));

-- Location: FF_X4_Y34_N29
\inst25|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst10|c\(1),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|q\(1));

-- Location: LCCOMB_X4_Y34_N24
\inst17|o[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|o[2]~11_combout\ = (\inst25|q\(0) & ((\inst25|q\(3) $ (!\inst25|q\(1))))) # (!\inst25|q\(0) & ((\inst25|q\(3) & ((!\inst25|q\(1)))) # (!\inst25|q\(3) & ((\inst25|q\(1)) # (!\inst25|q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|q\(0),
	datab => \inst25|q\(2),
	datac => \inst25|q\(3),
	datad => \inst25|q\(1),
	combout => \inst17|o[2]~11_combout\);

-- Location: LCCOMB_X4_Y34_N20
\inst17|o[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|o\(2) = (!\inst17|Equal0~0_combout\ & ((GLOBAL(\inst17|o[3]~13clkctrl_outclk\) & ((\inst17|o[2]~11_combout\))) # (!GLOBAL(\inst17|o[3]~13clkctrl_outclk\) & (\inst17|o\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Equal0~0_combout\,
	datab => \inst17|o\(2),
	datac => \inst17|o[2]~11_combout\,
	datad => \inst17|o[3]~13clkctrl_outclk\,
	combout => \inst17|o\(2));

-- Location: LCCOMB_X4_Y34_N4
\inst10|c[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|c\(2) = \Input[2]~input_o\ $ (\inst17|o\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Input[2]~input_o\,
	datad => \inst17|o\(2),
	combout => \inst10|c\(2));

-- Location: FF_X4_Y34_N5
\inst25|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst10|c\(2),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|q\(2));

-- Location: LCCOMB_X4_Y34_N8
\inst17|o[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|o[2]~12_combout\ = \inst25|q\(3) $ (\inst25|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|q\(3),
	datad => \inst25|q\(2),
	combout => \inst17|o[2]~12_combout\);

-- Location: LCCOMB_X4_Y34_N12
\inst17|o[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|o\(0) = (!\inst17|Equal0~0_combout\ & ((GLOBAL(\inst17|o[3]~13clkctrl_outclk\) & ((\inst17|o[2]~12_combout\))) # (!GLOBAL(\inst17|o[3]~13clkctrl_outclk\) & (\inst17|o\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Equal0~0_combout\,
	datab => \inst17|o\(0),
	datac => \inst17|o[2]~12_combout\,
	datad => \inst17|o[3]~13clkctrl_outclk\,
	combout => \inst17|o\(0));

-- Location: LCCOMB_X4_Y34_N22
\inst10|c[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|c\(0) = \Input[0]~input_o\ $ (\inst17|o\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Input[0]~input_o\,
	datad => \inst17|o\(0),
	combout => \inst10|c\(0));

-- Location: FF_X4_Y34_N23
\inst25|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst10|c\(0),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|q\(0));

-- Location: LCCOMB_X4_Y34_N10
\inst17|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Equal0~0_combout\ = (!\inst25|q\(3) & (!\inst25|q\(0) & (!\inst25|q\(2) & !\inst25|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|q\(3),
	datab => \inst25|q\(0),
	datac => \inst25|q\(2),
	datad => \inst25|q\(1),
	combout => \inst17|Equal0~0_combout\);

-- Location: LCCOMB_X4_Y34_N14
\inst17|o[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|o[3]~10_combout\ = \inst25|q\(2) $ (\inst25|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|q\(2),
	datad => \inst25|q\(1),
	combout => \inst17|o[3]~10_combout\);

-- Location: LCCOMB_X4_Y34_N2
\inst17|o[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|o\(3) = (!\inst17|Equal0~0_combout\ & ((GLOBAL(\inst17|o[3]~13clkctrl_outclk\) & ((\inst17|o[3]~10_combout\))) # (!GLOBAL(\inst17|o[3]~13clkctrl_outclk\) & (\inst17|o\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Equal0~0_combout\,
	datab => \inst17|o\(3),
	datac => \inst17|o[3]~10_combout\,
	datad => \inst17|o[3]~13clkctrl_outclk\,
	combout => \inst17|o\(3));

-- Location: LCCOMB_X4_Y34_N30
\inst10|c[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|c\(3) = \Input[3]~input_o\ $ (\inst17|o\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input[3]~input_o\,
	datad => \inst17|o\(3),
	combout => \inst10|c\(3));

-- Location: FF_X4_Y34_N31
\inst25|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst10|c\(3),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|q\(3));

-- Location: LCCOMB_X6_Y32_N10
\inst26|o[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|o[1]~16_combout\ = \inst28|q\(3) $ (\inst28|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|q\(3),
	datac => \inst28|q\(1),
	combout => \inst26|o[1]~16_combout\);

-- Location: LCCOMB_X5_Y32_N16
\inst26|o[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|o[2]~19_combout\ = \inst28|q\(0) $ (\inst28|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|q\(0),
	datac => \inst28|q\(2),
	combout => \inst26|o[2]~19_combout\);

-- Location: LCCOMB_X5_Y32_N24
\inst26|o[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|o\(2) = (!\inst26|Equal0~0_combout\ & ((GLOBAL(\inst26|o[3]~20clkctrl_outclk\) & (\inst26|o[2]~19_combout\)) # (!GLOBAL(\inst26|o[3]~20clkctrl_outclk\) & ((\inst26|o\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|o[2]~19_combout\,
	datab => \inst26|o\(2),
	datac => \inst26|Equal0~0_combout\,
	datad => \inst26|o[3]~20clkctrl_outclk\,
	combout => \inst26|o\(2));

-- Location: LCCOMB_X5_Y32_N22
\inst27|c[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|c\(2) = \Input[2]~input_o\ $ (\inst26|o\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input[2]~input_o\,
	datad => \inst26|o\(2),
	combout => \inst27|c\(2));

-- Location: FF_X5_Y32_N23
\inst28|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst27|c\(2),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|q\(2));

-- Location: LCCOMB_X6_Y32_N14
\inst26|o[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|o[3]~20_combout\ = (\inst28|q\(0)) # ((\inst28|q\(2)) # ((\inst28|q\(3)) # (\inst28|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|q\(0),
	datab => \inst28|q\(2),
	datac => \inst28|q\(3),
	datad => \inst28|q\(1),
	combout => \inst26|o[3]~20_combout\);

-- Location: CLKCTRL_G11
\inst26|o[3]~20clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst26|o[3]~20clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst26|o[3]~20clkctrl_outclk\);

-- Location: LCCOMB_X6_Y32_N0
\inst26|o[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|o\(1) = (!\inst26|Equal0~0_combout\ & ((GLOBAL(\inst26|o[3]~20clkctrl_outclk\) & ((\inst26|o[1]~16_combout\))) # (!GLOBAL(\inst26|o[3]~20clkctrl_outclk\) & (\inst26|o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|o\(1),
	datab => \inst26|Equal0~0_combout\,
	datac => \inst26|o[1]~16_combout\,
	datad => \inst26|o[3]~20clkctrl_outclk\,
	combout => \inst26|o\(1));

-- Location: LCCOMB_X6_Y32_N18
\inst27|c[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|c\(1) = \Input[1]~input_o\ $ (\inst26|o\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[1]~input_o\,
	datad => \inst26|o\(1),
	combout => \inst27|c\(1));

-- Location: FF_X6_Y32_N19
\inst28|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst27|c\(1),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|q\(1));

-- Location: LCCOMB_X5_Y32_N10
\inst26|o[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|o[0]~17_combout\ = \inst28|q\(1) $ (\inst28|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst28|q\(1),
	datac => \inst28|q\(2),
	combout => \inst26|o[0]~17_combout\);

-- Location: LCCOMB_X5_Y32_N18
\inst26|o[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|o\(0) = (!\inst26|Equal0~0_combout\ & ((GLOBAL(\inst26|o[3]~20clkctrl_outclk\) & ((\inst26|o[0]~17_combout\))) # (!GLOBAL(\inst26|o[3]~20clkctrl_outclk\) & (\inst26|o\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|Equal0~0_combout\,
	datab => \inst26|o\(0),
	datac => \inst26|o[0]~17_combout\,
	datad => \inst26|o[3]~20clkctrl_outclk\,
	combout => \inst26|o\(0));

-- Location: LCCOMB_X5_Y32_N6
\inst27|c[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|c\(0) = \Input[0]~input_o\ $ (\inst26|o\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input[0]~input_o\,
	datad => \inst26|o\(0),
	combout => \inst27|c\(0));

-- Location: FF_X5_Y32_N7
\inst28|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst27|c\(0),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|q\(0));

-- Location: LCCOMB_X5_Y32_N8
\inst26|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|Equal0~0_combout\ = (!\inst28|q\(3) & (!\inst28|q\(0) & (!\inst28|q\(2) & !\inst28|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|q\(3),
	datab => \inst28|q\(0),
	datac => \inst28|q\(2),
	datad => \inst28|q\(1),
	combout => \inst26|Equal0~0_combout\);

-- Location: LCCOMB_X5_Y32_N30
\inst26|o[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|o[3]~18_combout\ = (\inst28|q\(0) & ((\inst28|q\(3) $ (!\inst28|q\(1))))) # (!\inst28|q\(0) & ((\inst28|q\(3) & ((!\inst28|q\(1)))) # (!\inst28|q\(3) & ((\inst28|q\(1)) # (!\inst28|q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|q\(2),
	datab => \inst28|q\(0),
	datac => \inst28|q\(3),
	datad => \inst28|q\(1),
	combout => \inst26|o[3]~18_combout\);

-- Location: LCCOMB_X5_Y32_N12
\inst26|o[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|o\(3) = (!\inst26|Equal0~0_combout\ & ((GLOBAL(\inst26|o[3]~20clkctrl_outclk\) & ((\inst26|o[3]~18_combout\))) # (!GLOBAL(\inst26|o[3]~20clkctrl_outclk\) & (\inst26|o\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|o\(3),
	datab => \inst26|Equal0~0_combout\,
	datac => \inst26|o[3]~18_combout\,
	datad => \inst26|o[3]~20clkctrl_outclk\,
	combout => \inst26|o\(3));

-- Location: LCCOMB_X5_Y32_N26
\inst27|c[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst27|c\(3) = \Input[3]~input_o\ $ (\inst26|o\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input[3]~input_o\,
	datad => \inst26|o\(3),
	combout => \inst27|c\(3));

-- Location: FF_X5_Y32_N27
\inst28|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst27|c\(3),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|q\(3));

-- Location: LCCOMB_X5_Y34_N28
\inst30|o[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|o[1]~17_combout\ = (\inst32|q\(0) & (\inst32|q\(3) $ ((!\inst32|q\(2))))) # (!\inst32|q\(0) & ((\inst32|q\(3) & (!\inst32|q\(2))) # (!\inst32|q\(3) & ((\inst32|q\(2)) # (!\inst32|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|q\(0),
	datab => \inst32|q\(3),
	datac => \inst32|q\(2),
	datad => \inst32|q\(1),
	combout => \inst30|o[1]~17_combout\);

-- Location: LCCOMB_X5_Y34_N10
\inst30|o[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|o[3]~16_combout\ = (\inst32|q\(0)) # ((\inst32|q\(3)) # ((\inst32|q\(2)) # (\inst32|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|q\(0),
	datab => \inst32|q\(3),
	datac => \inst32|q\(2),
	datad => \inst32|q\(1),
	combout => \inst30|o[3]~16_combout\);

-- Location: CLKCTRL_G10
\inst30|o[3]~16clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst30|o[3]~16clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst30|o[3]~16clkctrl_outclk\);

-- Location: LCCOMB_X5_Y34_N2
\inst30|o[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|o\(1) = (!\inst30|Equal0~0_combout\ & ((GLOBAL(\inst30|o[3]~16clkctrl_outclk\) & ((\inst30|o[1]~17_combout\))) # (!GLOBAL(\inst30|o[3]~16clkctrl_outclk\) & (\inst30|o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|o\(1),
	datab => \inst30|Equal0~0_combout\,
	datac => \inst30|o[1]~17_combout\,
	datad => \inst30|o[3]~16clkctrl_outclk\,
	combout => \inst30|o\(1));

-- Location: LCCOMB_X5_Y34_N12
\inst31|c[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|c\(1) = \Input[1]~input_o\ $ (\inst30|o\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[1]~input_o\,
	datad => \inst30|o\(1),
	combout => \inst31|c\(1));

-- Location: FF_X5_Y34_N13
\inst32|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst31|c\(1),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|q\(1));

-- Location: LCCOMB_X5_Y34_N20
\inst30|o[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|o[2]~15_combout\ = \inst32|q\(3) $ (\inst32|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|q\(3),
	datad => \inst32|q\(1),
	combout => \inst30|o[2]~15_combout\);

-- Location: LCCOMB_X5_Y34_N0
\inst30|o[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|o\(2) = (!\inst30|Equal0~0_combout\ & ((GLOBAL(\inst30|o[3]~16clkctrl_outclk\) & (\inst30|o[2]~15_combout\)) # (!GLOBAL(\inst30|o[3]~16clkctrl_outclk\) & ((\inst30|o\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|o[2]~15_combout\,
	datab => \inst30|Equal0~0_combout\,
	datac => \inst30|o\(2),
	datad => \inst30|o[3]~16clkctrl_outclk\,
	combout => \inst30|o\(2));

-- Location: LCCOMB_X5_Y34_N22
\inst31|c[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|c\(2) = \Input[2]~input_o\ $ (\inst30|o\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Input[2]~input_o\,
	datad => \inst30|o\(2),
	combout => \inst31|c\(2));

-- Location: FF_X5_Y34_N23
\inst32|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst31|c\(2),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|q\(2));

-- Location: LCCOMB_X5_Y34_N26
\inst30|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Equal0~0_combout\ = (!\inst32|q\(0) & (!\inst32|q\(3) & (!\inst32|q\(2) & !\inst32|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|q\(0),
	datab => \inst32|q\(3),
	datac => \inst32|q\(2),
	datad => \inst32|q\(1),
	combout => \inst30|Equal0~0_combout\);

-- Location: LCCOMB_X5_Y34_N24
\inst30|o[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|o[0]~18_combout\ = (\inst32|q\(0) & (\inst32|q\(3) $ (((!\inst32|q\(1)))))) # (!\inst32|q\(0) & ((\inst32|q\(3) & ((!\inst32|q\(1)))) # (!\inst32|q\(3) & ((\inst32|q\(1)) # (!\inst32|q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|q\(0),
	datab => \inst32|q\(3),
	datac => \inst32|q\(2),
	datad => \inst32|q\(1),
	combout => \inst30|o[0]~18_combout\);

-- Location: LCCOMB_X5_Y34_N18
\inst30|o[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|o\(0) = (!\inst30|Equal0~0_combout\ & ((GLOBAL(\inst30|o[3]~16clkctrl_outclk\) & ((\inst30|o[0]~18_combout\))) # (!GLOBAL(\inst30|o[3]~16clkctrl_outclk\) & (\inst30|o\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|o\(0),
	datab => \inst30|Equal0~0_combout\,
	datac => \inst30|o[0]~18_combout\,
	datad => \inst30|o[3]~16clkctrl_outclk\,
	combout => \inst30|o\(0));

-- Location: LCCOMB_X5_Y34_N30
\inst31|c[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|c\(0) = \Input[0]~input_o\ $ (\inst30|o\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Input[0]~input_o\,
	datad => \inst30|o\(0),
	combout => \inst31|c\(0));

-- Location: FF_X5_Y34_N31
\inst32|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst31|c\(0),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|q\(0));

-- Location: LCCOMB_X5_Y34_N16
\inst30|o[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|o[3]~14_combout\ = \inst32|q\(0) $ (\inst32|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|q\(0),
	datac => \inst32|q\(2),
	combout => \inst30|o[3]~14_combout\);

-- Location: LCCOMB_X5_Y34_N6
\inst30|o[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|o\(3) = (!\inst30|Equal0~0_combout\ & ((GLOBAL(\inst30|o[3]~16clkctrl_outclk\) & ((\inst30|o[3]~14_combout\))) # (!GLOBAL(\inst30|o[3]~16clkctrl_outclk\) & (\inst30|o\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|o\(3),
	datab => \inst30|o[3]~14_combout\,
	datac => \inst30|Equal0~0_combout\,
	datad => \inst30|o[3]~16clkctrl_outclk\,
	combout => \inst30|o\(3));

-- Location: LCCOMB_X5_Y34_N14
\inst31|c[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|c\(3) = \Input[3]~input_o\ $ (\inst30|o\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Input[3]~input_o\,
	datad => \inst30|o\(3),
	combout => \inst31|c\(3));

-- Location: FF_X5_Y34_N15
\inst32|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst31|c\(3),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|q\(3));

ww_S0(3) <= \S0[3]~output_o\;

ww_S0(2) <= \S0[2]~output_o\;

ww_S0(1) <= \S0[1]~output_o\;

ww_S0(0) <= \S0[0]~output_o\;

ww_S1(3) <= \S1[3]~output_o\;

ww_S1(2) <= \S1[2]~output_o\;

ww_S1(1) <= \S1[1]~output_o\;

ww_S1(0) <= \S1[0]~output_o\;

ww_S2(3) <= \S2[3]~output_o\;

ww_S2(2) <= \S2[2]~output_o\;

ww_S2(1) <= \S2[1]~output_o\;

ww_S2(0) <= \S2[0]~output_o\;

ww_S3(3) <= \S3[3]~output_o\;

ww_S3(2) <= \S3[2]~output_o\;

ww_S3(1) <= \S3[1]~output_o\;

ww_S3(0) <= \S3[0]~output_o\;

ww_S4(3) <= \S4[3]~output_o\;

ww_S4(2) <= \S4[2]~output_o\;

ww_S4(1) <= \S4[1]~output_o\;

ww_S4(0) <= \S4[0]~output_o\;

ww_S5(3) <= \S5[3]~output_o\;

ww_S5(2) <= \S5[2]~output_o\;

ww_S5(1) <= \S5[1]~output_o\;

ww_S5(0) <= \S5[0]~output_o\;

ww_S6(3) <= \S6[3]~output_o\;

ww_S6(2) <= \S6[2]~output_o\;

ww_S6(1) <= \S6[1]~output_o\;

ww_S6(0) <= \S6[0]~output_o\;

ww_S7(3) <= \S7[3]~output_o\;

ww_S7(2) <= \S7[2]~output_o\;

ww_S7(1) <= \S7[1]~output_o\;

ww_S7(0) <= \S7[0]~output_o\;
END structure;


