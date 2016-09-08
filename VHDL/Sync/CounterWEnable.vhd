library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CounterWEnable is
   port( enable: in std_logic;
 	 Clock: in std_logic;
 	 Output: out std_logic_vector(7 downto 0));
end CounterWEnable;
 
architecture Behavioral of CounterWEnable is
   signal temp: std_logic_vector(7 downto 0) := "00000000";
begin 
  -- process A
  process(Clock)
   begin
    if(rising_edge(Clock)) then
 	   if enable='0' then
	     if temp="11111111" then
	       temp<="00000000";
	     else
	       temp <= temp + 1;
	      end if;
		 else -- enable = 1
		   temp <= "00000000";
       end if;
    end if;
   end process;
   Output <= temp;
end Behavioral;