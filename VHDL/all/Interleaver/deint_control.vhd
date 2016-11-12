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

ENTITY deint_control IS 
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
  addressA   : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
  write_read : OUT STD_LOGIC;
  flag_deint : OUT STD_LOGIC;
  state: out STD_LOGIC_VECTOR(2 downto 0)
  --mem_sel : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
  --rw : OUT STD_LOGIC;
  --iterator: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
  --index : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
  --term : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
);
END deint_control;


ARCHITECTURE behavior OF deint_control IS	
    --TYPE memory IS ARRAY (0 TO ((MAX_DEPTH * CODEWORD_LENGTH) - 1)) OF STD_LOGIC_VECTOR((SYMBOL_LENGTH - 1) DOWNTO 0);
    type state_type is (s0,s1,s2,s3,s4,s5,s6);  --type of state machine.
    signal current_s: state_type := s0;
    signal next_s: state_type;  --current and next state declaration.
    signal address_a_sig : STD_LOGIC_VECTOR(12 DOWNTO 0);
	 signal data_a_sig : STD_LOGIC_VECTOR (3 DOWNTO 0);
	 signal wren_a_sig : STD_LOGIC;
	 signal q_a_sig : STD_LOGIC_VECTOR (3 DOWNTO 0);

-- comeco bagunca namo
-- 0 15 1 16 2 17 3 18 _4_ 19 _5_ 20 _6_ 21 posso comecar deint payload
-- recebendo header s1;s2
-- counter++
-- shift_reg(30 downto 0) <= shift_reg(31 downto 1);
-- length(8downto0) <= shift_reg(6) & shift_reg(4) & shift_reg(2) & ...
-- if counter > HEADER_LENGTH
 -- comeca a receber payload real com LENGTH VARIAVEL....
-- end if;
-- fim bagunca
	 
    BEGIN
    -- state change and async reset
    process(clk)
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
        variable i : integer range 0 to 68; --DEPTH_LENGTH; -- [0,68] (DEPTH_LENGTH)
        variable t : integer range 0 to 966; --MAX_T_LENGTH; -- [0,69*14] (MAX_T_LENGTH)
        variable it : integer range 0 to 15; -- MAX_IT_LENGTH; -- [0,15] (MAX_IT_LENGTH)
        variable max_t : integer range 0 to 1034; --MAX_T_LENGTH; -- [0,69*14 + 68] @todo verify if MAX_T_LENGTH is valid in all cases (MAX_T_LENGTH)
		  variable aux10 : std_logic_vector(12 downto 0);
		  variable aux1 : std_logic := '1';
		  variable old_max_t : integer range 0 to 1034 := 0;
        begin
		  
		  max_t := old_max_t;
		  flushing <= '0';
		  
        case current_s is
        -- STATE 0 (INITIALIZE ALL VARIABLES)
        when s0 =>        --when current state is "s0"
			
			next_s <= s1;
        -- STATE 1 (STORE INTO RAM AND ITERATE DUAL)
        when s1 =>
            state <= "001";
            if (it < CODEWORD_LENGTH) then -- still valid store
				write_read <= '1';
				
				
				
                next_s <= s2; -- sends to dual pair
            else -- no more depths to go
                if (i < to_integer(unsigned(depth)) - 1) then -- verify if its not last it
                    i := i + 1;
                    it := 1; -- @TODO verify later is it okay to start with 1

                    -- (WRITE) RAM(i + t) := d;
                    aux10 := std_logic_vector(to_unsigned(i, 13));
                    address_a_sig <= aux10;
                    data_a_sig <= d;
                    wren_a_sig <= '1'; -- recording may need additional clocks 
                    -- end (WRITE)
						  
						  t := to_integer(unsigned(depth));
                    next_s <= s2; -- sends to dual pair
                else -- first flush
                    --flushing <= '1'; -- send flushing signal
                    max_t := i + t;
						  old_max_t := max_t;
                    t := 1;

                    -- (READ) q <= RAM(t); -- flush symbol
                    address_a_sig <= "0000000000000";
                    wren_a_sig <= '0';
                    q <= q_a_sig;
                    -- end (READ)
						  
                    next_s <= s6; -- keep on flushing
                end if;
            end if;
        -- STATE 2 (STORE INTO RAM AND ITERATE DUAL)
        when s2 =>
            state <= "010";
            if (it < CODEWORD_LENGTH) then -- still valid store
				
                -- (WRITE) RAM(i + t) := d;
                aux10 := std_logic_vector(to_unsigned(i + t, 13));
                address_a_sig <= aux10;
                data_a_sig <= d;
                wren_a_sig <= '1'; -- recording may need additional clocks 
                -- end (WRITE)
					 
					 t := t + to_integer(unsigned(depth)); -- fill in horizontally
                it := it + 1;
                next_s <= s1; -- sends to dual pair
            else -- no more depths to go
                if (i < to_integer(unsigned(depth)) - 1) then -- verify if its not last it
                    i := i + 1;
                    it := 1; -- @TODO verify later is it okay to start with 1
						  
                    -- (WRITE) RAM(i + t) := d;
                    aux10 := std_logic_vector(to_unsigned(i, 13));
                    address_a_sig <= aux10;
                    data_a_sig <= d;
                    wren_a_sig <= '1'; -- recording may need additional clocks 
                    -- end (WRITE)
						  
						  t := to_integer(unsigned(depth));
                    next_s <= s1; -- sends to dual pair
                else -- first flush
                    --flushing <= '1'; -- send flushing signal
                    max_t := i + t;
						  old_max_t := max_t;
                    t := 1;

                    -- (READ) q <= RAM(t); -- flush symbol
                    address_a_sig <= "0000000000000";
                    wren_a_sig <= '0';
                    q <= q_a_sig;
                    -- end (READ)
					 
                    next_s <= s6; -- keep on flushing
                end if;
            end if;
        -- STATE 3 (OUTPUT DATA DUAL)
        when s3 =>
            state <= "011";
            if (t <= max_t + 1) then -- still okay to flush
					 if (aux1 = '0') then
						aux1 := '1';
					 else 
						flushing <= '1';
					 end if;
					 
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
            if (t <= max_t + 1) then -- still okay to flush
					 if (aux1 = '0') then
						aux1 := '1';
					 else 
						flushing <= '1';
					 end if;
					 
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
	
	
	addressA <= address_a_sig;
END behavior;