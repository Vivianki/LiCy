
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;


entity static_15_deint is
  port(

       o : out std_logic_vector(6 downto 0)
  );
end static_15_deint;

architecture behavior of static_15_deint is

begin
 
 o <= "0001111";

end behavior;