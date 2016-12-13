library IEEE;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DivideClockBy4 is
	port (Clk: 		in  std_logic;
			Rst: in std_logic;
			ClkDiv4: out std_logic);
end DivideClockBy4;

architecture Behavioral of DivideClockBy4 is
  signal prescaler : std_logic_vector(2 downto 0) := "000";
  signal ClkDiv4_i : std_logic := '0';
begin

	process (Clk, Rst)
	begin
		if Rst = '1' then
			prescaler <= "000";
			ClkDiv4_i <= '1';
		elsif rising_edge(Clk) then
			if (prescaler = "001") then
				prescaler <= prescaler + "1";
				ClkDiv4_i   <= not ClkDiv4_i;
			elsif (prescaler = "011") then
				prescaler <= (others => '0');
				ClkDiv4_i   <= not ClkDiv4_i;
			else 
				prescaler <= prescaler + "1";
			end if;
		end if;
	end process;
	ClkDiv4 <= ClkDiv4_i;
	
end Behavioral;