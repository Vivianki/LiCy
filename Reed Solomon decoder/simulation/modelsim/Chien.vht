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
-- Generated on "09/30/2016 01:41:36"
                                                            
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
SIGNAL Load : STD_LOGIC;
SIGNAL muxSel : STD_LOGIC;
SIGNAL Omega0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Omega1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Omega2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Omega3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
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
	Load : IN STD_LOGIC;
	muxSel : BUFFER STD_LOGIC;
	Omega0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Omega1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Omega2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Omega3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	reset : IN STD_LOGIC;
	ResultLocation : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	ResultLocationOdd : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	ResultValue : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0)
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
	Load => Load,
	muxSel => muxSel,
	Omega0 => Omega0,
	Omega1 => Omega1,
	Omega2 => Omega2,
	Omega3 => Omega3,
	reset => reset,
	ResultLocation => ResultLocation,
	ResultLocationOdd => ResultLocationOdd,
	ResultValue => ResultValue
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END Chien_arch;
