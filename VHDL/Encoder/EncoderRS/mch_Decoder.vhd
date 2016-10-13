
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity manchesterDecoder is
port (clk : in std_logic; 
      input : out std_logic;
      output :in std_logic;
     );
end manchesterDecoder;

architecture Behavioral of manchesterDecoder is
	signal c : std_logic_vector(3 downto 0) :=(others => '0');  --initializing count to zero.
	begin
		count <= c;
		process(clk,reset)
			begin
			if(clk'event and clk='1') then
				-- when count reaches its maximum(that is 15) reset it to 0
				if(c = "1111") then 
					c <="0001";
				elsif (c = "1110") then 
					control1 <= '1';
				end if;
				c <= c + '1';  --increment count at every positive edge of clk.
				if (c = "1010") then -- update a number before?
					control1 <= '0';
				end if;
			end if;
			if(clk'event and clk='0') then
				if (c = "1011") then -- update a number before?
					control2 <= '0';
				elsif (c = "0000") then 
					control2 <= '1';
				end if;
			end if;
			if(reset='1') then  -- async reset
				c <=(others => '0');  -- c ="0000"
			end if;
	end process;

end Behavioral;