-- Description:
-- Mapping of algo indexes for ROP

-- ========================================================
-- from VHDL producer:

-- Module ID: 1

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2016_v7

-- Unique ID of L1 Trigger Menu:
-- 00000000-0000-0000-0000-000000000000

-- Unique ID of firmware implementation:
-- d18eb4ec-29c8-4d68-8750-589de3b73ef5

-- Scale set:
-- 2016-04-27

-- VHDL producer version
-- v1.0.0

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
        177, -- module_index: 0, name: L1_QuadJetC36_Tau52
        102, -- module_index: 1, name: L1_QuadJetC40
        104, -- module_index: 2, name: L1_QuadJetC60
        270, -- module_index: 3, name: L1_IsoEG20er_IsoTau25er_dEta_Min0p2
        199, -- module_index: 4, name: L1_IsoEG22er_Tau20er_dEta_Min0p2
        170, -- module_index: 5, name: L1_Mu3_JetC16_dEta_Max0p4_dPhi_Max0p4
        267, -- module_index: 6, name: L1_DoubleMu0er1p4_dEta_Max1p8_OS
         32, -- module_index: 7, name: L1_DoubleMu0er1p6_dEta_Max1p8
         35, -- module_index: 8, name: L1_DoubleMu_10_0_dEta_Max1p8
        101, -- module_index: 9, name: L1_TripleJet_92_76_64_VBF
        169, -- module_index: 10, name: L1_Mu6_DoubleEG10
        117, -- module_index: 11, name: L1_HTT200
        168, -- module_index: 12, name: L1_Mu6_DoubleEG17
        172, -- module_index: 13, name: L1_Mu6_HTT200
        174, -- module_index: 14, name: L1_EG27er_HTT200
        198, -- module_index: 15, name: L1_MU20_EG15
         53, -- module_index: 16, name: L1_SingleIsoEG18
         41, -- module_index: 17, name: L1_SingleEG15
        153, -- module_index: 18, name: L1_Mu23_EG10
        150, -- module_index: 19, name: L1_Mu20_EG10
        146, -- module_index: 20, name: L1_Mu5_EG23
        152, -- module_index: 21, name: L1_Mu23_IsoEG10
        144, -- module_index: 22, name: L1_Mu5_EG15
        149, -- module_index: 23, name: L1_Mu12_EG10
         10, -- module_index: 24, name: L1_SingleMu20
        147, -- module_index: 25, name: L1_Mu5_IsoEG18
          6, -- module_index: 26, name: L1_SingleMu12
        145, -- module_index: 27, name: L1_Mu5_EG20
        151, -- module_index: 28, name: L1_Mu20_EG17
        148, -- module_index: 29, name: L1_Mu5_IsoEG20
          4, -- module_index: 30, name: L1_SingleMu5
         40, -- module_index: 31, name: L1_SingleEG10
         54, -- module_index: 32, name: L1_SingleIsoEG20
        275, -- module_index: 33, name: L1_Mu20_IsoEG6
        154, -- module_index: 34, name: L1_Mu16er_Tau20er
        155, -- module_index: 35, name: L1_Mu16er_Tau24er
         18, -- module_index: 36, name: L1_SingleMu18er
         17, -- module_index: 37, name: L1_SingleMu16er
        159, -- module_index: 38, name: L1_Mu20er_IsoTau26er
         20, -- module_index: 39, name: L1_SingleMu22er
        279, -- module_index: 40, name: L1_Mu22er_IsoTau26er
        280, -- module_index: 41, name: L1_Mu25er_IsoTau26er
         19, -- module_index: 42, name: L1_SingleMu20er
        158, -- module_index: 43, name: L1_Mu18er_IsoTau26er
        156, -- module_index: 44, name: L1_Mu18er_Tau20er
        157, -- module_index: 45, name: L1_Mu18er_Tau24er
         21, -- module_index: 46, name: L1_SingleMu25er
         75, -- module_index: 47, name: L1_DoubleEG_22_10
        197, -- module_index: 48, name: L1_DoubleEG_22_15
         77, -- module_index: 49, name: L1_DoubleEG_24_17
        213, -- module_index: 50, name: L1_DoubleJet12_ForwardBackward
        212, -- module_index: 51, name: L1_DoubleJet8_ForwardBackward
         97, -- module_index: 52, name: L1_DoubleJetC112
         92, -- module_index: 53, name: L1_DoubleJetC40
         95, -- module_index: 54, name: L1_DoubleJetC80
         36, -- module_index: 55, name: L1_TripleMu0
         37, -- module_index: 56, name: L1_TripleMu_5_5_3
        110, -- module_index: 57, name: L1_DoubleIsoTau30er
        264, -- module_index: 58, name: L1_DoubleIsoTau33er
        266, -- module_index: 59, name: L1_DoubleIsoTau35er
         23, -- module_index: 60, name: L1_DoubleMuOpen
         25, -- module_index: 61, name: L1_DoubleMu_10_Open
         28, -- module_index: 62, name: L1_DoubleMu_12_5
         29, -- module_index: 63, name: L1_DoubleMu_13_6
        114, -- module_index: 64, name: L1_DoubleTau50er
        173, -- module_index: 65, name: L1_Mu8_HTT150
         42, -- module_index: 66, name: L1_SingleEG18
         44, -- module_index: 67, name: L1_SingleEG26
        192, -- module_index: 68, name: L1_SingleEG2_BptxAND
        200, -- module_index: 69, name: L1_SingleMuOpen_NotBptxOR_3BX
          2, -- module_index: 70, name: L1_SingleMuOpen
        247, -- module_index: 71, name: L1_MinimumBiasHF0_AND_BptxAND
        189, -- module_index: 72, name: L1_SingleMuOpen_NotBptxOR
        193, -- module_index: 73, name: L1_ETT70_BptxAND
          0, -- module_index: 74, name: L1_ZeroBias
        251, -- module_index: 75, name: L1_MinimumBiasHF0_AND
        254, -- module_index: 76, name: L1_NotBptxOR
        246, -- module_index: 77, name: L1_MinimumBiasHF0_OR_BptxAND
        194, -- module_index: 78, name: L1_SingleJet8_BptxAND
        209, -- module_index: 79, name: L1_BptxOR
        255, -- module_index: 80, name: L1_ZeroBias_copy
        136, -- module_index: 81, name: L1_ETT40_BptxAND
        249, -- module_index: 82, name: L1_MinimumBiasHF1_AND_BptxAND
        191, -- module_index: 83, name: L1_SingleJetC20_NotBptxOR
        202, -- module_index: 84, name: L1_SingleJetC40_NotBptxOR_5BX
        244, -- module_index: 85, name: L1_ETT50_BptxAND
        201, -- module_index: 86, name: L1_SingleJetC20_NotBptxOR_3BX
        245, -- module_index: 87, name: L1_ETT60_BptxAND
        282, -- module_index: 88, name: L1_FirstBunchAfterTrain
        248, -- module_index: 89, name: L1_MinimumBiasHF1_OR_BptxAND
        203, -- module_index: 90, name: L1_SingleJetC40_NotBptxOR_3BX
        281, -- module_index: 91, name: L1_FirstBunchInTrain
        250, -- module_index: 92, name: L1_MinimumBiasHF0_OR
        252, -- module_index: 93, name: L1_MinimumBiasHF1_OR
        195, -- module_index: 94, name: L1_SingleJet12_BptxAND
        206, -- module_index: 95, name: L1_AlwaysTrue
        219, -- module_index: 96, name: L1_IsolatedBunch
        253, -- module_index: 97, name: L1_MinimumBiasHF1_AND
         39, -- module_index: 98, name: L1_SingleEG5
         63, -- module_index: 99, name: L1_SingleIsoEG20er
         64, -- module_index: 100, name: L1_SingleIsoEG22er
         65, -- module_index: 101, name: L1_SingleIsoEG24er
         66, -- module_index: 102, name: L1_SingleIsoEG26er
         68, -- module_index: 103, name: L1_SingleIsoEG28er
         69, -- module_index: 104, name: L1_SingleIsoEG30er
        263, -- module_index: 105, name: L1_SingleIsoEG32er
         70, -- module_index: 106, name: L1_SingleIsoEG34er
         85, -- module_index: 107, name: L1_SingleJet120
         87, -- module_index: 108, name: L1_SingleJet150
         88, -- module_index: 109, name: L1_SingleJet160
         90, -- module_index: 110, name: L1_SingleJet180
         91, -- module_index: 111, name: L1_SingleJet200
         83, -- module_index: 112, name: L1_SingleJet60
         14, -- module_index: 113, name: L1_SingleMu10_LowQ
          8, -- module_index: 114, name: L1_SingleMu16
         11, -- module_index: 115, name: L1_SingleMu22
         13, -- module_index: 116, name: L1_SingleMu30
          5, -- module_index: 117, name: L1_SingleMu7
        106, -- module_index: 118, name: L1_SingleTau100er
        105, -- module_index: 119, name: L1_SingleTau80er
        187, -- module_index: 120, name: L1_HTM80_HTT220
        129, -- module_index: 121, name: L1_HTM80
        118, -- module_index: 122, name: L1_HTT220
        272, -- module_index: 123, name: L1_ETM75
        273, -- module_index: 124, name: L1_ETM85
        274, -- module_index: 125, name: L1_ETM95
        130, -- module_index: 126, name: L1_HTM100
        132, -- module_index: 127, name: L1_HTM130
        134, -- module_index: 128, name: L1_HTM150
        128, -- module_index: 129, name: L1_HTM70
        116, -- module_index: 130, name: L1_HTT160
        121, -- module_index: 131, name: L1_HTT270
        123, -- module_index: 132, name: L1_HTT300
        240, -- module_index: 133, name: L1_BRIL_TRIG0_AND
        243, -- module_index: 134, name: L1_BRIL_TRIG0_FstBunchInTrain
        242, -- module_index: 135, name: L1_BRIL_TRIG0_OR
        241, -- module_index: 136, name: L1_BRIL_TRIG0_delayedAND
        223, -- module_index: 137, name: L1_BeamGasB1
        224, -- module_index: 138, name: L1_BeamGasB2
        222, -- module_index: 139, name: L1_BeamGasMinus
        221, -- module_index: 140, name: L1_BeamGasPlus
        208, -- module_index: 141, name: L1_BptxMinus
        207, -- module_index: 142, name: L1_BptxPlus
        220, -- module_index: 143, name: L1_BptxXOR
        211, -- module_index: 144, name: L1_ZeroBias_FirstCollidingBunch
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