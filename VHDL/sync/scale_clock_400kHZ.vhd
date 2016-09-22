library IEEE;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity scale_clock_400kHZ is
  port (
    clk_50Mhz : in  std_logic;
    rst       : in  std_logic;
    clk_400kHz   : out std_logic);
end scale_clock_400kHZ;

architecture Behavioral of scale_clock_400kHZ is

  signal prescaler : unsigned(7 downto 0) := "00000000";
  signal clk_200kHz_i : std_logic := '0';
begin

  gen_clk : process (clk_50Mhz, rst)
  begin  -- process gen_clk
    if rst = '1' then
      clk_200kHz_i   <= '0';
      prescaler   <= "00000000";
    elsif rising_edge(clk_50Mhz) then   -- rising clock edge
      if prescaler = "01111101" then     -- 125
        prescaler   <= (others => '0');
        clk_200kHz_i   <= not clk_200kHz_i;
      else
        prescaler <= prescaler + "1";
      end if;
    end if;
  end process gen_clk;

clk_400kHz <= clk_200kHz_i;

end Behavioral;