library ieee;
use ieee.std_logic_1164.all;

entity PHR_PSDU is
  port ( address : in std_logic_vector(4 downto 0);
         data : out std_logic_vector(3 downto 0) );
end entity PHR_PSDU;

architecture behavioral of PHR_PSDU is
  type mem is array ( 0 to 20) of std_logic_vector(3 downto 0);
  constant my_Rom : mem := (
		0 => "1000",
		1 => "0000",
		2 => "0000",
		3 => "0000",
		4 => "0000",
		5 => "0000",
		6 => "0100",
		7 => "0000",
		8 => "0000",
		9 => "0000",
		10 => "0000",
		11 => "0000",
		12 => "0000",
		13 => "0000",
		14 => "0100",
		15 => "0110",
		16 => "0000",
		17 => "0000",
		18 => "0000",
		19 => "0000",
		20 => "0000");
begin
   process (address)
   begin
     case address is
	when "00000" => data <= my_rom(0);
	when "00001" => data <= my_rom(1);
	when "00010" => data <= my_rom(2);
	when "00011" => data <= my_rom(3);
	when "00100" => data <= my_rom(4);
	when "00101" => data <= my_rom(5);
	when "00110" => data <= my_rom(6);
	when "00111" => data <= my_rom(7);
	when "01000" => data <= my_rom(8);
	when "01001" => data <= my_rom(9);
	when "01010" => data <= my_rom(10);
	when "01011" => data <= my_rom(11);
	when "01100" => data <= my_rom(12);
	when "01101" => data <= my_rom(13);
	when "01110" => data <= my_rom(14);
	when "01111" => data <= my_rom(15);
	when "10000" => data <= my_rom(16);
	when "10001" => data <= my_rom(17);
	when "10010" => data <= my_rom(18);
	when "10011" => data <= my_rom(19);
	when "10100" => data <= my_rom(20);
      when others => data <= "0000";
	 end case;
  end process;
end architecture behavioral;