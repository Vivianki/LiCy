
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;


entity static_1 is
  port(

       o : out std_logic_vector(3 downto 0)
  );
end static_1;

architecture behavior of static_1 is

begin
 
 o <= "0010";

end behavior;