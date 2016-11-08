library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tdp_detector is
    Port ( entrada : in STD_LOGIC_VECTOR(59 downto 0);
           tdp_detect : out STD_LOGIC);
end tdp_detector;
    
architecture Behavioral of tdp_detector is

begin

    tdp_detect <= '1' when entrada = "111101011001000000010100110111111101011001000000010100110111" else 
						'0';

end Behavioral;