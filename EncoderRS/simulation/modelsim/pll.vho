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

-- DATE "05/15/2016 18:37:29"

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

ENTITY 	RSencoder IS
    PORT (
	Clock : IN std_logic;
	Clear : IN std_logic;
	Input : IN std_logic_vector(0 TO 3);
	count : BUFFER std_logic_vector(3 DOWNTO 0);
	Output : BUFFER std_logic_vector(0 TO 3)
	);
END RSencoder;

-- Design Ports Information
-- count[0]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[2]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[3]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[3]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[2]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[0]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[3]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[2]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[1]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[0]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clear	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RSencoder IS
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
SIGNAL ww_Clear : std_logic;
SIGNAL ww_Input : std_logic_vector(0 TO 3);
SIGNAL ww_count : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Output : std_logic_vector(0 TO 3);
SIGNAL \Clear~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst7|o[3]~16clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count[0]~output_o\ : std_logic;
SIGNAL \count[1]~output_o\ : std_logic;
SIGNAL \count[2]~output_o\ : std_logic;
SIGNAL \count[3]~output_o\ : std_logic;
SIGNAL \Output[3]~output_o\ : std_logic;
SIGNAL \Output[2]~output_o\ : std_logic;
SIGNAL \Output[1]~output_o\ : std_logic;
SIGNAL \Output[0]~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst|c[0]~3_combout\ : std_logic;
SIGNAL \Clear~input_o\ : std_logic;
SIGNAL \Clear~inputclkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst|c[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst|c[2]~1_combout\ : std_logic;
SIGNAL \b2v_inst|c[3]~2_combout\ : std_logic;
SIGNAL \Input[3]~input_o\ : std_logic;
SIGNAL \b2v_inst|Equal1~0_combout\ : std_logic;
SIGNAL \b2v_inst|control~0_combout\ : std_logic;
SIGNAL \b2v_inst|control~q\ : std_logic;
SIGNAL \b2v_inst2|c[0]~0_combout\ : std_logic;
SIGNAL \Input[0]~input_o\ : std_logic;
SIGNAL \Input[1]~input_o\ : std_logic;
SIGNAL \b2v_inst10|o[3]~0_combout\ : std_logic;
SIGNAL \Input[2]~input_o\ : std_logic;
SIGNAL \b2v_inst7|o[0]~9_combout\ : std_logic;
SIGNAL \b2v_inst7|o[0]~10_combout\ : std_logic;
SIGNAL \b2v_inst8|Equal0~5_combout\ : std_logic;
SIGNAL \b2v_inst10|o[2]~6_combout\ : std_logic;
SIGNAL \b2v_inst10|o[2]~7_combout\ : std_logic;
SIGNAL \b2v_inst11|o[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst8|Equal0~3_combout\ : std_logic;
SIGNAL \b2v_inst8|Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst8|Equal0~2_combout\ : std_logic;
SIGNAL \b2v_inst7|o[3]~15_combout\ : std_logic;
SIGNAL \b2v_inst8|Equal0~1_combout\ : std_logic;
SIGNAL \b2v_inst7|o[3]~14_combout\ : std_logic;
SIGNAL \b2v_inst7|o[3]~16_combout\ : std_logic;
SIGNAL \b2v_inst7|o[3]~16clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst8|o[1]~0_combout\ : std_logic;
SIGNAL \b2v_inst7|o[3]~17_combout\ : std_logic;
SIGNAL \b2v_inst7|o[1]~18_combout\ : std_logic;
SIGNAL \b2v_inst7|o[2]~20_combout\ : std_logic;
SIGNAL \b2v_inst11|o[2]~1_combout\ : std_logic;
SIGNAL \b2v_inst7|o[2]~21_combout\ : std_logic;
SIGNAL \b2v_inst7|o[2]~19_combout\ : std_logic;
SIGNAL \b2v_inst11|o[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst8|Equal0~6_combout\ : std_logic;
SIGNAL \b2v_inst10|o[3]~9_combout\ : std_logic;
SIGNAL \b2v_inst10|o[3]~10_combout\ : std_logic;
SIGNAL \b2v_inst10|o[3]~11_combout\ : std_logic;
SIGNAL \b2v_inst8|o[2]~1_combout\ : std_logic;
SIGNAL \b2v_inst10|o[2]~8_combout\ : std_logic;
SIGNAL \b2v_inst7|o[2]~22_combout\ : std_logic;
SIGNAL \b2v_inst7|o[2]~23_combout\ : std_logic;
SIGNAL \b2v_inst2|c[2]~1_combout\ : std_logic;
SIGNAL \b2v_inst10|o[1]~3_combout\ : std_logic;
SIGNAL \b2v_inst10|o[1]~2_combout\ : std_logic;
SIGNAL \b2v_inst10|o[1]~4_combout\ : std_logic;
SIGNAL \b2v_inst10|o[1]~5_combout\ : std_logic;
SIGNAL \b2v_inst8|o[3]~2_combout\ : std_logic;
SIGNAL \b2v_inst8|o[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst10|o[3]~12_combout\ : std_logic;
SIGNAL \b2v_inst10|o[3]~13_combout\ : std_logic;
SIGNAL \b2v_inst7|o[3]~24_combout\ : std_logic;
SIGNAL \b2v_inst7|o[3]~25_combout\ : std_logic;
SIGNAL \b2v_inst2|c[3]~2_combout\ : std_logic;
SIGNAL \b2v_inst8|Equal0~4_combout\ : std_logic;
SIGNAL \b2v_inst7|o[0]~27_combout\ : std_logic;
SIGNAL \b2v_inst7|o[0]~8_combout\ : std_logic;
SIGNAL \b2v_inst7|o[0]~26_combout\ : std_logic;
SIGNAL \b2v_inst7|o[0]~11_combout\ : std_logic;
SIGNAL \b2v_inst7|o[0]~12_combout\ : std_logic;
SIGNAL \b2v_inst10|o[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst7|o[0]~13_combout\ : std_logic;
SIGNAL \b2v_inst20|O[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst20|O[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst20|O[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst20|O[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst4|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst12|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst15|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst5|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst14|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst2|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst13|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst3|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst6|c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst7|o\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst10|o\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst8|o\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst11|o\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Clear~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_Clock <= Clock;
ww_Clear <= Clear;
ww_Input <= Input;
count <= ww_count;
Output <= ww_Output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clear~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clear~input_o\);

\b2v_inst7|o[3]~16clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \b2v_inst7|o[3]~16_combout\);

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);
\ALT_INV_Clear~inputclkctrl_outclk\ <= NOT \Clear~inputclkctrl_outclk\;

-- Location: IOOBUF_X0_Y31_N16
\count[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|c\(0),
	devoe => ww_devoe,
	o => \count[0]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\count[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|c\(1),
	devoe => ww_devoe,
	o => \count[1]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\count[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|c\(2),
	devoe => ww_devoe,
	o => \count[2]~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\count[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|c\(3),
	devoe => ww_devoe,
	o => \count[3]~output_o\);

-- Location: IOOBUF_X0_Y30_N16
\Output[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst20|O[0]~0_combout\,
	devoe => ww_devoe,
	o => \Output[3]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\Output[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst20|O[1]~1_combout\,
	devoe => ww_devoe,
	o => \Output[2]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\Output[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst20|O[2]~2_combout\,
	devoe => ww_devoe,
	o => \Output[1]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\Output[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst20|O[3]~3_combout\,
	devoe => ww_devoe,
	o => \Output[0]~output_o\);

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

-- Location: LCCOMB_X3_Y29_N20
\b2v_inst|c[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|c[0]~3_combout\ = !\b2v_inst|c\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|c\(0),
	combout => \b2v_inst|c[0]~3_combout\);

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

-- Location: FF_X3_Y29_N21
\b2v_inst|c[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|c[0]~3_combout\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|c\(0));

-- Location: LCCOMB_X3_Y29_N22
\b2v_inst|c[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|c[1]~0_combout\ = \b2v_inst|c\(1) $ (\b2v_inst|c\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|c\(1),
	datad => \b2v_inst|c\(0),
	combout => \b2v_inst|c[1]~0_combout\);

-- Location: FF_X3_Y29_N23
\b2v_inst|c[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|c[1]~0_combout\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|c\(1));

-- Location: LCCOMB_X3_Y29_N28
\b2v_inst|c[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|c[2]~1_combout\ = \b2v_inst|c\(2) $ (((\b2v_inst|c\(1) & \b2v_inst|c\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|c\(1),
	datac => \b2v_inst|c\(2),
	datad => \b2v_inst|c\(0),
	combout => \b2v_inst|c[2]~1_combout\);

-- Location: FF_X3_Y29_N29
\b2v_inst|c[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|c[2]~1_combout\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|c\(2));

-- Location: LCCOMB_X3_Y29_N26
\b2v_inst|c[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|c[3]~2_combout\ = \b2v_inst|c\(3) $ (((\b2v_inst|c\(2) & (\b2v_inst|c\(0) & \b2v_inst|c\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|c\(2),
	datab => \b2v_inst|c\(0),
	datac => \b2v_inst|c\(3),
	datad => \b2v_inst|c\(1),
	combout => \b2v_inst|c[3]~2_combout\);

-- Location: FF_X3_Y29_N27
\b2v_inst|c[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst|c[3]~2_combout\,
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|c\(3));

-- Location: IOIBUF_X0_Y31_N22
\Input[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(3),
	o => \Input[3]~input_o\);

-- Location: LCCOMB_X3_Y29_N24
\b2v_inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal1~0_combout\ = (\b2v_inst|c\(3) & \b2v_inst|c\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|c\(3),
	datad => \b2v_inst|c\(2),
	combout => \b2v_inst|Equal1~0_combout\);

-- Location: LCCOMB_X2_Y28_N8
\b2v_inst|control~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|control~0_combout\ = (\b2v_inst|c\(0) & (\b2v_inst|control~q\ & ((!\b2v_inst|Equal1~0_combout\) # (!\b2v_inst|c\(1))))) # (!\b2v_inst|c\(0) & ((\b2v_inst|control~q\) # ((!\b2v_inst|c\(1) & \b2v_inst|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|c\(0),
	datab => \b2v_inst|c\(1),
	datac => \b2v_inst|control~q\,
	datad => \b2v_inst|Equal1~0_combout\,
	combout => \b2v_inst|control~0_combout\);

-- Location: FF_X2_Y28_N9
\b2v_inst|control\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \b2v_inst|control~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|control~q\);

-- Location: LCCOMB_X2_Y28_N14
\b2v_inst2|c[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|c[0]~0_combout\ = (!\b2v_inst|control~q\ & (\Input[3]~input_o\ $ (\b2v_inst12|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input[3]~input_o\,
	datac => \b2v_inst|control~q\,
	datad => \b2v_inst12|q\(0),
	combout => \b2v_inst2|c[0]~0_combout\);

-- Location: IOIBUF_X0_Y28_N8
\Input[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(0),
	o => \Input[0]~input_o\);

-- Location: IOIBUF_X0_Y32_N15
\Input[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(1),
	o => \Input[1]~input_o\);

-- Location: LCCOMB_X2_Y29_N16
\b2v_inst10|o[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|o[3]~0_combout\ = (!\b2v_inst2|c[3]~2_combout\ & ((\b2v_inst|control~q\) # (\b2v_inst12|q\(2) $ (!\Input[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|c[3]~2_combout\,
	datab => \b2v_inst12|q\(2),
	datac => \Input[1]~input_o\,
	datad => \b2v_inst|control~q\,
	combout => \b2v_inst10|o[3]~0_combout\);

-- Location: IOIBUF_X0_Y28_N1
\Input[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(2),
	o => \Input[2]~input_o\);

-- Location: LCCOMB_X1_Y28_N2
\b2v_inst7|o[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|o[0]~9_combout\ = \Input[1]~input_o\ $ (\b2v_inst12|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input[1]~input_o\,
	datac => \b2v_inst12|q\(2),
	combout => \b2v_inst7|o[0]~9_combout\);

-- Location: LCCOMB_X1_Y28_N0
\b2v_inst7|o[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|o[0]~10_combout\ = (!\b2v_inst|control~q\ & (\b2v_inst7|o[0]~9_combout\ & (\Input[0]~input_o\ $ (\b2v_inst12|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input[0]~input_o\,
	datab => \b2v_inst|control~q\,
	datac => \b2v_inst12|q\(3),
	datad => \b2v_inst7|o[0]~9_combout\,
	combout => \b2v_inst7|o[0]~10_combout\);

-- Location: LCCOMB_X1_Y28_N12
\b2v_inst8|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|Equal0~5_combout\ = (\b2v_inst2|c[3]~2_combout\ & (\b2v_inst2|c[0]~0_combout\ & (!\b2v_inst2|c\(1) & \b2v_inst2|c[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|c[3]~2_combout\,
	datab => \b2v_inst2|c[0]~0_combout\,
	datac => \b2v_inst2|c\(1),
	datad => \b2v_inst2|c[2]~1_combout\,
	combout => \b2v_inst8|Equal0~5_combout\);

-- Location: LCCOMB_X3_Y28_N12
\b2v_inst6|c[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|c\(1) = \Input[2]~input_o\ $ (\b2v_inst12|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input[2]~input_o\,
	datad => \b2v_inst12|q\(1),
	combout => \b2v_inst6|c\(1));

-- Location: LCCOMB_X3_Y28_N22
\b2v_inst10|o[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|o[2]~6_combout\ = (!\b2v_inst|control~q\ & ((\b2v_inst6|c\(1)) # (\Input[3]~input_o\ $ (\b2v_inst12|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|control~q\,
	datab => \Input[3]~input_o\,
	datac => \b2v_inst12|q\(0),
	datad => \b2v_inst6|c\(1),
	combout => \b2v_inst10|o[2]~6_combout\);

-- Location: LCCOMB_X1_Y28_N6
\b2v_inst10|o[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|o[2]~7_combout\ = (\b2v_inst7|o[0]~10_combout\ & ((\b2v_inst8|Equal0~5_combout\) # (!\b2v_inst10|o[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst7|o[0]~10_combout\,
	datac => \b2v_inst8|Equal0~5_combout\,
	datad => \b2v_inst10|o[2]~6_combout\,
	combout => \b2v_inst10|o[2]~7_combout\);

-- Location: LCCOMB_X1_Y28_N10
\b2v_inst11|o[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|o[1]~0_combout\ = (\b2v_inst10|o[2]~7_combout\) # ((\b2v_inst2|c\(1) & (!\b2v_inst2|c[3]~2_combout\)) # (!\b2v_inst2|c\(1) & (\b2v_inst2|c[3]~2_combout\ & !\b2v_inst2|c[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|c\(1),
	datab => \b2v_inst2|c[3]~2_combout\,
	datac => \b2v_inst10|o[2]~7_combout\,
	datad => \b2v_inst2|c[2]~1_combout\,
	combout => \b2v_inst11|o[1]~0_combout\);

-- Location: LCCOMB_X2_Y28_N16
\b2v_inst8|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|Equal0~3_combout\ = (\b2v_inst2|c\(1) & (!\b2v_inst2|c[0]~0_combout\ & (!\b2v_inst2|c[3]~2_combout\ & \b2v_inst2|c[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|c\(1),
	datab => \b2v_inst2|c[0]~0_combout\,
	datac => \b2v_inst2|c[3]~2_combout\,
	datad => \b2v_inst2|c[2]~1_combout\,
	combout => \b2v_inst8|Equal0~3_combout\);

-- Location: LCCOMB_X2_Y28_N0
\b2v_inst8|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|Equal0~0_combout\ = (\b2v_inst2|c\(1) & (!\b2v_inst2|c[0]~0_combout\ & (\b2v_inst2|c[3]~2_combout\ & \b2v_inst2|c[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|c\(1),
	datab => \b2v_inst2|c[0]~0_combout\,
	datac => \b2v_inst2|c[3]~2_combout\,
	datad => \b2v_inst2|c[2]~1_combout\,
	combout => \b2v_inst8|Equal0~0_combout\);

-- Location: LCCOMB_X2_Y28_N28
\b2v_inst8|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|Equal0~2_combout\ = (!\b2v_inst2|c[3]~2_combout\ & (!\b2v_inst2|c[0]~0_combout\ & (\b2v_inst2|c\(1) & !\b2v_inst2|c[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|c[3]~2_combout\,
	datab => \b2v_inst2|c[0]~0_combout\,
	datac => \b2v_inst2|c\(1),
	datad => \b2v_inst2|c[2]~1_combout\,
	combout => \b2v_inst8|Equal0~2_combout\);

-- Location: LCCOMB_X3_Y28_N10
\b2v_inst7|o[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|o[3]~15_combout\ = (\b2v_inst8|Equal0~3_combout\) # ((\b2v_inst8|Equal0~0_combout\) # (\b2v_inst8|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|Equal0~3_combout\,
	datac => \b2v_inst8|Equal0~0_combout\,
	datad => \b2v_inst8|Equal0~2_combout\,
	combout => \b2v_inst7|o[3]~15_combout\);

-- Location: LCCOMB_X2_Y28_N6
\b2v_inst8|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|Equal0~1_combout\ = (!\b2v_inst2|c[3]~2_combout\ & (!\b2v_inst2|c[0]~0_combout\ & (!\b2v_inst2|c\(1) & \b2v_inst2|c[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|c[3]~2_combout\,
	datab => \b2v_inst2|c[0]~0_combout\,
	datac => \b2v_inst2|c\(1),
	datad => \b2v_inst2|c[2]~1_combout\,
	combout => \b2v_inst8|Equal0~1_combout\);

-- Location: LCCOMB_X3_Y28_N14
\b2v_inst7|o[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|o[3]~14_combout\ = (\b2v_inst2|c[3]~2_combout\ & ((!\b2v_inst2|c\(1)) # (!\b2v_inst2|c[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|c[3]~2_combout\,
	datac => \b2v_inst2|c[2]~1_combout\,
	datad => \b2v_inst2|c\(1),
	combout => \b2v_inst7|o[3]~14_combout\);

-- Location: LCCOMB_X3_Y28_N30
\b2v_inst7|o[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|o[3]~16_combout\ = (\b2v_inst7|o[3]~15_combout\) # ((\b2v_inst8|Equal0~1_combout\) # ((\b2v_inst7|o[3]~14_combout\) # (\b2v_inst2|c[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|o[3]~15_combout\,
	datab => \b2v_inst8|Equal0~1_combout\,
	datac => \b2v_inst7|o[3]~14_combout\,
	datad => \b2v_inst2|c[0]~0_combout\,
	combout => \b2v_inst7|o[3]~16_combout\);

-- Location: CLKCTRL_G0
\b2v_inst7|o[3]~16clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \b2v_inst7|o[3]~16clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \b2v_inst7|o[3]~16clkctrl_outclk\);

-- Location: LCCOMB_X1_Y28_N22
\b2v_inst11|o[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|o\(1) = (!\b2v_inst8|Equal0~4_combout\ & ((GLOBAL(\b2v_inst7|o[3]~16clkctrl_outclk\) & ((\b2v_inst11|o[1]~0_combout\))) # (!GLOBAL(\b2v_inst7|o[3]~16clkctrl_outclk\) & (\b2v_inst11|o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|o\(1),
	datab => \b2v_inst8|Equal0~4_combout\,
	datac => \b2v_inst11|o[1]~0_combout\,
	datad => \b2v_inst7|o[3]~16clkctrl_outclk\,
	combout => \b2v_inst11|o\(1));

-- Location: FF_X1_Y28_N23
\b2v_inst13|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst11|o\(1),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|q\(1));

-- Location: LCCOMB_X1_Y28_N28
\b2v_inst8|o[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|o[1]~0_combout\ = (!\b2v_inst2|c\(1) & ((\b2v_inst2|c[3]~2_combout\) # ((\b2v_inst2|c[0]~0_combout\) # (\b2v_inst2|c[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|c\(1),
	datab => \b2v_inst2|c[3]~2_combout\,
	datac => \b2v_inst2|c[0]~0_combout\,
	datad => \b2v_inst2|c[2]~1_combout\,
	combout => \b2v_inst8|o[1]~0_combout\);

-- Location: LCCOMB_X1_Y28_N18
\b2v_inst8|o[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|o\(1) = (!\b2v_inst8|Equal0~4_combout\ & ((GLOBAL(\b2v_inst7|o[3]~16clkctrl_outclk\) & (!\b2v_inst8|o[1]~0_combout\)) # (!GLOBAL(\b2v_inst7|o[3]~16clkctrl_outclk\) & ((\b2v_inst8|o\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|Equal0~4_combout\,
	datab => \b2v_inst8|o[1]~0_combout\,
	datac => \b2v_inst7|o[3]~16clkctrl_outclk\,
	datad => \b2v_inst8|o\(1),
	combout => \b2v_inst8|o\(1));

-- Location: LCCOMB_X1_Y28_N30
\b2v_inst3|c[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst3|c\(1) = \b2v_inst13|q\(1) $ (\b2v_inst8|o\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst13|q\(1),
	datad => \b2v_inst8|o\(1),
	combout => \b2v_inst3|c\(1));

-- Location: FF_X1_Y28_N31
\b2v_inst14|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst3|c\(1),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst14|q\(1));

-- Location: LCCOMB_X4_Y28_N30
\b2v_inst4|c[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|c\(1) = \b2v_inst10|o\(1) $ (\b2v_inst14|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst10|o\(1),
	datad => \b2v_inst14|q\(1),
	combout => \b2v_inst4|c\(1));

-- Location: FF_X4_Y28_N31
\b2v_inst15|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst4|c\(1),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst15|q\(1));

-- Location: LCCOMB_X3_Y28_N8
\b2v_inst7|o[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|o[3]~17_combout\ = (\b2v_inst2|c[3]~2_combout\ & (\b2v_inst2|c[2]~1_combout\ & \b2v_inst2|c\(1))) # (!\b2v_inst2|c[3]~2_combout\ & (!\b2v_inst2|c[2]~1_combout\ & !\b2v_inst2|c\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|c[3]~2_combout\,
	datac => \b2v_inst2|c[2]~1_combout\,
	datad => \b2v_inst2|c\(1),
	combout => \b2v_inst7|o[3]~17_combout\);

-- Location: LCCOMB_X3_Y28_N18
\b2v_inst7|o[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|o[1]~18_combout\ = (\b2v_inst7|o[3]~17_combout\ & (((!\b2v_inst8|Equal0~0_combout\)) # (!\b2v_inst2|c[2]~1_combout\))) # (!\b2v_inst7|o[3]~17_combout\ & (((\b2v_inst2|c[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|c[2]~1_combout\,
	datab => \b2v_inst8|Equal0~0_combout\,
	datac => \b2v_inst7|o[3]~17_combout\,
	datad => \b2v_inst2|c[0]~0_combout\,
	combout => \b2v_inst7|o[1]~18_combout\);

-- Location: LCCOMB_X4_Y28_N28
\b2v_inst7|o[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|o\(1) = (!\b2v_inst8|Equal0~4_combout\ & ((GLOBAL(\b2v_inst7|o[3]~16clkctrl_outclk\) & (\b2v_inst7|o[1]~18_combout\)) # (!GLOBAL(\b2v_inst7|o[3]~16clkctrl_outclk\) & ((\b2v_inst7|o\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|o[1]~18_combout\,
	datab => \b2v_inst7|o\(1),
	datac => \b2v_inst8|Equal0~4_combout\,
	datad => \b2v_inst7|o[3]~16clkctrl_outclk\,
	combout => \b2v_inst7|o\(1));

-- Location: LCCOMB_X4_Y28_N26
\b2v_inst5|c[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|c\(1) = \b2v_inst15|q\(1) $ (\b2v_inst7|o\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst15|q\(1),
	datad => \b2v_inst7|o\(1),
	combout => \b2v_inst5|c\(1));

-- Location: FF_X4_Y28_N27
\b2v_inst12|q[1]\ : dffeas
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
	q => \b2v_inst12|q\(1));

-- Location: LCCOMB_X2_Y28_N30
\b2v_inst2|c[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|c\(1) = (!\b2v_inst|control~q\ & (\Input[2]~input_o\ $ (\b2v_inst12|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[2]~input_o\,
	datac => \b2v_inst|control~q\,
	datad => \b2v_inst12|q\(1),
	combout => \b2v_inst2|c\(1));

-- Location: LCCOMB_X2_Y29_N26
\b2v_inst7|o[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|o[2]~20_combout\ = (\b2v_inst10|o[3]~0_combout\ & (!\b2v_inst2|c\(1) & (\b2v_inst2|c[0]~0_combout\ $ (\b2v_inst8|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|c[0]~0_combout\,
	datab => \b2v_inst10|o[3]~0_combout\,
	datac => \b2v_inst2|c\(1),
	datad => \b2v_inst8|Equal0~0_combout\,
	combout => \b2v_inst7|o[2]~20_combout\);

-- Location: LCCOMB_X1_Y28_N8
\b2v_inst11|o[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|o[2]~1_combout\ = (\b2v_inst2|c[0]~0_combout\ & (\b2v_inst2|c\(1) & ((!\b2v_inst2|c[2]~1_combout\)))) # (!\b2v_inst2|c[0]~0_combout\ & (\b2v_inst2|c[2]~1_combout\ & ((!\b2v_inst2|c[3]~2_combout\) # (!\b2v_inst2|c\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|c\(1),
	datab => \b2v_inst2|c[3]~2_combout\,
	datac => \b2v_inst2|c[0]~0_combout\,
	datad => \b2v_inst2|c[2]~1_combout\,
	combout => \b2v_inst11|o[2]~1_combout\);

-- Location: LCCOMB_X2_Y29_N14
\b2v_inst7|o[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|o[2]~21_combout\ = (\b2v_inst8|Equal0~0_combout\ & (\b2v_inst7|o[0]~10_combout\ & \b2v_inst2|c\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|Equal0~0_combout\,
	datac => \b2v_inst7|o[0]~10_combout\,
	datad => \b2v_inst2|c\(1),
	combout => \b2v_inst7|o[2]~21_combout\);

-- Location: LCCOMB_X3_Y28_N6
\b2v_inst7|o[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|o[2]~19_combout\ = (\b2v_inst2|c[0]~0_combout\ & (!\b2v_inst2|c[2]~1_combout\ & (\b2v_inst2|c[3]~2_combout\ & !\b2v_inst2|c\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|c[0]~0_combout\,
	datab => \b2v_inst2|c[2]~1_combout\,
	datac => \b2v_inst2|c[3]~2_combout\,
	datad => \b2v_inst2|c\(1),
	combout => \b2v_inst7|o[2]~19_combout\);

-- Location: LCCOMB_X2_Y29_N0
\b2v_inst11|o[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|o[2]~2_combout\ = (\b2v_inst7|o[2]~20_combout\) # ((\b2v_inst11|o[2]~1_combout\) # ((\b2v_inst7|o[2]~21_combout\) # (\b2v_inst7|o[2]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|o[2]~20_combout\,
	datab => \b2v_inst11|o[2]~1_combout\,
	datac => \b2v_inst7|o[2]~21_combout\,
	datad => \b2v_inst7|o[2]~19_combout\,
	combout => \b2v_inst11|o[2]~2_combout\);

-- Location: LCCOMB_X2_Y29_N8
\b2v_inst11|o[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|o\(2) = (!\b2v_inst8|Equal0~4_combout\ & ((GLOBAL(\b2v_inst7|o[3]~16clkctrl_outclk\) & (\b2v_inst11|o[2]~2_combout\)) # (!GLOBAL(\b2v_inst7|o[3]~16clkctrl_outclk\) & ((\b2v_inst11|o\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|o[2]~2_combout\,
	datab => \b2v_inst8|Equal0~4_combout\,
	datac => \b2v_inst11|o\(2),
	datad => \b2v_inst7|o[3]~16clkctrl_outclk\,
	combout => \b2v_inst11|o\(2));

-- Location: FF_X2_Y29_N9
\b2v_inst13|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst11|o\(2),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|q\(2));

-- Location: LCCOMB_X4_Y28_N6
\b2v_inst8|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|Equal0~6_combout\ = (\b2v_inst2|c[0]~0_combout\ & (\b2v_inst2|c\(1) & (!\b2v_inst2|c[2]~1_combout\ & \b2v_inst2|c[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|c[0]~0_combout\,
	datab => \b2v_inst2|c\(1),
	datac => \b2v_inst2|c[2]~1_combout\,
	datad => \b2v_inst2|c[3]~2_combout\,
	combout => \b2v_inst8|Equal0~6_combout\);

-- Location: LCCOMB_X3_Y28_N28
\b2v_inst10|o[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|o[3]~9_combout\ = (\b2v_inst6|c\(1) & (\b2v_inst2|c[3]~2_combout\ & (!\b2v_inst2|c[2]~1_combout\ & \b2v_inst2|c[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|c\(1),
	datab => \b2v_inst2|c[3]~2_combout\,
	datac => \b2v_inst2|c[2]~1_combout\,
	datad => \b2v_inst2|c[0]~0_combout\,
	combout => \b2v_inst10|o[3]~9_combout\);

-- Location: LCCOMB_X3_Y28_N24
\b2v_inst10|o[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|o[3]~10_combout\ = (\b2v_inst2|c[3]~2_combout\ & (\Input[1]~input_o\ $ (\b2v_inst12|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input[1]~input_o\,
	datab => \b2v_inst2|c[3]~2_combout\,
	datad => \b2v_inst12|q\(2),
	combout => \b2v_inst10|o[3]~10_combout\);

-- Location: LCCOMB_X3_Y28_N20
\b2v_inst10|o[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|o[3]~11_combout\ = (\b2v_inst10|o[3]~9_combout\) # ((\b2v_inst10|o[3]~10_combout\) # ((!\b2v_inst10|o[2]~6_combout\ & \b2v_inst10|o[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|o[3]~9_combout\,
	datab => \b2v_inst10|o[2]~6_combout\,
	datac => \b2v_inst10|o[3]~10_combout\,
	datad => \b2v_inst10|o[3]~0_combout\,
	combout => \b2v_inst10|o[3]~11_combout\);

-- Location: LCCOMB_X4_Y28_N14
\b2v_inst8|o[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|o[2]~1_combout\ = (\b2v_inst10|o[3]~11_combout\ & (((\b2v_inst8|Equal0~6_combout\)))) # (!\b2v_inst10|o[3]~11_combout\ & (((\b2v_inst2|c[3]~2_combout\)) # (!\b2v_inst2|c[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|c[2]~1_combout\,
	datab => \b2v_inst2|c[3]~2_combout\,
	datac => \b2v_inst8|Equal0~6_combout\,
	datad => \b2v_inst10|o[3]~11_combout\,
	combout => \b2v_inst8|o[2]~1_combout\);

-- Location: LCCOMB_X4_Y28_N2
\b2v_inst8|o[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|o\(2) = (!\b2v_inst8|Equal0~4_combout\ & ((GLOBAL(\b2v_inst7|o[3]~16clkctrl_outclk\) & (!\b2v_inst8|o[2]~1_combout\)) # (!GLOBAL(\b2v_inst7|o[3]~16clkctrl_outclk\) & ((\b2v_inst8|o\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|o[2]~1_combout\,
	datab => \b2v_inst8|o\(2),
	datac => \b2v_inst8|Equal0~4_combout\,
	datad => \b2v_inst7|o[3]~16clkctrl_outclk\,
	combout => \b2v_inst8|o\(2));

-- Location: LCCOMB_X4_Y28_N24
\b2v_inst3|c[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst3|c\(2) = \b2v_inst13|q\(2) $ (\b2v_inst8|o\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst13|q\(2),
	datad => \b2v_inst8|o\(2),
	combout => \b2v_inst3|c\(2));

-- Location: FF_X4_Y28_N25
\b2v_inst14|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst3|c\(2),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst14|q\(2));

-- Location: LCCOMB_X3_Y28_N26
\b2v_inst10|o[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|o[2]~8_combout\ = (\b2v_inst10|o[2]~7_combout\) # ((\b2v_inst2|c\(1) & (!\b2v_inst2|c[2]~1_combout\)) # (!\b2v_inst2|c\(1) & (\b2v_inst2|c[2]~1_combout\ & !\b2v_inst2|c[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|c\(1),
	datab => \b2v_inst10|o[2]~7_combout\,
	datac => \b2v_inst2|c[2]~1_combout\,
	datad => \b2v_inst2|c[3]~2_combout\,
	combout => \b2v_inst10|o[2]~8_combout\);

-- Location: LCCOMB_X3_Y28_N0
\b2v_inst10|o[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|o\(2) = (!\b2v_inst8|Equal0~4_combout\ & ((GLOBAL(\b2v_inst7|o[3]~16clkctrl_outclk\) & (\b2v_inst10|o[2]~8_combout\)) # (!GLOBAL(\b2v_inst7|o[3]~16clkctrl_outclk\) & ((\b2v_inst10|o\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|o[2]~8_combout\,
	datab => \b2v_inst10|o\(2),
	datac => \b2v_inst8|Equal0~4_combout\,
	datad => \b2v_inst7|o[3]~16clkctrl_outclk\,
	combout => \b2v_inst10|o\(2));

-- Location: LCCOMB_X3_Y29_N30
\b2v_inst4|c[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|c\(2) = \b2v_inst14|q\(2) $ (\b2v_inst10|o\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst14|q\(2),
	datad => \b2v_inst10|o\(2),
	combout => \b2v_inst4|c\(2));

-- Location: FF_X3_Y29_N31
\b2v_inst15|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst4|c\(2),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst15|q\(2));

-- Location: LCCOMB_X3_Y28_N2
\b2v_inst7|o[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|o[2]~22_combout\ = (\b2v_inst2|c\(1) & (!\b2v_inst2|c[0]~0_combout\ & ((!\b2v_inst2|c[2]~1_combout\) # (!\b2v_inst2|c[3]~2_combout\)))) # (!\b2v_inst2|c\(1) & (((\b2v_inst2|c[2]~1_combout\ & \b2v_inst2|c[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|c[3]~2_combout\,
	datab => \b2v_inst2|c\(1),
	datac => \b2v_inst2|c[2]~1_combout\,
	datad => \b2v_inst2|c[0]~0_combout\,
	combout => \b2v_inst7|o[2]~22_combout\);

-- Location: LCCOMB_X2_Y29_N2
\b2v_inst7|o[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|o[2]~23_combout\ = (\b2v_inst7|o[2]~20_combout\) # ((\b2v_inst7|o[2]~22_combout\) # ((\b2v_inst7|o[2]~21_combout\) # (\b2v_inst7|o[2]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|o[2]~20_combout\,
	datab => \b2v_inst7|o[2]~22_combout\,
	datac => \b2v_inst7|o[2]~21_combout\,
	datad => \b2v_inst7|o[2]~19_combout\,
	combout => \b2v_inst7|o[2]~23_combout\);

-- Location: LCCOMB_X2_Y29_N28
\b2v_inst7|o[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|o\(2) = (!\b2v_inst8|Equal0~4_combout\ & ((GLOBAL(\b2v_inst7|o[3]~16clkctrl_outclk\) & ((\b2v_inst7|o[2]~23_combout\))) # (!GLOBAL(\b2v_inst7|o[3]~16clkctrl_outclk\) & (\b2v_inst7|o\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|Equal0~4_combout\,
	datab => \b2v_inst7|o\(2),
	datac => \b2v_inst7|o[2]~23_combout\,
	datad => \b2v_inst7|o[3]~16clkctrl_outclk\,
	combout => \b2v_inst7|o\(2));

-- Location: LCCOMB_X2_Y29_N30
\b2v_inst5|c[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|c\(2) = \b2v_inst15|q\(2) $ (\b2v_inst7|o\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst15|q\(2),
	datad => \b2v_inst7|o\(2),
	combout => \b2v_inst5|c\(2));

-- Location: FF_X2_Y29_N31
\b2v_inst12|q[2]\ : dffeas
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
	q => \b2v_inst12|q\(2));

-- Location: LCCOMB_X2_Y28_N4
\b2v_inst2|c[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|c[2]~1_combout\ = (!\b2v_inst|control~q\ & (\Input[1]~input_o\ $ (\b2v_inst12|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input[1]~input_o\,
	datac => \b2v_inst12|q\(2),
	datad => \b2v_inst|control~q\,
	combout => \b2v_inst2|c[2]~1_combout\);

-- Location: LCCOMB_X4_Y28_N10
\b2v_inst10|o[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|o[1]~3_combout\ = (\b2v_inst2|c[3]~2_combout\ & (\b2v_inst2|c[2]~1_combout\ $ (!\b2v_inst2|c\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|c[3]~2_combout\,
	datac => \b2v_inst2|c[2]~1_combout\,
	datad => \b2v_inst2|c\(1),
	combout => \b2v_inst10|o[1]~3_combout\);

-- Location: LCCOMB_X4_Y28_N20
\b2v_inst10|o[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|o[1]~2_combout\ = \b2v_inst12|q\(0) $ (\Input[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst12|q\(0),
	datad => \Input[3]~input_o\,
	combout => \b2v_inst10|o[1]~2_combout\);

-- Location: LCCOMB_X4_Y28_N4
\b2v_inst10|o[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|o[1]~4_combout\ = (\b2v_inst2|c[3]~2_combout\ & ((\b2v_inst2|c[0]~0_combout\ & (\b2v_inst2|c[2]~1_combout\)) # (!\b2v_inst2|c[0]~0_combout\ & ((\b2v_inst2|c\(1)))))) # (!\b2v_inst2|c[3]~2_combout\ & ((\b2v_inst2|c\(1) & 
-- ((\b2v_inst2|c[0]~0_combout\))) # (!\b2v_inst2|c\(1) & (\b2v_inst2|c[2]~1_combout\ & !\b2v_inst2|c[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|c[3]~2_combout\,
	datab => \b2v_inst2|c[2]~1_combout\,
	datac => \b2v_inst2|c\(1),
	datad => \b2v_inst2|c[0]~0_combout\,
	combout => \b2v_inst10|o[1]~4_combout\);

-- Location: LCCOMB_X4_Y28_N18
\b2v_inst10|o[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|o[1]~5_combout\ = (\b2v_inst10|o[1]~3_combout\ & ((\b2v_inst10|o[1]~4_combout\ & ((!\b2v_inst8|Equal0~0_combout\))) # (!\b2v_inst10|o[1]~4_combout\ & (!\b2v_inst10|o[1]~2_combout\)))) # (!\b2v_inst10|o[1]~3_combout\ & 
-- (((!\b2v_inst10|o[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|o[1]~3_combout\,
	datab => \b2v_inst10|o[1]~2_combout\,
	datac => \b2v_inst10|o[1]~4_combout\,
	datad => \b2v_inst8|Equal0~0_combout\,
	combout => \b2v_inst10|o[1]~5_combout\);

-- Location: LCCOMB_X4_Y28_N22
\b2v_inst10|o[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|o\(1) = (!\b2v_inst8|Equal0~4_combout\ & ((GLOBAL(\b2v_inst7|o[3]~16clkctrl_outclk\) & ((\b2v_inst10|o[1]~5_combout\))) # (!GLOBAL(\b2v_inst7|o[3]~16clkctrl_outclk\) & (\b2v_inst10|o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|o\(1),
	datab => \b2v_inst8|Equal0~4_combout\,
	datac => \b2v_inst10|o[1]~5_combout\,
	datad => \b2v_inst7|o[3]~16clkctrl_outclk\,
	combout => \b2v_inst10|o\(1));

-- Location: FF_X4_Y28_N13
\b2v_inst13|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \b2v_inst10|o\(1),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|q\(3));

-- Location: LCCOMB_X1_Y28_N14
\b2v_inst8|o[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|o[3]~2_combout\ = (\b2v_inst8|Equal0~3_combout\) # ((\b2v_inst8|Equal0~1_combout\) # (\b2v_inst8|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|Equal0~3_combout\,
	datac => \b2v_inst8|Equal0~1_combout\,
	datad => \b2v_inst8|Equal0~2_combout\,
	combout => \b2v_inst8|o[3]~2_combout\);

-- Location: LCCOMB_X1_Y28_N4
\b2v_inst8|o[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|o[3]~3_combout\ = (!\b2v_inst8|o[3]~2_combout\ & ((\b2v_inst2|c[3]~2_combout\) # (!\b2v_inst2|c[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|o[3]~2_combout\,
	datac => \b2v_inst2|c[0]~0_combout\,
	datad => \b2v_inst2|c[3]~2_combout\,
	combout => \b2v_inst8|o[3]~3_combout\);

-- Location: LCCOMB_X1_Y28_N24
\b2v_inst8|o[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|o\(3) = (!\b2v_inst8|Equal0~4_combout\ & ((GLOBAL(\b2v_inst7|o[3]~16clkctrl_outclk\) & (\b2v_inst8|o[3]~3_combout\)) # (!GLOBAL(\b2v_inst7|o[3]~16clkctrl_outclk\) & ((\b2v_inst8|o\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|o[3]~3_combout\,
	datab => \b2v_inst8|Equal0~4_combout\,
	datac => \b2v_inst7|o[3]~16clkctrl_outclk\,
	datad => \b2v_inst8|o\(3),
	combout => \b2v_inst8|o\(3));

-- Location: LCCOMB_X1_Y28_N20
\b2v_inst3|c[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst3|c\(3) = \b2v_inst13|q\(3) $ (\b2v_inst8|o\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst13|q\(3),
	datad => \b2v_inst8|o\(3),
	combout => \b2v_inst3|c\(3));

-- Location: FF_X1_Y28_N21
\b2v_inst14|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst3|c\(3),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst14|q\(3));

-- Location: LCCOMB_X3_Y28_N4
\b2v_inst10|o[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|o[3]~12_combout\ = (\Input[1]~input_o\ & ((\b2v_inst12|q\(3) $ (\Input[0]~input_o\)) # (!\b2v_inst12|q\(2)))) # (!\Input[1]~input_o\ & ((\b2v_inst12|q\(2)) # (\b2v_inst12|q\(3) $ (\Input[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input[1]~input_o\,
	datab => \b2v_inst12|q\(3),
	datac => \Input[0]~input_o\,
	datad => \b2v_inst12|q\(2),
	combout => \b2v_inst10|o[3]~12_combout\);

-- Location: LCCOMB_X4_Y28_N0
\b2v_inst10|o[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|o[3]~13_combout\ = (\b2v_inst10|o[3]~11_combout\ & (\b2v_inst8|Equal0~6_combout\)) # (!\b2v_inst10|o[3]~11_combout\ & (((!\b2v_inst|control~q\ & \b2v_inst10|o[3]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|o[3]~11_combout\,
	datab => \b2v_inst8|Equal0~6_combout\,
	datac => \b2v_inst|control~q\,
	datad => \b2v_inst10|o[3]~12_combout\,
	combout => \b2v_inst10|o[3]~13_combout\);

-- Location: LCCOMB_X4_Y28_N16
\b2v_inst10|o[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|o\(3) = (!\b2v_inst8|Equal0~4_combout\ & ((GLOBAL(\b2v_inst7|o[3]~16clkctrl_outclk\) & ((\b2v_inst10|o[3]~13_combout\))) # (!GLOBAL(\b2v_inst7|o[3]~16clkctrl_outclk\) & (\b2v_inst10|o\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst10|o\(3),
	datab => \b2v_inst8|Equal0~4_combout\,
	datac => \b2v_inst10|o[3]~13_combout\,
	datad => \b2v_inst7|o[3]~16clkctrl_outclk\,
	combout => \b2v_inst10|o\(3));

-- Location: LCCOMB_X4_Y28_N8
\b2v_inst4|c[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|c\(3) = \b2v_inst14|q\(3) $ (\b2v_inst10|o\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst14|q\(3),
	datad => \b2v_inst10|o\(3),
	combout => \b2v_inst4|c\(3));

-- Location: FF_X4_Y28_N9
\b2v_inst15|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst4|c\(3),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst15|q\(3));

-- Location: LCCOMB_X2_Y28_N22
\b2v_inst7|o[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|o[3]~24_combout\ = (\b2v_inst2|c[0]~0_combout\ & ((\b2v_inst2|c[3]~2_combout\ & (!\b2v_inst2|c\(1) & !\b2v_inst2|c[2]~1_combout\)) # (!\b2v_inst2|c[3]~2_combout\ & (\b2v_inst2|c\(1) & \b2v_inst2|c[2]~1_combout\)))) # 
-- (!\b2v_inst2|c[0]~0_combout\ & ((\b2v_inst2|c\(1) $ (\b2v_inst2|c[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|c[3]~2_combout\,
	datab => \b2v_inst2|c[0]~0_combout\,
	datac => \b2v_inst2|c\(1),
	datad => \b2v_inst2|c[2]~1_combout\,
	combout => \b2v_inst7|o[3]~24_combout\);

-- Location: LCCOMB_X2_Y28_N2
\b2v_inst7|o[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|o[3]~25_combout\ = (\b2v_inst7|o[3]~24_combout\) # ((\b2v_inst7|o[3]~17_combout\ & ((!\b2v_inst8|Equal0~0_combout\) # (!\b2v_inst2|c[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|c[2]~1_combout\,
	datab => \b2v_inst7|o[3]~17_combout\,
	datac => \b2v_inst7|o[3]~24_combout\,
	datad => \b2v_inst8|Equal0~0_combout\,
	combout => \b2v_inst7|o[3]~25_combout\);

-- Location: LCCOMB_X2_Y28_N18
\b2v_inst7|o[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|o\(3) = (!\b2v_inst8|Equal0~4_combout\ & ((GLOBAL(\b2v_inst7|o[3]~16clkctrl_outclk\) & ((\b2v_inst7|o[3]~25_combout\))) # (!GLOBAL(\b2v_inst7|o[3]~16clkctrl_outclk\) & (\b2v_inst7|o\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|Equal0~4_combout\,
	datab => \b2v_inst7|o\(3),
	datac => \b2v_inst7|o[3]~25_combout\,
	datad => \b2v_inst7|o[3]~16clkctrl_outclk\,
	combout => \b2v_inst7|o\(3));

-- Location: LCCOMB_X2_Y28_N20
\b2v_inst5|c[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|c\(3) = \b2v_inst15|q\(3) $ (\b2v_inst7|o\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst15|q\(3),
	datad => \b2v_inst7|o\(3),
	combout => \b2v_inst5|c\(3));

-- Location: FF_X2_Y28_N21
\b2v_inst12|q[3]\ : dffeas
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
	q => \b2v_inst12|q\(3));

-- Location: LCCOMB_X2_Y28_N26
\b2v_inst2|c[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|c[3]~2_combout\ = (!\b2v_inst|control~q\ & (\Input[0]~input_o\ $ (\b2v_inst12|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input[0]~input_o\,
	datac => \b2v_inst|control~q\,
	datad => \b2v_inst12|q\(3),
	combout => \b2v_inst2|c[3]~2_combout\);

-- Location: LCCOMB_X2_Y28_N12
\b2v_inst8|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|Equal0~4_combout\ = (!\b2v_inst2|c[0]~0_combout\ & (!\b2v_inst2|c[3]~2_combout\ & (!\b2v_inst2|c\(1) & !\b2v_inst2|c[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|c[0]~0_combout\,
	datab => \b2v_inst2|c[3]~2_combout\,
	datac => \b2v_inst2|c\(1),
	datad => \b2v_inst2|c[2]~1_combout\,
	combout => \b2v_inst8|Equal0~4_combout\);

-- Location: LCCOMB_X1_Y29_N16
\b2v_inst7|o[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|o[0]~27_combout\ = \b2v_inst2|c[0]~0_combout\ $ (((!\b2v_inst|control~q\ & (\b2v_inst12|q\(3) $ (\Input[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|q\(3),
	datab => \Input[0]~input_o\,
	datac => \b2v_inst|control~q\,
	datad => \b2v_inst2|c[0]~0_combout\,
	combout => \b2v_inst7|o[0]~27_combout\);

-- Location: LCCOMB_X2_Y28_N24
\b2v_inst7|o[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|o[0]~8_combout\ = (\b2v_inst2|c\(1) & (\b2v_inst2|c[2]~1_combout\ & (\b2v_inst2|c[0]~0_combout\ & !\b2v_inst2|c[3]~2_combout\))) # (!\b2v_inst2|c\(1) & (!\b2v_inst2|c[2]~1_combout\ & (!\b2v_inst2|c[0]~0_combout\ & \b2v_inst2|c[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|c\(1),
	datab => \b2v_inst2|c[2]~1_combout\,
	datac => \b2v_inst2|c[0]~0_combout\,
	datad => \b2v_inst2|c[3]~2_combout\,
	combout => \b2v_inst7|o[0]~8_combout\);

-- Location: LCCOMB_X2_Y28_N10
\b2v_inst7|o[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|o[0]~26_combout\ = \b2v_inst2|c[2]~1_combout\ $ (((!\b2v_inst|control~q\ & (\b2v_inst12|q\(1) $ (\Input[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|q\(1),
	datab => \b2v_inst2|c[2]~1_combout\,
	datac => \Input[2]~input_o\,
	datad => \b2v_inst|control~q\,
	combout => \b2v_inst7|o[0]~26_combout\);

-- Location: LCCOMB_X2_Y29_N6
\b2v_inst7|o[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|o[0]~11_combout\ = (\b2v_inst7|o[0]~8_combout\) # ((\b2v_inst7|o[0]~10_combout\ & (\b2v_inst8|Equal0~0_combout\ & !\b2v_inst7|o[0]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|o[0]~8_combout\,
	datab => \b2v_inst7|o[0]~10_combout\,
	datac => \b2v_inst8|Equal0~0_combout\,
	datad => \b2v_inst7|o[0]~26_combout\,
	combout => \b2v_inst7|o[0]~11_combout\);

-- Location: LCCOMB_X2_Y29_N10
\b2v_inst7|o[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|o[0]~12_combout\ = (\b2v_inst10|o[3]~0_combout\ & (\b2v_inst2|c[0]~0_combout\ $ (\b2v_inst8|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|c[0]~0_combout\,
	datac => \b2v_inst10|o[3]~0_combout\,
	datad => \b2v_inst8|Equal0~0_combout\,
	combout => \b2v_inst7|o[0]~12_combout\);

-- Location: LCCOMB_X2_Y29_N12
\b2v_inst10|o[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|o[0]~1_combout\ = (\b2v_inst7|o[0]~11_combout\) # ((\b2v_inst7|o[0]~26_combout\ & (\b2v_inst7|o[0]~27_combout\)) # (!\b2v_inst7|o[0]~26_combout\ & ((\b2v_inst7|o[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|o[0]~27_combout\,
	datab => \b2v_inst7|o[0]~11_combout\,
	datac => \b2v_inst7|o[0]~26_combout\,
	datad => \b2v_inst7|o[0]~12_combout\,
	combout => \b2v_inst10|o[0]~1_combout\);

-- Location: LCCOMB_X2_Y29_N22
\b2v_inst10|o[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|o\(0) = (!\b2v_inst8|Equal0~4_combout\ & ((GLOBAL(\b2v_inst7|o[3]~16clkctrl_outclk\) & (\b2v_inst10|o[0]~1_combout\)) # (!GLOBAL(\b2v_inst7|o[3]~16clkctrl_outclk\) & ((\b2v_inst10|o\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|Equal0~4_combout\,
	datab => \b2v_inst10|o[0]~1_combout\,
	datac => \b2v_inst10|o\(0),
	datad => \b2v_inst7|o[3]~16clkctrl_outclk\,
	combout => \b2v_inst10|o\(0));

-- Location: FF_X3_Y28_N1
\b2v_inst13|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst10|o\(2),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst13|q\(0));

-- Location: LCCOMB_X3_Y28_N16
\b2v_inst3|c[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst3|c\(0) = \b2v_inst13|q\(0) $ (\b2v_inst7|o\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst13|q\(0),
	datad => \b2v_inst7|o\(1),
	combout => \b2v_inst3|c\(0));

-- Location: FF_X3_Y28_N17
\b2v_inst14|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst3|c\(0),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst14|q\(0));

-- Location: LCCOMB_X2_Y29_N4
\b2v_inst4|c[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|c\(0) = \b2v_inst10|o\(0) $ (\b2v_inst14|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst10|o\(0),
	datad => \b2v_inst14|q\(0),
	combout => \b2v_inst4|c\(0));

-- Location: FF_X2_Y29_N5
\b2v_inst15|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \b2v_inst4|c\(0),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst15|q\(0));

-- Location: LCCOMB_X2_Y29_N24
\b2v_inst7|o[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|o[0]~13_combout\ = (\b2v_inst7|o[0]~11_combout\) # ((\b2v_inst7|o[0]~26_combout\ & (!\b2v_inst7|o[0]~27_combout\)) # (!\b2v_inst7|o[0]~26_combout\ & ((\b2v_inst7|o[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|o[0]~27_combout\,
	datab => \b2v_inst7|o[0]~11_combout\,
	datac => \b2v_inst7|o[0]~26_combout\,
	datad => \b2v_inst7|o[0]~12_combout\,
	combout => \b2v_inst7|o[0]~13_combout\);

-- Location: LCCOMB_X2_Y29_N20
\b2v_inst7|o[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|o\(0) = (!\b2v_inst8|Equal0~4_combout\ & ((GLOBAL(\b2v_inst7|o[3]~16clkctrl_outclk\) & ((\b2v_inst7|o[0]~13_combout\))) # (!GLOBAL(\b2v_inst7|o[3]~16clkctrl_outclk\) & (\b2v_inst7|o\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|Equal0~4_combout\,
	datab => \b2v_inst7|o\(0),
	datac => \b2v_inst7|o[0]~13_combout\,
	datad => \b2v_inst7|o[3]~16clkctrl_outclk\,
	combout => \b2v_inst7|o\(0));

-- Location: LCCOMB_X2_Y29_N18
\b2v_inst5|c[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|c\(0) = \b2v_inst15|q\(0) $ (\b2v_inst7|o\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst15|q\(0),
	datad => \b2v_inst7|o\(0),
	combout => \b2v_inst5|c\(0));

-- Location: FF_X2_Y29_N19
\b2v_inst12|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \b2v_inst5|c\(0),
	clrn => \ALT_INV_Clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|q\(0));

-- Location: LCCOMB_X1_Y30_N16
\b2v_inst20|O[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst20|O[0]~0_combout\ = (\b2v_inst|control~q\ & ((\b2v_inst12|q\(0)))) # (!\b2v_inst|control~q\ & (\Input[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input[3]~input_o\,
	datac => \b2v_inst|control~q\,
	datad => \b2v_inst12|q\(0),
	combout => \b2v_inst20|O[0]~0_combout\);

-- Location: LCCOMB_X4_Y28_N12
\b2v_inst20|O[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst20|O[1]~1_combout\ = (\b2v_inst|control~q\ & (\b2v_inst12|q\(1))) # (!\b2v_inst|control~q\ & ((\Input[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|control~q\,
	datab => \b2v_inst12|q\(1),
	datad => \Input[2]~input_o\,
	combout => \b2v_inst20|O[1]~1_combout\);

-- Location: LCCOMB_X1_Y28_N16
\b2v_inst20|O[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst20|O[2]~2_combout\ = (\b2v_inst|control~q\ & ((\b2v_inst12|q\(2)))) # (!\b2v_inst|control~q\ & (\Input[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input[1]~input_o\,
	datab => \b2v_inst|control~q\,
	datac => \b2v_inst12|q\(2),
	combout => \b2v_inst20|O[2]~2_combout\);

-- Location: LCCOMB_X1_Y30_N14
\b2v_inst20|O[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst20|O[3]~3_combout\ = (\b2v_inst|control~q\ & ((\b2v_inst12|q\(3)))) # (!\b2v_inst|control~q\ & (\Input[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input[0]~input_o\,
	datac => \b2v_inst|control~q\,
	datad => \b2v_inst12|q\(3),
	combout => \b2v_inst20|O[3]~3_combout\);

ww_count(0) <= \count[0]~output_o\;

ww_count(1) <= \count[1]~output_o\;

ww_count(2) <= \count[2]~output_o\;

ww_count(3) <= \count[3]~output_o\;

ww_Output(3) <= \Output[3]~output_o\;

ww_Output(2) <= \Output[2]~output_o\;

ww_Output(1) <= \Output[1]~output_o\;

ww_Output(0) <= \Output[0]~output_o\;
END structure;


