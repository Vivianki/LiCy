library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity uart_fifo is
    Port ( D   : in  STD_LOGIC_VECTOR (3 downto 0);
           CLK : in  STD_LOGIC;
			  RST : in	STD_LOGIC;
           OUTPUT : out STD_LOGIC_VECTOR (7 downto 0));
end uart_fifo;

architecture Behavioral of uart_fifo is
    signal shift_reg : STD_LOGIC_VECTOR(7 downto 0);
	 signal odd : STD_LOGIC;
begin
    
    -- shift register
    process (CLK, RST)
    begin
		  if RST = '1' then
				shift_reg (3 downto 0) <= D;
				odd <= '0';
        elsif rising_edge(CLK) then
				if (odd = '0') then
					odd <= '1';
					shift_reg (7 downto 4) <= D;
				else 
					odd <= '0';
					shift_reg (3 downto 0) <= D;
				end if;
        end if;
    end process;
    
    -- hook up the shift register bits to UART OUTPUT
    OUTPUT <= shift_reg;

end Behavioral;