-- Description:
-- Mapping of algo indexes for ROP

-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Unique ID of L1 Trigger Menu:
-- f612c13b-c6a5-54fb-b789-d1284ce3f2ca

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2016_v6r5

-- Scale set:
-- 2016-04-27

-- VHDL producer version
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
-- HB 2016-03-02: inserted with fdl version (v0.0.22) for global index. Types definition in gtl_pkg.
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
        algo_after_finor_mask : in std_logic_vector(NR_ALGOS-1 downto 0);
        algo_after_gtLogic_rop : out std_logic_vector(MAX_NR_ALGOS-1 downto 0);
        algo_after_bxomask_rop : out std_logic_vector(MAX_NR_ALGOS-1 downto 0);
        algo_after_prescaler_rop : out std_logic_vector(MAX_NR_ALGOS-1 downto 0);
        algo_after_finor_mask_rop : out std_logic_vector(MAX_NR_ALGOS-1 downto 0)
    );
end algo_mapping_rop;

architecture rtl of algo_mapping_rop is
    type global_index_array is array (0 to NR_ALGOS-1) of integer;

-- HB 2016-03-02: inserted for global index
    constant global_index: global_index_array := (
-- ==== Inserted by TME - begin
        180, -- global to local 0 L1_Jet32_Mu0_EG10_dPhi_Jet_Mu_Max0p4_dPhi_Mu_EG_Min1p0
        102, -- global to local 1 L1_QuadJetC40
        104, -- global to local 2 L1_QuadJetC60
        270, -- global to local 3 L1_IsoEG20er_IsoTau25er_dEta_Min0p2
        199, -- global to local 4 L1_IsoEG22er_Tau20er_dEta_Min0p2
        170, -- global to local 5 L1_Mu3_JetC16_dEta_Max0p4_dPhi_Max0p4
        267, -- global to local 6 L1_DoubleMu0er1p4_dEta_Max1p8_OS
         32, -- global to local 7 L1_DoubleMu0er1p6_dEta_Max1p8
         35, -- global to local 8 L1_DoubleMu_10_0_dEta_Max1p8
         38, -- global to local 9 L1_QuadMu0
        169, -- global to local 10 L1_Mu6_DoubleEG10
        166, -- global to local 11 L1_DoubleMu7_EG14
        198, -- global to local 12 L1_MU20_EG15
         41, -- global to local 13 L1_SingleEG15
         10, -- global to local 14 L1_SingleMu20
        150, -- global to local 15 L1_Mu20_EG10
        151, -- global to local 16 L1_Mu20_EG17
        153, -- global to local 17 L1_Mu23_EG10
        152, -- global to local 18 L1_Mu23_IsoEG10
        215, -- global to local 19 L1_Mu3_JetC16
        144, -- global to local 20 L1_Mu5_EG15
          4, -- global to local 21 L1_SingleMu5
        146, -- global to local 22 L1_Mu5_EG23
        147, -- global to local 23 L1_Mu5_IsoEG18
         53, -- global to local 24 L1_SingleIsoEG18
         78, -- global to local 25 L1_TripleEG_14_10_8
        176, -- global to local 26 L1_DoubleEG6_HTT255
        120, -- global to local 27 L1_HTT255
        154, -- global to local 28 L1_Mu16er_Tau20er
         17, -- global to local 29 L1_SingleMu16er
        158, -- global to local 30 L1_Mu18er_IsoTau26er
         18, -- global to local 31 L1_SingleMu18er
        157, -- global to local 32 L1_Mu18er_Tau24er
        279, -- global to local 33 L1_Mu22er_IsoTau26er
         20, -- global to local 34 L1_SingleMu22er
        280, -- global to local 35 L1_Mu25er_IsoTau26er
         21, -- global to local 36 L1_SingleMu25er
         72, -- global to local 37 L1_DoubleEG_18_17
         75, -- global to local 38 L1_DoubleEG_22_10
        197, -- global to local 39 L1_DoubleEG_22_15
         77, -- global to local 40 L1_DoubleEG_24_17
        213, -- global to local 41 L1_DoubleJet12_ForwardBackward
        212, -- global to local 42 L1_DoubleJet8_ForwardBackward
         97, -- global to local 43 L1_DoubleJetC112
         92, -- global to local 44 L1_DoubleJetC40
         95, -- global to local 45 L1_DoubleJetC80
        257, -- global to local 46 L1_DoubleMu0_ETM55
        174, -- global to local 47 L1_EG27er_HTT200
        117, -- global to local 48 L1_HTT200
        276, -- global to local 49 L1_TripleMu_5_0_0
        109, -- global to local 50 L1_DoubleIsoTau28er
        110, -- global to local 51 L1_DoubleIsoTau30er
        264, -- global to local 52 L1_DoubleIsoTau33er
        266, -- global to local 53 L1_DoubleIsoTau35er
         23, -- global to local 54 L1_DoubleMuOpen
         25, -- global to local 55 L1_DoubleMu_10_Open
         28, -- global to local 56 L1_DoubleMu_12_5
         29, -- global to local 57 L1_DoubleMu_13_6
        114, -- global to local 58 L1_DoubleTau50er
        184, -- global to local 59 L1_Mu10er_ETM30
        137, -- global to local 60 L1_ETM30
        186, -- global to local 61 L1_Mu14er_ETM30
         16, -- global to local 62 L1_SingleMu14er
         42, -- global to local 63 L1_SingleEG18
         44, -- global to local 64 L1_SingleEG26
        192, -- global to local 65 L1_SingleEG2_BptxAND
        206, -- global to local 66 L1_AlwaysTrue
        255, -- global to local 67 L1_ZeroBias_copy
          0, -- global to local 68 L1_ZeroBias
        258, -- global to local 69 L1_SingleEG32
        259, -- global to local 70 L1_SingleEG36
         50, -- global to local 71 L1_SingleEG40
         39, -- global to local 72 L1_SingleEG5
         63, -- global to local 73 L1_SingleIsoEG20er
         64, -- global to local 74 L1_SingleIsoEG22er
         65, -- global to local 75 L1_SingleIsoEG24er
         66, -- global to local 76 L1_SingleIsoEG26er
         68, -- global to local 77 L1_SingleIsoEG28er
         69, -- global to local 78 L1_SingleIsoEG30er
        263, -- global to local 79 L1_SingleIsoEG32er
         70, -- global to local 80 L1_SingleIsoEG34er
         85, -- global to local 81 L1_SingleJet120
         86, -- global to local 82 L1_SingleJet140
         80, -- global to local 83 L1_SingleJet16
         89, -- global to local 84 L1_SingleJet170
         81, -- global to local 85 L1_SingleJet20
         82, -- global to local 86 L1_SingleJet35
        194, -- global to local 87 L1_SingleJet8_BptxAND
        191, -- global to local 88 L1_SingleJetC20_NotBptxOR
        202, -- global to local 89 L1_SingleJetC32_NotBptxOR_3BX
        200, -- global to local 90 L1_SingleMuOpen_NotBptxOR_3BX
        201, -- global to local 91 L1_SingleJetC20_NotBptxOR_3BX
        203, -- global to local 92 L1_SingleJetC36_NotBptxOR_3BX
        209, -- global to local 93 L1_BptxOR
        254, -- global to local 94 L1_NotBptxOR
          9, -- global to local 95 L1_SingleMu18
         12, -- global to local 96 L1_SingleMu25
         22, -- global to local 97 L1_SingleMu30er
        218, -- global to local 98 L1_SingleMuCosmics
        106, -- global to local 99 L1_SingleTau100er
        105, -- global to local 100 L1_SingleTau80er
        251, -- global to local 101 L1_MinimumBiasHF0_AND
        247, -- global to local 102 L1_MinimumBiasHF0_AND_BptxAND
        246, -- global to local 103 L1_MinimumBiasHF0_OR_BptxAND
        250, -- global to local 104 L1_MinimumBiasHF0_OR
        142, -- global to local 105 L1_ETM100
        141, -- global to local 106 L1_ETM70
        125, -- global to local 107 L1_ETM80
        126, -- global to local 108 L1_ETM90
        135, -- global to local 109 L1_ETT25
        136, -- global to local 110 L1_ETT40_BptxAND
        245, -- global to local 111 L1_ETT60_BptxAND
        131, -- global to local 112 L1_HTM120
        133, -- global to local 113 L1_HTM140
        127, -- global to local 114 L1_HTM50
        115, -- global to local 115 L1_HTT120
        119, -- global to local 116 L1_HTT240
        122, -- global to local 117 L1_HTT280
        124, -- global to local 118 L1_HTT320
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
    signal algo_after_finor_mask_rop_int: std_logic_vector(MAX_NR_ALGOS-1 downto 0) := (others => '0');

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
    algo_after_finor_mask_rop_int(global_index(i)) <= algo_after_finor_mask(i);
end generate;

-- HB 2016-03-02: inserted for global index
rate_cnt_before_prescaler_global <= rate_cnt_before_prescaler_global_int;
rate_cnt_after_prescaler_global <= rate_cnt_after_prescaler_global_int;
rate_cnt_post_dead_time_global <= rate_cnt_post_dead_time_global_int;

algo_2_rop_p: process(lhc_clk, algo_after_gtLogic_rop_int, algo_after_bxomask_rop_int, algo_after_prescaler_rop_int, algo_after_finor_mask_rop_int)
    begin
    if lhc_clk'event and lhc_clk = '1' then
        algo_after_gtLogic_rop <= algo_after_gtLogic_rop_int;
        algo_after_bxomask_rop <= algo_after_bxomask_rop_int;
        algo_after_prescaler_rop <= algo_after_prescaler_rop_int;
        algo_after_finor_mask_rop <= algo_after_finor_mask_rop_int;
    end if;
end process;

end architecture rtl;