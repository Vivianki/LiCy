LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY register13b_deinterleaver IS PORT(
    d   : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    clr : IN STD_LOGIC; -- async. clear.
    clk : IN STD_LOGIC; -- clock.
    q   : OUT STD_LOGIC_VECTOR(12 DOWNTO 0) -- output
);
END register13b_deinterleaver;

ARCHITECTURE description OF register13b_deinterleaver IS

BEGIN
    process(clk, clr)
    begin
        if clr = '1' then
            q <= "0000000000000";
        elsif rising_edge(clk) then
                q <= d;
        end if;
    end process;
END description;