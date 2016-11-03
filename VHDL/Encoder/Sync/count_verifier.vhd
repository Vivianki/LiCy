-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;


entity count_verifier is
  port(
       input : in std_logic;
       count0 : in std_logic_vector(5 downto 0);
		 count1 : in std_logic_vector(5 downto 0);
		 sinal : out std_logic;
		 output : out std_logic; 
		 reset : out std_logic
  );
end count_verifier;

architecture behavior of count_verifier is
		 signal sinal0 : std_logic;
		 signal output0 : std_logic; 
		 signal reset0 : std_logic;
		 signal sinal1 : std_logic;
		 signal output1 : std_logic; 
		 signal reset1 : std_logic;
begin
---- Processes ----	

process (input)

begin 
	if (rising_edge(input)) then
		if (count0 <= "111111" and count0 >= "001010") then
			output0 <='0';
			reset0 <= '0';
			sinal0 <= '1';
			sinal0 <= '0' after 1 ps;
	else
	  reset0 <= '1';
	end if;
	end if;
end process;

process (input)

begin 
	if (falling_edge(input)) then
		if (count1 <= "111111" and count0 >= "001010") then
			output1 <='1';
			reset1 <= '0';
			sinal1 <= '1';
			sinal1 <= '0' after 1 ps;
		
	else
	  reset1 <= '1';
	end if;
	end if;
end process;
			output <= output0 when input = '1' else output1;
			reset <= reset0 when input = '1' else reset1;
			sinal <= sinal0 when input = '1' else sinal1;
end behavior;
