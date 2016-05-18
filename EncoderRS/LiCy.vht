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
-- Generated on "05/06/2016 11:29:18"
                                                            
-- Vhdl Test Bench template for design  :  LiCy
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY LiCy_vhd_tst IS
END LiCy_vhd_tst;
ARCHITECTURE LiCy_arch OF LiCy_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL areset : STD_LOGIC;
SIGNAL c0 : STD_LOGIC;
SIGNAL inclk0 : STD_LOGIC;
SIGNAL locked : STD_LOGIC;
COMPONENT LiCy
	PORT (
	areset : IN STD_LOGIC;
	c0 : OUT STD_LOGIC;
	inclk0 : IN STD_LOGIC;
	locked : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : LiCy
	PORT MAP (
-- list connections between master ports and signals
	areset => areset,
	c0 => c0,
	inclk0 => inclk0,
	locked => locked
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
       inclk0 <= NOT inclk0 after 2500 ns;
		 areset <= '0';
		
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
		  areset <= '1' after 1000 ns;
WAIT;                                                        
END PROCESS always;                                          
END LiCy_arch;
