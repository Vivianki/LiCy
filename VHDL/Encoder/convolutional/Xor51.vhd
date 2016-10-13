library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xor5x1 is
    Port ( A1 : in  STD_LOGIC;      
           A2 : in  STD_LOGIC;      
           A3 : in  STD_LOGIC;     
           A4 : in  STD_LOGIC;     
           A5 : in  STD_LOGIC;      
           B : out  STD_LOGIC);    
end xor5x1;

architecture Behavioral of xor5x1 is
begin
B <= A1 xor A2 xor A3 xor A4 xor A5;		
end Behavioral;