-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;


entity static_11_decoder is
  port(

       o : out std_logic_vector(3 downto 0)
  );
end static_11_decoder;

architecture behavior of static_11_decoder is

begin
 
 o <= "1011";

end behavior;