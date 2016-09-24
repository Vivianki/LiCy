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

-- DATE "09/22/2016 02:29:10"

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

ENTITY 	Syndrome IS
    PORT (
	Clear : IN std_logic;
	Clock : IN std_logic;
	Input : IN std_logic_vector(3 DOWNTO 0);
	S0 : BUFFER std_logic_vector(3 DOWNTO 0);
	S1 : BUFFER std_logic_vector(3 DOWNTO 0);
	S2 : BUFFER std_logic_vector(3 DOWNTO 0);
	S3 : BUFFER std_logic_vector(3 DOWNTO 0);
	S4 : BUFFER std_logic_vector(3 DOWNTO 0);
	S5 : BUFFER std_logic_vector(3 DOWNTO 0);
	S6 : BUFFER std_logic_vector(3 DOWNTO 0);
	S7 : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END Syndrome;

-- Design Ports Information
-- S0[0]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0[1]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0[2]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[1]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[2]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[3]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2[0]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2[2]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2[3]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3[0]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3[1]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3[2]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3[3]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4[0]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4[1]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4[2]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4[3]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S5[0]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S5[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S5[2]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S5[3]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S6[0]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S6[1]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S6[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S6[3]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S7[0]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S7[1]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S7[2]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S7[3]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[0]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clear	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[1]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[2]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[3]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_Clear : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Input : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S5 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S6 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S7 : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst12|o[3]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst11|o[3]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst14|o[3]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst13|o[3]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst17|o[3]~13clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst30|o[3]~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst16|o[3]~14clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst26|o[3]~16clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clear~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \S5[0]~output_o\ : std_logic;
SIGNAL \S5[1]~output_o\ : std_logic;
SIGNAL \S5[2]~output_o\ : std_logic;
SIGNAL \S5[3]~output_o\ : std_logic;
SIGNAL \S6[0]~output_o\ : std_logic;
SIGNAL \S6[1]~output_o\ : std_logic;
SIGNAL \S6[2]~output_o\ : std_logic;
SIGNAL \S6[3]~output_o\ : std_logic;
SIGNAL \S7[0]~output_o\ : std_logic;
SIGNAL \S7[1]~output_o\ : std_logic;
SIGNAL \S7[2]~output_o\ : std_logic;
SIGNAL \S7[3]~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \Input[0]~input_o\ : std_logic;
SIGNAL \Input[1]~input_o\ : std_logic;
SIGNAL \Input[2]~input_o\ : std_logic;
SIGNAL \Input[3]~input_o\ : std_logic;
SIGNAL \b2v_inst11|o[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst11|o[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst11|o[3]~1clkctrl_outclk\ : std_logic;
SIGNAL \Clear~input_o\ : std_logic;
SIGNAL \Clear~inputclkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst11|o[2]~3_combout\ : std_logic;
SIGNAL \b2v_inst11|Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst11|o[1]~2_combout\ : std_logic;
SIGNAL \b2v_inst11|o[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst12|o[2]~3_combout\ : std_logic;
SIGNAL \b2v_inst12|Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst12|o[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst12|o[3]~1clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst12|o[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst12|o[1]~2_combout\ : std_logic;
SIGNAL \b2v_inst12|o[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst13|o[2]~3_combout\ : std_logic;
SIGNAL \b2v_inst13|o[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst13|o[3]~1clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst13|Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst13|o[1]~2_combout\ : std_logic;
SIGNAL \b2v_inst13|o[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst13|o[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst14|o[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst14|o[2]~3_combout\ : std_logic;
SIGNAL \b2v_inst14|o[1]~2_combout\ : std_logic;
SIGNAL \b2v_inst14|o[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst14|o[3]~1clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst14|Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst14|o[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst16|o[1]~10_combout\ : std_logic;
SIGNAL \b2v_inst16|o[3]~14_combout\ : std_logic;
SIGNAL \b2v_inst16|o[3]~14clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst16|o[2]~11_combout\ : std_logic;
SIGNAL \b2v_inst16|o[3]~12_combout\ : std_logic;
SIGNAL \b2v_inst16|Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst16|o[0]~13_combout\ : std_logic;
SIGNAL \b2v_inst17|o[1]~14_combout\ : std_logic;
SIGNAL \b2v_inst17|Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst17|o[3]~12_combout\ : std_logic;
SIGNAL \b2v_inst17|o[3]~13_combout\ : std_logic;
SIGNAL \b2v_inst17|o[3]~13clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst17|o[2]~11_combout\ : std_logic;
SIGNAL \b2v_inst17|o[0]~10_combout\ : std_logic;
SIGNAL \b2v_inst26|o[2]~14_combout\ : std_logic;
SIGNAL \b2v_inst26|o[3]~16_combout\ : std_logic;
SIGNAL \b2v_inst26|o[3]~16clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst26|o[3]~15_combout\ : std_logic;
SIGNAL \b2v_inst26|o[1]~17_combout\ : std_logic;
SIGNAL \b2v_inst26|Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst26|o[0]~18_combout\ : std_logic;
SIGNAL \b2v_inst30|o[2]~5_combout\ : std_logic;
SIGNAL \b2v_inst30|Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst30|o[3]~6_combout\ : std_logic;
SIGNAL \b2v_inst30|o[1]~8_combout\ : std_logic;
SIGNAL \b2v_inst30|o[3]~4_combout\ : std_logic;
SIGNAL \b2v_inst30|o[3]~4clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst30|o[0]~7_combout\ : std_logic;
SIGNAL \b2v_inst20|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst15|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst19|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst21|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst24|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst32|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst28|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst25|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst22|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst23|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst5|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst6|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst7|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst10|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst13|o\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst27|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst31|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst11|o\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst12|o\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst14|o\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst16|o\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst17|o\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst26|o\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst30|o\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Clear~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_Clear <= Clear;
ww_Clock <= Clock;
ww_Input <= Input;
S0 <= ww_S0;
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

\b2v_inst12|o[3]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \b2v_inst12|o[3]~1_combout\);

\b2v_inst11|o[3]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \b2v_inst11|o[3]~1_combout\);

\b2v_inst14|o[3]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \b2v_inst14|o[3]~1_combout\);

\b2v_inst13|o[3]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \b2v_inst13|o[3]~1_combout\);

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);

\b2v_inst17|o[3]~13clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \b2v_inst17|o[3]~13_combout\);

\b2v_inst30|o[3]~4clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \b2v_inst30|o[3]~4_combout\);

\b2v_inst16|o[3]~14clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \b2v_inst16|o[3]~14_combout\);

\b2v_inst26|o[3]~16clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \b2v_inst26|o[3]~16_combout\);

\Clear~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clear~input_o\);
\ALT_INV_Clear~inputclkctrl_outclk\ <= NOT \Clear~inputclkctrl_outclk\;

-- Location: IOOBUF_X0_Y12_N16
\S0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst15|q\(0),
	devoe => ww_devoe,
	o => \S0[0]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\S0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst15|q\(1),
	devoe => ww_devoe,
	o => \S0[1]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\S0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst15|q\(2),
	devoe => ww_devoe,
	o => \S0[2]~output_o\);

-- Location: IOOBUF_X0_Y28_N2
\S0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst15|q\(3),
	devoe => ww_devoe,
	o => \S0[3]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\S1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|q\(0),
	devoe => ww_devoe,
	o => \S1[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\S1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|q\(1),
	devoe => ww_devoe,
	o => \S1[1]~output_o\);

-- Location: IOOBUF_X0_Y20_N23
\S1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|q\(2),
	devoe => ww_devoe,
	o => \S1[2]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\S1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|q\(3),
	devoe => ww_devoe,
	o => \S1[3]~output_o\);

-- Location: IOOBUF_X0_Y16_N2
\S2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst20|q\(0),
	devoe => ww_devoe,
	o => \S2[0]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\S2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst20|q\(1),
	devoe => ww_devoe,
	o => \S2[1]~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\S2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst20|q\(2),
	devoe => ww_devoe,
	o => \S2[2]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\S2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst20|q\(3),
	devoe => ww_devoe,
	o => \S2[3]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\S3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst21|q\(0),
	devoe => ww_devoe,
	o => \S3[0]~output_o\);

-- Location: IOOBUF_X0_Y19_N9
\S3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst21|q\(1),
	devoe => ww_devoe,
	o => \S3[1]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\S3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst21|q\(2),
	devoe => ww_devoe,
	o => \S3[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\S3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst21|q\(3),
	devoe => ww_devoe,
	o => \S3[3]~output_o\);

-- Location: IOOBUF_X0_Y19_N16
\S4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst24|q\(0),
	devoe => ww_devoe,
	o => \S4[0]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\S4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst24|q\(1),
	devoe => ww_devoe,
	o => \S4[1]~output_o\);

-- Location: IOOBUF_X0_Y19_N23
\S4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst24|q\(2),
	devoe => ww_devoe,
	o => \S4[2]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\S4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst24|q\(3),
	devoe => ww_devoe,
	o => \S4[3]~output_o\);

