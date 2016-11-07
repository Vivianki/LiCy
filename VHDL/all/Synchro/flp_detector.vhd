library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity flp_detector is
    Port ( entrada : in STD_LOGIC_VECTOR(99 downto 0);
           flp_detect : out STD_LOGIC);
end flp_detector;
    
architecture Behavioral of flp_detector is

begin

    flp_detect <= '1' when entrada = "1010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010" else 
						'0';

end Behavioral;
