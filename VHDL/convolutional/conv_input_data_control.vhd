library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity conv_input_data_control is
   port( Clock: in std_logic;
 	 Reset: in std_logic;
	 load: out std_logic;
 	 Output: out std_logic_vector(0 to 3));
end conv_input_data_control;
 
architecture Behavioral of conv_input_data_control is
   signal temp: std_logic_vector(0 to 3);
begin   process(Clock,Reset)
   begin
      if Reset='0' then
         temp <= "0000";
			load <= '1';
      elsif(rising_edge(Clock)) then
	    if temp="0011" then
	       temp<="0000";
			 load <= '0';
	    elsif temp ="0000" then
			load <= '1';
	       temp <= temp + 1;
		else 
			load <= '0';
	       temp <= temp + 1;
		
	    end if;
      end if;
   end process;
   Output <= temp;
end Behavioral;