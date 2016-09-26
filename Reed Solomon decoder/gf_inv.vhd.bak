library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity gf_inv is
    port (
		  x : in std_logic_vector(3 downto 0);
		  o : out std_logic_vector(3 downto 0)
    );
end entity;

architecture lut of gf_inv is
begin
	process (x) is begin
	if (x = "0000") then 
		o <= "0000";
 	elsif (x = "0001") then
		o <= "0001";
 	elsif (x = "0010") then
		o <= "1001";
 	elsif (x = "0011") then
		o <= "1110";
 	elsif (x = "0100") then
		o <= "1101";
 	elsif (x = "0101") then
		o <= "1011";
 	elsif (x = "0110") then
		o <= "0111";
 	elsif (x = "0111") then
		o <= "0110";
 	elsif (x = "1000") then
		o <= "1111";
 	elsif (x = "1001") then
		o <= "0010";
 	elsif (x = "1010") then
		o <= "1100";
 	elsif (x = "1011") then
		o <= "0101";
 	elsif (x = "1100") then
		o <= "1010";
 	elsif (x = "1101") then
		o <= "0100";
 	elsif (x = "1110") then
		o <= "0011";
 	elsif (x = "1111") then
		o <= "1000";
 	end if;
   end process;
end architecture; 