-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_v3

-- Unique ID of L1 Trigger Menu:
-- 03973478-d11d-4cea-a950-3da1ab12af5e

-- Unique ID of firmware implementation:
-- bf4bfc65-9d4c-4074-8054-cefe91c0eba5

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.1.1

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        478, -- module_index: 0, name: L1_BPTX_AND_NIM
        466, -- module_index: 1, name: L1_BPTX_AND_Ref2_NIM
        474, -- module_index: 2, name: L1_BPTX_AND_Ref4_VME
        479, -- module_index: 3, name: L1_BPTX_B1_NIM
        480, -- module_index: 4, name: L1_BPTX_B2_NIM
        457, -- module_index: 5, name: L1_BPTX_BeamGas_B2_VME
        455, -- module_index: 6, name: L1_BPTX_BeamGas_Ref2_VME
        465, -- module_index: 7, name: L1_BPTX_NotOR_VME
        471, -- module_index: 8, name: L1_BPTX_OR_Ref3_VME
        472, -- module_index: 9, name: L1_BPTX_RefAND_VME
        461, -- module_index: 10, name: L1_BptxOR
          1, -- module_index: 11, name: L1_SingleMuOpen
         55, -- module_index: 12, name: L1_SingleEG26
         57, -- module_index: 13, name: L1_SingleEG30
         59, -- module_index: 14, name: L1_SingleEG34
         67, -- module_index: 15, name: L1_SingleEG36er2p1
         62, -- module_index: 16, name: L1_SingleEG40
         50, -- module_index: 17, name: L1_SingleEG5
         83, -- module_index: 18, name: L1_SingleIsoEG18er2p1
         71, -- module_index: 19, name: L1_SingleIsoEG22
         86, -- module_index: 20, name: L1_SingleIsoEG24er2p1
         74, -- module_index: 21, name: L1_SingleIsoEG28
         89, -- module_index: 22, name: L1_SingleIsoEG30er2p1
         91, -- module_index: 23, name: L1_SingleIsoEG33er2p1
         78, -- module_index: 24, name: L1_SingleIsoEG35
         94, -- module_index: 25, name: L1_SingleIsoEG36er2p1
         95, -- module_index: 26, name: L1_SingleIsoEG38er2p1
        136, -- module_index: 27, name: L1_SingleJet120
        131, -- module_index: 28, name: L1_SingleJet16
        141, -- module_index: 29, name: L1_SingleJet180
        133, -- module_index: 30, name: L1_SingleJet35
        150, -- module_index: 31, name: L1_SingleJet60_HFm
        118, -- module_index: 32, name: L1_SingleTau120er2p1
        115, -- module_index: 33, name: L1_SingleTau20
        431, -- module_index: 34, name: L1_SingleEG2_BptxAND
        207, -- module_index: 35, name: L1_SingleJet20er3p0_NotBptxOR
        209, -- module_index: 36, name: L1_SingleJet43er3p0_NotBptxOR_3BX
        103, -- module_index: 37, name: L1_DoubleEG_22_10
        107, -- module_index: 38, name: L1_DoubleEG_24_17
        273, -- module_index: 39, name: L1_DoubleEG_LooseIso23_10
        125, -- module_index: 40, name: L1_DoubleIsoTau32er2p1
        129, -- module_index: 41, name: L1_DoubleIsoTau36er2p1
        157, -- module_index: 42, name: L1_DoubleJet120er3p0
        154, -- module_index: 43, name: L1_DoubleJet80er3p0
        122, -- module_index: 44, name: L1_DoubleTau70er2p1
        145, -- module_index: 45, name: L1_SingleJet90_FWD
          5, -- module_index: 46, name: L1_SingleMu0_BMTF
         12, -- module_index: 47, name: L1_SingleMu11_LowQ
         16, -- module_index: 48, name: L1_SingleMu16
         22, -- module_index: 49, name: L1_SingleMu22_EMTF
         23, -- module_index: 50, name: L1_SingleMu25
         24, -- module_index: 51, name: L1_SingleMu30
          2, -- module_index: 52, name: L1_SingleMuCosmics_BMTF
        205, -- module_index: 53, name: L1_SingleMuOpen_NotBptxOR
        411, -- module_index: 54, name: L1_Mu8_HTT150er
        390, -- module_index: 55, name: L1_DoubleMu0er1p5_SQ_OS
        387, -- module_index: 56, name: L1_DoubleMu4p5_SQ
        379, -- module_index: 57, name: L1_DoubleMu6_SQ_OS
         33, -- module_index: 58, name: L1_DoubleMu_12_8
         36, -- module_index: 59, name: L1_DoubleMu_15_7
         39, -- module_index: 60, name: L1_TripleMu0
        394, -- module_index: 61, name: L1_TripleMu0_OQ
         41, -- module_index: 62, name: L1_TripleMu_4_4_4
         43, -- module_index: 63, name: L1_TripleMu_5_3_3
        267, -- module_index: 64, name: L1_ETM100_Jet60_dPhi_Min0p4
        416, -- module_index: 65, name: L1_ETM75_Jet60_dPhi_Min0p4
        266, -- module_index: 66, name: L1_ETM90_Jet60_dPhi_Min0p4
        160, -- module_index: 67, name: L1_TripleJet_88_72_56_VBF
         45, -- module_index: 68, name: L1_QuadMu0
         98, -- module_index: 69, name: L1_IsoEG33_Mt44
        425, -- module_index: 70, name: L1_DoubleMu0er1p4_dEta_Max1p8_OS
        246, -- module_index: 71, name: L1_DoubleJet112er2p3_dEta_Max1p6
        371, -- module_index: 72, name: L1_DoubleMu4p5er2p0_SQ_OS_Mass7to18
        493, -- module_index: 73, name: L1_CDC_3_TOP_DPHI2p618_3p142
        499, -- module_index: 74, name: L1_CDC_3_er1p6_TOP120_DPHI2p618_3p142
        505, -- module_index: 75, name: L1_CDC_SingleMu_3_er1p6_TOP120_DPHI2p618_3p142
        382, -- module_index: 76, name: L1_TripleMu_5SQ_3SQ_0OQ_DoubleMu_5_3_SQ_OS_Mass_Max9
        383, -- module_index: 77, name: L1_TripleMu_5SQ_3SQ_0_DoubleMu_5_3_SQ_OS_Mass_Max9
        277, -- module_index: 78, name: L1_DoubleJet_100_30_DoubleJet30_Mass_Min620
        276, -- module_index: 79, name: L1_DoubleJet_90_30_DoubleJet30_Mass_Min620
        214, -- module_index: 80, name: L1_DoubleJet30_Mass_Min360_dEta_Max1p5
        289, -- module_index: 81, name: L1_LooseIsoEG24er2p1_IsoTau27er2p1_dR_Min0p3
        428, -- module_index: 82, name: L1_Mu3_JetC16_dEta_Max0p4_dPhi_Max0p4
    others => 0
);

-- ========================================================