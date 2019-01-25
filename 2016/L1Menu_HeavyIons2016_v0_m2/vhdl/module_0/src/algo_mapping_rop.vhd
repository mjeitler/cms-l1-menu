-- Description:
-- Mapping of algo indexes for ROP

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

use work.gtl_pkg.ALL;
use work.gt_mp7_core_pkg.all;

entity algo_mapping_rop is
    port(
        lhc_clk : in std_logic;
        algo_bx_masks_global :  in std_logic_vector(MAX_NR_ALGOS-1 downto 0);
        algo_bx_masks_local :  out std_logic_vector(NR_ALGOS-1 downto 0);
        rate_cnt_before_prescaler_local :  in rate_counter_array;
        rate_cnt_before_prescaler_global :  out rate_counter_global_array; -- to be defined in gt_mp7_core_pkg
        prescale_factor_global :  in prescale_factor_global_array; -- to be defined in gt_mp7_core_pkg
        prescale_factor_local :  out prescale_factor_array;
        rate_cnt_after_prescaler_local :  in rate_counter_array;
        rate_cnt_after_prescaler_global :  out rate_counter_global_array; -- to be defined in gt_mp7_core_pkg
        rate_cnt_post_dead_time_local :  in rate_counter_array;
        rate_cnt_post_dead_time_global :  out rate_counter_global_array; -- to be defined in gt_mp7_core_pkg
        finor_masks_global :  in std_logic_vector(MAX_NR_ALGOS-1 downto 0);
        finor_masks_local :  out std_logic_vector(NR_ALGOS-1 downto 0);
        veto_masks_global :  in std_logic_vector(MAX_NR_ALGOS-1 downto 0);
        veto_masks_local :  out std_logic_vector(NR_ALGOS-1 downto 0);
        algo_after_gtLogic : in std_logic_vector(NR_ALGOS-1 downto 0);
        algo_after_bxomask : in std_logic_vector(NR_ALGOS-1 downto 0);
        algo_after_prescaler : in std_logic_vector(NR_ALGOS-1 downto 0);
        algo_after_gtLogic_rop : out std_logic_vector(MAX_NR_ALGOS-1 downto 0);
        algo_after_bxomask_rop : out std_logic_vector(MAX_NR_ALGOS-1 downto 0);
        algo_after_prescaler_rop : out std_logic_vector(MAX_NR_ALGOS-1 downto 0)
    );
end algo_mapping_rop;

architecture rtl of algo_mapping_rop is
    type global_index_array is array (0 to NR_ALGOS-1) of integer;

