LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY shift_register4x8 IS
	PORT(
		Clk		: IN  STD_LOGIC; -- RsDec Clock
		Rst 		: IN  STD_LOGIC;
		Input 	: IN  STD_LOGIC_VECTOR(23 downto 0); -- receive from RSDec
		Busy		: IN	STD_LOGIC;
		Output	: OUT STD_LOGIC_VECTOR(7 downto 0);
		DataSend	: OUT STD_LOGIC
	);
END shift_register4x8;

ARCHITECTURE logic OF shift_register4x8 IS
  SIGNAL count : STD_LOGIC_VECTOR(3 downto 0);
BEGIN
	-- clock is Start
	PROCESS(Clk, Rst)
	begin
		if Rst = '0' then -- equivalent to flag
			Output <= (others => '0');
			DataSend <= '0';
			count <= "0000"; 
		elsif rising_edge(Clk) then
			case count is
				when "0000" =>
					if Busy = '0' then
						DataSend <= '1';
						Output <= Input(23 downto 16);
						count <= count + 1;
					end if;
				when "0001"=> 
					DataSend <= '0';
					count <= count + 1;
				when "0010" =>
					if Busy = '0' then
						DataSend <= '1';
						Output <= Input(15 downto 8);
						count <= count + 1;
					end if;
				when "0011" =>
					DataSend <= '0';
					count <= count + 1;
				when "0100" =>
					if Busy = '0' then
						DataSend <= '1';
						Output <= Input(7 downto 0);
						count <= count + 1;
					end if;
				when "0101" =>
					DataSend <= '0';
					count <= count + 1;
				when others =>
					DataSend <= '0';
			end case;
		end if; -- rising edge clk
	end process;
END logic;
