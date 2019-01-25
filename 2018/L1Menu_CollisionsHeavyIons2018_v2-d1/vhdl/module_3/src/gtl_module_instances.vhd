-- ========================================================
-- from VHDL producer:

-- Module ID: 3

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
double_eg_i51_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, EG_TYPE,
        (X"0014", X"0014", X"0000", X"0000"),
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
        double_eg_i51);


double_jet_i37_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, JET_TYPE,
        (X"0020", X"0018", X"0000", X"0000"),
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
        double_jet_i37);


double_jet_i38_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, JET_TYPE,
        (X"0028", X"0018", X"0000", X"0000"),
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
        double_jet_i38);


double_jet_i39_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, JET_TYPE,
        (X"0038", X"0020", X"0000", X"0000"),
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
        double_jet_i39);


single_eg_i40_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"0006", X"0000", X"0000", X"0000"),
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
        single_eg_i40);


single_eg_i45_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"002A", X"0000", X"0000", X"0000"),
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
        single_eg_i45);


single_eg_i49_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"0014", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"A", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, eg_bx_0,
        single_eg_i49);


single_jet_i12_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0020", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0,
        single_jet_i12);


single_jet_i14_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0038", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0,
        single_jet_i14);


single_jet_i16_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0048", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0,
        single_jet_i16);


single_jet_i18_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0070", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0,
        single_jet_i18);


single_jet_i20_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0080", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0,
        single_jet_i20);


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


single_jet_i27_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0048", X"0000", X"0000", X"0000"),
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
        single_jet_i27);


single_jet_i28_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0048", X"0000", X"0000", X"0000"),
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
        single_jet_i28);


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


single_jet_i53_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0038", X"0000", X"0000", X"0000"),
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
        single_jet_i53);


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


single_mu_i75_i: entity work.muon_conditions_v7
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
        (X"FFF0", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        single_mu_i75);


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


single_asymet_i67_i: entity work.esums_conditions
    generic map(true, ASYMET_TYPE,
        X"0032",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, asymet_bx_0, single_asymet_i67);


single_asymet_i68_i: entity work.esums_conditions
    generic map(true, ASYMET_TYPE,
        X"0037",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, asymet_bx_0, single_asymet_i68);


single_asymet_i69_i: entity work.esums_conditions
    generic map(true, ASYMET_TYPE,
        X"003C",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, asymet_bx_0, single_asymet_i69);


single_asymet_i70_i: entity work.esums_conditions
    generic map(true, ASYMET_TYPE,
        X"0041",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, asymet_bx_0, single_asymet_i70);


single_asymet_i83_i: entity work.esums_conditions
    generic map(true, ASYMET_TYPE,
        X"0028",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, asymet_bx_0, single_asymet_i83);


single_ett_i66_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"000A",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i66);


single_ett_i73_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0010",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i73);


single_ett_i74_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0014",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i74);


single_mbt0_hfm_i2_i: entity work.min_bias_hf_conditions
    generic map(true, MBT0HFM_TYPE, X"1")
    port map(lhc_clk, mbt0hfm_bx_0, single_mbt0_hfm_i2);


single_mbt0_hfp_i1_i: entity work.min_bias_hf_conditions
    generic map(true, MBT0HFP_TYPE, X"1")
    port map(lhc_clk, mbt0hfp_bx_0, single_mbt0_hfp_i1);


single_cent2_i4 <= cent2_bx_0;


single_cent3_i5 <= cent3_bx_0;


single_cent4_i6 <= cent4_bx_0;


-- Instantiations of algorithms

-- 10 L1_MinimumBiasHF1_AND : (MBT0HFP1 AND MBT0HFM1)
l1_minimum_bias_hf1_and <= ( single_mbt0_hfp_i1 and single_mbt0_hfm_i2 );
algo(2) <= l1_minimum_bias_hf1_and;

