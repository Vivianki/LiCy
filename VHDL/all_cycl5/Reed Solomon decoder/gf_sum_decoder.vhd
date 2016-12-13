
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;


entity gf_sum_decoder is
  port(

       a : in std_logic_vector(3 downto 0);
       b : in std_logic_vector(3 downto 0);
       c : out std_logic_vector(3 downto 0)
  );
end gf_sum_decoder;

architecture behavior of gf_sum_decoder is

begin
---- Processes ----	

process (a, b)

begin 
	c <= a xor b;
end process;

end behavior;