LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY shift_register8x4 IS
	PORT(
		Clk	: IN  STD_LOGIC;
		Rst 		: IN  STD_LOGIC;
		Input 	: IN  STD_LOGIC_VECTOR(7 downto 0); -- receive from uart
		Flag	 	: OUT STD_LOGIC;
		Buffout	: OUT STD_LOGIC_VECTOR(23 downto 0);
		SR_Count	: OUT STD_LOGIC_VECTOR(3 downto 0)
	);
END shift_register8x4;

ARCHITECTURE logic OF shift_register8x4 IS
  SIGNAL buff : STD_LOGIC_VECTOR(23 downto 0);
  SIGNAL count : STD_LOGIC_VECTOR(3 downto 0);
BEGIN
	-- clock is DATA_VLD
	PROCESS(Clk, Rst)
	begin
		if Rst = '1' then
			buff <= (others => '0');
			Flag <= '0';
			count <= "0000"; 
		elsif rising_edge(Clk) then
			case count is
				when "0000" =>
					buff(23 downto 16) <= Input;
					count <= "0001";
					Flag <= '0';
				when "0001" =>
					buff(15 downto 8) <= Input;
					count <= "0010";
					Flag <= '0';
				when "0010" =>
					buff(7 downto 0) <= Input;
					count <= "0011";
					Flag <= '1';
				when others =>
					count <= "0000";
					Flag <= '1';
			end case;
		end if; -- rising edge clk
	END PROCESS;
	Buffout <= buff;
	SR_Count <= count;
END logic;
