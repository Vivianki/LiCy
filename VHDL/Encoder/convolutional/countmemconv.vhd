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
-- CREATED		"Sat Sep 24 20:41:05 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY countmemconv IS 
	PORT
	(
		clock :  IN  STD_LOGIC;
		carry :  OUT  STD_LOGIC;
		A0 :  OUT  STD_LOGIC;
		B0 :  OUT  STD_LOGIC;
		C0 :  OUT  STD_LOGIC;
		input_machester :  OUT  STD_LOGIC;
		clock100d3 :  OUT  STD_LOGIC;
		clock100kz :  OUT  STD_LOGIC;
		data_mem :  OUT  STD_LOGIC;
		output :  OUT  STD_LOGIC;
		count :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		distance1 :  OUT  STD_LOGIC_VECTOR(9 DOWNTO 0);
		distance2 :  OUT  STD_LOGIC_VECTOR(9 DOWNTO 0);
		input_vdecoder :  OUT  STD_LOGIC_VECTOR(2 DOWNTO 0);
		inputVdecoderreg :  OUT  STD_LOGIC_VECTOR(2 DOWNTO 0);
		longerDistance :  OUT  STD_LOGIC_VECTOR(9 DOWNTO 0);
		NextState :  OUT  STD_LOGIC_VECTOR(5 DOWNTO 0);
		unlikelyState :  OUT  STD_LOGIC_VECTOR(5 DOWNTO 0);
		updatedDistance :  OUT  STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END countmemconv;

ARCHITECTURE bdf_type OF countmemconv IS 

COMPONENT counter
GENERIC (n : INTEGER
			);
	PORT(clock : IN STD_LOGIC;
		 clear : IN STD_LOGIC;
		 carry : OUT STD_LOGIC;
		 count : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT transformador100d3
	PORT(clk_100khz : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 clk_100D3kHz : OUT STD_LOGIC;
		 selector : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;

COMPONENT ccencoder
	PORT(clock : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 clock_enable : IN STD_LOGIC;
		 input : IN STD_LOGIC;
		 A0 : OUT STD_LOGIC;
		 B0 : OUT STD_LOGIC;
		 C0 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT sipo
	PORT(clk : IN STD_LOGIC;
		 si : IN STD_LOGIC;
		 po : INOUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;

COMPONENT register3b
	PORT(ld : IN STD_LOGIC;
		 clr : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 d : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;

COMPONENT vdecoder
	PORT(clear : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 load : IN STD_LOGIC;
		 input : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 output : OUT STD_LOGIC;
		 distance1 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		 distance2 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		 longerDistance : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		 NextState : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		 unlikelyState : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		 updatedDistance : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;

COMPONENT rom
	PORT(address : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 data : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT scale_clock_100khz
	PORT(clk_50Mhz : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 clk_100kHz : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT mux_2to1_top
	PORT(SEL : IN STD_LOGIC;
		 A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 X : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	F :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC;


BEGIN 
A0 <= SYNTHESIZED_WIRE_21;
B0 <= SYNTHESIZED_WIRE_20;
C0 <= SYNTHESIZED_WIRE_22;
input_machester <= SYNTHESIZED_WIRE_9;
clock100d3 <= SYNTHESIZED_WIRE_24;
clock100kz <= SYNTHESIZED_WIRE_26;
data_mem <= SYNTHESIZED_WIRE_7;
count <= SYNTHESIZED_WIRE_18;
input_vdecoder <= SYNTHESIZED_WIRE_13;
inputVdecoderreg <= SYNTHESIZED_WIRE_17;
SYNTHESIZED_WIRE_25 <= '0';
SYNTHESIZED_WIRE_27 <= '1';



b2v_inst : counter
GENERIC MAP(n => 8
			)
PORT MAP(clock => SYNTHESIZED_WIRE_24,
		 clear => SYNTHESIZED_WIRE_25,
		 carry => carry,
		 count => SYNTHESIZED_WIRE_18);


b2v_inst11 : transformador100d3
PORT MAP(clk_100khz => SYNTHESIZED_WIRE_26,
		 rst => SYNTHESIZED_WIRE_25,
		 clk_100D3kHz => SYNTHESIZED_WIRE_24,
		 selector => F);


b2v_inst12 : ccencoder
PORT MAP(clock => SYNTHESIZED_WIRE_24,
		 reset => SYNTHESIZED_WIRE_25,
		 clock_enable => SYNTHESIZED_WIRE_27,
		 input => SYNTHESIZED_WIRE_7,
		 A0 => SYNTHESIZED_WIRE_21,
		 B0 => SYNTHESIZED_WIRE_20,
		 C0 => SYNTHESIZED_WIRE_22);


b2v_inst14 : sipo
PORT MAP(clk => SYNTHESIZED_WIRE_26,
		 si => SYNTHESIZED_WIRE_9,
		 po => SYNTHESIZED_WIRE_13);


b2v_inst15 : register3b
PORT MAP(ld => SYNTHESIZED_WIRE_27,
		 clr => SYNTHESIZED_WIRE_25,
		 clk => SYNTHESIZED_WIRE_24,
		 d => SYNTHESIZED_WIRE_13,
		 q => SYNTHESIZED_WIRE_17);


b2v_inst16 : vdecoder
PORT MAP(clear => SYNTHESIZED_WIRE_25,
		 clock => SYNTHESIZED_WIRE_24,
		 load => SYNTHESIZED_WIRE_27,
		 input => SYNTHESIZED_WIRE_17,
		 output => output,
		 distance1 => distance1,
		 distance2 => distance2,
		 longerDistance => longerDistance,
		 NextState => NextState,
		 unlikelyState => unlikelyState,
		 updatedDistance => updatedDistance);


b2v_inst3 : rom
PORT MAP(address => SYNTHESIZED_WIRE_18,
		 data => SYNTHESIZED_WIRE_7);



b2v_inst5 : scale_clock_100khz
PORT MAP(clk_50Mhz => clock,
		 rst => SYNTHESIZED_WIRE_25,
		 clk_100kHz => SYNTHESIZED_WIRE_26);


b2v_inst7 : mux_2to1_top
PORT MAP(SEL => F(0),
		 A => SYNTHESIZED_WIRE_20,
		 B => SYNTHESIZED_WIRE_21,
		 X => SYNTHESIZED_WIRE_23);


b2v_inst8 : mux_2to1_top
PORT MAP(SEL => F(1),
		 A => SYNTHESIZED_WIRE_22,
		 B => SYNTHESIZED_WIRE_23,
		 X => SYNTHESIZED_WIRE_9);



END bdf_type;