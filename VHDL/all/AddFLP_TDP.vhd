library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity AddFLP_TDP is
    Port ( CLK : in  STD_LOGIC;
           D   : in  STD_LOGIC;
			  Reset_60b   : in  STD_LOGIC;
			  is_enviando_external : in STD_LOGIC;
           --shift_regiters_values : out STD_LOGIC_VECTOR(279 downto 0);
			  is_enviando : out STD_LOGIC;
			  reset_reg: out STD_LOGIC;
			  last_reg: out STD_LOGIC;
			  tdp_counter : out STD_LOGIC_VECTOR(8 downto 0)
			 );
end AddFLP_TDP;
    
architecture Behavioral of AddFLP_TDP is
    signal shift_reg : STD_LOGIC_VECTOR(279 downto 0) := "1010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010111101011001000000010100110111111101011001000000010100110111";
	 --signal counter : integer range 0 to 290 := 0;
	 signal counter : STD_LOGIC_VECTOR(8 downto 0);
begin
    -- shift register
    process (CLK, Reset_60b)
    begin
		if (rising_edge(CLK)) then
			if (Reset_60b = '0') then
				shift_reg <= "1010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010111101011001000000010100110111111101011001000000010100110111";
				is_enviando <= '0';
				counter <= (others => '0');
			elsif (Reset_60b = '1') then -- flag = 1
				if (counter > "100100010") then
					is_enviando <= '0';
					counter <= counter;
				else
					is_enviando <= '1';
					counter <= counter + 1;
				end if;
				shift_reg(279 downto 1) <= shift_reg(278 downto 0);
				shift_reg(0) <= D;
			end if;
		end if;
    end process;
    --shift_regiters_values <= shift_reg;
	 last_reg <= shift_reg(279);
	 tdp_counter <= counter;
	 reset_reg <= '0';
end Behavioral;
