-- ========================================================
-- from VHDL producer:

-- Module ID: 3

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_v4_r3

-- Unique ID of L1 Trigger Menu:
-- 091bc7c1-adf4-41be-8dc2-8bc3797597d2

-- Unique ID of firmware implementation:
-- debf71c9-b13a-43c4-9e1b-df86e2425514

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        471, -- module_index: 0, name: L1_BPTX_BeamGas_B1_VME
        486, -- module_index: 1, name: L1_BPTX_OR_Ref4_VME
        484, -- module_index: 2, name: L1_FirstCollisionInOrbit
        478, -- module_index: 3, name: L1_UnpairedBunchBptxPlus
        188, -- module_index: 4, name: L1_ETM75
        169, -- module_index: 5, name: L1_HTT160er
        180, -- module_index: 6, name: L1_HTT400er
        182, -- module_index: 7, name: L1_HTT500er
         53, -- module_index: 8, name: L1_SingleEG18
         54, -- module_index: 9, name: L1_SingleEG24
         55, -- module_index: 10, name: L1_SingleEG26
         56, -- module_index: 11, name: L1_SingleEG28
         57, -- module_index: 12, name: L1_SingleEG30
         58, -- module_index: 13, name: L1_SingleEG32
         59, -- module_index: 14, name: L1_SingleEG34
         60, -- module_index: 15, name: L1_SingleEG36
         61, -- module_index: 16, name: L1_SingleEG38
         62, -- module_index: 17, name: L1_SingleEG40
         50, -- module_index: 18, name: L1_SingleEG5
         83, -- module_index: 19, name: L1_SingleIsoEG18er2p1
         71, -- module_index: 20, name: L1_SingleIsoEG22
         86, -- module_index: 21, name: L1_SingleIsoEG24er2p1
         74, -- module_index: 22, name: L1_SingleIsoEG28
         89, -- module_index: 23, name: L1_SingleIsoEG30er2p1
         91, -- module_index: 24, name: L1_SingleIsoEG33er2p1
         78, -- module_index: 25, name: L1_SingleIsoEG35
         94, -- module_index: 26, name: L1_SingleIsoEG36er2p1
         95, -- module_index: 27, name: L1_SingleIsoEG38er2p1
        508, -- module_index: 28, name: L1_SingleJet10erHE
        137, -- module_index: 29, name: L1_SingleJet140
        139, -- module_index: 30, name: L1_SingleJet160
        132, -- module_index: 31, name: L1_SingleJet20
        148, -- module_index: 32, name: L1_SingleJet35_HFm
        149, -- module_index: 33, name: L1_SingleJet60_HFp
        118, -- module_index: 34, name: L1_SingleTau120er2p1
        116, -- module_index: 35, name: L1_SingleTau80er2p1
        102, -- module_index: 36, name: L1_DoubleEG_20_18
        106, -- module_index: 37, name: L1_DoubleEG_23_10
        110, -- module_index: 38, name: L1_DoubleEG_25_14
        124, -- module_index: 39, name: L1_DoubleIsoTau30er2p1
        128, -- module_index: 40, name: L1_DoubleIsoTau35er2p1
        156, -- module_index: 41, name: L1_DoubleJet112er2p7
        152, -- module_index: 42, name: L1_DoubleJet50er2p7
        121, -- module_index: 43, name: L1_DoubleTau50er2p1
        144, -- module_index: 44, name: L1_SingleJet60_FWD
        281, -- module_index: 45, name: L1_TripleEG_LooseIso20_10_5
         11, -- module_index: 46, name: L1_SingleMu10_LowQ
         14, -- module_index: 47, name: L1_SingleMu12_LowQ_OMTF
         19, -- module_index: 48, name: L1_SingleMu22
         21, -- module_index: 49, name: L1_SingleMu22_OMTF
          8, -- module_index: 50, name: L1_SingleMu3
        371, -- module_index: 51, name: L1_Mu3_Jet30er2p5
          2, -- module_index: 52, name: L1_SingleMuCosmics_BMTF
        426, -- module_index: 53, name: L1_Mu8_HTT150er
         37, -- module_index: 54, name: L1_DoubleMu18er2p1
        393, -- module_index: 55, name: L1_DoubleMu4p5_SQ_OS
        389, -- module_index: 56, name: L1_DoubleMu8_SQ
         34, -- module_index: 57, name: L1_DoubleMu_13_6
        333, -- module_index: 58, name: L1_DoubleMu_15_7_SQ
        334, -- module_index: 59, name: L1_DoubleMu_15_7_SQ_Mass_Min4
        251, -- module_index: 60, name: L1_DoubleJet100er2p3_dEta_Max1p6
        223, -- module_index: 61, name: L1_DoubleMu0er1p5_SQ_dR_Max1p4
        379, -- module_index: 62, name: L1_DoubleMu_20_2_SQ_Mass_Max20
        270, -- module_index: 63, name: L1_QuadJet36er2p7_IsoTau52er2p1
        430, -- module_index: 64, name: L1_QuadJet36er2p7_Tau52
        218, -- module_index: 65, name: L1_DoubleJet30_Mass_Min340_dEta_Max1p5
    others => 0
);

-- ========================================================