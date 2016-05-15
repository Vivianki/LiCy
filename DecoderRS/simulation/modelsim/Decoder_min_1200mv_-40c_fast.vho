-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
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
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"

-- DATE "05/15/2016 20:26:52"

-- 
-- Device: Altera EP4CE40F23I7 Package FBGA484
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

ENTITY 	RSSyndromeCalc IS
    PORT (
	S0 : OUT std_logic_vector(3 DOWNTO 0);
	Clear : IN std_logic;
	Clock : IN std_logic;
	Input : IN std_logic_vector(3 DOWNTO 0);
	S1 : OUT std_logic_vector(3 DOWNTO 0);
	S2 : OUT std_logic_vector(3 DOWNTO 0);
	S3 : OUT std_logic_vector(3 DOWNTO 0)
	);
END RSSyndromeCalc;

-- Design Ports Information
-- S0[3]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0[2]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0[0]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[3]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[2]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[1]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[0]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2[3]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2[2]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2[1]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2[0]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3[2]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3[1]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3[0]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[3]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clear	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[2]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[1]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[0]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RSSyndromeCalc IS
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
SIGNAL \inst12|o[3]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst11|o[3]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst14|o[3]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst13|o[3]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Input[3]~input_o\ : std_logic;
SIGNAL \Input[1]~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \Input[0]~input_o\ : std_logic;
SIGNAL \Input[2]~input_o\ : std_logic;
SIGNAL \inst11|o[2]~2_combout\ : std_logic;
SIGNAL \inst11|o[3]~1_combout\ : std_logic;
SIGNAL \inst11|o[3]~1clkctrl_outclk\ : std_logic;
SIGNAL \inst11|Equal0~0_combout\ : std_logic;
SIGNAL \Clear~input_o\ : std_logic;
SIGNAL \Clear~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst11|o[0]~4_combout\ : std_logic;
SIGNAL \inst11|o[1]~3_combout\ : std_logic;
SIGNAL \inst11|o[3]~0_combout\ : std_logic;
SIGNAL \inst12|o[2]~2_combout\ : std_logic;
SIGNAL \inst12|o[3]~1_combout\ : std_logic;
SIGNAL \inst12|o[3]~1clkctrl_outclk\ : std_logic;
SIGNAL \inst12|o[0]~4_combout\ : std_logic;
SIGNAL \inst12|Equal0~0_combout\ : std_logic;
SIGNAL \inst12|o[1]~3_combout\ : std_logic;
SIGNAL \inst12|o[3]~0_combout\ : std_logic;
SIGNAL \inst13|o[2]~2_combout\ : std_logic;
SIGNAL \inst13|o[3]~1_combout\ : std_logic;
SIGNAL \inst13|o[3]~1clkctrl_outclk\ : std_logic;
SIGNAL \inst13|o[1]~3_combout\ : std_logic;
SIGNAL \inst13|o[0]~4_combout\ : std_logic;
SIGNAL \inst13|Equal0~0_combout\ : std_logic;
SIGNAL \inst13|o[3]~0_combout\ : std_logic;
SIGNAL \inst14|o[3]~1_combout\ : std_logic;
SIGNAL \inst14|o[3]~1clkctrl_outclk\ : std_logic;
SIGNAL \inst14|o[1]~3_combout\ : std_logic;
SIGNAL \inst14|Equal0~0_combout\ : std_logic;
SIGNAL \inst14|o[2]~2_combout\ : std_logic;
SIGNAL \inst14|o[0]~4_combout\ : std_logic;
SIGNAL \inst14|o[3]~0_combout\ : std_logic;
SIGNAL \inst21|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst20|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst19|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst15|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst23|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst22|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst11|o\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst12|o\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst13|o\ : std_logic_vector(3 DOWNTO 0);
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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst12|o[3]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst12|o[3]~1_combout\);

\inst11|o[3]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst11|o[3]~1_combout\);

\inst14|o[3]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst14|o[3]~1_combout\);

