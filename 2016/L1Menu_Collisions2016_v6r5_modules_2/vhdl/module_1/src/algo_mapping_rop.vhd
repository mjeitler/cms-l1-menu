-- Description:
-- Mapping of algo indexes for ROP

-- ========================================================
-- from VHDL producer:

-- Module ID: 1

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
        179, -- global to local 0 L1_Jet32_DoubleMu_10_0_dPhi_Jet_Mu0_Max0p4_dPhi_Mu_Mu_Min1p0
        177, -- global to local 1 L1_QuadJetC36_Tau52
        103, -- global to local 2 L1_QuadJetC50
        269, -- global to local 3 L1_IsoEG18er_IsoTau24er_dEta_Min0p2
        268, -- global to local 4 L1_IsoEG22er_IsoTau26er_dEta_Min0p2
        210, -- global to local 5 L1_Mu3_JetC120_dEta_Max0p4_dPhi_Max0p4
        171, -- global to local 6 L1_Mu3_JetC60_dEta_Max0p4_dPhi_Max0p4
         33, -- global to local 7 L1_DoubleMu0er1p6_dEta_Max1p8_OS
        271, -- global to local 8 L1_ETM75_Jet60_dPhi_Min0p4
         99, -- global to local 9 L1_TripleJet_84_68_48_VBF
        100, -- global to local 10 L1_TripleJet_88_72_56_VBF
        101, -- global to local 11 L1_TripleJet_92_76_64_VBF
        168, -- global to local 12 L1_Mu6_DoubleEG17
        167, -- global to local 13 L1_DoubleMu7_EG7
        149, -- global to local 14 L1_Mu12_EG10
         40, -- global to local 15 L1_SingleEG10
          6, -- global to local 16 L1_SingleMu12
        275, -- global to local 17 L1_Mu20_IsoEG6
        217, -- global to local 18 L1_Mu3_JetC120
          3, -- global to local 19 L1_SingleMu3
        216, -- global to local 20 L1_Mu3_JetC60
        145, -- global to local 21 L1_Mu5_EG20
        148, -- global to local 22 L1_Mu5_IsoEG20
         54, -- global to local 23 L1_SingleIsoEG20
         79, -- global to local 24 L1_TripleEG_18_17_8
        181, -- global to local 25 L1_DoubleJetC60_ETM60
         94, -- global to local 26 L1_DoubleJetC60
        140, -- global to local 27 L1_ETM60
        155, -- global to local 28 L1_Mu16er_Tau24er
        156, -- global to local 29 L1_Mu18er_Tau20er
        159, -- global to local 30 L1_Mu20er_IsoTau26er
         19, -- global to local 31 L1_SingleMu20er
         71, -- global to local 32 L1_DoubleEG_15_10
         73, -- global to local 33 L1_DoubleEG_20_18
        196, -- global to local 34 L1_DoubleEG_22_12
         76, -- global to local 35 L1_DoubleEG_23_10
        277, -- global to local 36 L1_DoubleEG_25_12
        214, -- global to local 37 L1_DoubleJet16_ForwardBackward
         96, -- global to local 38 L1_DoubleJetC100
         98, -- global to local 39 L1_DoubleJetC120
         93, -- global to local 40 L1_DoubleJetC50
        256, -- global to local 41 L1_DoubleMu0_ETM40
         24, -- global to local 42 L1_DoubleMu0
        138, -- global to local 43 L1_ETM40
        175, -- global to local 44 L1_EG25er_HTT125
         36, -- global to local 45 L1_TripleMu0
         37, -- global to local 46 L1_TripleMu_5_5_3
        111, -- global to local 47 L1_DoubleIsoTau32er
        265, -- global to local 48 L1_DoubleIsoTau34er
        278, -- global to local 49 L1_DoubleIsoTau36er
         26, -- global to local 50 L1_DoubleMu_10_3p5
         27, -- global to local 51 L1_DoubleMu_11_4
         31, -- global to local 52 L1_DoubleMu_12_8
         30, -- global to local 53 L1_DoubleMu_15_5
        182, -- global to local 54 L1_Mu0er_ETM40
        183, -- global to local 55 L1_Mu0er_ETM55
        185, -- global to local 56 L1_Mu10er_ETM50
        139, -- global to local 57 L1_ETM50
        172, -- global to local 58 L1_Mu6_HTT200
        173, -- global to local 59 L1_Mu8_HTT150
         43, -- global to local 60 L1_SingleEG24
         45, -- global to local 61 L1_SingleEG28
         46, -- global to local 62 L1_SingleEG30
         48, -- global to local 63 L1_SingleEG34
        260, -- global to local 64 L1_SingleEG38
         52, -- global to local 65 L1_SingleEG45
         62, -- global to local 66 L1_SingleIsoEG18er
         55, -- global to local 67 L1_SingleIsoEG22
         56, -- global to local 68 L1_SingleIsoEG24
         57, -- global to local 69 L1_SingleIsoEG26
         59, -- global to local 70 L1_SingleIsoEG28
         60, -- global to local 71 L1_SingleIsoEG30
        261, -- global to local 72 L1_SingleIsoEG32
         61, -- global to local 73 L1_SingleIsoEG34
        262, -- global to local 74 L1_SingleIsoEG36
        195, -- global to local 75 L1_SingleJet12_BptxAND
         87, -- global to local 76 L1_SingleJet150
         88, -- global to local 77 L1_SingleJet160
         90, -- global to local 78 L1_SingleJet180
         91, -- global to local 79 L1_SingleJet200
         83, -- global to local 80 L1_SingleJet60
         84, -- global to local 81 L1_SingleJet90
        190, -- global to local 82 L1_SingleJetC32_NotBptxOR
         14, -- global to local 83 L1_SingleMu10_LowQ
          7, -- global to local 84 L1_SingleMu14
          8, -- global to local 85 L1_SingleMu16
         11, -- global to local 86 L1_SingleMu22
         13, -- global to local 87 L1_SingleMu30
          5, -- global to local 88 L1_SingleMu7
          2, -- global to local 89 L1_SingleMuOpen
        189, -- global to local 90 L1_SingleMuOpen_NotBptxOR
        107, -- global to local 91 L1_SingleTau120er
        188, -- global to local 92 L1_HTM60_HTT260
        187, -- global to local 93 L1_HTM80_HTT220
        129, -- global to local 94 L1_HTM80
        118, -- global to local 95 L1_HTT220
        253, -- global to local 96 L1_MinimumBiasHF1_AND
        252, -- global to local 97 L1_MinimumBiasHF1_OR
        249, -- global to local 98 L1_MinimumBiasHF1_AND_BptxAND
        248, -- global to local 99 L1_MinimumBiasHF1_OR_BptxAND
        143, -- global to local 100 L1_ETM120
        272, -- global to local 101 L1_ETM75
        273, -- global to local 102 L1_ETM85
        274, -- global to local 103 L1_ETM95
        193, -- global to local 104 L1_ETT35_BptxAND
        244, -- global to local 105 L1_ETT50_BptxAND
        130, -- global to local 106 L1_HTM100
        132, -- global to local 107 L1_HTM130
        134, -- global to local 108 L1_HTM150
        128, -- global to local 109 L1_HTM70
        116, -- global to local 110 L1_HTT160
        121, -- global to local 111 L1_HTT270
        123, -- global to local 112 L1_HTT300
        240, -- global to local 113 L1_BRIL_TRIG0_AND
        243, -- global to local 114 L1_BRIL_TRIG0_FstBunchInTrain
        242, -- global to local 115 L1_BRIL_TRIG0_OR
        241, -- global to local 116 L1_BRIL_TRIG0_delayedAND
        223, -- global to local 117 L1_BeamGasB1
        224, -- global to local 118 L1_BeamGasB2
        222, -- global to local 119 L1_BeamGasMinus
        221, -- global to local 120 L1_BeamGasPlus
        208, -- global to local 121 L1_BptxMinus
        220, -- global to local 122 L1_BptxXOR
        207, -- global to local 123 L1_BptxPlus
        282, -- global to local 124 L1_FirstBunchAfterTrain
        281, -- global to local 125 L1_FirstBunchInTrain
        219, -- global to local 126 L1_IsolatedBunch
        211, -- global to local 127 L1_ZeroBias_FirstCollidingBunch
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