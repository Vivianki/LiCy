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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "09/03/2016 20:01:26"
                                                            
-- Vhdl Test Bench template for design  :  interleaver
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY interleaver_vhd_tst IS
END interleaver_vhd_tst;
ARCHITECTURE interleaver_arch OF interleaver_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL d : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL depth : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL enable : STD_LOGIC;
SIGNAL finished : STD_LOGIC;
SIGNAL flushing : STD_LOGIC;
SIGNAL q : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL state : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT interleaver
	PORT (
	clk : IN STD_LOGIC;
	d : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	depth : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
	enable : IN STD_LOGIC;
	finished : OUT STD_LOGIC;
	flushing : OUT STD_LOGIC;
	q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	state : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
constant clk_period : time := 100 ns;

BEGIN
	i1 : interleaver
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	d => d,
	depth => depth,
	enable => enable,
	finished => finished,
	flushing => flushing,
	q => q,
	state => state
	);
                                
init : PROCESS
BEGIN                                                        
	clk <= '0';
	wait for clk_period/2;  --for 0.5 ns signal is '0'.
	clk <= '1';
	wait for clk_period/2;  --for 0.5 ns signal is '0'.
END PROCESS init;        
-- Stimulus process
always : PROCESS                                                                               
BEGIN
	enable <= '0';
	depth <= "0000010";
	wait for 200 ns;
	enable <= '1';
	d <= "1111";
	wait for 1500 ns;
	d <= "0000";
	wait for 1500 ns;
WAIT;                                                        
END PROCESS always;
END interleaver_arch;
