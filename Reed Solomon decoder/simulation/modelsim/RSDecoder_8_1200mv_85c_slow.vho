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

-- DATE "09/28/2016 01:27:59"

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

ENTITY 	Chien IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	inicia : IN std_logic;
	Load : IN std_logic;
	Clear : IN std_logic;
	Lamb0 : IN std_logic_vector(3 DOWNTO 0);
	Lamb1 : IN std_logic_vector(3 DOWNTO 0);
	Lamb2 : IN std_logic_vector(3 DOWNTO 0);
	Lamb3 : IN std_logic_vector(3 DOWNTO 0);
	Omega0 : IN std_logic_vector(3 DOWNTO 0);
	Omega1 : IN std_logic_vector(3 DOWNTO 0);
	Omega2 : IN std_logic_vector(3 DOWNTO 0);
	Omega3 : IN std_logic_vector(3 DOWNTO 0);
	muxSel : BUFFER std_logic;
	ResultLocation : BUFFER std_logic_vector(3 DOWNTO 0);
	ResultLocationOdd : BUFFER std_logic_vector(3 DOWNTO 0);
	ResultValue : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END Chien;

-- Design Ports Information
-- muxSel	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResultLocation[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResultLocation[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResultLocation[2]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResultLocation[3]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResultLocationOdd[0]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResultLocationOdd[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResultLocationOdd[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResultLocationOdd[3]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResultValue[0]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResultValue[1]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResultValue[2]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResultValue[3]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inicia	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lamb2[0]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clear	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Load	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lamb0[0]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lamb1[0]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lamb3[0]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lamb2[1]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lamb0[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lamb1[1]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lamb3[1]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lamb2[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lamb0[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lamb1[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lamb3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lamb2[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lamb0[3]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lamb1[3]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lamb3[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega0[0]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega2[0]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega1[0]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega3[0]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega0[1]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega2[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega1[1]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega3[1]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega0[2]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega2[2]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega1[2]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega3[2]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega0[3]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega2[3]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega1[3]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Omega3[3]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Chien IS
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
SIGNAL ww_Load : std_logic;
SIGNAL ww_Clear : std_logic;
SIGNAL ww_Lamb0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Lamb1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Lamb2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Lamb3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Omega0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Omega1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Omega2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Omega3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_muxSel : std_logic;
SIGNAL ww_ResultLocation : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ResultLocationOdd : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ResultValue : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clear~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \muxSel~output_o\ : std_logic;
SIGNAL \ResultLocation[0]~output_o\ : std_logic;
SIGNAL \ResultLocation[1]~output_o\ : std_logic;
SIGNAL \ResultLocation[2]~output_o\ : std_logic;
SIGNAL \ResultLocation[3]~output_o\ : std_logic;
SIGNAL \ResultLocationOdd[0]~output_o\ : std_logic;
SIGNAL \ResultLocationOdd[1]~output_o\ : std_logic;
SIGNAL \ResultLocationOdd[2]~output_o\ : std_logic;
SIGNAL \ResultLocationOdd[3]~output_o\ : std_logic;
SIGNAL \ResultValue[0]~output_o\ : std_logic;
SIGNAL \ResultValue[1]~output_o\ : std_logic;
SIGNAL \ResultValue[2]~output_o\ : std_logic;
SIGNAL \ResultValue[3]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \inicia~input_o\ : std_logic;
SIGNAL \b2v_inst|proximoEstado.mux~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \b2v_inst|estadoAtual.mux~q\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst9|o[1]~1_combout\ : std_logic;
SIGNAL \Lamb3[1]~input_o\ : std_logic;
SIGNAL \Clear~input_o\ : std_logic;
SIGNAL \Clear~inputclkctrl_outclk\ : std_logic;
SIGNAL \Load~input_o\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst9|o[2]~2_combout\ : std_logic;
SIGNAL \Lamb3[2]~input_o\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst9|o[3]~3_combout\ : std_logic;
SIGNAL \Lamb3[3]~input_o\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst9|o[0]~0_combout\ : std_logic;
SIGNAL \Lamb3[0]~input_o\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst8|o[1]~0_combout\ : std_logic;
SIGNAL \Lamb1[1]~input_o\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst6|q[3]~feeder_combout\ : std_logic;
SIGNAL \Lamb1[3]~input_o\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst8|o[2]~1_combout\ : std_logic;
SIGNAL \Lamb1[2]~input_o\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst6|q[0]~feeder_combout\ : std_logic;
SIGNAL \Lamb1[0]~input_o\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst11|o[3]~2_combout\ : std_logic;
SIGNAL \Lamb2[3]~input_o\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst11|o[2]~1_combout\ : std_logic;
SIGNAL \Lamb2[2]~input_o\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst11|o[1]~0_combout\ : std_logic;
SIGNAL \Lamb2[1]~input_o\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst4|q[0]~feeder_combout\ : std_logic;
SIGNAL \Lamb2[0]~input_o\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst10|o[1]~0_combout\ : std_logic;
SIGNAL \Lamb0[1]~input_o\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst5|q[2]~feeder_combout\ : std_logic;
SIGNAL \Lamb0[2]~input_o\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst5|q[3]~feeder_combout\ : std_logic;
SIGNAL \Lamb0[3]~input_o\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst5|q[0]~feeder_combout\ : std_logic;
SIGNAL \Lamb0[0]~input_o\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|c[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|c[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|c[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|c[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst3|b2v_inst9|o[3]~2_combout\ : std_logic;
SIGNAL \Omega3[3]~input_o\ : std_logic;
SIGNAL \b2v_inst3|b2v_inst9|o[2]~1_combout\ : std_logic;
SIGNAL \Omega3[2]~input_o\ : std_logic;
SIGNAL \b2v_inst3|b2v_inst9|o[1]~0_combout\ : std_logic;
SIGNAL \Omega3[1]~input_o\ : std_logic;
SIGNAL \b2v_inst3|b2v_inst7|q[0]~feeder_combout\ : std_logic;
SIGNAL \Omega3[0]~input_o\ : std_logic;
SIGNAL \b2v_inst3|b2v_inst8|o[1]~0_combout\ : std_logic;
SIGNAL \Omega1[1]~input_o\ : std_logic;
SIGNAL \b2v_inst3|b2v_inst6|q[2]~feeder_combout\ : std_logic;
SIGNAL \Omega1[2]~input_o\ : std_logic;
SIGNAL \b2v_inst3|b2v_inst6|q[3]~feeder_combout\ : std_logic;
SIGNAL \Omega1[3]~input_o\ : std_logic;
SIGNAL \b2v_inst3|b2v_inst6|q[0]~feeder_combout\ : std_logic;
SIGNAL \Omega1[0]~input_o\ : std_logic;
SIGNAL \Omega0[0]~input_o\ : std_logic;
SIGNAL \b2v_inst3|b2v_inst11|o[1]~0_combout\ : std_logic;
SIGNAL \Omega2[1]~input_o\ : std_logic;
SIGNAL \b2v_inst3|b2v_inst4|q[3]~feeder_combout\ : std_logic;
SIGNAL \Omega2[3]~input_o\ : std_logic;
SIGNAL \b2v_inst3|b2v_inst11|o[2]~1_combout\ : std_logic;
SIGNAL \Omega2[2]~input_o\ : std_logic;
SIGNAL \b2v_inst3|b2v_inst4|q[0]~feeder_combout\ : std_logic;
SIGNAL \Omega2[0]~input_o\ : std_logic;
SIGNAL \b2v_inst3|b2v_inst14|c[0]~0_combout\ : std_logic;
SIGNAL \Omega0[1]~input_o\ : std_logic;
SIGNAL \b2v_inst3|b2v_inst14|c[1]~1_combout\ : std_logic;
SIGNAL \Omega0[2]~input_o\ : std_logic;
SIGNAL \b2v_inst3|b2v_inst14|c[2]~2_combout\ : std_logic;
SIGNAL \Omega0[3]~input_o\ : std_logic;
SIGNAL \b2v_inst3|b2v_inst14|c[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst3|b2v_inst7|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst2|b2v_inst4|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst2|b2v_inst5|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst2|b2v_inst6|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst2|b2v_inst7|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst3|b2v_inst4|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst3|b2v_inst6|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst2|b2v_inst15|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst3|b2v_inst5|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Clear~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \b2v_inst2|b2v_inst14|ALT_INV_c[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_estadoAtual.mux~q\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_inicia <= inicia;
ww_Load <= Load;
ww_Clear <= Clear;
ww_Lamb0 <= Lamb0;
ww_Lamb1 <= Lamb1;
ww_Lamb2 <= Lamb2;
ww_Lamb3 <= Lamb3;
ww_Omega0 <= Omega0;
ww_Omega1 <= Omega1;
ww_Omega2 <= Omega2;
ww_Omega3 <= Omega3;
muxSel <= ww_muxSel;
ResultLocation <= ww_ResultLocation;
ResultLocationOdd <= ww_ResultLocationOdd;
ResultValue <= ww_ResultValue;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clear~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clear~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_Clear~inputclkctrl_outclk\ <= NOT \Clear~inputclkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\b2v_inst2|b2v_inst14|ALT_INV_c[0]~0_combout\ <= NOT \b2v_inst2|b2v_inst14|c[0]~0_combout\;
\b2v_inst|ALT_INV_estadoAtual.mux~q\ <= NOT \b2v_inst|estadoAtual.mux~q\;

-- Location: IOOBUF_X50_Y0_N30
\muxSel~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|ALT_INV_estadoAtual.mux~q\,
	devoe => ww_devoe,
	o => \muxSel~output_o\);

-- Location: IOOBUF_X59_Y0_N30
\ResultLocation[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst14|ALT_INV_c[0]~0_combout\,
	devoe => ww_devoe,
	o => \ResultLocation[0]~output_o\);

-- Location: IOOBUF_X38_Y0_N16
\ResultLocation[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst14|c[1]~1_combout\,
	devoe => ww_devoe,
	o => \ResultLocation[1]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\ResultLocation[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst14|c[2]~2_combout\,
	devoe => ww_devoe,
	o => \ResultLocation[2]~output_o\);

-- Location: IOOBUF_X54_Y0_N30
\ResultLocation[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst14|c[3]~3_combout\,
	devoe => ww_devoe,
	o => \ResultLocation[3]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\ResultLocationOdd[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst15|c\(0),
	devoe => ww_devoe,
	o => \ResultLocationOdd[0]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\ResultLocationOdd[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst15|c\(1),
	devoe => ww_devoe,
	o => \ResultLocationOdd[1]~output_o\);

-- Location: IOOBUF_X41_Y43_N9
\ResultLocationOdd[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst15|c\(2),
	devoe => ww_devoe,
	o => \ResultLocationOdd[2]~output_o\);

-- Location: IOOBUF_X50_Y0_N23
\ResultLocationOdd[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|b2v_inst15|c\(3),
	devoe => ww_devoe,
	o => \ResultLocationOdd[3]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\ResultValue[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst3|b2v_inst14|c[0]~0_combout\,
	devoe => ww_devoe,
	o => \ResultValue[0]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\ResultValue[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst3|b2v_inst14|c[1]~1_combout\,
	devoe => ww_devoe,
	o => \ResultValue[1]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\ResultValue[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst3|b2v_inst14|c[2]~2_combout\,
	devoe => ww_devoe,
	o => \ResultValue[2]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\ResultValue[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst3|b2v_inst14|c[3]~3_combout\,
	devoe => ww_devoe,
	o => \ResultValue[3]~output_o\);

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

-- Location: IOIBUF_X45_Y0_N1
\inicia~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inicia,
	o => \inicia~input_o\);

-- Location: LCCOMB_X44_Y2_N14
\b2v_inst|proximoEstado.mux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|proximoEstado.mux~0_combout\ = (!\b2v_inst|estadoAtual.mux~q\ & \inicia~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|estadoAtual.mux~q\,
	datad => \inicia~input_o\,
	combout => \b2v_inst|proximoEstado.mux~0_combout\);

-- Location: IOIBUF_X52_Y0_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X44_Y2_N15
\b2v_inst|estadoAtual.mux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst|proximoEstado.mux~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|estadoAtual.mux~q\);

-- Location: LCCOMB_X44_Y2_N20
\b2v_inst2|b2v_inst9|o[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst9|o[1]~1_combout\ = \b2v_inst2|b2v_inst7|q\(0) $ (\b2v_inst2|b2v_inst7|q\(1) $ (\b2v_inst2|b2v_inst7|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst7|q\(0),
	datac => \b2v_inst2|b2v_inst7|q\(1),
	datad => \b2v_inst2|b2v_inst7|q\(3),
	combout => \b2v_inst2|b2v_inst9|o[1]~1_combout\);

-- Location: IOIBUF_X59_Y0_N1
\Lamb3[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lamb3(1),
	o => \Lamb3[1]~input_o\);

-- Location: IOIBUF_X0_Y21_N15
\Clear~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clear,
	o => \Clear~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: IOIBUF_X67_Y2_N15
\Load~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Load,
	o => \Load~input_o\);

-- Location: FF_X44_Y2_N21
\b2v_inst2|b2v_inst7|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst9|o[1]~1_combout\,
	asdata => \Lamb3[1]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => \b2v_inst|estadoAtual.mux~q\,
	ena => \Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst7|q\(1));

-- Location: LCCOMB_X44_Y2_N24
\b2v_inst2|b2v_inst9|o[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst9|o[2]~2_combout\ = \b2v_inst2|b2v_inst7|q\(2) $ (\b2v_inst2|b2v_inst7|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|b2v_inst7|q\(2),
	datad => \b2v_inst2|b2v_inst7|q\(1),
	combout => \b2v_inst2|b2v_inst9|o[2]~2_combout\);

-- Location: IOIBUF_X61_Y0_N15
\Lamb3[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lamb3(2),
	o => \Lamb3[2]~input_o\);

-- Location: FF_X44_Y2_N25
\b2v_inst2|b2v_inst7|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst9|o[2]~2_combout\,
	asdata => \Lamb3[2]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => \b2v_inst|estadoAtual.mux~q\,
	ena => \Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst7|q\(2));

-- Location: LCCOMB_X44_Y2_N0
\b2v_inst2|b2v_inst9|o[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst9|o[3]~3_combout\ = \b2v_inst2|b2v_inst7|q\(3) $ (\b2v_inst2|b2v_inst7|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|b2v_inst7|q\(3),
	datad => \b2v_inst2|b2v_inst7|q\(2),
	combout => \b2v_inst2|b2v_inst9|o[3]~3_combout\);

-- Location: IOIBUF_X45_Y0_N8
\Lamb3[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lamb3(3),
	o => \Lamb3[3]~input_o\);

-- Location: FF_X44_Y2_N1
\b2v_inst2|b2v_inst7|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst9|o[3]~3_combout\,
	asdata => \Lamb3[3]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => \b2v_inst|estadoAtual.mux~q\,
	ena => \Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst7|q\(3));

-- Location: LCCOMB_X44_Y2_N26
\b2v_inst2|b2v_inst9|o[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst9|o[0]~0_combout\ = \b2v_inst2|b2v_inst7|q\(0) $ (\b2v_inst2|b2v_inst7|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|b2v_inst7|q\(0),
	datad => \b2v_inst2|b2v_inst7|q\(3),
	combout => \b2v_inst2|b2v_inst9|o[0]~0_combout\);

-- Location: IOIBUF_X45_Y0_N22
\Lamb3[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lamb3(0),
	o => \Lamb3[0]~input_o\);

-- Location: FF_X44_Y2_N27
\b2v_inst2|b2v_inst7|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst9|o[0]~0_combout\,
	asdata => \Lamb3[0]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => \b2v_inst|estadoAtual.mux~q\,
	ena => \Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst7|q\(0));

-- Location: LCCOMB_X44_Y2_N22
\b2v_inst2|b2v_inst8|o[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst8|o[1]~0_combout\ = \b2v_inst2|b2v_inst6|q\(2) $ (\b2v_inst2|b2v_inst6|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst6|q\(2),
	datad => \b2v_inst2|b2v_inst6|q\(3),
	combout => \b2v_inst2|b2v_inst8|o[1]~0_combout\);

-- Location: IOIBUF_X48_Y0_N22
\Lamb1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lamb1(1),
	o => \Lamb1[1]~input_o\);

-- Location: FF_X44_Y2_N23
\b2v_inst2|b2v_inst6|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst8|o[1]~0_combout\,
	asdata => \Lamb1[1]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => \b2v_inst|estadoAtual.mux~q\,
	ena => \Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst6|q\(1));

-- Location: LCCOMB_X44_Y2_N6
\b2v_inst2|b2v_inst6|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst6|q[3]~feeder_combout\ = \b2v_inst2|b2v_inst6|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst6|q\(1),
	combout => \b2v_inst2|b2v_inst6|q[3]~feeder_combout\);

-- Location: IOIBUF_X48_Y0_N29
\Lamb1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lamb1(3),
	o => \Lamb1[3]~input_o\);

-- Location: FF_X44_Y2_N7
\b2v_inst2|b2v_inst6|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst6|q[3]~feeder_combout\,
	asdata => \Lamb1[3]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => \b2v_inst|estadoAtual.mux~q\,
	ena => \Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst6|q\(3));

-- Location: LCCOMB_X44_Y2_N30
\b2v_inst2|b2v_inst8|o[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst8|o[2]~1_combout\ = \b2v_inst2|b2v_inst6|q\(0) $ (\b2v_inst2|b2v_inst6|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst6|q\(0),
	datad => \b2v_inst2|b2v_inst6|q\(3),
	combout => \b2v_inst2|b2v_inst8|o[2]~1_combout\);

-- Location: IOIBUF_X52_Y0_N1
\Lamb1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lamb1(2),
	o => \Lamb1[2]~input_o\);

-- Location: FF_X44_Y2_N31
\b2v_inst2|b2v_inst6|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst8|o[2]~1_combout\,
	asdata => \Lamb1[2]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => \b2v_inst|estadoAtual.mux~q\,
	ena => \Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst6|q\(2));

-- Location: LCCOMB_X44_Y2_N12
\b2v_inst2|b2v_inst6|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst6|q[0]~feeder_combout\ = \b2v_inst2|b2v_inst6|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst6|q\(2),
	combout => \b2v_inst2|b2v_inst6|q[0]~feeder_combout\);

-- Location: IOIBUF_X52_Y0_N8
\Lamb1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lamb1(0),
	o => \Lamb1[0]~input_o\);

-- Location: FF_X44_Y2_N13
\b2v_inst2|b2v_inst6|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst6|q[0]~feeder_combout\,
	asdata => \Lamb1[0]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => \b2v_inst|estadoAtual.mux~q\,
	ena => \Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst6|q\(0));

-- Location: LCCOMB_X44_Y2_N10
\b2v_inst2|b2v_inst11|o[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst11|o[3]~2_combout\ = \b2v_inst2|b2v_inst4|q\(3) $ (\b2v_inst2|b2v_inst4|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|b2v_inst4|q\(3),
	datad => \b2v_inst2|b2v_inst4|q\(0),
	combout => \b2v_inst2|b2v_inst11|o[3]~2_combout\);

-- Location: IOIBUF_X54_Y0_N15
\Lamb2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lamb2(3),
	o => \Lamb2[3]~input_o\);

-- Location: FF_X44_Y2_N11
\b2v_inst2|b2v_inst4|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst11|o[3]~2_combout\,
	asdata => \Lamb2[3]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => \b2v_inst|estadoAtual.mux~q\,
	ena => \Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst4|q\(3));

-- Location: LCCOMB_X44_Y2_N18
\b2v_inst2|b2v_inst11|o[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst11|o[2]~1_combout\ = \b2v_inst2|b2v_inst4|q\(2) $ (\b2v_inst2|b2v_inst4|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|b2v_inst4|q\(2),
	datad => \b2v_inst2|b2v_inst4|q\(3),
	combout => \b2v_inst2|b2v_inst11|o[2]~1_combout\);

-- Location: IOIBUF_X45_Y43_N29
\Lamb2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lamb2(2),
	o => \Lamb2[2]~input_o\);

-- Location: FF_X44_Y2_N19
\b2v_inst2|b2v_inst4|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst11|o[2]~1_combout\,
	asdata => \Lamb2[2]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => \b2v_inst|estadoAtual.mux~q\,
	ena => \Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst4|q\(2));

-- Location: LCCOMB_X43_Y2_N12
\b2v_inst2|b2v_inst11|o[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst11|o[1]~0_combout\ = \b2v_inst2|b2v_inst4|q\(1) $ (\b2v_inst2|b2v_inst4|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|b2v_inst4|q\(1),
	datad => \b2v_inst2|b2v_inst4|q\(2),
	combout => \b2v_inst2|b2v_inst11|o[1]~0_combout\);

-- Location: IOIBUF_X43_Y0_N1
\Lamb2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lamb2(1),
	o => \Lamb2[1]~input_o\);

-- Location: FF_X43_Y2_N13
\b2v_inst2|b2v_inst4|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst11|o[1]~0_combout\,
	asdata => \Lamb2[1]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => \b2v_inst|estadoAtual.mux~q\,
	ena => \Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst4|q\(1));

-- Location: LCCOMB_X44_Y2_N28
\b2v_inst2|b2v_inst4|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst4|q[0]~feeder_combout\ = \b2v_inst2|b2v_inst4|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst2|b2v_inst4|q\(1),
	combout => \b2v_inst2|b2v_inst4|q[0]~feeder_combout\);

-- Location: IOIBUF_X56_Y0_N1
\Lamb2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lamb2(0),
	o => \Lamb2[0]~input_o\);

-- Location: FF_X44_Y2_N29
\b2v_inst2|b2v_inst4|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst4|q[0]~feeder_combout\,
	asdata => \Lamb2[0]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => \b2v_inst|estadoAtual.mux~q\,
	ena => \Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst4|q\(0));

-- Location: LCCOMB_X44_Y2_N4
\b2v_inst2|b2v_inst10|o[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst10|o[1]~0_combout\ = \b2v_inst2|b2v_inst5|q\(3) $ (\b2v_inst2|b2v_inst5|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst5|q\(3),
	datad => \b2v_inst2|b2v_inst5|q\(0),
	combout => \b2v_inst2|b2v_inst10|o[1]~0_combout\);

-- Location: IOIBUF_X45_Y0_N15
\Lamb0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lamb0(1),
	o => \Lamb0[1]~input_o\);

-- Location: FF_X44_Y2_N5
\b2v_inst2|b2v_inst5|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst10|o[1]~0_combout\,
	asdata => \Lamb0[1]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => \b2v_inst|estadoAtual.mux~q\,
	ena => \Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst5|q\(1));

-- Location: LCCOMB_X44_Y2_N16
\b2v_inst2|b2v_inst5|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst5|q[2]~feeder_combout\ = \b2v_inst2|b2v_inst5|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst5|q\(1),
	combout => \b2v_inst2|b2v_inst5|q[2]~feeder_combout\);

-- Location: IOIBUF_X52_Y0_N22
\Lamb0[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lamb0(2),
	o => \Lamb0[2]~input_o\);

-- Location: FF_X44_Y2_N17
\b2v_inst2|b2v_inst5|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst5|q[2]~feeder_combout\,
	asdata => \Lamb0[2]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => \b2v_inst|estadoAtual.mux~q\,
	ena => \Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst5|q\(2));

-- Location: LCCOMB_X44_Y2_N8
\b2v_inst2|b2v_inst5|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst5|q[3]~feeder_combout\ = \b2v_inst2|b2v_inst5|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst2|b2v_inst5|q\(2),
	combout => \b2v_inst2|b2v_inst5|q[3]~feeder_combout\);

-- Location: IOIBUF_X45_Y43_N8
\Lamb0[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lamb0(3),
	o => \Lamb0[3]~input_o\);

-- Location: FF_X44_Y2_N9
\b2v_inst2|b2v_inst5|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst5|q[3]~feeder_combout\,
	asdata => \Lamb0[3]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => \b2v_inst|estadoAtual.mux~q\,
	ena => \Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst5|q\(3));

-- Location: LCCOMB_X44_Y2_N2
\b2v_inst2|b2v_inst5|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst5|q[0]~feeder_combout\ = \b2v_inst2|b2v_inst5|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|b2v_inst5|q\(3),
	combout => \b2v_inst2|b2v_inst5|q[0]~feeder_combout\);

-- Location: IOIBUF_X29_Y0_N29
\Lamb0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lamb0(0),
	o => \Lamb0[0]~input_o\);

