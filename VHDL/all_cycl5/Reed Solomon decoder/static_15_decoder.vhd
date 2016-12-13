
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;


entity static_15_decoder is
  port(

       o : out std_logic_vector(3 downto 0)
  );
end static_15_decoder;

architecture behavior of static_15_decoder is

begin
 
 o <= "1111";

end behavior;