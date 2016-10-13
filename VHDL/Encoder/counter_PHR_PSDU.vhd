	
library ieee ;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

----------------------------------------------------

entity counter_PHR_PSDU is


port(	clock:	in std_logic;
	clear:	in std_logic;
	count:	out std_logic_vector(4 downto 0);
	carry:	out std_logic
);
end counter_PHR_PSDU;

----------------------------------------------------

architecture behv of counter_PHR_PSDU is		 	  
	
    signal Pre_Q: std_logic_vector(4 downto 0);
	 signal iterator: std_logic_vector(3 downto 0);

begin

    -- behavior describe the counter

    process(clock, clear)
    begin
	if clear = '1' then
 	    Pre_Q <= "00000";
		 carry <= '0';
		 iterator <="0000";
	elsif (clock='1' and clock'event) then
	    if iterator <="0101" then
			Pre_Q <= Pre_Q + 1;
			carry <= '0';
			iterator <= iterator + 1;
		  elsif iterator ="1101" then
			Pre_Q <= Pre_Q;
			carry <= '1';
			iterator <= "0000";	
			else
			Pre_Q <= Pre_Q;
			carry <= '0';
			iterator <= iterator + 1;
	    end if;
	end if;
    end process;	
	
    -- concurrent assignment statement
    count <= Pre_Q;

end behv;
