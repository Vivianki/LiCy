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
	count:	out std_logic_vector(12 downto 0);
	iterator_out: out  std_logic_vector(3 downto 0);
	carry:	out std_logic 
);
end address_calculator;

----------------------------------------------------

architecture behv of address_calculator is		 	  
	
	
	signal iterator: std_logic_vector(3 downto 0) := "0000";
	
begin

	process(clock, enable)
	variable Pre_Q: std_logic_vector(12 downto 0);
	variable Pre_Q2: std_logic_vector(12 downto 0);
	begin	
		Pre_Q2 := ("000000" & shift_depth);
		if enable = '0' then
			Pre_Q := "0000000000000";
			carry <= '0';
			iterator <= "0000";
		elsif (rising_edge(clock)) then
			if (iterator <= "1101") then
				Pre_Q := Pre_Q + ("000000" & depth); -- add to depth
				iterator <= iterator + 1;
				carry <= '0';
			elsif (iterator = "1110") then
				Pre_Q := Pre_Q + ("000000" & depth);
				carry <= '1';
				iterator <= iterator + 1;
			else
				Pre_Q := "0000000000000"+ Pre_Q2;
				carry <= '0';
				iterator <= "0001";
			end if;
		end if;
		count <= Pre_Q;
		Pre_Q2 := ("000000" & shift_depth);
	end process;
	
	iterator_out <= iterator;

end behv;

-----------------------------------------------------