	
library ieee ;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

----------------------------------------------------

entity counter3 is

port(	clock:	in std_logic;
	clear:	in std_logic;
	count:	out std_logic_vector(1 downto 0)
);
end counter3;

----------------------------------------------------

architecture behv of counter3 is		 	  
	
    signal Pre_Q: std_logic_vector(1 downto 0);

begin

    -- behavior describe the counter

    process(clock, clear)
    begin
	if clear = '1' then
 	    Pre_Q <= "00";
	elsif (clock='1' and clock'event) then
	    if Pre_Q <= "01" then
			Pre_Q <= Pre_Q + 1;
		else
			Pre_Q <= "00";	
	    end if;
	end if;
    end process;	
	
    -- concurrent assignment statement
    count <= Pre_Q;

end behv;

-----------------------------------------------------