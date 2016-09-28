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
-- Generated on "09/28/2016 01:18:30"
                                                            
-- Vhdl Test Bench template for design  :  Chien
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Chien_vhd_tst IS
END Chien_vhd_tst;
ARCHITECTURE Chien_arch OF Chien_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clear : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL inicia : STD_LOGIC;
SIGNAL Lamb0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Lamb1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Lamb2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Lamb3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Omega0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Omega1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Omega2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Omega3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Load : STD_LOGIC;
SIGNAL muxSel : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL ResultLocation : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ResultLocationOdd : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ResultValue : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT Chien
	PORT (
	Clear : IN STD_LOGIC;
	clock : IN STD_LOGIC;
	inicia : IN STD_LOGIC;
	Lamb0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Lamb1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Lamb2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Lamb3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Omega0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Omega1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Omega2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Omega3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Load : IN STD_LOGIC;
	muxSel : OUT STD_LOGIC;
	reset : IN STD_LOGIC;
	ResultLocation : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	ResultLocationOdd : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	ResultValue : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Chien
	PORT MAP (
-- list connections between master ports and signals
	Clear => Clear,
	clock => clock,
	inicia => inicia,
	Lamb0 => Lamb0,
	Lamb1 => Lamb1,
	Lamb2 => Lamb2,
	Lamb3 => Lamb3,
	Omega0 => Omega0,
	Omega1 => Omega1,
	Omega2 => Omega2,
	Omega3 => Omega3,
	Load => Load,
	muxSel => muxSel,
	reset => reset,
	ResultLocation => ResultLocation,
	ResultLocationOdd => ResultLocationOdd,
	ResultValue => ResultValue
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
			
		Clear <= '1';
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
		Load <= '0';
		
		wait for 200 ns;
		Clear <= '0';
		reset <= '0';
		inicia <= '1';
		
		wait for 200 ns;
		inicia <= '0';
		Load <= '1';
			
WAIT;                                                        
END PROCESS always;                                           
END Chien_arch;
