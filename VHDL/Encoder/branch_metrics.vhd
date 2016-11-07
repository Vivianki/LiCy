
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;


entity branch_metrics is
  port(

       input_manchester : in std_logic_vector(3 downto 0);
       output_00a : out std_logic_vector(2 downto 0);
		 output_00b : out std_logic_vector(2 downto 0);
		 output_01a : out std_logic_vector(2 downto 0);
		 output_01b : out std_logic_vector(2 downto 0);
		 output_10a : out std_logic_vector(2 downto 0);
		 output_10b : out std_logic_vector(2 downto 0);
		 output_11a : out std_logic_vector(2 downto 0);
		 output_11b : out std_logic_vector(2 downto 0)
  );
end branch_metrics;

architecture behavior of branch_metrics is


begin 
	output_00a <= '0'&(input_manchester(3)&input_manchester(1) xor "00");
	output_00b <= '0'&(input_manchester(2)&input_manchester(0) xor "00");
	output_01a <= '0'&(input_manchester(3)&input_manchester(1) xor "01");
	output_01b <= '0'&(input_manchester(2)&input_manchester(0) xor "01");
	output_10a <= '0'&(input_manchester(3)&input_manchester(1) xor "10");
	output_10b <= '0'&(input_manchester(2)&input_manchester(0) xor "10");
	output_11a <= '0'&(input_manchester(3)&input_manchester(1) xor "11");
	output_11b <= '0'&(input_manchester(2)&input_manchester(0) xor "11");

end behavior;