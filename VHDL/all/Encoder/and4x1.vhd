
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;


entity and4x1 is
  port(

       a : in std_logic_vector(3 downto 0);
       b : in std_logic;
       c : out std_logic_vector(3 downto 0)
  );
end and4x1;

architecture behavior of and4x1 is

begin
---- Processes ----	

process (a, b)

begin 
	c(3) <= b and a(3);
	c(2) <= b and a(2);
	c(1) <= b and a(1);
	c(0) <= b and a(0);
end process;

end behavior;