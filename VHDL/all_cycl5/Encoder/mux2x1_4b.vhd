
library IEEE;
use IEEE.std_logic_1164.all;


entity Mux2x1_4b is
  port(
       I0 : in std_logic_vector(3 downto 0);
       I1 : in std_logic_vector(3 downto 0);
       Sel : in std_logic;
       O : out std_logic_vector(3 downto 0)
  );
end Mux2x1_4b;

architecture Behavioral of Mux2x1_4b is

begin

process (I0, I1, Sel)
begin
	case Sel is
		when '0' 	=> O <= I0;
		when '1' 	=> O <= I1 ;
		when others => O <= (others => 'X') ;
	end case;
end process;

end Behavioral;
