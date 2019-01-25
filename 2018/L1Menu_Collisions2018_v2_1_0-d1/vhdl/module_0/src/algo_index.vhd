-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v2_1_0

-- Unique ID of L1 Trigger Menu:
-- e36612e2-bee8-45eb-a685-f6cea687ce3d

-- Unique ID of firmware implementation:
-- 47efa6e9-433f-450a-a516-111b1abe0345

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.4.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        360, -- module_index: 0, name: L1_DoubleJet_115_40_DoubleJet40_Mass_Min620_Jet60TT28
        361, -- module_index: 1, name: L1_DoubleJet_120_45_DoubleJet45_Mass_Min620_Jet60TT28
        312, -- module_index: 2, name: L1_SingleJet120
        276, -- module_index: 3, name: L1_DoubleIsoTau30er2p1_Mass_Max90
         83, -- module_index: 4, name: L1_TripleMu_5_3p5_2p5_DoubleMu_5_2p5_OS_Mass_5to17
         84, -- module_index: 5, name: L1_TripleMu_5_4_2p5_DoubleMu_5_2p5_OS_Mass_5to17
         77, -- module_index: 6, name: L1_TripleMu_5_3p5_2p5
         65, -- module_index: 7, name: L1_DoubleMu4p5er2p0_SQ_OS_Mass_Min7
         54, -- module_index: 8, name: L1_DoubleMu0er2p0_SQ_OS_dR_Max1p4
        346, -- module_index: 9, name: L1_DoubleJet112er2p3_dEta_Max1p6
         60, -- module_index: 10, name: L1_DoubleMu4_SQ_OS
         46, -- module_index: 11, name: L1_DoubleMu_12_5
        374, -- module_index: 12, name: L1_TripleJet_105_85_75_DoubleJet_85_75_er2p5
         96, -- module_index: 13, name: L1_Mu5_EG23er2p5
         97, -- module_index: 14, name: L1_Mu7_EG20er2p5
         98, -- module_index: 15, name: L1_Mu7_EG23er2p5
        101, -- module_index: 16, name: L1_Mu7_LooseIsoEG20er2p5
        100, -- module_index: 17, name: L1_Mu5_LooseIsoEG20er2p5
         10, -- module_index: 18, name: L1_SingleMu5
         12, -- module_index: 19, name: L1_SingleMu7
        102, -- module_index: 20, name: L1_Mu7_LooseIsoEG23er2p5
         33, -- module_index: 21, name: L1_SingleMu18er1p5
         23, -- module_index: 22, name: L1_SingleMu25
         28, -- module_index: 23, name: L1_SingleMu9er1p5
        228, -- module_index: 24, name: L1_TripleEG16er2p5
        226, -- module_index: 25, name: L1_TripleEG_18_17_8_er2p5
        210, -- module_index: 26, name: L1_DoubleEG_27_14_er2p5
        269, -- module_index: 27, name: L1_DoubleIsoTau28er2p1
        341, -- module_index: 28, name: L1_DoubleJet100er2p5
        267, -- module_index: 29, name: L1_DoubleTau70er2p1
        325, -- module_index: 30, name: L1_SingleJet60_FWD3p0
        162, -- module_index: 31, name: L1_SingleEG26er2p5
        164, -- module_index: 32, name: L1_SingleEG28er2p5
        170, -- module_index: 33, name: L1_SingleEG40er2p5
        174, -- module_index: 34, name: L1_SingleEG60
        186, -- module_index: 35, name: L1_SingleIsoEG26er2p1
        193, -- module_index: 36, name: L1_SingleIsoEG30er2p1
        330, -- module_index: 37, name: L1_SingleJet10erHE
        322, -- module_index: 38, name: L1_SingleJet180er2p5
        329, -- module_index: 39, name: L1_SingleJet8erHE
        180, -- module_index: 40, name: L1_SingleLooseIsoEG28er1p5
        265, -- module_index: 41, name: L1_SingleTau130er2p1
    others => 0
);

-- ========================================================