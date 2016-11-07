library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CounterWEnable is
   port( enable: in std_logic;
 	 Clock: in std_logic;
 	 Output: out std_logic_vector(9 downto 0));
end CounterWEnable;
 
architecture Behavioral of CounterWEnable is
   signal temp: std_logic_vector(9 downto 0) := "0000000000";
begin 
  -- process A
  process(Clock)
   begin
    if(rising_edge(Clock)) then
 	   if enable='0' then
	     if temp="1111111111" then
	       temp<="0000000000";
	     else
	       temp <= temp + 1;
	      end if;
		 else -- enable = 1
		   temp <= "0000000000";
       end if;
    end if;
   end process;
   Output <= temp;
end Behavioral;