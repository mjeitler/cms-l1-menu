-- ========================================================
-- from VHDL producer:

-- Module ID: 2

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v0_3_0

-- Unique ID of L1 Trigger Menu:
-- 13f60d08-d9e3-4e6d-ad9b-3fd19ac86467

-- Unique ID of firmware implementation:
-- 6a0fa015-1c57-4ae1-8232-f2325ddad00d

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
        168, -- module_index: 5, name: L1_HTT120er
        178, -- module_index: 6, name: L1_HTT360er
         52, -- module_index: 7, name: L1_SingleEG15
         71, -- module_index: 8, name: L1_SingleEG38er2p5
         50, -- module_index: 9, name: L1_SingleEG5
         91, -- module_index: 10, name: L1_SingleIsoEG26er2p5
         93, -- module_index: 11, name: L1_SingleIsoEG30er2p5
        508, -- module_index: 12, name: L1_SingleJet10erHE
        137, -- module_index: 13, name: L1_SingleJet140
        139, -- module_index: 14, name: L1_SingleJet160
        141, -- module_index: 15, name: L1_SingleJet180
        142, -- module_index: 16, name: L1_SingleJet200
        147, -- module_index: 17, name: L1_SingleJet35_HFp
        149, -- module_index: 18, name: L1_SingleJet60_HFp
        118, -- module_index: 19, name: L1_SingleTau120er2p1
        101, -- module_index: 20, name: L1_DoubleEG_15_10_er2p5
        108, -- module_index: 21, name: L1_DoubleEG_25_12_er2p5
        280, -- module_index: 22, name: L1_DoubleEG_LooseIso20_10_er2p5
        125, -- module_index: 23, name: L1_DoubleIsoTau32er2p1
        111, -- module_index: 24, name: L1_DoubleLooseIsoEG22er2p1
        143, -- module_index: 25, name: L1_SingleJet35_FWD
        115, -- module_index: 26, name: L1_TripleEG_16_12_8_er2p5
          5, -- module_index: 27, name: L1_SingleMu0_BMTF
        427, -- module_index: 28, name: L1_SingleMu10er1p5
        428, -- module_index: 29, name: L1_SingleMu12er1p5
         17, -- module_index: 30, name: L1_SingleMu18
         20, -- module_index: 31, name: L1_SingleMu22_BMTF
          8, -- module_index: 32, name: L1_SingleMu3
        371, -- module_index: 33, name: L1_Mu3_Jet30er2p5
        424, -- module_index: 34, name: L1_SingleMu7er1p5
          0, -- module_index: 35, name: L1_SingleMuCosmics
        299, -- module_index: 36, name: L1_Mu18er2p1_Tau24er2p1
        300, -- module_index: 37, name: L1_Mu18er2p1_Tau26er2p1
         30, -- module_index: 38, name: L1_DoubleMu0
        391, -- module_index: 39, name: L1_DoubleMu0_SQ_OS
        395, -- module_index: 40, name: L1_DoubleMu0er1p5_SQ_OS
         37, -- module_index: 41, name: L1_DoubleMu18er2p1
        393, -- module_index: 42, name: L1_DoubleMu4p5_SQ_OS
        389, -- module_index: 43, name: L1_DoubleMu9_SQ
        332, -- module_index: 44, name: L1_DoubleMu_15_5_SQ
        333, -- module_index: 45, name: L1_DoubleMu_15_7_SQ
         39, -- module_index: 46, name: L1_TripleMu0
        407, -- module_index: 47, name: L1_TripleMu0_SQ
        335, -- module_index: 48, name: L1_TripleMu3_SQ
         43, -- module_index: 49, name: L1_TripleMu_5_3_3
        398, -- module_index: 50, name: L1_TripleMu_5_3p5_2p5
        386, -- module_index: 51, name: L1_TripleMu_5_4_2p5_DoubleMu_5_2p5_OS_Mass_5to17
        385, -- module_index: 52, name: L1_TripleMu_5_3p5_2p5_DoubleMu_5_2p5_OS_Mass_5to17
        375, -- module_index: 53, name: L1_DoubleMu0er1p5_SQ_OS_dR_Max1p4
        377, -- module_index: 54, name: L1_DoubleMu4_SQ_OS_dR_Max1p2
        343, -- module_index: 55, name: L1_DoubleMu0_Mass_Min1
        270, -- module_index: 56, name: L1_QuadJet36er2p5_IsoTau52er2p1
        220, -- module_index: 57, name: L1_DoubleJet30er2p5_Mass_Min150_dEta_Max1p5
        219, -- module_index: 58, name: L1_DoubleJet30er2p5_Mass_Min360_dEta_Max1p5
        227, -- module_index: 59, name: L1_LooseIsoEG28er2p1_Jet34er2p5_dR_Min0p3
        448, -- module_index: 60, name: L1_Mu3_Jet120er2p5_dR_Max0p8
        253, -- module_index: 61, name: L1_Mu10er2p3_Jet32er2p3_dR_Max0p4_DoubleJet32er2p3_dEta_Max1p6
    others => 0
);

-- ========================================================