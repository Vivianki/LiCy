library IEEE;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity divisor_frequencia is
  port (
    clk_50Mhz : in  std_logic;
    clk_10Mhz   : out std_logic);
end divisor_frequencia;

architecture Behavioral of divisor_frequencia is

  signal prescaler : unsigned(2 downto 0) := "000";
  signal clk_10Mhz_i : std_logic := '0';
begin

  gen_clk : process (clk_50Mhz)
  begin  -- process gen_clk

    if rising_edge(clk_50Mhz) then   -- rising clock edge
      if prescaler = "100" then     -- 5
        prescaler   <= (others => '0');
        clk_10Mhz_i   <= not clk_10Mhz_i;
      else
        prescaler <= prescaler + "1";
      end if;
    end if;
  end process gen_clk;

clk_10Mhz <= clk_10Mhz_i;

end Behavioral;