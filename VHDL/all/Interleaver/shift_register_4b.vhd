library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity shift_register_4b is
    Port ( CLK : in  STD_LOGIC;
           D   : in  STD_LOGIC_VECTOR(3 downto 0);
           Q : out STD_LOGIC_VECTOR(3 downto 0));
end shift_register_4b;
    
architecture Behavioral of shift_register_4b is
    signal shift_reg : STD_LOGIC_VECTOR(3 downto 0);--arrayofvectors;
begin
    -- shift register
    process (CLK)
    begin

		if (CLK'event and CLK = '1') then
					shift_reg <= D;
end if;
    end process;
    Q <= shift_reg;

end Behavioral;