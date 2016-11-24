LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY piso_uart IS
	PORT(
		Clk_Rs	: IN  STD_LOGIC;
		Rst 		: IN  STD_LOGIC;
		Start		: IN	STD_LOGIC;
		Input 	: IN  STD_LOGIC_VECTOR(23 downto 0); -- receive from shift_register
		Flag	 	: OUT	STD_LOGIC;
		Output 	: OUT	STD_LOGIC_VECTOR(3 downto 0) -- output to RS Encoder
	);
END piso_uart;

ARCHITECTURE logic OF piso_uart IS
	SIGNAL count : STD_LOGIC_VECTOR(3 downto 0);
	SIGNAL Out_i : STD_LOGIC_VECTOR(3 downto 0);
	SIGNAL Flag_i: STD_LOGIC;
BEGIN
	-- receiver, transmitter control
	PROCESS(Clk_Rs, Start, Rst)
	begin
		if Rst = '1' then
			count <= "0000"; 
			Out_i <= "0000";
			Flag_i <= '0';
		elsif Start = '1' then
			if rising_edge(Clk_Rs) then
				case count is
					when "0000" =>
						Flag_i <= '1'; -- from now on, flag = 1
						Out_i <= Input(23 downto 20);
						count <= count + 1;
					when "0001" =>
						Out_i <= Input(19 downto 16);
						count <= count + 1;
					when "0010" =>
						Out_i <= Input(15 downto 12);
						count <= count + 1;
					when "0011" =>
						Out_i <= Input(11 downto 8);
						count <= count + 1;
					when "0100" =>
						Out_i <= Input(7 downto 4);
						count <= count + 1;
					when "0101" =>
						Out_i <= Input(3 downto 0);
						count <= count + 1;
					when "0110" =>
						Out_i <= "0000";
						count <= count + 1;
					when others => 
						Out_i <= "0000";
				end case;
			end if; -- rising edge clk
		end if;
	END PROCESS;
	Output <= Out_i;
	Flag <= Flag_i;
END logic;