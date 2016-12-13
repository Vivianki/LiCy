library ieee;
use ieee.std_logic_1164.all;

entity sipo is
   port(clk,si: in std_logic;
          po    : inout std_logic_vector(3 downto 0)
         );
end sipo;

architecture arch of sipo is
begin

process(clk)
begin
    if (clk='1' and clk'event)then
        po(3 downto 1) <= po(2 downto 0);
        po(0) <= si;
    end if;
end process;

end arch;