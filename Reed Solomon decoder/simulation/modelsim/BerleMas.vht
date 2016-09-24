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
-- Generated on "09/24/2016 18:55:18"
                                                            
-- Vhdl Test Bench template for design  :  BerleMas
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY BerleMas_vhd_tst IS
END BerleMas_vhd_tst;
ARCHITECTURE BerleMas_arch OF BerleMas_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clock : STD_LOGIC;
SIGNAL Count4 : STD_LOGIC;
SIGNAL Count8 : STD_LOGIC;
SIGNAL Impar : STD_LOGIC;
SIGNAL Inicia : STD_LOGIC;
SIGNAL Input : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Lambda1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Lambda2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Lambda3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Lambda4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Omega : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Registra : STD_LOGIC;
SIGNAL Reset : STD_LOGIC;
COMPONENT BerleMas
	PORT (
	Clock : IN STD_LOGIC;
	Count4 : IN STD_LOGIC;
	Count8 : IN STD_LOGIC;
	Impar : IN STD_LOGIC;
	Inicia : IN STD_LOGIC;
	Input : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Lambda1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Lambda2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Lambda3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Lambda4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Omega : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Registra : OUT STD_LOGIC;
	Reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : BerleMas
	PORT MAP (
-- list connections between master ports and signals
	Clock => Clock,
	Count4 => Count4,
	Count8 => Count8,
	Impar => Impar,
	Inicia => Inicia,
	Input => Input,
	Lambda1 => Lambda1,
	Lambda2 => Lambda2,
	Lambda3 => Lambda3,
	Lambda4 => Lambda4,
	Omega => Omega,
	Registra => Registra,
	Reset => Reset
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once
			Clock <= '0';
			wait for 100 ns;
			Clock <= '1';
			wait for 100 ns;
			
END PROCESS init;
                                        
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN
		Reset <= '1';
		Input <= "0000";
		wait for 200 ns;
		Inicia <= '1';
		
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END BerleMas_arch;
