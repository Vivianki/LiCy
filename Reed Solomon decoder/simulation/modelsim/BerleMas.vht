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
-- Generated on "09/25/2016 20:30:19"
                                                            
-- Vhdl Test Bench template for design  :  BerleMas
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY birl_tst IS
END birl_tst;
ARCHITECTURE BerleMas_arch OF birl_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clearB : STD_LOGIC;
SIGNAL clearC : STD_LOGIC;
SIGNAL clearS : STD_LOGIC;
SIGNAL Clock : STD_LOGIC;
SIGNAL Count4 : STD_LOGIC;
SIGNAL Count8 : STD_LOGIC;
SIGNAL di : STD_LOGIC;
SIGNAL Impar : STD_LOGIC;
SIGNAL Inicia : STD_LOGIC;
SIGNAL Input : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Lambda1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Lambda2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Lambda3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Lambda4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL loadB : STD_LOGIC;
SIGNAL loadC : STD_LOGIC;
SIGNAL loadS : STD_LOGIC;
SIGNAL Omega : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL MuxSel : STD_LOGIC;
SIGNAL Registra : STD_LOGIC;
SIGNAL Reset : STD_LOGIC;
SIGNAL test_state : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL B_0 :    STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL B_1 :    STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL B_2 :    STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL B_3 :    STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL B_mux :    STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL DS_reg :    STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Nerror :  STD_LOGIC;
SIGNAL S0 :    STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL S1 :    STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL S2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL S3 :    STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL S4 :    STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT BerleMas
	PORT (
	clearB : OUT STD_LOGIC;
	clearC : OUT STD_LOGIC;
	clearS : OUT STD_LOGIC;
	Clock : IN STD_LOGIC;
	Count4 : IN STD_LOGIC;
	Count8 : IN STD_LOGIC;
	di : OUT STD_LOGIC;
	Impar : IN STD_LOGIC;
	Inicia : IN STD_LOGIC;
	Input : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Lambda1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Lambda2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Lambda3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Lambda4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	loadB : OUT STD_LOGIC;
	loadC : OUT STD_LOGIC;
	loadS : OUT STD_LOGIC;
	Omega : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	MuxSel : OUT STD_LOGIC;
	Registra : OUT STD_LOGIC;
	Reset : IN STD_LOGIC;
	test_state : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	B_0 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
	B_1 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
	B_2 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
	B_3 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
	B_mux :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
	DS_reg :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
	Nerror : OUT STD_LOGIC;
	S0 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
	S1 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
	S2 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
	S3 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
	S4 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	
	);
END COMPONENT;
BEGIN
	i1 : BerleMas
	PORT MAP (
	B_0 => B_0,
	B_1 => B_1,
	B_2 => B_2,
	B_3 => B_3,
	B_mux => B_mux,
	S0 => S0,
	S1 => S1,
	S2 => S2,
	S3 => S3,
	S4 => S4,
	DS_reg => DS_reg,
-- list connections between master ports and signals
	clearB => clearB,
	clearC => clearC,
	clearS => clearS,
	Clock => Clock,
	Count4 => Count4,
	Count8 => Count8,
	di => di,
	Impar => Impar,
	Inicia => Inicia,
	Input => Input,
	Lambda1 => Lambda1,
	Lambda2 => Lambda2,
	Lambda3 => Lambda3,
	Lambda4 => Lambda4,
	loadB => loadB,
	loadC => loadC,
	loadS => loadS,
	Omega => Omega,
	MuxSel => MuxSel,
	Registra => Registra,
	Reset => Reset,
	test_state => test_state,
	Nerror => Nerror
	);
	
init : PROCESS                                               
-- variable declarations                                     
BEGIN  
		
		Clock <= '0';
		wait for 100 ns;
		Clock <= '1';
		wait for 100 ns;
		
END PROCESS init;

