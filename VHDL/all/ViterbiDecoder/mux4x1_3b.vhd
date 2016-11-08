library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4x1_3b is
    Port ( SEL : in  STD_LOGIC_VECTOR(1 DOWNTO 0);
           A   : in  STD_LOGIC_VECTOR(2 DOWNTO 0);
           B   : in  STD_LOGIC_VECTOR(2 DOWNTO 0);
           C   : in  STD_LOGIC_VECTOR(2 DOWNTO 0);
           D   : in  STD_LOGIC_VECTOR(2 DOWNTO 0);			  		  
           X   : out STD_LOGIC_VECTOR(2 DOWNTO 0)
			 );
end mux4x1_3b;

architecture behv of mux4x1_3b is
begin
    X <= A when SEL = "00" else
			B when SEL = "01" else
			C when SEL = "10" else
			D when SEL = "11" else "000";
end behv;