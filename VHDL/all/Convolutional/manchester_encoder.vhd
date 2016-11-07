 library ieee;
use ieee.std_logic_1164.all;

entity manchester_encoder is    
    port(
    clk : in std_logic;
    D : in std_logic;
    Q : out std_logic
    );
end manchester_encoder;

architecture manchester_encoder_arch of manchester_encoder is
begin
    Q <= D xor clk;
end manchester_encoder_arch;