\inst13|o[3]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst13|o[3]~1_combout\);

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);

\Clear~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clear~input_o\);
\ALT_INV_Clear~inputclkctrl_outclk\ <= NOT \Clear~inputclkctrl_outclk\;

-- Location: IOOBUF_X0_Y19_N23
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

-- Location: IOOBUF_X0_Y18_N16
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

-- Location: IOOBUF_X0_Y18_N9
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

-- Location: IOOBUF_X0_Y19_N16
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

-- Location: IOOBUF_X0_Y28_N9
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

-- Location: IOOBUF_X0_Y17_N16
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

-- Location: IOOBUF_X0_Y28_N23
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

-- Location: IOOBUF_X0_Y17_N23
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

-- Location: IOOBUF_X0_Y16_N16
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

-- Location: IOOBUF_X0_Y28_N16
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

-- Location: IOOBUF_X0_Y28_N2
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

-- Location: IOOBUF_X0_Y16_N2
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

-- Location: IOOBUF_X0_Y20_N9
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

-- Location: IOOBUF_X0_Y16_N9
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

-- Location: IOOBUF_X0_Y20_N16
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

-- Location: IOOBUF_X0_Y16_N23
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

-- Location: IOIBUF_X0_Y19_N8
\Input[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(3),
	o => \Input[3]~input_o\);

-- Location: IOIBUF_X0_Y20_N1
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

-- Location: IOIBUF_X0_Y19_N1
\Input[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(0),
	o => \Input[0]~input_o\);

-- Location: IOIBUF_X0_Y20_N22
\Input[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(2),
	o => \Input[2]~input_o\);

