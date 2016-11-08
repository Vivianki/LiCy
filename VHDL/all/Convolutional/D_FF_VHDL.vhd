library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


ENTITY D_FF_VHDL IS 
PORT( 
	d : IN STD_LOGIC; 
	rst : IN STD_LOGIC; -- async. clear. 
	clk : IN STD_LOGIC; -- clock. 
	q : OUT STD_LOGIC);  -- output. 
END D_FF_VHDL;

ARCHITECTURE description OF D_FF_VHDL IS 
BEGIN 
process(clk, rst) 
begin 
	if rst = '0' then 
		q<= '0';
	elsif rising_edge(clk) then 
			q <= d; 
	end if; 
end process; 
END description;