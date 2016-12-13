library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


ENTITY delay_flag_viterbi_migue IS 
PORT( 
	d : IN STD_LOGIC; 
	clr : IN STD_LOGIC; -- async. clear. 
	clk : IN STD_LOGIC; -- clock. 
	q : OUT STD_LOGIC);  -- output. 
END delay_flag_viterbi_migue;
 
ARCHITECTURE description OF delay_flag_viterbi_migue IS 
	SIGNAL sr_inner : STD_LOGIC_VECTOR(2 downto 0);
BEGIN 
	process(clk, clr) 
	begin 
		if clr = '1' then 
			q <= '0';
			sr_inner <= (others => '0');
		elsif rising_edge(clk) then
			sr_inner(2 DOWNTO 1) <= sr_inner(1 downto 0);
			sr_inner(0) <= d;
		end if;
		q <= sr_inner(0);
	end process;
END description;