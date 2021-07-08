-- ========================================================
-- from VHDL producer:

-- Module ID: 4

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2020_v0_1_6

-- Unique ID of L1 Trigger Menu:
-- 272a3710-a984-42d5-a8e6-2d4ffb8b7a2e

-- Unique ID of firmware implementation:
-- f344731e-51dc-4ff8-a41c-a33671803224

-- Scale set:
-- scales_2021_03_02

-- VHDL producer version
-- v2.11.0

-- tmEventSetup version
-- v0.8.2

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        258, -- module_index: 0, name: L1_LooseIsoEG24er2p1_IsoTau27er2p1_dR_Min0p3
        236, -- module_index: 1, name: L1_LooseIsoEG30er2p1_Jet34er2p5_dR_Min0p3
        352, -- module_index: 2, name: L1_DoubleJet30er2p5_Mass_Min330_dEta_Max1p5
        357, -- module_index: 3, name: L1_DoubleJet_110_35_DoubleJet35_Mass_Min620
        358, -- module_index: 4, name: L1_DoubleJet_115_40_DoubleJet40_Mass_Min620
        366, -- module_index: 5, name: L1_DoubleJet_80_30_Mass_Min420_DoubleMu0_SQ
         41, -- module_index: 6, name: L1_DoubleMu0_SQ
        365, -- module_index: 7, name: L1_DoubleJet_80_30_Mass_Min420_Mu8
        134, -- module_index: 8, name: L1_Mu10er2p3_Jet32er2p3_dR_Max0p4_DoubleJet32er2p3_dEta_Max1p6
        136, -- module_index: 9, name: L1_Mu12er2p3_Jet40er2p1_dR_Max0p4_DoubleJet40er2p1_dEta_Max1p6
        126, -- module_index: 10, name: L1_Mu3_Jet120er2p5_dR_Max0p4
        124, -- module_index: 11, name: L1_Mu3_Jet80er2p5_dR_Max0p4
         65, -- module_index: 12, name: L1_DoubleMu4p5er2p0_SQ_OS_Mass_Min7
        215, -- module_index: 13, name: L1_DoubleEG_LooseIso25_12_er2p5
        208, -- module_index: 14, name: L1_DoubleEG_25_12_er2p5
        342, -- module_index: 15, name: L1_DoubleJet120er2p5
        327, -- module_index: 16, name: L1_SingleJet120_FWD3p0
        109, -- module_index: 17, name: L1_DoubleMu4_SQ_EG9er2p5
        110, -- module_index: 18, name: L1_DoubleMu5_SQ_EG9er2p5
        363, -- module_index: 19, name: L1_DoubleJet35_Mass_Min450_IsoTau45_RmOvlp
         24, -- module_index: 20, name: L1_MASSUPT_0_0_10
          7, -- module_index: 21, name: L1_SingleMu0_OMTF
        161, -- module_index: 22, name: L1_SingleEG15er2p5
        167, -- module_index: 23, name: L1_SingleEG34er2p5
        172, -- module_index: 24, name: L1_SingleEG45er2p5
        316, -- module_index: 25, name: L1_SingleJet35er2p5
        265, -- module_index: 26, name: L1_SingleTau130er2p1
         40, -- module_index: 27, name: L1_DoubleMu0
         47, -- module_index: 28, name: L1_DoubleMu_15_5_SQ
         13, -- module_index: 29, name: L1_SingleMu12_DQ_BMTF
         20, -- module_index: 30, name: L1_SingleMu22_BMTF
        153, -- module_index: 31, name: L1_Mu0upt20ip0
          1, -- module_index: 32, name: L1_SingleMuCosmics_BMTF
        302, -- module_index: 33, name: L1_Mu0upt10
        173, -- module_index: 34, name: L1_SingleEG50
        310, -- module_index: 35, name: L1_SingleJet60
         19, -- module_index: 36, name: L1_SingleMu22
        417, -- module_index: 37, name: L1_ETM150
        412, -- module_index: 38, name: L1_ETT2000
        404, -- module_index: 39, name: L1_HTT360er
        488, -- module_index: 40, name: L1_BPTX_AND_Ref4_VME
        482, -- module_index: 41, name: L1_BPTX_NotOR_VME
        480, -- module_index: 42, name: L1_FirstCollisionInOrbit
        478, -- module_index: 43, name: L1_LastCollisionInTrain
        506, -- module_index: 44, name: L1_TOTEM_4
    others => 0
);

-- ========================================================