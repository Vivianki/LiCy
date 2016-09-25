library IEEE;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity transformador100D3 is
  port (
    clk_100khz : in  std_logic;
    rst       : in  std_logic;
	 selector   : out std_logic_vector(2 downto 0);
    clk_100D3kHz   : out std_logic);
end transformador100D3;

architecture Behavioral of transformador100D3 is

  signal prescaler : std_logic_vector(2 downto 0) := "000";
  signal clk_100D3kHz_i : std_logic := '1';
begin

  gen_clk : process (clk_100khz, rst)
  begin  -- process gen_clk
    if rst = '1' then
      clk_100D3kHz_i   <= '1';
      prescaler   <= "000";
    elsif rising_edge(clk_100khz) then   -- rising clock edge
      if (prescaler = "001") then     -- 
        prescaler <= prescaler + "1";
        clk_100D3kHz_i   <= not clk_100D3kHz_i;
      elsif (prescaler = "010") then
			prescaler <= (others => '0');
			clk_100D3kHz_i   <= not clk_100D3kHz_i;
		else 
        prescaler <= prescaler + "1";
      end if;
    end if;
  end process gen_clk;

clk_100D3kHz <= clk_100D3kHz_i;
selector <= prescaler;
end Behavioral;