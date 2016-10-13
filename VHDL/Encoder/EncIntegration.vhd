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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 16.0.0 Build 211 04/27/2016 SJ Lite Edition"
-- CREATED		"Wed Oct 12 18:29:21 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY EncIntegration IS 
	PORT
	(
		Flag :  IN  STD_LOGIC;
		clock_rs :  IN  STD_LOGIC;
		wren_b :  IN  STD_LOGIC;
		start_flushing :  IN  STD_LOGIC;
		carry_interleaver_payload :  IN  STD_LOGIC;
		clock :  IN  STD_LOGIC;
		wren :  IN  STD_LOGIC;
		Addb :  IN  STD_LOGIC_VECTOR(11 DOWNTO 0);
		address :  IN  STD_LOGIC_VECTOR(12 DOWNTO 0);
		data :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Db :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		control :  OUT  STD_LOGIC;
		clock_sistema :  OUT  STD_LOGIC;
		carry_sig :  OUT  STD_LOGIC;
		enable_flush :  OUT  STD_LOGIC;
		flush_counter_carry :  OUT  STD_LOGIC;
		depth_counter_enable :  OUT  STD_LOGIC;
		depth_counter_carry :  OUT  STD_LOGIC;
		readWrite :  OUT  STD_LOGIC;
		signal_readWrite :  OUT  STD_LOGIC;
		address_calc :  OUT  STD_LOGIC_VECTOR(11 DOWNTO 0);
		count :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		depth_count :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		flush_count :  OUT  STD_LOGIC_VECTOR(11 DOWNTO 0);
		iterator_sig :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Output :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Output_RS :  OUT  STD_LOGIC_VECTOR(0 TO 3);
		Output_RS18 :  OUT  STD_LOGIC_VECTOR(0 TO 3);
		q :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		reg1 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		reg2 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		reg3 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		reg4 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		saida_AND :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Saida_counter_PHR_PSDU :  OUT  STD_LOGIC_VECTOR(4 DOWNTO 0);
		saida_mux :  OUT  STD_LOGIC_VECTOR(11 DOWNTO 0);
		Saida_PHR_PSDU :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		saidaMul :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END EncIntegration;

ARCHITECTURE bdf_type OF EncIntegration IS 

COMPONENT phr_psdu
	PORT(address : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 data : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT flush_counter
	PORT(clock : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 len : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
		 carry : OUT STD_LOGIC;
		 count : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
	);
END COMPONENT;

COMPONENT interleaver_shared_memory
	PORT(wren_a : IN STD_LOGIC;
		 wren_b : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 address_a : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
		 address_b : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
		 data_a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 data_b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 q_a : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 q_b : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT register1b
	PORT(d : IN STD_LOGIC;
		 clr : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 q : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT static_2
	PORT(		 o : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

COMPONENT shift_register_4b
	PORT(CLK : IN STD_LOGIC;
		 D : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT static_29
	PORT(		 o : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
	);
END COMPONENT;

COMPONENT interleaver_payload_mem
	PORT(clock : IN STD_LOGIC;
		 wren : IN STD_LOGIC;
		 address : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
		 data : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT readorwrite
	PORT(depth_count_c : IN STD_LOGIC;
		 depth_count_number : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 readWrite : OUT STD_LOGIC
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

COMPONENT depth_counter
	PORT(clock : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 depth : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 carry : OUT STD_LOGIC;
		 count : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

COMPONENT mux2x1_12b
	PORT(SEL : IN STD_LOGIC;
		 A : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
		 B : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
		 X : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
	);
END COMPONENT;

COMPONENT address_calculator
	PORT(clock : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 depth : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 shift_depth : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 carry : OUT STD_LOGIC;
		 count : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
		 iterator_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_28 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_29 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC_VECTOR(0 TO 3);
SIGNAL	SYNTHESIZED_WIRE_30 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_31 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC;


BEGIN 
depth_counter_enable <= Flag;
carry_sig <= SYNTHESIZED_WIRE_17;
enable_flush <= SYNTHESIZED_WIRE_7;
flush_counter_carry <= SYNTHESIZED_WIRE_25;
depth_counter_carry <= SYNTHESIZED_WIRE_29;
readWrite <= SYNTHESIZED_WIRE_28;
signal_readWrite <= SYNTHESIZED_WIRE_28;
address_calc <= SYNTHESIZED_WIRE_21;
depth_count <= SYNTHESIZED_WIRE_30;
flush_count <= SYNTHESIZED_WIRE_20;
Output_RS(0 TO 3) <= SYNTHESIZED_WIRE_5(3 DOWNTO 0);
Output_RS18 <= SYNTHESIZED_WIRE_11;
Saida_counter_PHR_PSDU <= SYNTHESIZED_WIRE_0;
saida_mux <= SYNTHESIZED_WIRE_4;
Saida_PHR_PSDU <= SYNTHESIZED_WIRE_16;
SYNTHESIZED_WIRE_8 <= '0';



b2v_inst : phr_psdu
PORT MAP(address => SYNTHESIZED_WIRE_0,
		 data => SYNTHESIZED_WIRE_16);


SYNTHESIZED_WIRE_15 <= NOT(Flag);



b2v_inst10 : flush_counter
PORT MAP(clock => clock_rs,
		 enable => SYNTHESIZED_WIRE_1,
		 len => SYNTHESIZED_WIRE_2,
		 carry => SYNTHESIZED_WIRE_25,
		 count => SYNTHESIZED_WIRE_20);


b2v_inst11 : interleaver_shared_memory
PORT MAP(wren_a => SYNTHESIZED_WIRE_28,
		 wren_b => wren_b,
		 clock => clock_rs,
		 address_a => SYNTHESIZED_WIRE_4,
		 address_b => Addb,
		 data_a => SYNTHESIZED_WIRE_5,
		 data_b => Db,
		 q_a => Output);


SYNTHESIZED_WIRE_9 <= SYNTHESIZED_WIRE_29 AND start_flushing;


b2v_inst13 : register1b
PORT MAP(d => SYNTHESIZED_WIRE_7,
		 clr => SYNTHESIZED_WIRE_8,
		 clk => clock_rs,
		 q => SYNTHESIZED_WIRE_22);


b2v_inst14 : static_2
PORT MAP(		 o => SYNTHESIZED_WIRE_31);


SYNTHESIZED_WIRE_10 <= NOT(Flag);



b2v_inst16 : register1b
PORT MAP(d => SYNTHESIZED_WIRE_9,
		 clr => SYNTHESIZED_WIRE_10,
		 clk => clock_rs,
		 q => SYNTHESIZED_WIRE_1);


b2v_inst17 : shift_register_4b
PORT MAP(CLK => clock_rs,
		 D => SYNTHESIZED_WIRE_11,
		 Q => SYNTHESIZED_WIRE_5);


b2v_inst18 : static_29
PORT MAP(		 o => SYNTHESIZED_WIRE_2);


b2v_inst19 : interleaver_payload_mem
PORT MAP(clock => clock,
		 wren => wren,
		 address => address,
		 data => data,
		 q => q);


SYNTHESIZED_WIRE_14 <= NOT(Flag);



b2v_inst25 : readorwrite
PORT MAP(depth_count_c => SYNTHESIZED_WIRE_29,
		 depth_count_number => SYNTHESIZED_WIRE_30,
		 readWrite => SYNTHESIZED_WIRE_28);


b2v_inst3 : counter_phr_psdu
PORT MAP(clock => clock_rs,
		 clear => SYNTHESIZED_WIRE_14,
		 count => SYNTHESIZED_WIRE_0);


b2v_inst4 : rsencoder
PORT MAP(Clock_RSencoder => clock_rs,
		 Initialize_RSencoder => SYNTHESIZED_WIRE_15,
		 input_RSencoder => SYNTHESIZED_WIRE_16,
		 control => control,
		 clock_sistema => clock_sistema,
		 count => count,
		 Output => SYNTHESIZED_WIRE_11,
		 reg1 => reg1,
		 reg2 => reg2,
		 reg3 => reg3,
		 reg4 => reg4,
		 saida_AND => saida_AND,
		 saidaMul => saidaMul);


SYNTHESIZED_WIRE_26 <= Flag AND carry_interleaver_payload;


b2v_inst5 : depth_counter
PORT MAP(clock => SYNTHESIZED_WIRE_17,
		 enable => Flag,
		 depth => SYNTHESIZED_WIRE_31,
		 carry => SYNTHESIZED_WIRE_29,
		 count => SYNTHESIZED_WIRE_30);


b2v_inst6 : mux2x1_12b
PORT MAP(SEL => SYNTHESIZED_WIRE_29,
		 A => SYNTHESIZED_WIRE_20,
		 B => SYNTHESIZED_WIRE_21,
		 X => SYNTHESIZED_WIRE_4);


b2v_inst7 : address_calculator
PORT MAP(clock => clock_rs,
		 enable => SYNTHESIZED_WIRE_22,
		 depth => SYNTHESIZED_WIRE_31,
		 shift_depth => SYNTHESIZED_WIRE_30,
		 carry => SYNTHESIZED_WIRE_17,
		 count => SYNTHESIZED_WIRE_21,
		 iterator_out => iterator_sig);



SYNTHESIZED_WIRE_7 <= SYNTHESIZED_WIRE_25 AND SYNTHESIZED_WIRE_26;


END bdf_type;