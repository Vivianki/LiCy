library IEEE;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity decoder_clock_speed is
  port (
    clk_50MHz : in  std_logic;
    rst       : in  std_logic;
    out_clk   : out std_logic);
end decoder_clock_speed;

architecture Behavioral of decoder_clock_speed is

  signal prescaler : std_logic_vector(6 downto 0) := "0000000";
  signal clk_i : std_logic := '1';
begin

	gen_clk : process (clk_50MHz, rst)
	begin
		if rst = '1' then
			clk_i <= '0';
			prescaler   <= "0000000";
		elsif rising_edge(clk_50MHz) then   -- rising clock edge
			if (prescaler < "1111101") then     -- 
				prescaler <= prescaler + "1";
				clk_i   <= not clk_i;
			else 
				prescaler   <= "0000000";
				clk_i   <= not clk_i;
			end if;
		end if;
	end process gen_clk;

	out_clk <= clk_i;
	
end Behavioral;