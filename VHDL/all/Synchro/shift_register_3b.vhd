library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity shift_register_3b is
    Port ( CLK : in  STD_LOGIC;
           D   : in  STD_LOGIC;
           Q : out STD_LOGIC);
end shift_register_3b;
    
architecture Behavioral of shift_register_3b is
    signal shift_reg : STD_LOGIC_VECTOR(2 downto 0) := "000";
begin
    -- shift register
    process (CLK)
    begin

		if (CLK'event and CLK = '1') then

					shift_reg(2) <= shift_reg(1);
					shift_reg(1) <= shift_reg(0);
					shift_reg(0) <= D;
end if;
    end process;
    Q <= shift_reg(2);

end Behavioral;
