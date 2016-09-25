
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;


entity xor3bits is
  port(

       a : in std_logic_vector(2 downto 0);
       b : in std_logic_vector(2 downto 0);
       c : out std_logic_vector(2 downto 0)
  );
end xor3bits;

architecture behavior of xor3bits is


begin 
	c <= a xor b;

end behavior;