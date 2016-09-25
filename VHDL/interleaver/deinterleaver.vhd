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

ENTITY deinterleaver IS 
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
  --mem_sel : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
  --rw : OUT STD_LOGIC;
  --iterator: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
  --index : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
  --term : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
);
END deinterleaver;


ARCHITECTURE behavior OF deinterleaver IS	
    --TYPE memory IS ARRAY (0 TO ((MAX_DEPTH * CODEWORD_LENGTH) - 1)) OF STD_LOGIC_VECTOR((SYMBOL_LENGTH - 1) DOWNTO 0);
    type state_type is (s0,s1,s2,s3,s4,s5,s6);  --type of state machine.
    signal current_s: state_type := s0;
    signal next_s: state_type;  --current and next state declaration.
    signal address_a_sig : STD_LOGIC_VECTOR(12 DOWNTO 0);
	 signal data_a_sig : STD_LOGIC_VECTOR (3 DOWNTO 0);
	 signal wren_a_sig : STD_LOGIC;
	 signal q_a_sig : STD_LOGIC_VECTOR (3 DOWNTO 0);
	
	COMPONENT ram IS
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (12 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	);
	END COMPONENT;

	 
    BEGIN
	 -- instance memory
	 ram_inst : ram PORT MAP (
		address	 => address_a_sig,
		clock	 		 => clk,
		data	    => data_a_sig,
		wren	    => wren_a_sig, -- 1=write 0=read
		q	       => q_a_sig
	 );
    -- state change and async reset
    process(clk)
        begin
		  if (rising_edge(clk)) then
            current_s <= next_s; -- state change
        end if;
    end process;
    
    -- actual logic
    process(current_s, enable)
        -- variables
        --variable RAM : memory;
        variable i : integer range 0 to 68; --DEPTH_LENGTH; -- [0,68] (DEPTH_LENGTH)
        variable t : integer range 0 to 966; --MAX_T_LENGTH; -- [0,69*14] (MAX_T_LENGTH)
        variable it : integer range 0 to 15; -- MAX_IT_LENGTH; -- [0,15] (MAX_IT_LENGTH)
        variable max_t : integer range 0 to 1034; --MAX_T_LENGTH; -- [0,69*14 + 68] @todo verify if MAX_T_LENGTH is valid in all cases (MAX_T_LENGTH)
		  variable aux10 : std_logic_vector(12 downto 0);
		  variable aux1 : std_logic := '1';
        begin
		  
		  --rw <= wren_a_sig;
		  --iterator <= std_logic_vector(to_unsigned(it, 4));
		  --index <= std_logic_vector(to_unsigned(i, 7));
		  --term <= std_logic_vector(to_unsigned(t, 10));
		  --mem_sel <= address_a_sig;
		  
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
				max_t := 0;
				
				-- RAM Stuff
				aux10 := "0000000000000";
				address_a_sig <= aux10;
				data_a_sig <= d;
				wren_a_sig <= '1';
				-- END RAM Stuff
            
				if (enable = '1') then
				   next_s <= s1;
				else
					next_s <= s0;
				end if;
        -- STATE 1 (STORE INTO RAM AND ITERATE DUAL)
        when s1 =>
            state <= "001";
            if (it < to_integer(unsigned(depth))) then -- still valid store
				
                -- (WRITE) RAM(i + t) := d;
                aux10 := std_logic_vector(to_unsigned(i + t, 13));
                address_a_sig <= aux10;
                data_a_sig <= d;
                wren_a_sig <= '1'; -- recording may need additional clocks 
                -- end (WRITE)
					 
					 t := t + CODEWORD_LENGTH; -- fill in horizontally
                it := it + 1;
                next_s <= s2; -- sends to dual pair
            else -- no more depths to go
                if (i < CODEWORD_LENGTH - 1) then -- verify if its not last it
                    i := i + 1;
                    it := 1; -- @TODO verify later is it okay to start with 1

                    -- (WRITE) RAM(i + t) := d;
                    aux10 := std_logic_vector(to_unsigned(i, 13));
                    address_a_sig <= aux10;
                    data_a_sig <= d;
                    wren_a_sig <= '1'; -- recording may need additional clocks 
                    -- end (WRITE)
						  
						  t := CODEWORD_LENGTH;
                    next_s <= s2; -- sends to dual pair
                else -- first flush
                    max_t := i + t;
                    t := 1;
						  
                    next_s <= s6; -- keep on flushing
                end if;
            end if;
        -- STATE 2 (STORE INTO RAM AND ITERATE DUAL)
        when s2 =>
            state <= "010";
            if (it < to_integer(unsigned(depth))) then -- still valid store
				
                -- (WRITE) RAM(i + t) := d;
                aux10 := std_logic_vector(to_unsigned(i + t, 13));
                address_a_sig <= aux10;
                data_a_sig <= d;
                wren_a_sig <= '1'; -- recording may need additional clocks 
                -- end (WRITE)
					 
					 t := t + CODEWORD_LENGTH; -- fill in horizontally
                it := it + 1;
                next_s <= s1; -- sends to dual pair
            else -- no more depths to go
                if (i < CODEWORD_LENGTH - 1) then -- verify if its not last it
                    i := i + 1;
                    it := 1; -- @TODO verify later is it okay to start with 1
						  
                    -- (WRITE) RAM(i + t) := d;
                    aux10 := std_logic_vector(to_unsigned(i, 13));
                    address_a_sig <= aux10;
                    data_a_sig <= d;
                    wren_a_sig <= '1'; -- recording may need additional clocks 
                    -- end (WRITE)
						  
						  t := CODEWORD_LENGTH;
                    next_s <= s1; -- sends to dual pair
                else -- first flush
                    max_t := i + t;
                    t := 1;
						  
                    next_s <= s6; -- keep on flushing
                end if;
            end if;
        -- STATE 3 (OUTPUT DATA DUAL)
        when s3 =>
            state <= "011";
            if (t < max_t) then -- still okay to flush
                flushing <= '1';
					 
                -- (READ) q <= RAM(t); -- flush symbol
                address_a_sig <= std_logic_vector(to_unsigned(t, 13));
                wren_a_sig <= '0';
                q <= q_a_sig;
                -- end (READ)
					 
                t := t + 1;
                next_s <= s4; -- sends to flush pair state
            else
                flushing <= '0';
                finished <= '1';
					 t := 0;
                next_s <= s5; -- ends the interleaving process
            end if;
        -- STATE 4 (OUTPUT DATA DUAL)
        when s4 =>
            state <= "100";
            if (t < max_t) then -- still okay to flush
					 flushing <= '1';
					 
                -- q <= RAM(t); -- flush symbol
                address_a_sig <= std_logic_vector(to_unsigned(t, 13));
                wren_a_sig <= '0';
                q <= q_a_sig;
                -- end RAM
					 
                t := t + 1;
                next_s <= s3; -- sends to flush pair state
            else
					 flushing <= '0';
                finished <= '1';
					 t := 0;
                next_s <= s5; -- ends the interleaving process
            end if;
        when s5 =>
            state <= "101";
				data_a_sig <= "0000";
				max_t := 0;
				q <= "0000";
            finished <= '1';
            flushing <= '0';
				next_s <= s5;
            -- waiting to be reset
		  when s6 => 
				state <= "110";
				flushing <= '0';
				
				-- (READ) q <= RAM(t); -- flush symbol
				address_a_sig <= std_logic_vector(to_unsigned(t, 13));
				wren_a_sig <= '0';
				q <= q_a_sig;
				-- end (READ)
				
				t := t + 1;
				next_s <= s3; -- sends to flush pair state
		  when others =>
            state <= "111";
				data_a_sig <= "0000";
				max_t := 0;
				q <= "0000";
            finished <= '0';
            flushing <= '0';
				next_s <= s0;
        end case;
    end process;

END behavior;