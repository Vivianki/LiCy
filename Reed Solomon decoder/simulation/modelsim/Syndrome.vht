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
-- Generated on "09/21/2016 23:19:09"
                                                            
-- Vhdl Test Bench template for design  :  Syndrome
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Syndrome_vhd_tst IS
END Syndrome_vhd_tst;

ARCHITECTURE Syndrome_arch OF Syndrome_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clear : STD_LOGIC := '0';
SIGNAL Clock : STD_LOGIC := '0';
SIGNAL Input : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
SIGNAL S0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL S1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL S2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL S3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL S4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL S5 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL S6 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL S7 : STD_LOGIC_VECTOR(3 DOWNTO 0);


COMPONENT Syndrome IS
	PORT (
	Clear : IN STD_LOGIC;
	Clock : IN STD_LOGIC;
	Input : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	S0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	S1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	S2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	S3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	S4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	S5 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	S6 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	S7 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT Syndrome;


BEGIN
	dut : entity work.Syndrome
	PORT MAP (
-- list connections between master ports and signals
	Clear => Clear,
	Clock => Clock,
	Input => Input,
	S0 => S0,
	S1 => S1,
	S2 => S2,
	S3 => S3,
	S4 => S4,
	S5 => S5,
	S6 => S6,
	S7 => S7
	);
	
clk_process : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once
			Clock <= '0';
			wait for 100 ns;
			Clock <= '1';
			wait for 100 ns;
			
END PROCESS clk_process;
                                         
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list
		Clear <= '1';
		Input <= "0000";
		wait for 200 ns;
		Clear <= '0';
		Input <= "1110";
		wait for 200 ns;
		Clear <= '0';
		Input <= "0010";
		wait for 200 ns;
		Clear <= '0';
		Input <= "1011";
		wait for 200 ns;
		Clear <= '0';
		Input <= "0010";
		wait for 200 ns;
		Clear <= '0';
		Input <= "0110";
		wait for 200 ns;
		Clear <= '0';
		Input <= "0011";
		wait for 200 ns;
		Clear <= '0';
		Input <= "1101";
		wait for 200 ns;
		Clear <= '0';
		Input <= "1111";
		wait for 200 ns;
		Clear <= '0';
		Input <= "1011";
		wait for 200 ns;
		Clear <= '0';
		Input <= "0011";
		wait for 200 ns;
		Clear <= '0';
		Input <= "0101";
		wait for 200 ns;
		Clear <= '0';
		Input <= "0010";
		wait for 200 ns;
		Clear <= '0';
		Input <= "1001";
		wait for 200 ns;
		Clear <= '0';
		Input <= "0001";
		wait for 200 ns;
		Clear <= '0';
		Input <= "0000";
		WAIT;
		
END PROCESS always;
                                          
END Syndrome_arch;
