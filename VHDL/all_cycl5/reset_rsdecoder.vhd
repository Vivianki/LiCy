library ieee ;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

----------------------------------------------------

entity reset_rsdecoder is
	port(	Clk:	in std_logic;
			enable:	in std_logic;
			rst_rsdecoder1: out std_logic;
			rst_rsdecoder2: out std_logic;
			rst_rsdecoder3: out std_logic;
			rst_rsdecoder4: out std_logic
			);
end reset_rsdecoder;

----------------------------------------------------

architecture Behavioral of reset_rsdecoder is		 	  
	
    signal Pre_Q1: std_logic;
	 signal Pre_Q2: std_logic;
	 signal Pre_Q3: std_logic;
	 signal Pre_Q4: std_logic;
	 signal iterator: std_logic_vector(5 downto 0);

begin

    -- behavior describe the counter
	process(Clk, enable)
	begin
		if enable = '0' then
			Pre_Q1 <= '0';
			Pre_Q2 <= '0';
			Pre_Q3 <= '0';
			Pre_Q4 <= '0';
			iterator <="000000";
		elsif (rising_edge(Clk)) then
			if iterator = "000000" then
				Pre_Q1 <= '1';
				Pre_Q2 <= '0';
				Pre_Q3 <= '0';
				Pre_Q4 <= '0';
				iterator <= iterator + 1;
			elsif iterator ="001111" then
				Pre_Q1 <= '0';
				Pre_Q2 <= '1';
				Pre_Q3 <= '0';
				Pre_Q4 <= '0';
				iterator <= iterator + 1;
			elsif iterator ="011110" then
				Pre_Q1 <= '0';
				Pre_Q2 <= '0';
				Pre_Q3 <= '1';
				Pre_Q4 <= '0';
				iterator <= iterator + 1;
			elsif iterator ="101101" then
				Pre_Q1 <= '0';
				Pre_Q2 <= '0';
				Pre_Q3 <= '0';
				Pre_Q4 <= '1';
				iterator <= iterator + 1;	
			elsif iterator ="111100" then
				Pre_Q1 <= '0';
				Pre_Q2 <= '0';
				Pre_Q3 <= '0';
				Pre_Q4 <= '0';
				iterator <= "000000";	
			else
				Pre_Q1 <= '0';
				Pre_Q2 <= '0';
				Pre_Q3 <= '0';
				Pre_Q4 <= '0';
				iterator <= iterator + 1;
			end if;
		end if;
	end process;	

	-- concurrent assignment statement
	rst_rsdecoder1 <= Pre_Q1;
	rst_rsdecoder2 <= Pre_Q2;
	rst_rsdecoder3 <= Pre_Q3;
	rst_rsdecoder4 <= Pre_Q4;

end Behavioral;
