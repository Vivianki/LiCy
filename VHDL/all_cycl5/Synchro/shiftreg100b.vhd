library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity shiftreg100b is
    Port ( CLK : in  STD_LOGIC;
           D   : in  STD_LOGIC;
			  Reset_100b   : in  STD_LOGIC;
           shift_regiters_values : out STD_LOGIC_VECTOR(99 downto 0));
end shiftreg100b;
    
architecture Behavioral of shiftreg100b is
    signal shift_reg : STD_LOGIC_VECTOR(99 downto 0) := (others => '0');
begin
    -- shift register
    process (CLK, Reset_100b)
    begin
	    if (Reset_100b = '1') then
			shift_reg <= (others => '0');
		elsif (CLK'event and CLK = '1') then
					shift_reg(99 downto 1) <= shift_reg(98 downto 0);
					shift_reg(0) <= D;
end if;
    end process;
    shift_regiters_values <= shift_reg;

end Behavioral;
