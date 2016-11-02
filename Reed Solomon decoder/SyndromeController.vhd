library ieee ;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity SyndromeController is
	port(
		clock:   	in  std_logic;
		reset:   	in  std_logic;
		inicia:		in	 std_logic;
		startSReg:	out std_logic;
		startBerle: out std_logic;
		load:			out std_logic
	);
end SyndromeController;

architecture comportamental of SyndromeController is
  type estados is (idle, contagem, iniciou, wait1, shift1, wait2, shift2, ready);
	--! Variáveis de estado
  signal estadoAtual : estados;
  signal proximoEstado : estados;
  signal counter : STD_LOGIC_VECTOR (3 downto 0);
  signal next_counter : STD_LOGIC_VECTOR (3 downto 0);
begin
	--! Processo sincronizador
	sincroniza: process(clock, reset)
	begin
		if reset = '1' then --! reset ativo alto
			estadoAtual <= idle;
			counter <= "0000";
		elsif rising_edge(clock) then --! sensível a borda de subida
			estadoAtual <= proximoEstado;
			counter <= next_counter;
		end if;
	end process; 
	
	trancisiona: process(estadoAtual, inicia, counter) 
	begin
		case estadoAtual is
			
			when idle =>
				if inicia = '1' then
					next_counter <= "0000";
					proximoEstado <= contagem;
				else
					next_counter <= "0000";
					proximoEstado <= idle;
				end if;
			
			when contagem =>
				if counter = "1110" then
					next_counter <= "0000";
					proximoEstado <= iniciou;
				else
					next_counter <= counter + "0001";
					proximoEstado <= contagem;
				end if;
			
			when iniciou =>
				next_counter <= "0000";
				proximoEstado <= wait1;
				
			when wait1 =>
				next_counter <= "0000";
				proximoEstado <= shift1;
				
			when shift1 =>
				if counter = "0111" then
					next_counter <= "0000";
					proximoEstado <= wait2;
				else
					next_counter <= counter + "0001";
					proximoEstado <= shift1;
				end if;
			
			when wait2 =>
				next_counter <= "0000";
				proximoEstado <= shift2;
				
				
			when shift2 =>
				if counter = "0110" then
					next_counter <= "0000";
					proximoEstado <= ready;			
				else
					next_counter <= counter + "0001";
					proximoEstado <= shift2;
				end if;
				
			when ready =>
				next_counter <= "0000";
				proximoEstado <= ready;
				
			when others =>
				next_counter <= "0000";
				proximoEstado <= idle;
				
				
			end case;

	end process;	
	
	geraSinais: process(estadoAtual, inicia)
	begin
		case estadoAtual is
			when idle =>
				startSReg <= '0';
				startBerle <= '0';
				load <= '0';
			
			when contagem =>
				startSReg <= '1';
				startBerle <= '0';
				load <= '1';
			
			when iniciou =>
				startSReg <= '1';
				startBerle <= '1';
				load <= '1';
				
			when wait1 =>
				startSReg <= '0';
				startBerle <= '0';
				load <= '0';
				
			when shift1 =>
				startSReg <= '0';
				startBerle <= '0';
				load <= '1';
			
			when wait2 =>
				startSReg <= '0';
				startBerle <= '0';
				load <= '0';
				
			when shift2 =>
				startSReg <= '0';
				startBerle <= '0';
				load <= '1';
			
			when ready =>
				startSReg <= '0';
				startBerle <= '0';
				load <= '0';
				
			when others =>
				startSReg <= '0';
				startBerle <= '0';
				load <= '0';
				
		end case;
	end process;
end comportamental;

