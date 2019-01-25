-- ========================================================
-- from VHDL producer:

-- Module ID: 5

-- Name of L1 Trigger Menu:
-- L1Menu_CollisionsHeavyIons2018_v4_0_0

-- Unique ID of L1 Trigger Menu:
-- b12c51f7-2c74-44b9-b170-21566e834f41

-- Unique ID of firmware implementation:
-- c0a658bc-2cd9-438e-a63d-025076271663

-- Scale set:
-- scales_2018_08_07

-- VHDL producer version
-- v2.5.0

-- External condition assignment
single_ext_i196 <= ext_cond_bx_0(56); -- single_ext_i196
single_ext_i56 <= ext_cond_bx_0(5); -- single_ext_i56
single_ext_i57 <= ext_cond_bx_0(6); -- single_ext_i57
single_ext_i58 <= ext_cond_bx_0(8); -- single_ext_i58
single_ext_i59 <= ext_cond_bx_0(0); -- single_ext_i59
single_ext_i60 <= ext_cond_bx_0(1); -- single_ext_i60
single_ext_i61 <= ext_cond_bx_0(2); -- single_ext_i61
single_ext_i62 <= ext_cond_bx_0(3); -- single_ext_i62
single_ext_i63 <= ext_cond_bx_0(10); -- single_ext_i63
single_ext_i64 <= ext_cond_bx_0(9); -- single_ext_i64
single_ext_i65 <= ext_cond_bx_0(11); -- single_ext_i65
single_ext_i66 <= ext_cond_bx_0(16); -- single_ext_i66
single_ext_i67 <= ext_cond_bx_0(17); -- single_ext_i67
single_ext_i68 <= ext_cond_bx_0(18); -- single_ext_i68
single_ext_i69 <= ext_cond_bx_0(19); -- single_ext_i69
single_ext_i70 <= ext_cond_bx_0(20); -- single_ext_i70
single_ext_i71 <= ext_cond_bx_0(21); -- single_ext_i71
single_ext_i72 <= ext_cond_bx_0(22); -- single_ext_i72
single_ext_i73 <= ext_cond_bx_0(23); -- single_ext_i73
single_ext_i86 <= ext_cond_bx_0(32); -- single_ext_i86
single_ext_i87 <= ext_cond_bx_0(35); -- single_ext_i87
single_ext_i88 <= ext_cond_bx_0(42); -- single_ext_i88
-- Instantiations of muon charge correlations - only once for a certain Bx combination, if there is at least one DoubleMuon, TripleMuon, QuadMuon condition
-- or muon-muon correlation condition.

-- Instantiations of eta and phi conversion to muon scale for calo-muon and muon-esums correlation conditions (used for DETA, DPHI, DR and mass) - once for every calo ObjectType in certain Bx used in correlation conditions

-- Instantiations of pt, eta, phi, cos-phi and sin-phi for correlation conditions (used for DETA, DPHI, DR, mass, overlap_remover and b_tagging) - once for every ObjectType in certain Bx used in correlation conditions

-- Instantiations of differences for correlation conditions (used for DETA, DPHI, DR, mass and b_tagging) - once for correlation conditions with two ObjectTypes in certain Bxs

-- Instantiations of cosh-deta and cos-dphi LUTs for correlation conditions (used for mass and overlap_remover) - once for correlation conditions with two ObjectTypes in certain Bxs

-- Instantiations of conditions
single_eg_i19_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"0064", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, eg_bx_0,
        single_eg_i19);


single_jet_i29_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"00B4", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"00BA", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, jet_bx_0,
        single_jet_i29);


single_jet_i30_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"00B4", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0072", X"0000", X"0000", X"0000"), (X"0045", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, jet_bx_0,
        single_jet_i30);


single_jet_i77_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0078", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0039", X"0000", X"0000", X"0000"), (X"00C6", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, jet_bx_0,
        single_jet_i77);


single_jet_i79_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0168", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0039", X"0000", X"0000", X"0000"), (X"00C6", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, jet_bx_0,
        single_jet_i79);


single_mu_i11_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"002D", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        single_mu_i11);


single_mu_i2_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"0001", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0072", X"0000", X"0000", X"0000"), (X"004A", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"01B6", X"0000", X"0000", X"0000"), (X"018E", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        single_mu_i2);


single_mu_i5_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"0001", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0072", X"0000", X"0000", X"0000"), (X"004A", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"01B6", X"0000", X"0000", X"0000"), (X"018E", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        single_mu_i5);


single_mu_i7_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"000F", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FF00", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        single_mu_i7);


single_mu_i74_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"0001", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FF00", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        single_mu_i74);


