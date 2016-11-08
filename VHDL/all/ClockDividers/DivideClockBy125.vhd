library IEEE;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DivideClockBy125 is
  port (	Clk : in  std_logic;
			Rst: in std_logic;
			ClkDiv125   : out std_logic);
end DivideClockBy125;

architecture Behavioral of DivideClockBy125 is

  signal prescaler : unsigned(6 downto 0) := "0000000";
  signal ClkDiv125_i : std_logic := '0';
begin

	process (Clk, Rst)
	begin
		if Rst = '1' then
			ClkDiv125_i <= '1';
			prescaler <= "0000000";
		elsif rising_edge(Clk) then   -- rising clock edge
			if prescaler = "1111101" then     -- 125
				prescaler	<= (others => '0');
				ClkDiv125_i	<= not ClkDiv125_i;
			else
				prescaler <= prescaler + "1";
			end if;
		end if;
	end process;
	
	ClkDiv125 <= ClkDiv125_i;

end Behavioral;