-- Location: FF_X44_Y2_N3
\b2v_inst2|b2v_inst5|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst2|b2v_inst5|q[0]~feeder_combout\,
	asdata => \Lamb0[0]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => \b2v_inst|estadoAtual.mux~q\,
	ena => \Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|b2v_inst5|q\(0));

-- Location: LCCOMB_X48_Y2_N24
\b2v_inst2|b2v_inst14|c[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|c[0]~0_combout\ = \b2v_inst2|b2v_inst7|q\(0) $ (\b2v_inst2|b2v_inst6|q\(0) $ (\b2v_inst2|b2v_inst4|q\(0) $ (\b2v_inst2|b2v_inst5|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst7|q\(0),
	datab => \b2v_inst2|b2v_inst6|q\(0),
	datac => \b2v_inst2|b2v_inst4|q\(0),
	datad => \b2v_inst2|b2v_inst5|q\(0),
	combout => \b2v_inst2|b2v_inst14|c[0]~0_combout\);

-- Location: LCCOMB_X43_Y2_N14
\b2v_inst2|b2v_inst14|c[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|c[1]~1_combout\ = \b2v_inst2|b2v_inst5|q\(1) $ (\b2v_inst2|b2v_inst6|q\(1) $ (\b2v_inst2|b2v_inst7|q\(1) $ (\b2v_inst2|b2v_inst4|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst5|q\(1),
	datab => \b2v_inst2|b2v_inst6|q\(1),
	datac => \b2v_inst2|b2v_inst7|q\(1),
	datad => \b2v_inst2|b2v_inst4|q\(1),
	combout => \b2v_inst2|b2v_inst14|c[1]~1_combout\);

-- Location: LCCOMB_X43_Y2_N4
\b2v_inst2|b2v_inst14|c[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|c[2]~2_combout\ = \b2v_inst2|b2v_inst5|q\(2) $ (\b2v_inst2|b2v_inst4|q\(2) $ (\b2v_inst2|b2v_inst6|q\(2) $ (\b2v_inst2|b2v_inst7|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst5|q\(2),
	datab => \b2v_inst2|b2v_inst4|q\(2),
	datac => \b2v_inst2|b2v_inst6|q\(2),
	datad => \b2v_inst2|b2v_inst7|q\(2),
	combout => \b2v_inst2|b2v_inst14|c[2]~2_combout\);

-- Location: LCCOMB_X45_Y2_N4
\b2v_inst2|b2v_inst14|c[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst14|c[3]~3_combout\ = \b2v_inst2|b2v_inst4|q\(3) $ (\b2v_inst2|b2v_inst6|q\(3) $ (\b2v_inst2|b2v_inst7|q\(3) $ (\b2v_inst2|b2v_inst5|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst4|q\(3),
	datab => \b2v_inst2|b2v_inst6|q\(3),
	datac => \b2v_inst2|b2v_inst7|q\(3),
	datad => \b2v_inst2|b2v_inst5|q\(3),
	combout => \b2v_inst2|b2v_inst14|c[3]~3_combout\);

-- Location: LCCOMB_X48_Y2_N6
\b2v_inst2|b2v_inst15|c[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|c\(0) = \b2v_inst2|b2v_inst4|q\(0) $ (\b2v_inst2|b2v_inst5|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|b2v_inst4|q\(0),
	datad => \b2v_inst2|b2v_inst5|q\(0),
	combout => \b2v_inst2|b2v_inst15|c\(0));

-- Location: LCCOMB_X43_Y2_N30
\b2v_inst2|b2v_inst15|c[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|c\(1) = \b2v_inst2|b2v_inst4|q\(1) $ (\b2v_inst2|b2v_inst5|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst4|q\(1),
	datad => \b2v_inst2|b2v_inst5|q\(1),
	combout => \b2v_inst2|b2v_inst15|c\(1));

-- Location: LCCOMB_X42_Y2_N4
\b2v_inst2|b2v_inst15|c[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|c\(2) = \b2v_inst2|b2v_inst4|q\(2) $ (\b2v_inst2|b2v_inst5|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst4|q\(2),
	datac => \b2v_inst2|b2v_inst5|q\(2),
	combout => \b2v_inst2|b2v_inst15|c\(2));

-- Location: LCCOMB_X45_Y2_N6
\b2v_inst2|b2v_inst15|c[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|b2v_inst15|c\(3) = \b2v_inst2|b2v_inst4|q\(3) $ (\b2v_inst2|b2v_inst5|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|b2v_inst4|q\(3),
	datad => \b2v_inst2|b2v_inst5|q\(3),
	combout => \b2v_inst2|b2v_inst15|c\(3));

-- Location: LCCOMB_X43_Y2_N8
\b2v_inst3|b2v_inst9|o[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst3|b2v_inst9|o[3]~2_combout\ = \b2v_inst3|b2v_inst7|q\(3) $ (\b2v_inst3|b2v_inst7|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst3|b2v_inst7|q\(3),
	datad => \b2v_inst3|b2v_inst7|q\(0),
	combout => \b2v_inst3|b2v_inst9|o[3]~2_combout\);

-- Location: IOIBUF_X43_Y0_N8
\Omega3[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Omega3(3),
	o => \Omega3[3]~input_o\);

-- Location: FF_X43_Y2_N9
\b2v_inst3|b2v_inst7|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst3|b2v_inst9|o[3]~2_combout\,
	asdata => \Omega3[3]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => \b2v_inst|estadoAtual.mux~q\,
	ena => \Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|b2v_inst7|q\(3));

-- Location: LCCOMB_X43_Y2_N22
\b2v_inst3|b2v_inst9|o[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst3|b2v_inst9|o[2]~1_combout\ = \b2v_inst3|b2v_inst7|q\(3) $ (\b2v_inst3|b2v_inst7|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst3|b2v_inst7|q\(3),
	datac => \b2v_inst3|b2v_inst7|q\(2),
	combout => \b2v_inst3|b2v_inst9|o[2]~1_combout\);

-- Location: IOIBUF_X50_Y0_N1
\Omega3[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Omega3(2),
	o => \Omega3[2]~input_o\);

-- Location: FF_X43_Y2_N23
\b2v_inst3|b2v_inst7|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst3|b2v_inst9|o[2]~1_combout\,
	asdata => \Omega3[2]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => \b2v_inst|estadoAtual.mux~q\,
	ena => \Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|b2v_inst7|q\(2));

-- Location: LCCOMB_X43_Y2_N20
\b2v_inst3|b2v_inst9|o[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst3|b2v_inst9|o[1]~0_combout\ = \b2v_inst3|b2v_inst7|q\(2) $ (\b2v_inst3|b2v_inst7|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|b2v_inst7|q\(2),
	datac => \b2v_inst3|b2v_inst7|q\(1),
	combout => \b2v_inst3|b2v_inst9|o[1]~0_combout\);

-- Location: IOIBUF_X27_Y0_N1
\Omega3[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Omega3(1),
	o => \Omega3[1]~input_o\);

-- Location: FF_X43_Y2_N21
\b2v_inst3|b2v_inst7|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst3|b2v_inst9|o[1]~0_combout\,
	asdata => \Omega3[1]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => \b2v_inst|estadoAtual.mux~q\,
	ena => \Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|b2v_inst7|q\(1));

-- Location: LCCOMB_X43_Y2_N2
\b2v_inst3|b2v_inst7|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst3|b2v_inst7|q[0]~feeder_combout\ = \b2v_inst3|b2v_inst7|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst3|b2v_inst7|q\(1),
	combout => \b2v_inst3|b2v_inst7|q[0]~feeder_combout\);

-- Location: IOIBUF_X50_Y0_N15
\Omega3[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Omega3(0),
	o => \Omega3[0]~input_o\);

-- Location: FF_X43_Y2_N3
\b2v_inst3|b2v_inst7|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst3|b2v_inst7|q[0]~feeder_combout\,
	asdata => \Omega3[0]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => \b2v_inst|estadoAtual.mux~q\,
	ena => \Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|b2v_inst7|q\(0));

-- Location: LCCOMB_X43_Y2_N26
\b2v_inst3|b2v_inst8|o[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst3|b2v_inst8|o[1]~0_combout\ = \b2v_inst3|b2v_inst6|q\(3) $ (\b2v_inst3|b2v_inst6|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst3|b2v_inst6|q\(3),
	datad => \b2v_inst3|b2v_inst6|q\(0),
	combout => \b2v_inst3|b2v_inst8|o[1]~0_combout\);

-- Location: IOIBUF_X61_Y0_N1
\Omega1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Omega1(1),
	o => \Omega1[1]~input_o\);

-- Location: FF_X43_Y2_N27
\b2v_inst3|b2v_inst6|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst3|b2v_inst8|o[1]~0_combout\,
	asdata => \Omega1[1]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => \b2v_inst|estadoAtual.mux~q\,
	ena => \Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|b2v_inst6|q\(1));

-- Location: LCCOMB_X43_Y2_N24
\b2v_inst3|b2v_inst6|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst3|b2v_inst6|q[2]~feeder_combout\ = \b2v_inst3|b2v_inst6|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|b2v_inst6|q\(1),
	combout => \b2v_inst3|b2v_inst6|q[2]~feeder_combout\);

-- Location: IOIBUF_X50_Y0_N8
\Omega1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Omega1(2),
	o => \Omega1[2]~input_o\);

-- Location: FF_X43_Y2_N25
\b2v_inst3|b2v_inst6|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst3|b2v_inst6|q[2]~feeder_combout\,
	asdata => \Omega1[2]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => \b2v_inst|estadoAtual.mux~q\,
	ena => \Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|b2v_inst6|q\(2));

-- Location: LCCOMB_X43_Y2_N18
\b2v_inst3|b2v_inst6|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst3|b2v_inst6|q[3]~feeder_combout\ = \b2v_inst3|b2v_inst6|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst3|b2v_inst6|q\(2),
	combout => \b2v_inst3|b2v_inst6|q[3]~feeder_combout\);

-- Location: IOIBUF_X43_Y0_N22
\Omega1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Omega1(3),
	o => \Omega1[3]~input_o\);

-- Location: FF_X43_Y2_N19
\b2v_inst3|b2v_inst6|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst3|b2v_inst6|q[3]~feeder_combout\,
	asdata => \Omega1[3]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => \b2v_inst|estadoAtual.mux~q\,
	ena => \Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|b2v_inst6|q\(3));

-- Location: LCCOMB_X43_Y2_N0
\b2v_inst3|b2v_inst6|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst3|b2v_inst6|q[0]~feeder_combout\ = \b2v_inst3|b2v_inst6|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst3|b2v_inst6|q\(3),
	combout => \b2v_inst3|b2v_inst6|q[0]~feeder_combout\);

-- Location: IOIBUF_X38_Y0_N22
\Omega1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Omega1(0),
	o => \Omega1[0]~input_o\);

-- Location: FF_X43_Y2_N1
\b2v_inst3|b2v_inst6|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst3|b2v_inst6|q[0]~feeder_combout\,
	asdata => \Omega1[0]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => \b2v_inst|estadoAtual.mux~q\,
	ena => \Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|b2v_inst6|q\(0));

-- Location: IOIBUF_X34_Y0_N8
\Omega0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Omega0(0),
	o => \Omega0[0]~input_o\);

-- Location: FF_X42_Y2_N3
\b2v_inst3|b2v_inst5|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Omega0[0]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|b2v_inst5|q\(0));

-- Location: LCCOMB_X43_Y2_N16
\b2v_inst3|b2v_inst11|o[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst3|b2v_inst11|o[1]~0_combout\ = \b2v_inst3|b2v_inst4|q\(3) $ (\b2v_inst3|b2v_inst4|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst3|b2v_inst4|q\(3),
	datad => \b2v_inst3|b2v_inst4|q\(2),
	combout => \b2v_inst3|b2v_inst11|o[1]~0_combout\);

-- Location: IOIBUF_X43_Y0_N15
\Omega2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Omega2(1),
	o => \Omega2[1]~input_o\);

-- Location: FF_X43_Y2_N17
\b2v_inst3|b2v_inst4|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst3|b2v_inst11|o[1]~0_combout\,
	asdata => \Omega2[1]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => \b2v_inst|estadoAtual.mux~q\,
	ena => \Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|b2v_inst4|q\(1));

-- Location: LCCOMB_X43_Y2_N28
\b2v_inst3|b2v_inst4|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst3|b2v_inst4|q[3]~feeder_combout\ = \b2v_inst3|b2v_inst4|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst3|b2v_inst4|q\(1),
	combout => \b2v_inst3|b2v_inst4|q[3]~feeder_combout\);

