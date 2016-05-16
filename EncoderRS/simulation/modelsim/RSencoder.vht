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
-- Generated on "05/15/2016 16:02:07"
                                                            
-- Vhdl Test Bench template for design  :  RSencoder
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY RSencoder_vhd_tst IS
END RSencoder_vhd_tst;
ARCHITECTURE RSencoder_arch OF RSencoder_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clear : STD_LOGIC;
SIGNAL Clock : STD_LOGIC;
SIGNAL count : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Input : STD_LOGIC_VECTOR(0 TO 3);
SIGNAL Output : STD_LOGIC_VECTOR(0 TO 3);
SIGNAL reg1 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL reg2 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL reg3 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL reg4 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL saida_AND : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL saidaMul : STD_LOGIC_VECTOR(3 DOWNTO 0);

COMPONENT RSencoder
	PORT (
	Clear : IN STD_LOGIC;
	Clock : IN STD_LOGIC;
	count : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	Input : IN STD_LOGIC_VECTOR(0 TO 3);
	Output : BUFFER STD_LOGIC_VECTOR(0 TO 3);
	reg1 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
	reg2 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
	reg3 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
	reg4 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
	saida_AND :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
	saidaMul :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
	constant clock_period : time := 50 us;
BEGIN
	i1 : RSencoder
	PORT MAP (
-- list connections between master ports and signals
	Clear => Clear,
	Clock => Clock,
	count => count,
	Input => Input,
	Output => Output,
	reg1 => reg1,
	reg2 => reg2,
	reg3 => reg3,
	reg4 => reg4,
	saida_AND => saida_AND,
	saidaMul => saidaMul
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
	  -- code that executes only once 
		Clear <= '1';  
		wait for clock_period;
		Clear <= '0';
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN   
		loop															
	  Clock <= '0';
	  wait for clock_period/2;  
	  Clock <= '1';
	  wait for clock_period/2; 
	  end loop;
		  
WAIT;                                                        
END PROCESS always;    

enviar_dados : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN 
		input <= "0000";  
		wait for clock_period * 16; 
		input <= "1111"; 
		wait for clock_period * 15; 
		input <= "0101";
		
		  
WAIT;                                                        
END PROCESS enviar_dados;                                        
END RSencoder_arch;
