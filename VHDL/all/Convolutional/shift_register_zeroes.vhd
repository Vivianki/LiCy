library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity shift_register_zeroes is
    Port ( D   : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
			  reset : in  STD_LOGIC;
           Q : out STD_LOGIC);
end shift_register_zeroes;

architecture Behavioral of shift_register_zeroes is
    signal shift_reg : STD_LOGIC_VECTOR(5 downto 0) := "000000";
begin

    
    -- shift register
    process (CLK)
    begin
			if reset = '0' then
			shift_reg <= "000000";
        elsif (rising_edge(CLK)) then
            shift_reg(4 downto 0) <= shift_reg(5 downto 1);
            shift_reg(5) <= D;
        end if;
    end process;
    
    Q <= shift_reg(0);

end Behavioral;