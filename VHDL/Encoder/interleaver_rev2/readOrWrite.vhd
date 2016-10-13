library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity readOrWrite is
    Port ( depth_count_number   : in  STD_LOGIC_VECTOR(6 DOWNTO 0);
				depth_count_c : in  STD_LOGIC;
           readWrite   : out STD_LOGIC
			 );
end readOrWrite;

architecture behv of readOrWrite is
begin
    readWrite <= '0' when (depth_count_number = "0000000" and depth_count_c = '1') else '1';
end behv;