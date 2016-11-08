
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;


entity comparev2 is
  port(

       estado0 : in std_logic_vector(5 downto 0);
       estado1 : in std_logic_vector(5 downto 0);
		 distance0 : in std_logic_vector(2 downto 0);
		 distance1 : in std_logic_vector(2 downto 0);
		 equal : out std_logic;
		 nextState : out std_logic_vector(5 downto 0)
  );
end comparev2;

architecture behavior of comparev2 is

begin
---- Processes ----	

process (estado0,estado1,distance0,distance1)

begin 
	if (distance0 < distance1) then
		equal <= '0';
		nextState <= estado0;
	elsif (distance0 > distance1) then
		equal <= '1';
		nextState <= estado1;
	elsif (distance0 = distance1) then
		equal <= '0';
		nextState <= estado0;
	else 
		equal <= '0';
		nextState <= estado0;
	end if;
end process;

end behavior;