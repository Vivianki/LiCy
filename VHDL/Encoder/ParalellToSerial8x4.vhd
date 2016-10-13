library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ParalellToSerial8x4 is
        Port ( reset,clk,start : in STD_LOGIC;
                   data_in:in STD_LOGIC_VECTOR (15 downto 0);
                   data_out:out STD_LOGIC_VECTOR (3 downto 0));
end ParalellToSerial8x4;

architecture Behavioral of ParalellToSerial8x4 is
       signal DST:STD_LOGIC_VECTOR (7 downto 0):=(others=>'0');
       signal DATA:STD_LOGIC_VECTOR (3 downto 0):=(others=>'0');
		 signal STOP:STD_LOGIC_VECTOR (3 downto 0):=(others=>'0');
begin
       process(reset,clk)
       begin
             if reset='1' then
                   DST<=(others=>'0');
                   DATA<="0000";
                   STOP<="0000";
            elsif rising_edge(clk) then
                  if start='1' then
                       DATA<="0000";--start bit
                       STOP<="0000";--stop bit
                       DST<=data_in;
                  else
                       DATA<=DST(15 downto 12);
                       STOP<="0000";
                       DST<=DST(11 downto 0)&STOP;
                  end if;
            end if;
      end process;
      data_out<=DATA;
end Behavioral;