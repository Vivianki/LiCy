library ieee ;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

----------------------------------------------------

entity depth_counter_payload_deint is
port(
	clock:	in std_logic;
	enable: 	in std_logic;
	count:	out std_logic_vector(6 downto 0);
	depth : in std_logic_vector(6 downto 0);
	carry:	out std_logic 
);
end depth_counter_payload_deint;

----------------------------------------------------

architecture behv of depth_counter_payload_deint is		 	  
	
    signal Pre_Q: std_logic_vector(6 downto 0);

begin

	process(clock, enable)
	begin
		if enable = '0' then
			Pre_Q <= "0000000";
			carry <= '0';
		elsif (rising_edge(clock)) then
			if Pre_Q <= depth - 1 then
				Pre_Q <= Pre_Q + 1;
				carry <= '0';
			else
				Pre_Q <= "0001111";
				carry <= '1';		
			end if;
		end if;
	end process;	
	
	count <= Pre_Q;
	
end behv;

-----------------------------------------------------