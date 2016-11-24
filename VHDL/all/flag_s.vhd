library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY flag_s IS 
PORT( 
	Flg : IN STD_LOGIC; 
	D : IN STD_LOGIC_VECTOR(3 downto 0); -- async. clear. 
	Q : OUT STD_LOGIC_VECTOR(3 downto 0));  -- output. 
END flag_s;
 
ARCHITECTURE description OF flag_s IS 
BEGIN 
	process(Flg) 
	begin 
		if Flg = '0' then 
			Q <= "0000";
		else
			Q <= D;
		end if;
	end process;
END description;