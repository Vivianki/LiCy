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
  signal messages_aux : STD_LOGIC_VECTOR (27 downto 0);
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
	
	geraSinais: process(counter, estadoAtual)
	begin
		case estadoAtual is
			when idle =>
				messages_aux <= "0000000000000000000000000000";
				data <= "0000";
			
			when save =>
				if counter = "0000" then
					data <= Input;
					messages_aux(27 downto 24) <=  Input;
					messages_aux(23 downto 0) <= messages_aux(23 downto 0);
				elsif counter = "0001" then
					data <= Input;
					messages_aux(27 downto 24) <= messages_aux(27 downto 24);
					messages_aux(23 downto 20) <=  Input;	
					messages_aux(19 downto 0) <= messages_aux(19 downto 0);		
				elsif counter = "0010" then
					data <= Input;
					messages_aux(27 downto 20) <= messages_aux(27 downto 20);
					messages_aux(19 downto 16) <=  Input;	
					messages_aux(15 downto 0) <= messages_aux(15 downto 0);		
				elsif counter = "0011" then
					data <= Input;
					messages_aux(27 downto 16) <= messages_aux(27 downto 16);
					messages_aux(15 downto 12) <= Input;	
					messages_aux(11 downto 0) <= messages_aux(11 downto 0);	
				elsif counter = "0100" then
					data <= Input;
					messages_aux(27 downto 12) <= messages_aux(27 downto 12);
					messages_aux(11 downto 8) <=  Input;	
					messages_aux(7 downto 0) <= messages_aux(7 downto 0);			
				elsif counter = "0101" then
					data <= Input;
					messages_aux(27 downto 8) <= messages_aux(27 downto 8);
					messages_aux(7 downto 4) <= Input;	
					messages_aux(3 downto 0) <= messages_aux(3 downto 0);		
				elsif counter = "0110" then
					data <= Input;
					messages_aux(27 downto 4) <= messages_aux(27 downto 4);
					messages_aux(3 downto 0) <=  Input;
				else
					messages_aux <= messages_aux;
					data <= messages_aux(3 downto 0);
				end if;
			when wait1 =>
				messages_aux <= messages_aux;
				data <= messages_aux(3 downto 0);
				
			when release =>
				if counter = "0000" then
					messages_aux <= messages_aux;
					data <= messages_aux(27 downto 24);
				elsif counter = "0001" then
					messages_aux <= messages_aux;
					data <= messages_aux(23 downto 20);			
				elsif counter = "0010" then
					messages_aux <= messages_aux;
					data <= messages_aux(19 downto 16);			
				elsif counter = "0011" then
					messages_aux <= messages_aux;
					data <= messages_aux(15 downto 12);		
				elsif counter = "0100" then
					messages_aux <= messages_aux;
					data <= messages_aux(11 downto 8);			
				elsif counter = "0101" then
					messages_aux <= messages_aux;
					data <= messages_aux(7 downto 4);			
				elsif counter = "0110" then
					messages_aux <= messages_aux;
					data <= messages_aux(3 downto 0);		
				else 
					messages_aux <= messages_aux;
					data <= messages_aux(3 downto 0);
				end if;
			
			when wait2 =>
				messages_aux <= messages_aux;
				data <= messages_aux(3 downto 0);
				
			when others =>
				messages_aux <= "0000000000000000000000000000";
				data <= "0000";
				
		end case;
	end process;
	Message <= data;
	debug <= messages_aux;
	count <= counter;
end comportamental;

