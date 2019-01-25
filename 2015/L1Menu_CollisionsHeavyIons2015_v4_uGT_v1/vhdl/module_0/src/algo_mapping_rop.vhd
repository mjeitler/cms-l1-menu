-- Description:
-- Mapping of algo indexes for ROP

-- ========================================================
-- from TME:

-- Unique ID of L1 Trigger Menu:
-- X"2fa70355c6305e2ab9b2006f06c8b67d"

-- Name of L1 Trigger Menu:
-- L1Menu_CollisionsHeavyIons2015_v4_uGT_v1

-- Scale set:
-- None

-- Version of L1 Trigger Menu Compiler:
-- v0.0.1

-- ========================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

use work.gtl_pkg.ALL;
use work.gt_mp7_core_pkg.all;

entity algo_mapping_rop is
    port(
        lhc_clk : in std_logic;
        algo_before_prescaler : in std_logic_vector(NR_ALGOS-1 downto 0);
        algo_after_prescaler : in std_logic_vector(NR_ALGOS-1 downto 0);
        algo_after_finor_mask : in std_logic_vector(NR_ALGOS-1 downto 0);
        algo_before_prescaler_rop : out std_logic_vector(MAX_NR_ALGOS-1 downto 0);
        algo_after_prescaler_rop : out std_logic_vector(MAX_NR_ALGOS-1 downto 0);
        algo_after_finor_mask_rop : out std_logic_vector(MAX_NR_ALGOS-1 downto 0)
    );
end algo_mapping_rop;

architecture rtl of algo_mapping_rop is
    signal a_b_p: std_logic_vector(NR_ALGOS-1 downto 0);
    signal a_a_p: std_logic_vector(NR_ALGOS-1 downto 0);
    signal a_a_f: std_logic_vector(NR_ALGOS-1 downto 0);
    signal algo_before_prescaler_rop_int: std_logic_vector(MAX_NR_ALGOS-1 downto 0);
    signal algo_after_prescaler_rop_int: std_logic_vector(MAX_NR_ALGOS-1 downto 0);
    signal algo_after_finor_mask_rop_int: std_logic_vector(MAX_NR_ALGOS-1 downto 0);
begin

a_b_p <= algo_before_prescaler;
a_a_p <= algo_after_prescaler;
a_a_f <= algo_after_finor_mask;

-- ==== Inserted by TME - begin =============================================================================================================

algo_before_prescaler_rop_int <= (
25 => a_b_p(0),
26 => a_b_p(1),
27 => a_b_p(2),
28 => a_b_p(3),
29 => a_b_p(4),
30 => a_b_p(5),
31 => a_b_p(6),
33 => a_b_p(7),
34 => a_b_p(8),
35 => a_b_p(9),
42 => a_b_p(10),
44 => a_b_p(11),
45 => a_b_p(12),
46 => a_b_p(13),
47 => a_b_p(14),
48 => a_b_p(15),
55 => a_b_p(16),
56 => a_b_p(17),
57 => a_b_p(18),
59 => a_b_p(19),
61 => a_b_p(20),
62 => a_b_p(21),
63 => a_b_p(22),
64 => a_b_p(23),
65 => a_b_p(24),
66 => a_b_p(25),
67 => a_b_p(26),
68 => a_b_p(27),
69 => a_b_p(28),
70 => a_b_p(29),
71 => a_b_p(30),
72 => a_b_p(31),
76 => a_b_p(32),
78 => a_b_p(33),
85 => a_b_p(34),
91 => a_b_p(35),
92 => a_b_p(36),
93 => a_b_p(37),
others => '0');

algo_after_prescaler_rop_int <= (
25 => a_a_p(0),
26 => a_a_p(1),
27 => a_a_p(2),
28 => a_a_p(3),
29 => a_a_p(4),
30 => a_a_p(5),
31 => a_a_p(6),
33 => a_a_p(7),
34 => a_a_p(8),
35 => a_a_p(9),
42 => a_a_p(10),
44 => a_a_p(11),
45 => a_a_p(12),
46 => a_a_p(13),
47 => a_a_p(14),
48 => a_a_p(15),
55 => a_a_p(16),
56 => a_a_p(17),
57 => a_a_p(18),
59 => a_a_p(19),
61 => a_a_p(20),
62 => a_a_p(21),
63 => a_a_p(22),
64 => a_a_p(23),
65 => a_a_p(24),
66 => a_a_p(25),
67 => a_a_p(26),
68 => a_a_p(27),
69 => a_a_p(28),
70 => a_a_p(29),
71 => a_a_p(30),
72 => a_a_p(31),
76 => a_a_p(32),
78 => a_a_p(33),
85 => a_a_p(34),
91 => a_a_p(35),
92 => a_a_p(36),
93 => a_a_p(37),
others => '0');

algo_after_finor_mask_rop_int <= (
25 => a_a_f(0),
26 => a_a_f(1),
27 => a_a_f(2),
28 => a_a_f(3),
29 => a_a_f(4),
30 => a_a_f(5),
31 => a_a_f(6),
33 => a_a_f(7),
34 => a_a_f(8),
35 => a_a_f(9),
42 => a_a_f(10),
44 => a_a_f(11),
45 => a_a_f(12),
46 => a_a_f(13),
47 => a_a_f(14),
48 => a_a_f(15),
55 => a_a_f(16),
56 => a_a_f(17),
57 => a_a_f(18),
59 => a_a_f(19),
61 => a_a_f(20),
62 => a_a_f(21),
63 => a_a_f(22),
64 => a_a_f(23),
65 => a_a_f(24),
66 => a_a_f(25),
67 => a_a_f(26),
68 => a_a_f(27),
69 => a_a_f(28),
70 => a_a_f(29),
71 => a_a_f(30),
72 => a_a_f(31),
76 => a_a_f(32),
78 => a_a_f(33),
85 => a_a_f(34),
91 => a_a_f(35),
92 => a_a_f(36),
93 => a_a_f(37),
others => '0');
-- ==== Inserted by TME - end ===============================================================================================================

algo_2_rop_p: process(lhc_clk, algo_before_prescaler_rop_int, algo_after_prescaler_rop_int, algo_after_finor_mask_rop_int)
    begin
    if lhc_clk'event and lhc_clk = '1' then
        algo_before_prescaler_rop <= algo_before_prescaler_rop_int;
        algo_after_prescaler_rop <= algo_after_prescaler_rop_int;
        algo_after_finor_mask_rop <= algo_after_finor_mask_rop_int;
    end if;
end process;

end architecture rtl;