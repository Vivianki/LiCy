	
library ieee ;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

----------------------------------------------------

entity UART_COUNTER is


port(	clock:	in std_logic;
		clear:	in std_logic;
		flag:		out std_logic);
end UART_COUNTER;

----------------------------------------------------

architecture behv of UART_COUNTER is		 	  
	signal Pre_Q: std_logic_vector(4 downto 0);
	signal odd : STD_LOGIC;
begin
	process(clock, clear)
	begin
		if clear = '1' then
			Pre_Q <= "00000";
			flag <= '0';
			odd <= '0';
		elsif rising_edge(clock) then
			if (Pre_Q > 3) then
				flag <= '0';
				odd <= '0';
			else
				if (odd = '0') then
					flag <= '1';
					odd <= '1';
				else 
					flag <= '0';
					odd <= '0';
				end if;
				Pre_Q <= Pre_Q + 1;
			end if;
		end if;
	end process;
end behv;
