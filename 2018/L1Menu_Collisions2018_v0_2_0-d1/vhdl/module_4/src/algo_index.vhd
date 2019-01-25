-- ========================================================
-- from VHDL producer:

-- Module ID: 4

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
        472, -- module_index: 0, name: L1_BPTX_BeamGas_B2_VME
        483, -- module_index: 1, name: L1_BPTX_RefAND_VME
        511, -- module_index: 2, name: L1_HCAL_LaserMon_Veto
        502, -- module_index: 3, name: L1_TOTEM_3
        205, -- module_index: 4, name: L1_ETMHF150
        173, -- module_index: 5, name: L1_HTT255er
        182, -- module_index: 6, name: L1_HTT500er
         69, -- module_index: 7, name: L1_SingleEG34er2p5
         78, -- module_index: 8, name: L1_SingleEG42er2p5
         86, -- module_index: 9, name: L1_SingleIsoEG24er2p1
         92, -- module_index: 10, name: L1_SingleIsoEG28er2p5
         94, -- module_index: 11, name: L1_SingleIsoEG32er2p5
        509, -- module_index: 12, name: L1_SingleJet12erHE
        139, -- module_index: 13, name: L1_SingleJet160
        142, -- module_index: 14, name: L1_SingleJet200
        150, -- module_index: 15, name: L1_SingleJet60_HFm
        119, -- module_index: 16, name: L1_SingleTau130er2p1
        110, -- module_index: 17, name: L1_DoubleEG_25_14_er2p5
        125, -- module_index: 18, name: L1_DoubleIsoTau32er2p1
        157, -- module_index: 19, name: L1_DoubleJet120er2p7
        122, -- module_index: 20, name: L1_DoubleTau70er2p1
        113, -- module_index: 21, name: L1_TripleEG16er2p5
         12, -- module_index: 22, name: L1_SingleMu0_LowQ
         14, -- module_index: 23, name: L1_SingleMu12_LowQ_OMTF
         22, -- module_index: 24, name: L1_SingleMu22_EMTF
         10, -- module_index: 25, name: L1_SingleMu7
        242, -- module_index: 26, name: L1_Mu7_LooseIsoEG23er2p5
        240, -- module_index: 27, name: L1_Mu7_EG23er2p5
        241, -- module_index: 28, name: L1_Mu7_LooseIsoEG20er2p5
         30, -- module_index: 29, name: L1_DoubleMu0
        392, -- module_index: 30, name: L1_DoubleMu10_SQ
        394, -- module_index: 31, name: L1_DoubleMu4p5er2p0_SQ_OS
        333, -- module_index: 32, name: L1_DoubleMu_15_7_SQ
        162, -- module_index: 33, name: L1_TripleJet_98_83_71_VBF
         40, -- module_index: 34, name: L1_TripleMu3
         43, -- module_index: 35, name: L1_TripleMu_5_3_3
        431, -- module_index: 36, name: L1_ETM75_Jet60_dPhi_Min0p4
         97, -- module_index: 37, name: L1_IsoEG32er2p5_Mt40
        251, -- module_index: 38, name: L1_DoubleJet100er2p3_dEta_Max1p6
        375, -- module_index: 39, name: L1_DoubleMu0er1p5_SQ_OS_dR_Max1p4
        376, -- module_index: 40, name: L1_DoubleMu4p5er2p0_SQ_OS_Mass7to18
        387, -- module_index: 41, name: L1_TripleMu_5SQ_3SQ_0OQ_DoubleMu_5_3_SQ_OS_Mass_Max9
        388, -- module_index: 42, name: L1_TripleMu_5SQ_3SQ_0_DoubleMu_5_3_SQ_OS_Mass_Max9
        216, -- module_index: 43, name: L1_DoubleJet30er2p5_Mass_Min300_dEta_Max1p5
        294, -- module_index: 44, name: L1_LooseIsoEG22er2p1_IsoTau26er2p1_dR_Min0p3
        445, -- module_index: 45, name: L1_Mu3_Jet120er2p7_dEta_Max0p4_dPhi_Max0p4
        253, -- module_index: 46, name: L1_Mu10er2p3_Jet32er2p3_dR_Max0p4_DoubleJet32er2p3_dEta_Max1p6
    others => 0
);

-- ========================================================