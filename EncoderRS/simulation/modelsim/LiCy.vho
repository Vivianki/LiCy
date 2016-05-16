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

-- DATE "05/06/2016 15:37:50"

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

ENTITY 	LiCy IS
    PORT (
	areset : IN std_logic;
	inclk0 : IN std_logic;
	c0 : BUFFER std_logic;
	locked : BUFFER std_logic
	);
END LiCy;

-- Design Ports Information
-- c0	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- locked	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- areset	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inclk0	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LiCy IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_areset : std_logic;
SIGNAL ww_inclk0 : std_logic;
SIGNAL ww_c0 : std_logic;
SIGNAL ww_locked : std_logic;
SIGNAL \b2v_inst1|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst1|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \b2v_inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_c0_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \areset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \areset~input_o\ : std_logic;
SIGNAL \areset~inputclkctrl_outclk\ : std_logic;
SIGNAL \inclk0~input_o\ : std_logic;
SIGNAL \b2v_inst1|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \b2v_inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_c0_outclk\ : std_logic;
SIGNAL \b2v_inst1|altpll_component|auto_generated|wire_pll1_locked\ : std_logic;
SIGNAL \b2v_inst1|altpll_component|auto_generated|pll_lock_sync~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|altpll_component|auto_generated|pll_lock_sync~q\ : std_logic;
SIGNAL \b2v_inst1|altpll_component|auto_generated|locked~combout\ : std_logic;
SIGNAL \b2v_inst1|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_areset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_areset <= areset;
ww_inclk0 <= inclk0;
c0 <= ww_c0;
locked <= ww_locked;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\b2v_inst1|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \inclk0~input_o\);

\b2v_inst1|altpll_component|auto_generated|wire_pll1_clk\(0) <= \b2v_inst1|altpll_component|auto_generated|pll1_CLK_bus\(0);
\b2v_inst1|altpll_component|auto_generated|wire_pll1_clk\(1) <= \b2v_inst1|altpll_component|auto_generated|pll1_CLK_bus\(1);
\b2v_inst1|altpll_component|auto_generated|wire_pll1_clk\(2) <= \b2v_inst1|altpll_component|auto_generated|pll1_CLK_bus\(2);
\b2v_inst1|altpll_component|auto_generated|wire_pll1_clk\(3) <= \b2v_inst1|altpll_component|auto_generated|pll1_CLK_bus\(3);
\b2v_inst1|altpll_component|auto_generated|wire_pll1_clk\(4) <= \b2v_inst1|altpll_component|auto_generated|pll1_CLK_bus\(4);

\b2v_inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_c0_INCLK_bus\ <= (vcc & vcc & vcc & \b2v_inst1|altpll_component|auto_generated|wire_pll1_clk\(0));

\areset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \areset~input_o\);
\ALT_INV_areset~inputclkctrl_outclk\ <= NOT \areset~inputclkctrl_outclk\;

-- Location: IOOBUF_X7_Y0_N30
\c0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_c0_outclk\,
	devoe => ww_devoe,
	o => ww_c0);

-- Location: IOOBUF_X0_Y2_N2
\locked~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst1|altpll_component|auto_generated|locked~combout\,
	devoe => ww_devoe,
	o => ww_locked);

-- Location: IOIBUF_X36_Y0_N15
\areset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_areset,
	o => \areset~input_o\);

-- Location: CLKCTRL_G19
\areset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \areset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \areset~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y21_N8
\inclk0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inclk0,
	o => \inclk0~input_o\);

-- Location: PLL_1
\b2v_inst1|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 16,
	c0_initial => 1,
	c0_low => 16,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 1,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 50000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 24,
	m => 32,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "on",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 195,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => \areset~inputclkctrl_outclk\,
	fbin => \b2v_inst1|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \b2v_inst1|altpll_component|auto_generated|pll1_INCLK_bus\,
	locked => \b2v_inst1|altpll_component|auto_generated|wire_pll1_locked\,
	fbout => \b2v_inst1|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \b2v_inst1|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_PLL1E0
\b2v_inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_c0\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "external clock output",
	ena_register_mode => "double register")
-- pragma translate_on
PORT MAP (
	inclk => \b2v_inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_c0_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \b2v_inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_c0_outclk\);

-- Location: LCCOMB_X1_Y2_N24
\b2v_inst1|altpll_component|auto_generated|pll_lock_sync~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|altpll_component|auto_generated|pll_lock_sync~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \b2v_inst1|altpll_component|auto_generated|pll_lock_sync~feeder_combout\);

-- Location: FF_X1_Y2_N25
\b2v_inst1|altpll_component|auto_generated|pll_lock_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst1|altpll_component|auto_generated|wire_pll1_locked\,
	d => \b2v_inst1|altpll_component|auto_generated|pll_lock_sync~feeder_combout\,
	clrn => \ALT_INV_areset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|altpll_component|auto_generated|pll_lock_sync~q\);

-- Location: LCCOMB_X1_Y2_N10
\b2v_inst1|altpll_component|auto_generated|locked\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|altpll_component|auto_generated|locked~combout\ = (\b2v_inst1|altpll_component|auto_generated|wire_pll1_locked\ & \b2v_inst1|altpll_component|auto_generated|pll_lock_sync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|altpll_component|auto_generated|wire_pll1_locked\,
	datad => \b2v_inst1|altpll_component|auto_generated|pll_lock_sync~q\,
	combout => \b2v_inst1|altpll_component|auto_generated|locked~combout\);
END structure;


