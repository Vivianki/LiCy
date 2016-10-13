library ieee;
use ieee.std_logic_1164.all;

entity piso is
    port(
         clk,load  : in std_logic;
         pi        : in std_logic_vector(3 downto 0);
         so        : out std_logic);
end piso;

architecture arch of piso is

    signal t   : std_logic;
    signal temp: std_logic_vector(3 downto 0);

begin

   process (clk,pi,load)
    begin
       if (load='1') then
             temp(3 downto 0) <= pi(3 downto 0);
				 t <= pi(3);
       elsif (CLK'event and CLK='1') then
             t <= temp(3);
             temp(3 downto 1) <= temp(2 downto 0);
             temp(0) <= '0';
       end if;
    end process;

so <= t;

end arch;