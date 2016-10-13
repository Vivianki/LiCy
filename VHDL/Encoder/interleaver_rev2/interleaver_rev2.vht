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
-- Generated on "09/28/2016 02:36:57"
                                                            
-- Vhdl Test Bench template for design  :  interleaver_rev2
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY itrl_t IS
END itrl_t;
ARCHITECTURE interleaver_rev2_arch OF itrl_t IS
-- constants                                                 
-- signals                                                   
SIGNAL Addb : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL Clock : STD_LOGIC;
SIGNAL Db : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Depth : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Flag : STD_LOGIC;
SIGNAL Input : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Len : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL Output : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL flush_count : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL depth_count : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL address_calc : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL saida_mux : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL wren_b : STD_LOGIC;
SIGNAL iterator_sig :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL enable_flush : STD_LOGIC;
SIGNAL carry_sig : STD_LOGIC;
SIGNAL depth_counter_enable : STD_LOGIC;
SIGNAL flush_counter_carry :  STD_LOGIC;
SIGNAL depth_counter_carry :  STD_LOGIC;
SIGNAL signal_readWrite :    STD_LOGIC;
SIGNAL start_flushing :   STD_LOGIC;
SIGNAL readWrite :  STD_LOGIC;
COMPONENT interleaver_rev2
	PORT (
	Addb : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
	Clock : IN STD_LOGIC;
	Db : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Depth : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
	Flag : IN STD_LOGIC;
	start_flushing :   IN STD_LOGIC;
	Input : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Len : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
	Output : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	wren_b : IN STD_LOGIC;			
	depth_count :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
	flush_count :  OUT  STD_LOGIC_VECTOR(11 DOWNTO 0);
	address_calc :  OUT  STD_LOGIC_VECTOR(11 DOWNTO 0);
	carry_sig :  OUT  STD_LOGIC;
	iterator_sig :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
	enable_flush : OUT STD_LOGIC;
	depth_counter_enable :  OUT  STD_LOGIC;
	flush_counter_carry :  OUT  STD_LOGIC;
	readWrite :  OUT  STD_LOGIC;
	depth_counter_carry :  OUT  STD_LOGIC;
	signal_readWrite :  OUT  STD_LOGIC;
	saida_mux :  OUT  STD_LOGIC_VECTOR(11 DOWNTO 0)
	);
END COMPONENT;

constant clk_period : time := 100 ns;

BEGIN
	i1 : interleaver_rev2
	PORT MAP (
-- list connections between master ports and signals
	Addb => Addb,
	Clock => Clock,
	Db => Db,
	Depth => Depth,
	Flag => Flag,
	Input => Input,
	Len => Len,
	Output => Output,
	wren_b => wren_b,
	depth_count => depth_count,
	flush_count => flush_count,
	address_calc => address_calc,
	saida_mux => saida_mux,
	iterator_sig => iterator_sig,
	carry_sig => carry_sig,
	enable_flush => enable_flush,
	flush_counter_carry => flush_counter_carry,
	depth_counter_enable => depth_counter_enable,
	depth_counter_carry => depth_counter_carry,
	signal_readWrite => signal_readWrite,
	start_flushing => start_flushing,
	readWrite => readWrite
	);

init : PROCESS
BEGIN                                                        
	Clock <= '0';
	wait for clk_period/2;  --for 0.5 ns signal is '0'.
	Clock <= '1';
	wait for clk_period/2;  --for 0.5 ns signal is '0'.
END PROCESS init;
	
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN            
	wren_b <= '0';
	Db <= "0000";
	Addb <= "000000000000";
	
	Flag <= '0';
	wait for 50 ns;
	
	start_flushing <= '0';
	Input <= "0000";
	Len <= "000000011101";
	Depth <= "0000010";
	wait for 100 ns;
	
	Flag <= '1';
	wait for 100 ns;
	
	start_flushing <= '0';
	Input <= "1010";
	wait for 100 ns;
	
	Input <= "1011";
	wait for 100 ns;
	Input <= "1100";
	wait for 100 ns;
	Input <= "1101";
	wait for 100 ns;
	Input <= "1110";
	wait for 100 ns;
	Input <= "1111";
	wait for 100 ns;
	Input <= "0001";
	wait for 100 ns;
	Input <= "0010";
	wait for 100 ns;
	Input <= "0011";
	wait for 100 ns;
	Input <= "0100";
	wait for 100 ns;
	Input <= "0101";
	wait for 100 ns;
	Input <= "0110";
	wait for 100 ns;
	Input <= "0111";
	wait for 100 ns;
	Input <= "1000";
	wait for 100 ns;
	Input <= "1001";
	wait for 100 ns;
	Input <= "0001";
	wait for 1400 ns;
	Input <= "0011";
	Flag <= '1';
	wait for 50 ns;
	start_flushing <= '1';
	
WAIT;                                                        
END PROCESS always;                                          
END interleaver_rev2_arch;