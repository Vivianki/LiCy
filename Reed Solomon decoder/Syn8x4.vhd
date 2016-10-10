library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Syn8x4 is
       Port ( 		reset, clk, start, load : in STD_LOGIC;
                  Sin0, Sin1, Sin2, Sin3, Sin4, Sin5, Sin6, Sin7 : in STD_LOGIC_VECTOR (3 downto 0);
                  S_out:out STD_LOGIC_VECTOR (3 downto 0)
		);
end Syn8x4;

architecture Behavioral of Syn8x4 is
      signal Syndrome :STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
      signal DATA:STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
begin
      process(reset, clk, start, load)
      begin
           if reset='1' then
                  Syndrome <= (others=>'0');
						DATA <= "0000";
           elsif rising_edge(clk) then
                 if start = '1' then
						    DATA <= Sin0;
							 Syndrome <= Sin7&Sin6&Sin5&Sin4&Sin3&Sin2&Sin1&Sin0;
                 else
							 if load = '1' then
							   DATA <= Syndrome(7 downto 4);
							   Syndrome <= Syndrome(3 downto 0)&Syndrome(31 downto 4);
							 else
								DATA <= Syndrome(3 downto 0);
							 end if;
					  end if;
           end if;
     end process;
     S_out <= DATA;
end Behavioral;