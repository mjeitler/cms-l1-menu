-- ========================================================
-- from VHDL producer:

-- Module ID: 2

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v0_2_0

-- Unique ID of L1 Trigger Menu:
-- 2eb60aa6-04d5-4c65-83d7-c3d1765d0009

-- Unique ID of firmware implementation:
-- f13b8808-493b-4e3f-bce1-f3afb77b8cfc

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        485, -- module_index: 0, name: L1_BPTX_AND_Ref4_VME
        482, -- module_index: 1, name: L1_BPTX_OR_Ref3_VME
        488, -- module_index: 2, name: L1_FirstCollisionInTrain
        500, -- module_index: 3, name: L1_TOTEM_1
        478, -- module_index: 4, name: L1_UnpairedBunchBptxPlus
        170, -- module_index: 5, name: L1_HTT200er
        181, -- module_index: 6, name: L1_HTT450er
         55, -- module_index: 7, name: L1_SingleEG26
         72, -- module_index: 8, name: L1_SingleEG40er2p5
         65, -- module_index: 9, name: L1_SingleEG50
         88, -- module_index: 10, name: L1_SingleIsoEG28er2p1
         90, -- module_index: 11, name: L1_SingleIsoEG32er2p1
        136, -- module_index: 12, name: L1_SingleJet120
        131, -- module_index: 13, name: L1_SingleJet16
        132, -- module_index: 14, name: L1_SingleJet20
        147, -- module_index: 15, name: L1_SingleJet35_HFp
        118, -- module_index: 16, name: L1_SingleTau120er2p1
        108, -- module_index: 17, name: L1_DoubleEG_25_12_er2p5
        280, -- module_index: 18, name: L1_DoubleEG_LooseIso24_10_er2p5
        155, -- module_index: 19, name: L1_DoubleJet100er2p7
        111, -- module_index: 20, name: L1_DoubleLooseIsoEG22er2p1
        144, -- module_index: 21, name: L1_SingleJet60_FWD
          5, -- module_index: 22, name: L1_SingleMu0_BMTF
         13, -- module_index: 23, name: L1_SingleMu12_LowQ_BMTF
         19, -- module_index: 24, name: L1_SingleMu22
         23, -- module_index: 25, name: L1_SingleMu25
          2, -- module_index: 26, name: L1_SingleMuCosmics_BMTF
        307, -- module_index: 27, name: L1_Mu22er2p1_IsoTau32er2p1
        301, -- module_index: 28, name: L1_Mu22er2p1_Tau70er2p1
        309, -- module_index: 29, name: L1_Mu22er2p1_IsoTau34er2p1
        311, -- module_index: 30, name: L1_Mu22er2p1_IsoTau36er2p1
        395, -- module_index: 31, name: L1_DoubleMu0er1p5_SQ_OS
        393, -- module_index: 32, name: L1_DoubleMu4p5_SQ_OS
         36, -- module_index: 33, name: L1_DoubleMu_15_7
        163, -- module_index: 34, name: L1_TripleJet_105_85_76_VBF
        407, -- module_index: 35, name: L1_TripleMu0_SQ
         42, -- module_index: 36, name: L1_TripleMu_5_0_0
        274, -- module_index: 37, name: L1_ETM110_Jet60_dPhi_Min0p4
         45, -- module_index: 38, name: L1_QuadMu0
        250, -- module_index: 39, name: L1_DoubleJet100er2p1_dEta_Max1p6
        381, -- module_index: 40, name: L1_DoubleMu0er1p4_SQ_OS_dR_Max1p4
        382, -- module_index: 41, name: L1_DoubleMu4p5_SQ_OS_dR_Max1p2
        334, -- module_index: 42, name: L1_DoubleMu_15_7_Mass_Min1
        284, -- module_index: 43, name: L1_DoubleJet_100_35_DoubleJet35_Mass_Min620
        285, -- module_index: 44, name: L1_DoubleJet_110_35_DoubleJet35_Mass_Min620
        287, -- module_index: 45, name: L1_DoubleJet_115_35_DoubleJet35_Mass_Min620
        220, -- module_index: 46, name: L1_DoubleJet30er2p5_Mass_Min380_dEta_Max1p5
        227, -- module_index: 47, name: L1_LooseIsoEG28er2p1_Jet34er2p5_dR_Min0p3
        402, -- module_index: 48, name: L1_DoubleMu3_OS_DoubleEG7p5Upsilon
        292, -- module_index: 49, name: L1_DoubleJet35_rmovlp_IsoTau45_Mass_Min450
    others => 0
);

-- ========================================================