-- HB 2016-03-02: inserted for global index
    constant global_index: global_index_array := (
-- ==== Inserted by TME - begin
         20, -- module_index: 0, name: L1_DoubleMu0_MassGT1_BptxAND
         75, -- module_index: 1, name: L1_SingleJet4_BptxAND
         81, -- module_index: 2, name: L1_SingleJet16
        141, -- module_index: 3, name: L1_ETT40
        135, -- module_index: 4, name: L1_ETT25
         83, -- module_index: 5, name: L1_SingleJet20
         82, -- module_index: 6, name: L1_SingleJet16_BptxAND
          5, -- module_index: 7, name: L1_SingleMu3_BptxAND
        138, -- module_index: 8, name: L1_ETT30_BptxAND
         85, -- module_index: 9, name: L1_SingleJet24
        139, -- module_index: 10, name: L1_ETT35
        142, -- module_index: 11, name: L1_ETT40_BptxAND
         84, -- module_index: 12, name: L1_SingleJet20_BptxAND
        140, -- module_index: 13, name: L1_ETT35_BptxAND
        209, -- module_index: 14, name: L1_BptxOR
         87, -- module_index: 15, name: L1_SingleJet28_BptxAND
         86, -- module_index: 16, name: L1_SingleJet24_BptxAND
         88, -- module_index: 17, name: L1_SingleJet32_BptxAND
        196, -- module_index: 18, name: L1_DoubleEG2_NotMinimumBiasHF0_AND
         89, -- module_index: 19, name: L1_SingleJet36_BptxAND
        197, -- module_index: 20, name: L1_DoubleEG2_NotMinimumBiasHF0_AND_BptxAND
         74, -- module_index: 21, name: L1_SingleJet4
         17, -- module_index: 22, name: L1_DoubleMu0
         19, -- module_index: 23, name: L1_DoubleMuOpen_MassGT1_BptxAND
        146, -- module_index: 24, name: L1_ETT50_BptxAND
         91, -- module_index: 25, name: L1_SingleJet44_BptxAND
        143, -- module_index: 26, name: L1_ETT45
        147, -- module_index: 27, name: L1_ETT60
        148, -- module_index: 28, name: L1_ETT60_BptxAND
        247, -- module_index: 29, name: L1_MinimumBiasHF0_AND_BptxAND
         23, -- module_index: 30, name: L1_DoubleMu10_BptxAND
        149, -- module_index: 31, name: L1_ETT80
         24, -- module_index: 32, name: L1_DoubleMu10_Mass60to150_BptxAND
        200, -- module_index: 33, name: L1_NotMinimumBiasHF0_AND
        150, -- module_index: 34, name: L1_ETT80_BptxAND
        169, -- module_index: 35, name: L1_TowerCount90_BptxAND
         93, -- module_index: 36, name: L1_SingleJet52_BptxAND
         15, -- module_index: 37, name: L1_DoubleMuOpen
         16, -- module_index: 38, name: L1_DoubleMuOpen_BptxAND
        144, -- module_index: 39, name: L1_ETT45_BptxAND
         94, -- module_index: 40, name: L1_SingleJet56_BptxAND
        219, -- module_index: 41, name: L1_IsolatedBunch
         95, -- module_index: 42, name: L1_SingleJet60_BptxAND
        246, -- module_index: 43, name: L1_MinimumBiasHF0_OR_BptxAND
        251, -- module_index: 44, name: L1_MinimumBiasHF0_AND
         45, -- module_index: 45, name: L1_SingleEG30_BptxAND
        193, -- module_index: 46, name: L1_DoubleMuOpen_NotMinimumBiasHF0_AND_BptxAND
         77, -- module_index: 47, name: L1_SingleJet8
         21, -- module_index: 48, name: L1_DoubleMuOpen_OS_BptxAND
         78, -- module_index: 49, name: L1_SingleJet8_BptxAND
         22, -- module_index: 50, name: L1_DoubleMuOpen_SS_BptxAND
        195, -- module_index: 51, name: L1_MuOpen_NotMinimumBiasHF0_AND_BptxAND
        136, -- module_index: 52, name: L1_ETT25_BptxAND
          4, -- module_index: 53, name: L1_SingleMu3
        192, -- module_index: 54, name: L1_DoubleMuOpen_NotMinimumBiasHF0_AND
        145, -- module_index: 55, name: L1_ETT50
        194, -- module_index: 56, name: L1_MuOpen_NotMinimumBiasHF0_AND
          8, -- module_index: 57, name: L1_SingleMu7
        168, -- module_index: 58, name: L1_TowerCount85_BptxAND
        254, -- module_index: 59, name: L1_NotBptxOR
         10, -- module_index: 60, name: L1_SingleMu12_BptxAND
          7, -- module_index: 61, name: L1_SingleMu5_BptxAND
         39, -- module_index: 62, name: L1_SingleEG5
        201, -- module_index: 63, name: L1_NotMinimumBiasHF0_AND_BptxAND
         42, -- module_index: 64, name: L1_SingleEG14_BptxAND
        137, -- module_index: 65, name: L1_ETT30
          0, -- module_index: 66, name: L1_ZeroBias
        255, -- module_index: 67, name: L1_ZeroBias_copy
        189, -- module_index: 68, name: L1_SingleMuOpen_NotBptxOR
         41, -- module_index: 69, name: L1_SingleEG10_BptxAND
          2, -- module_index: 70, name: L1_SingleMuOpen
          3, -- module_index: 71, name: L1_SingleMuOpen_BptxAND
         43, -- module_index: 72, name: L1_SingleEG18_BptxAND
         18, -- module_index: 73, name: L1_DoubleMu0_BptxAND
         38, -- module_index: 74, name: L1_SingleEG2_BptxAND
         37, -- module_index: 75, name: L1_SingleEG2
          9, -- module_index: 76, name: L1_SingleMu7_BptxAND
         44, -- module_index: 77, name: L1_SingleEG24_BptxAND
        170, -- module_index: 78, name: L1_TowerCount100_BptxAND
        171, -- module_index: 79, name: L1_TowerCount120_BptxAND
        157, -- module_index: 80, name: L1_TowerCount45
        155, -- module_index: 81, name: L1_TowerCount40
         90, -- module_index: 82, name: L1_SingleJet40_BptxAND
        198, -- module_index: 83, name: L1_SingleEG5_NotMinimumBiasHF0_AND
        156, -- module_index: 84, name: L1_TowerCount40_BptxAND
        159, -- module_index: 85, name: L1_TowerCount50
         40, -- module_index: 86, name: L1_SingleEG5_BptxAND
        250, -- module_index: 87, name: L1_MinimumBiasHF0_OR
        158, -- module_index: 88, name: L1_TowerCount45_BptxAND
        161, -- module_index: 89, name: L1_TowerCount54_BptxAND
        199, -- module_index: 90, name: L1_SingleEG5_NotMinimumBiasHF0_AND_BptxAND
         51, -- module_index: 91, name: L1_SingleIsoEG10_BptxAND
        160, -- module_index: 92, name: L1_TowerCount50_BptxAND
         92, -- module_index: 93, name: L1_SingleJet48_BptxAND
         52, -- module_index: 94, name: L1_SingleIsoEG14_BptxAND
         53, -- module_index: 95, name: L1_SingleIsoEG18_BptxAND
        162, -- module_index: 96, name: L1_TowerCount58_BptxAND
         54, -- module_index: 97, name: L1_SingleIsoEG24_BptxAND
        163, -- module_index: 98, name: L1_TowerCount62_BptxAND
          6, -- module_index: 99, name: L1_SingleMu5
         55, -- module_index: 100, name: L1_SingleIsoEG30_BptxAND
        164, -- module_index: 101, name: L1_TowerCount66_BptxAND
         80, -- module_index: 102, name: L1_SingleJet12_BptxAND
         49, -- module_index: 103, name: L1_SingleIsoEG5
        165, -- module_index: 104, name: L1_TowerCount70_BptxAND
         50, -- module_index: 105, name: L1_SingleIsoEG5_BptxAND
         79, -- module_index: 106, name: L1_SingleJet12
        166, -- module_index: 107, name: L1_TowerCount74_BptxAND
        167, -- module_index: 108, name: L1_TowerCount80_BptxAND
        206, -- module_index: 109, name: L1_AlwaysTrue
-- ==== Inserted by TME - end
        others => 0
    );

