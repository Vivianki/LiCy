library ieee ;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

----------------------------------------------------

entity address_calculator is
port(	
	clock:	in std_logic;
	enable: 	in std_logic;
	depth: in std_logic_vector(6 downto 0);
	shift_depth: in std_logic_vector(6 downto 0);
	count:	out std_logic_vector(11 downto 0);
	iterator_out: out  std_logic_vector(3 downto 0);
	carry:	out std_logic 
);
end address_calculator;

----------------------------------------------------

architecture behv of address_calculator is		 	  
	
	signal Pre_Q: std_logic_vector(11 downto 0);
	signal iterator: std_logic_vector(3 downto 0) := "0000";
	
begin

	process(clock, enable)
	begin
		if enable = '0' then
			Pre_Q <= "000000000000";
			carry <= '0';
		elsif (rising_edge(clock)) then
			Pre_Q <= ("00000" & shift_depth); -- get shifted index
			if (iterator <= "1110") then
				Pre_Q <= Pre_Q + ("00000" & depth); -- add to depth
				iterator <= iterator + 1;
				carry <= '0';
			else
				Pre_Q <= "000000000000";
				carry <= '1';
				iterator <= "0000";
			end if;
		end if;
	end process;	

	count <= Pre_Q;
	iterator_out <= iterator;

end behv;

-----------------------------------------------------