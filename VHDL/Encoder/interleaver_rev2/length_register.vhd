LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY length_register IS PORT(
    d   : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    ld  : IN STD_LOGIC; -- load/enable.
    clr : IN STD_LOGIC; -- async. clear.
    clk : IN STD_LOGIC; -- clock.
    q   : OUT STD_LOGIC_VECTOR(5 DOWNTO 0) -- output
);
END length_register;

ARCHITECTURE behv OF length_register IS
begin
    process(clk, clr)
    begin
        if clr = '1' then
            q <= "000000";
        elsif rising_edge(clk) then
            if ld = '1' then
                q <= d;
            end if;
        end if;
    end process;
END behv;