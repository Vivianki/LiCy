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
-- Generated on "09/28/2016 01:00:12"
                                                            
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
SIGNAL B_0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL B_1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL B_2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL B_3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL B_mux : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL clearB : STD_LOGIC;
SIGNAL clearC : STD_LOGIC;
SIGNAL clearS : STD_LOGIC;
SIGNAL Clock : STD_LOGIC;
SIGNAL Count4 : STD_LOGIC;
SIGNAL Count8 : STD_LOGIC;
SIGNAL di : STD_LOGIC;
SIGNAL DS_reg : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Impar : STD_LOGIC;
SIGNAL Inicia : STD_LOGIC;
SIGNAL Input : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Lamb1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Lambda2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Lambda3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Lambda4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL loadB : STD_LOGIC;
SIGNAL loadC : STD_LOGIC;
SIGNAL loadS : STD_LOGIC;
SIGNAL MuxSel : STD_LOGIC;
SIGNAL Nerror : STD_LOGIC;
SIGNAL Omega : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Registra : STD_LOGIC;
SIGNAL Reset : STD_LOGIC;
SIGNAL S0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL S1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL S2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL S3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL S4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Test_state : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT BerleMas
	PORT (
	B_0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	B_1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	B_2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	B_3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	B_mux : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	clearB : OUT STD_LOGIC;
	clearC : OUT STD_LOGIC;
	clearS : OUT STD_LOGIC;
	Clock : IN STD_LOGIC;
	Count4 : IN STD_LOGIC;
	Count8 : IN STD_LOGIC;
	di : OUT STD_LOGIC;
	DS_reg : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Impar : IN STD_LOGIC;
	Inicia : IN STD_LOGIC;
	Input : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Lamb1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Lambda2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Lambda3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Lambda4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	loadB : OUT STD_LOGIC;
	loadC : OUT STD_LOGIC;
	loadS : OUT STD_LOGIC;
	MuxSel : OUT STD_LOGIC;
	Nerror : OUT STD_LOGIC;
	Omega : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Registra : OUT STD_LOGIC;
	Reset : IN STD_LOGIC;
	S0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	S1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	S2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	S3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	S4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Test_state : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : BerleMas
	PORT MAP (
-- list connections between master ports and signals
	B_0 => B_0,
	B_1 => B_1,
	B_2 => B_2,
	B_3 => B_3,
	B_mux => B_mux,
	clearB => clearB,
	clearC => clearC,
	clearS => clearS,
	Clock => Clock,
	Count4 => Count4,
	Count8 => Count8,
	di => di,
	DS_reg => DS_reg,
	Impar => Impar,
	Inicia => Inicia,
	Input => Input,
	Lamb1 => Lamb1,
	Lambda2 => Lambda2,
	Lambda3 => Lambda3,
	Lambda4 => Lambda4,
	loadB => loadB,
	loadC => loadC,
	loadS => loadS,
	MuxSel => MuxSel,
	Nerror => Nerror,
	Omega => Omega,
	Registra => Registra,
	Reset => Reset,
	S0 => S0,
	S1 => S1,
	S2 => S2,
	S3 => S3,
	S4 => S4,
	Test_state => Test_state
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
END BerleMas_arch;
