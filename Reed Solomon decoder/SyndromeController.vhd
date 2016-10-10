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
  type estados is (idle, contagem, iniciou, wait1, shift1, wait2, wait3, shift2);
	--! Variáveis de estado
  signal estadoAtual : estados;
  signal proximoEstado : estados;
  signal counter : STD_LOGIC_VECTOR (3 downto 0);
begin
	--! Processo sincronizador
	sincroniza: process(clock, reset)
	begin
		if reset = '1' then --! reset ativo alto
			estadoAtual <= idle;
		elsif rising_edge(clock) then --! sensível a borda de subida
			estadoAtual <= proximoEstado;
		end if;
	end process; 
	
	trancisiona: process(estadoAtual, inicia, counter) 
	begin
		case estadoAtual is
			
			when idle =>
				if inicia = '1' then
					proximoEstado <= contagem;
					counter <= "0000";
				else
					proximoEstado <= idle;
					counter <= "0000";
				end if;
			
			when contagem =>
				if counter = "1111" then
					proximoEstado <= iniciou;
					counter <= "0000";
				else
					proximoEstado <= contagem;
					counter <= counter + 1;
				end if;
			
			when iniciou =>
				proximoEstado <= wait1;
				counter <= "0000";
				
			when wait1 =>
				proximoEstado <= shift1;
				counter <= "0000";
				
			when shift1 =>
				if counter = "0111" then
					proximoEstado <= wait2;
					counter <= "0000";
				else
					proximoEstado <= shift1;
					counter <= counter + 1;
				end if;
			
			when wait2 =>
				proximoEstado <= wait3;
				counter <= "0000";
				
			when wait3 =>
				proximoEstado <= shift2;
				counter <= "0000";
				
			when shift2 =>
				if counter = "0110" then
					proximoEstado <= idle;
					counter <= "0000";
				else
					proximoEstado <= shift2;
					counter <= counter + 1;
				end if;
				
			when others =>
				proximoEstado <= idle;
				counter <= "0000";
				
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
				
			when wait3 =>
				startSReg <= '0';
				startBerle <= '0';
				load <= '0';
				
			when shift2 =>
				startSReg <= '0';
				startBerle <= '0';
				load <= '1';
				
			when others =>
				startSReg <= '0';
				startBerle <= '0';
				load <= '0';
				
		end case;
	end process;
end comportamental;