single_ett_i80_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0960",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i80);


single_ett_i81_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0C80",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i81);


single_ett_i82_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0FA0",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i82);


single_htt_i34_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0190",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_i34);


single_htt_i36_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"02D0",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_i36);


single_cent7_i104 <= cent7_bx_0;


-- Instantiations of algorithms

-- 2 L1_SingleMuCosmics_OMTF : MU0[MU-ETA_OMTF_POS,MU-ETA_OMTF_NEG]
l1_single_mu_cosmics_omtf <= single_mu_i2;
algo(4) <= l1_single_mu_cosmics_omtf;

-- 5 L1_SingleMu0_DQ : MU0[MU-QLTY_DBLE]
l1_single_mu0_dq <= single_mu_i74;
algo(0) <= l1_single_mu0_dq;

-- 8 L1_SingleMu0_OMTF : MU0[MU-QLTY_SNGL,MU-ETA_OMTF_POS,MU-ETA_OMTF_NEG]
l1_single_mu0_omtf <= single_mu_i5;
algo(1) <= l1_single_mu0_omtf;

-- 12 L1_SingleMu7_DQ : MU7[MU-QLTY_DBLE]
l1_single_mu7_dq <= single_mu_i7;
algo(3) <= l1_single_mu7_dq;

-- 19 L1_SingleMu22 : MU22[MU-QLTY_SNGL]
l1_single_mu22 <= single_mu_i11;
algo(2) <= l1_single_mu22;

-- 36 L1_SingleEG50 : EG50
l1_single_eg50 <= single_eg_i19;
algo(6) <= l1_single_eg50;

-- 59 L1_SingleJet60er2p5 : JET60[JET-ETA_2p52]
l1_single_jet60er2p5 <= single_jet_i77;
algo(8) <= l1_single_jet60er2p5;

-- 60 L1_SingleJet180er2p5 : JET180[JET-ETA_2p52]
l1_single_jet180er2p5 <= single_jet_i79;
algo(7) <= l1_single_jet180er2p5;

-- 64 L1_SingleJet90_FWD3p0 : JET90[JET-ETA_FWD_3p00_NEG] OR JET90[JET-ETA_FWD_3p00_POS]
l1_single_jet90_fwd3p0 <= single_jet_i29 or single_jet_i30;
algo(5) <= l1_single_jet90_fwd3p0;

-- 70 L1_HTT200er : HTT200
l1_htt200er <= single_htt_i34;
algo(12) <= l1_htt200er;

-- 72 L1_HTT360er : HTT360
l1_htt360er <= single_htt_i36;
algo(13) <= l1_htt360er;

-- 78 L1_ETT1200 : ETT1200
l1_ett1200 <= single_ett_i80;
algo(9) <= l1_ett1200;

-- 79 L1_ETT1600 : ETT1600
l1_ett1600 <= single_ett_i81;
algo(10) <= l1_ett1600;

-- 80 L1_ETT2000 : ETT2000
l1_ett2000 <= single_ett_i82;
algo(11) <= l1_ett2000;

-- 93 L1_TOTEM_3 : EXT_TOTEM_3
l1_totem_3 <= single_ext_i88;
algo(37) <= l1_totem_3;

-- 96 L1_HCAL_LaserMon_Trig : EXT_HCAL_LaserMon_1
l1_hcal_laser_mon_trig <= single_ext_i86;
algo(34) <= l1_hcal_laser_mon_trig;

-- 97 L1_HCAL_LaserMon_Veto : EXT_HCAL_LaserMon_4
l1_hcal_laser_mon_veto <= single_ext_i87;
algo(35) <= l1_hcal_laser_mon_veto;

-- 105 L1_BptxXOR : (EXT_BPTX_B1_VME AND ( NOT EXT_BPTX_B2_VME)) OR (EXT_BPTX_B2_VME AND ( NOT EXT_BPTX_B1_VME))
l1_bptx_xor <= ( single_ext_i56 and ( not single_ext_i57 ) ) or ( single_ext_i57 and ( not single_ext_i56 ) );
algo(27) <= l1_bptx_xor;

-- 107 L1_BptxPlus : EXT_BPTX_B1_VME
l1_bptx_plus <= single_ext_i56;
algo(26) <= l1_bptx_plus;

-- 108 L1_BptxMinus : EXT_BPTX_B2_VME
l1_bptx_minus <= single_ext_i57;
algo(25) <= l1_bptx_minus;

-- 109 L1_BptxPlus_NotBptxMinus : EXT_BPTX_B1_VME AND  NOT EXT_BPTX_B2_VME
l1_bptx_plus_not_bptx_minus <= single_ext_i56 and not single_ext_i57;
algo(29) <= l1_bptx_plus_not_bptx_minus;

