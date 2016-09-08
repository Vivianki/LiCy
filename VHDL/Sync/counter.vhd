	
library ieee ;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

----------------------------------------------------

entity counter is

generic(n: natural :=8);
port(	clock:	in std_logic;
	clear:	in std_logic;
	count:	out std_logic_vector(n-1 downto 0);
	carry:	out std_logic
);
end counter;

----------------------------------------------------

architecture behv of counter is		 	  
	
    signal Pre_Q: std_logic_vector(n-1 downto 0);

begin

    -- behavior describe the counter

    process(clock, clear)
    begin
	if clear = '1' then
 	    Pre_Q <= "00000000";
		 carry <= '0';
	elsif (clock='1' and clock'event) then
	    if Pre_Q <= "10011011" then
			Pre_Q <= Pre_Q + 1;
			carry <= '0';
		else
			Pre_Q <= "00000000";
			carry <= '1';		
	    end if;
	end if;
    end process;	
	
    -- concurrent assignment statement
    count <= Pre_Q;

end behv;

-----------------------------------------------------