library ieee;
use ieee.std_logic_1164.all;

entity siso is
  port(	clk, enable, errori: in std_logic;
			deci : in std_logic_vector(3 downto 0);
			erroro : buffer std_logic;
         deco0, deco1, deco2, deco3, deco4, deco5, deco6    : buffer std_logic_vector(3 downto 0)
        );
end siso;

architecture arch of siso is
begin

process(clk, enable)
begin
	if enable = '0' then
   elsif (rising_edge(clk)) then
			deco6 <= deco5;
			deco5 <= deco4;
			deco4 <= deco3;
			deco3 <= deco2;
			deco2 <= deco1;
			deco1 <= deco0;
			deco0 <= deci;
			erroro <= errori;
   end if;
end process;

end arch;