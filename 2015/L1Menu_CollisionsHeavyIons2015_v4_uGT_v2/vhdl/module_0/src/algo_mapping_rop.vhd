-- Description:
-- Mapping of algo indexes for ROP

-- ========================================================
-- from TME:

-- Unique ID of L1 Trigger Menu:
-- X"34419dfbf65d598ebdbfe739576fc4e9"

-- Name of L1 Trigger Menu:
-- L1Menu_CollisionsHeavyIons2015_v4_uGT_v2

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
1 => a_b_p(0),
2 => a_b_p(1),
3 => a_b_p(2),
4 => a_b_p(3),
5 => a_b_p(4),
6 => a_b_p(5),
7 => a_b_p(6),
8 => a_b_p(7),
9 => a_b_p(8),
10 => a_b_p(9),
11 => a_b_p(10),
12 => a_b_p(11),
13 => a_b_p(12),
14 => a_b_p(13),
15 => a_b_p(14),
16 => a_b_p(15),
17 => a_b_p(16),
18 => a_b_p(17),
19 => a_b_p(18),
20 => a_b_p(19),
21 => a_b_p(20),
22 => a_b_p(21),
23 => a_b_p(22),
24 => a_b_p(23),
25 => a_b_p(24),
26 => a_b_p(25),
27 => a_b_p(26),
28 => a_b_p(27),
29 => a_b_p(28),
30 => a_b_p(29),
31 => a_b_p(30),
32 => a_b_p(31),
33 => a_b_p(32),
34 => a_b_p(33),
35 => a_b_p(34),
36 => a_b_p(35),
37 => a_b_p(36),
38 => a_b_p(37),
39 => a_b_p(38),
40 => a_b_p(39),
41 => a_b_p(40),
42 => a_b_p(41),
43 => a_b_p(42),
44 => a_b_p(43),
45 => a_b_p(44),
46 => a_b_p(45),
47 => a_b_p(46),
48 => a_b_p(47),
49 => a_b_p(48),
50 => a_b_p(49),
51 => a_b_p(50),
52 => a_b_p(51),
53 => a_b_p(52),
54 => a_b_p(53),
55 => a_b_p(54),
56 => a_b_p(55),
57 => a_b_p(56),
58 => a_b_p(57),
59 => a_b_p(58),
60 => a_b_p(59),
61 => a_b_p(60),
62 => a_b_p(61),
63 => a_b_p(62),
64 => a_b_p(63),
65 => a_b_p(64),
66 => a_b_p(65),
67 => a_b_p(66),
others => '0');

algo_after_prescaler_rop_int <= (
1 => a_a_p(0),
2 => a_a_p(1),
3 => a_a_p(2),
4 => a_a_p(3),
5 => a_a_p(4),
6 => a_a_p(5),
7 => a_a_p(6),
8 => a_a_p(7),
9 => a_a_p(8),
10 => a_a_p(9),
11 => a_a_p(10),
12 => a_a_p(11),
13 => a_a_p(12),
14 => a_a_p(13),
15 => a_a_p(14),
16 => a_a_p(15),
17 => a_a_p(16),
18 => a_a_p(17),
19 => a_a_p(18),
20 => a_a_p(19),
21 => a_a_p(20),
22 => a_a_p(21),
23 => a_a_p(22),
24 => a_a_p(23),
25 => a_a_p(24),
26 => a_a_p(25),
27 => a_a_p(26),
28 => a_a_p(27),
29 => a_a_p(28),
30 => a_a_p(29),
31 => a_a_p(30),
32 => a_a_p(31),
33 => a_a_p(32),
34 => a_a_p(33),
35 => a_a_p(34),
36 => a_a_p(35),
37 => a_a_p(36),
38 => a_a_p(37),
39 => a_a_p(38),
40 => a_a_p(39),
41 => a_a_p(40),
42 => a_a_p(41),
43 => a_a_p(42),
44 => a_a_p(43),
45 => a_a_p(44),
46 => a_a_p(45),
47 => a_a_p(46),
48 => a_a_p(47),
49 => a_a_p(48),
50 => a_a_p(49),
51 => a_a_p(50),
52 => a_a_p(51),
53 => a_a_p(52),
54 => a_a_p(53),
55 => a_a_p(54),
56 => a_a_p(55),
57 => a_a_p(56),
58 => a_a_p(57),
59 => a_a_p(58),
60 => a_a_p(59),
61 => a_a_p(60),
62 => a_a_p(61),
63 => a_a_p(62),
64 => a_a_p(63),
65 => a_a_p(64),
66 => a_a_p(65),
67 => a_a_p(66),
others => '0');

algo_after_finor_mask_rop_int <= (
1 => a_a_f(0),
2 => a_a_f(1),
3 => a_a_f(2),
4 => a_a_f(3),
5 => a_a_f(4),
6 => a_a_f(5),
7 => a_a_f(6),
8 => a_a_f(7),
9 => a_a_f(8),
10 => a_a_f(9),
11 => a_a_f(10),
12 => a_a_f(11),
13 => a_a_f(12),
14 => a_a_f(13),
15 => a_a_f(14),
16 => a_a_f(15),
17 => a_a_f(16),
18 => a_a_f(17),
19 => a_a_f(18),
20 => a_a_f(19),
21 => a_a_f(20),
22 => a_a_f(21),
23 => a_a_f(22),
24 => a_a_f(23),
25 => a_a_f(24),
26 => a_a_f(25),
27 => a_a_f(26),
28 => a_a_f(27),
29 => a_a_f(28),
30 => a_a_f(29),
31 => a_a_f(30),
32 => a_a_f(31),
33 => a_a_f(32),
34 => a_a_f(33),
35 => a_a_f(34),
36 => a_a_f(35),
37 => a_a_f(36),
38 => a_a_f(37),
39 => a_a_f(38),
40 => a_a_f(39),
41 => a_a_f(40),
42 => a_a_f(41),
43 => a_a_f(42),
44 => a_a_f(43),
45 => a_a_f(44),
46 => a_a_f(45),
47 => a_a_f(46),
48 => a_a_f(47),
49 => a_a_f(48),
50 => a_a_f(49),
51 => a_a_f(50),
52 => a_a_f(51),
53 => a_a_f(52),
54 => a_a_f(53),
55 => a_a_f(54),
56 => a_a_f(55),
57 => a_a_f(56),
58 => a_a_f(57),
59 => a_a_f(58),
60 => a_a_f(59),
61 => a_a_f(60),
62 => a_a_f(61),
63 => a_a_f(62),
64 => a_a_f(63),
65 => a_a_f(64),
66 => a_a_f(65),
67 => a_a_f(66),
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