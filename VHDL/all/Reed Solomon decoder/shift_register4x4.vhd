LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY shift_register4x4 IS
	PORT(
		Clk		: IN  STD_LOGIC; -- RsDec Clock
		Rst 		: IN  STD_LOGIC;
		Input 	: IN  STD_LOGIC_VECTOR(27 downto 0); -- receive from RSDec
		Busy		: IN	STD_LOGIC;
		Output	: OUT STD_LOGIC_VECTOR(3 downto 0);
		DataSend	: OUT STD_LOGIC
	);
END shift_register4x4;

ARCHITECTURE logic OF shift_register4x4 IS
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
						Output <= Input(27 downto 24);
						count <= count + 1;
					end if;
				when "0001" =>
					if Busy = '0' then
						DataSend <= '1';
						Output <= Input(23 downto 20);
						count <= count + 1;
					end if;
				when "0010" =>
					if Busy = '0' then
						DataSend <= '1';
						Output <= Input(19 downto 16);
						count <= count + 1;
					end if;
				when "0011" =>
					if Busy = '0' then
						DataSend <= '1';
						Output <= Input(15 downto 12);
						count <= count + 1;
					end if;	
				when "0100" =>
					if Busy = '0' then
						DataSend <= '1';
						Output <= Input(11 downto 8);
						count <= count + 1;
					end if;
				when "0101" =>
					if Busy = '0' then
						DataSend <= '1';
						Output <= Input(7 downto 4);
						count <= count + 1;
					end if;
				when "0110" =>
					if Busy = '0' then
						DataSend <= '1';
						Output <= Input(3 downto 0);
						count <= count + 1;
					end if;
				when others =>
					DataSend <= '0';
			end case;
		end if; -- rising edge clk
	end process;
END logic;
