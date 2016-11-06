	
library ieee ;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

----------------------------------------------------

entity dummy_uart_data is


port(	
	output : out std_logic_vector(31 downto 0)
);
end dummy_uart_data;

----------------------------------------------------

architecture behv of dummy_uart_data is		 	  
begin
	output <= "00000000000000000000000000100011"; -- LSB 35 #
			   --AAAAAAAABBBBBBBBCCCCCCCCDDDDDDDD
end behv;
