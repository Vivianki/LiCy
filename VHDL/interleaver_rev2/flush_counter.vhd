library ieee ;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

----------------------------------------------------

entity flush_counter is
port(
	clock:	in std_logic;
	enable: in std_logic;
  len: in std_logic_vector(11 downto 0);
  count:	out std_logic_vector(11 downto 0);
	carry:	out std_logic 
);
end flush_counter;

----------------------------------------------------

architecture behv of flush_counter is		 	  
	
  signal Pre_Q: std_logic_vector(11 downto 0);

  begin
    
  process(clock, enable)
    begin
    if (enable = '0') then
      Pre_Q <= "000000000000";
      carry <= '1';
    elsif (rising_edge(clock)) then
      if Pre_Q <= len then -- flush till end of length
        Pre_Q <= Pre_Q + 1;
        carry <= '0';
      else
        Pre_Q <= "000000000000";
        carry <= '1';		
      end if;
    end if;
  end process;	

  count <= Pre_Q;

end behv;

-----------------------------------------------------