impar_generation : PROCESS                                               
-- variable declarations                                     
BEGIN  
		wait for 300 ns;
		Impar <= '1';
		wait for 200 ns;
		Impar <= '0';
		wait for 200 ns;
		Impar <= '1';
		wait for 200 ns;
		Impar <= '0';
		wait for 200 ns;
		Impar <= '1';
		wait for 200 ns;
		Impar <= '0';
		wait for 200 ns;
		Impar <= '1';
		wait for 200 ns;
		Impar <= '0';
		wait for 200 ns;
		Impar <= '1';
		wait for 200 ns;
		Impar <= '0';
		wait for 200 ns;
		Impar <= '1';
		wait for 200 ns;
		Impar <= '0';
		wait for 200 ns;
		Impar <= '1';
		wait for 200 ns;
		Impar <= '0';
		wait for 200 ns;
		Impar <= '1';
		wait for 200 ns;
		Impar <= '0';
		wait for 200 ns;
		Impar <= '1';
		wait for 200 ns;
		Impar <= '0';
		wait for 200 ns;
		Impar <= '1';
		wait for 200 ns;
		Impar <= '0';
		wait for 200 ns;
		Impar <= '1';
		wait for 200 ns;
		Impar <= '0';
		wait for 200 ns;
		Impar <= '1';
		wait for 200 ns;
		Impar <= '0';
		wait for 200 ns;
		Impar <= '1';
		wait for 200 ns;
		Impar <= '0';
		wait for 200 ns;
		Impar <= '1';
		wait for 200 ns;
		Impar <= '0';
		wait for 200 ns;
		Impar <= '1';
		wait for 200 ns;
		Impar <= '0';
		wait for 200 ns;
		Impar <= '1';
		wait for 200 ns;
		Impar <= '0';
		wait for 200 ns;
END PROCESS impar_generation;
                                         
always : PROCESS 
                                          
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN  
		Count4 <= '0';
		Count8 <= '0';
		Reset <= '1';
		Inicia <= '0';
		Input <= "0000";
		wait for 100 ns;
		
		Count4 <= '0';
		Count8 <= '0';
		Reset <= '0';
		Inicia <= '0';
		Input <= "0000";
		wait for 200 ns;
		
		Count4 <= '0';
		Count8 <= '0';
		Reset <= '0';
		Inicia <= '1';
		Input <= "0000";
		wait for 200 ns;
		
		-- comp L:
		
		Count4 <= '0';
		Count8 <= '0';
		Reset <= '0';
		Inicia <= '0';
		Input <= "0000";
		wait for 200 ns;
		
		Count4 <= '0';
		Count8 <= '0';
		Reset <= '0';
		Inicia <= '0';
		Input <= "1000";
		wait for 200 ns;
		
		Count4 <= '0';
		Count8 <= '0';
		Reset <= '0';
		Inicia <= '0';
		Input <= "1100";
		wait for 200 ns;
		
		Count4 <= '0';
		Count8 <= '0';
		Reset <= '0';
		Inicia <= '0';
		Input <= "1110";
		wait for 200 ns;
		
		Count4 <= '1';
		Count8 <= '0';
		Reset <= '0';
		Inicia <= '0';
		Input <= "0011";
		wait for 200 ns;
		
		Count4 <= '0';
		Count8 <= '0';
		Reset <= '0';
		Inicia <= '0';
		Input <= "0101";
		wait for 200 ns;
		
		Count4 <= '0';
		Count8 <= '0';
		Reset <= '0';
		Inicia <= '0';
		Input <= "0010";
		wait for 200 ns;
		
		Count4 <= '0';
		Count8 <= '0';
		Reset <= '0';
		Inicia <= '0';
		Input <= "1001";
		wait for 200 ns;
		
		Count4 <= '0';
		Count8 <= '1';
		Reset <= '0';
		Inicia <= '0';
		Input <= "0101";
		wait for 200 ns;
		
		-- clear syn:
		
		Count4 <= '0';
		Count8 <= '0';
		Reset <= '0';
		Inicia <= '0';
		Input <= "0000";
		wait for 200 ns;
		
		-- comp V:
		
		Count4 <= '0';
		Count8 <= '0';
		Reset <= '0';
		Inicia <= '0';
		Input <= "0000";
		wait for 200 ns;
		
		Count4 <= '0';
		Count8 <= '0';
		Reset <= '0';
		Inicia <= '0';
		Input <= "1000";
		wait for 200 ns;
		
		Count4 <= '0';
		Count8 <= '0';
		Reset <= '0';
		Inicia <= '0';
		Input <= "1100";
		wait for 200 ns;
		
		Count4 <= '0';
		Count8 <= '0';
		Reset <= '0';
		Inicia <= '0';
		Input <= "1110";
		wait for 200 ns;
		
		Count4 <= '1';
		Count8 <= '0';
		Reset <= '0';
		Inicia <= '0';
		Input <= "0011";
		wait for 200 ns;
		
		-- store:
		
		Count4 <= '0';
		Count8 <= '0';
		Reset <= '0';
		Inicia <= '0';
		Input <= "0000";
		
WAIT;                                                        
END PROCESS always;                                          
END BerleMas_arch;
