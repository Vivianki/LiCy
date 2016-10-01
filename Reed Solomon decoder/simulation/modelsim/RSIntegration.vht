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
-- Generated on "10/01/2016 01:55:32"
                                                            
-- Vhdl Test Bench template for design  :  RSIntegration
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY intgr_t IS
END intgr_t;
ARCHITECTURE RSIntegration_arch OF intgr_t IS
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
SIGNAL di : STD_LOGIC;
SIGNAL DS_reg : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Inicia : STD_LOGIC;
SIGNAL Input : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Lambda1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Lambda2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Lambda3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Lambda4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL loadB : STD_LOGIC;
SIGNAL loadC : STD_LOGIC;
SIGNAL loadS : STD_LOGIC;
SIGNAL MuxSel : STD_LOGIC;
SIGNAL Nerror : STD_LOGIC;
SIGNAL Omega0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Omega1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Omega2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Omega3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Omega4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Registra : STD_LOGIC;
SIGNAL Reset : STD_LOGIC;
SIGNAL S0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL S1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL S2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL S3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL S4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Test_state : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL Mensagem : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL pin_name1 : STD_LOGIC;
SIGNAL Decod : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Impar : STD_LOGIC;
SIGNAL Count_4 : STD_LOGIC;
SIGNAL Count_8 : STD_LOGIC;
COMPONENT RSIntegration
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
	di : OUT STD_LOGIC;
	DS_reg : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Inicia : IN STD_LOGIC;
	Input : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Lambda1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Lambda2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Lambda3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Lambda4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	loadB : OUT STD_LOGIC;
	loadC : OUT STD_LOGIC;
	loadS : OUT STD_LOGIC;
	MuxSel : OUT STD_LOGIC;
	Nerror : OUT STD_LOGIC;
	Omega0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Omega1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Omega2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Omega3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Omega4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Registra : OUT STD_LOGIC;
	Reset : IN STD_LOGIC;
	S0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	S1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	S2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	S3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	S4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Test_state : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	Mensagem : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	pin_name1 : OUT STD_LOGIC;
	Decod : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Impar : OUT STD_LOGIC;
	Count_4 : OUT STD_LOGIC;
	Count_8 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : RSIntegration
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
	di => di,
	DS_reg => DS_reg,
	Inicia => Inicia,
	Input => Input,
	Lambda1 => Lambda1,
	Lambda2 => Lambda2,
	Lambda3 => Lambda3,
	Lambda4 => Lambda4,
	loadB => loadB,
	loadC => loadC,
	loadS => loadS,
	MuxSel => MuxSel,
	Nerror => Nerror,
	Omega0 => Omega0,
	Omega1 => Omega1,
	Omega2 => Omega2,
	Omega3 => Omega3,
	Omega4 => Omega4,
	Registra => Registra,
	Reset => Reset,
	S0 => S0,
	S1 => S1,
	S2 => S2,
	S3 => S3,
	S4 => S4,
	Test_state => Test_state,
	Mensagem => Mensagem,
	pin_name1 => pin_name1,
	Decod => Decod,
	Impar => Impar,
	Count_4 => Count_4,
	Count_8 => Count_8
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
                                          
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN
		Mensagem <= "0000";
		Reset <= '1';
		Inicia <= '0';
		Input <= "0000";
		wait for 100 ns;
		
		Reset <= '1';
		wait for 200 ns;
		
		Inicia <= '1';
		Reset <= '0';
		wait for 200 ns;
		
		-- comp L:
		
		Inicia <= '0';
		Input <= "0000";
		wait for 200 ns;
		
		Input <= "1000";
		wait for 200 ns;
		
		Input <= "1100";
		wait for 200 ns;
		
		Input <= "1110";
		wait for 200 ns;
		
		Input <= "0011";
		wait for 200 ns;
		
		Input <= "0101";
		wait for 200 ns;
		
		Input <= "0010";
		wait for 200 ns;
		
		Input <= "1001";
		wait for 200 ns;
		
		Input <= "0101";
		wait for 200 ns;
		
		-- clear syn:
		
		Input <= "0000";
		wait for 200 ns;
		
		-- comp V:
		
		Input <= "0000";
		wait for 200 ns;
		
		Input <= "1000";
		wait for 200 ns;
		
		Input <= "1100";
		wait for 200 ns;
		
		Input <= "1110";
		wait for 200 ns;
		
		Input <= "0011";
		wait for 200 ns;
		
		-- store:
		
		Input <= "0000";
		
		wait for 500 ns;
		Mensagem <= "1101";
			
		wait for 200 ns;
		Mensagem <= "0010";
		
		wait for 200 ns;
		Mensagem <= "0111";
		
		wait for 200 ns;
		Mensagem <= "0010";
		
		wait for 200 ns;
		Mensagem <= "0110";
		
		wait for 200 ns;
		Mensagem <= "0111";
		
		wait for 200 ns;
		Mensagem <= "1101";
		
WAIT;                                                        
END PROCESS always;                                          
END RSIntegration_arch;
