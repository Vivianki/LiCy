LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY sipo_uart IS
	PORT(
		Clk_Dec		: IN  STD_LOGIC;
		Rst 			: IN  STD_LOGIC;
		Input 		: IN  STD_LOGIC_VECTOR(3 downto 0); -- receive from RS Decoder
		Start	 		: OUT	STD_LOGIC;
		log			: OUT STD_LOGIC_VECTOR(23 downto 0)
	);
END sipo_uart;

ARCHITECTURE logic OF sipo_uart IS
	SIGNAL count : STD_LOGIC_VECTOR(3 downto 0);
	SIGNAL buff : STD_LOGIC_VECTOR(23 downto 0);
BEGIN
	
	PROCESS(Clk_Dec, Rst)
	begin
		if Rst = '0' then -- equivalent to flag
			buff <= (others => '0');
			Start <= '0';
			count <= "0000";
		elsif rising_edge(Clk_Dec) then
			case count is
				when "0000" =>
					buff(23 downto 20) <= Input;
					count <= count + 1;
					Start <= '0';
				when "0001" =>
					buff(19 downto 16) <= Input;
					count <= count + 1;
					Start <= '0';
				when "0010" =>
					buff(15 downto 12) <= Input;
					count <= count + 1;
					Start <= '0';
				when "0011" =>
					buff(11 downto 8) <= Input;
					count <= count + 1;
					Start <= '0';
				when "0100" =>
					buff(7 downto 4) <= Input;
					count <= count + 1;
					Start <= '0';
				when "0101" =>
					buff(3 downto 0) <= Input;
					count <= count + 1;
					Start <= '0';
				when "0110" => -- burn cycle
					Start <= '1';
					count <= count + 1;
				when others => 
					Start <= '1';
					count <= count;
			end case;
		end if; -- rising edge clk
	END PROCESS;
	log <= buff;

END logic;
