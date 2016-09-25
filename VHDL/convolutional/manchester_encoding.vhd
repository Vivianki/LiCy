library ieee;
use ieee.std_logic_1164.all;

entity manchester_encoding is    
    port(
    clk : in std_logic;
    I : in std_logic;
    O : out std_logic
    );
end manchester_encoding;

architecture manchester_encoding of manchester_encoding is
begin
    O <= I xor clk;
end manchester_encoding;