-- 13 L1_MinimumBiasHF1_OR : (MBT0HFP1 OR MBT0HFM1)
l1_minimum_bias_hf1_or <= ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 );
algo(3) <= l1_minimum_bias_hf1_or;

-- 14 L1_NotMinimumBiasHF1_OR :  NOT (MBT0HFP1 OR MBT0HFM1)
l1_not_minimum_bias_hf1_or <= not ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 );
algo(4) <= l1_not_minimum_bias_hf1_or;

-- 41 L1_SingleJet16_Centrality_30_100_BptxAND : JET16 AND (CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet16_centrality_30_100_bptx_and <= single_jet_i12 and ( single_cent2_i4 or single_cent3_i5 or single_cent4_i6 ) and single_ext_i0;
algo(13) <= l1_single_jet16_centrality_30_100_bptx_and;

-- 43 L1_SingleJet28_Centrality_30_100_BptxAND : JET28 AND (CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet28_centrality_30_100_bptx_and <= single_jet_i14 and ( single_cent2_i4 or single_cent3_i5 or single_cent4_i6 ) and single_ext_i0;
algo(15) <= l1_single_jet28_centrality_30_100_bptx_and;

-- 45 L1_SingleJet36_Centrality_30_100_BptxAND : JET36 AND (CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet36_centrality_30_100_bptx_and <= single_jet_i16 and ( single_cent2_i4 or single_cent3_i5 or single_cent4_i6 ) and single_ext_i0;
algo(17) <= l1_single_jet36_centrality_30_100_bptx_and;

-- 47 L1_SingleJet56_Centrality_30_100_BptxAND : JET56 AND (CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet56_centrality_30_100_bptx_and <= single_jet_i18 and ( single_cent2_i4 or single_cent3_i5 or single_cent4_i6 ) and single_ext_i0;
algo(19) <= l1_single_jet56_centrality_30_100_bptx_and;

-- 49 L1_SingleJet64_Centrality_30_100_BptxAND : JET64 AND (CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet64_centrality_30_100_bptx_and <= single_jet_i20 and ( single_cent2_i4 or single_cent3_i5 or single_cent4_i6 ) and single_ext_i0;
algo(21) <= l1_single_jet64_centrality_30_100_bptx_and;

-- 51 L1_SingleJet16_Centrality_50_100_BptxAND : JET16 AND (CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet16_centrality_50_100_bptx_and <= single_jet_i12 and ( single_cent3_i5 or single_cent4_i6 ) and single_ext_i0;
algo(14) <= l1_single_jet16_centrality_50_100_bptx_and;

-- 53 L1_SingleJet28_Centrality_50_100_BptxAND : JET28 AND (CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet28_centrality_50_100_bptx_and <= single_jet_i14 and ( single_cent3_i5 or single_cent4_i6 ) and single_ext_i0;
algo(16) <= l1_single_jet28_centrality_50_100_bptx_and;

-- 55 L1_SingleJet36_Centrality_50_100_BptxAND : JET36 AND (CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet36_centrality_50_100_bptx_and <= single_jet_i16 and ( single_cent3_i5 or single_cent4_i6 ) and single_ext_i0;
algo(18) <= l1_single_jet36_centrality_50_100_bptx_and;

-- 57 L1_SingleJet56_Centrality_50_100_BptxAND : JET56 AND (CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet56_centrality_50_100_bptx_and <= single_jet_i18 and ( single_cent3_i5 or single_cent4_i6 ) and single_ext_i0;
algo(20) <= l1_single_jet56_centrality_50_100_bptx_and;

-- 59 L1_SingleJet64_Centrality_50_100_BptxAND : JET64 AND (CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet64_centrality_50_100_bptx_and <= single_jet_i20 and ( single_cent3_i5 or single_cent4_i6 ) and single_ext_i0;
algo(22) <= l1_single_jet64_centrality_50_100_bptx_and;

-- 61 L1_SingleJet16_FWD_BptxAND : (JET16[JET-ETA_FWD_2p7_NEG] OR JET16[JET-ETA_FWD_2p7_POS]) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet16_fwd_bptx_and <= ( single_jet_i23 or single_jet_i24 ) and single_ext_i0;
algo(28) <= l1_single_jet16_fwd_bptx_and;

-- 66 L1_SingleJet64_FWD_BptxAND : (JET64[JET-ETA_FWD_2p7_NEG] OR JET64[JET-ETA_FWD_2p7_POS]) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet64_fwd_bptx_and <= ( single_jet_i33 or single_jet_i34 ) and single_ext_i0;
algo(31) <= l1_single_jet64_fwd_bptx_and;

-- 70 L1_SingleJet36_FWD_Centrality_30_100_BptxAND : (JET36[JET-ETA_FWD_2p7_NEG] OR JET36[JET-ETA_FWD_2p7_POS]) AND (CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet36_fwd_centrality_30_100_bptx_and <= ( single_jet_i27 or single_jet_i28 ) and ( single_cent2_i4 or single_cent3_i5 or single_cent4_i6 ) and single_ext_i0;
algo(29) <= l1_single_jet36_fwd_centrality_30_100_bptx_and;

-- 77 L1_SingleJet36_FWD_Centrality_50_100_BptxAND : (JET36[JET-ETA_FWD_2p7_NEG] OR JET36[JET-ETA_FWD_2p7_POS]) AND (CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet36_fwd_centrality_50_100_bptx_and <= ( single_jet_i27 or single_jet_i28 ) and ( single_cent3_i5 or single_cent4_i6 ) and single_ext_i0;
algo(30) <= l1_single_jet36_fwd_centrality_50_100_bptx_and;

-- 90 L1_DoubleJet16And12_MidEta2p7 : comb{JET16[JET-ETA_2p7],JET12[JET-ETA_2p7]}
l1_double_jet16_and12_mid_eta2p7 <= double_jet_i37;
algo(24) <= l1_double_jet16_and12_mid_eta2p7;

-- 91 L1_DoubleJet20And12_MidEta2p7 : comb{JET20[JET-ETA_2p7],JET12[JET-ETA_2p7]}
l1_double_jet20_and12_mid_eta2p7 <= double_jet_i38;
algo(25) <= l1_double_jet20_and12_mid_eta2p7;

-- 97 L1_DoubleJet28And16_MidEta2p7_Centrality_30_100 : comb{JET28[JET-ETA_2p7],JET16[JET-ETA_2p7]} AND (CENT2 OR CENT3 OR CENT4)
l1_double_jet28_and16_mid_eta2p7_centrality_30_100 <= double_jet_i39 and ( single_cent2_i4 or single_cent3_i5 or single_cent4_i6 );
algo(26) <= l1_double_jet28_and16_mid_eta2p7_centrality_30_100;

-- 102 L1_DoubleJet28And16_MidEta2p7_Centrality_50_100 : comb{JET28[JET-ETA_2p7],JET16[JET-ETA_2p7]} AND (CENT3 OR CENT4)
l1_double_jet28_and16_mid_eta2p7_centrality_50_100 <= double_jet_i39 and ( single_cent3_i5 or single_cent4_i6 );
algo(27) <= l1_double_jet28_and16_mid_eta2p7_centrality_50_100;

-- 115 L1_SingleEG21_BptxAND : EG21 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg21_bptx_and <= single_eg_i45 and single_ext_i0;
algo(9) <= l1_single_eg21_bptx_and;

-- 119 L1_SingleIsoEG10_BptxAND : EG10[EG-ISO_0xA] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_iso_eg10_bptx_and <= single_eg_i49 and single_ext_i0;
algo(12) <= l1_single_iso_eg10_bptx_and;

-- 123 L1_DoubleEG10_BptxAND : comb{EG10,EG10} AND EXT_ZeroBias_BPTX_AND_VME
l1_double_eg10_bptx_and <= double_eg_i51 and single_ext_i0;
algo(23) <= l1_double_eg10_bptx_and;

-- 124 L1_SingleEG3_Centrality_30_100_BptxAND : EG3 AND (CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg3_centrality_30_100_bptx_and <= single_eg_i40 and ( single_cent2_i4 or single_cent3_i5 or single_cent4_i6 ) and single_ext_i0;
algo(10) <= l1_single_eg3_centrality_30_100_bptx_and;

-- 127 L1_SingleEG3_Centrality_50_100_BptxAND : EG3 AND (CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg3_centrality_50_100_bptx_and <= single_eg_i40 and ( single_cent3_i5 or single_cent4_i6 ) and single_ext_i0;
algo(11) <= l1_single_eg3_centrality_50_100_bptx_and;

-- 137 L1_SingleMu3_SingleJet28_MidEta2p7 : MU3[MU-QLTY_SNGL] AND JET28[JET-ETA_2p7]
l1_single_mu3_single_jet28_mid_eta2p7 <= single_mu_i52 and single_jet_i53;
algo(34) <= l1_single_mu3_single_jet28_mid_eta2p7;

-- 175 L1_ETT8_ETTAsym55_MinimumBiasHF1_OR_BptxAND : ETT8 AND ASYMET55 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett8_ett_asym55_minimum_bias_hf1_or_bptx_and <= single_ett_i73 and single_asymet_i68 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(7) <= l1_ett8_ett_asym55_minimum_bias_hf1_or_bptx_and;

-- 177 L1_ETT8_ETTAsym65_MinimumBiasHF1_OR_BptxAND : ETT8 AND ASYMET65 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett8_ett_asym65_minimum_bias_hf1_or_bptx_and <= single_ett_i73 and single_asymet_i70 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(8) <= l1_ett8_ett_asym65_minimum_bias_hf1_or_bptx_and;

-- 181 L1_ETT10_ETTAsym55_MinimumBiasHF1_OR_BptxAND : ETT10 AND ASYMET55 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett10_ett_asym55_minimum_bias_hf1_or_bptx_and <= single_ett_i74 and single_asymet_i68 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(6) <= l1_ett10_ett_asym55_minimum_bias_hf1_or_bptx_and;

-- 191 L1_SingleMuOpen_BptxAND : MU0[MU-QLTY_OPEN] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu_open_bptx_and <= single_mu_i75 and single_ext_i0;
algo(33) <= l1_single_mu_open_bptx_and;

-- 192 L1_SingleMu0 : MU0[MU-QLTY_SNGL]
l1_single_mu0 <= single_mu_i76;
algo(32) <= l1_single_mu0;

-- 210 L1_DoubleMuOpen : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]}
l1_double_mu_open <= double_mu_i78;
algo(35) <= l1_double_mu_open;

-- 222 L1_DoubleMu0_Centrality_50_100_MinimumBiasHF1_AND_BptxAND : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND (CENT3 OR CENT4) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu0_centrality_50_100_minimum_bias_hf1_and_bptx_and <= double_mu_i81 and ( single_cent3_i5 or single_cent4_i6 ) and ( single_mbt0_hfp_i1 and single_mbt0_hfm_i2 ) and single_ext_i0;
algo(36) <= l1_double_mu0_centrality_50_100_minimum_bias_hf1_and_bptx_and;

-- 240 L1_ETTAsym60_BptxAND : ASYMET60 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym60_bptx_and <= single_asymet_i69 and single_ext_i0;
algo(1) <= l1_ett_asym60_bptx_and;

-- 247 L1_ETTAsym40 : ASYMET40
l1_ett_asym40 <= single_asymet_i83;
algo(0) <= l1_ett_asym40;

-- 257 L1_ETT5_ETTAsym50_BptxAND : ETT5 AND ASYMET50 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym50_bptx_and <= single_ett_i66 and single_asymet_i67 and single_ext_i0;
algo(5) <= l1_ett5_ett_asym50_bptx_and;


-- ========================================================