
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
signal c : std_logic_vector(3 downto 0) :=(others => '0');  --initializing count to zero.
begin
count <= c;
process(clk,reset)
begin
if(clk'event and clk='1') then
-- when count reaches its maximum(that is 15) reset it to 0
if(c = "1111") then 
control <= '1';
c <="0000";
end if;
if (c = "1100") then
control <= '0';
end if;
c <= c+'1';  --increment count at every positive edge of clk.
end if;
if(reset='1') then  --when reset equal to '1' make count equal to 0.
c <=(others => '0');  -- c ="0000"
end if;
end process;

end Behavioral;