LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY register4b_all IS PORT(
    d   : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC; -- clock.
    q   : OUT STD_LOGIC_VECTOR(3 DOWNTO 0) -- output
);
END register4b_all;

ARCHITECTURE description OF register4b_all IS

BEGIN
    process(clk)
    begin
        if rising_edge(clk) then
                q <= d;
        end if;
    end process;
END description;