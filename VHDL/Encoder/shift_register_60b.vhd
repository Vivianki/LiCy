library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity shift_register_60b is
    Port ( CLK : in  STD_LOGIC;
           D   : in  STD_LOGIC;
			  Reset_60b   : in  STD_LOGIC;
			  is_enviando_external : in STD_LOGIC;
           shift_regiters_values : out STD_LOGIC_VECTOR(169 downto 0);
			  is_enviando_value : out STD_LOGIC;
			  reset_reg: out STD_LOGIC);
end shift_register_60b;
    
architecture Behavioral of shift_register_60b is
    signal shift_reg : STD_LOGIC_VECTOR(169 downto 0) := "10101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010111101011001000000010100110111111101011001000000010100110111";
	 signal counter : integer range 0 to 169 := 0;
	 signal is_enviando : std_logic := '0';
begin
    -- shift register
    process (CLK, Reset_60b)
    begin
		if (rising_edge(CLK)) then
			if (Reset_60b = '0' and is_enviando = '0') then
				shift_reg <= "10101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010111101011001000000010100110111111101011001000000010100110111";
				is_enviando <= '0';
			elsif (Reset_60b = '1' and (is_enviando = '0' OR is_enviando = '1')) then -- flag = 1
				is_enviando <= '1';
				counter <= 0; -- count
				-- shift reg
				shift_reg(169 downto 1) <= shift_reg(168 downto 0);
				shift_reg(0) <= D;
			elsif (Reset_60b = '0' and is_enviando = '1') then
				counter <= counter + 1;
				-- shift reg
				shift_reg(169 downto 1) <= shift_reg(168 downto 0);
				shift_reg(0) <= D;
				if (counter > 170) then
					is_enviando <= '0';
				end if;
			end if;
		end if;
    end process;
    shift_regiters_values <= shift_reg;
	 is_enviando_value <= is_enviando;
end Behavioral;
