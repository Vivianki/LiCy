
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;


entity static_2 is
  port(

       o : out std_logic_vector(6 downto 0)
  );
end static_2;

architecture behavior of static_2 is

begin
 
 o <= "0000010";

end behavior;