-- Location: LCCOMB_X1_Y21_N6
\inst11|o[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|o[2]~2_combout\ = (!\inst15|q\(2) & ((\inst15|q\(1)) # ((\inst15|q\(0)) # (\inst15|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|q\(1),
	datab => \inst15|q\(0),
	datac => \inst15|q\(2),
	datad => \inst15|q\(3),
	combout => \inst11|o[2]~2_combout\);

-- Location: LCCOMB_X1_Y21_N16
\inst11|o[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|o[3]~1_combout\ = (\inst15|q\(2)) # ((\inst15|q\(0)) # ((\inst15|q\(1)) # (\inst15|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|q\(2),
	datab => \inst15|q\(0),
	datac => \inst15|q\(1),
	datad => \inst15|q\(3),
	combout => \inst11|o[3]~1_combout\);

-- Location: CLKCTRL_G1
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

-- Location: LCCOMB_X1_Y21_N20
\inst11|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Equal0~0_combout\ = (!\inst15|q\(1) & (!\inst15|q\(0) & (!\inst15|q\(2) & !\inst15|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|q\(1),
	datab => \inst15|q\(0),
	datac => \inst15|q\(2),
	datad => \inst15|q\(3),
	combout => \inst11|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y21_N2
\inst11|o[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|o\(2) = (!\inst11|Equal0~0_combout\ & ((GLOBAL(\inst11|o[3]~1clkctrl_outclk\) & ((!\inst11|o[2]~2_combout\))) # (!GLOBAL(\inst11|o[3]~1clkctrl_outclk\) & (\inst11|o\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|o\(2),
	datab => \inst11|o[2]~2_combout\,
	datac => \inst11|o[3]~1clkctrl_outclk\,
	datad => \inst11|Equal0~0_combout\,
	combout => \inst11|o\(2));

-- Location: LCCOMB_X1_Y21_N14
\inst22|c[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|c\(2) = \Input[2]~input_o\ $ (\inst11|o\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Input[2]~input_o\,
	datad => \inst11|o\(2),
	combout => \inst22|c\(2));

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

-- Location: FF_X1_Y21_N15
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

-- Location: LCCOMB_X1_Y21_N8
\inst11|o[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|o[0]~4_combout\ = (!\inst15|q\(0) & ((\inst15|q\(1)) # ((\inst15|q\(2)) # (\inst15|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|q\(1),
	datab => \inst15|q\(0),
	datac => \inst15|q\(2),
	datad => \inst15|q\(3),
	combout => \inst11|o[0]~4_combout\);

-- Location: LCCOMB_X1_Y21_N28
\inst11|o[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|o\(0) = (!\inst11|Equal0~0_combout\ & ((GLOBAL(\inst11|o[3]~1clkctrl_outclk\) & (!\inst11|o[0]~4_combout\)) # (!GLOBAL(\inst11|o[3]~1clkctrl_outclk\) & ((\inst11|o\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|o[0]~4_combout\,
	datab => \inst11|o\(0),
	datac => \inst11|o[3]~1clkctrl_outclk\,
	datad => \inst11|Equal0~0_combout\,
	combout => \inst11|o\(0));

-- Location: LCCOMB_X1_Y21_N24
\inst22|c[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|c\(0) = \Input[0]~input_o\ $ (\inst11|o\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[0]~input_o\,
	datad => \inst11|o\(0),
	combout => \inst22|c\(0));

-- Location: FF_X1_Y21_N25
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

-- Location: LCCOMB_X1_Y21_N30
\inst11|o[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|o[1]~3_combout\ = (!\inst15|q\(1) & ((\inst15|q\(0)) # ((\inst15|q\(2)) # (\inst15|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|q\(0),
	datab => \inst15|q\(2),
	datac => \inst15|q\(1),
	datad => \inst15|q\(3),
	combout => \inst11|o[1]~3_combout\);

-- Location: LCCOMB_X1_Y21_N10
\inst11|o[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|o\(1) = (!\inst11|Equal0~0_combout\ & ((GLOBAL(\inst11|o[3]~1clkctrl_outclk\) & (!\inst11|o[1]~3_combout\)) # (!GLOBAL(\inst11|o[3]~1clkctrl_outclk\) & ((\inst11|o\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|o[1]~3_combout\,
	datab => \inst11|o\(1),
	datac => \inst11|o[3]~1clkctrl_outclk\,
	datad => \inst11|Equal0~0_combout\,
	combout => \inst11|o\(1));

-- Location: LCCOMB_X1_Y21_N26
\inst22|c[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|c\(1) = \Input[1]~input_o\ $ (\inst11|o\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input[1]~input_o\,
	datad => \inst11|o\(1),
	combout => \inst22|c\(1));

-- Location: FF_X1_Y21_N27
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

-- Location: LCCOMB_X1_Y21_N18
\inst11|o[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|o[3]~0_combout\ = (\inst15|q\(3)) # ((!\inst15|q\(1) & (!\inst15|q\(0) & !\inst15|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|q\(1),
	datab => \inst15|q\(0),
	datac => \inst15|q\(2),
	datad => \inst15|q\(3),
	combout => \inst11|o[3]~0_combout\);

-- Location: LCCOMB_X1_Y21_N0
\inst11|o[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|o\(3) = (!\inst11|Equal0~0_combout\ & ((GLOBAL(\inst11|o[3]~1clkctrl_outclk\) & (\inst11|o[3]~0_combout\)) # (!GLOBAL(\inst11|o[3]~1clkctrl_outclk\) & ((\inst11|o\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|o[3]~0_combout\,
	datab => \inst11|o\(3),
	datac => \inst11|o[3]~1clkctrl_outclk\,
	datad => \inst11|Equal0~0_combout\,
	combout => \inst11|o\(3));

-- Location: LCCOMB_X1_Y21_N12
\inst22|c[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|c\(3) = \Input[3]~input_o\ $ (\inst11|o\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[3]~input_o\,
	datad => \inst11|o\(3),
	combout => \inst22|c\(3));

-- Location: FF_X1_Y21_N13
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

-- Location: LCCOMB_X2_Y21_N6
\inst12|o[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|o[2]~2_combout\ = (!\inst19|q\(1) & ((\inst19|q\(0)) # ((\inst19|q\(3)) # (\inst19|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|q\(0),
	datab => \inst19|q\(3),
	datac => \inst19|q\(2),
	datad => \inst19|q\(1),
	combout => \inst12|o[2]~2_combout\);

-- Location: LCCOMB_X2_Y21_N2
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

-- Location: CLKCTRL_G3
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

-- Location: LCCOMB_X2_Y21_N28
\inst12|o[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|o\(2) = (!\inst12|Equal0~0_combout\ & ((GLOBAL(\inst12|o[3]~1clkctrl_outclk\) & (!\inst12|o[2]~2_combout\)) # (!GLOBAL(\inst12|o[3]~1clkctrl_outclk\) & ((\inst12|o\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Equal0~0_combout\,
	datab => \inst12|o[2]~2_combout\,
	datac => \inst12|o\(2),
	datad => \inst12|o[3]~1clkctrl_outclk\,
	combout => \inst12|o\(2));

-- Location: LCCOMB_X2_Y21_N4
\inst23|c[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|c\(2) = \Input[2]~input_o\ $ (\inst12|o\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Input[2]~input_o\,
	datad => \inst12|o\(2),
	combout => \inst23|c\(2));

-- Location: FF_X2_Y21_N5
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

-- Location: LCCOMB_X2_Y21_N10
\inst12|o[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|o[0]~4_combout\ = (\inst19|q\(3)) # ((!\inst19|q\(1) & (!\inst19|q\(0) & !\inst19|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|q\(1),
	datab => \inst19|q\(0),
	datac => \inst19|q\(2),
	datad => \inst19|q\(3),
	combout => \inst12|o[0]~4_combout\);

-- Location: LCCOMB_X2_Y21_N22
\inst12|o[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|o\(0) = (!\inst12|Equal0~0_combout\ & ((GLOBAL(\inst12|o[3]~1clkctrl_outclk\) & (\inst12|o[0]~4_combout\)) # (!GLOBAL(\inst12|o[3]~1clkctrl_outclk\) & ((\inst12|o\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|o[0]~4_combout\,
	datab => \inst12|Equal0~0_combout\,
	datac => \inst12|o\(0),
	datad => \inst12|o[3]~1clkctrl_outclk\,
	combout => \inst12|o\(0));

-- Location: LCCOMB_X2_Y21_N30
\inst23|c[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|c\(0) = \Input[0]~input_o\ $ (\inst12|o\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[0]~input_o\,
	datac => \inst12|o\(0),
	combout => \inst23|c\(0));

-- Location: FF_X2_Y21_N31
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

-- Location: LCCOMB_X2_Y21_N14
\inst12|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Equal0~0_combout\ = (!\inst19|q\(0) & (!\inst19|q\(3) & (!\inst19|q\(2) & !\inst19|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|q\(0),
	datab => \inst19|q\(3),
	datac => \inst19|q\(2),
	datad => \inst19|q\(1),
	combout => \inst12|Equal0~0_combout\);

-- Location: LCCOMB_X2_Y21_N24
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

-- Location: LCCOMB_X2_Y21_N20
\inst12|o[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|o\(1) = (!\inst12|Equal0~0_combout\ & ((GLOBAL(\inst12|o[3]~1clkctrl_outclk\) & (\inst12|o[1]~3_combout\)) # (!GLOBAL(\inst12|o[3]~1clkctrl_outclk\) & ((\inst12|o\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Equal0~0_combout\,
	datab => \inst12|o[1]~3_combout\,
	datac => \inst12|o\(1),
	datad => \inst12|o[3]~1clkctrl_outclk\,
	combout => \inst12|o\(1));

-- Location: LCCOMB_X2_Y21_N26
\inst23|c[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|c\(1) = \Input[1]~input_o\ $ (\inst12|o\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Input[1]~input_o\,
	datad => \inst12|o\(1),
	combout => \inst23|c\(1));

-- Location: FF_X2_Y21_N27
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

-- Location: LCCOMB_X2_Y21_N16
\inst12|o[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|o[3]~0_combout\ = (!\inst19|q\(2) & ((\inst19|q\(1)) # ((\inst19|q\(0)) # (\inst19|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|q\(1),
	datab => \inst19|q\(2),
	datac => \inst19|q\(0),
	datad => \inst19|q\(3),
	combout => \inst12|o[3]~0_combout\);

-- Location: LCCOMB_X2_Y21_N18
\inst12|o[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|o\(3) = (!\inst12|Equal0~0_combout\ & ((GLOBAL(\inst12|o[3]~1clkctrl_outclk\) & (!\inst12|o[3]~0_combout\)) # (!GLOBAL(\inst12|o[3]~1clkctrl_outclk\) & ((\inst12|o\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|o[3]~0_combout\,
	datab => \inst12|Equal0~0_combout\,
	datac => \inst12|o\(3),
	datad => \inst12|o[3]~1clkctrl_outclk\,
	combout => \inst12|o\(3));

-- Location: LCCOMB_X2_Y21_N0
\inst23|c[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|c\(3) = \Input[3]~input_o\ $ (\inst12|o\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[3]~input_o\,
	datad => \inst12|o\(3),
	combout => \inst23|c\(3));

-- Location: FF_X2_Y21_N1
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

-- Location: LCCOMB_X3_Y21_N8
\inst13|o[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|o[2]~2_combout\ = \inst20|q\(0) $ (\inst20|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst20|q\(0),
	datad => \inst20|q\(3),
	combout => \inst13|o[2]~2_combout\);

-- Location: LCCOMB_X3_Y21_N10
\inst13|o[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|o\(2) = (!\inst13|Equal0~0_combout\ & ((GLOBAL(\inst13|o[3]~1clkctrl_outclk\) & (\inst13|o[2]~2_combout\)) # (!GLOBAL(\inst13|o[3]~1clkctrl_outclk\) & ((\inst13|o\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|o[2]~2_combout\,
	datab => \inst13|Equal0~0_combout\,
	datac => \inst13|o[3]~1clkctrl_outclk\,
	datad => \inst13|o\(2),
	combout => \inst13|o\(2));

-- Location: LCCOMB_X3_Y21_N14
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

-- Location: FF_X3_Y21_N15
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

-- Location: LCCOMB_X3_Y21_N22
\inst13|o[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|o[3]~1_combout\ = (\inst20|q\(0)) # ((\inst20|q\(2)) # ((\inst20|q\(1)) # (\inst20|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|q\(0),
	datab => \inst20|q\(2),
	datac => \inst20|q\(1),
	datad => \inst20|q\(3),
	combout => \inst13|o[3]~1_combout\);

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X3_Y21_N0
\inst13|o[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|o[1]~3_combout\ = \inst20|q\(2) $ (\inst20|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst20|q\(2),
	datad => \inst20|q\(3),
	combout => \inst13|o[1]~3_combout\);

-- Location: LCCOMB_X3_Y21_N2
\inst13|o[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|o\(1) = (!\inst13|Equal0~0_combout\ & ((GLOBAL(\inst13|o[3]~1clkctrl_outclk\) & ((\inst13|o[1]~3_combout\))) # (!GLOBAL(\inst13|o[3]~1clkctrl_outclk\) & (\inst13|o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|o\(1),
	datab => \inst13|Equal0~0_combout\,
	datac => \inst13|o[3]~1clkctrl_outclk\,
	datad => \inst13|o[1]~3_combout\,
	combout => \inst13|o\(1));

-- Location: LCCOMB_X3_Y21_N4
\inst5|c[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|c\(1) = \Input[1]~input_o\ $ (\inst13|o\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input[1]~input_o\,
	datad => \inst13|o\(1),
	combout => \inst5|c\(1));

-- Location: FF_X3_Y21_N5
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

-- Location: LCCOMB_X3_Y21_N30
\inst13|o[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|o[0]~4_combout\ = (\inst20|q\(2)) # ((!\inst20|q\(0) & (!\inst20|q\(1) & !\inst20|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|q\(0),
	datab => \inst20|q\(1),
	datac => \inst20|q\(2),
	datad => \inst20|q\(3),
	combout => \inst13|o[0]~4_combout\);

-- Location: LCCOMB_X3_Y21_N16
\inst13|o[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|o\(0) = (!\inst13|Equal0~0_combout\ & ((GLOBAL(\inst13|o[3]~1clkctrl_outclk\) & (\inst13|o[0]~4_combout\)) # (!GLOBAL(\inst13|o[3]~1clkctrl_outclk\) & ((\inst13|o\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|o[0]~4_combout\,
	datab => \inst13|Equal0~0_combout\,
	datac => \inst13|o[3]~1clkctrl_outclk\,
	datad => \inst13|o\(0),
	combout => \inst13|o\(0));

-- Location: LCCOMB_X3_Y21_N12
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

-- Location: FF_X3_Y21_N13
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

-- Location: LCCOMB_X3_Y21_N18
\inst13|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Equal0~0_combout\ = (!\inst20|q\(3) & (!\inst20|q\(0) & (!\inst20|q\(2) & !\inst20|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|q\(3),
	datab => \inst20|q\(0),
	datac => \inst20|q\(2),
	datad => \inst20|q\(1),
	combout => \inst13|Equal0~0_combout\);

-- Location: LCCOMB_X3_Y21_N20
\inst13|o[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|o[3]~0_combout\ = (!\inst20|q\(1) & ((\inst20|q\(3)) # ((\inst20|q\(0)) # (\inst20|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|q\(3),
	datab => \inst20|q\(0),
	datac => \inst20|q\(2),
	datad => \inst20|q\(1),
	combout => \inst13|o[3]~0_combout\);

-- Location: LCCOMB_X3_Y21_N28
\inst13|o[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|o\(3) = (!\inst13|Equal0~0_combout\ & ((GLOBAL(\inst13|o[3]~1clkctrl_outclk\) & ((!\inst13|o[3]~0_combout\))) # (!GLOBAL(\inst13|o[3]~1clkctrl_outclk\) & (\inst13|o\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|o\(3),
	datab => \inst13|Equal0~0_combout\,
	datac => \inst13|o[3]~0_combout\,
	datad => \inst13|o[3]~1clkctrl_outclk\,
	combout => \inst13|o\(3));

-- Location: LCCOMB_X3_Y21_N6
\inst5|c[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|c\(3) = \Input[3]~input_o\ $ (\inst13|o\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[3]~input_o\,
	datad => \inst13|o\(3),
	combout => \inst5|c\(3));

-- Location: FF_X3_Y21_N7
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

-- Location: LCCOMB_X1_Y20_N28
\inst14|o[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|o[3]~1_combout\ = (\inst21|q\(2)) # ((\inst21|q\(0)) # ((\inst21|q\(3)) # (\inst21|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|q\(2),
	datab => \inst21|q\(0),
	datac => \inst21|q\(3),
	datad => \inst21|q\(1),
	combout => \inst14|o[3]~1_combout\);

-- Location: CLKCTRL_G0
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

-- Location: LCCOMB_X1_Y20_N12
\inst14|o[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|o[1]~3_combout\ = \inst21|q\(2) $ (\inst21|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst21|q\(2),
	datad => \inst21|q\(1),
	combout => \inst14|o[1]~3_combout\);

-- Location: LCCOMB_X1_Y20_N20
\inst14|o[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|o\(1) = (!\inst14|Equal0~0_combout\ & ((GLOBAL(\inst14|o[3]~1clkctrl_outclk\) & ((\inst14|o[1]~3_combout\))) # (!GLOBAL(\inst14|o[3]~1clkctrl_outclk\) & (\inst14|o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|o\(1),
	datab => \inst14|Equal0~0_combout\,
	datac => \inst14|o[3]~1clkctrl_outclk\,
	datad => \inst14|o[1]~3_combout\,
	combout => \inst14|o\(1));

-- Location: LCCOMB_X1_Y20_N2
\inst6|c[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c\(1) = \Input[1]~input_o\ $ (\inst14|o\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input[1]~input_o\,
	datad => \inst14|o\(1),
	combout => \inst6|c\(1));

-- Location: FF_X1_Y20_N3
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

-- Location: LCCOMB_X1_Y20_N14
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

-- Location: LCCOMB_X1_Y20_N6
\inst14|o[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|o[2]~2_combout\ = \inst21|q\(2) $ (\inst21|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst21|q\(2),
	datad => \inst21|q\(3),
	combout => \inst14|o[2]~2_combout\);

-- Location: LCCOMB_X1_Y20_N18
\inst14|o[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|o\(2) = (!\inst14|Equal0~0_combout\ & ((GLOBAL(\inst14|o[3]~1clkctrl_outclk\) & ((\inst14|o[2]~2_combout\))) # (!GLOBAL(\inst14|o[3]~1clkctrl_outclk\) & (\inst14|o\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|o\(2),
	datab => \inst14|Equal0~0_combout\,
	datac => \inst14|o[3]~1clkctrl_outclk\,
	datad => \inst14|o[2]~2_combout\,
	combout => \inst14|o\(2));

-- Location: LCCOMB_X1_Y20_N26
\inst6|c[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c\(2) = \Input[2]~input_o\ $ (\inst14|o\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Input[2]~input_o\,
	datad => \inst14|o\(2),
	combout => \inst6|c\(2));

-- Location: FF_X1_Y20_N27
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

-- Location: LCCOMB_X1_Y20_N16
\inst14|o[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|o[0]~4_combout\ = (\inst21|q\(1)) # ((!\inst21|q\(0) & (!\inst21|q\(3) & !\inst21|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|q\(0),
	datab => \inst21|q\(3),
	datac => \inst21|q\(2),
	datad => \inst21|q\(1),
	combout => \inst14|o[0]~4_combout\);

-- Location: LCCOMB_X1_Y20_N10
\inst14|o[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|o\(0) = (!\inst14|Equal0~0_combout\ & ((GLOBAL(\inst14|o[3]~1clkctrl_outclk\) & (\inst14|o[0]~4_combout\)) # (!GLOBAL(\inst14|o[3]~1clkctrl_outclk\) & ((\inst14|o\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|o[0]~4_combout\,
	datab => \inst14|Equal0~0_combout\,
	datac => \inst14|o[3]~1clkctrl_outclk\,
	datad => \inst14|o\(0),
	combout => \inst14|o\(0));

-- Location: LCCOMB_X1_Y20_N4
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

-- Location: FF_X1_Y20_N5
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

-- Location: LCCOMB_X1_Y20_N22
\inst14|o[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|o[3]~0_combout\ = \inst21|q\(0) $ (\inst21|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21|q\(0),
	datac => \inst21|q\(3),
	combout => \inst14|o[3]~0_combout\);

-- Location: LCCOMB_X1_Y20_N24
\inst14|o[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|o\(3) = (!\inst14|Equal0~0_combout\ & ((GLOBAL(\inst14|o[3]~1clkctrl_outclk\) & (\inst14|o[3]~0_combout\)) # (!GLOBAL(\inst14|o[3]~1clkctrl_outclk\) & ((\inst14|o\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|o[3]~0_combout\,
	datab => \inst14|Equal0~0_combout\,
	datac => \inst14|o[3]~1clkctrl_outclk\,
	datad => \inst14|o\(3),
	combout => \inst14|o\(3));

-- Location: LCCOMB_X1_Y20_N8
\inst6|c[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c\(3) = \Input[3]~input_o\ $ (\inst14|o\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[3]~input_o\,
	datad => \inst14|o\(3),
	combout => \inst6|c\(3));

-- Location: FF_X1_Y20_N9
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
END structure;


