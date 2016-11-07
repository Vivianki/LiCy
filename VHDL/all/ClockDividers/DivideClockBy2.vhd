library IEEE;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DivideClockBy2 is
	port (Clk: 		in  std_logic;
			Rst: 		in  std_logic;
			ClkDiv2: out std_logic);
end DivideClockBy2;

architecture Behavioral of DivideClockBy2 is
  signal ClkDiv2_i : std_logic := '0';
begin

	process (Clk, Rst)
	begin
		if Rst = '1' then
			ClkDiv2_i <= '0';
		elsif rising_edge(Clk) then   -- rising clock edge
			ClkDiv2_i <= not ClkDiv2_i;
		end if;
	end process;
	ClkDiv2 <= ClkDiv2_i;
	
end Behavioral;