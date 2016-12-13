library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity conv_input_data_control2 is
   port( Clock: in std_logic;
 	 Reset: in std_logic;
	 carry: out std_logic;
 	 Output: out std_logic_vector(0 to 5));
end conv_input_data_control2;
 
architecture Behavioral of conv_input_data_control2 is
   signal temp: std_logic_vector(0 to 5);
begin   process(Clock,Reset)
   begin
      if Reset='0' then
         temp <= "000000";
			carry <= '1';
      elsif(rising_edge(Clock)) then
	    if temp="011101" then
	       temp<="011101";
			 carry <= '0';
		else 
			carry <= '1';
	       temp <= temp + 1;		
	    end if;
      end if;
   end process;
   Output <= temp;
end Behavioral;