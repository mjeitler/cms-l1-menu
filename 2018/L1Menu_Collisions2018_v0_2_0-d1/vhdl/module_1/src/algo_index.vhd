-- ========================================================
-- from VHDL producer:

-- Module ID: 1

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
        481, -- module_index: 0, name: L1_BPTX_AND_Ref3_VME
        480, -- module_index: 1, name: L1_BPTX_NotOR_VME
        484, -- module_index: 2, name: L1_FirstCollisionInOrbit
        487, -- module_index: 3, name: L1_LastCollisionInTrain
        479, -- module_index: 4, name: L1_UnpairedBunchBptxMinus
        169, -- module_index: 5, name: L1_HTT160er
        180, -- module_index: 6, name: L1_HTT400er
         52, -- module_index: 7, name: L1_SingleEG15
         71, -- module_index: 8, name: L1_SingleEG38er2p5
         50, -- module_index: 9, name: L1_SingleEG5
         91, -- module_index: 10, name: L1_SingleIsoEG26er2p5
         93, -- module_index: 11, name: L1_SingleIsoEG30er2p5
        508, -- module_index: 12, name: L1_SingleJet10erHE
        138, -- module_index: 13, name: L1_SingleJet150
        141, -- module_index: 14, name: L1_SingleJet180
        148, -- module_index: 15, name: L1_SingleJet35_HFm
        507, -- module_index: 16, name: L1_SingleJet8erHE
        103, -- module_index: 17, name: L1_DoubleEG_22_10_er2p5
        279, -- module_index: 18, name: L1_DoubleEG_LooseIso22_10_er2p5
        129, -- module_index: 19, name: L1_DoubleIsoTau36er2p1
        151, -- module_index: 20, name: L1_DoubleJet40er2p7
        143, -- module_index: 21, name: L1_SingleJet35_FWD
        281, -- module_index: 22, name: L1_TripleEG_LooseIso20_10_5_er2p5
         11, -- module_index: 23, name: L1_SingleMu10_LowQ
         18, -- module_index: 24, name: L1_SingleMu20
        422, -- module_index: 25, name: L1_Mu20_EG10er2p5
          9, -- module_index: 26, name: L1_SingleMu5
        238, -- module_index: 27, name: L1_Mu5_EG23
        239, -- module_index: 28, name: L1_Mu5_LooseIsoEG20
        299, -- module_index: 29, name: L1_Mu18er2p1_Tau24er2p1
        300, -- module_index: 30, name: L1_Mu18er2p1_Tau26er2p1
        391, -- module_index: 31, name: L1_DoubleMu0_SQ_OS
        396, -- module_index: 32, name: L1_DoubleMu4_SQ_OS
        332, -- module_index: 33, name: L1_DoubleMu_15_5_SQ
        164, -- module_index: 34, name: L1_TripleJet_100_85_72_VBF
         39, -- module_index: 35, name: L1_TripleMu0
         41, -- module_index: 36, name: L1_TripleMu_4_4_4
         44, -- module_index: 37, name: L1_TripleMu_5_5_3
        271, -- module_index: 38, name: L1_ETM80_Jet60_dPhi_Min0p4
         98, -- module_index: 39, name: L1_IsoEG32er2p5_Mt44
        255, -- module_index: 40, name: L1_DoubleJet112er2p1_dEta_Max1p6
        223, -- module_index: 41, name: L1_DoubleMu0er1p5_SQ_dR_Max1p4
        379, -- module_index: 42, name: L1_DoubleMu_20_2_SQ_Mass_Max20
        167, -- module_index: 43, name: L1_QuadJet60er2p5
        286, -- module_index: 44, name: L1_DoubleJet_110_40_DoubleJet40_Mass_Min620
        288, -- module_index: 45, name: L1_DoubleJet_115_40_DoubleJet40_Mass_Min620
        221, -- module_index: 46, name: L1_DoubleJet30er2p5_Mass_Min400_dEta_Max1p5
        228, -- module_index: 47, name: L1_LooseIsoEG30er2p1_Jet34er2p5_dR_Min0p3
        401, -- module_index: 48, name: L1_DoubleMu5Upsilon_OS_DoubleEG3
    others => 0
);

-- ========================================================