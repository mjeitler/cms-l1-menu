-- ========================================================
-- from VHDL producer:

-- Module ID: 2

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v0_1_0

-- Unique ID of L1 Trigger Menu:
-- e4115c89-8693-4f08-bb9f-493f844c4d15

-- Unique ID of firmware implementation:
-- ea19fb64-9f87-4584-b967-74fcff8d0681

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        485, -- module_index: 0, name: L1_BPTX_AND_Ref4_VME
        482, -- module_index: 1, name: L1_BPTX_OR_Ref3_VME
        511, -- module_index: 2, name: L1_EXT_HCAL_LaserMon_4
        479, -- module_index: 3, name: L1_UnpairedBunchBptxMinus
        196, -- module_index: 4, name: L1_ETM115
        184, -- module_index: 5, name: L1_ETM40
        192, -- module_index: 6, name: L1_ETM95
        169, -- module_index: 7, name: L1_HTT160er
        180, -- module_index: 8, name: L1_HTT400er
        182, -- module_index: 9, name: L1_HTT500er
         52, -- module_index: 10, name: L1_SingleEG15
        238, -- module_index: 11, name: L1_Mu5_EG23
          9, -- module_index: 12, name: L1_SingleMu5
        418, -- module_index: 13, name: L1_Mu5_EG15
        420, -- module_index: 14, name: L1_Mu5_LooseIsoEG18
        419, -- module_index: 15, name: L1_Mu5_EG20
        239, -- module_index: 16, name: L1_Mu5_LooseIsoEG20
         65, -- module_index: 17, name: L1_SingleEG50
         91, -- module_index: 18, name: L1_SingleIsoEG26er2p5
         89, -- module_index: 19, name: L1_SingleIsoEG30er2p1
         94, -- module_index: 20, name: L1_SingleIsoEG32er2p5
        136, -- module_index: 21, name: L1_SingleJet120
        138, -- module_index: 22, name: L1_SingleJet150
        140, -- module_index: 23, name: L1_SingleJet170
        133, -- module_index: 24, name: L1_SingleJet35
        149, -- module_index: 25, name: L1_SingleJet60_HFp
        427, -- module_index: 26, name: L1_EG25er2p1_HTT125er
        279, -- module_index: 27, name: L1_DoubleEG_LooseIso22_10_er2p5
        129, -- module_index: 28, name: L1_DoubleIsoTau36er2p1
        158, -- module_index: 29, name: L1_DoubleJet150er2p7
        111, -- module_index: 30, name: L1_DoubleLooseIsoEG22er2p1
        143, -- module_index: 31, name: L1_SingleJet35_FWD
        281, -- module_index: 32, name: L1_TripleEG_LooseIso20_10_5_er2p5
         11, -- module_index: 33, name: L1_SingleMu10_LowQ
         17, -- module_index: 34, name: L1_SingleMu18
         22, -- module_index: 35, name: L1_SingleMu22_EMTF
          8, -- module_index: 36, name: L1_SingleMu3
        371, -- module_index: 37, name: L1_Mu3_Jet30er2p5
          4, -- module_index: 38, name: L1_SingleMuCosmics_EMTF
        307, -- module_index: 39, name: L1_Mu22er2p1_IsoTau32er2p1
        309, -- module_index: 40, name: L1_Mu22er2p1_IsoTau34er2p1
        311, -- module_index: 41, name: L1_Mu22er2p1_IsoTau36er2p1
        301, -- module_index: 42, name: L1_Mu22er2p1_Tau70er2p1
        395, -- module_index: 43, name: L1_DoubleMu0er1p5_SQ_OS
        392, -- module_index: 44, name: L1_DoubleMu4p5_SQ
        384, -- module_index: 45, name: L1_DoubleMu6_SQ_OS
         36, -- module_index: 46, name: L1_DoubleMu_15_7
        164, -- module_index: 47, name: L1_TripleJet_100_85_72_VBF
        162, -- module_index: 48, name: L1_TripleJet_98_83_71_VBF
        335, -- module_index: 49, name: L1_TripleMu3_SQ
         43, -- module_index: 50, name: L1_TripleMu_5_3_3
        274, -- module_index: 51, name: L1_ETM110_Jet60_dPhi_Min0p4
        272, -- module_index: 52, name: L1_ETM90_Jet60_dPhi_Min0p4
         98, -- module_index: 53, name: L1_IsoEG32er2p5_Mt44
        441, -- module_index: 54, name: L1_DoubleMu_10_0_dEta_Max1p8
        375, -- module_index: 55, name: L1_DoubleMu0er1p5_SQ_OS_dR_Max1p4
        376, -- module_index: 56, name: L1_DoubleMu4p5er2p0_SQ_OS_Mass7to18
        387, -- module_index: 57, name: L1_TripleMu_5SQ_3SQ_0OQ_DoubleMu_5_3_SQ_OS_Mass_Max9
        388, -- module_index: 58, name: L1_TripleMu_5SQ_3SQ_0_DoubleMu_5_3_SQ_OS_Mass_Max9
        284, -- module_index: 59, name: L1_DoubleJet_100_35_DoubleJet35_Mass_Min620
        285, -- module_index: 60, name: L1_DoubleJet_110_35_DoubleJet35_Mass_Min620
        287, -- module_index: 61, name: L1_DoubleJet_115_35_DoubleJet35_Mass_Min620
        220, -- module_index: 62, name: L1_DoubleJet30er2p5_Mass_Min380_dEta_Max1p5
        226, -- module_index: 63, name: L1_LooseIsoEG26er2p1_Jet34er2p5_dR_Min0p3
        404, -- module_index: 64, name: L1_TripleMu_5OQ_3p5OQ_2p5OQ_DoubleMu_5_2p5_OQ_OS_Mass_5to17
        403, -- module_index: 65, name: L1_TripleMu_5OQ_3p5OQ_2p5OQ_DoubleMu_5_2p5_OQ_OS_Mass_8to14
    others => 0
);

-- ========================================================