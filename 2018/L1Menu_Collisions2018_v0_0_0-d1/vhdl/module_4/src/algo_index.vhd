-- ========================================================
-- from VHDL producer:

-- Module ID: 4

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v0_0_0

-- Unique ID of L1 Trigger Menu:
-- ab180f50-10f1-4280-90cb-3f727321cac6

-- Unique ID of firmware implementation:
-- 815e57bf-b6ab-4733-98bf-d9de201a65ea

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        472, -- module_index: 0, name: L1_BPTX_BeamGas_B2_VME
        483, -- module_index: 1, name: L1_BPTX_RefAND_VME
        488, -- module_index: 2, name: L1_FirstCollisionInTrain
        193, -- module_index: 3, name: L1_ETM100
        275, -- module_index: 4, name: L1_DoubleJet60er2p7_ETM70
        278, -- module_index: 5, name: L1_DoubleJet60er2p7_ETM100
        189, -- module_index: 6, name: L1_ETM80
        153, -- module_index: 7, name: L1_DoubleJet60er2p7
        186, -- module_index: 8, name: L1_ETM60
        191, -- module_index: 9, name: L1_ETM90
        277, -- module_index: 10, name: L1_DoubleJet60er2p7_ETM90
        429, -- module_index: 11, name: L1_DoubleJet60er2p7_ETM60
        276, -- module_index: 12, name: L1_DoubleJet60er2p7_ETM80
        187, -- module_index: 13, name: L1_ETM70
         66, -- module_index: 14, name: L1_SingleEG34er2p1
         60, -- module_index: 15, name: L1_SingleEG36
         70, -- module_index: 16, name: L1_SingleEG36er2p5
         68, -- module_index: 17, name: L1_SingleEG38er2p1
         62, -- module_index: 18, name: L1_SingleEG40
         63, -- module_index: 19, name: L1_SingleEG42
         64, -- module_index: 20, name: L1_SingleEG45
         65, -- module_index: 21, name: L1_SingleEG50
         73, -- module_index: 22, name: L1_SingleIsoEG26
         91, -- module_index: 23, name: L1_SingleIsoEG26er2p5
         88, -- module_index: 24, name: L1_SingleIsoEG28er2p1
         75, -- module_index: 25, name: L1_SingleIsoEG30
         93, -- module_index: 26, name: L1_SingleIsoEG30er2p5
         94, -- module_index: 27, name: L1_SingleIsoEG32er2p5
        508, -- module_index: 28, name: L1_SingleJet10erHE
        137, -- module_index: 29, name: L1_SingleJet140
        139, -- module_index: 30, name: L1_SingleJet160
        132, -- module_index: 31, name: L1_SingleJet20
        148, -- module_index: 32, name: L1_SingleJet35_HFm
        149, -- module_index: 33, name: L1_SingleJet60_HFp
        119, -- module_index: 34, name: L1_SingleTau130er2p1
        108, -- module_index: 35, name: L1_DoubleEG_25_12
        280, -- module_index: 36, name: L1_DoubleEG_LooseIso24_10
        155, -- module_index: 37, name: L1_DoubleJet100er2p7
        151, -- module_index: 38, name: L1_DoubleJet40er2p7
        112, -- module_index: 39, name: L1_DoubleLooseIsoEG24er2p1
        144, -- module_index: 40, name: L1_SingleJet60_FWD
          5, -- module_index: 41, name: L1_SingleMu0_BMTF
         13, -- module_index: 42, name: L1_SingleMu12_LowQ_BMTF
         19, -- module_index: 43, name: L1_SingleMu22
         23, -- module_index: 44, name: L1_SingleMu25
          4, -- module_index: 45, name: L1_SingleMuCosmics_EMTF
         30, -- module_index: 46, name: L1_DoubleMu0
        395, -- module_index: 47, name: L1_DoubleMu0er1p5_SQ_OS
        392, -- module_index: 48, name: L1_DoubleMu4p5_SQ
        384, -- module_index: 49, name: L1_DoubleMu6_SQ_OS
         36, -- module_index: 50, name: L1_DoubleMu_15_7
        163, -- module_index: 51, name: L1_TripleJet_105_85_76_VBF
         40, -- module_index: 52, name: L1_TripleMu3
         42, -- module_index: 53, name: L1_TripleMu_5_0_0
        273, -- module_index: 54, name: L1_ETM100_Jet60_dPhi_Min0p4
        271, -- module_index: 55, name: L1_ETM80_Jet60_dPhi_Min0p4
         97, -- module_index: 56, name: L1_IsoEG33_Mt40
        440, -- module_index: 57, name: L1_DoubleMu0er1p4_dEta_Max1p8_OS
        381, -- module_index: 58, name: L1_DoubleMu0er1p4_SQ_OS_dR_Max1p4
        382, -- module_index: 59, name: L1_DoubleMu4p5_SQ_OS_dR_Max1p2
        387, -- module_index: 60, name: L1_TripleMu_5SQ_3SQ_0OQ_DoubleMu_5_3_SQ_OS_Mass_Max9
        388, -- module_index: 61, name: L1_TripleMu_5SQ_3SQ_0_DoubleMu_5_3_SQ_OS_Mass_Max9
        286, -- module_index: 62, name: L1_DoubleJet_110_40_DoubleJet40_Mass_Min620
        288, -- module_index: 63, name: L1_DoubleJet_115_40_DoubleJet40_Mass_Min620
        221, -- module_index: 64, name: L1_DoubleJet30_Mass_Min400_dEta_Max1p5
        227, -- module_index: 65, name: L1_LooseIsoEG28er2p1_Jet34er2p7_dR_Min0p3
        402, -- module_index: 66, name: L1_DoubleMu3_OS_DoubleEG7p5Upsilon
    others => 0
);

-- ========================================================