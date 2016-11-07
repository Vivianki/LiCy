library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


ENTITY DD_FF_VHDL IS 
PORT( 
	d : IN STD_LOGIC; 
	clr : IN STD_LOGIC; -- async. clear. 
	clk : IN STD_LOGIC; -- clock. 
	q : OUT STD_LOGIC);  -- output. 
END DD_FF_VHDL;

ARCHITECTURE description OF DD_FF_VHDL IS 
BEGIN 
process(clk, clr) 
begin 
	if clr = '1' then 
		q<= '0';
	elsif rising_edge(clk) then 
			q <= d; 
	end if; 
end process; 
END description;