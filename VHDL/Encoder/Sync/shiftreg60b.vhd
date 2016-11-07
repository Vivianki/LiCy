library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity shiftreg60b is
    Port ( CLK : in  STD_LOGIC;
           D   : in  STD_LOGIC;
			  Reset_60b   : in  STD_LOGIC;
           shift_regiters_values : out STD_LOGIC_VECTOR(59 downto 0));
end shiftreg60b;
    
architecture Behavioral of shiftreg60b is
    signal shift_reg : STD_LOGIC_VECTOR(59 downto 0) := (others => '0');
begin
    -- shift register
    process (CLK, Reset_60b)
    begin
	    if (Reset_60b = '1') then
			shift_reg <= (others => '0');
		elsif (CLK'event and CLK = '1') then
					shift_reg(59 downto 1) <= shift_reg(58 downto 0);
					shift_reg(0) <= D;
end if;
    end process;
    shift_regiters_values <= shift_reg;

end Behavioral;
