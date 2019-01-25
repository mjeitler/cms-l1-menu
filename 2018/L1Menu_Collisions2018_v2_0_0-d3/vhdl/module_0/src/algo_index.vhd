-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v2_0_0

-- Unique ID of L1 Trigger Menu:
-- 669da877-bfe2-4b02-842e-13ee40f3e064

-- Unique ID of firmware implementation:
-- cfa03eba-c8d7-4d4f-9e2c-8039338ad141

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
        298, -- module_index: 3, name: L1_QuadJet36er2p5_IsoTau52er2p1
         82, -- module_index: 4, name: L1_TripleMu_5_3p5_2p5_OQ_DoubleMu_5_2p5_OQ_OS_Mass_5to17
         50, -- module_index: 5, name: L1_DoubleMu_15_7_Mass_Min1
         53, -- module_index: 6, name: L1_DoubleMu0er2p0_SQ_dR_Max1p4
        198, -- module_index: 7, name: L1_IsoEG32er2p5_Mt44
         89, -- module_index: 8, name: L1_QuadMu0
         88, -- module_index: 9, name: L1_QuadMu0_OQ
         72, -- module_index: 10, name: L1_TripleMu0
         73, -- module_index: 11, name: L1_TripleMu0_SQ
         75, -- module_index: 12, name: L1_TripleMu3_SQ
         39, -- module_index: 13, name: L1_DoubleMu0_OQ
         60, -- module_index: 14, name: L1_DoubleMu4_SQ_OS
         46, -- module_index: 15, name: L1_DoubleMu_12_5
        374, -- module_index: 16, name: L1_TripleJet_105_85_75_DoubleJet_85_75_er2p5
         96, -- module_index: 17, name: L1_Mu5_EG23er2p5
        101, -- module_index: 18, name: L1_Mu7_LooseIsoEG20er2p5
        100, -- module_index: 19, name: L1_Mu5_LooseIsoEG20er2p5
         10, -- module_index: 20, name: L1_SingleMu5
        102, -- module_index: 21, name: L1_Mu7_LooseIsoEG23er2p5
         97, -- module_index: 22, name: L1_Mu7_EG20er2p5
         98, -- module_index: 23, name: L1_Mu7_EG23er2p5
         12, -- module_index: 24, name: L1_SingleMu7
         33, -- module_index: 25, name: L1_SingleMu18er1p5
         25, -- module_index: 26, name: L1_SingleMu6er1p5
          1, -- module_index: 27, name: L1_SingleMuCosmics_BMTF
        226, -- module_index: 28, name: L1_TripleEG_18_17_8_er2p5
        212, -- module_index: 29, name: L1_DoubleEG_LooseIso20_10_er2p5
        277, -- module_index: 30, name: L1_DoubleIsoTau36er2p1
        273, -- module_index: 31, name: L1_DoubleTau70er2p1
        326, -- module_index: 32, name: L1_SingleJet90_FWD3p0
        165, -- module_index: 33, name: L1_SingleEG28er2p1
        170, -- module_index: 34, name: L1_SingleEG40er2p5
        159, -- module_index: 35, name: L1_SingleEG8er2p5
        191, -- module_index: 36, name: L1_SingleIsoEG28er1p5
        194, -- module_index: 37, name: L1_SingleIsoEG32er2p5
        313, -- module_index: 38, name: L1_SingleJet180
        329, -- module_index: 39, name: L1_SingleJet8erHE
        178, -- module_index: 40, name: L1_SingleLooseIsoEG28er2p5
        461, -- module_index: 41, name: L1_MinimumBiasHF0_AND_BptxAND
        460, -- module_index: 42, name: L1_ZeroBias_copy
        458, -- module_index: 43, name: L1_AlwaysTrue
        459, -- module_index: 44, name: L1_ZeroBias
        425, -- module_index: 45, name: L1_ETMHF140
        411, -- module_index: 46, name: L1_ETT1600
        401, -- module_index: 47, name: L1_HTT255er
        487, -- module_index: 48, name: L1_BPTX_AND_Ref3_VME
        489, -- module_index: 49, name: L1_BPTX_BeamGas_Ref1_VME
        485, -- module_index: 50, name: L1_BPTX_RefAND_VME
        478, -- module_index: 51, name: L1_LastCollisionInTrain
        506, -- module_index: 52, name: L1_TOTEM_4
    others => 0
);

-- ========================================================