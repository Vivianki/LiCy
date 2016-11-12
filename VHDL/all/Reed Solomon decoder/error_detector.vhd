library ieee ;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

----------------------------------------------------

entity error_detector is
port(
	clock:		in std_logic;
	reset:		in std_logic;
	enable: 		in std_logic;
	error:		out std_logic;
	count:		out std_logic_vector(3 DOWNTO 0));
end error_detector;

----------------------------------------------------

architecture behv of error_detector is		 	  
    signal Pre_Q: std_logic_vector(3 downto 0);

begin 
	transiciona: process(clock, reset) begin
		if reset = '1' then --! reset ativo alto
			Pre_Q <= "0000";
		elsif (rising_edge(clock)) then --! sensível a borda de subida				
			if enable = '0' then
		      Pre_Q <= Pre_Q + 1;
         end if;
		end if;
	end process;
	

	saida: process(Pre_Q) begin
		error <= '0';
		case Pre_Q is
				 when "0000" => -- 0
					  error <= '0';
				 when "0001" => -- 1
					  error <= '0';
				 when "0010" => -- 2
					  error <= '0';
				 when "0011" => -- 3
					  error <= '0';
				 when "0100" => -- 4
					  error <= '0';
				 when "0101" => -- 5
					  error <= '1';
				 when "0110" => -- 6
					  error <= '1';
				 when "0111" => -- 7
					  error <= '1';
				 when "1000" => -- 8
					  error <= '1';
				 when "1001" => -- 9
					  error <= '1';
				 when "1010" => -- 10
					  error <= '1';
				 when "1011" => -- 11
					  error <= '1';
				 when "1100" => -- 12
					  error <= '1';
				 when "1101" =>
					  error <= '1';
				 when "1110" =>
					  error <= '1';
				 when others => -- lock here
					  error <= '1';
		end case;
	end process;
	count <= Pre_Q;
end behv;

-----------------------------------------------------