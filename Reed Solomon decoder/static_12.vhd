
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;


entity static_12 is
  port(

       o : out std_logic_vector(3 downto 0)
  );
end static_12;

architecture behavior of static_12 is

begin
 
 o <= "1100";

end behavior;