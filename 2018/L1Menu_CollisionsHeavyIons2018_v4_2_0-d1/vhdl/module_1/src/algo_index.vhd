-- ========================================================
-- from VHDL producer:

-- Module ID: 1

-- Name of L1 Trigger Menu:
-- L1Menu_CollisionsHeavyIons2018_v4_2_0

-- Unique ID of L1 Trigger Menu:
-- 18def6b5-725e-4ccd-bd48-aa6c63158cc8

-- Unique ID of firmware implementation:
-- d9e210d6-5dc9-44d5-a572-f85783174c8f

-- Scale set:
-- scales_2018_08_07

-- VHDL producer version
-- v2.5.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        176, -- module_index: 0, name: L1_Centrality_Saturation
        122, -- module_index: 1, name: L1_FirstBunchAfterTrain
        121, -- module_index: 2, name: L1_LastBunchInTrain
        123, -- module_index: 3, name: L1_FirstBunchBeforeTrain
        119, -- module_index: 4, name: L1_FirstBunchInTrain
        127, -- module_index: 5, name: L1_FirstCollisionInOrbit
        126, -- module_index: 6, name: L1_FirstCollisionInTrain
        118, -- module_index: 7, name: L1_IsolatedBunch
        125, -- module_index: 8, name: L1_LastCollisionInTrain
        120, -- module_index: 9, name: L1_SecondBunchInTrain
        124, -- module_index: 10, name: L1_SecondLastBunchInTrain
         91, -- module_index: 11, name: L1_TOTEM_1
         92, -- module_index: 12, name: L1_TOTEM_2
         93, -- module_index: 13, name: L1_TOTEM_3
         94, -- module_index: 14, name: L1_TOTEM_4
        117, -- module_index: 15, name: L1_UnpairedBunchBptxMinus
        116, -- module_index: 16, name: L1_UnpairedBunchBptxPlus
         95, -- module_index: 17, name: L1_ZDCM
         97, -- module_index: 18, name: L1_ZDCM_BptxAND
        104, -- module_index: 19, name: L1_ZDC_AND_OR_MinimumBiasHF2_AND_BptxAND
         99, -- module_index: 20, name: L1_ZDCM_ZDCP_BptxAND
        103, -- module_index: 21, name: L1_ZDC_AND_OR_MinimumBiasHF1_OR_BptxAND
        154, -- module_index: 22, name: L1_MinimumBiasHF1_AND_BptxAND
        165, -- module_index: 23, name: L1_MinimumBiasHF2_OR_BptxAND
        160, -- module_index: 24, name: L1_NotMinimumBiasHF1_OR_BptxAND
        100, -- module_index: 25, name: L1_ZDC_OR_OR_MinimumBiasHF1_OR_BptxAND
        105, -- module_index: 26, name: L1_ZDC_AND_OR_MinimumBiasHF2_OR_BptxAND
        164, -- module_index: 27, name: L1_MinimumBiasHF2_AND_BptxAND
        170, -- module_index: 28, name: L1_NotMinimumBiasHF2_OR_BptxAND
        167, -- module_index: 29, name: L1_NotMinimumBiasHF2_AND_BptxAND
        101, -- module_index: 30, name: L1_ZDC_OR_OR_MinimumBiasHF2_OR_BptxAND
        140, -- module_index: 31, name: L1_MinimumBiasHF0_AND_BptxAND
        143, -- module_index: 32, name: L1_MinimumBiasHF0_OR_BptxAND
        156, -- module_index: 33, name: L1_MinimumBiasHF1_XOR_BptxAND
        141, -- module_index: 34, name: L1_NotMinimumBiasHF0_AND_BptxAND
        102, -- module_index: 35, name: L1_ZDC_AND_OR_MinimumBiasHF1_AND_BptxAND
         98, -- module_index: 36, name: L1_ZDCP_BptxAND
        142, -- module_index: 37, name: L1_NotMinimumBiasHF0_OR_BptxAND
        155, -- module_index: 38, name: L1_MinimumBiasHF1_OR_BptxAND
        408, -- module_index: 39, name: L1_ETTAsym50
        410, -- module_index: 40, name: L1_ETTAsym70
         69, -- module_index: 41, name: L1_HTT120er
         71, -- module_index: 42, name: L1_HTT280er
        152, -- module_index: 43, name: L1_MinimumBiasHF1_AND
        153, -- module_index: 44, name: L1_MinimumBiasHF1_OR
        159, -- module_index: 45, name: L1_NotMinimumBiasHF1_OR
        158, -- module_index: 46, name: L1_NotMinimumBiasHF1_AND
        162, -- module_index: 47, name: L1_MinimumBiasHF2_AND
        434, -- module_index: 48, name: L1_ETT5_NotMinimumBiasHF2_OR
        166, -- module_index: 49, name: L1_NotMinimumBiasHF2_AND
        163, -- module_index: 50, name: L1_MinimumBiasHF2_OR
        169, -- module_index: 51, name: L1_NotMinimumBiasHF2_OR
        473, -- module_index: 52, name: L1_ETT40_NotETT95_BptxAND
        476, -- module_index: 53, name: L1_ETT55_NotETT130_BptxAND
        442, -- module_index: 54, name: L1_ETT8_ETTAsym50_MinimumBiasHF1_OR_BptxAND
        443, -- module_index: 55, name: L1_ETT8_ETTAsym55_MinimumBiasHF1_OR_BptxAND
        445, -- module_index: 56, name: L1_ETT8_ETTAsym65_MinimumBiasHF1_OR_BptxAND
        348, -- module_index: 57, name: L1_SingleEG15_BptxAND
        390, -- module_index: 58, name: L1_SingleEG15_SingleJet56_MidEta2p7_BptxAND
        388, -- module_index: 59, name: L1_SingleEG15_SingleJet28_MidEta2p7_BptxAND
        217, -- module_index: 60, name: L1_SingleMuOpen_SingleEG15_BptxAND
        227, -- module_index: 61, name: L1_SingleMu7_SingleEG15_BptxAND
        222, -- module_index: 62, name: L1_SingleMu5_SingleEG15_BptxAND
        391, -- module_index: 63, name: L1_SingleEG15_SingleJet60_MidEta2p7_BptxAND
        180, -- module_index: 64, name: L1_SingleMuOpen_BptxAND
        389, -- module_index: 65, name: L1_SingleEG15_SingleJet44_MidEta2p7_BptxAND
         34, -- module_index: 66, name: L1_SingleEG3
        344, -- module_index: 67, name: L1_SingleEG3_BptxAND
         35, -- module_index: 68, name: L1_SingleEG5
        345, -- module_index: 69, name: L1_SingleEG5_BptxAND
        373, -- module_index: 70, name: L1_SingleEG5_SingleJet28_MidEta2p7_BptxAND
        375, -- module_index: 71, name: L1_SingleEG5_SingleJet40_MidEta2p7_BptxAND
        374, -- module_index: 72, name: L1_SingleEG5_SingleJet32_MidEta2p7_BptxAND
         38, -- module_index: 73, name: L1_SingleEG8er2p5
        354, -- module_index: 74, name: L1_SingleIsoEG12_BptxAND
        355, -- module_index: 75, name: L1_SingleIsoEG15_BptxAND
        356, -- module_index: 76, name: L1_SingleIsoEG21_BptxAND
        353, -- module_index: 77, name: L1_SingleIsoEG7_BptxAND
         57, -- module_index: 78, name: L1_SingleJet120er2p5
         54, -- module_index: 79, name: L1_SingleJet200
        262, -- module_index: 80, name: L1_SingleJet28_BptxAND
         49, -- module_index: 81, name: L1_SingleJet35
        265, -- module_index: 82, name: L1_SingleJet40_BptxAND
        268, -- module_index: 83, name: L1_SingleJet56_BptxAND
        270, -- module_index: 84, name: L1_SingleJet64_BptxAND
        259, -- module_index: 85, name: L1_SingleJet8_BptxAND
        396, -- module_index: 86, name: L1_DoubleEG2_BptxAND
        276, -- module_index: 87, name: L1_SingleJet28_FWD_BptxAND
         63, -- module_index: 88, name: L1_SingleJet60_FWD3p0
        181, -- module_index: 89, name: L1_SingleMu0_BptxAND
         21, -- module_index: 90, name: L1_SingleMu22_BMTF
        190, -- module_index: 91, name: L1_SingleMu3_Centrality_70_100_BptxAND
        192, -- module_index: 92, name: L1_SingleMu3_Centrality_80_100_BptxAND
        189, -- module_index: 93, name: L1_SingleMuOpen_Centrality_70_100_BptxAND
        191, -- module_index: 94, name: L1_SingleMuOpen_Centrality_80_100_BptxAND
          4, -- module_index: 95, name: L1_SingleMuOpen
        205, -- module_index: 96, name: L1_SingleMuOpen_Centrality_70_100_MinimumBiasHF1_AND_BptxAND
        206, -- module_index: 97, name: L1_SingleMuOpen_Centrality_80_100_MinimumBiasHF1_AND_BptxAND
        218, -- module_index: 98, name: L1_SingleMu3_SingleEG20_BptxAND
        213, -- module_index: 99, name: L1_SingleMu3_SingleJet32_MidEta2p7_BptxAND
        214, -- module_index: 100, name: L1_SingleMu3_SingleJet40_MidEta2p7_BptxAND
        220, -- module_index: 101, name: L1_SingleMu5_SingleEG10_BptxAND
        208, -- module_index: 102, name: L1_SingleMuOpen_SingleJet28_MidEta2p7_BptxAND
        209, -- module_index: 103, name: L1_SingleMuOpen_SingleJet44_MidEta2p7_BptxAND
        210, -- module_index: 104, name: L1_SingleMuOpen_SingleJet56_MidEta2p7_BptxAND
        211, -- module_index: 105, name: L1_SingleMuOpen_SingleJet64_MidEta2p7_BptxAND
        235, -- module_index: 106, name: L1_DoubleMu0_BptxAND
        238, -- module_index: 107, name: L1_DoubleMuOpen_MaxDr2p0_BptxAND
        386, -- module_index: 108, name: L1_SingleEG12_SingleJet56_MidEta2p7_MinDr0p4_BptxAND
        378, -- module_index: 109, name: L1_SingleEG7_SingleJet28_MidEta2p7_MinDr0p4_BptxAND
    others => 0
);

-- ========================================================