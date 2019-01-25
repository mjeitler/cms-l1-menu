-- ========================================================
-- from VHDL producer:

-- Module ID: 1

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_dev_r6_woCDC

-- Unique ID of L1 Trigger Menu:
-- 769ff1e5-53d7-4e3d-813c-259f36a208a0

-- Unique ID of firmware implementation:
-- f497b2a1-149a-4580-85bd-c6a15234ad4a

-- Scale set:
-- scales_2017_05_22

-- VHDL producer version
-- v2.0.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        462, -- module_index: 0, name: L1_BPTX_AND_Ref1_VME
        468, -- module_index: 1, name: L1_BPTX_B2NotB1_NIM
        469, -- module_index: 2, name: L1_BPTX_NotOR_NIM
        460, -- module_index: 3, name: L1_BptxMinus
        452, -- module_index: 4, name: L1_BptxXOR
        459, -- module_index: 5, name: L1_BptxPlus
        203, -- module_index: 6, name: L1_ETM115
        192, -- module_index: 7, name: L1_ETM50
        170, -- module_index: 8, name: L1_HTT120er
        180, -- module_index: 9, name: L1_HTT340er
        183, -- module_index: 10, name: L1_HTT450er
         53, -- module_index: 11, name: L1_SingleEG18
         55, -- module_index: 12, name: L1_SingleEG26
         57, -- module_index: 13, name: L1_SingleEG30
         59, -- module_index: 14, name: L1_SingleEG34
         60, -- module_index: 15, name: L1_SingleEG36
         61, -- module_index: 16, name: L1_SingleEG38
         62, -- module_index: 17, name: L1_SingleEG40
         78, -- module_index: 18, name: L1_SingleIsoEG18er2p1
         80, -- module_index: 19, name: L1_SingleIsoEG22er2p1
         82, -- module_index: 20, name: L1_SingleIsoEG26er2p1
         84, -- module_index: 21, name: L1_SingleIsoEG30er2p1
         86, -- module_index: 22, name: L1_SingleIsoEG34er2p1
        135, -- module_index: 23, name: L1_SingleJet120
        138, -- module_index: 24, name: L1_SingleJet160
        141, -- module_index: 25, name: L1_SingleJet200
        149, -- module_index: 26, name: L1_SingleJet60_HFm
        110, -- module_index: 27, name: L1_SingleTau20
         91, -- module_index: 28, name: L1_DoubleEG_18_17
         95, -- module_index: 29, name: L1_DoubleEG_22_15
         99, -- module_index: 30, name: L1_DoubleEG_25_13
        101, -- module_index: 31, name: L1_DoubleIsoEG22er2p1
        119, -- module_index: 32, name: L1_DoubleIsoTau33er2p1
        154, -- module_index: 33, name: L1_DoubleJet100er3p0
        153, -- module_index: 34, name: L1_DoubleJet80er3p0
        143, -- module_index: 35, name: L1_SingleJet60_FWD
          5, -- module_index: 36, name: L1_SingleMu0_BMTF
         13, -- module_index: 37, name: L1_SingleMu12_LowQ_BMTF
         19, -- module_index: 38, name: L1_SingleMu22
         29, -- module_index: 39, name: L1_SingleMu22er2p1
        295, -- module_index: 40, name: L1_Mu22er2p1_IsoTau28er2p1
        300, -- module_index: 41, name: L1_Mu22er2p1_IsoTau35er2p1
        292, -- module_index: 42, name: L1_Mu22er2p1_Tau70er2p1
        298, -- module_index: 43, name: L1_Mu22er2p1_IsoTau33er2p1
        302, -- module_index: 44, name: L1_Mu22er2p1_IsoTau38er2p1
        301, -- module_index: 45, name: L1_Mu22er2p1_IsoTau36er2p1
        291, -- module_index: 46, name: L1_Mu22er2p1_Tau50er2p1
        299, -- module_index: 47, name: L1_Mu22er2p1_IsoTau34er2p1
        296, -- module_index: 48, name: L1_Mu22er2p1_IsoTau30er2p1
        297, -- module_index: 49, name: L1_Mu22er2p1_IsoTau32er2p1
         38, -- module_index: 50, name: L1_DoubleMu22er2p1
        382, -- module_index: 51, name: L1_DoubleMu5_SQ_OS
         33, -- module_index: 52, name: L1_DoubleMu_12_8
        365, -- module_index: 53, name: L1_DoubleMu4_OS_EG12
        368, -- module_index: 54, name: L1_DoubleMu5_OS_EG12
         41, -- module_index: 55, name: L1_TripleMu_4_4_4
        383, -- module_index: 56, name: L1_TripleMu_5_3p5_2p5
        371, -- module_index: 57, name: L1_TripleMu_5_4_2p5_DoubleMu_5_2p5_OS_Mass_5to17
        370, -- module_index: 58, name: L1_TripleMu_5_3p5_2p5_DoubleMu_5_2p5_OS_Mass_5to17
        361, -- module_index: 59, name: L1_DoubleMu4p5er2p0_SQ_OS_Mass7to18
        161, -- module_index: 60, name: L1_QuadJet50er3p0
        286, -- module_index: 61, name: L1_IsoEG22er2p1_IsoTau26er2p1_dR_Min0p3
        280, -- module_index: 62, name: L1_DoubleJet_100_35_DoubleJet35_Mass_Min620
        281, -- module_index: 63, name: L1_DoubleJet_110_35_DoubleJet35_Mass_Min620
        257, -- module_index: 64, name: L1_Mu12er2p3_Jet40er2p3_dR_Max0p4_DoubleJet40er2p3_dEta_Max1p6
    others => 0
);

-- ========================================================