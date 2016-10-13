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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"
-- CREATED		"Thu Oct 13 11:41:39 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY EncIntegration2 IS 
	PORT
	(
		Flag :  IN  STD_LOGIC;
		clock_rs :  IN  STD_LOGIC;
		control :  OUT  STD_LOGIC;
		clock_sistema :  OUT  STD_LOGIC;
		readWrite :  OUT  STD_LOGIC;
		depth_counter_carry :  OUT  STD_LOGIC;
		carry_sig :  OUT  STD_LOGIC;
		enable_flush :  OUT  STD_LOGIC;
		flush_counter_carry :  OUT  STD_LOGIC;
		readWrite_2 :  OUT  STD_LOGIC;
		carry_sig2 :  OUT  STD_LOGIC;
		depth_counter_carry2 :  OUT  STD_LOGIC;
		enable_flush2 :  OUT  STD_LOGIC;
		start_flushing :  OUT  STD_LOGIC;
		Flag_2 :  OUT  STD_LOGIC;
		address_calc :  OUT  STD_LOGIC_VECTOR(12 DOWNTO 0);
		address_calc_payload :  OUT  STD_LOGIC_VECTOR(12 DOWNTO 0);
		address_sel :  OUT  STD_LOGIC_VECTOR(12 DOWNTO 0);
		address_sel_payload :  OUT  STD_LOGIC_VECTOR(12 DOWNTO 0);
		count :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		depth_count :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		depth_count_payload :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		flush_count :  OUT  STD_LOGIC_VECTOR(12 DOWNTO 0);
		InputPayload :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		InputSR2 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		iterator_sig :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		iterator_sig_payload :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Output :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		q_b :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		reg1 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		reg2 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		reg3 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		reg4 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		saida_AND :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Saida_counter_PHR_PSDU :  OUT  STD_LOGIC_VECTOR(4 DOWNTO 0);
		Saida_PHR_PSDU :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		saidaMul :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END EncIntegration2;

ARCHITECTURE bdf_type OF EncIntegration2 IS 

COMPONENT phr_psdu
	PORT(address : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 data : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT counter_phr_psdu
	PORT(clock : IN STD_LOGIC;
		 clear : IN STD_LOGIC;
		 carry : OUT STD_LOGIC;
		 count : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT rsencoder
	PORT(Clock_RSencoder : IN STD_LOGIC;
		 Initialize_RSencoder : IN STD_LOGIC;
		 input_RSencoder : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 control : OUT STD_LOGIC;
		 clock_sistema : OUT STD_LOGIC;
		 count : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Output : OUT STD_LOGIC_VECTOR(0 TO 3);
		 reg1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 reg2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 reg3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 reg4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 saida_AND : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 saidaMul : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT interleaver_rev4
	PORT(Flag : IN STD_LOGIC;
		 Clock : IN STD_LOGIC;
		 Input : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 readWrite : OUT STD_LOGIC;
		 depth_counter_carry : OUT STD_LOGIC;
		 carry_sig : OUT STD_LOGIC;
		 enable_flush : OUT STD_LOGIC;
		 flush_counter_carry : OUT STD_LOGIC;
		 readWrite_2 : OUT STD_LOGIC;
		 carry_sig2 : OUT STD_LOGIC;
		 depth_counter_carry2 : OUT STD_LOGIC;
		 enable_flush2 : OUT STD_LOGIC;
		 start_flushing : OUT STD_LOGIC;
		 Flag_2 : OUT STD_LOGIC;
		 address_calc : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
		 address_calc_payload : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
		 address_sel : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
		 address_sel_payload : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
		 depth_count : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		 depth_count_payload : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		 flush_count : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
		 InputPayload : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 InputSR2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 iterator_sig : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 iterator_sig_payload : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Output : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 q_b : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC_VECTOR(0 TO 3);


BEGIN 
Saida_counter_PHR_PSDU <= SYNTHESIZED_WIRE_0;
Saida_PHR_PSDU <= SYNTHESIZED_WIRE_3;



b2v_inst : phr_psdu
PORT MAP(address => SYNTHESIZED_WIRE_0,
		 data => SYNTHESIZED_WIRE_3);


SYNTHESIZED_WIRE_2 <= NOT(Flag);



SYNTHESIZED_WIRE_1 <= NOT(Flag);



b2v_inst3 : counter_phr_psdu
PORT MAP(clock => clock_rs,
		 clear => SYNTHESIZED_WIRE_1,
		 count => SYNTHESIZED_WIRE_0);


b2v_inst4 : rsencoder
PORT MAP(Clock_RSencoder => clock_rs,
		 Initialize_RSencoder => SYNTHESIZED_WIRE_2,
		 input_RSencoder => SYNTHESIZED_WIRE_3,
		 control => control,
		 clock_sistema => clock_sistema,
		 count => count,
		 Output => SYNTHESIZED_WIRE_4,
		 reg1 => reg1,
		 reg2 => reg2,
		 reg3 => reg3,
		 reg4 => reg4,
		 saida_AND => saida_AND,
		 saidaMul => saidaMul);


b2v_inst5 : interleaver_rev4
PORT MAP(Flag => Flag,
		 Clock => clock_rs,
		 Input => SYNTHESIZED_WIRE_4,
		 readWrite => readWrite,
		 depth_counter_carry => depth_counter_carry,
		 carry_sig => carry_sig,
		 enable_flush => enable_flush,
		 flush_counter_carry => flush_counter_carry,
		 readWrite_2 => readWrite_2,
		 carry_sig2 => carry_sig2,
		 depth_counter_carry2 => depth_counter_carry2,
		 enable_flush2 => enable_flush2,
		 start_flushing => start_flushing,
		 Flag_2 => Flag_2,
		 address_calc => address_calc,
		 address_calc_payload => address_calc_payload,
		 address_sel => address_sel,
		 address_sel_payload => address_sel_payload,
		 depth_count => depth_count,
		 depth_count_payload => depth_count_payload,
		 flush_count => flush_count,
		 InputPayload => InputPayload,
		 InputSR2 => InputSR2,
		 iterator_sig => iterator_sig,
		 iterator_sig_payload => iterator_sig_payload,
		 Output => Output,
		 q_b => q_b);


END bdf_type;