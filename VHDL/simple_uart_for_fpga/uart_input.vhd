library ieee;
   use ieee.std_logic_1164.all;
   use ieee.numeric_std.all;
-------------------------------------------------------------------------------
-- Baud rate generator
-------------------------------------------------------------------------------
entity uart_input is
  port (
		Clk: in std_logic;
		Rst: in std_logic; -- must debounce
		Output: out std_logic_vector(7 downto 0);
		DataSend: out std_logic);
end entity; --================== End of entity ==============================--
-------------------------------------------------------------------------------
-- Architecture for Baud rate generator Unit
-------------------------------------------------------------------------------
architecture Behaviour of uart_input is
	signal counter : integer range 0 to 1;
begin
	process (Clk, Rst) begin
		if Rst = '0' then
			counter <= 0;
			DataSend <= '0';
			Output <= "00000000";
		elsif rising_edge(ClK) then
			case counter is
				when 0 =>
					DataSend <= '1';
					Output <= "01100001";
					counter <= 1;
				when others =>
					DataSend <= '0';
			end case;
		end if;
	end process;
end Behaviour; --==================== End of architecture ===================--