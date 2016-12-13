
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;


entity static_1_depth is
  port(

       o : out std_logic_vector(6 downto 0)
  );
end static_1_depth;

architecture behavior of static_1_depth is

begin
 
 o <= "0000001";

end behavior;