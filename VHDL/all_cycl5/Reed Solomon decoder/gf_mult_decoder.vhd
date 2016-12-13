library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity gf_mult_decoder is
    port (
		  x : in std_logic_vector(3 downto 0);
		  y : in std_logic_vector(3 downto 0);
		  o : out std_logic_vector(3 downto 0)
    );
end entity;

architecture lut of gf_mult_decoder is
begin
	process (x,y) is begin
		o <= "0000";
	if (x = "0000") then 
		o <= "0000";
 	elsif (x = "0001") then
		case y is
 			when "0000" => o <= "0000";
 			when "0001" => o <= "0001";
 			when "0010" => o <= "0010";
 			when "0011" => o <= "0011";
 			when "0100" => o <= "0100";
 			when "0101" => o <= "0101";
 			when "0110" => o <= "0110";
 			when "0111" => o <= "0111";
 			when "1000" => o <= "1000";
 			when "1001" => o <= "1001";
 			when "1010" => o <= "1010";
 			when "1011" => o <= "1011";
 			when "1100" => o <= "1100";
 			when "1101" => o <= "1101";
 			when "1110" => o <= "1110";
 			when "1111" => o <= "1111";
			when others => o <= "0000";
 		end case;
 	elsif (x = "0010") then
		case y is
 			when "0000" => o <= "0000";
 			when "0001" => o <= "0010";
 			when "0010" => o <= "0100";
 			when "0011" => o <= "0110";
 			when "0100" => o <= "1000";
 			when "0101" => o <= "1010";
 			when "0110" => o <= "1100";
 			when "0111" => o <= "1110";
 			when "1000" => o <= "0011";
 			when "1001" => o <= "0001";
 			when "1010" => o <= "0111";
 			when "1011" => o <= "0101";
 			when "1100" => o <= "1011";
 			when "1101" => o <= "1001";
 			when "1110" => o <= "1111";
 			when "1111" => o <= "1101";
			when others => o <= "0000";
 		end case;
 	elsif (x = "0011") then
		case y is
 			when "0000" => o <= "0000";
 			when "0001" => o <= "0011";
 			when "0010" => o <= "0110";
 			when "0011" => o <= "0101";
 			when "0100" => o <= "1100";
 			when "0101" => o <= "1111";
 			when "0110" => o <= "1010";
 			when "0111" => o <= "1001";
 			when "1000" => o <= "1011";
 			when "1001" => o <= "1000";
 			when "1010" => o <= "1101";
 			when "1011" => o <= "1110";
 			when "1100" => o <= "0111";
 			when "1101" => o <= "0100";
 			when "1110" => o <= "0001";
 			when "1111" => o <= "0010";
			when others => o <= "0000";
 		end case;
 	elsif (x = "0100") then
		case y is
 			when "0000" => o <= "0000";
 			when "0001" => o <= "0100";
 			when "0010" => o <= "1000";
 			when "0011" => o <= "1100";
 			when "0100" => o <= "0011";
 			when "0101" => o <= "0111";
 			when "0110" => o <= "1011";
 			when "0111" => o <= "1111";
 			when "1000" => o <= "0110";
 			when "1001" => o <= "0010";
 			when "1010" => o <= "1110";
 			when "1011" => o <= "1010";
 			when "1100" => o <= "0101";
 			when "1101" => o <= "0001";
 			when "1110" => o <= "1101";
 			when "1111" => o <= "1001";
			when others => o <= "0000";
 		end case;
 	elsif (x = "0101") then
		case y is
 			when "0000" => o <= "0000";
 			when "0001" => o <= "0101";
 			when "0010" => o <= "1010";
 			when "0011" => o <= "1111";
 			when "0100" => o <= "0111";
 			when "0101" => o <= "0010";
 			when "0110" => o <= "1101";
 			when "0111" => o <= "1000";
 			when "1000" => o <= "1110";
 			when "1001" => o <= "1011";
 			when "1010" => o <= "0100";
 			when "1011" => o <= "0001";
 			when "1100" => o <= "1001";
 			when "1101" => o <= "1100";
 			when "1110" => o <= "0011";
 			when "1111" => o <= "0110";
			when others => o <= "0000";
 		end case;
 	elsif (x = "0110") then
		case y is
 			when "0000" => o <= "0000";
 			when "0001" => o <= "0110";
 			when "0010" => o <= "1100";
 			when "0011" => o <= "1010";
 			when "0100" => o <= "1011";
 			when "0101" => o <= "1101";
 			when "0110" => o <= "0111";
 			when "0111" => o <= "0001";
 			when "1000" => o <= "0101";
 			when "1001" => o <= "0011";
 			when "1010" => o <= "1001";
 			when "1011" => o <= "1111";
 			when "1100" => o <= "1110";
 			when "1101" => o <= "1000";
 			when "1110" => o <= "0010";
 			when "1111" => o <= "0100";
			when others => o <= "0000";
 		end case;
 	elsif (x = "0111") then
		case y is
 			when "0000" => o <= "0000";
 			when "0001" => o <= "0111";
 			when "0010" => o <= "1110";
 			when "0011" => o <= "1001";
 			when "0100" => o <= "1111";
 			when "0101" => o <= "1000";
 			when "0110" => o <= "0001";
 			when "0111" => o <= "0110";
 			when "1000" => o <= "1101";
 			when "1001" => o <= "1010";
 			when "1010" => o <= "0011";
 			when "1011" => o <= "0100";
 			when "1100" => o <= "0010";
 			when "1101" => o <= "0101";
 			when "1110" => o <= "1100";
 			when "1111" => o <= "1011";
			when others => o <= "0000";
 		end case;
 	elsif (x = "1000") then
		case y is
 			when "0000" => o <= "0000";
 			when "0001" => o <= "1000";
 			when "0010" => o <= "0011";
 			when "0011" => o <= "1011";
 			when "0100" => o <= "0110";
 			when "0101" => o <= "1110";
 			when "0110" => o <= "0101";
 			when "0111" => o <= "1101";
 			when "1000" => o <= "1100";
 			when "1001" => o <= "0100";
 			when "1010" => o <= "1111";
 			when "1011" => o <= "0111";
 			when "1100" => o <= "1010";
 			when "1101" => o <= "0010";
 			when "1110" => o <= "1001";
 			when "1111" => o <= "0001";
			when others => o <= "0000";
 		end case;
 	elsif (x = "1001") then
		case y is
 			when "0000" => o <= "0000";
 			when "0001" => o <= "1001";
 			when "0010" => o <= "0001";
 			when "0011" => o <= "1000";
 			when "0100" => o <= "0010";
 			when "0101" => o <= "1011";
 			when "0110" => o <= "0011";
 			when "0111" => o <= "1010";
 			when "1000" => o <= "0100";
 			when "1001" => o <= "1101";
 			when "1010" => o <= "0101";
 			when "1011" => o <= "1100";
 			when "1100" => o <= "0110";
 			when "1101" => o <= "1111";
 			when "1110" => o <= "0111";
 			when "1111" => o <= "1110";
			when others => o <= "0000";
 		end case;
 	elsif (x = "1010") then
		case y is
 			when "0000" => o <= "0000";
 			when "0001" => o <= "1010";
 			when "0010" => o <= "0111";
 			when "0011" => o <= "1101";
 			when "0100" => o <= "1110";
 			when "0101" => o <= "0100";
 			when "0110" => o <= "1001";
 			when "0111" => o <= "0011";
 			when "1000" => o <= "1111";
 			when "1001" => o <= "0101";
 			when "1010" => o <= "1000";
 			when "1011" => o <= "0010";
 			when "1100" => o <= "0001";
 			when "1101" => o <= "1011";
 			when "1110" => o <= "0110";
 			when "1111" => o <= "1100";
			when others => o <= "0000";
 		end case;
 	elsif (x = "1011") then
		case y is
 			when "0000" => o <= "0000";
 			when "0001" => o <= "1011";
 			when "0010" => o <= "0101";
 			when "0011" => o <= "1110";
 			when "0100" => o <= "1010";
 			when "0101" => o <= "0001";
 			when "0110" => o <= "1111";
 			when "0111" => o <= "0100";
 			when "1000" => o <= "0111";
 			when "1001" => o <= "1100";
 			when "1010" => o <= "0010";
 			when "1011" => o <= "1001";
 			when "1100" => o <= "1101";
 			when "1101" => o <= "0110";
 			when "1110" => o <= "1000";
 			when "1111" => o <= "0011";
			when others => o <= "0000";
 		end case;
 	elsif (x = "1100") then
		case y is
 			when "0000" => o <= "0000";
 			when "0001" => o <= "1100";
 			when "0010" => o <= "1011";
 			when "0011" => o <= "0111";
 			when "0100" => o <= "0101";
 			when "0101" => o <= "1001";
 			when "0110" => o <= "1110";
 			when "0111" => o <= "0010";
 			when "1000" => o <= "1010";
 			when "1001" => o <= "0110";
 			when "1010" => o <= "0001";
 			when "1011" => o <= "1101";
 			when "1100" => o <= "1111";
 			when "1101" => o <= "0011";
 			when "1110" => o <= "0100";
 			when "1111" => o <= "1000";
			when others => o <= "0000";
 		end case;
 	elsif (x = "1101") then
		case y is
 			when "0000" => o <= "0000";
 			when "0001" => o <= "1101";
 			when "0010" => o <= "1001";
 			when "0011" => o <= "0100";
 			when "0100" => o <= "0001";
 			when "0101" => o <= "1100";
 			when "0110" => o <= "1000";
 			when "0111" => o <= "0101";
 			when "1000" => o <= "0010";
 			when "1001" => o <= "1111";
 			when "1010" => o <= "1011";
 			when "1011" => o <= "0110";
 			when "1100" => o <= "0011";
 			when "1101" => o <= "1110";
 			when "1110" => o <= "1010";
 			when "1111" => o <= "0111";
			when others => o <= "0000";
 		end case;
 	elsif (x = "1110") then
		case y is
 			when "0000" => o <= "0000";
 			when "0001" => o <= "1110";
 			when "0010" => o <= "1111";
 			when "0011" => o <= "0001";
 			when "0100" => o <= "1101";
 			when "0101" => o <= "0011";
 			when "0110" => o <= "0010";
 			when "0111" => o <= "1100";
 			when "1000" => o <= "1001";
 			when "1001" => o <= "0111";
 			when "1010" => o <= "0110";
 			when "1011" => o <= "1000";
 			when "1100" => o <= "0100";
 			when "1101" => o <= "1010";
 			when "1110" => o <= "1011";
 			when "1111" => o <= "0101";
			when others => o <= "0000";
 		end case;
 	elsif (x = "1111") then
		case y is
 			when "0000" => o <= "0000";
 			when "0001" => o <= "1111";
 			when "0010" => o <= "1101";
 			when "0011" => o <= "0010";
 			when "0100" => o <= "1001";
 			when "0101" => o <= "0110";
 			when "0110" => o <= "0100";
 			when "0111" => o <= "1011";
 			when "1000" => o <= "0001";
 			when "1001" => o <= "1110";
 			when "1010" => o <= "1100";
 			when "1011" => o <= "0011";
 			when "1100" => o <= "1000";
 			when "1101" => o <= "0111";
 			when "1110" => o <= "0101";
 			when "1111" => o <= "1010";
			when others => o <= "0000";
 		end case;
	else 
		o <= "0000";
 	end if;
   end process;
end architecture; 