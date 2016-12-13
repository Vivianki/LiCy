-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;


entity adder is
  port(
       a : in std_logic_vector(2 downto 0);
		 b : in std_logic_vector(2 downto 0);
		 c : out std_logic_vector(2 downto 0)
  );
end adder;

architecture behavior of adder is


begin 
	c <=  std_logic_vector(unsigned(a) + unsigned(b));

end behavior;