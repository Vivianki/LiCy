library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity reg6b is
    Port ( Clock : in  STD_LOGIC;
	        Reset : in  STD_LOGIC;
           D     : in  STD_LOGIC_VECTOR(5 downto 0);
			  Q     : out STD_LOGIC_VECTOR(5 downto 0)
	 );
end reg6b;
    
architecture Behavioral of reg6b is
begin
    -- shift register
 process (Clock)
 begin
   if (Reset = '0') then
	  Q <= "000000";
	else
     if (rising_edge(Clock)) then
        Q <= D;
     end if;
	end if;
  end process;
end Behavioral;