-- Location: IOIBUF_X61_Y0_N29
\Omega2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Omega2(3),
	o => \Omega2[3]~input_o\);

-- Location: FF_X43_Y2_N29
\b2v_inst3|b2v_inst4|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst3|b2v_inst4|q[3]~feeder_combout\,
	asdata => \Omega2[3]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => \b2v_inst|estadoAtual.mux~q\,
	ena => \Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|b2v_inst4|q\(3));

-- Location: LCCOMB_X43_Y2_N6
\b2v_inst3|b2v_inst11|o[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst3|b2v_inst11|o[2]~1_combout\ = \b2v_inst3|b2v_inst4|q\(0) $ (\b2v_inst3|b2v_inst4|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|b2v_inst4|q\(0),
	datad => \b2v_inst3|b2v_inst4|q\(3),
	combout => \b2v_inst3|b2v_inst11|o[2]~1_combout\);

-- Location: IOIBUF_X38_Y0_N29
\Omega2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Omega2(2),
	o => \Omega2[2]~input_o\);

-- Location: FF_X43_Y2_N7
\b2v_inst3|b2v_inst4|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst3|b2v_inst11|o[2]~1_combout\,
	asdata => \Omega2[2]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => \b2v_inst|estadoAtual.mux~q\,
	ena => \Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|b2v_inst4|q\(2));

