library ieee;
use ieee.std_logic_1164.all;

entity UART_INPUT is
  port ( clk : in std_logic;
			rst : in std_logic;
			to_write : out std_logic;
         data : out std_logic_vector(7 downto 0));
end entity UART_INPUT;

architecture behavioral of UART_INPUT is
	type mem is array ( 0 to 7 ) of std_logic_vector(7 downto 0);
	signal count : INTEGER range 0 to 8;
	signal Pre_Data : std_logic_vector(7 downto 0);
	signal Pre_Write : std_logic;
	
	constant my_rom : mem := (
		0 => "01100011", -- MSB downto LSB c
		1 => "00100011", -- #
		2 => "01100001", -- a
		3 => "01100010", -- b
		4 => "00100011", -- # MSB -> LSB
		5 => "00111110", -- >
		6 => "01100001", -- a
		7 => "00001010"); -- }
		-- c#ab#> }
begin
	process (clk, rst)
	begin
		if rst = '1' then
			Pre_Data <= "01100001";
			Pre_Write <= '0';
			count <= 0;
		elsif rising_edge(clk) then
			if count < 4 then 
				if Pre_Write = '0' then
					Pre_Data <= my_rom(count);
					count <= count + 1;
					Pre_Write <= '1';
				else 
					Pre_Write <= '0';
				end if;
			else 
				Pre_Write <= '0';
			end if;
		end if;
		data <= Pre_Data;
		to_write <= Pre_Write;
	end process;
end architecture behavioral;