library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity payload_clock_controller is
    Port ( entrada : in STD_LOGIC_VECTOR(4 downto 0);
           clock_select : out STD_LOGIC);
end payload_clock_controller;
    
architecture Behavioral of payload_clock_controller is

begin

    clock_select <= '1' when entrada >= "01110" else  -- maior ou igual a 14
							'0';

end Behavioral;