-- HB 2016-03-02: inserted for global index
    signal rate_cnt_before_prescaler_global_int: rate_counter_global_array := (others => (others => '0'));
    signal rate_cnt_after_prescaler_global_int: rate_counter_global_array := (others => (others => '0'));
    signal rate_cnt_post_dead_time_global_int: rate_counter_global_array := (others => (others => '0'));

    signal algo_after_gtLogic_rop_int: std_logic_vector(MAX_NR_ALGOS-1 downto 0) := (others => '0');
    signal algo_after_bxomask_rop_int: std_logic_vector(MAX_NR_ALGOS-1 downto 0) := (others => '0');
    signal algo_after_prescaler_rop_int: std_logic_vector(MAX_NR_ALGOS-1 downto 0) := (others => '0');

begin

nr_algos_l: for i in 0 to NR_ALGOS-1 generate
-- HB 2016-03-02: inserted for global index
    algo_bx_masks_local(i) <= algo_bx_masks_global(global_index(i));
    rate_cnt_before_prescaler_global_int(global_index(i)) <= rate_cnt_before_prescaler_local(i);
    prescale_factor_local(i) <= prescale_factor_global(global_index(i));
    rate_cnt_after_prescaler_global_int(global_index(i)) <= rate_cnt_after_prescaler_local(i);
    rate_cnt_post_dead_time_global_int(global_index(i)) <= rate_cnt_post_dead_time_local(i);
    finor_masks_local(i) <= finor_masks_global(global_index(i));
    veto_masks_local(i) <= veto_masks_global(global_index(i));
    algo_after_gtLogic_rop_int(global_index(i)) <= algo_after_gtLogic(i);
    algo_after_bxomask_rop_int(global_index(i)) <= algo_after_bxomask(i);
    algo_after_prescaler_rop_int(global_index(i)) <= algo_after_prescaler(i);
end generate;

-- HB 2016-03-02: inserted for global index
rate_cnt_before_prescaler_global <= rate_cnt_before_prescaler_global_int;
rate_cnt_after_prescaler_global <= rate_cnt_after_prescaler_global_int;
rate_cnt_post_dead_time_global <= rate_cnt_post_dead_time_global_int;

-- algo_2_rop_p: process(lhc_clk, algo_after_gtLogic_rop_int, algo_after_bxomask_rop_int, algo_after_prescaler_rop_int, algo_after_finor_mask_rop_int)
algo_2_rop_p: process(lhc_clk, algo_after_gtLogic_rop_int, algo_after_bxomask_rop_int, algo_after_prescaler_rop_int)
    begin
    if lhc_clk'event and lhc_clk = '1' then
        algo_after_gtLogic_rop <= algo_after_gtLogic_rop_int;
        algo_after_bxomask_rop <= algo_after_bxomask_rop_int;
        algo_after_prescaler_rop <= algo_after_prescaler_rop_int;
    end if;
end process;

end architecture rtl;