library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity shiftreg200b is
    Port ( CLK : in  STD_LOGIC;
           D   : in  STD_LOGIC;
			  Reset_200b   : in  STD_LOGIC;
           shift_regiters_values : out STD_LOGIC_VECTOR(199 downto 0));
end shiftreg200b;
    
architecture Behavioral of shiftreg200b is
    signal shift_reg : STD_LOGIC_VECTOR(199 downto 0);
begin
    -- shift register
    process (CLK, Reset_200b)
    begin
		if Reset_200b = '1' then
			shift_reg <= (others => '0');
		elsif rising_edge(CLK) then
			shift_reg(199 downto 1) <= shift_reg(198 downto 0);
			shift_reg(0) <= D;
		end if;
    end process;
    shift_regiters_values <= shift_reg;

end Behavioral;
