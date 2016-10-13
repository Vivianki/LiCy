library ieee;
use IEEE.std_logic_1164.all;

entity mealy is
port (clk : in std_logic;
      reset : in std_logic;
      input : in std_logic;
      output : out std_logic
  );
end mealy;

architecture behavioral of mealy is

type state_type is (s0,s1,s2,s3);  --type of state machine.
signal current_s,next_s: state_type;  --current and next state declaration.

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
     if(input ='0') then
      output <= '0';
      next_s <= s1;
    else
      output <= '1';
      next_s <= s2;
     end if;   

     when s1 =>;        --when current state is "s1"
    if(input ='0') then
      output <= '0';
      next_s <= s3;
    else
      output <= '0';
      next_s <= s1;
    end if;

    when s2 =>       --when current state is "s2"
    if(input ='0') then
      output <= '1';
      next_s <= s2;
    else
      output <= '0';
      next_s <= s3;
    end if;


  when s3 =>         --when current state is "s3"
    if(input ='0') then
      output <= '1';
      next_s <= s3;
    else
      output <= '1';
      next_s <= s0;
    end if;
  end case;
end process;

end behavioral;