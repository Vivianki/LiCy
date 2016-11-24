library ieee ;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

----------------------------------------------------

entity address_calculator_payload_deint is
port(	
	clock:	in std_logic;
	enable: 	in std_logic;
	depth: in std_logic_vector(6 downto 0);
	shift_depth: in std_logic_vector(6 downto 0);
	count:	out std_logic_vector(12 downto 0);
	iterator_out: out  std_logic_vector(6 downto 0);
	carry:	out std_logic;
	select_clock:	out std_logic 
);
end address_calculator_payload_deint;

----------------------------------------------------

architecture behv of address_calculator_payload_deint is		 	  
	
	
	signal iterator: std_logic_vector(6 downto 0) := "0000000";
	
begin

	process(clock, enable, shift_depth)
	variable Pre_Q: std_logic_vector(12 downto 0);
	variable Pre_Q2: std_logic_vector(12 downto 0);
	begin	
		Pre_Q2 := ("000000" & shift_depth);
		if enable = '0' then
			Pre_Q := "0000000011110";
			carry <= '0';
			iterator <= "0000000";
			select_clock <= '0';	
		elsif (rising_edge(clock)) then
			if (depth = "0000001") then
				if (Pre_Q2 = "0000000001110") then
					Pre_Q := Pre_Q ;
					carry <= '1';
					iterator <= iterator;
					select_clock <= '1';	
				elsif (Pre_Q2 > "0000000001110") then
					Pre_Q := "0000000001111" ;
					carry <= '1';
					iterator <= iterator;
					select_clock <= '0';	
				else 
					Pre_Q := Pre_Q + 1;
					carry <= '1';
					iterator <= iterator + 1;
					select_clock <= '1';
				end if;	
			else
				if (iterator = "0000000") then
					Pre_Q := Pre_Q + "000000001111";
					carry <= '1';
					iterator <= iterator + 1;
					select_clock <= '0';	
				elsif(iterator < depth - 1) then
					Pre_Q := "0000000000000"+ Pre_Q2;
					carry <= '0';
					iterator <= iterator + 1;
					select_clock <= '0';	
				else
					Pre_Q := "0000000000000"+ Pre_Q2;
					carry <= '0';
					iterator <= "0000000";
					select_clock <= '0';	
				end if;	
			end if;
		end if;
		count <= Pre_Q;
		Pre_Q2 := ("000000" & shift_depth);
	end process;
	
	iterator_out <= iterator;

end behv;

-----------------------------------------------------