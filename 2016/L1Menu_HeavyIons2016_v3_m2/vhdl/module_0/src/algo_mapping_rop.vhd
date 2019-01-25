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
         30, -- module_index: 0, name: L1_DoubleMu0_MassGT1_BptxAND
         54, -- module_index: 1, name: L1_SingleIsoEG24_BptxAND
        312, -- module_index: 2, name: L1_TowerCount165_BptxAND
        300, -- module_index: 3, name: L1_TowerCount95_BptxAND
        313, -- module_index: 4, name: L1_TowerCount170_BptxAND
         55, -- module_index: 5, name: L1_SingleIsoEG30_BptxAND
        302, -- module_index: 6, name: L1_TowerCount110_BptxAND
          7, -- module_index: 7, name: L1_MinimumBiasHF0_OR_BptxAND_Copy
        202, -- module_index: 8, name: L1_MuOpen_NotMinimumBiasHF0_AND
         22, -- module_index: 9, name: L1_SingleMu7
         49, -- module_index: 10, name: L1_SingleIsoEG5
        194, -- module_index: 11, name: L1_MuOpen_NotMinimumBiasHF0_AND_BptxAND
        149, -- module_index: 12, name: L1_ETT80
        321, -- module_index: 13, name: L1_TowerCount180
         96, -- module_index: 14, name: L1_SingleJet12
        177, -- module_index: 15, name: L1_TowerCount45
        315, -- module_index: 16, name: L1_TowerCount180_BptxAND
        193, -- module_index: 17, name: L1_MuOpen_TwoTowerHFVeto_OR_BptxAND
          9, -- module_index: 18, name: L1_NotBptxOR
        183, -- module_index: 19, name: L1_TowerCount62_BptxAND
         99, -- module_index: 20, name: L1_SingleJet12_ForEta1p5
        175, -- module_index: 21, name: L1_TowerCount40
        317, -- module_index: 22, name: L1_TowerCount190_BptxAND
        309, -- module_index: 23, name: L1_TowerCount150_BptxAND
         42, -- module_index: 24, name: L1_SingleEG14_BptxAND
         97, -- module_index: 25, name: L1_SingleJet12_BptxAND
        100, -- module_index: 26, name: L1_SingleJet12_ForEta2p5_BptxAND
        319, -- module_index: 27, name: L1_TowerCount100
         13, -- module_index: 28, name: L1_SingleMu0
        101, -- module_index: 29, name: L1_SingleJet12_ForEta1p5_BptxAND
         41, -- module_index: 30, name: L1_SingleEG10_BptxAND
         98, -- module_index: 31, name: L1_SingleJet12_ForEta2p5
        102, -- module_index: 32, name: L1_SingleJet16
        176, -- module_index: 33, name: L1_TowerCount40_BptxAND
        211, -- module_index: 34, name: L1_DoubleMuOpen_ThreeTowerHFVeto_OR_BptxAND
        179, -- module_index: 35, name: L1_TowerCount50
         43, -- module_index: 36, name: L1_SingleEG18_BptxAND
        142, -- module_index: 37, name: L1_ETT40_BptxAND
        178, -- module_index: 38, name: L1_TowerCount45_BptxAND
         37, -- module_index: 39, name: L1_SingleEG2
        324, -- module_index: 40, name: L1_ETT110_BptxAND
        184, -- module_index: 41, name: L1_TowerCount66_BptxAND
         44, -- module_index: 42, name: L1_SingleEG24_BptxAND
        180, -- module_index: 43, name: L1_TowerCount50_BptxAND
          0, -- module_index: 44, name: L1_ZeroBias
        322, -- module_index: 45, name: L1_ETT90_BptxAND
         45, -- module_index: 46, name: L1_SingleEG30_BptxAND
        105, -- module_index: 47, name: L1_SingleJet20_BptxAND
         39, -- module_index: 48, name: L1_SingleEG5
        314, -- module_index: 49, name: L1_TowerCount175_BptxAND
         40, -- module_index: 50, name: L1_SingleEG5_BptxAND
        199, -- module_index: 51, name: L1_SingleEG5_NotMinimumBiasHF0_AND_BptxAND
        206, -- module_index: 52, name: L1_AlwaysTrue
         34, -- module_index: 53, name: L1_DoubleMu10_Mass60to150_BptxAND
        108, -- module_index: 54, name: L1_SingleJet24_BptxAND
        325, -- module_index: 55, name: L1_ETT120_BptxAND
        110, -- module_index: 56, name: L1_SingleJet24_ForEta2p5_BptxAND
        120, -- module_index: 57, name: L1_SingleJet40_BptxAND
        111, -- module_index: 58, name: L1_SingleJet24_ForEta1p5_BptxAND
        188, -- module_index: 59, name: L1_TowerCount85_BptxAND
        212, -- module_index: 60, name: L1_SingleEG5_ThreeTowerHFVeto_OR_BptxAND
        185, -- module_index: 61, name: L1_TowerCount70_BptxAND
        109, -- module_index: 62, name: L1_SingleJet24_ForEta2p5
        195, -- module_index: 63, name: L1_SingleEG5_TwoTowerHFVeto_OR_BptxAND
        186, -- module_index: 64, name: L1_TowerCount74_BptxAND
         51, -- module_index: 65, name: L1_SingleIsoEG10_BptxAND
        135, -- module_index: 66, name: L1_ETT25
        187, -- module_index: 67, name: L1_TowerCount80_BptxAND
        118, -- module_index: 68, name: L1_SingleJet32_BptxAND
        257, -- module_index: 69, name: L1_CastorGap_BptxAND
         38, -- module_index: 70, name: L1_SingleEG2_BptxAND
        117, -- module_index: 71, name: L1_SingleJet28_BptxAND
        328, -- module_index: 72, name: L1_ETT150_BptxAND
        261, -- module_index: 73, name: L1_CastorHaloMuon
          8, -- module_index: 74, name: L1_ZeroBias_copy
        119, -- module_index: 75, name: L1_SingleJet36_BptxAND
        326, -- module_index: 76, name: L1_ETT130_BptxAND
        189, -- module_index: 77, name: L1_TowerCount90_BptxAND
        260, -- module_index: 78, name: L1_CastorHaloMuon_BptxAND
        303, -- module_index: 79, name: L1_TowerCount115_BptxAND
        121, -- module_index: 80, name: L1_SingleJet44_BptxAND
         88, -- module_index: 81, name: L1_SingleJet4
        210, -- module_index: 82, name: L1_MuOpen_ThreeTowerHFVeto_OR_BptxAND
        327, -- module_index: 83, name: L1_ETT140_BptxAND
         21, -- module_index: 84, name: L1_SingleMu5_BptxAND
        196, -- module_index: 85, name: L1_DoubleEG2_NotMinimumBiasHF0_AND
        262, -- module_index: 86, name: L1_CastorMediumJet
         23, -- module_index: 87, name: L1_SingleMu7_BptxAND
         56, -- module_index: 88, name: L1_SingleMuOpen_NotBptxOR
        122, -- module_index: 89, name: L1_SingleJet48_BptxAND
        136, -- module_index: 90, name: L1_ETT25_BptxAND
        151, -- module_index: 91, name: L1_ETT100
        112, -- module_index: 92, name: L1_SingleJet24_ForEta1p5
         16, -- module_index: 93, name: L1_SingleMuOpen
        104, -- module_index: 94, name: L1_SingleJet20
         17, -- module_index: 95, name: L1_SingleMuOpen_BptxAND
        203, -- module_index: 96, name: L1_DoubleEG2_TwoTowerHFVeto_OR_BptxAND
        107, -- module_index: 97, name: L1_SingleJet24
         92, -- module_index: 98, name: L1_SingleJet8
        138, -- module_index: 99, name: L1_ETT30_BptxAND
        182, -- module_index: 100, name: L1_TowerCount58_BptxAND
         90, -- module_index: 101, name: L1_SingleJet4_MidEta2p5
        139, -- module_index: 102, name: L1_ETT35
         91, -- module_index: 103, name: L1_SingleJet4_MidEta2p5_BptxAND
         28, -- module_index: 104, name: L1_DoubleMu0_BptxAND
        137, -- module_index: 105, name: L1_ETT30
        124, -- module_index: 106, name: L1_SingleJet56_BptxAND
        190, -- module_index: 107, name: L1_TowerCount100_BptxAND
         19, -- module_index: 108, name: L1_SingleMu3_BptxAND
         29, -- module_index: 109, name: L1_DoubleMuOpen_MassGT1_BptxAND
        141, -- module_index: 110, name: L1_ETT40
        103, -- module_index: 111, name: L1_SingleJet16_BptxAND
        123, -- module_index: 112, name: L1_SingleJet52_BptxAND
         33, -- module_index: 113, name: L1_DoubleMu10_BptxAND
        125, -- module_index: 114, name: L1_SingleJet60_BptxAND
         15, -- module_index: 115, name: L1_SingleMu3_SingleJet20_BptxAND
        143, -- module_index: 116, name: L1_ETT45
         52, -- module_index: 117, name: L1_SingleIsoEG14_BptxAND
         50, -- module_index: 118, name: L1_SingleIsoEG5_BptxAND
        307, -- module_index: 119, name: L1_TowerCount140_BptxAND
        144, -- module_index: 120, name: L1_ETT45_BptxAND
         25, -- module_index: 121, name: L1_DoubleMuOpen
         94, -- module_index: 122, name: L1_SingleJet8_MidEta2p5
         26, -- module_index: 123, name: L1_DoubleMuOpen_BptxAND
        140, -- module_index: 124, name: L1_ETT35_BptxAND
         93, -- module_index: 125, name: L1_SingleJet8_BptxAND
        197, -- module_index: 126, name: L1_DoubleEG2_NotMinimumBiasHF0_AND_BptxAND
        191, -- module_index: 127, name: L1_TowerCount120_BptxAND
        146, -- module_index: 128, name: L1_ETT50_BptxAND
        304, -- module_index: 129, name: L1_TowerCount125_BptxAND
        200, -- module_index: 130, name: L1_DoubleMuOpen_NotMinimumBiasHF0_AND
        204, -- module_index: 131, name: L1_NotMinimumBiasHF0_AND
        145, -- module_index: 132, name: L1_ETT50
         95, -- module_index: 133, name: L1_SingleJet8_MidEta2p5_BptxAND
         89, -- module_index: 134, name: L1_SingleJet4_BptxAND
        209, -- module_index: 135, name: L1_BptxOR
        305, -- module_index: 136, name: L1_TowerCount130_BptxAND
        258, -- module_index: 137, name: L1_CastorHighJet_BptxAND
        181, -- module_index: 138, name: L1_TowerCount54_BptxAND
         31, -- module_index: 139, name: L1_DoubleMuOpen_OS_BptxAND
        263, -- module_index: 140, name: L1_SingleJetC40_NotBptxOR_3BX
        147, -- module_index: 141, name: L1_ETT60
        306, -- module_index: 142, name: L1_TowerCount135_BptxAND
         32, -- module_index: 143, name: L1_DoubleMuOpen_SS_BptxAND
        205, -- module_index: 144, name: L1_NotMinimumBiasHF0_AND_BptxAND
        308, -- module_index: 145, name: L1_TowerCount145_BptxAND
        320, -- module_index: 146, name: L1_TowerCount140
         14, -- module_index: 147, name: L1_SingleMu0_BptxAND
         24, -- module_index: 148, name: L1_SingleMu12_BptxAND
        201, -- module_index: 149, name: L1_DoubleMuOpen_NotMinimumBiasHF0_AND_BptxAND
          4, -- module_index: 150, name: L1_MinimumBiasHF0_AND_BptxAND
        192, -- module_index: 151, name: L1_DoubleMuOpen_TwoTowerHFVeto_OR_BptxAND
         27, -- module_index: 152, name: L1_DoubleMu0
        259, -- module_index: 153, name: L1_CastorMediumJet_BptxAND
        316, -- module_index: 154, name: L1_TowerCount185_BptxAND
         53, -- module_index: 155, name: L1_SingleIsoEG18_BptxAND
        219, -- module_index: 156, name: L1_IsolatedBunch
         18, -- module_index: 157, name: L1_SingleMu3
        148, -- module_index: 158, name: L1_ETT60_BptxAND
          3, -- module_index: 159, name: L1_MinimumBiasHF0_OR_BptxAND
        150, -- module_index: 160, name: L1_ETT80_BptxAND
          6, -- module_index: 161, name: L1_MinimumBiasHF0_AND
        301, -- module_index: 162, name: L1_TowerCount105_BptxAND
        310, -- module_index: 163, name: L1_TowerCount155_BptxAND
        323, -- module_index: 164, name: L1_ETT100_BptxAND
         20, -- module_index: 165, name: L1_SingleMu5
         12, -- module_index: 166, name: L1_SingleJetC40_NotBptxOR_5BX
        311, -- module_index: 167, name: L1_TowerCount160_BptxAND
        198, -- module_index: 168, name: L1_SingleEG5_NotMinimumBiasHF0_AND
        126, -- module_index: 169, name: L1_SingleMu3_SingleJet8_BptxAND
          5, -- module_index: 170, name: L1_MinimumBiasHF0_OR
        318, -- module_index: 171, name: L1_TowerCount200_BptxAND
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