-- Location: LCCOMB_X43_Y2_N10
\b2v_inst3|b2v_inst4|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst3|b2v_inst4|q[0]~feeder_combout\ = \b2v_inst3|b2v_inst4|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst3|b2v_inst4|q\(2),
	combout => \b2v_inst3|b2v_inst4|q[0]~feeder_combout\);

-- Location: IOIBUF_X43_Y0_N29
\Omega2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Omega2(0),
	o => \Omega2[0]~input_o\);

-- Location: FF_X43_Y2_N11
\b2v_inst3|b2v_inst4|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \b2v_inst3|b2v_inst4|q[0]~feeder_combout\,
	asdata => \Omega2[0]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => \b2v_inst|estadoAtual.mux~q\,
	ena => \Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|b2v_inst4|q\(0));

-- Location: LCCOMB_X42_Y2_N2
\b2v_inst3|b2v_inst14|c[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst3|b2v_inst14|c[0]~0_combout\ = \b2v_inst3|b2v_inst7|q\(0) $ (\b2v_inst3|b2v_inst6|q\(0) $ (\b2v_inst3|b2v_inst5|q\(0) $ (\b2v_inst3|b2v_inst4|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|b2v_inst7|q\(0),
	datab => \b2v_inst3|b2v_inst6|q\(0),
	datac => \b2v_inst3|b2v_inst5|q\(0),
	datad => \b2v_inst3|b2v_inst4|q\(0),
	combout => \b2v_inst3|b2v_inst14|c[0]~0_combout\);

-- Location: IOIBUF_X22_Y0_N8
\Omega0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Omega0(1),
	o => \Omega0[1]~input_o\);

-- Location: FF_X42_Y2_N1
\b2v_inst3|b2v_inst5|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Omega0[1]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|b2v_inst5|q\(1));

-- Location: LCCOMB_X42_Y2_N0
\b2v_inst3|b2v_inst14|c[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst3|b2v_inst14|c[1]~1_combout\ = \b2v_inst3|b2v_inst7|q\(1) $ (\b2v_inst3|b2v_inst4|q\(1) $ (\b2v_inst3|b2v_inst5|q\(1) $ (\b2v_inst3|b2v_inst6|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|b2v_inst7|q\(1),
	datab => \b2v_inst3|b2v_inst4|q\(1),
	datac => \b2v_inst3|b2v_inst5|q\(1),
	datad => \b2v_inst3|b2v_inst6|q\(1),
	combout => \b2v_inst3|b2v_inst14|c[1]~1_combout\);

-- Location: IOIBUF_X34_Y0_N29
\Omega0[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Omega0(2),
	o => \Omega0[2]~input_o\);

-- Location: FF_X42_Y2_N31
\b2v_inst3|b2v_inst5|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Omega0[2]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|b2v_inst5|q\(2));

-- Location: LCCOMB_X42_Y2_N30
\b2v_inst3|b2v_inst14|c[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst3|b2v_inst14|c[2]~2_combout\ = \b2v_inst3|b2v_inst4|q\(2) $ (\b2v_inst3|b2v_inst7|q\(2) $ (\b2v_inst3|b2v_inst5|q\(2) $ (\b2v_inst3|b2v_inst6|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|b2v_inst4|q\(2),
	datab => \b2v_inst3|b2v_inst7|q\(2),
	datac => \b2v_inst3|b2v_inst5|q\(2),
	datad => \b2v_inst3|b2v_inst6|q\(2),
	combout => \b2v_inst3|b2v_inst14|c[2]~2_combout\);

-- Location: IOIBUF_X41_Y0_N29
\Omega0[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Omega0(3),
	o => \Omega0[3]~input_o\);

-- Location: FF_X42_Y2_N29
\b2v_inst3|b2v_inst5|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Omega0[3]~input_o\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|b2v_inst5|q\(3));

-- Location: LCCOMB_X42_Y2_N28
\b2v_inst3|b2v_inst14|c[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst3|b2v_inst14|c[3]~3_combout\ = \b2v_inst3|b2v_inst7|q\(3) $ (\b2v_inst3|b2v_inst6|q\(3) $ (\b2v_inst3|b2v_inst5|q\(3) $ (\b2v_inst3|b2v_inst4|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|b2v_inst7|q\(3),
	datab => \b2v_inst3|b2v_inst6|q\(3),
	datac => \b2v_inst3|b2v_inst5|q\(3),
	datad => \b2v_inst3|b2v_inst4|q\(3),
	combout => \b2v_inst3|b2v_inst14|c[3]~3_combout\);

ww_muxSel <= \muxSel~output_o\;

ww_ResultLocation(0) <= \ResultLocation[0]~output_o\;

ww_ResultLocation(1) <= \ResultLocation[1]~output_o\;

ww_ResultLocation(2) <= \ResultLocation[2]~output_o\;

ww_ResultLocation(3) <= \ResultLocation[3]~output_o\;

ww_ResultLocationOdd(0) <= \ResultLocationOdd[0]~output_o\;

ww_ResultLocationOdd(1) <= \ResultLocationOdd[1]~output_o\;

ww_ResultLocationOdd(2) <= \ResultLocationOdd[2]~output_o\;

ww_ResultLocationOdd(3) <= \ResultLocationOdd[3]~output_o\;

ww_ResultValue(0) <= \ResultValue[0]~output_o\;

ww_ResultValue(1) <= \ResultValue[1]~output_o\;

ww_ResultValue(2) <= \ResultValue[2]~output_o\;

ww_ResultValue(3) <= \ResultValue[3]~output_o\;
END structure;


