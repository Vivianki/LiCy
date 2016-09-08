library ieee;
use IEEE.std_logic_1164.all;

entity count_analyzer is
port (clk : in std_logic;
      reset : in std_logic;
      input : in std_logic;
		count0: in std_logic_vector(7 downto 0);
		count1: in std_logic_vector(7 downto 0);
		sinal : out std_logic;
		reset_shift_registers : out std_logic;
      output : out std_logic
  );
end count_analyzer ;

architecture behavioral of count_analyzer is

type state_type is (s0,s1,s2,s3,s4,s5);  --type of state machine.
signal current_s,next_s: state_type;  --current and next state declaration.
signal temp : integer;

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
process (current_s,input)
begin
  case current_s is
     when s0 =>        --when current state is "s0"
     if(input ='0' and count0 >= "01101110" and count0 <= "01111101") then
      output <= '1';
		sinal <= '1';
		reset_shift_registers <= '0';
		temp <= 0;
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

     when s1 =>       --when current state is "s1"
     if(input ='1' and count1 >= "01101110" and count1 <= "01111101") then
      output <= '0';
		sinal <= '1';
		reset_shift_registers <= '0';
		temp <= 0;
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
	  
     when s2 =>       --when current state is "s1"
     if(temp = 63) then
      output <= '1';
		sinal <= '1';
		reset_shift_registers <= '0';
      next_s <= s1;
    else
      output <= '1';
		sinal <= '1';
		reset_shift_registers <= '0';
		temp <= temp +1;
      next_s <= s3;
		end if;
	 
	
     when s3 =>       --when current state is "s1"
     if(temp = 63) then
      output <= '1';
		sinal <= '1';
		reset_shift_registers <= '0';
      next_s <= s1;
    else
      output <= '1';
		sinal <= '1';
		reset_shift_registers <= '0';
		temp <= temp +1;
      next_s <= s2;
		end if;
	 
	


     when s4 =>       --when current state is "s1"
	 if(temp = 63) then
		output <= '0';
		sinal <= '1';
		reset_shift_registers <= '0';
      next_s <= s0;
    else
   output <= '0';
		sinal <= '1';
		reset_shift_registers <= '0';
		temp <= temp +1;
      next_s <= s5;
		end if;
   
	 
	

     when s5 =>       --when current state is "s1"
	 if(temp = 63) then
		output <= '0';
		sinal <= '1';
		reset_shift_registers <= '0';
      next_s <= s0;
    else
   output <= '0';
		sinal <= '1';
		reset_shift_registers <= '0';
		temp <= temp +1;
      next_s <= s4;
		end if;	
    end case;
end process;

end behavioral;
