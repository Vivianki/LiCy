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
-- Generated on "09/24/2016 18:36:51"
                                                            
-- Vhdl Test Bench template for design  :  Berlekamp_Massey
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Berlekamp_Massey_vhd_tst IS
END Berlekamp_Massey_vhd_tst;
ARCHITECTURE Berlekamp_Massey_arch OF Berlekamp_Massey_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ClearB : STD_LOGIC;
SIGNAL ClearC : STD_LOGIC;
SIGNAL ClearS : STD_LOGIC;
SIGNAL Clock : STD_LOGIC;
SIGNAL ds : STD_LOGIC;
SIGNAL DsIn : STD_LOGIC;
SIGNAL Lamb1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Lamb2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Lamb3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Lamb4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LoadB : STD_LOGIC;
SIGNAL LoadC : STD_LOGIC;
SIGNAL LoadS : STD_LOGIC;
SIGNAL MuxSel : STD_LOGIC;
SIGNAL OmegaOut : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL SIn : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT Berlekamp_Massey
	PORT (
	ClearB : IN STD_LOGIC;
	ClearC : IN STD_LOGIC;
	ClearS : IN STD_LOGIC;
	Clock : IN STD_LOGIC;
	ds : OUT STD_LOGIC;
	DsIn : IN STD_LOGIC;
	Lamb1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Lamb2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Lamb3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Lamb4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	LoadB : IN STD_LOGIC;
	LoadC : IN STD_LOGIC;
	LoadS : IN STD_LOGIC;
	MuxSel : IN STD_LOGIC;
	OmegaOut : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIn : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Berlekamp_Massey
	PORT MAP (
-- list connections between master ports and signals
	ClearB => ClearB,
	ClearC => ClearC,
	ClearS => ClearS,
	Clock => Clock,
	ds => ds,
	DsIn => DsIn,
	Lamb1 => Lamb1,
	Lamb2 => Lamb2,
	Lamb3 => Lamb3,
	Lamb4 => Lamb4,
	LoadB => LoadB,
	LoadC => LoadC,
	LoadS => LoadS,
	MuxSel => MuxSel,
	OmegaOut => OmegaOut,
	SIn => SIn
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
END Berlekamp_Massey_arch;
