library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity trellisTablev2 is
    port (
		  estado_atual : in std_logic_vector(5 downto 0);
		  prox_estado0 : out std_logic_vector(5 downto 0);
		  prox_estado1 : out std_logic_vector(5 downto 0);
		  output_esperado0 : out std_logic_vector(1 downto 0);
		  output_esperado1 : out std_logic_vector(1 downto 0)
    );
end entity;

architecture lut of trellisTablev2 is
begin
	process (estado_atual) is begin
		if (estado_atual = "000000") then
			prox_estado0 <= "000000";
			prox_estado1 <=  "100000";
			output_esperado0 <=  "00";
			output_esperado1	<= "11";
		elsif (estado_atual = "000001") then
			prox_estado0 <= "000000";
			prox_estado1 <=  "100000";
			output_esperado0 <=  "11";
			output_esperado1	<= "00";
		elsif (estado_atual = "000010") then
			prox_estado0 <= "000001";
			prox_estado1 <=  "100001";
			output_esperado0 <=  "10";
			output_esperado1	<= "01";
		elsif (estado_atual = "000011") then
			prox_estado0 <= "000001";
			prox_estado1 <=  "100001";
			output_esperado0 <=  "01";
			output_esperado1	<= "10";
		elsif (estado_atual = "000100") then
			prox_estado0 <= "000010";
			prox_estado1 <=  "100010";
			output_esperado0 <=  "00";
			output_esperado1	<= "11";
		elsif (estado_atual = "000101") then
			prox_estado0 <= "000010";
			prox_estado1 <=  "100010";
			output_esperado0 <=  "11";
			output_esperado1	<= "00";
		elsif (estado_atual = "000110") then
			prox_estado0 <= "000011";
			prox_estado1 <=  "100011";
			output_esperado0 <=  "10";
			output_esperado1	<= "01";
		elsif (estado_atual = "000111") then
			prox_estado0 <= "000011";
			prox_estado1 <=  "100011";
			output_esperado0 <=  "01";
			output_esperado1	<= "10";
		elsif (estado_atual = "001000") then
			prox_estado0 <= "000100";
			prox_estado1 <=  "100100";
			output_esperado0 <=  "11";
			output_esperado1	<= "00";
		elsif (estado_atual = "001001") then
			prox_estado0 <= "000100";
			prox_estado1 <=  "100100";
			output_esperado0 <=  "00";
			output_esperado1	<= "11";
		elsif (estado_atual = "001010") then
			prox_estado0 <= "000101";
			prox_estado1 <=  "100101";
			output_esperado0 <=  "01";
			output_esperado1	<= "10";
		elsif (estado_atual = "001011") then
			prox_estado0 <= "000101";
			prox_estado1 <=  "100101";
			output_esperado0 <=  "10";
			output_esperado1	<= "01";
		elsif (estado_atual = "001100") then
			prox_estado0 <= "000110";
			prox_estado1 <=  "100110";
			output_esperado0 <=  "11";
			output_esperado1	<= "00";
		elsif (estado_atual = "001101") then
			prox_estado0 <= "000110";
			prox_estado1 <=  "100110";
			output_esperado0 <=  "00";
			output_esperado1	<= "11";
		elsif (estado_atual = "001110") then
			prox_estado0 <= "000111";
			prox_estado1 <=  "100111";
			output_esperado0 <=  "01";
			output_esperado1	<= "10";
		elsif (estado_atual = "001111") then
			prox_estado0 <= "000111";
			prox_estado1 <=  "100111";
			output_esperado0 <=  "10";
			output_esperado1	<= "01";
		elsif (estado_atual = "010000") then
			prox_estado0 <= "001000";
			prox_estado1 <=  "101000";
			output_esperado0 <=  "11";
			output_esperado1	<= "00";
		elsif (estado_atual = "010001") then
			prox_estado0 <= "001000";
			prox_estado1 <=  "101000";
			output_esperado0 <=  "00";
			output_esperado1	<= "11";
		elsif (estado_atual = "010010") then
			prox_estado0 <= "001001";
			prox_estado1 <=  "101001";
			output_esperado0 <=  "01";
			output_esperado1	<= "10";
		elsif (estado_atual = "010011") then
			prox_estado0 <= "001001";
			prox_estado1 <=  "101001";
			output_esperado0 <=  "10";
			output_esperado1	<= "01";
		elsif (estado_atual = "010100") then
			prox_estado0 <= "001010";
			prox_estado1 <=  "101010";
			output_esperado0 <=  "11";
			output_esperado1	<= "00";
		elsif (estado_atual = "010101") then
			prox_estado0 <= "001010";
			prox_estado1 <=  "101010";
			output_esperado0 <=  "00";
			output_esperado1	<= "11";
		elsif (estado_atual = "010110") then
			prox_estado0 <= "001011";
			prox_estado1 <=  "101011";
			output_esperado0 <=  "01";
			output_esperado1	<= "10";
		elsif (estado_atual = "010111") then
			prox_estado0 <= "001011";
			prox_estado1 <=  "101011";
			output_esperado0 <=  "10";
			output_esperado1	<= "01";
		elsif (estado_atual = "011000") then
			prox_estado0 <= "001100";
			prox_estado1 <=  "101100";
			output_esperado0 <=  "00";
			output_esperado1	<= "11";
		elsif (estado_atual = "011001") then
			prox_estado0 <= "001100";
			prox_estado1 <=  "101100";
			output_esperado0 <=  "11";
			output_esperado1	<= "00";
		elsif (estado_atual = "011010") then
			prox_estado0 <= "001101";
			prox_estado1 <=  "101101";
			output_esperado0 <=  "10";
			output_esperado1	<= "01";
		elsif (estado_atual = "011011") then
			prox_estado0 <= "001101";
			prox_estado1 <=  "101101";
			output_esperado0 <=  "01";
			output_esperado1	<= "10";
		elsif (estado_atual = "011100") then
			prox_estado0 <= "001110";
			prox_estado1 <=  "101110";
			output_esperado0 <=  "00";
			output_esperado1	<= "11";
		elsif (estado_atual = "011101") then
			prox_estado0 <= "001110";
			prox_estado1 <=  "101110";
			output_esperado0 <=  "11";
			output_esperado1	<= "00";
		elsif (estado_atual = "011110") then
			prox_estado0 <= "001111";
			prox_estado1 <=  "101111";
			output_esperado0 <=  "10";
			output_esperado1	<= "01";
		elsif (estado_atual = "011111") then
			prox_estado0 <= "001111";
			prox_estado1 <=  "101111";
			output_esperado0 <=  "01";
			output_esperado1	<= "10";
		elsif (estado_atual = "100000") then
			prox_estado0 <= "010000";
			prox_estado1 <=  "110000";
			output_esperado0 <=  "01";
			output_esperado1	<= "10";
		elsif (estado_atual = "100001") then
			prox_estado0 <= "010000";
			prox_estado1 <=  "110000";
			output_esperado0 <=  "10";
			output_esperado1	<= "01";
		elsif (estado_atual = "100010") then
			prox_estado0 <= "010001";
			prox_estado1 <=  "110001";
			output_esperado0 <=  "11";
			output_esperado1	<= "00";
		elsif (estado_atual = "100011") then
			prox_estado0 <= "010001";
			prox_estado1 <=  "110001";
			output_esperado0 <=  "00";
			output_esperado1	<= "11";
		elsif (estado_atual = "100100") then
			prox_estado0 <= "010010";
			prox_estado1 <=  "110010";
			output_esperado0 <=  "01";
			output_esperado1	<= "10";
		elsif (estado_atual = "100101") then
			prox_estado0 <= "010010";
			prox_estado1 <=  "110010";
			output_esperado0 <=  "10";
			output_esperado1	<= "01";
		elsif (estado_atual = "100110") then
			prox_estado0 <= "010011";
			prox_estado1 <=  "110011";
			output_esperado0 <=  "11";
			output_esperado1	<= "00";
		elsif (estado_atual = "100111") then
			prox_estado0 <= "010011";
			prox_estado1 <=  "110011";
			output_esperado0 <=  "00";
			output_esperado1	<= "11";
		elsif (estado_atual = "101000") then
			prox_estado0 <= "010100";
			prox_estado1 <=  "110100";
			output_esperado0 <=  "10";
			output_esperado1	<= "01";
		elsif (estado_atual = "101001") then
			prox_estado0 <= "010100";
			prox_estado1 <=  "110100";
			output_esperado0 <=  "01";
			output_esperado1	<= "10";
		elsif (estado_atual = "101010") then
			prox_estado0 <= "010101";
			prox_estado1 <=  "110101";
			output_esperado0 <=  "00";
			output_esperado1	<= "11";
		elsif (estado_atual = "101011") then
			prox_estado0 <= "010101";
			prox_estado1 <=  "110101";
			output_esperado0 <=  "11";
			output_esperado1	<= "00";
		elsif (estado_atual = "101100") then
			prox_estado0 <= "010110";
			prox_estado1 <=  "110110";
			output_esperado0 <=  "10";
			output_esperado1	<= "01";
		elsif (estado_atual = "101101") then
			prox_estado0 <= "010110";
			prox_estado1 <=  "110110";
			output_esperado0 <=  "01";
			output_esperado1	<= "10";
		elsif (estado_atual = "101110") then
			prox_estado0 <= "010111";
			prox_estado1 <=  "110111";
			output_esperado0 <=  "00";
			output_esperado1	<= "11";
		elsif (estado_atual = "101111") then
			prox_estado0 <= "010111";
			prox_estado1 <=  "110111";
			output_esperado0 <=  "11";
			output_esperado1	<= "00";
		elsif (estado_atual = "110000") then
			prox_estado0 <= "011000";
			prox_estado1 <=  "111000";
			output_esperado0 <=  "10";
			output_esperado1	<= "01";
		elsif (estado_atual = "110001") then
			prox_estado0 <= "011000";
			prox_estado1 <=  "111000";
			output_esperado0 <=  "01";
			output_esperado1	<= "10";
		elsif (estado_atual = "110010") then
			prox_estado0 <= "011001";
			prox_estado1 <=  "111001";
			output_esperado0 <=  "00";
			output_esperado1	<= "11";
		elsif (estado_atual = "110011") then
			prox_estado0 <= "011001";
			prox_estado1 <=  "111001";
			output_esperado0 <=  "11";
			output_esperado1	<= "00";
		elsif (estado_atual = "110100") then
			prox_estado0 <= "011010";
			prox_estado1 <=  "111010";
			output_esperado0 <=  "10";
			output_esperado1	<= "01";
		elsif (estado_atual = "110101") then
			prox_estado0 <= "011010";
			prox_estado1 <=  "111010";
			output_esperado0 <=  "01";
			output_esperado1	<= "10";
		elsif (estado_atual = "110110") then
			prox_estado0 <= "011011";
			prox_estado1 <=  "111011";
			output_esperado0 <=  "00";
			output_esperado1	<= "11";
		elsif (estado_atual = "110111") then
			prox_estado0 <= "011011";
			prox_estado1 <=  "111011";
			output_esperado0 <=  "11";
			output_esperado1	<= "00";
		elsif (estado_atual = "111000") then
			prox_estado0 <= "011100";
			prox_estado1 <=  "111100";
			output_esperado0 <=  "01";
			output_esperado1	<= "10";
		elsif (estado_atual = "111001") then
			prox_estado0 <= "011100";
			prox_estado1 <=  "111100";
			output_esperado0 <=  "10";
			output_esperado1	<= "01";
		elsif (estado_atual = "111010") then
			prox_estado0 <= "011101";
			prox_estado1 <=  "111101";
			output_esperado0 <=  "11";
			output_esperado1	<= "00";
		elsif (estado_atual = "111011") then
			prox_estado0 <= "011101";
			prox_estado1 <=  "111101";
			output_esperado0 <=  "00";
			output_esperado1	<= "11";
		elsif (estado_atual = "111100") then
			prox_estado0 <= "011110";
			prox_estado1 <=  "111110";
			output_esperado0 <=  "01";
			output_esperado1	<= "10";
		elsif (estado_atual = "111101") then
			prox_estado0 <= "011110";
			prox_estado1 <=  "111110";
			output_esperado0 <=  "10";
			output_esperado1	<= "01";
		elsif (estado_atual = "111110") then
			prox_estado0 <= "011111";
			prox_estado1 <=  "111111";
			output_esperado0 <=  "11";
			output_esperado1	<= "00";
		elsif (estado_atual = "111111") then
			prox_estado0 <= "011111";
			prox_estado1 <=  "111111";
			output_esperado0 <=  "00";
			output_esperado1	<= "11";
		else
			prox_estado0 <= "000000";
			prox_estado1 <=  "000000";
			output_esperado0 <=  "00";
			output_esperado1	<= "00";
		end if;
   end process;
end architecture; 