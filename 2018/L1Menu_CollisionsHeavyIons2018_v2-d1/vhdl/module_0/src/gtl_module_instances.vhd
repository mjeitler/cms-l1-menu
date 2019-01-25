-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_CollisionsHeavyIons2018_v2

-- Unique ID of L1 Trigger Menu:
-- e3d0f07f-f1ad-4fee-842a-79441531f4b3

-- Unique ID of firmware implementation:
-- bc29c622-7f74-4d05-8536-eab541c325b5

-- Scale set:
-- scales_2018_08_07

-- VHDL producer version
-- v2.5.0

-- External condition assignment
single_ext_i0 <= ext_cond_bx_0(4); -- single_ext_i0
single_ext_i84 <= ext_cond_bx_0(56); -- single_ext_i84
single_ext_i85 <= ext_cond_bx_0(57); -- single_ext_i85
single_ext_i86 <= ext_cond_bx_0(58); -- single_ext_i86
single_ext_i87 <= ext_cond_bx_0(59); -- single_ext_i87
-- Instantiations of muon charge correlations - only once for a certain Bx combination, if there is at least one DoubleMuon, TripleMuon, QuadMuon condition
-- or muon-muon correlation condition.
    muon_charge_correlations_bx_0_bx_0_i: entity work.muon_charge_correlations
        port map(mu_bx_0, mu_bx_0,
            ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
            ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
            ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);

-- Instantiations of eta and phi conversion to muon scale for calo-muon and muon-esums correlation conditions (used for DETA, DPHI, DR and mass) - once for every calo ObjectType in certain Bx used in correlation conditions

-- Instantiations of pt, eta, phi, cos-phi and sin-phi for correlation conditions (used for DETA, DPHI, DR, mass, overlap_remover and b_tagging) - once for every ObjectType in certain Bx used in correlation conditions

-- Instantiations of differences for correlation conditions (used for DETA, DPHI, DR, mass and b_tagging) - once for correlation conditions with two ObjectTypes in certain Bxs

-- Instantiations of cosh-deta and cos-dphi LUTs for correlation conditions (used for mass and overlap_remover) - once for correlation conditions with two ObjectTypes in certain Bxs

-- Instantiations of conditions
double_jet_i36_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, JET_TYPE,
        (X"0028", X"0010", X"0000", X"0000"),
        (false, false, true, true),
        (X"003D", X"003D", X"0000", X"0000"), (X"00C2", X"00C2", X"0000", X"0000"),
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
        double_jet_i36);


single_eg_i41_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"000A", X"0000", X"0000", X"0000"),
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
        single_eg_i41);


single_eg_i44_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"001E", X"0000", X"0000", X"0000"),
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
        single_eg_i44);


single_eg_i61_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"0040", X"0000", X"0000", X"0000"),
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
        single_eg_i61);


single_jet_i23_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0020", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"00C1", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
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
        single_jet_i23);


single_jet_i24_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0020", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0072", X"0000", X"0000", X"0000"), (X"003E", X"0000", X"0000", X"0000"),
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
        single_jet_i24);


single_jet_i29_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0058", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"00C1", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
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
        (X"0058", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0072", X"0000", X"0000", X"0000"), (X"003E", X"0000", X"0000", X"0000"),
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


single_jet_i33_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0080", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"00C1", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
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
        single_jet_i33);


single_jet_i34_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0080", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0072", X"0000", X"0000", X"0000"), (X"003E", X"0000", X"0000", X"0000"),
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
        single_jet_i34);


single_jet_i55_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0050", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"003D", X"0000", X"0000", X"0000"), (X"00C2", X"0000", X"0000", X"0000"),
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
        single_jet_i55);


double_mu_i78_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 7, 0, 0, 0, 0,
        2, true,
        (X"0001", X"0001", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FFF0", X"FFF0", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        double_mu_i78,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


double_mu_i79_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 7, 0, 0, 0, 0,
        2, true,
        (X"0001", X"0001", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FFF0", X"FFF0", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "os",
        false
    )
    port map(lhc_clk, mu_bx_0,
        double_mu_i79,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


double_mu_i81_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 7, 0, 0, 0, 0,
        2, true,
        (X"0001", X"0001", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FF00", X"FF00", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        double_mu_i81,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


single_mu_i52_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"0007", X"0000", X"0000", X"0000"),
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
        single_mu_i52);


single_mu_i57_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"000B", X"0000", X"0000", X"0000"),
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
        single_mu_i57);


single_mu_i76_i: entity work.muon_conditions_v7
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
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        single_mu_i76);


single_mbt0_hfm_i2_i: entity work.min_bias_hf_conditions
    generic map(true, MBT0HFM_TYPE, X"1")
    port map(lhc_clk, mbt0hfm_bx_0, single_mbt0_hfm_i2);


single_mbt1_hfm_i8_i: entity work.min_bias_hf_conditions
    generic map(true, MBT1HFM_TYPE, X"1")
    port map(lhc_clk, mbt1hfm_bx_0, single_mbt1_hfm_i8);


