library IEEE;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity scale_clock is
  port (
    clk_100khz : in  std_logic;
    rst       : in  std_logic;
    clk_100D3kHz   : out std_logic);
end scale_clock;

architecture Behavioral of scale_clock is

  signal prescaler : unsigned(2 downto 0) := "000";
  signal clk_100D3kHz_i : std_logic := '1';
begin

  gen_clk : process (clk_100khz, rst)
  begin  -- process gen_clk
    if rst = '1' then
      clk_100D3kHz_i   <= '1';
      prescaler   <= "000";
    elsif rising_edge(clk_100khz) then   -- rising clock edge
      if prescaler = "010" then     -- 125
        prescaler <= prescaler + "1";
        clk_100D3kHz_i   <= not clk_100D3kHz_i;
      elsif prescaler = "011" then
			prescaler <= (others => '0');
			clk_100D3kHz_i   <= not clk_100D3kHz_i;
		else 
        prescaler <= prescaler + "1";
      end if;
    end if;
  end process gen_clk;

clk_100D3kHz <= clk_100D3kHz_i;

end Behavioral;