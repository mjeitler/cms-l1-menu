-- ========================================================
-- from VHDL producer:

-- Module ID: 1

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v2_0_0

-- Unique ID of L1 Trigger Menu:
-- 669da877-bfe2-4b02-842e-13ee40f3e064

-- Unique ID of firmware implementation:
-- 162b5874-65c5-446b-9c69-261e1dde5400

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.4.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        363, -- module_index: 0, name: L1_DoubleJet35_Mass_Min450_IsoTau45_RmOvlp
        125, -- module_index: 1, name: L1_Mu3_Jet120er2p5_dR_Max0p8
        124, -- module_index: 2, name: L1_Mu3_Jet80er2p5_dR_Max0p4
        235, -- module_index: 3, name: L1_LooseIsoEG28er2p1_Jet34er2p5_dR_Min0p3
        350, -- module_index: 4, name: L1_DoubleJet30er2p5_Mass_Min250_dEta_Max1p5
        357, -- module_index: 5, name: L1_DoubleJet_110_35_DoubleJet35_Mass_Min620
        278, -- module_index: 6, name: L1_DoubleIsoTau28er2p1_Mass_Max90
         82, -- module_index: 7, name: L1_TripleMu_5_3p5_2p5_OQ_DoubleMu_5_2p5_OQ_OS_Mass_5to17
         50, -- module_index: 8, name: L1_DoubleMu_15_7_Mass_Min1
         53, -- module_index: 9, name: L1_DoubleMu0er2p0_SQ_dR_Max1p4
        197, -- module_index: 10, name: L1_IsoEG32er2p5_Mt40
        199, -- module_index: 11, name: L1_IsoEG32er2p5_Mt48
         90, -- module_index: 12, name: L1_QuadMu0_SQ
         71, -- module_index: 13, name: L1_TripleMu0_OQ
         74, -- module_index: 14, name: L1_TripleMu3
         78, -- module_index: 15, name: L1_TripleMu_5_3_3
         80, -- module_index: 16, name: L1_TripleMu_5_5_3
         42, -- module_index: 17, name: L1_DoubleMu0_SQ_OS
         60, -- module_index: 18, name: L1_DoubleMu4_SQ_OS
         46, -- module_index: 19, name: L1_DoubleMu_12_5
        373, -- module_index: 20, name: L1_TripleJet_100_80_70_DoubleJet_80_70_er2p5
        281, -- module_index: 21, name: L1_Mu18er2p1_Tau24er2p1
        282, -- module_index: 22, name: L1_Mu18er2p1_Tau26er2p1
         96, -- module_index: 23, name: L1_Mu5_EG23er2p5
        102, -- module_index: 24, name: L1_Mu7_LooseIsoEG23er2p5
         98, -- module_index: 25, name: L1_Mu7_EG23er2p5
         97, -- module_index: 26, name: L1_Mu7_EG20er2p5
         12, -- module_index: 27, name: L1_SingleMu7
        101, -- module_index: 28, name: L1_Mu7_LooseIsoEG20er2p5
        100, -- module_index: 29, name: L1_Mu5_LooseIsoEG20er2p5
         10, -- module_index: 30, name: L1_SingleMu5
         17, -- module_index: 31, name: L1_SingleMu18
         21, -- module_index: 32, name: L1_SingleMu22_OMTF
         27, -- module_index: 33, name: L1_SingleMu8er1p5
          2, -- module_index: 34, name: L1_SingleMuCosmics_OMTF
        206, -- module_index: 35, name: L1_DoubleEG_20_10_er2p5
        208, -- module_index: 36, name: L1_DoubleEG_25_12_er2p5
        214, -- module_index: 37, name: L1_DoubleEG_LooseIso22_12_er2p5
        341, -- module_index: 38, name: L1_DoubleJet100er2p5
        218, -- module_index: 39, name: L1_DoubleLooseIsoEG24er2p1
        324, -- module_index: 40, name: L1_SingleJet35_FWD3p0
        332, -- module_index: 41, name: L1_SingleJet140er2p5_ETMHF70
        334, -- module_index: 42, name: L1_SingleJet140er2p5_ETMHF90
        165, -- module_index: 43, name: L1_SingleEG28er2p1
        169, -- module_index: 44, name: L1_SingleEG38er2p5
        173, -- module_index: 45, name: L1_SingleEG50
        187, -- module_index: 46, name: L1_SingleIsoEG26er1p5
        189, -- module_index: 47, name: L1_SingleIsoEG28er2p5
        196, -- module_index: 48, name: L1_SingleIsoEG34er2p5
        313, -- module_index: 49, name: L1_SingleJet180
        310, -- module_index: 50, name: L1_SingleJet60
        175, -- module_index: 51, name: L1_SingleLooseIsoEG26er2p5
        270, -- module_index: 52, name: L1_SingleTau120er2p1
        404, -- module_index: 53, name: L1_HTT360er
        488, -- module_index: 54, name: L1_BPTX_AND_Ref4_VME
        482, -- module_index: 55, name: L1_BPTX_NotOR_VME
        479, -- module_index: 56, name: L1_FirstCollisionInTrain
        504, -- module_index: 57, name: L1_TOTEM_2
    others => 0
);

-- ========================================================