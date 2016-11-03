library IEEE;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity transformador100D2 is
  port (
    clk_100khz : in  std_logic;
    rst       : in  std_logic;
	 selector   : out std_logic_vector(2 downto 0);
    clk_100D2kHz   : out std_logic);
end transformador100D2;

architecture Behavioral of transformador100D2 is

  signal prescaler : std_logic_vector(2 downto 0) := "000";
  signal clk_100D3kHz_i : std_logic := '1';
begin

  gen_clk : process (clk_100khz, rst)
  begin  -- process gen_clk
    if rst = '1' then
      clk_100D3kHz_i   <= '1';
      prescaler   <= "000";
    elsif rising_edge(clk_100khz) then   -- rising clock edge
			clk_100D3kHz_i   <= not clk_100D3kHz_i;
			prescaler   <= "000";
    end if;
  end process gen_clk;

clk_100D2kHz <= clk_100D3kHz_i;
selector <= prescaler;
end Behavioral;