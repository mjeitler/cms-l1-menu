-- ========================================================
-- from VHDL producer:

-- Module ID: 1

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
        481, -- module_index: 0, name: L1_BPTX_AND_Ref3_VME
        480, -- module_index: 1, name: L1_BPTX_NotOR_VME
        510, -- module_index: 2, name: L1_EXT_HCAL_LaserMon_1
        487, -- module_index: 3, name: L1_LastCollisionInTrain
        195, -- module_index: 4, name: L1_ETM110
        183, -- module_index: 5, name: L1_ETM30
        190, -- module_index: 6, name: L1_ETM85
        168, -- module_index: 7, name: L1_HTT120er
        179, -- module_index: 8, name: L1_HTT380er
        181, -- module_index: 9, name: L1_HTT450er
         51, -- module_index: 10, name: L1_SingleEG10
        236, -- module_index: 11, name: L1_Mu23_EG10
        237, -- module_index: 12, name: L1_Mu23_LooseIsoEG10
         70, -- module_index: 13, name: L1_SingleEG36er2p5
         71, -- module_index: 14, name: L1_SingleEG38er2p5
         78, -- module_index: 15, name: L1_SingleEG42er2p5
         50, -- module_index: 16, name: L1_SingleEG5
         87, -- module_index: 17, name: L1_SingleIsoEG26er2p1
         92, -- module_index: 18, name: L1_SingleIsoEG28er2p5
         90, -- module_index: 19, name: L1_SingleIsoEG32er2p1
        508, -- module_index: 20, name: L1_SingleJet10erHE
        137, -- module_index: 21, name: L1_SingleJet140
        139, -- module_index: 22, name: L1_SingleJet160
        142, -- module_index: 23, name: L1_SingleJet200
        150, -- module_index: 24, name: L1_SingleJet60_HFm
        119, -- module_index: 25, name: L1_SingleTau130er2p1
        110, -- module_index: 26, name: L1_DoubleEG_25_14_er2p5
        127, -- module_index: 27, name: L1_DoubleIsoTau34er2p1
        157, -- module_index: 28, name: L1_DoubleJet120er2p7
        154, -- module_index: 29, name: L1_DoubleJet80er2p7
        146, -- module_index: 30, name: L1_SingleJet120_FWD
        114, -- module_index: 31, name: L1_TripleEG_18_17_8_er2p5
          6, -- module_index: 32, name: L1_SingleMu0_OMTF
         14, -- module_index: 33, name: L1_SingleMu12_LowQ_OMTF
         20, -- module_index: 34, name: L1_SingleMu22_BMTF
         23, -- module_index: 35, name: L1_SingleMu25
          2, -- module_index: 36, name: L1_SingleMuCosmics_BMTF
        299, -- module_index: 37, name: L1_Mu18er2p1_Tau24er2p1
        300, -- module_index: 38, name: L1_Mu18er2p1_Tau26er2p1
        390, -- module_index: 39, name: L1_DoubleMu0_SQ
         38, -- module_index: 40, name: L1_DoubleMu22er2p1
        394, -- module_index: 41, name: L1_DoubleMu4p5er2p0_SQ_OS
         32, -- module_index: 42, name: L1_DoubleMu_12_5
        380, -- module_index: 43, name: L1_DoubleMu4_OS_EG12
        383, -- module_index: 44, name: L1_DoubleMu5_OS_EG12
        399, -- module_index: 45, name: L1_TripleMu0_OQ
        400, -- module_index: 46, name: L1_TripleMu_5SQ_3SQ_0OQ
         44, -- module_index: 47, name: L1_TripleMu_5_5_3
        431, -- module_index: 48, name: L1_ETM75_Jet60_dPhi_Min0p4
         45, -- module_index: 49, name: L1_QuadMu0
         99, -- module_index: 50, name: L1_IsoEG32er2p5_Mt48
        251, -- module_index: 51, name: L1_DoubleJet100er2p3_dEta_Max1p6
        223, -- module_index: 52, name: L1_DoubleMu0er1p5_SQ_dR_Max1p4
        378, -- module_index: 53, name: L1_DoubleMu5_SQ_OS_Mass7to18
        165, -- module_index: 54, name: L1_QuadJet40er2p7
        286, -- module_index: 55, name: L1_DoubleJet_110_40_DoubleJet40_Mass_Min620
        288, -- module_index: 56, name: L1_DoubleJet_115_40_DoubleJet40_Mass_Min620
        221, -- module_index: 57, name: L1_DoubleJet30er2p5_Mass_Min400_dEta_Max1p5
        227, -- module_index: 58, name: L1_LooseIsoEG28er2p1_Jet34er2p5_dR_Min0p3
        402, -- module_index: 59, name: L1_DoubleMu3_OS_DoubleEG7p5Upsilon
    others => 0
);

-- ========================================================