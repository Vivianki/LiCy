library ieee;
use IEEE.std_logic_1164.all;

entity count_analyzer is
port (clk : in std_logic;
      reset : in std_logic;
      input : in std_logic;
		count0: in std_logic_vector(9 downto 0);
		count1: in std_logic_vector(9 downto 0);
		sinal : out std_logic;
		estado_atual: out std_logic_vector(2 downto 0);
		reset_shift_registers : out std_logic;
      output : out std_logic
  );
end count_analyzer ;

architecture behavioral of count_analyzer is

type state_type is (s0,s1,s2,s3,s4,s5, s6, s7);  --type of state machine.
signal current_s : state_type := s0;
signal next_s: state_type;  --current and next state declaration.
signal temp : integer := 0;

begin

process (clk,reset)
begin
 if (reset='1') then
  current_s <= s0;  --default state on reset.
elsif (rising_edge(clk)) then
  current_s <= next_s;   --state change.
end if;
end process;

--state machine process.
process (current_s)
begin
  case current_s is
     when s0 =>        --when current state is "s0"
	  estado_atual<= "000";
		temp <= 0;
     if(input ='0' and count0 >= "0000000000" and count0 <= "0001110111") then
      output <= '1';
		sinal <= '1';
		reset_shift_registers <= '0';
      next_s <= s2;
     elsif (input ='1') then
      output <= '1';
		sinal <= '0';
		reset_shift_registers <= '0';
      next_s <= s6;
	  else 
		reset_shift_registers <= '1';
      output <= '1';
		sinal <= '0';
		next_s <= s6;
     end if;   

     when s1 =>       --when current state is "s1"
	  estado_atual<= "001";
		temp <= 0;
     if(input ='1' and count1 >= "0000000000" and count1 <= "0001110111") then
      output <= '0';
		sinal <= '1';
		reset_shift_registers <= '0';
      next_s <= s4;
     elsif (input ='0') then
      output <= '0';
		sinal <= '0';
		reset_shift_registers <= '0';
      next_s <= s7;
	  else 
		reset_shift_registers <= '1';
		output <= '1';
		sinal <= '0';
		next_s <= s0;
     end if;  
	  
     when s2 =>       --when current state is "s2"
	  estado_atual<= "010";
     if(temp = 10) then
      output <= '1';
		sinal <= '1';
		temp <= 0;
		reset_shift_registers <= '0';
      next_s <= s1;
     else
      output <= '1';
		sinal <= '1';
		reset_shift_registers <= '0';
		temp <= temp +1;
      next_s <= s3;
		end if;
	 
	
     when s3 =>       --when current state is "s3"
	  estado_atual<= "011";
     if(temp = 10) then
      output <= '1';
		sinal <= '1';
		temp <= 0;
		reset_shift_registers <= '0';
      next_s <= s1;
    else
      output <= '1';
		sinal <= '1';
		reset_shift_registers <= '0';
		temp <= temp +1;
      next_s <= s2;
		end if;
	 
	


     when s4 =>       --when current state is "s4"
	  estado_atual<= "100";
	 if(temp = 10) then
		output <= '0';
		sinal <= '1';
		reset_shift_registers <= '0';
		temp <= 0;
      next_s <= s0;
		
    else
   output <= '0';
		sinal <= '1';
		reset_shift_registers <= '0';
		temp <= temp +1;
      next_s <= s5;
		end if;
   
	 
	

     when s5 =>       --when current state is "s5"
	  estado_atual<= "101";
	 if(temp = 10) then
		output <= '0';
		sinal <= '1';
		reset_shift_registers <= '0';
		temp <= 0;
      next_s <= s0;
    else
		output <= '0';
		sinal <= '1';
		reset_shift_registers <= '0';
		temp <= temp +1;
      next_s <= s4;
		end if;	
		
		
		
		when s6 =>        --when current state is "s0"
		estado_atual<= "110";
		temp <= 0;
     if(input ='0' and count0 >= "0000000000" and count0 <= "0001110111") then
      output <= '1';
		sinal <= '1';
		reset_shift_registers <= '0';
      next_s <= s2;
     elsif (input ='1') then
      output <= '1';
		sinal <= '0';
		reset_shift_registers <= '0';
      next_s <= s0;
	  else 
		reset_shift_registers <= '1';
      output <= '1';
		sinal <= '0';
		next_s <= s0;
     end if;   

     when s7 =>       --when current state is "s1"
	  estado_atual<= "111";
		temp <= 0;
     if(input ='1' and count1 >= "0000000000" and count1 <= "0001110111") then
      output <= '0';
		sinal <= '1';
		reset_shift_registers <= '0';
      next_s <= s4;
     elsif (input ='0') then
      output <= '0';
		sinal <= '0';
		reset_shift_registers <= '0';
      next_s <= s1;
	  else 
		reset_shift_registers <= '1';
		output <= '1';
		sinal <= '0';
		next_s <= s0;
     end if; 
    end case;
end process;

end behavioral;
