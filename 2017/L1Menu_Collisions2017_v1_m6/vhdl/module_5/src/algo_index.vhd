-- ========================================================
-- from VHDL producer:

-- Module ID: 5

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
        201, -- module_index: 4, name: L1_ETM105
        205, -- module_index: 5, name: L1_ETM150
        216, -- module_index: 6, name: L1_ETMHF150
        179, -- module_index: 7, name: L1_HTT320er
        182, -- module_index: 8, name: L1_HTT400er
         51, -- module_index: 9, name: L1_SingleEG10
        406, -- module_index: 10, name: L1_Mu12_EG10
        407, -- module_index: 11, name: L1_Mu20_EG10
        409, -- module_index: 12, name: L1_Mu20_IsoEG6
        264, -- module_index: 13, name: L1_Mu5_IsoEG20
          9, -- module_index: 14, name: L1_SingleMu5
         52, -- module_index: 15, name: L1_SingleEG15
         68, -- module_index: 16, name: L1_SingleIsoEG20
        261, -- module_index: 17, name: L1_Mu23_EG10
        404, -- module_index: 18, name: L1_Mu5_EG20
         10, -- module_index: 19, name: L1_SingleMu7
        408, -- module_index: 20, name: L1_MU20_EG15
         67, -- module_index: 21, name: L1_SingleIsoEG18
        405, -- module_index: 22, name: L1_Mu5_IsoEG18
        262, -- module_index: 23, name: L1_Mu23_IsoEG10
        266, -- module_index: 24, name: L1_Mu7_IsoEG20
        267, -- module_index: 25, name: L1_Mu7_IsoEG23
        265, -- module_index: 26, name: L1_Mu7_EG23
        263, -- module_index: 27, name: L1_Mu5_EG23
        260, -- module_index: 28, name: L1_Mu20_EG17
         18, -- module_index: 29, name: L1_SingleMu20
        403, -- module_index: 30, name: L1_Mu5_EG15
        154, -- module_index: 31, name: L1_DoubleJet100er3p0
        153, -- module_index: 32, name: L1_DoubleJet80er3p0
        297, -- module_index: 33, name: L1_TripleEG_Iso20_10_5
         12, -- module_index: 34, name: L1_SingleMu11_LowQ
         26, -- module_index: 35, name: L1_SingleMu16er2p1
         28, -- module_index: 36, name: L1_SingleMu20er2p1
        306, -- module_index: 37, name: L1_Mu16er2p1_Tau20er2p1
        310, -- module_index: 38, name: L1_Mu18er2p1_IsoTau26er2p1
        309, -- module_index: 39, name: L1_Mu18er2p1_Tau24er2p1
         27, -- module_index: 40, name: L1_SingleMu18er2p1
        307, -- module_index: 41, name: L1_Mu16er2p1_Tau24er2p1
        311, -- module_index: 42, name: L1_Mu20er2p1_IsoTau26er2p1
        308, -- module_index: 43, name: L1_Mu18er2p1_Tau20er2p1
         32, -- module_index: 44, name: L1_DoubleMu_12_5
        332, -- module_index: 45, name: L1_DoubleMu_15_7_SQ
        333, -- module_index: 46, name: L1_DoubleMu_15_7_SQ_Mass_Min4
        372, -- module_index: 47, name: L1_DoubleMu4_SQ_OS_dR_Max1p2
        379, -- module_index: 48, name: L1_TripleMu_5_3_0_DoubleMu_5_3_OS_Mass_Max17
        299, -- module_index: 49, name: L1_DoubleJet_100_30_DoubleJet30_Mass_Min620
        298, -- module_index: 50, name: L1_DoubleJet_90_30_DoubleJet30_Mass_Min620
        428, -- module_index: 51, name: L1_Mu3_JetC16_dEta_Max0p4_dPhi_Max0p4
        253, -- module_index: 52, name: L1_IsoEG30er2p1_Jet34er3p0_dR_Min0p3
    others => 0
);

-- ========================================================