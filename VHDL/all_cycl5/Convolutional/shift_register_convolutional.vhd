library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity shift_register_convolutional is
    Port ( D   : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
			  reset : in  STD_LOGIC;
           Q1 : out STD_LOGIC;
			  Q2 : out STD_LOGIC;
			  Q3 : out STD_LOGIC;
			  Q4 : out STD_LOGIC;
			  Q5 : out STD_LOGIC;
			  Q6 : out STD_LOGIC
			  );
end shift_register_convolutional;

architecture Behavioral of shift_register_convolutional is
	signal shift_reg : STD_LOGIC_VECTOR(5 downto 0) := "000000";
begin
	-- shift register
	process (CLK, reset)
	begin
		if reset = '0' then
			shift_reg <= "000000";
		elsif (rising_edge(CLK)) then
			shift_reg(4 downto 0) <= shift_reg(5 downto 1);
			shift_reg(5) <= D;
		end if;
	end process;
		Q1 <= shift_reg(5);
		Q2 <= shift_reg(4);
		Q3 <= shift_reg(3);
		Q4 <= shift_reg(2);
		Q5 <= shift_reg(1);
		Q6 <= shift_reg(0);
end Behavioral;