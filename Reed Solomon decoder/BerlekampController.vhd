-------------------------------------------------------
--! @file unidadeDeControle.vhdl
--! @author balbertini@usp.br
--! @date 20160310
--! @brief Máquina de estados da Unidade de Controle. (módulo 1, experiencia "Um
--! projeto em VHDL").
-------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity BerlekampController is
	port(
		clock:   	in  std_logic;
		reset:   	in  std_logic;
		ds:  			in  std_logic;
		impar:		in  std_logic;
		count4:		in	 std_logic;
		count8:		in	 std_logic;
		inicia:		in	 std_logic;
		di:			out std_logic;
		loadS:		out std_logic;
		loadB:		out std_logic;
		loadC:		out std_logic;
		clearS:		out std_logic;
		clearB:		out std_logic;
		clearC:		out std_logic;
		muxSel:		out std_logic;
		registra: 	out std_logic;
		test_state: out std_logic_vector (4 downto 0)
	);
end BerlekampController;

architecture comportamental of BerlekampController is
  type estados is (idle, idle2, localizador, localizador2, clearSyn, avaliador, avaliador2, store);
	--! Variáveis de estado
  signal estadoAtual : estados := idle;
  signal proximoEstado : estados;
begin
	--! Processo sincronizador
	sincroniza: process(clock, reset)
	begin
		if reset='1'then --! reset ativo alto
			estadoAtual <= idle;
		elsif rising_edge(clock) then --! sensível a borda de subida
			estadoAtual <= proximoEstado;
		end if;
	end process; 
	
	geraSinais: process(estadoAtual)
	begin
		case estadoAtual is
			--! o que fazer quando está no estado de espera?
			when idle =>
				loadS <= '0';
				loadB <= '0';
				loadC <= '0';
				clearS <= '1';
				clearB <= '1';
				clearC <= '1';
				registra	<= '0';
				di <= '0';
				muxSel <= '0';
				if inicia = '1' then
					test_state <= "00000";
					proximoEstado <= localizador;
				else
					test_state <= "00001";
					proximoEstado <= idle2;
				end if;
			
			when idle2 => 
				loadS <= '0';
				loadB <= '0';
				loadC <= '0';
				clearS <= '1';
				clearB <= '1';
				clearC <= '1';
				registra	<= '0';
				di <= '0';
				muxSel <= '0';
				if inicia = '1' then
					test_state <= "00010";
					proximoEstado <= localizador;
				else
					test_state <= "00011";
					proximoEstado <= idle;
				end if;
				
			when localizador =>
				if count8 = '1' then
					loadS <= '0';
					loadB <= '0';
					loadC <= '0';
					clearS <= '0';
					clearB <= '0';
					clearC <= '0';
					registra	<= '0';
					di <= '0';
					muxSel <= '0';
					proximoEstado <= clearSyn;
					test_state <= "01010";
				elsif impar = '1' then
					if ds = '1' then
						loadS <= '1';
						loadB <= '1';
						loadC <= '1';
						clearS <= '0';
						clearB <= '0';
						clearC <= '0';
						registra	<= '0';
						di <= '0';
						muxSel <= '0';
						proximoEstado <= localizador2;
						test_state <= "01000";
					else
						loadS <= '1';
						loadB <= '1';
						loadC <= '1';
						clearS <= '0';
						clearB <= '0';
						clearC <= '0';
						registra	<= '0';
						di <= '1';
						muxSel <= '1';
						proximoEstado <= localizador2;
						test_state <= "01001";
					end if;
				else
					registra <= '0';
					loadS <= '1';
					loadB <= '1';
					loadC <= '1';
					clearS <= '0';
					clearB <= '0';
					clearC <= '0';
					di <= '0';
					muxSel <= '0';
					proximoEstado <= localizador2;
					test_state <= "01011";
				end if;

			when localizador2 =>
				if count8 = '1' then
					loadS <= '1';
					loadB <= '1';
					loadC <= '1';
					clearS <= '0';
					clearB <= '0';
					clearC <= '0';
					registra	<= '0';
					di <= '0';
					muxSel <= '0';
					proximoEstado <= clearSyn;
					test_state <= "01010";
				elsif impar = '1' then
					if ds = '1' then
						loadS <= '1';
						loadB <= '1';
						loadC <= '1';
						clearS <= '0';
						clearB <= '0';
						clearC <= '0';
						registra	<= '0';
						di <= '0';
						muxSel <= '0';
						proximoEstado <= localizador;
						test_state <= "01000";
					else
						loadS <= '1';
						loadB <= '1';
						loadC <= '1';
						clearS <= '0';
						clearB <= '0';
						clearC <= '0';
						registra	<= '0';
						di <= '1';
						muxSel <= '1';
						proximoEstado <= localizador;
						test_state <= "01001";
					end if;
				else
					registra <= '0';
					loadS <= '1';
					loadB <= '1';
					loadC <= '1';
					clearS <= '0';
					clearB <= '0';
					clearC <= '0';
					di <= '0';
					muxSel <= '0';
					proximoEstado <= localizador;
					test_state <= "01011";
				end if;
				
			when clearSyn =>
					registra <= '0';
					loadS <= '0';
					loadB <= '0';
					loadC <= '0';
					clearS <= '1';
					clearB <= '0';
					clearC <= '0';
					di <= '0';
					muxSel <= '0';
					proximoEstado <= avaliador;
					test_state <= "01100";

			when avaliador =>
					registra <= '0';
					loadS <= '1';
					loadB <= '0';
					loadC <= '0';
					clearS <= '0';
					clearB <= '0';
					clearC <= '0';
					muxSel <= '0';
					di <= '0';
					if count4 = '1' then
						proximoEstado <= store;
						test_state <= "01101";
					else
						proximoEstado <= avaliador2;
						test_state <= "01110";
					end if;
					
			when avaliador2 =>
					registra <= '0';
					loadS <= '1';
					loadB <= '0';
					loadC <= '0';
					clearS <= '0';
					clearB <= '0';
					clearC <= '0';
					muxSel <= '0';
					di <= '0';
					if count4 = '1' then
						proximoEstado <= store;
						test_state <= "01111";
					else
						proximoEstado <= avaliador;
						test_state <= "10000";
					end if;
					
			when store =>
				registra <= '1';
				loadS <= '0';
				loadB <= '0';
				loadC <= '0';
				clearS <= '0';
				clearB <= '0';
				clearC <= '0';
				di <= '0';
				muxSel <= '0';
				proximoEstado <= idle;
				test_state <= "10001";
				
			when others =>
				registra <= '0';
				loadS <= '0';
				loadB <= '0';
				loadC <= '0';
				clearS <= '0';
				clearB <= '0';
				clearC <= '0';
				di <= '0';
				muxSel <= '0';
				proximoEstado <= idle;
				test_state <= "10010";
		end case;
	end process; -- geraSaida
end comportamental;

