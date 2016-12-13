library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity shift_register_60b is
    Port ( CLK : in  STD_LOGIC;
           D   : in  STD_LOGIC;
           Q : out STD_LOGIC_VECTOR(59 downto 0));
end shift_register_60b;
    
architecture Behavioral of shift_register_60b is
    signal shift_reg : STD_LOGIC_VECTOR(59 downto 0);--arrayofvectors;
begin
    -- shift register
    process (CLK)
    begin

		if (CLK'event and CLK = '1') then
					shift_reg(59 downto 1) <= shift_reg(58 downto 0);
					shift_reg(0) <= D;
end if;
    end process;
    Q <= shift_reg;

end Behavioral;