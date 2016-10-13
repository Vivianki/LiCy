
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;


entity static_29 is
  port(

       o : out std_logic_vector(11 downto 0)
  );
end static_29;

architecture behavior of static_29 is

begin
 
 o <= "000000011101";

end behavior;