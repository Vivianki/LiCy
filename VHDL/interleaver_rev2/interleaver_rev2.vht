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
-- Generated on "09/28/2016 02:36:57"
                                                            
-- Vhdl Test Bench template for design  :  interleaver_rev2
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY interleaver_rev2_vhd_tst IS
END interleaver_rev2_vhd_tst;
ARCHITECTURE interleaver_rev2_arch OF interleaver_rev2_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Addb : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL Clock : STD_LOGIC;
SIGNAL Db : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Depth : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Flag : STD_LOGIC;
SIGNAL Input : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Len : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL Output : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL wren_b : STD_LOGIC;
COMPONENT interleaver_rev2
	PORT (
	Addb : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
	Clock : IN STD_LOGIC;
	Db : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Depth : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
	Flag : IN STD_LOGIC;
	Input : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Len : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
	Output : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	wren_b : IN STD_LOGIC
	);
END COMPONENT;

constant clk_period : time := 100 ns;

BEGIN
	i1 : interleaver_rev2
	PORT MAP (
-- list connections between master ports and signals
	Addb => Addb,
	Clock => Clock,
	Db => Db,
	Depth => Depth,
	Flag => Flag,
	Input => Input,
	Len => Len,
	Output => Output,
	wren_b => wren_b
	);

init : PROCESS
BEGIN                                                        
	Clock <= '0';
	wait for clk_period/2;  --for 0.5 ns signal is '0'.
	Clock <= '1';
	wait for clk_period/2;  --for 0.5 ns signal is '0'.
END PROCESS init;
	
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN            
	wren_b <= '0';
	Db <= "0000";
	Addb <= "000000000000";
	
	Flag <= '0';
	Input <= "0000";
	Len <= "000000001111";
	Depth <= "0000010";
	wait for 200 ns;
	Flag <= '1';
	Input <= "1010";
	wait for 100 ns;
	Input <= "1011";
	wait for 100 ns;
	Input <= "1100";
	wait for 100 ns;
	Input <= "1101";
	wait for 100 ns;
	Input <= "1110";
	wait for 100 ns;
	Input <= "1111";
	wait for 100 ns;
	Input <= "0001";
	wait for 100 ns;
	Input <= "0010";
	wait for 100 ns;
	Input <= "0011";
	wait for 100 ns;
	Input <= "0100";
	wait for 100 ns;
	Input <= "0101";
	wait for 100 ns;
	Input <= "0110";
	wait for 100 ns;
	Input <= "0111";
	wait for 100 ns;
	Input <= "1000";
	wait for 100 ns;
	Input <= "1001";
	wait for 100 ns;
	Input <= "0000";
	wait for 1500 ns;
	Flag <= '1';
WAIT;                                                        
END PROCESS always;                                          
END interleaver_rev2_arch;
