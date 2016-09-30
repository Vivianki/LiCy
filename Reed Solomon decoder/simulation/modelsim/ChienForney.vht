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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "09/30/2016 01:43:32"
                                                            
-- Vhdl Test Bench template for design  :  ChienForney
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ChienForney_vhd_tst IS
END ChienForney_vhd_tst;
ARCHITECTURE ChienForney_arch OF ChienForney_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL Decod : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL inicia : STD_LOGIC;
SIGNAL Input : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Lamb0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Lamb1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Lamb2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Lamb3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Omega0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Omega1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Omega2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Omega3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL pin_name1 : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT ChienForney
	PORT (
	clock : IN STD_LOGIC;
	Decod : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	inicia : IN STD_LOGIC;
	Input : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Lamb0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Lamb1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Lamb2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Lamb3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Omega0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Omega1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Omega2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Omega3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	pin_name1 : OUT STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ChienForney
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	Decod => Decod,
	inicia => inicia,
	Input => Input,
	Lamb0 => Lamb0,
	Lamb1 => Lamb1,
	Lamb2 => Lamb2,
	Lamb3 => Lamb3,
	Omega0 => Omega0,
	Omega1 => Omega1,
	Omega2 => Omega2,
	Omega3 => Omega3,
	pin_name1 => pin_name1,
	reset => reset
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN
			Clock <= '0';
			wait for 100 ns;
			Clock <= '1';
			wait for 100 ns; 
			
END PROCESS init;
                                           
always : PROCESS                                                                                   
BEGIN                                                         
			
			reset <= '1'; 
			inicia <= '0';
			Lamb0 <= "1100";
			Lamb1 <= "0111";
			Lamb2 <= "0110";
			Lamb3 <= "0000";
			Omega0 <= "1000";
			Omega1 <= "0110";
			Omega2 <= "1100";
			Omega3 <= "0000";
			Input <= "0000";
			
			wait for 200 ns;
			reset <= '0';
			inicia <= '1';
			
			wait for 200 ns;
			inicia <= '0';
			
			wait for 300 ns;
			Input <= "1101";
			
			wait for 200 ns;
			Input <= "0010";
			
			wait for 200 ns;
			Input <= "0111";
			
			wait for 200 ns;
			Input <= "0010";
			
			wait for 200 ns;
			Input <= "0110";
			
			wait for 200 ns;
			Input <= "0111";
			
			wait for 200 ns;
			Input <= "1101";
		
		
WAIT;                                                        
END PROCESS always;                                          
END ChienForney_arch;
