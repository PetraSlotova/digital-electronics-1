------------------------------------------------------------
--
-- Testbench for 3-bit multiplexer.
-- EDA Playground
--
-- Copyright (c) 2020-Present Tomas Fryza
-- Dept. of Radio Electronics, Brno Univ. of Technology, Czechia
-- This work is licensed under the terms of the MIT license.
--
------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

------------------------------------------------------------
-- Entity declaration for testbench
------------------------------------------------------------
entity mux_3bit_4to1 is
    -- Entity of testbench is always empty
end entity mux_3bit_4to1;

------------------------------------------------------------
-- Architecture body for testbench
------------------------------------------------------------
architecture testbench of mux_3bit_4to1 is

    -- Local signals
    signal s_a_i           : std_logic_vector(3 - 1 downto 0);
    signal s_b_i           : std_logic_vector(3 - 1 downto 0);
    signal s_c_i           : std_logic_vector(3 - 1 downto 0);
    signal s_d_i           : std_logic_vector(3 - 1 downto 0);
    signal s_sel_i         : std_logic_vector(2 - 1 downto 0);
    signal s_f_o           : std_logic_vector(3 - 1 downto 0);

begin
    -- Connecting testbench signals with comparator_2bit
    -- entity (Unit Under Test)
    uut_comparator_4bit : entity work.mux_3bit_4to1
        port map(
            a_i           => s_a_i,
            b_i           => s_b_i,
            c_i           => s_c_i,
            d_i           => s_d_i,
            sel_i         => s_sel_i,
            f_o           => s_f_o
        );

    --------------------------------------------------------
    -- Data generation process
    --------------------------------------------------------
    p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

        -- First test case
        s_d <= "000"; 
        s_c <= "001"; 
        s_b <= "010"; 
        s_a <= "011"; 
        wait for 100 ns;
        
        
        -- Expected output
        assert ((s_B_greater_A = '1') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '0'))
        -- If false, then report an error
        report "Input combination 0100, 0001" severity error;
        
        -- Second test case
        s_b <= "0101"; 
        s_a <= "0111"; 
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '1'))
        -- If false, then report an error
        report "Input combination 0101, 0111" severity error;
        
        -- Third test case
        s_b <= "0110"; 
        s_a <= "0110"; 
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '1') and
                (s_B_equals_A  = '1') and
                (s_B_less_A    = '0'))
        -- If false, then report an error
        report "Input combination 0110, 0110" severity error;
        
        -- Fourth test case
        s_b <= "0001"; 
        s_a <= "0000"; 
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '1') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '0'))
        -- If false, then report an error
        report "Input combination 0101, 0111" severity error;
		

        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;


end architecture testbench;
