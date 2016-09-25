
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;


entity distance is
  port(

       inputDistance : in std_logic_vector(2 downto 0);
       outputDistante : out std_logic_vector(9 downto 0)
  );
end distance;

architecture behavior of distance is

begin
---- Processes ----	

process (inputDistance)

begin 
	if (inputDistance = "001" or inputDistance = "010" or inputDistance = "100") then
		outputDistante <= "0000000001";
	elsif (inputDistance = "011" or inputDistance = "110" or inputDistance = "101") then
		outputDistante <= "0000000010";
	elsif (inputDistance = "111") then
		outputDistante <= "0000000011";
	else 
		outputDistante <= "0000000000";
		end if;
end process;

end behavior;