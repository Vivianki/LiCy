
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sinalControle is
port (clk : in std_logic; 
      count : out std_logic_vector(3 downto 0);
      reset :in std_logic;
		control:out std_logic
     );
end sinalControle;

architecture Behavioral of sinalControle is
	signal c : std_logic_vector(3 downto 0);
	begin
		
		process(clk,reset)
			begin
			if(reset='0') then  -- async reset
				c <="0001";  -- c ="0000"
				control <= '1';
			elsif(clk'event and clk='1') then
				-- when count reaches its maximum(that is 15) reset it to 0
				if(c = "1111") then 
					c <="0001";
					control <= '1';
				elsif (c >= "0111") then 
					control <= '0';
					c <= c + '1';
				else
					control <= '1';
					c <= c + '1';  --increment count at every positive edge of clk.
				end if;
			end if;

	end process;
		count <= c;
end Behavioral;