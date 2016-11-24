library ieee ;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

----------------------------------------------------

entity counter_PHR_PSDU is
	port(	Clk:	in std_logic;
			Flag:	in std_logic;
			Q:	out std_logic_vector(4 downto 0) );
end counter_PHR_PSDU;

----------------------------------------------------

architecture Behavioral of counter_PHR_PSDU is		 	  
	
    signal Pre_Q: std_logic_vector(4 downto 0);
	 signal iterator: std_logic_vector(3 downto 0);

begin

    -- behavior describe the counter
	process(Clk, Flag)
	begin
		if Flag = '0' then
			Pre_Q <= "00000";
			iterator <="0000";
		elsif (rising_edge(Clk)) then
			if Pre_Q > "11010" then
				Pre_Q <= Pre_Q;
			else
				if iterator < "0110" then -- menor que 6
					Pre_Q <= Pre_Q + 1;
					iterator <= iterator + 1;
				elsif iterator = "1110" then -- igual a 14
					Pre_Q <= Pre_Q + 1;
					iterator <= "0000";	
				else -- maior ou igual a 6, diferente de 14
					Pre_Q <= Pre_Q;
					iterator <= iterator + 1;
				end if;
			end if;
		end if;
	end process;	

	-- concurrent assignment statement
	Q <= Pre_Q;

end Behavioral;
