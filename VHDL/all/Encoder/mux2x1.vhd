
library IEEE;
use IEEE.std_logic_1164.all;


entity Mux2x1 is
  generic(
       NB: integer := 4
  );
  port(
       I0 : in std_logic_vector(NB - 1 downto 0);
       I1 : in std_logic_vector(NB - 1 downto 0);
       Sel : in std_logic;
       O : out std_logic_vector(NB - 1 downto 0)
  );
end Mux2x1;

architecture Mux2x1 of Mux2x1 is

begin

---- Processes ----

Mux2x1 :
process (I0, I1, Sel)

begin
	case Sel is
		when '0' 	=> O <= I0;
		when '1' 	=> O <= I1 ;
		when others => O <= (others => 'X') ;
	end case;
end process;

end Mux2x1;
