-- ========================================================
-- from VHDL producer:

-- Module ID: 1

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_v1

-- Unique ID of L1 Trigger Menu:
-- 5c7b4a5a-e0b2-4b3f-9a0f-45e17843321a

-- Unique ID of firmware implementation:
-- 9ec147b7-3a0c-454f-9d20-cbf08298b3a0

-- Scale set:
-- scales_2017_05_22

-- VHDL producer version
-- v2.0.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        462, -- module_index: 0, name: L1_BPTX_AND_Ref1_VME
        479, -- module_index: 1, name: L1_BPTX_B1_NIM
        454, -- module_index: 2, name: L1_BPTX_BeamGas_Ref1_VME
        475, -- module_index: 3, name: L1_BPTX_OR_Ref4_VME
        476, -- module_index: 4, name: L1_LastCollisionInTrain
        203, -- module_index: 5, name: L1_ETM115
        192, -- module_index: 6, name: L1_ETM50
        170, -- module_index: 7, name: L1_HTT120er
        180, -- module_index: 8, name: L1_HTT340er
        183, -- module_index: 9, name: L1_HTT450er
         53, -- module_index: 10, name: L1_SingleEG18
         55, -- module_index: 11, name: L1_SingleEG26
         57, -- module_index: 12, name: L1_SingleEG30
         59, -- module_index: 13, name: L1_SingleEG34
         60, -- module_index: 14, name: L1_SingleEG36
         61, -- module_index: 15, name: L1_SingleEG38
         62, -- module_index: 16, name: L1_SingleEG40
         78, -- module_index: 17, name: L1_SingleIsoEG18er2p1
         80, -- module_index: 18, name: L1_SingleIsoEG22er2p1
         82, -- module_index: 19, name: L1_SingleIsoEG26er2p1
         84, -- module_index: 20, name: L1_SingleIsoEG30er2p1
         86, -- module_index: 21, name: L1_SingleIsoEG34er2p1
        135, -- module_index: 22, name: L1_SingleJet120
        138, -- module_index: 23, name: L1_SingleJet160
        141, -- module_index: 24, name: L1_SingleJet200
        145, -- module_index: 25, name: L1_SingleJet60_HFm
        110, -- module_index: 26, name: L1_SingleTau20
         91, -- module_index: 27, name: L1_DoubleEG_18_17
         95, -- module_index: 28, name: L1_DoubleEG_22_15
         99, -- module_index: 29, name: L1_DoubleEG_25_13
        116, -- module_index: 30, name: L1_DoubleIsoTau28er2p1
        120, -- module_index: 31, name: L1_DoubleIsoTau34er2p1
        155, -- module_index: 32, name: L1_DoubleJet112er3p0
        114, -- module_index: 33, name: L1_DoubleTau50er2p1
          5, -- module_index: 34, name: L1_SingleMu0_BMTF
         13, -- module_index: 35, name: L1_SingleMu12_LowQ_BMTF
         19, -- module_index: 36, name: L1_SingleMu22
         29, -- module_index: 37, name: L1_SingleMu22er2p1
          0, -- module_index: 38, name: L1_SingleMuCosmics
        411, -- module_index: 39, name: L1_Mu8_HTT150er
         34, -- module_index: 40, name: L1_DoubleMu_13_6
        391, -- module_index: 41, name: L1_DoubleMu7_EG7
        361, -- module_index: 42, name: L1_DoubleMu7_SQ_EG7
         40, -- module_index: 43, name: L1_TripleMu_5_0_0
        375, -- module_index: 44, name: L1_TripleMu_5_0_0_DoubleMu_5_0_OS_Mass_Max17
        378, -- module_index: 45, name: L1_DoubleMu4p5_SQ_OS_dR_Max1p2
        160, -- module_index: 46, name: L1_QuadJet40er3p0
        300, -- module_index: 47, name: L1_DoubleJet_100_35_DoubleJet35_Mass_Min620
        429, -- module_index: 48, name: L1_Mu3_JetC60_dEta_Max0p4_dPhi_Max0p4
        276, -- module_index: 49, name: L1_Mu10er2p3_Jet32er2p3_dR_Max0p4_DoubleJet32er2p3_dEta_Max1p6
    others => 0
);

-- ========================================================