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
SIGNAL Control : STD_LOGIC;
SIGNAL Clock : STD_LOGIC;
SIGNAL Clear : STD_LOGIC;
SIGNAL Input : STD_LOGIC_VECTOR(0 TO 3);
SIGNAL Output : STD_LOGIC_VECTOR(0 TO 3);
COMPONENT LiCy
	PORT (
		Control :  IN  STD_LOGIC;
		Clock :  IN  STD_LOGIC;
		Clear :  IN  STD_LOGIC;
		Input :  IN  STD_LOGIC_VECTOR(0 TO 3);
		Output :  OUT  STD_LOGIC_VECTOR(0 TO 3)
	);
END COMPONENT;
BEGIN
	i1 : LiCy
	PORT MAP (
-- list connections between master ports and signals
	Clock => Clock,
	Control => Control,
	Clear => Clear,
	Input => Input,
	Output => Output
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
       Clock <= NOT Clock after 2500 ns;
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
