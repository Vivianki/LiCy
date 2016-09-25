library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ParalellToSerial is
        Port ( reset,clk,start : in STD_LOGIC;
                   data_in:in STD_LOGIC_VECTOR (2 downto 0);
                   data_out:out STD_LOGIC);
end ParalellToSerial;

architecture Behavioral of ParalellToSerial is
       signal DST:STD_LOGIC_VECTOR (2 downto 0):=(others=>'0');
       signal DATA,STOP:STD_LOGIC:='0';
begin
       process(reset,clk)
       begin
             if reset='1' then
                   DST<=(others=>'0');
                   DATA<='0';
                   STOP<='0';
            elsif rising_edge(clk) then
                  if start='1' then
                       DATA<='1';--start bit
                       STOP<='1';--stop bit
                       DST<=data_in;
                  else
                       DATA<=DST(3);
                       STOP<='0';
                       DST<=DST(2 downto 0)&STOP;
                  end if;
            end if;
      end process;
      data_out<=DATA;
end Behavioral;