-- ========================================================
-- from VHDL producer:

-- Module ID: 3

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_v3

-- Unique ID of L1 Trigger Menu:
-- 03973478-d11d-4cea-a950-3da1ab12af5e

-- Unique ID of firmware implementation:
-- 6a453f90-24a2-4a4d-86e9-c1951413e927

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.2.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        470, -- module_index: 0, name: L1_BPTX_AND_Ref3_VME
        456, -- module_index: 1, name: L1_BPTX_BeamGas_B1_VME
        481, -- module_index: 2, name: L1_BPTX_OR_NIM
        473, -- module_index: 3, name: L1_FirstCollisionInOrbit
        463, -- module_index: 4, name: L1_UnpairedBunchBptxPlus
        185, -- module_index: 5, name: L1_ETM75
        166, -- module_index: 6, name: L1_HTT160er
        177, -- module_index: 7, name: L1_HTT400er
        179, -- module_index: 8, name: L1_HTT500er
         53, -- module_index: 9, name: L1_SingleEG18
         54, -- module_index: 10, name: L1_SingleEG24
         55, -- module_index: 11, name: L1_SingleEG26
         56, -- module_index: 12, name: L1_SingleEG28
         57, -- module_index: 13, name: L1_SingleEG30
         58, -- module_index: 14, name: L1_SingleEG32
         59, -- module_index: 15, name: L1_SingleEG34
         60, -- module_index: 16, name: L1_SingleEG36
         61, -- module_index: 17, name: L1_SingleEG38
         62, -- module_index: 18, name: L1_SingleEG40
         50, -- module_index: 19, name: L1_SingleEG5
         83, -- module_index: 20, name: L1_SingleIsoEG18er2p1
         71, -- module_index: 21, name: L1_SingleIsoEG22
         86, -- module_index: 22, name: L1_SingleIsoEG24er2p1
         74, -- module_index: 23, name: L1_SingleIsoEG28
         89, -- module_index: 24, name: L1_SingleIsoEG30er2p1
         91, -- module_index: 25, name: L1_SingleIsoEG33er2p1
         78, -- module_index: 26, name: L1_SingleIsoEG35
         94, -- module_index: 27, name: L1_SingleIsoEG36er2p1
         95, -- module_index: 28, name: L1_SingleIsoEG38er2p1
        136, -- module_index: 29, name: L1_SingleJet120
        131, -- module_index: 30, name: L1_SingleJet16
        141, -- module_index: 31, name: L1_SingleJet180
        133, -- module_index: 32, name: L1_SingleJet35
        150, -- module_index: 33, name: L1_SingleJet60_HFm
        118, -- module_index: 34, name: L1_SingleTau120er2p1
        115, -- module_index: 35, name: L1_SingleTau20
        101, -- module_index: 36, name: L1_DoubleEG_18_17
        105, -- module_index: 37, name: L1_DoubleEG_22_15
        109, -- module_index: 38, name: L1_DoubleEG_25_13
        123, -- module_index: 39, name: L1_DoubleIsoTau28er2p1
        127, -- module_index: 40, name: L1_DoubleIsoTau34er2p1
        155, -- module_index: 41, name: L1_DoubleJet100er3p0
        151, -- module_index: 42, name: L1_DoubleJet40er3p0
        112, -- module_index: 43, name: L1_DoubleLooseIsoEG24er2p1
        143, -- module_index: 44, name: L1_SingleJet35_FWD
        114, -- module_index: 45, name: L1_TripleEG_18_17_8
          6, -- module_index: 46, name: L1_SingleMu0_OMTF
         15, -- module_index: 47, name: L1_SingleMu12_LowQ_EMTF
         19, -- module_index: 48, name: L1_SingleMu22
         21, -- module_index: 49, name: L1_SingleMu22_OMTF
          8, -- module_index: 50, name: L1_SingleMu3
        366, -- module_index: 51, name: L1_Mu3_Jet30er2p5
          2, -- module_index: 52, name: L1_SingleMuCosmics_BMTF
        411, -- module_index: 53, name: L1_Mu8_HTT150er
         37, -- module_index: 54, name: L1_DoubleMu18er2p1
        388, -- module_index: 55, name: L1_DoubleMu4p5_SQ_OS
        384, -- module_index: 56, name: L1_DoubleMu8_SQ
         34, -- module_index: 57, name: L1_DoubleMu_13_6
        328, -- module_index: 58, name: L1_DoubleMu_15_7_SQ
        329, -- module_index: 59, name: L1_DoubleMu_15_7_SQ_Mass_Min4
        245, -- module_index: 60, name: L1_DoubleJet100er2p3_dEta_Max1p6
        377, -- module_index: 61, name: L1_DoubleMu4p5_SQ_OS_dR_Max1p2
        492, -- module_index: 62, name: L1_CDC_3_TOP120_DPHI2p618_3p142
        498, -- module_index: 63, name: L1_CDC_3_er1p6_TOP120_DPHI2p094_3p142
        504, -- module_index: 64, name: L1_CDC_SingleMu_3_er1p2_TOP120_DPHI2p618_3p142
        510, -- module_index: 65, name: L1_CDCp1_3_er2p1_TOP120_DPHI2p618_3p142
        415, -- module_index: 66, name: L1_QuadJet36er3p0_Tau52
        213, -- module_index: 67, name: L1_DoubleJet30_Mass_Min340_dEta_Max1p5
        288, -- module_index: 68, name: L1_LooseIsoEG22er2p1_IsoTau26er2p1_dR_Min0p3
        430, -- module_index: 69, name: L1_Mu3_JetC120_dEta_Max0p4_dPhi_Max0p4
        286, -- module_index: 70, name: L1_DoubleJet35_rmovlp_IsoTau45_Mass_Min450
    others => 0
);

-- ========================================================