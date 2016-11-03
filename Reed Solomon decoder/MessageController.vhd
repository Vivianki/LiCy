library ieee ;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity MessageController is
	port(
		clock:   	in  std_logic;
		reset:   	in  std_logic;
		Input: 		in  std_logic_vector (3 downto 0);
		inicia:		in	 std_logic;
		correct:		in	 std_logic;
		debug:		out std_logic_vector (27 downto 0);
		Message:		out std_logic_vector (3 downto 0);
		count:		out std_logic_vector (3 downto 0)
	);
end MessageController;

architecture comportamental of MessageController is
  type estados is (idle, save, wait1, release, wait2);
	--! Variáveis de estado
  signal estadoAtual : estados;
  signal proximoEstado : estados;
  signal counter : STD_LOGIC_VECTOR (3 downto 0);
  signal next_counter : STD_LOGIC_VECTOR (3 downto 0);
  signal messages : STD_LOGIC_VECTOR (27 downto 0);
  signal data : STD_LOGIC_VECTOR (3 downto 0);
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
	
	trancisiona: process(estadoAtual, inicia, counter, correct) 
	begin
		case estadoAtual is
			
			when idle =>
				if inicia = '1' then
					next_counter <= "0000";
					proximoEstado <= save;
				else
					next_counter <= "0000";
					proximoEstado <= idle;
				end if;
			
			when save =>
				if counter = "0110" then
					next_counter <= "0000";
					proximoEstado <= wait1;
				else
					next_counter <= counter + "0001";
					proximoEstado <= save;
				end if;
			
			when wait1 =>
				if correct = '1' then
					next_counter <= "0000";
					proximoEstado <= release;
				else
					next_counter <= "0000";
					proximoEstado <= wait1;
				end if;
				
			when release =>
				if counter = "0110" then
					next_counter <= "0000";
					proximoEstado <= wait2;
				else
					next_counter <= counter + "0001";
					proximoEstado <= release;
				end if;
			
			when wait2 =>
				next_counter <= "0000";
				proximoEstado <= wait2;
				
			when others =>
				next_counter <= "0000";
				proximoEstado <= idle;
				
			end case;

	end process;	
	
	geraSinais: process(estadoAtual, counter)
	begin
		case estadoAtual is
			when idle =>
				messages <= "0000000000000000000000000000";
				data <= "0000";
			
			when save =>
				data <= messages(3 downto 0);
				messages <= Input & messages(27 downto 4);
				
			when wait1 =>
				data <= messages(3 downto 0);
				
			when release =>
				data <= messages(3 downto 0);
				messages <= messages(3 downto 0) & messages(27 downto 4);
			
			when wait2 =>
				data <= messages(3 downto 0);
				
			when others =>
				messages <= "0000000000000000000000000000";
				data <= "0000";
				
		end case;
	end process;
	
	Message <= data;
	debug <= messages;
	count <= counter;
end comportamental;

