LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;

--/*********************************************
-- * Interleaver
-- * Author: Gabriel Takaoka Nishimura
-- *
-- * The interleaver receives data from the
-- * interleaver padding, which will store the
-- * everything in a n x D buffer, and send a
-- * interleaved message when ready.
-- *
-- * Each procedure should provide a standard clock, 
-- * the data to be interleaved, in symbols
-- * (each of them should have SYMBOL_SIZE bits)
-- * and a eom End Of Message flag
-- *
-- * eom should be active __a clock after__ the 
-- * last symbol is sent
-- *
-- *********************************************/

ENTITY interleaver IS 
generic(
  SYMBOL_LENGTH     : integer := 4;
  CODEWORD_LENGTH   : integer := 15; -- 
  MAX_DEPTH         : integer := 69; -- 1028=~1035bits / 15 = 69 max columns
  DEPTH_LENGTH      : integer := 7; -- 69 ~ 128 = 2^7
  MAX_T_LENGTH      : integer := 11; -- 1035 ~ 2048 ->>> MAX_DEPTH * (CODEWORD_LENGTH - 1)
  MAX_IT_LENGTH     : integer := 4 -- ~log2(CODEWORD_LENGTH)
);
PORT(
  d   : IN STD_LOGIC_VECTOR((SYMBOL_LENGTH - 1) DOWNTO 0);
  enable : IN STD_LOGIC;
  depth : IN STD_LOGIC_VECTOR((DEPTH_LENGTH - 1) DOWNTO 0); -- represent 18 in binary
  clk : IN STD_LOGIC; -- clock.
  q   : OUT STD_LOGIC_VECTOR((SYMBOL_LENGTH - 1) DOWNTO 0);
  state: out STD_LOGIC_VECTOR(2 downto 0);
  flushing : OUT STD_LOGIC;
  finished : OUT STD_LOGIC
);
END interleaver;

