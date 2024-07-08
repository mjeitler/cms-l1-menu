-- ========================================================
-- from VHDL producer:

-- Module ID: 5

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2024_v1_3_0

-- Unique ID of L1 Trigger Menu:
-- b767c77f-2f60-4ce7-94e4-e16f097941b0

-- Unique ID of firmware implementation:
-- 1f6f1c24-5c15-48da-9403-5fbf3a32540a

-- Scale set:
-- scales_2024_05_15

-- VHDL producer
-- version: 2.20.0
-- hash value: 01d3461e956f1972cb9cbbbbb32745d60d52a3d208431bb6763622d65d6a8291

-- tmEventSetup
-- version: 0.13.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        443, -- module_index: 0, name: L1_AXO_VTight
        122, -- module_index: 1, name: L1_DoubleMu3_OS_er2p3_Mass_Max14_DoubleEG7p5_er2p1_Mass_Max20
        257, -- module_index: 2, name: L1_LooseIsoEG22er2p1_IsoTau26er2p1_dR_Min0p3
        347, -- module_index: 3, name: L1_DoubleJet30er2p5_Mass_Min225_dEta_Max1p5
        357, -- module_index: 4, name: L1_DoubleJet_110_35_DoubleJet35_Mass_Min800
        358, -- module_index: 5, name: L1_DoubleJet_110_35_DoubleJet35_Mass_Min850
        126, -- module_index: 6, name: L1_DoubleJet16er2p5_Mu3_dR_Max0p4
        298, -- module_index: 7, name: L1_IsoTau52er2p1_QuadJet36er2p5
        283, -- module_index: 8, name: L1_DoubleIsoTau26er2p1_Jet55_RmOvlp_dR0p5
         70, -- module_index: 9, name: L1_DoubleMu0er1p4_SQ_OS_dEta_Max1p2
         61, -- module_index: 10, name: L1_DoubleMu0er2p0_SQ_dEta_Max1p5
        234, -- module_index: 11, name: L1_TripleEG_18_17_8_er2p5
        226, -- module_index: 12, name: L1_DoubleEG_LooseIso18_LooseIso12_er1p5
        229, -- module_index: 13, name: L1_DoubleEG_LooseIso25_LooseIso12_er1p5
        269, -- module_index: 14, name: L1_DoubleIsoTau32er2p1
        272, -- module_index: 15, name: L1_DoubleIsoTau36er2p1
        188, -- module_index: 16, name: L1_SingleIsoEG28_FWD2p5
        223, -- module_index: 17, name: L1_DoubleEG_LooseIso22_12_er2p5
        215, -- module_index: 18, name: L1_DoubleEG_15_10_er2p5
        218, -- module_index: 19, name: L1_DoubleEG_25_12_er2p5
        341, -- module_index: 20, name: L1_DoubleJet100er2p5
         52, -- module_index: 21, name: L1_DoubleMu0_Upt6_SQ_er2p0
        163, -- module_index: 22, name: L1_SingleEG28_FWD2p5
        324, -- module_index: 23, name: L1_SingleJet35_FWD3p0
        119, -- module_index: 24, name: L1_DoubleMu4_SQ_EG9er2p5
        120, -- module_index: 25, name: L1_DoubleMu5_SQ_EG9er2p5
         64, -- module_index: 26, name: L1_DoubleMu0er1p5_SQ
        330, -- module_index: 27, name: L1_SingleJet12erHE
        390, -- module_index: 28, name: L1_DoubleLLPJet40
         84, -- module_index: 29, name: L1_TripleMu0
         88, -- module_index: 30, name: L1_TripleMu_3SQ_2p5SQ_0
        243, -- module_index: 31, name: L1_LooseIsoEG24er2p1_HTT100er
        245, -- module_index: 32, name: L1_LooseIsoEG28er2p1_HTT100er
        179, -- module_index: 33, name: L1_SingleLooseIsoEG28er2p1
        244, -- module_index: 34, name: L1_LooseIsoEG26er2p1_HTT100er
        181, -- module_index: 35, name: L1_SingleLooseIsoEG30er2p5
         35, -- module_index: 36, name: L1_SingleMu22_OMTF
        165, -- module_index: 37, name: L1_SingleEG28er2p1
        171, -- module_index: 38, name: L1_SingleEG42er2p5
        317, -- module_index: 39, name: L1_SingleJet160er2p5
        198, -- module_index: 40, name: L1_SingleMu0_Upt10_SQ14_BMTF
          2, -- module_index: 41, name: L1_SingleMuCosmics_OMTF
         77, -- module_index: 42, name: L1_DoubleMu4p5_SQ_OS
         44, -- module_index: 43, name: L1_DoubleMu9_SQ
          9, -- module_index: 44, name: L1_SingleMu0_BMTF
         24, -- module_index: 45, name: L1_SingleMu11_SQ14_BMTF
        204, -- module_index: 46, name: L1_SingleMu7_SQ14_BMTF
        392, -- module_index: 47, name: L1_HTT160_SingleLLPJet50
        403, -- module_index: 48, name: L1_HTT160er
        309, -- module_index: 49, name: L1_SingleJet180
          8, -- module_index: 50, name: L1_SingleMu0_DQ
         31, -- module_index: 51, name: L1_SingleMu22_OQ
        417, -- module_index: 52, name: L1_ETM150
        408, -- module_index: 53, name: L1_HTT360er
        436, -- module_index: 54, name: L1_MHTHF125
        488, -- module_index: 55, name: L1_BPTX_AND_Ref4_VME
        482, -- module_index: 56, name: L1_BPTX_NotOR_VME
        480, -- module_index: 57, name: L1_FirstCollisionInOrbit
        478, -- module_index: 58, name: L1_LastCollisionInTrain
        504, -- module_index: 59, name: L1_TOTEM_2
        468, -- module_index: 60, name: L1_UnpairedBunchBptxPlus
    others => 0
);

-- ========================================================