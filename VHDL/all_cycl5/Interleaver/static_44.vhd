
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;


entity static_44 is
  port(

       o : out std_logic_vector(12 downto 0)
  );
end static_44;

architecture behavior of static_44 is

begin
 
 o <= "0000000101100";

end behavior;