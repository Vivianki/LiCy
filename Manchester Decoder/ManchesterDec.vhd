library IEEE;
use IEEE.STD_LOGIC_1164.all;

ENTITY ManchesterDec is
PORT(	clock, entrada, reset:	IN STD_LOGIC;
		saida:						OUT STD_LOGIC_VECTOR (1 downto 0);
		buff, erro:					OUT STD_LOGIC 
		);
END ManchesterDec;

Architecture RTL of ManchesterDec is
TYPE State_type IS (A, B, C, D, E, F, G, H, I);
SIGNAL State: State_type;

BEGIN
	PROCESS(clock, reset)
		BEGIN
		IF(reset = '1') THEN
			State <= A;
			saida <= "00";
			buff <= '0';
			erro <= '0';
	
		ELSIF rising_edge(clock) THEN
		
			CASE State is
			
				WHEN A =>
				
					IF entrada = '0' THEN
						State <= B;
						saida <= "00";
						buff <= '0';
						erro <= '0';
					
					ELSIF entrada = '1' THEN
						State <= D;
						saida <= "00";
						buff <= '0';
						erro <= '0';
					
					END IF;
			
				WHEN B =>
				
					IF entrada = '0' THEN
						State <= C;
						saida <= "00";
						buff <= '0';
						erro <= '0';
					
					ELSIF entrada = '1' THEN
						State <= A;
						saida <= "00";
						buff <= '1';
						erro <= '0';
					
					END IF;
				
				WHEN C =>
					IF entrada = '0' THEN
						State <= A;
						saida <= "00";
						buff <= '0';
						erro <= '1';
					
					ELSIF entrada = '1' THEN
						State <= A;
						saida <= "10";
						buff <= '1';
						erro <= '0';
					
					END IF;
			
				WHEN D =>
					IF entrada = '0' THEN
						State <= A;
						saida <= "11";
						buff <= '1';
						erro <= '0';
					
					ELSIF entrada = '1' THEN
						State <= E;
						saida <= "00";
						buff <= '0';
						erro <= '0';
				
					END IF;
				
				WHEN E =>
					IF entrada = '0' THEN
						State <= A;
						saida <= "01";
						buff <= '1';
						erro <= '0';
				
					ELSIF entrada = '1' THEN
						State <= A;
						saida <= "00";
						buff <= '0';
						erro <= '1';
						
					END IF;
			
				WHEN others =>
					State <= A;
					saida <= "00";
					buff <= '0';
					erro <= '0';
		
			END CASE;
		
		END IF;
	
	END PROCESS;

END RTL;
			

			
				
				
				
				
	