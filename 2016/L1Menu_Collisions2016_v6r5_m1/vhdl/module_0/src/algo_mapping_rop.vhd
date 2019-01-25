-- Description:
-- Mapping of algo indexes for ROP

-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2016_v6r5

-- Unique ID of L1 Trigger Menu:
-- f612c13b-c6a5-54fb-b789-d1284ce3f2ca

-- Unique ID of firmware implementation:
-- c5e87edb-d020-4838-b365-c90ab9e737d5

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
        180, -- module_index: 0, name: L1_Jet32_Mu0_EG10_dPhi_Jet_Mu_Max0p4_dPhi_Mu_EG_Min1p0
        179, -- module_index: 1, name: L1_Jet32_DoubleMu_10_0_dPhi_Jet_Mu0_Max0p4_dPhi_Mu_Mu_Min1p0
        177, -- module_index: 2, name: L1_QuadJetC36_Tau52
        102, -- module_index: 3, name: L1_QuadJetC40
        103, -- module_index: 4, name: L1_QuadJetC50
        104, -- module_index: 5, name: L1_QuadJetC60
        269, -- module_index: 6, name: L1_IsoEG18er_IsoTau24er_dEta_Min0p2
        270, -- module_index: 7, name: L1_IsoEG20er_IsoTau25er_dEta_Min0p2
        268, -- module_index: 8, name: L1_IsoEG22er_IsoTau26er_dEta_Min0p2
        199, -- module_index: 9, name: L1_IsoEG22er_Tau20er_dEta_Min0p2
        210, -- module_index: 10, name: L1_Mu3_JetC120_dEta_Max0p4_dPhi_Max0p4
        170, -- module_index: 11, name: L1_Mu3_JetC16_dEta_Max0p4_dPhi_Max0p4
        171, -- module_index: 12, name: L1_Mu3_JetC60_dEta_Max0p4_dPhi_Max0p4
        267, -- module_index: 13, name: L1_DoubleMu0er1p4_dEta_Max1p8_OS
         32, -- module_index: 14, name: L1_DoubleMu0er1p6_dEta_Max1p8
         33, -- module_index: 15, name: L1_DoubleMu0er1p6_dEta_Max1p8_OS
         35, -- module_index: 16, name: L1_DoubleMu_10_0_dEta_Max1p8
        271, -- module_index: 17, name: L1_ETM75_Jet60_dPhi_Min0p4
         99, -- module_index: 18, name: L1_TripleJet_84_68_48_VBF
        100, -- module_index: 19, name: L1_TripleJet_88_72_56_VBF
        101, -- module_index: 20, name: L1_TripleJet_92_76_64_VBF
         38, -- module_index: 21, name: L1_QuadMu0
        169, -- module_index: 22, name: L1_Mu6_DoubleEG10
        168, -- module_index: 23, name: L1_Mu6_DoubleEG17
        172, -- module_index: 24, name: L1_Mu6_HTT200
        117, -- module_index: 25, name: L1_HTT200
        166, -- module_index: 26, name: L1_DoubleMu7_EG14
        167, -- module_index: 27, name: L1_DoubleMu7_EG7
        198, -- module_index: 28, name: L1_MU20_EG15
        150, -- module_index: 29, name: L1_Mu20_EG10
        149, -- module_index: 30, name: L1_Mu12_EG10
         40, -- module_index: 31, name: L1_SingleEG10
        151, -- module_index: 32, name: L1_Mu20_EG17
          6, -- module_index: 33, name: L1_SingleMu12
         41, -- module_index: 34, name: L1_SingleEG15
        144, -- module_index: 35, name: L1_Mu5_EG15
        275, -- module_index: 36, name: L1_Mu20_IsoEG6
          4, -- module_index: 37, name: L1_SingleMu5
         10, -- module_index: 38, name: L1_SingleMu20
        153, -- module_index: 39, name: L1_Mu23_EG10
        152, -- module_index: 40, name: L1_Mu23_IsoEG10
        217, -- module_index: 41, name: L1_Mu3_JetC120
          3, -- module_index: 42, name: L1_SingleMu3
        215, -- module_index: 43, name: L1_Mu3_JetC16
        216, -- module_index: 44, name: L1_Mu3_JetC60
        145, -- module_index: 45, name: L1_Mu5_EG20
        148, -- module_index: 46, name: L1_Mu5_IsoEG20
        146, -- module_index: 47, name: L1_Mu5_EG23
         54, -- module_index: 48, name: L1_SingleIsoEG20
        147, -- module_index: 49, name: L1_Mu5_IsoEG18
         53, -- module_index: 50, name: L1_SingleIsoEG18
         78, -- module_index: 51, name: L1_TripleEG_14_10_8
         79, -- module_index: 52, name: L1_TripleEG_18_17_8
        176, -- module_index: 53, name: L1_DoubleEG6_HTT255
        120, -- module_index: 54, name: L1_HTT255
        181, -- module_index: 55, name: L1_DoubleJetC60_ETM60
        140, -- module_index: 56, name: L1_ETM60
         94, -- module_index: 57, name: L1_DoubleJetC60
        154, -- module_index: 58, name: L1_Mu16er_Tau20er
        157, -- module_index: 59, name: L1_Mu18er_Tau24er
        155, -- module_index: 60, name: L1_Mu16er_Tau24er
         18, -- module_index: 61, name: L1_SingleMu18er
         17, -- module_index: 62, name: L1_SingleMu16er
        156, -- module_index: 63, name: L1_Mu18er_Tau20er
        158, -- module_index: 64, name: L1_Mu18er_IsoTau26er
        159, -- module_index: 65, name: L1_Mu20er_IsoTau26er
        280, -- module_index: 66, name: L1_Mu25er_IsoTau26er
        279, -- module_index: 67, name: L1_Mu22er_IsoTau26er
         20, -- module_index: 68, name: L1_SingleMu22er
         19, -- module_index: 69, name: L1_SingleMu20er
         21, -- module_index: 70, name: L1_SingleMu25er
         71, -- module_index: 71, name: L1_DoubleEG_15_10
         72, -- module_index: 72, name: L1_DoubleEG_18_17
         73, -- module_index: 73, name: L1_DoubleEG_20_18
         75, -- module_index: 74, name: L1_DoubleEG_22_10
        196, -- module_index: 75, name: L1_DoubleEG_22_12
        197, -- module_index: 76, name: L1_DoubleEG_22_15
         76, -- module_index: 77, name: L1_DoubleEG_23_10
         77, -- module_index: 78, name: L1_DoubleEG_24_17
        277, -- module_index: 79, name: L1_DoubleEG_25_12
        213, -- module_index: 80, name: L1_DoubleJet12_ForwardBackward
        214, -- module_index: 81, name: L1_DoubleJet16_ForwardBackward
        212, -- module_index: 82, name: L1_DoubleJet8_ForwardBackward
         96, -- module_index: 83, name: L1_DoubleJetC100
         97, -- module_index: 84, name: L1_DoubleJetC112
         98, -- module_index: 85, name: L1_DoubleJetC120
         92, -- module_index: 86, name: L1_DoubleJetC40
         93, -- module_index: 87, name: L1_DoubleJetC50
         95, -- module_index: 88, name: L1_DoubleJetC80
        256, -- module_index: 89, name: L1_DoubleMu0_ETM40
        183, -- module_index: 90, name: L1_Mu0er_ETM55
        257, -- module_index: 91, name: L1_DoubleMu0_ETM55
        138, -- module_index: 92, name: L1_ETM40
         24, -- module_index: 93, name: L1_DoubleMu0
        182, -- module_index: 94, name: L1_Mu0er_ETM40
        175, -- module_index: 95, name: L1_EG25er_HTT125
        174, -- module_index: 96, name: L1_EG27er_HTT200
         36, -- module_index: 97, name: L1_TripleMu0
        276, -- module_index: 98, name: L1_TripleMu_5_0_0
         37, -- module_index: 99, name: L1_TripleMu_5_5_3
        109, -- module_index: 100, name: L1_DoubleIsoTau28er
        110, -- module_index: 101, name: L1_DoubleIsoTau30er
        111, -- module_index: 102, name: L1_DoubleIsoTau32er
        264, -- module_index: 103, name: L1_DoubleIsoTau33er
        265, -- module_index: 104, name: L1_DoubleIsoTau34er
        266, -- module_index: 105, name: L1_DoubleIsoTau35er
        278, -- module_index: 106, name: L1_DoubleIsoTau36er
         23, -- module_index: 107, name: L1_DoubleMuOpen
         26, -- module_index: 108, name: L1_DoubleMu_10_3p5
         25, -- module_index: 109, name: L1_DoubleMu_10_Open
         27, -- module_index: 110, name: L1_DoubleMu_11_4
         28, -- module_index: 111, name: L1_DoubleMu_12_5
         31, -- module_index: 112, name: L1_DoubleMu_12_8
         29, -- module_index: 113, name: L1_DoubleMu_13_6
         30, -- module_index: 114, name: L1_DoubleMu_15_5
        114, -- module_index: 115, name: L1_DoubleTau50er
        184, -- module_index: 116, name: L1_Mu10er_ETM30
        139, -- module_index: 117, name: L1_ETM50
        185, -- module_index: 118, name: L1_Mu10er_ETM50
         16, -- module_index: 119, name: L1_SingleMu14er
        137, -- module_index: 120, name: L1_ETM30
        186, -- module_index: 121, name: L1_Mu14er_ETM30
        173, -- module_index: 122, name: L1_Mu8_HTT150
         42, -- module_index: 123, name: L1_SingleEG18
         43, -- module_index: 124, name: L1_SingleEG24
         44, -- module_index: 125, name: L1_SingleEG26
         45, -- module_index: 126, name: L1_SingleEG28
        192, -- module_index: 127, name: L1_SingleEG2_BptxAND
        249, -- module_index: 128, name: L1_MinimumBiasHF1_AND_BptxAND
        245, -- module_index: 129, name: L1_ETT60_BptxAND
        136, -- module_index: 130, name: L1_ETT40_BptxAND
          0, -- module_index: 131, name: L1_ZeroBias
        247, -- module_index: 132, name: L1_MinimumBiasHF0_AND_BptxAND
        194, -- module_index: 133, name: L1_SingleJet8_BptxAND
        252, -- module_index: 134, name: L1_MinimumBiasHF1_OR
        250, -- module_index: 135, name: L1_MinimumBiasHF0_OR
        193, -- module_index: 136, name: L1_ETT35_BptxAND
        244, -- module_index: 137, name: L1_ETT50_BptxAND
        248, -- module_index: 138, name: L1_MinimumBiasHF1_OR_BptxAND
        246, -- module_index: 139, name: L1_MinimumBiasHF0_OR_BptxAND
        251, -- module_index: 140, name: L1_MinimumBiasHF0_AND
        206, -- module_index: 141, name: L1_AlwaysTrue
        255, -- module_index: 142, name: L1_ZeroBias_copy
        195, -- module_index: 143, name: L1_SingleJet12_BptxAND
        253, -- module_index: 144, name: L1_MinimumBiasHF1_AND
         46, -- module_index: 145, name: L1_SingleEG30
        258, -- module_index: 146, name: L1_SingleEG32
         48, -- module_index: 147, name: L1_SingleEG34
        259, -- module_index: 148, name: L1_SingleEG36
        260, -- module_index: 149, name: L1_SingleEG38
         50, -- module_index: 150, name: L1_SingleEG40
         52, -- module_index: 151, name: L1_SingleEG45
         39, -- module_index: 152, name: L1_SingleEG5
         62, -- module_index: 153, name: L1_SingleIsoEG18er
         63, -- module_index: 154, name: L1_SingleIsoEG20er
         55, -- module_index: 155, name: L1_SingleIsoEG22
         64, -- module_index: 156, name: L1_SingleIsoEG22er
         56, -- module_index: 157, name: L1_SingleIsoEG24
         65, -- module_index: 158, name: L1_SingleIsoEG24er
         57, -- module_index: 159, name: L1_SingleIsoEG26
         66, -- module_index: 160, name: L1_SingleIsoEG26er
         59, -- module_index: 161, name: L1_SingleIsoEG28
         68, -- module_index: 162, name: L1_SingleIsoEG28er
         60, -- module_index: 163, name: L1_SingleIsoEG30
         69, -- module_index: 164, name: L1_SingleIsoEG30er
        261, -- module_index: 165, name: L1_SingleIsoEG32
        263, -- module_index: 166, name: L1_SingleIsoEG32er
         61, -- module_index: 167, name: L1_SingleIsoEG34
         70, -- module_index: 168, name: L1_SingleIsoEG34er
        262, -- module_index: 169, name: L1_SingleIsoEG36
         85, -- module_index: 170, name: L1_SingleJet120
         86, -- module_index: 171, name: L1_SingleJet140
         87, -- module_index: 172, name: L1_SingleJet150
         80, -- module_index: 173, name: L1_SingleJet16
         88, -- module_index: 174, name: L1_SingleJet160
         89, -- module_index: 175, name: L1_SingleJet170
         90, -- module_index: 176, name: L1_SingleJet180
         81, -- module_index: 177, name: L1_SingleJet20
         91, -- module_index: 178, name: L1_SingleJet200
         82, -- module_index: 179, name: L1_SingleJet35
         83, -- module_index: 180, name: L1_SingleJet60
         84, -- module_index: 181, name: L1_SingleJet90
        191, -- module_index: 182, name: L1_SingleJetC20_NotBptxOR
        189, -- module_index: 183, name: L1_SingleMuOpen_NotBptxOR
        202, -- module_index: 184, name: L1_SingleJetC32_NotBptxOR_3BX
        209, -- module_index: 185, name: L1_BptxOR
        281, -- module_index: 186, name: L1_FirstBunchInTrain
        200, -- module_index: 187, name: L1_SingleMuOpen_NotBptxOR_3BX
        201, -- module_index: 188, name: L1_SingleJetC20_NotBptxOR_3BX
        203, -- module_index: 189, name: L1_SingleJetC36_NotBptxOR_3BX
        282, -- module_index: 190, name: L1_FirstBunchAfterTrain
        219, -- module_index: 191, name: L1_IsolatedBunch
        190, -- module_index: 192, name: L1_SingleJetC32_NotBptxOR
        254, -- module_index: 193, name: L1_NotBptxOR
         14, -- module_index: 194, name: L1_SingleMu10_LowQ
          7, -- module_index: 195, name: L1_SingleMu14
          8, -- module_index: 196, name: L1_SingleMu16
          9, -- module_index: 197, name: L1_SingleMu18
         11, -- module_index: 198, name: L1_SingleMu22
         12, -- module_index: 199, name: L1_SingleMu25
         13, -- module_index: 200, name: L1_SingleMu30
         22, -- module_index: 201, name: L1_SingleMu30er
          5, -- module_index: 202, name: L1_SingleMu7
        218, -- module_index: 203, name: L1_SingleMuCosmics
          2, -- module_index: 204, name: L1_SingleMuOpen
        106, -- module_index: 205, name: L1_SingleTau100er
        107, -- module_index: 206, name: L1_SingleTau120er
        105, -- module_index: 207, name: L1_SingleTau80er
        188, -- module_index: 208, name: L1_HTM60_HTT260
        187, -- module_index: 209, name: L1_HTM80_HTT220
        129, -- module_index: 210, name: L1_HTM80
        118, -- module_index: 211, name: L1_HTT220
        142, -- module_index: 212, name: L1_ETM100
        143, -- module_index: 213, name: L1_ETM120
        141, -- module_index: 214, name: L1_ETM70
        272, -- module_index: 215, name: L1_ETM75
        125, -- module_index: 216, name: L1_ETM80
        273, -- module_index: 217, name: L1_ETM85
        126, -- module_index: 218, name: L1_ETM90
        274, -- module_index: 219, name: L1_ETM95
        135, -- module_index: 220, name: L1_ETT25
        130, -- module_index: 221, name: L1_HTM100
        131, -- module_index: 222, name: L1_HTM120
        132, -- module_index: 223, name: L1_HTM130
        133, -- module_index: 224, name: L1_HTM140
        134, -- module_index: 225, name: L1_HTM150
        127, -- module_index: 226, name: L1_HTM50
        128, -- module_index: 227, name: L1_HTM70
        115, -- module_index: 228, name: L1_HTT120
        116, -- module_index: 229, name: L1_HTT160
        119, -- module_index: 230, name: L1_HTT240
        121, -- module_index: 231, name: L1_HTT270
        122, -- module_index: 232, name: L1_HTT280
        123, -- module_index: 233, name: L1_HTT300
        124, -- module_index: 234, name: L1_HTT320
        240, -- module_index: 235, name: L1_BRIL_TRIG0_AND
        243, -- module_index: 236, name: L1_BRIL_TRIG0_FstBunchInTrain
        242, -- module_index: 237, name: L1_BRIL_TRIG0_OR
        241, -- module_index: 238, name: L1_BRIL_TRIG0_delayedAND
        223, -- module_index: 239, name: L1_BeamGasB1
        224, -- module_index: 240, name: L1_BeamGasB2
        222, -- module_index: 241, name: L1_BeamGasMinus
        221, -- module_index: 242, name: L1_BeamGasPlus
        208, -- module_index: 243, name: L1_BptxMinus
        207, -- module_index: 244, name: L1_BptxPlus
        220, -- module_index: 245, name: L1_BptxXOR
        211, -- module_index: 246, name: L1_ZeroBias_FirstCollidingBunch
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