-- Location: IOOBUF_X0_Y17_N23
\S5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst25|q\(0),
	devoe => ww_devoe,
	o => \S5[0]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\S5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst25|q\(1),
	devoe => ww_devoe,
	o => \S5[1]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\S5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst25|q\(2),
	devoe => ww_devoe,
	o => \S5[2]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\S5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst25|q\(3),
	devoe => ww_devoe,
	o => \S5[3]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\S6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst28|q\(0),
	devoe => ww_devoe,
	o => \S6[0]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\S6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst28|q\(1),
	devoe => ww_devoe,
	o => \S6[1]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\S6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst28|q\(2),
	devoe => ww_devoe,
	o => \S6[2]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\S6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst28|q\(3),
	devoe => ww_devoe,
	o => \S6[3]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\S7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst32|q\(0),
	devoe => ww_devoe,
	o => \S7[0]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\S7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst32|q\(1),
	devoe => ww_devoe,
	o => \S7[1]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\S7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst32|q\(2),
	devoe => ww_devoe,
	o => \S7[2]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\S7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst32|q\(3),
	devoe => ww_devoe,
	o => \S7[3]~output_o\);

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

-- Location: IOIBUF_X0_Y16_N8
\Input[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(0),
	o => \Input[0]~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\Input[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(1),
	o => \Input[1]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\Input[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(2),
	o => \Input[2]~input_o\);

-- Location: IOIBUF_X0_Y18_N8
\Input[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(3),
	o => \Input[3]~input_o\);

-- Location: LCCOMB_X11_Y20_N26
\b2v_inst11|o[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|o[3]~4_combout\ = (\b2v_inst15|q\(3)) # ((!\b2v_inst15|q\(2) & (!\b2v_inst15|q\(1) & !\b2v_inst15|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst15|q\(3),
	datab => \b2v_inst15|q\(2),
	datac => \b2v_inst15|q\(1),
	datad => \b2v_inst15|q\(0),
	combout => \b2v_inst11|o[3]~4_combout\);

-- Location: LCCOMB_X11_Y20_N30
\b2v_inst11|o[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|o[3]~1_combout\ = (\b2v_inst15|q\(2)) # ((\b2v_inst15|q\(1)) # ((\b2v_inst15|q\(0)) # (\b2v_inst15|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst15|q\(2),
	datab => \b2v_inst15|q\(1),
	datac => \b2v_inst15|q\(0),
	datad => \b2v_inst15|q\(3),
	combout => \b2v_inst11|o[3]~1_combout\);

-- Location: CLKCTRL_G17
\b2v_inst11|o[3]~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \b2v_inst11|o[3]~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \b2v_inst11|o[3]~1clkctrl_outclk\);

-- Location: LCCOMB_X11_Y20_N20
\b2v_inst11|o[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|o\(3) = (!\b2v_inst11|Equal0~0_combout\ & ((GLOBAL(\b2v_inst11|o[3]~1clkctrl_outclk\) & (\b2v_inst11|o[3]~4_combout\)) # (!GLOBAL(\b2v_inst11|o[3]~1clkctrl_outclk\) & ((\b2v_inst11|o\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|Equal0~0_combout\,
	datab => \b2v_inst11|o[3]~4_combout\,
	datac => \b2v_inst11|o\(3),
	datad => \b2v_inst11|o[3]~1clkctrl_outclk\,
	combout => \b2v_inst11|o\(3));

-- Location: LCCOMB_X11_Y20_N16
\b2v_inst22|c[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst22|c\(3) = \Input[3]~input_o\ $ (\b2v_inst11|o\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Input[3]~input_o\,
	datad => \b2v_inst11|o\(3),
	combout => \b2v_inst22|c\(3));

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

-- Location: FF_X11_Y20_N17
\b2v_inst15|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \b2v_inst22|c\(3),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst15|q\(3));

-- Location: LCCOMB_X11_Y20_N10
\b2v_inst11|o[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|o[2]~3_combout\ = (!\b2v_inst15|q\(2) & ((\b2v_inst15|q\(3)) # ((\b2v_inst15|q\(0)) # (\b2v_inst15|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst15|q\(3),
	datab => \b2v_inst15|q\(0),
	datac => \b2v_inst15|q\(1),
	datad => \b2v_inst15|q\(2),
	combout => \b2v_inst11|o[2]~3_combout\);

-- Location: LCCOMB_X11_Y20_N2
\b2v_inst11|o[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|o\(2) = (!\b2v_inst11|Equal0~0_combout\ & ((GLOBAL(\b2v_inst11|o[3]~1clkctrl_outclk\) & ((!\b2v_inst11|o[2]~3_combout\))) # (!GLOBAL(\b2v_inst11|o[3]~1clkctrl_outclk\) & (\b2v_inst11|o\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|Equal0~0_combout\,
	datab => \b2v_inst11|o\(2),
	datac => \b2v_inst11|o[2]~3_combout\,
	datad => \b2v_inst11|o[3]~1clkctrl_outclk\,
	combout => \b2v_inst11|o\(2));

-- Location: LCCOMB_X11_Y20_N6
\b2v_inst22|c[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst22|c\(2) = \Input[2]~input_o\ $ (\b2v_inst11|o\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Input[2]~input_o\,
	datad => \b2v_inst11|o\(2),
	combout => \b2v_inst22|c\(2));

-- Location: FF_X11_Y20_N7
\b2v_inst15|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \b2v_inst22|c\(2),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst15|q\(2));

-- Location: LCCOMB_X11_Y20_N8
\b2v_inst11|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|Equal0~0_combout\ = (!\b2v_inst15|q\(2) & (!\b2v_inst15|q\(3) & (!\b2v_inst15|q\(1) & !\b2v_inst15|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst15|q\(2),
	datab => \b2v_inst15|q\(3),
	datac => \b2v_inst15|q\(1),
	datad => \b2v_inst15|q\(0),
	combout => \b2v_inst11|Equal0~0_combout\);

-- Location: LCCOMB_X11_Y20_N12
\b2v_inst11|o[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|o[1]~2_combout\ = (!\b2v_inst15|q\(1) & ((\b2v_inst15|q\(3)) # ((\b2v_inst15|q\(0)) # (\b2v_inst15|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst15|q\(3),
	datab => \b2v_inst15|q\(0),
	datac => \b2v_inst15|q\(1),
	datad => \b2v_inst15|q\(2),
	combout => \b2v_inst11|o[1]~2_combout\);

-- Location: LCCOMB_X11_Y20_N18
\b2v_inst11|o[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|o\(1) = (!\b2v_inst11|Equal0~0_combout\ & ((GLOBAL(\b2v_inst11|o[3]~1clkctrl_outclk\) & ((!\b2v_inst11|o[1]~2_combout\))) # (!GLOBAL(\b2v_inst11|o[3]~1clkctrl_outclk\) & (\b2v_inst11|o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|Equal0~0_combout\,
	datab => \b2v_inst11|o\(1),
	datac => \b2v_inst11|o[1]~2_combout\,
	datad => \b2v_inst11|o[3]~1clkctrl_outclk\,
	combout => \b2v_inst11|o\(1));

-- Location: LCCOMB_X11_Y20_N24
\b2v_inst22|c[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst22|c\(1) = \Input[1]~input_o\ $ (\b2v_inst11|o\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Input[1]~input_o\,
	datad => \b2v_inst11|o\(1),
	combout => \b2v_inst22|c\(1));

-- Location: FF_X11_Y20_N25
\b2v_inst15|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \b2v_inst22|c\(1),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst15|q\(1));

-- Location: LCCOMB_X11_Y20_N28
\b2v_inst11|o[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|o[0]~0_combout\ = (!\b2v_inst15|q\(0) & ((\b2v_inst15|q\(1)) # ((\b2v_inst15|q\(2)) # (\b2v_inst15|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst15|q\(1),
	datab => \b2v_inst15|q\(2),
	datac => \b2v_inst15|q\(3),
	datad => \b2v_inst15|q\(0),
	combout => \b2v_inst11|o[0]~0_combout\);

-- Location: LCCOMB_X11_Y20_N0
\b2v_inst11|o[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|o\(0) = (!\b2v_inst11|Equal0~0_combout\ & ((GLOBAL(\b2v_inst11|o[3]~1clkctrl_outclk\) & (!\b2v_inst11|o[0]~0_combout\)) # (!GLOBAL(\b2v_inst11|o[3]~1clkctrl_outclk\) & ((\b2v_inst11|o\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|o[0]~0_combout\,
	datab => \b2v_inst11|Equal0~0_combout\,
	datac => \b2v_inst11|o\(0),
	datad => \b2v_inst11|o[3]~1clkctrl_outclk\,
	combout => \b2v_inst11|o\(0));

-- Location: LCCOMB_X11_Y20_N4
\b2v_inst22|c[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst22|c\(0) = \Input[0]~input_o\ $ (\b2v_inst11|o\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Input[0]~input_o\,
	datad => \b2v_inst11|o\(0),
	combout => \b2v_inst22|c\(0));

-- Location: FF_X11_Y20_N5
\b2v_inst15|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst22|c\(0),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst15|q\(0));

-- Location: LCCOMB_X10_Y20_N24
\b2v_inst12|o[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|o[2]~3_combout\ = (!\b2v_inst19|q\(1) & ((\b2v_inst19|q\(0)) # ((\b2v_inst19|q\(2)) # (\b2v_inst19|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|q\(0),
	datab => \b2v_inst19|q\(1),
	datac => \b2v_inst19|q\(2),
	datad => \b2v_inst19|q\(3),
	combout => \b2v_inst12|o[2]~3_combout\);

-- Location: LCCOMB_X10_Y20_N18
\b2v_inst12|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|Equal0~0_combout\ = (!\b2v_inst19|q\(0) & (!\b2v_inst19|q\(1) & (!\b2v_inst19|q\(2) & !\b2v_inst19|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|q\(0),
	datab => \b2v_inst19|q\(1),
	datac => \b2v_inst19|q\(2),
	datad => \b2v_inst19|q\(3),
	combout => \b2v_inst12|Equal0~0_combout\);

-- Location: LCCOMB_X9_Y20_N0
\b2v_inst12|o[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|o[3]~1_combout\ = (\b2v_inst19|q\(0)) # ((\b2v_inst19|q\(1)) # ((\b2v_inst19|q\(2)) # (\b2v_inst19|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|q\(0),
	datab => \b2v_inst19|q\(1),
	datac => \b2v_inst19|q\(2),
	datad => \b2v_inst19|q\(3),
	combout => \b2v_inst12|o[3]~1_combout\);

-- Location: CLKCTRL_G1
\b2v_inst12|o[3]~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \b2v_inst12|o[3]~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \b2v_inst12|o[3]~1clkctrl_outclk\);

-- Location: LCCOMB_X10_Y20_N2
\b2v_inst12|o[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|o\(2) = (!\b2v_inst12|Equal0~0_combout\ & ((GLOBAL(\b2v_inst12|o[3]~1clkctrl_outclk\) & ((!\b2v_inst12|o[2]~3_combout\))) # (!GLOBAL(\b2v_inst12|o[3]~1clkctrl_outclk\) & (\b2v_inst12|o\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|o\(2),
	datab => \b2v_inst12|o[2]~3_combout\,
	datac => \b2v_inst12|Equal0~0_combout\,
	datad => \b2v_inst12|o[3]~1clkctrl_outclk\,
	combout => \b2v_inst12|o\(2));

-- Location: LCCOMB_X10_Y20_N8
\b2v_inst23|c[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst23|c\(2) = \Input[2]~input_o\ $ (\b2v_inst12|o\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Input[2]~input_o\,
	datad => \b2v_inst12|o\(2),
	combout => \b2v_inst23|c\(2));

-- Location: FF_X10_Y20_N9
\b2v_inst19|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \b2v_inst23|c\(2),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|q\(2));

-- Location: LCCOMB_X10_Y20_N28
\b2v_inst12|o[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|o[3]~4_combout\ = (!\b2v_inst19|q\(2) & ((\b2v_inst19|q\(0)) # ((\b2v_inst19|q\(1)) # (\b2v_inst19|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|q\(0),
	datab => \b2v_inst19|q\(1),
	datac => \b2v_inst19|q\(2),
	datad => \b2v_inst19|q\(3),
	combout => \b2v_inst12|o[3]~4_combout\);

-- Location: LCCOMB_X10_Y20_N6
\b2v_inst12|o[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|o\(3) = (!\b2v_inst12|Equal0~0_combout\ & ((GLOBAL(\b2v_inst12|o[3]~1clkctrl_outclk\) & ((!\b2v_inst12|o[3]~4_combout\))) # (!GLOBAL(\b2v_inst12|o[3]~1clkctrl_outclk\) & (\b2v_inst12|o\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|o\(3),
	datab => \b2v_inst12|o[3]~4_combout\,
	datac => \b2v_inst12|Equal0~0_combout\,
	datad => \b2v_inst12|o[3]~1clkctrl_outclk\,
	combout => \b2v_inst12|o\(3));

-- Location: LCCOMB_X10_Y20_N16
\b2v_inst23|c[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst23|c\(3) = \Input[3]~input_o\ $ (\b2v_inst12|o\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input[3]~input_o\,
	datad => \b2v_inst12|o\(3),
	combout => \b2v_inst23|c\(3));

-- Location: FF_X10_Y20_N17
\b2v_inst19|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \b2v_inst23|c\(3),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|q\(3));

-- Location: LCCOMB_X10_Y20_N12
\b2v_inst12|o[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|o[1]~2_combout\ = \b2v_inst19|q\(0) $ (\b2v_inst19|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|q\(0),
	datad => \b2v_inst19|q\(3),
	combout => \b2v_inst12|o[1]~2_combout\);

-- Location: LCCOMB_X10_Y20_N10
\b2v_inst12|o[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|o\(1) = (!\b2v_inst12|Equal0~0_combout\ & ((GLOBAL(\b2v_inst12|o[3]~1clkctrl_outclk\) & ((\b2v_inst12|o[1]~2_combout\))) # (!GLOBAL(\b2v_inst12|o[3]~1clkctrl_outclk\) & (\b2v_inst12|o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|o\(1),
	datab => \b2v_inst12|o[1]~2_combout\,
	datac => \b2v_inst12|Equal0~0_combout\,
	datad => \b2v_inst12|o[3]~1clkctrl_outclk\,
	combout => \b2v_inst12|o\(1));

-- Location: LCCOMB_X10_Y20_N14
\b2v_inst23|c[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst23|c\(1) = \Input[1]~input_o\ $ (\b2v_inst12|o\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[1]~input_o\,
	datad => \b2v_inst12|o\(1),
	combout => \b2v_inst23|c\(1));

-- Location: FF_X10_Y20_N15
\b2v_inst19|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \b2v_inst23|c\(1),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|q\(1));

-- Location: LCCOMB_X10_Y20_N22
\b2v_inst12|o[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|o[0]~0_combout\ = (\b2v_inst19|q\(3)) # ((!\b2v_inst19|q\(0) & (!\b2v_inst19|q\(1) & !\b2v_inst19|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|q\(0),
	datab => \b2v_inst19|q\(1),
	datac => \b2v_inst19|q\(2),
	datad => \b2v_inst19|q\(3),
	combout => \b2v_inst12|o[0]~0_combout\);

-- Location: LCCOMB_X10_Y20_N20
\b2v_inst12|o[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst12|o\(0) = (!\b2v_inst12|Equal0~0_combout\ & ((GLOBAL(\b2v_inst12|o[3]~1clkctrl_outclk\) & (\b2v_inst12|o[0]~0_combout\)) # (!GLOBAL(\b2v_inst12|o[3]~1clkctrl_outclk\) & ((\b2v_inst12|o\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|o[0]~0_combout\,
	datab => \b2v_inst12|o\(0),
	datac => \b2v_inst12|Equal0~0_combout\,
	datad => \b2v_inst12|o[3]~1clkctrl_outclk\,
	combout => \b2v_inst12|o\(0));

-- Location: LCCOMB_X10_Y20_N30
\b2v_inst23|c[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst23|c\(0) = \Input[0]~input_o\ $ (\b2v_inst12|o\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input[0]~input_o\,
	datad => \b2v_inst12|o\(0),
	combout => \b2v_inst23|c\(0));

-- Location: FF_X10_Y20_N31
\b2v_inst19|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst23|c\(0),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|q\(0));

-- Location: LCCOMB_X10_Y17_N8
\b2v_inst13|o[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|o[2]~3_combout\ = \b2v_inst20|q\(0) $ (\b2v_inst20|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst20|q\(0),
	datad => \b2v_inst20|q\(3),
	combout => \b2v_inst13|o[2]~3_combout\);

-- Location: LCCOMB_X9_Y21_N22
\b2v_inst13|o[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|o[3]~1_combout\ = (\b2v_inst20|q\(0)) # ((\b2v_inst20|q\(3)) # ((\b2v_inst20|q\(2)) # (\b2v_inst20|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst20|q\(0),
	datab => \b2v_inst20|q\(3),
	datac => \b2v_inst20|q\(2),
	datad => \b2v_inst20|q\(1),
	combout => \b2v_inst13|o[3]~1_combout\);

-- Location: CLKCTRL_G0
\b2v_inst13|o[3]~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \b2v_inst13|o[3]~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \b2v_inst13|o[3]~1clkctrl_outclk\);

-- Location: LCCOMB_X9_Y17_N0
\b2v_inst13|o[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|o\(2) = (!\b2v_inst13|Equal0~0_combout\ & ((GLOBAL(\b2v_inst13|o[3]~1clkctrl_outclk\) & ((\b2v_inst13|o[2]~3_combout\))) # (!GLOBAL(\b2v_inst13|o[3]~1clkctrl_outclk\) & (\b2v_inst13|o\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|o\(2),
	datab => \b2v_inst13|o[2]~3_combout\,
	datac => \b2v_inst13|Equal0~0_combout\,
	datad => \b2v_inst13|o[3]~1clkctrl_outclk\,
	combout => \b2v_inst13|o\(2));

-- Location: LCCOMB_X9_Y17_N26
\b2v_inst5|c[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|c\(2) = \Input[2]~input_o\ $ (\b2v_inst13|o\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[2]~input_o\,
	datad => \b2v_inst13|o\(2),
	combout => \b2v_inst5|c\(2));

-- Location: FF_X9_Y17_N27
\b2v_inst20|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \b2v_inst5|c\(2),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst20|q\(2));

-- Location: LCCOMB_X9_Y19_N8
\b2v_inst13|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|Equal0~0_combout\ = (!\b2v_inst20|q\(0) & (!\b2v_inst20|q\(2) & (!\b2v_inst20|q\(3) & !\b2v_inst20|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst20|q\(0),
	datab => \b2v_inst20|q\(2),
	datac => \b2v_inst20|q\(3),
	datad => \b2v_inst20|q\(1),
	combout => \b2v_inst13|Equal0~0_combout\);

-- Location: LCCOMB_X9_Y17_N4
\b2v_inst13|o[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|o[1]~2_combout\ = \b2v_inst20|q\(3) $ (\b2v_inst20|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst20|q\(3),
	datad => \b2v_inst20|q\(2),
	combout => \b2v_inst13|o[1]~2_combout\);

-- Location: LCCOMB_X9_Y17_N14
\b2v_inst13|o[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|o\(1) = (!\b2v_inst13|Equal0~0_combout\ & ((GLOBAL(\b2v_inst13|o[3]~1clkctrl_outclk\) & ((\b2v_inst13|o[1]~2_combout\))) # (!GLOBAL(\b2v_inst13|o[3]~1clkctrl_outclk\) & (\b2v_inst13|o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|o\(1),
	datab => \b2v_inst13|Equal0~0_combout\,
	datac => \b2v_inst13|o[1]~2_combout\,
	datad => \b2v_inst13|o[3]~1clkctrl_outclk\,
	combout => \b2v_inst13|o\(1));

-- Location: LCCOMB_X10_Y17_N16
\b2v_inst5|c[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|c\(1) = \Input[1]~input_o\ $ (\b2v_inst13|o\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input[1]~input_o\,
	datad => \b2v_inst13|o\(1),
	combout => \b2v_inst5|c\(1));

-- Location: FF_X10_Y17_N17
\b2v_inst20|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \b2v_inst5|c\(1),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst20|q\(1));

-- Location: LCCOMB_X10_Y20_N4
\b2v_inst13|o[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|o[3]~4_combout\ = (!\b2v_inst20|q\(1) & ((\b2v_inst20|q\(3)) # ((\b2v_inst20|q\(2)) # (\b2v_inst20|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst20|q\(3),
	datab => \b2v_inst20|q\(1),
	datac => \b2v_inst20|q\(2),
	datad => \b2v_inst20|q\(0),
	combout => \b2v_inst13|o[3]~4_combout\);

-- Location: LCCOMB_X10_Y20_N0
\b2v_inst13|o[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|o\(3) = (!\b2v_inst13|Equal0~0_combout\ & ((GLOBAL(\b2v_inst13|o[3]~1clkctrl_outclk\) & (!\b2v_inst13|o[3]~4_combout\)) # (!GLOBAL(\b2v_inst13|o[3]~1clkctrl_outclk\) & ((\b2v_inst13|o\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|o[3]~4_combout\,
	datab => \b2v_inst13|Equal0~0_combout\,
	datac => \b2v_inst13|o\(3),
	datad => \b2v_inst13|o[3]~1clkctrl_outclk\,
	combout => \b2v_inst13|o\(3));

-- Location: LCCOMB_X10_Y20_N26
\b2v_inst5|c[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|c\(3) = \Input[3]~input_o\ $ (\b2v_inst13|o\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input[3]~input_o\,
	datad => \b2v_inst13|o\(3),
	combout => \b2v_inst5|c\(3));

-- Location: FF_X10_Y20_N27
\b2v_inst20|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \b2v_inst5|c\(3),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst20|q\(3));

-- Location: LCCOMB_X9_Y19_N12
\b2v_inst13|o[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|o[0]~0_combout\ = (\b2v_inst20|q\(2)) # ((!\b2v_inst20|q\(0) & (!\b2v_inst20|q\(3) & !\b2v_inst20|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst20|q\(0),
	datab => \b2v_inst20|q\(3),
	datac => \b2v_inst20|q\(2),
	datad => \b2v_inst20|q\(1),
	combout => \b2v_inst13|o[0]~0_combout\);

-- Location: LCCOMB_X9_Y19_N18
\b2v_inst13|o[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst13|o\(0) = (!\b2v_inst13|Equal0~0_combout\ & ((GLOBAL(\b2v_inst13|o[3]~1clkctrl_outclk\) & (\b2v_inst13|o[0]~0_combout\)) # (!GLOBAL(\b2v_inst13|o[3]~1clkctrl_outclk\) & ((\b2v_inst13|o\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|o[0]~0_combout\,
	datab => \b2v_inst13|o\(0),
	datac => \b2v_inst13|Equal0~0_combout\,
	datad => \b2v_inst13|o[3]~1clkctrl_outclk\,
	combout => \b2v_inst13|o\(0));

-- Location: LCCOMB_X9_Y19_N30
\b2v_inst5|c[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|c\(0) = \Input[0]~input_o\ $ (\b2v_inst13|o\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[0]~input_o\,
	datad => \b2v_inst13|o\(0),
	combout => \b2v_inst5|c\(0));

-- Location: FF_X9_Y19_N31
\b2v_inst20|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst5|c\(0),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst20|q\(0));

-- Location: LCCOMB_X10_Y19_N24
\b2v_inst14|o[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|o[3]~4_combout\ = \b2v_inst21|q\(0) $ (\b2v_inst21|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst21|q\(0),
	datad => \b2v_inst21|q\(3),
	combout => \b2v_inst14|o[3]~4_combout\);

-- Location: LCCOMB_X10_Y19_N8
\b2v_inst14|o[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|o[2]~3_combout\ = \b2v_inst21|q\(3) $ (\b2v_inst21|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst21|q\(3),
	datab => \b2v_inst21|q\(2),
	combout => \b2v_inst14|o[2]~3_combout\);

-- Location: LCCOMB_X10_Y19_N12
\b2v_inst14|o[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|o\(2) = (!\b2v_inst14|Equal0~0_combout\ & ((GLOBAL(\b2v_inst14|o[3]~1clkctrl_outclk\) & ((\b2v_inst14|o[2]~3_combout\))) # (!GLOBAL(\b2v_inst14|o[3]~1clkctrl_outclk\) & (\b2v_inst14|o\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|Equal0~0_combout\,
	datab => \b2v_inst14|o\(2),
	datac => \b2v_inst14|o[2]~3_combout\,
	datad => \b2v_inst14|o[3]~1clkctrl_outclk\,
	combout => \b2v_inst14|o\(2));

-- Location: LCCOMB_X10_Y19_N14
\b2v_inst6|c[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|c\(2) = \Input[2]~input_o\ $ (\b2v_inst14|o\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Input[2]~input_o\,
	datad => \b2v_inst14|o\(2),
	combout => \b2v_inst6|c\(2));

-- Location: FF_X10_Y19_N15
\b2v_inst21|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \b2v_inst6|c\(2),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst21|q\(2));

-- Location: LCCOMB_X10_Y19_N30
\b2v_inst14|o[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|o[1]~2_combout\ = \b2v_inst21|q\(2) $ (\b2v_inst21|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst21|q\(2),
	datac => \b2v_inst21|q\(1),
	combout => \b2v_inst14|o[1]~2_combout\);

-- Location: LCCOMB_X10_Y19_N2
\b2v_inst14|o[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|o\(1) = (!\b2v_inst14|Equal0~0_combout\ & ((GLOBAL(\b2v_inst14|o[3]~1clkctrl_outclk\) & (\b2v_inst14|o[1]~2_combout\)) # (!GLOBAL(\b2v_inst14|o[3]~1clkctrl_outclk\) & ((\b2v_inst14|o\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|o[1]~2_combout\,
	datab => \b2v_inst14|Equal0~0_combout\,
	datac => \b2v_inst14|o[3]~1clkctrl_outclk\,
	datad => \b2v_inst14|o\(1),
	combout => \b2v_inst14|o\(1));

-- Location: LCCOMB_X10_Y19_N0
\b2v_inst6|c[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|c\(1) = \Input[1]~input_o\ $ (\b2v_inst14|o\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Input[1]~input_o\,
	datad => \b2v_inst14|o\(1),
	combout => \b2v_inst6|c\(1));

-- Location: FF_X10_Y19_N1
\b2v_inst21|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \b2v_inst6|c\(1),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst21|q\(1));

-- Location: LCCOMB_X10_Y19_N22
\b2v_inst14|o[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|o[3]~1_combout\ = (\b2v_inst21|q\(3)) # ((\b2v_inst21|q\(0)) # ((\b2v_inst21|q\(2)) # (\b2v_inst21|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst21|q\(3),
	datab => \b2v_inst21|q\(0),
	datac => \b2v_inst21|q\(2),
	datad => \b2v_inst21|q\(1),
	combout => \b2v_inst14|o[3]~1_combout\);

-- Location: CLKCTRL_G16
\b2v_inst14|o[3]~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \b2v_inst14|o[3]~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \b2v_inst14|o[3]~1clkctrl_outclk\);

-- Location: LCCOMB_X10_Y19_N10
\b2v_inst14|o[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|o\(3) = (!\b2v_inst14|Equal0~0_combout\ & ((GLOBAL(\b2v_inst14|o[3]~1clkctrl_outclk\) & (\b2v_inst14|o[3]~4_combout\)) # (!GLOBAL(\b2v_inst14|o[3]~1clkctrl_outclk\) & ((\b2v_inst14|o\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|Equal0~0_combout\,
	datab => \b2v_inst14|o[3]~4_combout\,
	datac => \b2v_inst14|o\(3),
	datad => \b2v_inst14|o[3]~1clkctrl_outclk\,
	combout => \b2v_inst14|o\(3));

-- Location: LCCOMB_X10_Y19_N6
\b2v_inst6|c[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|c\(3) = \Input[3]~input_o\ $ (\b2v_inst14|o\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[3]~input_o\,
	datad => \b2v_inst14|o\(3),
	combout => \b2v_inst6|c\(3));

-- Location: FF_X10_Y19_N7
\b2v_inst21|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \b2v_inst6|c\(3),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst21|q\(3));

-- Location: LCCOMB_X10_Y19_N26
\b2v_inst14|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|Equal0~0_combout\ = (!\b2v_inst21|q\(3) & (!\b2v_inst21|q\(2) & (!\b2v_inst21|q\(1) & !\b2v_inst21|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst21|q\(3),
	datab => \b2v_inst21|q\(2),
	datac => \b2v_inst21|q\(1),
	datad => \b2v_inst21|q\(0),
	combout => \b2v_inst14|Equal0~0_combout\);

-- Location: LCCOMB_X10_Y19_N20
\b2v_inst14|o[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|o[0]~0_combout\ = (\b2v_inst21|q\(1)) # ((!\b2v_inst21|q\(3) & (!\b2v_inst21|q\(2) & !\b2v_inst21|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst21|q\(3),
	datab => \b2v_inst21|q\(2),
	datac => \b2v_inst21|q\(0),
	datad => \b2v_inst21|q\(1),
	combout => \b2v_inst14|o[0]~0_combout\);

-- Location: LCCOMB_X10_Y19_N16
\b2v_inst14|o[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|o\(0) = (!\b2v_inst14|Equal0~0_combout\ & ((GLOBAL(\b2v_inst14|o[3]~1clkctrl_outclk\) & (\b2v_inst14|o[0]~0_combout\)) # (!GLOBAL(\b2v_inst14|o[3]~1clkctrl_outclk\) & ((\b2v_inst14|o\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst14|Equal0~0_combout\,
	datab => \b2v_inst14|o[0]~0_combout\,
	datac => \b2v_inst14|o\(0),
	datad => \b2v_inst14|o[3]~1clkctrl_outclk\,
	combout => \b2v_inst14|o\(0));

-- Location: LCCOMB_X10_Y19_N18
\b2v_inst6|c[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|c\(0) = \Input[0]~input_o\ $ (\b2v_inst14|o\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input[0]~input_o\,
	datad => \b2v_inst14|o\(0),
	combout => \b2v_inst6|c\(0));

-- Location: FF_X10_Y19_N19
\b2v_inst21|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst6|c\(0),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst21|q\(0));

-- Location: LCCOMB_X9_Y19_N26
\b2v_inst16|o[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst16|o[1]~10_combout\ = (\b2v_inst24|q\(0) & ((\b2v_inst24|q\(3) $ (!\b2v_inst24|q\(1))))) # (!\b2v_inst24|q\(0) & ((\b2v_inst24|q\(3) & ((!\b2v_inst24|q\(1)))) # (!\b2v_inst24|q\(3) & ((\b2v_inst24|q\(1)) # (!\b2v_inst24|q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst24|q\(0),
	datab => \b2v_inst24|q\(2),
	datac => \b2v_inst24|q\(3),
	datad => \b2v_inst24|q\(1),
	combout => \b2v_inst16|o[1]~10_combout\);

-- Location: LCCOMB_X10_Y19_N4
\b2v_inst16|o[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst16|o[3]~14_combout\ = (\b2v_inst24|q\(3)) # ((\b2v_inst24|q\(2)) # ((\b2v_inst24|q\(0)) # (\b2v_inst24|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst24|q\(3),
	datab => \b2v_inst24|q\(2),
	datac => \b2v_inst24|q\(0),
	datad => \b2v_inst24|q\(1),
	combout => \b2v_inst16|o[3]~14_combout\);

-- Location: CLKCTRL_G18
\b2v_inst16|o[3]~14clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \b2v_inst16|o[3]~14clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \b2v_inst16|o[3]~14clkctrl_outclk\);

-- Location: LCCOMB_X9_Y19_N2
\b2v_inst16|o[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst16|o\(1) = (!\b2v_inst16|Equal0~0_combout\ & ((GLOBAL(\b2v_inst16|o[3]~14clkctrl_outclk\) & ((\b2v_inst16|o[1]~10_combout\))) # (!GLOBAL(\b2v_inst16|o[3]~14clkctrl_outclk\) & (\b2v_inst16|o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst16|Equal0~0_combout\,
	datab => \b2v_inst16|o\(1),
	datac => \b2v_inst16|o[1]~10_combout\,
	datad => \b2v_inst16|o[3]~14clkctrl_outclk\,
	combout => \b2v_inst16|o\(1));

-- Location: LCCOMB_X9_Y19_N22
\b2v_inst7|c[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|c\(1) = \Input[1]~input_o\ $ (\b2v_inst16|o\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[1]~input_o\,
	datad => \b2v_inst16|o\(1),
	combout => \b2v_inst7|c\(1));

-- Location: FF_X9_Y19_N23
\b2v_inst24|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \b2v_inst7|c\(1),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst24|q\(1));

-- Location: LCCOMB_X10_Y19_N28
\b2v_inst16|o[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst16|o[2]~11_combout\ = \b2v_inst24|q\(2) $ (\b2v_inst24|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst24|q\(2),
	datab => \b2v_inst24|q\(1),
	combout => \b2v_inst16|o[2]~11_combout\);

-- Location: LCCOMB_X9_Y19_N20
\b2v_inst16|o[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst16|o\(2) = (!\b2v_inst16|Equal0~0_combout\ & ((GLOBAL(\b2v_inst16|o[3]~14clkctrl_outclk\) & (\b2v_inst16|o[2]~11_combout\)) # (!GLOBAL(\b2v_inst16|o[3]~14clkctrl_outclk\) & ((\b2v_inst16|o\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst16|Equal0~0_combout\,
	datab => \b2v_inst16|o[2]~11_combout\,
	datac => \b2v_inst16|o\(2),
	datad => \b2v_inst16|o[3]~14clkctrl_outclk\,
	combout => \b2v_inst16|o\(2));

-- Location: LCCOMB_X9_Y19_N24
\b2v_inst7|c[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|c\(2) = \Input[2]~input_o\ $ (\b2v_inst16|o\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input[2]~input_o\,
	datad => \b2v_inst16|o\(2),
	combout => \b2v_inst7|c\(2));

-- Location: FF_X9_Y19_N25
\b2v_inst24|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \b2v_inst7|c\(2),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst24|q\(2));

-- Location: LCCOMB_X9_Y19_N14
\b2v_inst16|o[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst16|o[3]~12_combout\ = \b2v_inst24|q\(3) $ (\b2v_inst24|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst24|q\(3),
	datab => \b2v_inst24|q\(2),
	combout => \b2v_inst16|o[3]~12_combout\);

-- Location: LCCOMB_X9_Y19_N28
\b2v_inst16|o[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst16|o\(3) = (!\b2v_inst16|Equal0~0_combout\ & ((GLOBAL(\b2v_inst16|o[3]~14clkctrl_outclk\) & (\b2v_inst16|o[3]~12_combout\)) # (!GLOBAL(\b2v_inst16|o[3]~14clkctrl_outclk\) & ((\b2v_inst16|o\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst16|Equal0~0_combout\,
	datab => \b2v_inst16|o[3]~12_combout\,
	datac => \b2v_inst16|o\(3),
	datad => \b2v_inst16|o[3]~14clkctrl_outclk\,
	combout => \b2v_inst16|o\(3));

-- Location: LCCOMB_X9_Y19_N4
\b2v_inst7|c[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|c\(3) = \Input[3]~input_o\ $ (\b2v_inst16|o\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[3]~input_o\,
	datad => \b2v_inst16|o\(3),
	combout => \b2v_inst7|c\(3));

-- Location: FF_X9_Y19_N5
\b2v_inst24|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \b2v_inst7|c\(3),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst24|q\(3));

-- Location: LCCOMB_X9_Y19_N0
\b2v_inst16|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst16|Equal0~0_combout\ = (!\b2v_inst24|q\(0) & (!\b2v_inst24|q\(3) & (!\b2v_inst24|q\(2) & !\b2v_inst24|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst24|q\(0),
	datab => \b2v_inst24|q\(3),
	datac => \b2v_inst24|q\(2),
	datad => \b2v_inst24|q\(1),
	combout => \b2v_inst16|Equal0~0_combout\);

-- Location: LCCOMB_X9_Y19_N16
\b2v_inst16|o[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst16|o[0]~13_combout\ = \b2v_inst24|q\(0) $ (\b2v_inst24|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst24|q\(0),
	datac => \b2v_inst24|q\(3),
	combout => \b2v_inst16|o[0]~13_combout\);

-- Location: LCCOMB_X9_Y19_N10
\b2v_inst16|o[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst16|o\(0) = (!\b2v_inst16|Equal0~0_combout\ & ((GLOBAL(\b2v_inst16|o[3]~14clkctrl_outclk\) & ((\b2v_inst16|o[0]~13_combout\))) # (!GLOBAL(\b2v_inst16|o[3]~14clkctrl_outclk\) & (\b2v_inst16|o\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst16|Equal0~0_combout\,
	datab => \b2v_inst16|o\(0),
	datac => \b2v_inst16|o[0]~13_combout\,
	datad => \b2v_inst16|o[3]~14clkctrl_outclk\,
	combout => \b2v_inst16|o\(0));

-- Location: LCCOMB_X9_Y19_N6
\b2v_inst7|c[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|c\(0) = \Input[0]~input_o\ $ (\b2v_inst16|o\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[0]~input_o\,
	datad => \b2v_inst16|o\(0),
	combout => \b2v_inst7|c\(0));

-- Location: FF_X9_Y19_N7
\b2v_inst24|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst7|c\(0),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst24|q\(0));

-- Location: LCCOMB_X9_Y17_N30
\b2v_inst17|o[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst17|o[1]~14_combout\ = \b2v_inst25|q\(2) $ (\b2v_inst25|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst25|q\(2),
	datad => \b2v_inst25|q\(0),
	combout => \b2v_inst17|o[1]~14_combout\);

-- Location: LCCOMB_X9_Y17_N6
\b2v_inst17|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst17|Equal0~0_combout\ = (!\b2v_inst25|q\(0) & (!\b2v_inst25|q\(1) & (!\b2v_inst25|q\(2) & !\b2v_inst25|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst25|q\(0),
	datab => \b2v_inst25|q\(1),
	datac => \b2v_inst25|q\(2),
	datad => \b2v_inst25|q\(3),
	combout => \b2v_inst17|Equal0~0_combout\);

-- Location: LCCOMB_X9_Y17_N20
\b2v_inst17|o[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst17|o\(1) = (!\b2v_inst17|Equal0~0_combout\ & ((GLOBAL(\b2v_inst17|o[3]~13clkctrl_outclk\) & ((\b2v_inst17|o[1]~14_combout\))) # (!GLOBAL(\b2v_inst17|o[3]~13clkctrl_outclk\) & (\b2v_inst17|o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst17|o[3]~13clkctrl_outclk\,
	datab => \b2v_inst17|o\(1),
	datac => \b2v_inst17|o[1]~14_combout\,
	datad => \b2v_inst17|Equal0~0_combout\,
	combout => \b2v_inst17|o\(1));

-- Location: LCCOMB_X9_Y17_N10
\b2v_inst10|c[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|c\(1) = \Input[1]~input_o\ $ (\b2v_inst17|o\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Input[1]~input_o\,
	datad => \b2v_inst17|o\(1),
	combout => \b2v_inst10|c\(1));

-- Location: FF_X9_Y17_N11
\b2v_inst25|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \b2v_inst10|c\(1),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst25|q\(1));

-- Location: LCCOMB_X9_Y17_N28
\b2v_inst17|o[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst17|o[3]~12_combout\ = \b2v_inst25|q\(2) $ (\b2v_inst25|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst25|q\(2),
	datac => \b2v_inst25|q\(1),
	combout => \b2v_inst17|o[3]~12_combout\);

-- Location: LCCOMB_X9_Y17_N12
\b2v_inst17|o[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst17|o\(3) = (!\b2v_inst17|Equal0~0_combout\ & ((GLOBAL(\b2v_inst17|o[3]~13clkctrl_outclk\) & ((\b2v_inst17|o[3]~12_combout\))) # (!GLOBAL(\b2v_inst17|o[3]~13clkctrl_outclk\) & (\b2v_inst17|o\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst17|o\(3),
	datab => \b2v_inst17|o[3]~12_combout\,
	datac => \b2v_inst17|Equal0~0_combout\,
	datad => \b2v_inst17|o[3]~13clkctrl_outclk\,
	combout => \b2v_inst17|o\(3));

-- Location: LCCOMB_X9_Y17_N2
\b2v_inst10|c[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|c\(3) = \Input[3]~input_o\ $ (\b2v_inst17|o\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[3]~input_o\,
	datad => \b2v_inst17|o\(3),
	combout => \b2v_inst10|c\(3));

-- Location: FF_X9_Y17_N3
\b2v_inst25|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \b2v_inst10|c\(3),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst25|q\(3));

-- Location: LCCOMB_X8_Y17_N26
\b2v_inst17|o[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst17|o[3]~13_combout\ = (\b2v_inst25|q\(3)) # ((\b2v_inst25|q\(1)) # ((\b2v_inst25|q\(0)) # (\b2v_inst25|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst25|q\(3),
	datab => \b2v_inst25|q\(1),
	datac => \b2v_inst25|q\(0),
	datad => \b2v_inst25|q\(2),
	combout => \b2v_inst17|o[3]~13_combout\);

-- Location: CLKCTRL_G4
\b2v_inst17|o[3]~13clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \b2v_inst17|o[3]~13clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \b2v_inst17|o[3]~13clkctrl_outclk\);

-- Location: LCCOMB_X9_Y17_N8
\b2v_inst17|o[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst17|o[2]~11_combout\ = (\b2v_inst25|q\(0) & (\b2v_inst25|q\(1) $ (((!\b2v_inst25|q\(3)))))) # (!\b2v_inst25|q\(0) & ((\b2v_inst25|q\(1) & ((!\b2v_inst25|q\(3)))) # (!\b2v_inst25|q\(1) & ((\b2v_inst25|q\(3)) # (!\b2v_inst25|q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst25|q\(0),
	datab => \b2v_inst25|q\(1),
	datac => \b2v_inst25|q\(2),
	datad => \b2v_inst25|q\(3),
	combout => \b2v_inst17|o[2]~11_combout\);

-- Location: LCCOMB_X9_Y17_N18
\b2v_inst17|o[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst17|o\(2) = (!\b2v_inst17|Equal0~0_combout\ & ((GLOBAL(\b2v_inst17|o[3]~13clkctrl_outclk\) & ((\b2v_inst17|o[2]~11_combout\))) # (!GLOBAL(\b2v_inst17|o[3]~13clkctrl_outclk\) & (\b2v_inst17|o\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst17|o[3]~13clkctrl_outclk\,
	datab => \b2v_inst17|o\(2),
	datac => \b2v_inst17|o[2]~11_combout\,
	datad => \b2v_inst17|Equal0~0_combout\,
	combout => \b2v_inst17|o\(2));

-- Location: LCCOMB_X9_Y17_N22
\b2v_inst10|c[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|c\(2) = \Input[2]~input_o\ $ (\b2v_inst17|o\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[2]~input_o\,
	datad => \b2v_inst17|o\(2),
	combout => \b2v_inst10|c\(2));

-- Location: FF_X9_Y17_N23
\b2v_inst25|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \b2v_inst10|c\(2),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst25|q\(2));

-- Location: LCCOMB_X9_Y17_N24
\b2v_inst17|o[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst17|o[0]~10_combout\ = \b2v_inst25|q\(2) $ (\b2v_inst25|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst25|q\(2),
	datac => \b2v_inst25|q\(3),
	combout => \b2v_inst17|o[0]~10_combout\);

-- Location: LCCOMB_X9_Y17_N16
\b2v_inst17|o[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst17|o\(0) = (!\b2v_inst17|Equal0~0_combout\ & ((GLOBAL(\b2v_inst17|o[3]~13clkctrl_outclk\) & (\b2v_inst17|o[0]~10_combout\)) # (!GLOBAL(\b2v_inst17|o[3]~13clkctrl_outclk\) & ((\b2v_inst17|o\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst17|o[0]~10_combout\,
	datab => \b2v_inst17|o\(0),
	datac => \b2v_inst17|Equal0~0_combout\,
	datad => \b2v_inst17|o[3]~13clkctrl_outclk\,
	combout => \b2v_inst17|o\(0));

-- Location: LCCOMB_X8_Y17_N4
\b2v_inst10|c[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|c\(0) = \Input[0]~input_o\ $ (\b2v_inst17|o\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Input[0]~input_o\,
	datad => \b2v_inst17|o\(0),
	combout => \b2v_inst10|c\(0));

-- Location: FF_X8_Y17_N5
\b2v_inst25|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst10|c\(0),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst25|q\(0));

-- Location: LCCOMB_X10_Y17_N4
\b2v_inst26|o[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst26|o[2]~14_combout\ = \b2v_inst28|q\(0) $ (\b2v_inst28|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst28|q\(0),
	datad => \b2v_inst28|q\(2),
	combout => \b2v_inst26|o[2]~14_combout\);

-- Location: LCCOMB_X10_Y17_N14
\b2v_inst26|o[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst26|o[3]~16_combout\ = (\b2v_inst28|q\(0)) # ((\b2v_inst28|q\(3)) # ((\b2v_inst28|q\(1)) # (\b2v_inst28|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst28|q\(0),
	datab => \b2v_inst28|q\(3),
	datac => \b2v_inst28|q\(1),
	datad => \b2v_inst28|q\(2),
	combout => \b2v_inst26|o[3]~16_combout\);

-- Location: CLKCTRL_G15
\b2v_inst26|o[3]~16clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \b2v_inst26|o[3]~16clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \b2v_inst26|o[3]~16clkctrl_outclk\);

-- Location: LCCOMB_X10_Y17_N12
\b2v_inst26|o[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst26|o\(2) = (!\b2v_inst26|Equal0~0_combout\ & ((GLOBAL(\b2v_inst26|o[3]~16clkctrl_outclk\) & (\b2v_inst26|o[2]~14_combout\)) # (!GLOBAL(\b2v_inst26|o[3]~16clkctrl_outclk\) & ((\b2v_inst26|o\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst26|Equal0~0_combout\,
	datab => \b2v_inst26|o[2]~14_combout\,
	datac => \b2v_inst26|o\(2),
	datad => \b2v_inst26|o[3]~16clkctrl_outclk\,
	combout => \b2v_inst26|o\(2));

-- Location: LCCOMB_X10_Y17_N28
\b2v_inst27|c[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst27|c\(2) = \Input[2]~input_o\ $ (\b2v_inst26|o\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[2]~input_o\,
	datad => \b2v_inst26|o\(2),
	combout => \b2v_inst27|c\(2));

-- Location: FF_X10_Y17_N29
\b2v_inst28|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \b2v_inst27|c\(2),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst28|q\(2));

-- Location: LCCOMB_X10_Y17_N6
\b2v_inst26|o[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst26|o[3]~15_combout\ = (\b2v_inst28|q\(0) & (\b2v_inst28|q\(1) $ ((!\b2v_inst28|q\(3))))) # (!\b2v_inst28|q\(0) & ((\b2v_inst28|q\(1) & (!\b2v_inst28|q\(3))) # (!\b2v_inst28|q\(1) & ((\b2v_inst28|q\(3)) # (!\b2v_inst28|q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst28|q\(0),
	datab => \b2v_inst28|q\(1),
	datac => \b2v_inst28|q\(3),
	datad => \b2v_inst28|q\(2),
	combout => \b2v_inst26|o[3]~15_combout\);

-- Location: LCCOMB_X10_Y17_N18
\b2v_inst26|o[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst26|o\(3) = (!\b2v_inst26|Equal0~0_combout\ & ((GLOBAL(\b2v_inst26|o[3]~16clkctrl_outclk\) & (\b2v_inst26|o[3]~15_combout\)) # (!GLOBAL(\b2v_inst26|o[3]~16clkctrl_outclk\) & ((\b2v_inst26|o\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst26|Equal0~0_combout\,
	datab => \b2v_inst26|o[3]~15_combout\,
	datac => \b2v_inst26|o\(3),
	datad => \b2v_inst26|o[3]~16clkctrl_outclk\,
	combout => \b2v_inst26|o\(3));

-- Location: LCCOMB_X10_Y17_N0
\b2v_inst27|c[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst27|c\(3) = \Input[3]~input_o\ $ (\b2v_inst26|o\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[3]~input_o\,
	datad => \b2v_inst26|o\(3),
	combout => \b2v_inst27|c\(3));

-- Location: FF_X10_Y17_N1
\b2v_inst28|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \b2v_inst27|c\(3),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst28|q\(3));

-- Location: LCCOMB_X10_Y17_N26
\b2v_inst26|o[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst26|o[1]~17_combout\ = \b2v_inst28|q\(1) $ (\b2v_inst28|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst28|q\(1),
	datad => \b2v_inst28|q\(3),
	combout => \b2v_inst26|o[1]~17_combout\);

-- Location: LCCOMB_X10_Y17_N2
\b2v_inst26|o[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst26|o\(1) = (!\b2v_inst26|Equal0~0_combout\ & ((GLOBAL(\b2v_inst26|o[3]~16clkctrl_outclk\) & ((\b2v_inst26|o[1]~17_combout\))) # (!GLOBAL(\b2v_inst26|o[3]~16clkctrl_outclk\) & (\b2v_inst26|o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst26|Equal0~0_combout\,
	datab => \b2v_inst26|o\(1),
	datac => \b2v_inst26|o[1]~17_combout\,
	datad => \b2v_inst26|o[3]~16clkctrl_outclk\,
	combout => \b2v_inst26|o\(1));

-- Location: LCCOMB_X10_Y17_N22
\b2v_inst27|c[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst27|c\(1) = \Input[1]~input_o\ $ (\b2v_inst26|o\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input[1]~input_o\,
	datad => \b2v_inst26|o\(1),
	combout => \b2v_inst27|c\(1));

-- Location: FF_X10_Y17_N23
\b2v_inst28|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \b2v_inst27|c\(1),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst28|q\(1));

-- Location: LCCOMB_X10_Y17_N24
\b2v_inst26|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst26|Equal0~0_combout\ = (!\b2v_inst28|q\(1) & (!\b2v_inst28|q\(3) & (!\b2v_inst28|q\(0) & !\b2v_inst28|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst28|q\(1),
	datab => \b2v_inst28|q\(3),
	datac => \b2v_inst28|q\(0),
	datad => \b2v_inst28|q\(2),
	combout => \b2v_inst26|Equal0~0_combout\);

-- Location: LCCOMB_X10_Y17_N10
\b2v_inst26|o[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst26|o[0]~18_combout\ = \b2v_inst28|q\(2) $ (\b2v_inst28|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst28|q\(2),
	datac => \b2v_inst28|q\(1),
	combout => \b2v_inst26|o[0]~18_combout\);

-- Location: LCCOMB_X10_Y17_N20
\b2v_inst26|o[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst26|o\(0) = (!\b2v_inst26|Equal0~0_combout\ & ((GLOBAL(\b2v_inst26|o[3]~16clkctrl_outclk\) & ((\b2v_inst26|o[0]~18_combout\))) # (!GLOBAL(\b2v_inst26|o[3]~16clkctrl_outclk\) & (\b2v_inst26|o\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst26|Equal0~0_combout\,
	datab => \b2v_inst26|o\(0),
	datac => \b2v_inst26|o[0]~18_combout\,
	datad => \b2v_inst26|o[3]~16clkctrl_outclk\,
	combout => \b2v_inst26|o\(0));

-- Location: LCCOMB_X10_Y17_N30
\b2v_inst27|c[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst27|c\(0) = \Input[0]~input_o\ $ (\b2v_inst26|o\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[0]~input_o\,
	datad => \b2v_inst26|o\(0),
	combout => \b2v_inst27|c\(0));

-- Location: FF_X10_Y17_N31
\b2v_inst28|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst27|c\(0),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst28|q\(0));

-- Location: LCCOMB_X8_Y17_N24
\b2v_inst30|o[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst30|o[2]~5_combout\ = \b2v_inst32|q\(1) $ (\b2v_inst32|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst32|q\(1),
	datac => \b2v_inst32|q\(3),
	combout => \b2v_inst30|o[2]~5_combout\);

-- Location: LCCOMB_X8_Y17_N20
\b2v_inst30|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst30|Equal0~0_combout\ = (!\b2v_inst32|q\(0) & (!\b2v_inst32|q\(1) & (!\b2v_inst32|q\(3) & !\b2v_inst32|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst32|q\(0),
	datab => \b2v_inst32|q\(1),
	datac => \b2v_inst32|q\(3),
	datad => \b2v_inst32|q\(2),
	combout => \b2v_inst30|Equal0~0_combout\);

-- Location: LCCOMB_X8_Y17_N6
\b2v_inst30|o[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst30|o\(2) = (!\b2v_inst30|Equal0~0_combout\ & ((GLOBAL(\b2v_inst30|o[3]~4clkctrl_outclk\) & (\b2v_inst30|o[2]~5_combout\)) # (!GLOBAL(\b2v_inst30|o[3]~4clkctrl_outclk\) & ((\b2v_inst30|o\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst30|o[2]~5_combout\,
	datab => \b2v_inst30|o\(2),
	datac => \b2v_inst30|Equal0~0_combout\,
	datad => \b2v_inst30|o[3]~4clkctrl_outclk\,
	combout => \b2v_inst30|o\(2));

-- Location: LCCOMB_X8_Y17_N28
\b2v_inst31|c[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst31|c\(2) = \Input[2]~input_o\ $ (\b2v_inst30|o\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[2]~input_o\,
	datad => \b2v_inst30|o\(2),
	combout => \b2v_inst31|c\(2));

-- Location: FF_X8_Y17_N29
\b2v_inst32|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \b2v_inst31|c\(2),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst32|q\(2));

-- Location: LCCOMB_X8_Y17_N0
\b2v_inst30|o[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst30|o[3]~6_combout\ = \b2v_inst32|q\(0) $ (\b2v_inst32|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst32|q\(0),
	datad => \b2v_inst32|q\(2),
	combout => \b2v_inst30|o[3]~6_combout\);

-- Location: LCCOMB_X8_Y17_N2
\b2v_inst30|o[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst30|o\(3) = (!\b2v_inst30|Equal0~0_combout\ & ((GLOBAL(\b2v_inst30|o[3]~4clkctrl_outclk\) & (\b2v_inst30|o[3]~6_combout\)) # (!GLOBAL(\b2v_inst30|o[3]~4clkctrl_outclk\) & ((\b2v_inst30|o\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst30|o[3]~6_combout\,
	datab => \b2v_inst30|o\(3),
	datac => \b2v_inst30|Equal0~0_combout\,
	datad => \b2v_inst30|o[3]~4clkctrl_outclk\,
	combout => \b2v_inst30|o\(3));

-- Location: LCCOMB_X8_Y17_N22
\b2v_inst31|c[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst31|c\(3) = \Input[3]~input_o\ $ (\b2v_inst30|o\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input[3]~input_o\,
	datad => \b2v_inst30|o\(3),
	combout => \b2v_inst31|c\(3));

-- Location: FF_X8_Y17_N23
\b2v_inst32|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \b2v_inst31|c\(3),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst32|q\(3));

-- Location: LCCOMB_X8_Y17_N16
\b2v_inst30|o[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst30|o[1]~8_combout\ = (\b2v_inst32|q\(0) & ((\b2v_inst32|q\(3) $ (!\b2v_inst32|q\(2))))) # (!\b2v_inst32|q\(0) & ((\b2v_inst32|q\(3) & ((!\b2v_inst32|q\(2)))) # (!\b2v_inst32|q\(3) & ((\b2v_inst32|q\(2)) # (!\b2v_inst32|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst32|q\(0),
	datab => \b2v_inst32|q\(1),
	datac => \b2v_inst32|q\(3),
	datad => \b2v_inst32|q\(2),
	combout => \b2v_inst30|o[1]~8_combout\);

-- Location: LCCOMB_X8_Y17_N18
\b2v_inst30|o[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst30|o\(1) = (!\b2v_inst30|Equal0~0_combout\ & ((GLOBAL(\b2v_inst30|o[3]~4clkctrl_outclk\) & ((\b2v_inst30|o[1]~8_combout\))) # (!GLOBAL(\b2v_inst30|o[3]~4clkctrl_outclk\) & (\b2v_inst30|o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst30|o\(1),
	datab => \b2v_inst30|o[1]~8_combout\,
	datac => \b2v_inst30|Equal0~0_combout\,
	datad => \b2v_inst30|o[3]~4clkctrl_outclk\,
	combout => \b2v_inst30|o\(1));

-- Location: LCCOMB_X8_Y17_N8
\b2v_inst31|c[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst31|c\(1) = \Input[1]~input_o\ $ (\b2v_inst30|o\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[1]~input_o\,
	datad => \b2v_inst30|o\(1),
	combout => \b2v_inst31|c\(1));

-- Location: FF_X8_Y17_N9
\b2v_inst32|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \b2v_inst31|c\(1),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst32|q\(1));

-- Location: LCCOMB_X8_Y17_N10
\b2v_inst30|o[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst30|o[3]~4_combout\ = (\b2v_inst32|q\(0)) # ((\b2v_inst32|q\(1)) # ((\b2v_inst32|q\(3)) # (\b2v_inst32|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst32|q\(0),
	datab => \b2v_inst32|q\(1),
	datac => \b2v_inst32|q\(3),
	datad => \b2v_inst32|q\(2),
	combout => \b2v_inst30|o[3]~4_combout\);

-- Location: CLKCTRL_G3
\b2v_inst30|o[3]~4clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \b2v_inst30|o[3]~4clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \b2v_inst30|o[3]~4clkctrl_outclk\);

-- Location: LCCOMB_X8_Y17_N14
\b2v_inst30|o[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst30|o[0]~7_combout\ = (\b2v_inst32|q\(3) & (\b2v_inst32|q\(0) $ ((!\b2v_inst32|q\(1))))) # (!\b2v_inst32|q\(3) & ((\b2v_inst32|q\(0) & (!\b2v_inst32|q\(1))) # (!\b2v_inst32|q\(0) & ((\b2v_inst32|q\(1)) # (!\b2v_inst32|q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst32|q\(3),
	datab => \b2v_inst32|q\(0),
	datac => \b2v_inst32|q\(1),
	datad => \b2v_inst32|q\(2),
	combout => \b2v_inst30|o[0]~7_combout\);

-- Location: LCCOMB_X8_Y17_N12
\b2v_inst30|o[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst30|o\(0) = (!\b2v_inst30|Equal0~0_combout\ & ((GLOBAL(\b2v_inst30|o[3]~4clkctrl_outclk\) & (\b2v_inst30|o[0]~7_combout\)) # (!GLOBAL(\b2v_inst30|o[3]~4clkctrl_outclk\) & ((\b2v_inst30|o\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst30|o[3]~4clkctrl_outclk\,
	datab => \b2v_inst30|o[0]~7_combout\,
	datac => \b2v_inst30|Equal0~0_combout\,
	datad => \b2v_inst30|o\(0),
	combout => \b2v_inst30|o\(0));

-- Location: LCCOMB_X8_Y17_N30
\b2v_inst31|c[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst31|c\(0) = \Input[0]~input_o\ $ (\b2v_inst30|o\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Input[0]~input_o\,
	datad => \b2v_inst30|o\(0),
	combout => \b2v_inst31|c\(0));

-- Location: FF_X8_Y17_N31
\b2v_inst32|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst31|c\(0),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst32|q\(0));

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

ww_S5(0) <= \S5[0]~output_o\;

ww_S5(1) <= \S5[1]~output_o\;

ww_S5(2) <= \S5[2]~output_o\;

ww_S5(3) <= \S5[3]~output_o\;

ww_S6(0) <= \S6[0]~output_o\;

ww_S6(1) <= \S6[1]~output_o\;

ww_S6(2) <= \S6[2]~output_o\;

ww_S6(3) <= \S6[3]~output_o\;

ww_S7(0) <= \S7[0]~output_o\;

ww_S7(1) <= \S7[1]~output_o\;

ww_S7(2) <= \S7[2]~output_o\;

ww_S7(3) <= \S7[3]~output_o\;
END structure;


