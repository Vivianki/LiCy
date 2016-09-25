
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;


entity compare is
  port(

       estado0 : in std_logic_vector(5 downto 0);
       estado1 : in std_logic_vector(5 downto 0);
		 distance0 : in std_logic_vector(9 downto 0);
		 distance1 : in std_logic_vector(9 downto 0);
		 distanceNow : in std_logic_vector(9 downto 0);
		 equal : out std_logic;
		 updatedDistance0 : out std_logic_vector(9 downto 0); --menor distancia
		 updatedDistance1 : out std_logic_vector(9 downto 0);
		 nextState0 : out std_logic_vector(5 downto 0);
		 nextState1 : out std_logic_vector(5 downto 0)
  );
end compare;

architecture behavior of compare is

begin
---- Processes ----	

process (estado0,estado1,distance0,distance1)

begin 
	if (distance0 < distance1) then
		updatedDistance0 <= std_logic_vector(unsigned(distanceNow) + unsigned(distance0));
		updatedDistance1 <= std_logic_vector(unsigned(distanceNow) + unsigned(distance1));
		equal <= '0';
		nextState0 <= estado0;
		nextState1 <= estado1;
	elsif (distance0 > distance1) then
		updatedDistance0	 <= std_logic_vector(unsigned(distanceNow) + unsigned(distance1));
		updatedDistance1 <= std_logic_vector(unsigned(distanceNow) + unsigned(distance0));
		equal <= '1';
		nextState0 <= estado1;
		nextState1 <= estado0;
	elsif (distance0 = distance1) then
		updatedDistance0 <= std_logic_vector(unsigned(distanceNow) + unsigned(distance0));
		updatedDistance1 <= std_logic_vector(unsigned(distanceNow) + unsigned(distance1));
		equal <= '0';
		nextState0 <= estado0;
		nextState1 <= estado1;
	else 
		updatedDistance0 <= std_logic_vector(unsigned(distanceNow) + unsigned(distance0));
		updatedDistance1 <= std_logic_vector(unsigned(distanceNow) + unsigned(distance1));
		equal <= '0';
		nextState0 <= estado0;
		nextState1 <= estado1;
	end if;
end process;

end behavior;