-- 110 L1_BptxMinus_NotBptxPlus : EXT_BPTX_B2_VME AND  NOT EXT_BPTX_B1_VME
l1_bptx_minus_not_bptx_plus <= single_ext_i57 and not single_ext_i56;
algo(28) <= l1_bptx_minus_not_bptx_plus;

-- 112 L1_UnpairedBunchBptxPlus : EXT_BPTX_B1NotB2_VME
l1_unpaired_bunch_bptx_plus <= single_ext_i64;
algo(39) <= l1_unpaired_bunch_bptx_plus;

-- 113 L1_UnpairedBunchBptxMinus : EXT_BPTX_B2NotB1_VME
l1_unpaired_bunch_bptx_minus <= single_ext_i63;
algo(38) <= l1_unpaired_bunch_bptx_minus;

-- 122 L1_LastCollisionInTrain : EXT_BPTX_LastCollisionInTrain_VME
l1_last_collision_in_train <= single_ext_i72;
algo(36) <= l1_last_collision_in_train;

-- 123 L1_FirstCollisionInTrain : EXT_BPTX_FirstCollisionInTrain_VME
l1_first_collision_in_train <= single_ext_i73;
algo(33) <= l1_first_collision_in_train;

-- 124 L1_FirstCollisionInOrbit : EXT_BPTX_FirstCollidingBunch_VME
l1_first_collision_in_orbit <= single_ext_i69;
algo(32) <= l1_first_collision_in_orbit;

-- 126 L1_BPTX_NotOR_VME : EXT_BPTX_NotOR_VME
l1_bptx_not_or_vme <= single_ext_i65;
algo(21) <= l1_bptx_not_or_vme;

-- 127 L1_BPTX_OR_Ref3_VME : EXT_BPTX_OR_Ref3_VME
l1_bptx_or_ref3_vme <= single_ext_i67;
algo(22) <= l1_bptx_or_ref3_vme;

-- 128 L1_BPTX_OR_Ref4_VME : EXT_BPTX_OR_Ref4_VME
l1_bptx_or_ref4_vme <= single_ext_i71;
algo(23) <= l1_bptx_or_ref4_vme;

-- 129 L1_BPTX_RefAND_VME : EXT_BPTX_RefAND_VME
l1_bptx_ref_and_vme <= single_ext_i68;
algo(24) <= l1_bptx_ref_and_vme;

-- 130 L1_BPTX_AND_Ref1_VME : EXT_BPTX_AND_Ref1_VME
l1_bptx_and_ref1_vme <= single_ext_i58;
algo(14) <= l1_bptx_and_ref1_vme;

-- 131 L1_BPTX_AND_Ref3_VME : EXT_BPTX_AND_Ref3_VME
l1_bptx_and_ref3_vme <= single_ext_i66;
algo(15) <= l1_bptx_and_ref3_vme;

-- 132 L1_BPTX_AND_Ref4_VME : EXT_BPTX_AND_Ref4_VME
l1_bptx_and_ref4_vme <= single_ext_i70;
algo(16) <= l1_bptx_and_ref4_vme;

-- 133 L1_BPTX_BeamGas_Ref1_VME : EXT_BPTX_BeamGas_Ref1_VME
l1_bptx_beam_gas_ref1_vme <= single_ext_i59;
algo(19) <= l1_bptx_beam_gas_ref1_vme;

-- 134 L1_BPTX_BeamGas_Ref2_VME : EXT_BPTX_BeamGas_Ref2_VME
l1_bptx_beam_gas_ref2_vme <= single_ext_i60;
algo(20) <= l1_bptx_beam_gas_ref2_vme;

-- 135 L1_BPTX_BeamGas_B1_VME : EXT_BPTX_BeamGas_B1_VME
l1_bptx_beam_gas_b1_vme <= single_ext_i61;
algo(17) <= l1_bptx_beam_gas_b1_vme;

-- 136 L1_BPTX_BeamGas_B2_VME : EXT_BPTX_BeamGas_B2_VME
l1_bptx_beam_gas_b2_vme <= single_ext_i62;
algo(18) <= l1_bptx_beam_gas_b2_vme;

-- 176 L1_Centrality_Saturation : CENT7
l1_centrality_saturation <= single_cent7_i104;
algo(31) <= l1_centrality_saturation;

-- 494 L1_Castor1 : EXT_CASTOR_1
l1_castor1 <= single_ext_i196;
algo(30) <= l1_castor1;


-- ========================================================