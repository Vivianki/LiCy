library ieee ;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

----------------------------------------------------

entity syndrome_counter is
port(
	clock:		in std_logic;
	enable:		in std_logic;
	Count_16:	out std_logic;
	MuxSel: 		out std_logic
);
end syndrome_counter;

----------------------------------------------------

architecture behv of syndrome_counter is		 	  
    signal Pre_Q: std_logic_vector(3 downto 0);

begin

	process(clock, enable)
	begin
		if enable = '0' then 
				MuxSel <= '1';
            Pre_Q <= "0000";
            Count_16 <= '1';
		elsif rising_edge(clock) then --! sensível a borda de subida
		      Pre_Q <= Pre_Q + 1;
            case Pre_Q is
                when "0000" => -- 0
                    Count_16 <= '1';
						  MuxSel <= '0';
                when "0001" => -- 1
                    Count_16 <= '0';
						  MuxSel <= '0';
                when "0010" => -- 2
                    Count_16 <= '0';
						  MuxSel <= '0';
                when "0011" => -- 3
                    Count_16 <= '0';
						  MuxSel <= '0';
                when "0100" => -- 4
                    Count_16 <= '0';
						  MuxSel <= '0';
                when "0101" => -- 5
                    Count_16 <= '0';
						  MuxSel <= '0';
                when "0110" => -- 6
                    Count_16 <= '0';
						  MuxSel <= '0';
					 when "0111" => -- 7
                    Count_16 <= '0';
						  MuxSel <= '0';
                when "1000" => -- 8
                    Count_16 <= '0';
						  MuxSel <= '0';
				    when "1001" => -- 9
                    Count_16 <= '0';
						  MuxSel <= '0';
					 when "1010" => -- 10
                    Count_16 <= '0';
						  MuxSel <= '0';
					 when "1011" => -- 11
                    Count_16 <= '0';
						  MuxSel <= '0';
					 when "1100" => -- 12
                    Count_16 <= '0';
						  MuxSel <= '0';
				    when "1101" => -- 13
                    Count_16 <= '0';
						  MuxSel <= '0';
				    when "1110" => -- 14;
                    Count_16 <= '0';
						  MuxSel <= '0';
					 when "1111" =>
						  Count_16 <= '0';
						  MuxSel <= '0';
                when others => -- lock here
                    Count_16 <= '0';
						  MuxSel <= '0';
						  Pre_Q <= "0000";
            end case;
		end if;
	end process;
	
end behv;