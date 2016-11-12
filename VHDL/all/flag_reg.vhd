library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


ENTITY flag_reg IS 
PORT( 
clr : IN STD_LOGIC; -- async. clear. 
clk : IN STD_LOGIC; -- clock. 
q : OUT STD_LOGIC);  -- output. 
END flag_reg; 
ARCHITECTURE description OF flag_reg IS 
    signal q_signal : STD_LOGIC := '0';

BEGIN 
process(clk, clr) 
begin 
	if clr = '1' then 
		q_signal <= '0';
	elsif rising_edge(clk) then 
		q_signal <= '1'; 
	end if; 
end process; 
	q <= q_signal;
END description;