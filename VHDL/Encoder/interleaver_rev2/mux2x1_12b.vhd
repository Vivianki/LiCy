library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2x1_12b is
    Port ( SEL : in  STD_LOGIC;
           A   : in  STD_LOGIC_VECTOR(11 DOWNTO 0);
           B   : in  STD_LOGIC_VECTOR(11 DOWNTO 0);
           X   : out STD_LOGIC_VECTOR(11 DOWNTO 0)
			 );
end mux2x1_12b;

architecture behv of mux2x1_12b is
begin
    X <= A when (SEL = '1') else B;
end behv;