single_mbt0_hfp_i1_i: entity work.min_bias_hf_conditions
    generic map(true, MBT0HFP_TYPE, X"1")
    port map(lhc_clk, mbt0hfp_bx_0, single_mbt0_hfp_i1);


single_mbt1_hfp_i7_i: entity work.min_bias_hf_conditions
    generic map(true, MBT1HFP_TYPE, X"1")
    port map(lhc_clk, mbt1hfp_bx_0, single_mbt1_hfp_i7);


single_cent1_i3 <= cent1_bx_0;


single_cent2_i4 <= cent2_bx_0;


single_cent3_i5 <= cent3_bx_0;


single_cent4_i6 <= cent4_bx_0;


-- Instantiations of algorithms

-- 0 L1_ZeroBias : EXT_ZeroBias_BPTX_AND_VME
l1_zero_bias <= single_ext_i0;
algo(1) <= l1_zero_bias;

-- 1 L1_ZeroBias_copy : EXT_ZeroBias_BPTX_AND_VME
l1_zero_bias_copy <= single_ext_i0;
algo(2) <= l1_zero_bias_copy;

-- 5 L1_Centrality_10_100_MinimumBiasHF1_AND_BptxAND : (CENT1 OR CENT2 OR CENT3 OR CENT4) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_centrality_10_100_minimum_bias_hf1_and_bptx_and <= ( single_cent1_i3 or single_cent2_i4 or single_cent3_i5 or single_cent4_i6 ) and ( single_mbt0_hfp_i1 and single_mbt0_hfm_i2 ) and single_ext_i0;
algo(7) <= l1_centrality_10_100_minimum_bias_hf1_and_bptx_and;

-- 6 L1_Centrality_30_100_MinimumBiasHF1_AND_BptxAND : (CENT2 OR CENT3 OR CENT4) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_centrality_30_100_minimum_bias_hf1_and_bptx_and <= ( single_cent2_i4 or single_cent3_i5 or single_cent4_i6 ) and ( single_mbt0_hfp_i1 and single_mbt0_hfm_i2 ) and single_ext_i0;
algo(8) <= l1_centrality_30_100_minimum_bias_hf1_and_bptx_and;

-- 9 L1_AlwaysTrue : EXT_ZeroBias_BPTX_AND_VME OR ( NOT EXT_ZeroBias_BPTX_AND_VME)
l1_always_true <= single_ext_i0 or ( not single_ext_i0 );
algo(0) <= l1_always_true;

-- 64 L1_SingleJet44_FWD_BptxAND : (JET44[JET-ETA_FWD_2p7_NEG] OR JET44[JET-ETA_FWD_2p7_POS]) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet44_fwd_bptx_and <= ( single_jet_i29 or single_jet_i30 ) and single_ext_i0;
algo(17) <= l1_single_jet44_fwd_bptx_and;

-- 68 L1_SingleJet16_FWD_Centrality_30_100_BptxAND : (JET16[JET-ETA_FWD_2p7_NEG] OR JET16[JET-ETA_FWD_2p7_POS]) AND (CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet16_fwd_centrality_30_100_bptx_and <= ( single_jet_i23 or single_jet_i24 ) and ( single_cent2_i4 or single_cent3_i5 or single_cent4_i6 ) and single_ext_i0;
algo(15) <= l1_single_jet16_fwd_centrality_30_100_bptx_and;

-- 73 L1_SingleJet64_FWD_Centrality_30_100_BptxAND : (JET64[JET-ETA_FWD_2p7_NEG] OR JET64[JET-ETA_FWD_2p7_POS]) AND (CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet64_fwd_centrality_30_100_bptx_and <= ( single_jet_i33 or single_jet_i34 ) and ( single_cent2_i4 or single_cent3_i5 or single_cent4_i6 ) and single_ext_i0;
algo(18) <= l1_single_jet64_fwd_centrality_30_100_bptx_and;

-- 75 L1_SingleJet16_FWD_Centrality_50_100_BptxAND : (JET16[JET-ETA_FWD_2p7_NEG] OR JET16[JET-ETA_FWD_2p7_POS]) AND (CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet16_fwd_centrality_50_100_bptx_and <= ( single_jet_i23 or single_jet_i24 ) and ( single_cent3_i5 or single_cent4_i6 ) and single_ext_i0;
algo(16) <= l1_single_jet16_fwd_centrality_50_100_bptx_and;

-- 80 L1_SingleJet64_FWD_Centrality_50_100_BptxAND : (JET64[JET-ETA_FWD_2p7_NEG] OR JET64[JET-ETA_FWD_2p7_POS]) AND (CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet64_fwd_centrality_50_100_bptx_and <= ( single_jet_i33 or single_jet_i34 ) and ( single_cent3_i5 or single_cent4_i6 ) and single_ext_i0;
algo(19) <= l1_single_jet64_fwd_centrality_50_100_bptx_and;

-- 89 L1_DoubleJet20And8_MidEta2p7 : comb{JET20[JET-ETA_2p7],JET8[JET-ETA_2p7]}
l1_double_jet20_and8_mid_eta2p7 <= double_jet_i36;
algo(13) <= l1_double_jet20_and8_mid_eta2p7;

-- 139 L1_SingleMu3_SingleJet40_MidEta2p7 : MU3[MU-QLTY_SNGL] AND JET40[JET-ETA_2p7]
l1_single_mu3_single_jet40_mid_eta2p7 <= single_mu_i52 and single_jet_i55;
algo(23) <= l1_single_mu3_single_jet40_mid_eta2p7;

-- 146 L1_SingleMu5_SingleEG15 : MU5[MU-QLTY_SNGL] AND EG15
l1_single_mu5_single_eg15 <= single_mu_i57 and single_eg_i44;
algo(24) <= l1_single_mu5_single_eg15;

-- 156 L1_SingleEG5_SingleEG32 : EG5 AND EG32
l1_single_eg5_single_eg32 <= single_eg_i41 and single_eg_i61;
algo(14) <= l1_single_eg5_single_eg32;

-- 193 L1_SingleMu0_BptxAND : MU0[MU-QLTY_SNGL] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu0_bptx_and <= single_mu_i76 and single_ext_i0;
algo(20) <= l1_single_mu0_bptx_and;

-- 211 L1_DoubleMuOpen_Centrality_10_100_MinimumBiasHF1_AND_BptxAND : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]} AND (CENT1 OR CENT2 OR CENT3 OR CENT4) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu_open_centrality_10_100_minimum_bias_hf1_and_bptx_and <= double_mu_i78 and ( single_cent1_i3 or single_cent2_i4 or single_cent3_i5 or single_cent4_i6 ) and ( single_mbt0_hfp_i1 and single_mbt0_hfm_i2 ) and single_ext_i0;
algo(12) <= l1_double_mu_open_centrality_10_100_minimum_bias_hf1_and_bptx_and;

-- 212 L1_DoubleMuOpen_Centrality_50_100_MinimumBiasHF1_AND_BptxAND : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]} AND (CENT3 OR CENT4) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu_open_centrality_50_100_minimum_bias_hf1_and_bptx_and <= double_mu_i78 and ( single_cent3_i5 or single_cent4_i6 ) and ( single_mbt0_hfp_i1 and single_mbt0_hfm_i2 ) and single_ext_i0;
algo(10) <= l1_double_mu_open_centrality_50_100_minimum_bias_hf1_and_bptx_and;

