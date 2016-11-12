library ieee;
use ieee.std_logic_1164.all;

entity PHR_PSDU is
	port (address : in std_logic_vector(4 downto 0);
			Q : out std_logic_vector(3 downto 0));
end entity PHR_PSDU;

architecture Behavioral of PHR_PSDU is
  type mem is array ( 0 to 20) of std_logic_vector(3 downto 0);
  constant my_rom : mem := (
		0 => "1000",
		1 => "0000", -- era tudo 0
		2 => "0000", -- era tudo 0
		3 => "0000", -- era tudo 0
		4 => "0000", -- era tudo 0
		5 => "0000", -- era tudo 0
		6 => "0100",
		7 => "0000", -- era tudo 0
		8 => "0000", -- era tudo 0
		9 => "0000", -- era tudo 0
		10 => "0000", -- era tudo 0
		11 => "0000", -- era tudo 0
		12 => "0000", -- era tudo 0
		13 => "0000", -- era tudo 0
		14 => "0100",
		15 => "0110",
		16 => "0000", -- era tudo 0
		17 => "0000", -- era tudo 0
		18 => "0000", -- era tudo 0
		19 => "0000", -- era tudo 0
		20 => "0000"); -- era tudo 0
	begin
		process (address)
		begin
			case address is
				when "00000" => Q <= my_rom(0);
				when "00001" => Q <= my_rom(1);
				when "00010" => Q <= my_rom(2);
				when "00011" => Q <= my_rom(3);
				when "00100" => Q <= my_rom(4);
				when "00101" => Q <= my_rom(5);
				when "00110" => Q <= my_rom(6);
				when "00111" => Q <= my_rom(7);
				when "01000" => Q <= my_rom(8);
				when "01001" => Q <= my_rom(9);
				when "01010" => Q <= my_rom(10);
				when "01011" => Q <= my_rom(11);
				when "01100" => Q <= my_rom(12);
				when "01101" => Q <= my_rom(13);
				when "01110" => Q <= my_rom(14);
				when "01111" => Q <= my_rom(15);
				when "10000" => Q <= my_rom(16);
				when "10001" => Q <= my_rom(17);
				when "10010" => Q <= my_rom(18);
				when "10011" => Q <= my_rom(19);
				when "10100" => Q <= my_rom(20);
				when others => Q <= "0000";
			end case;
		end process;
end architecture Behavioral;