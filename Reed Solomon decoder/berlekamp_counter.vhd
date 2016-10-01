library ieee ;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

----------------------------------------------------

entity berlekamp_counter is
port(
	clock:		in std_logic;
	enable:		in std_logic;
	Impar:		out std_logic;
	Count_4:	out std_logic;
	Count_8:	out std_logic 
);
end berlekamp_counter;

----------------------------------------------------

architecture behv of berlekamp_counter is		 	  
    signal Pre_Q: std_logic_vector(3 downto 0);

begin

	process(clock, enable)
	begin
		if enable = '0' then --! reset ativo alto
            Pre_Q <= "0000";
            Impar <= '0';
            Count_4 <= '0';
            Count_8 <= '0';
		elsif rising_edge(clock) then --! sensível a borda de subida
		      Pre_Q <= Pre_Q + 1;
            case Pre_Q is
                when "0000" => -- 0
                    Impar <= '0';
                    Count_4 <= '0';
                    Count_8 <= '0';
                when "0001" => -- 1
                    Impar <= '1';
                    Count_4 <= '0';
                    Count_8 <= '0';
                when "0010" => -- 2
                    Impar <= '0';
                    Count_4 <= '0';
                    Count_8 <= '0';
                when "0011" => -- 3
                    Impar <= '1';
                    Count_4 <= '0';
                    Count_8 <= '0';
                when "0100" => -- 4
                    Impar <= '0';
                    Count_4 <= '1';
                    Count_8 <= '0';
                when "0101" => -- 5
                    Impar <= '1';
                    Count_4 <= '0';
                    Count_8 <= '0';
                when "0110" => -- 6
                    Impar <= '0';
                    Count_4 <= '0';
                    Count_8 <= '0';
                when "0111" => -- 7
                    Impar <= '1';
                    Count_4 <= '0';
                    Count_8 <= '0';
                when "1000" => -- 8
                    Impar <= '0';
                    Count_4 <= '0';
                    Count_8 <= '1';
				    when "1001" => -- 9
						  Impar <= '1';
                    Count_4 <= '0';
                    Count_8 <= '0';
					 when "1010" => -- 10
						  Impar <= '0';
                    Count_4 <= '0';
                    Count_8 <= '0';
					 when "1011" => -- 11
						  Impar <= '1';
                    Count_4 <= '0';
                    Count_8 <= '0';
					 when "1100" => -- 12
						  Impar <= '0';
                    Count_4 <= '0';
                    Count_8 <= '0';
				    when "1101" =>
                    Impar <= '1';
                    Count_4 <= '0';
                    Count_8 <= '0';
				    when "1110" =>
                    Impar <= '0';
                    Count_4 <= '1';
                    Count_8 <= '0';
                when others => -- lock here
                    Impar <= '0';
                    Count_4 <= '0';
                    Count_8 <= '0';
						  Pre_Q <= "1111";
            end case;
		end if;
	end process;
	
end behv;

-----------------------------------------------------