library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_FF_VHDL is
   port
   (
      clk : in std_logic;
      rst : in std_logic;
      d : in std_logic;
      q : out std_logic
   );
end entity D_FF_VHDL;
 
architecture Behavioral of D_FF_VHDL is
begin
   process (clk, rst) is
   begin
		if (rst = '0') then   
			q <= '0';
      elsif rising_edge(clk) then  
			q <= d;
      end if;
   end process;
end architecture Behavioral;