ENTITY ram IS
	PORT
	(
		address_a		: IN STD_LOGIC_VECTOR (10 DOWNTO 0);
		address_b		: IN STD_LOGIC_VECTOR (10 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data_a		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		data_b		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		wren_a		: IN STD_LOGIC  := '0';
		wren_b		: IN STD_LOGIC  := '0';
		q_a		: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		q_b		: OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	);
END ram;

ARCHITECTURE behavior OF interleaver IS	
    --TYPE memory IS ARRAY (0 TO ((MAX_DEPTH * CODEWORD_LENGTH) - 1)) OF STD_LOGIC_VECTOR((SYMBOL_LENGTH - 1) DOWNTO 0);
    type state_type is (s0,s1,s2,s3,s4,s5);  --type of state machine.
    signal current_s: state_type := s0;
    signal next_s: state_type;  --current and next state declaration.
    signal address_a_sig : STD_LOGIC_VECTOR(10 DOWNTO 0);
	 signal address_b_sig : STD_LOGIC_VECTOR(10 DOWNTO 0);
	 signal data_a_sig : STD_LOGIC_VECTOR (3 DOWNTO 0);
	 signal data_b_sig : STD_LOGIC_VECTOR (3 DOWNTO 0);
	 signal wren_a : STD_LOGIC;
	 signal wren_b : STD_LOGIC;
	 signal q_a : STD_LOGIC_VECTOR (3 DOWNTO 0);
	 signal q_b : STD_LOGIC_VECTOR (3 DOWNTO 0);
	 
    BEGIN
	 -- instance memory
	 ram_inst : ram PORT MAP (
		address_a	 => address_a_sig,
		address_b	 => address_b_sig,
		clock	 		 => clk,
		data_a	    => data_a_sig,
		data_b	    => data_b_sig,
		wren_a	    => wren_a_sig, -- 0 write 1 read
		wren_b	    => wren_b_sig,
		q_a	       => q_a_sig,
		q_b	       => q_b_sig
	 );
    -- state change and async reset
    process(clk, enable)
        begin
        if (enable = '0') then
            current_s <= s0;
        elsif (rising_edge(clk)) then
            current_s <= next_s; -- state change
        end if;
    end process;
    
    -- actual logic
    process(current_s)
        -- variables
        --variable RAM : memory;
        variable i : integer range 0 to DEPTH_LENGTH; -- [0,68] (DEPTH_LENGTH)
        variable t : integer range 0 to MAX_T_LENGTH; -- [0,69*14] (MAX_T_LENGTH)
        variable it : integer range 0 to MAX_IT_LENGTH; -- [0,15] (MAX_IT_LENGTH)
        variable max_t : integer range 0 to MAX_T_LENGTH; -- [0,69*14 + 68] @todo verify if MAX_T_LENGTH is valid in all cases (MAX_T_LENGTH)
		  variable aux10 : std_logic_vector(10 downto 0);
		  
        begin
        case current_s is
        -- STATE 0 (INITIALIZE ALL VARIABLES)
        when s0 =>        --when current state is "s0"
            state <= "000";
            q <= "0000";
            finished <= '0';
            flushing <= '0';
            i := 0;
            t := 0;
            it := 0;
				-- RAM Stuff
				wren_a <= '1';
				wren_b <= '1';
				data_a_sig <= "0000";
				data_b_sig <= "0000";
				address_a <= "0000000000";
				address_b <= "0000000000";
				aux10 := 0;
				-- END RAM Stuff
            next_s <= s1;
        -- STATE 2 (STORE INTO RAM AND ITERATE DUAL)
        when s1 =>
            state <= "010";
            if (it < CODEWORD_LENGTH) then -- still valid store
                t := t + to_integer(unsigned(depth));
                
                -- (WRITE) RAM(i + t) := d;
                aux10 := std_logic_vector(to_unsigned(i + t + to_integer(unsigned(depth)), 10));
                address_a <= aux10;
                data_a_sig <= d;
                wren_a <= '1'; -- recording may need additional clocks 
                -- end (WRITE)
					 
                it := it + 1;
                next_s <= s2; -- sends to dual pair
            else -- no more depths to go
                if (i < to_integer(unsigned(depth))) then -- verify if its not last it
                    i := i + 1;
                    t := 0;
                    it := 1; -- @TODO verify later is it okay to start with 1

                    -- (WRITE) RAM(i + t) := d;
                    aux10 := std_logic_vector(to_unsigned(i + t + to_integer(unsigned(depth)), 10));
                    address_a <= aux10;
                    data_a_sig <= d;
                    wren_a <= '1'; -- recording may need additional clocks 
                    -- end (WRITE)
						  
                    next_s <= s2; -- sends to dual pair
                else -- first flush
                    flushing <= '1'; -- send flushing signal
                    max_t := i + t;
                    t := 1;

                    -- (READ) q <= RAM(t); -- flush symbol
                    address_a <= "00000000000";
                    wren_a <= '0';
                    q <= q_a;
                    -- end (READ)
						  
                    next_s <= s3; -- keep on flushing
                end if;
            end if;
        -- STATE 2 (STORE INTO RAM AND ITERATE DUAL)
        when s2 =>
            state <= "011";
            if (it < CODEWORD_LENGTH) then -- still valid store
                t := t + to_integer(unsigned(depth));
                
                -- (WRITE) RAM(i + t) := d;
                aux10 := std_logic_vector(to_unsigned(i + t + to_integer(unsigned(depth)), 10));
                address_a <= aux10;
                data_a_sig <= d;
                wren_a <= '1'; -- recording may need additional clocks 
                -- end (WRITE)
					 
                it := it + 1;
                next_s <= s1; -- sends to dual pair
            else -- no more depths to go
                if (i < to_integer(unsigned(depth))) then -- verify if its not last it
                    i := i + 1;
                    t := 0;
                    it := 1; -- @TODO verify later is it okay to start with 1
						  
                    -- (WRITE) RAM(i + t) := d;
                    aux10 := std_logic_vector(to_unsigned(i + t + to_integer(unsigned(depth)), 10));
                    address_a <= aux10;
                    data_a_sig <= d;
                    wren_a <= '1'; -- recording may need additional clocks 
                    -- end (WRITE)
						  
                    next_s <= s1; -- sends to dual pair
                else -- first flush
                    flushing <= '1'; -- send flushing signal
                    max_t := i + t;
                    t := 1;

                    -- (READ) q <= RAM(t); -- flush symbol
                    address_a <= "00000000000";
                    wren_a <= '0';
                    q <= q_a;
                    -- end (READ)
					 
                    next_s <= s3; -- keep on flushing
                end if;
            end if;
        -- STATE 3 (OUTPUT DATA DUAL)
        when s3 =>
            state <= "100";
            if (t < max_t) then -- still okay to flush
                
                -- (READ) q <= RAM(t); -- flush symbol
                address_a <= std_logic_vector(to_unsigned(t, 10));
                wren_a <= '0';
                q <= q_a;
                -- end (READ)
					 
                t := t + 1;
                next_s <= s4; -- sends to flush pair state
            else
                finished <= '1';
                flushing <= '0';
                next_s <= s5; -- ends the interleaving process
            end if;
        -- STATE 4 (OUTPUT DATA DUAL)
        when s4 =>
            state <= "101";
            if (t < max_t) then -- still okay to flush

                -- q <= RAM(t); -- flush symbol
                address_a <= std_logic_vector(to_unsigned(t, 10));
                wren_a <= '0';
                q <= q_a;
                -- end RAM
					 
                t := t + 1;
                next_s <= s3; -- sends to flush pair state
            else
                finished <= '1';
                flushing <= '0';
                next_s <= s5; -- ends the interleaving process
            end if;
        when s5 =>
            state <= "110";
            -- waiting to be reset
        when others =>
            state <= "111";
        end case;
    end process;

END behavior;