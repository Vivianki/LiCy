
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;


entity static_0 is
  port(

       o : out std_logic_vector(3 downto 0)
  );
end static_0;

architecture behavior of static_0 is

begin
 
 o <= "0001";

end behavior;