-- 214 L1_DoubleMuOpen_OS_BptxAND : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]}[CHGCOR_OS] AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu_open_os_bptx_and <= double_mu_i79 and single_ext_i0;
algo(25) <= l1_double_mu_open_os_bptx_and;

-- 220 L1_DoubleMu0_Centrality_10_100_MinimumBiasHF1_AND_BptxAND : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND (CENT1 OR CENT2 OR CENT3 OR CENT4) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu0_centrality_10_100_minimum_bias_hf1_and_bptx_and <= double_mu_i81 and ( single_cent1_i3 or single_cent2_i4 or single_cent3_i5 or single_cent4_i6 ) and ( single_mbt0_hfp_i1 and single_mbt0_hfm_i2 ) and single_ext_i0;
algo(9) <= l1_double_mu0_centrality_10_100_minimum_bias_hf1_and_bptx_and;

-- 221 L1_DoubleMu0_Centrality_30_100_MinimumBiasHF1_AND_BptxAND : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND (CENT2 OR CENT3 OR CENT4) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu0_centrality_30_100_minimum_bias_hf1_and_bptx_and <= double_mu_i81 and ( single_cent2_i4 or single_cent3_i5 or single_cent4_i6 ) and ( single_mbt0_hfp_i1 and single_mbt0_hfm_i2 ) and single_ext_i0;
algo(11) <= l1_double_mu0_centrality_30_100_minimum_bias_hf1_and_bptx_and;

-- 264 L1_SingleMu0_NotMinimumBiasHF2_OR : MU0[MU-QLTY_SNGL] AND  NOT (MBT1HFP1 OR MBT1HFM1)
l1_single_mu0_not_minimum_bias_hf2_or <= single_mu_i76 and not ( single_mbt1_hfp_i7 or single_mbt1_hfm_i8 );
algo(21) <= l1_single_mu0_not_minimum_bias_hf2_or;

-- 265 L1_SingleMu3_NotMinimumBiasHF2_OR : MU3[MU-QLTY_SNGL] AND  NOT (MBT1HFP1 OR MBT1HFM1)
l1_single_mu3_not_minimum_bias_hf2_or <= single_mu_i52 and not ( single_mbt1_hfp_i7 or single_mbt1_hfm_i8 );
algo(22) <= l1_single_mu3_not_minimum_bias_hf2_or;

-- 501 L1_Castor1 : EXT_CASTOR_1
l1_castor1 <= single_ext_i84;
algo(3) <= l1_castor1;

-- 502 L1_Castor2 : EXT_CASTOR_2
l1_castor2 <= single_ext_i85;
algo(4) <= l1_castor2;

-- 503 L1_Castor3 : EXT_CASTOR_3
l1_castor3 <= single_ext_i86;
algo(5) <= l1_castor3;

-- 504 L1_Castor4 : EXT_CASTOR_4
l1_castor4 <= single_ext_i87;
algo(6) <= l1_castor4;


-- ========================================================