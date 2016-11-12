-------------------------------------------------------
--! @file unidadeDeControle.vhdl
--! @author balbertini@usp.br
--! @date 20160310
--! @brief Máquina de estados da Unidade de Controle. (módulo 1, experiencia "Um
--! projeto em VHDL").
-------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ChienController is
	port(
		clock:   	in  std_logic;
		reset:   	in  std_logic;
		inicia:		in	 std_logic;
		load:			out std_logic;
		clear:		out std_logic;
		muxSel:		out std_logic
	);
end ChienController;

architecture comportamental of ChienController is
  type estados is (idle, mux, mux2, mux3, mux4, mux5, mux6, mux7, mux8, mux9);
	--! Variáveis de estado
  signal estadoAtual, proximoEstado : estados;
  --signal counter : std_logic_vector (3 downto 0);
begin
	--! Processo sincronizador
	sincroniza: process(clock, proximoEstado, reset)
	begin
		if reset = '1' then --! reset ativo alto
			estadoAtual <= idle;
		elsif rising_edge(clock) then --! sensível a borda de subida
			estadoAtual <= proximoEstado;
		end if;
	end process;

	transiciona: process(estadoAtual, inicia)
		begin
			case estadoAtual is
				--! o que fazer quando está no estado de espera?
				when idle =>
					if inicia = '1' then
						proximoEstado <= mux;
					else
						proximoEstado <= idle;
					end if;
				
				when mux =>
					proximoEstado <= mux2;
				
				when mux2 =>
					proximoEstado <= mux3;
					
				when mux3 => 
					proximoEstado <= mux4;
					
				when mux4 => 
					proximoEstado <= mux5;
					
				when mux5 => 
					proximoEstado <= mux6;
					
				when mux6 => 
					proximoEstado <= mux7;
					
				when mux7 => 
					proximoEstado <= mux8;
					
				when mux8 => 
					proximoEstado <= mux9;
				
				when mux9 =>
					proximoEstado <= idle;
					
				when others =>
					proximoEstado <= idle;
				
			end case;		
		end process;
	
	geraSinais: process(estadoAtual)
		begin
			case estadoAtual is
				--! o que fazer quando está no estado de espera?
				when idle =>
					muxSel <= '0';
					load <= '0';
					clear <= '1';
					
				when mux =>
					muxSel <= '0';
					load <= '1';
					clear <= '0';
				
				when mux2 =>
					muxSel <= '1';
					load <= '1';
					clear <= '0';
					
				when mux3 =>
					muxSel <= '1';
					load <= '1';
					clear <= '0';
					
				when mux4 =>
					muxSel <= '1';
					load <= '1';
					clear <= '0';
					
				when mux5 =>
					muxSel <= '1';
					load <= '1';
					clear <= '0';
					
				when mux6 =>
					muxSel <= '1';
					load <= '1';
					clear <= '0';
					
				when mux7 =>
					muxSel <= '1';
					load <= '1';
					clear <= '0';
					
				when mux8 =>
					muxSel <= '1';
					load <= '1';
					clear <= '0';
				
				when mux9 =>
					muxSel <= '1';
					load <= '1';
					clear <= '0';

				when others	=>
					muxSel <= '0';
					load <= '0';
					clear <= '1';
					
			end case;
			
			
	end process;
	
end comportamental;