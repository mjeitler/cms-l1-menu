-- ========================================================
-- from VHDL producer:

-- Module ID: 5

-- Name of L1 Trigger Menu:
-- L1Menu_CollisionsHeavyIons2018_v3

-- Unique ID of L1 Trigger Menu:
-- bb9a82eb-17df-4991-b806-4028ee613a4c

-- Unique ID of firmware implementation:
-- 721d74e7-03e3-48ab-938d-1e8242e7c1dd

-- Scale set:
-- scales_2018_08_07

-- VHDL producer version
-- v2.5.0

-- External condition assignment
single_ext_i0 <= ext_cond_bx_0(4); -- single_ext_i0
single_ext_i85 <= ext_cond_bx_0(56); -- single_ext_i85
single_ext_i86 <= ext_cond_bx_0(57); -- single_ext_i86
single_ext_i87 <= ext_cond_bx_0(58); -- single_ext_i87
single_ext_i88 <= ext_cond_bx_0(59); -- single_ext_i88
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
double_eg_i11_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, EG_TYPE,
        (X"000A", X"000A", X"0000", X"0000"),
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
        double_eg_i11);


double_eg_i12_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, EG_TYPE,
        (X"0004", X"0004", X"0000", X"0000"),
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
        double_eg_i12);


double_eg_i52_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, EG_TYPE,
        (X"0010", X"0010", X"0000", X"0000"),
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
        double_eg_i52);


single_eg_i42_i: entity work.calo_conditions_v7_no_quad
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
        single_eg_i42);


single_eg_i43_i: entity work.calo_conditions_v7_no_quad
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
        single_eg_i43);


single_eg_i44_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"000E", X"0000", X"0000", X"0000"),
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


single_eg_i45_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"0018", X"0000", X"0000", X"0000"),
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
        (X"0006", X"0000", X"0000", X"0000"),
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


single_eg_i51_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"0018", X"0000", X"0000", X"0000"),
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
        single_eg_i51);


single_jet_i19_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0058", X"0000", X"0000", X"0000"),
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
        single_jet_i19);


single_jet_i25_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i25);


single_jet_i26_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i26);


single_jet_i55_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i55);


single_jet_i56_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0040", X"0000", X"0000", X"0000"),
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
        single_jet_i56);


single_jet_i57_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i57);


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


double_mu_i80_i: entity work.muon_conditions_v7
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
        double_mu_i80,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


double_mu_i82_i: entity work.muon_conditions_v7
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
        double_mu_i82,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


single_mu_i54_i: entity work.muon_conditions_v7
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
        single_mu_i54);


single_mu_i59_i: entity work.muon_conditions_v7
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
        single_mu_i59);


single_mu_i61_i: entity work.muon_conditions_v7
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
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        single_mu_i61);


single_mu_i62_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"0019", X"0000", X"0000", X"0000"),
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
        single_mu_i62);


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


single_mu_i77_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"0021", X"0000", X"0000", X"0000"),
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
        single_mu_i77);


single_asymet_i67_i: entity work.esums_conditions
    generic map(true, ASYMET_TYPE,
        X"0032",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, asymet_bx_0, single_asymet_i67);


single_asymet_i69_i: entity work.esums_conditions
    generic map(true, ASYMET_TYPE,
        X"003C",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, asymet_bx_0, single_asymet_i69);


single_asymet_i71_i: entity work.esums_conditions
    generic map(true, ASYMET_TYPE,
        X"0046",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, asymet_bx_0, single_asymet_i71);


single_asymet_i72_i: entity work.esums_conditions
    generic map(true, ASYMET_TYPE,
        X"0050",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, asymet_bx_0, single_asymet_i72);


single_asymet_i84_i: entity work.esums_conditions
    generic map(true, ASYMET_TYPE,
        X"0028",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, asymet_bx_0, single_asymet_i84);


single_ett_i66_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"000A",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i66);


single_ett_i97_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0028",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i97);


single_mbt1_hfm_i10_i: entity work.min_bias_hf_conditions
    generic map(true, MBT1HFM_TYPE, X"1")
    port map(lhc_clk, mbt1hfm_bx_0, single_mbt1_hfm_i10);


single_mbt1_hfp_i9_i: entity work.min_bias_hf_conditions
    generic map(true, MBT1HFP_TYPE, X"1")
    port map(lhc_clk, mbt1hfp_bx_0, single_mbt1_hfp_i9);


single_cent0_i98 <= cent0_bx_0;


-- Instantiations of algorithms

-- 5 L1_Centrality_Saturation : CENT0
l1_centrality_saturation <= single_cent0_i98;
algo(70) <= l1_centrality_saturation;

-- 7 L1_MinimumBiasHF2_AND_BptxAND : (MBT1HFP1 AND MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf2_and_bptx_and <= ( single_mbt1_hfp_i9 and single_mbt1_hfm_i10 ) and single_ext_i0;
algo(2) <= l1_minimum_bias_hf2_and_bptx_and;

-- 8 L1_MinimumBiasHF2_OR_BptxAND : (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf2_or_bptx_and <= ( single_mbt1_hfp_i9 or single_mbt1_hfm_i10 ) and single_ext_i0;
algo(4) <= l1_minimum_bias_hf2_or_bptx_and;

-- 11 L1_MinimumBiasHF2_AND : (MBT1HFP1 AND MBT1HFM1)
l1_minimum_bias_hf2_and <= ( single_mbt1_hfp_i9 and single_mbt1_hfm_i10 );
algo(28) <= l1_minimum_bias_hf2_and;

-- 12 L1_MinimumBiasHF2_OR : (MBT1HFP1 OR MBT1HFM1)
l1_minimum_bias_hf2_or <= ( single_mbt1_hfp_i9 or single_mbt1_hfm_i10 );
algo(19) <= l1_minimum_bias_hf2_or;

-- 15 L1_NotMinimumBiasHF2_OR :  NOT (MBT1HFP1 OR MBT1HFM1)
l1_not_minimum_bias_hf2_or <= not ( single_mbt1_hfp_i9 or single_mbt1_hfm_i10 );
algo(27) <= l1_not_minimum_bias_hf2_or;

-- 17 L1_NotMinimumBiasHF2_OR_BptxAND :  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_minimum_bias_hf2_or_bptx_and <= not ( single_mbt1_hfp_i9 or single_mbt1_hfm_i10 ) and single_ext_i0;
algo(24) <= l1_not_minimum_bias_hf2_or_bptx_and;

-- 35 L1_SingleJet44_BptxAND : JET44 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet44_bptx_and <= single_jet_i19 and single_ext_i0;
algo(57) <= l1_single_jet44_bptx_and;

-- 61 L1_SingleJet16_FWD_BptxAND : (JET16[JET-ETA_FWD_2p7_NEG] OR JET16[JET-ETA_FWD_2p7_POS]) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet16_fwd_bptx_and <= ( single_jet_i25 or single_jet_i26 ) and single_ext_i0;
algo(53) <= l1_single_jet16_fwd_bptx_and;

-- 128 L1_DoubleEG5_BptxAND : comb{EG5,EG5} AND EXT_ZeroBias_BPTX_AND_VME
l1_double_eg5_bptx_and <= double_eg_i11 and single_ext_i0;
algo(48) <= l1_double_eg5_bptx_and;

-- 129 L1_DoubleEG8_BptxAND : comb{EG8,EG8} AND EXT_ZeroBias_BPTX_AND_VME
l1_double_eg8_bptx_and <= double_eg_i52 and single_ext_i0;
algo(49) <= l1_double_eg8_bptx_and;

-- 132 L1_SingleIsoEG12_BptxAND : EG12[EG-ISO_0xA] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_iso_eg12_bptx_and <= single_eg_i51 and single_ext_i0;
algo(55) <= l1_single_iso_eg12_bptx_and;

-- 134 L1_SingleIsoEG3_BptxAND : EG3[EG-ISO_0xA] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_iso_eg3_bptx_and <= single_eg_i49 and single_ext_i0;
algo(56) <= l1_single_iso_eg3_bptx_and;

-- 152 L1_SingleMu12_SingleEG7 : MU12[MU-QLTY_SNGL] AND EG7
l1_single_mu12_single_eg7 <= single_mu_i62 and single_eg_i44;
algo(37) <= l1_single_mu12_single_eg7;

-- 153 L1_SingleEG5_SingleJet28_MidEta2p7 : EG5 AND JET28[JET-ETA_2p7]
l1_single_eg5_single_jet28_mid_eta2p7 <= single_eg_i43 and single_jet_i55;
algo(50) <= l1_single_eg5_single_jet28_mid_eta2p7;

-- 154 L1_SingleEG5_SingleJet32_MidEta2p7 : EG5 AND JET32[JET-ETA_2p7]
l1_single_eg5_single_jet32_mid_eta2p7 <= single_eg_i43 and single_jet_i56;
algo(52) <= l1_single_eg5_single_jet32_mid_eta2p7;

-- 168 L1_SingleMu5_SingleEG12 : MU5[MU-QLTY_SNGL] AND EG12
l1_single_mu5_single_eg12 <= single_mu_i59 and single_eg_i45;
algo(41) <= l1_single_mu5_single_eg12;

-- 174 L1_NotETT20_MinimumBiasHF2_OR_BptxAND : ( NOT ETT20) AND (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_ett20_minimum_bias_hf2_or_bptx_and <= ( not single_ett_i97 ) and ( single_mbt1_hfp_i9 or single_mbt1_hfm_i10 ) and single_ext_i0;
algo(58) <= l1_not_ett20_minimum_bias_hf2_or_bptx_and;

-- 198 L1_SingleMu3_SingleJet40_MidEta2p7 : MU3[MU-QLTY_SNGL] AND JET40[JET-ETA_2p7]
l1_single_mu3_single_jet40_mid_eta2p7 <= single_mu_i54 and single_jet_i57;
algo(40) <= l1_single_mu3_single_jet40_mid_eta2p7;

-- 203 L1_SingleMu12 : MU12[MU-QLTY_SNGL]
l1_single_mu12 <= single_mu_i62;
algo(38) <= l1_single_mu12;

-- 204 L1_SingleMu12_BptxAND : MU12[MU-QLTY_SNGL] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu12_bptx_and <= single_mu_i62 and single_ext_i0;
algo(42) <= l1_single_mu12_bptx_and;

-- 206 L1_SingleMu16 : MU16[MU-QLTY_SNGL]
l1_single_mu16 <= single_mu_i77;
algo(43) <= l1_single_mu16;

-- 207 L1_SingleMu16_BptxAND : MU16[MU-QLTY_SNGL] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu16_bptx_and <= single_mu_i77 and single_ext_i0;
algo(44) <= l1_single_mu16_bptx_and;

-- 213 L1_DoubleMuOpen_OS : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]}[CHGCOR_OS]
l1_double_mu_open_os <= double_mu_i80;
algo(35) <= l1_double_mu_open_os;

-- 214 L1_DoubleMuOpen_OS_BptxAND : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]}[CHGCOR_OS] AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu_open_os_bptx_and <= double_mu_i80 and single_ext_i0;
algo(36) <= l1_double_mu_open_os_bptx_and;

-- 220 L1_DoubleMu0_NotMinimumBiasHF2_OR : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND  NOT (MBT1HFP1 OR MBT1HFM1)
l1_double_mu0_not_minimum_bias_hf2_or <= double_mu_i82 and not ( single_mbt1_hfp_i9 or single_mbt1_hfm_i10 );
algo(18) <= l1_double_mu0_not_minimum_bias_hf2_or;

-- 221 L1_DoubleMu0_NotMinimumBiasHF2_AND : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND  NOT (MBT1HFP1 AND MBT1HFM1)
l1_double_mu0_not_minimum_bias_hf2_and <= double_mu_i82 and not ( single_mbt1_hfp_i9 and single_mbt1_hfm_i10 );
algo(0) <= l1_double_mu0_not_minimum_bias_hf2_and;

-- 227 L1_SingleMu7_BptxAND : MU7[MU-QLTY_SNGL] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu7_bptx_and <= single_mu_i61 and single_ext_i0;
algo(46) <= l1_single_mu7_bptx_and;

-- 238 L1_SingleMu5_BptxAND : MU5[MU-QLTY_SNGL] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu5_bptx_and <= single_mu_i59 and single_ext_i0;
algo(45) <= l1_single_mu5_bptx_and;

-- 260 L1_ETT5 : ETT5
l1_ett5 <= single_ett_i66;
algo(59) <= l1_ett5;

-- 262 L1_ETT5_NotMinimumBiasHF2_OR : ETT5 AND  NOT (MBT1HFP1 OR MBT1HFM1)
l1_ett5_not_minimum_bias_hf2_or <= single_ett_i66 and not ( single_mbt1_hfp_i9 or single_mbt1_hfm_i10 );
algo(22) <= l1_ett5_not_minimum_bias_hf2_or;

-- 263 L1_SingleMuOpen_NotMinimumBiasHF2_OR : MU0[MU-QLTY_OPEN] AND  NOT (MBT1HFP1 OR MBT1HFM1)
l1_single_mu_open_not_minimum_bias_hf2_or <= single_mu_i75 and not ( single_mbt1_hfp_i9 or single_mbt1_hfm_i10 );
algo(32) <= l1_single_mu_open_not_minimum_bias_hf2_or;

-- 264 L1_SingleMu0_NotMinimumBiasHF2_OR : MU0[MU-QLTY_SNGL] AND  NOT (MBT1HFP1 OR MBT1HFM1)
l1_single_mu0_not_minimum_bias_hf2_or <= single_mu_i76 and not ( single_mbt1_hfp_i9 or single_mbt1_hfm_i10 );
algo(12) <= l1_single_mu0_not_minimum_bias_hf2_or;

-- 265 L1_SingleMu3_NotMinimumBiasHF2_OR : MU3[MU-QLTY_SNGL] AND  NOT (MBT1HFP1 OR MBT1HFM1)
l1_single_mu3_not_minimum_bias_hf2_or <= single_mu_i54 and not ( single_mbt1_hfp_i9 or single_mbt1_hfm_i10 );
algo(25) <= l1_single_mu3_not_minimum_bias_hf2_or;

-- 266 L1_DoubleMuOpen_NotMinimumBiasHF2_OR : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]} AND  NOT (MBT1HFP1 OR MBT1HFM1)
l1_double_mu_open_not_minimum_bias_hf2_or <= double_mu_i78 and not ( single_mbt1_hfp_i9 or single_mbt1_hfm_i10 );
algo(16) <= l1_double_mu_open_not_minimum_bias_hf2_or;

-- 268 L1_SingleEG3_NotMinimumBiasHF2_OR : EG3 AND  NOT (MBT1HFP1 OR MBT1HFM1)
l1_single_eg3_not_minimum_bias_hf2_or <= single_eg_i42 and not ( single_mbt1_hfp_i9 or single_mbt1_hfm_i10 );
algo(9) <= l1_single_eg3_not_minimum_bias_hf2_or;

-- 269 L1_SingleEG5_NotMinimumBiasHF2_OR : EG5 AND  NOT (MBT1HFP1 OR MBT1HFM1)
l1_single_eg5_not_minimum_bias_hf2_or <= single_eg_i43 and not ( single_mbt1_hfp_i9 or single_mbt1_hfm_i10 );
algo(29) <= l1_single_eg5_not_minimum_bias_hf2_or;

-- 281 L1_SingleMu3_SingleJet28_MidEta2p7 : MU3[MU-QLTY_SNGL] AND JET28[JET-ETA_2p7]
l1_single_mu3_single_jet28_mid_eta2p7 <= single_mu_i54 and single_jet_i55;
algo(39) <= l1_single_mu3_single_jet28_mid_eta2p7;

-- 285 L1_NotMinimumBiasHF2_AND :  NOT (MBT1HFP1 AND MBT1HFM1)
l1_not_minimum_bias_hf2_and <= not ( single_mbt1_hfp_i9 and single_mbt1_hfm_i10 );
algo(21) <= l1_not_minimum_bias_hf2_and;

-- 286 L1_SingleMuOpen_NotMinimumBiasHF2_AND : MU0[MU-QLTY_OPEN] AND  NOT (MBT1HFP1 AND MBT1HFM1)
l1_single_mu_open_not_minimum_bias_hf2_and <= single_mu_i75 and not ( single_mbt1_hfp_i9 and single_mbt1_hfm_i10 );
algo(26) <= l1_single_mu_open_not_minimum_bias_hf2_and;

-- 289 L1_DoubleEG5 : comb{EG5,EG5}
l1_double_eg5 <= double_eg_i11;
algo(47) <= l1_double_eg5;

-- 300 L1_DoubleEG2_NotMinimumBiasHF2_OR : comb{EG2,EG2} AND  NOT (MBT1HFP1 OR MBT1HFM1)
l1_double_eg2_not_minimum_bias_hf2_or <= double_eg_i12 and not ( single_mbt1_hfp_i9 or single_mbt1_hfm_i10 );
algo(34) <= l1_double_eg2_not_minimum_bias_hf2_or;

-- 302 L1_DoubleEG5_NotMinimumBiasHF2_OR : comb{EG5,EG5} AND  NOT (MBT1HFP1 OR MBT1HFM1)
l1_double_eg5_not_minimum_bias_hf2_or <= double_eg_i11 and not ( single_mbt1_hfp_i9 or single_mbt1_hfm_i10 );
algo(33) <= l1_double_eg5_not_minimum_bias_hf2_or;

-- 327 L1_SingleMu0_NotMinimumBiasHF2_AND : MU0[MU-QLTY_SNGL] AND  NOT (MBT1HFP1 AND MBT1HFM1)
l1_single_mu0_not_minimum_bias_hf2_and <= single_mu_i76 and not ( single_mbt1_hfp_i9 and single_mbt1_hfm_i10 );
algo(8) <= l1_single_mu0_not_minimum_bias_hf2_and;

-- 330 L1_DoubleEG5_NotMinimumBiasHF2_AND : comb{EG5,EG5} AND  NOT (MBT1HFP1 AND MBT1HFM1)
l1_double_eg5_not_minimum_bias_hf2_and <= double_eg_i11 and not ( single_mbt1_hfp_i9 and single_mbt1_hfm_i10 );
algo(20) <= l1_double_eg5_not_minimum_bias_hf2_and;

-- 332 L1_DoubleEG2_NotMinimumBiasHF2_AND : comb{EG2,EG2} AND  NOT (MBT1HFP1 AND MBT1HFM1)
l1_double_eg2_not_minimum_bias_hf2_and <= double_eg_i12 and not ( single_mbt1_hfp_i9 and single_mbt1_hfm_i10 );
algo(15) <= l1_double_eg2_not_minimum_bias_hf2_and;

-- 334 L1_SingleEG5_NotMinimumBiasHF2_AND : EG5 AND  NOT (MBT1HFP1 AND MBT1HFM1)
l1_single_eg5_not_minimum_bias_hf2_and <= single_eg_i43 and not ( single_mbt1_hfp_i9 and single_mbt1_hfm_i10 );
algo(5) <= l1_single_eg5_not_minimum_bias_hf2_and;

-- 335 L1_SingleEG3_NotMinimumBiasHF2_AND : EG3 AND  NOT (MBT1HFP1 AND MBT1HFM1)
l1_single_eg3_not_minimum_bias_hf2_and <= single_eg_i42 and not ( single_mbt1_hfp_i9 and single_mbt1_hfm_i10 );
algo(6) <= l1_single_eg3_not_minimum_bias_hf2_and;

-- 343 L1_Castor4 : EXT_CASTOR_4
l1_castor4 <= single_ext_i88;
algo(69) <= l1_castor4;

-- 344 L1_Castor2 : EXT_CASTOR_2
l1_castor2 <= single_ext_i86;
algo(67) <= l1_castor2;

-- 345 L1_Castor3 : EXT_CASTOR_3
l1_castor3 <= single_ext_i87;
algo(68) <= l1_castor3;

-- 346 L1_Castor1 : EXT_CASTOR_1
l1_castor1 <= single_ext_i85;
algo(66) <= l1_castor1;

-- 381 L1_ETTAsym50_NotMinimumBiasHF2_OR_BptxAND : ASYMET50 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym50_not_minimum_bias_hf2_or_bptx_and <= single_asymet_i67 and not ( single_mbt1_hfp_i9 or single_mbt1_hfm_i10 ) and single_ext_i0;
algo(7) <= l1_ett_asym50_not_minimum_bias_hf2_or_bptx_and;

-- 382 L1_ETTAsym70_NotMinimumBiasHF2_OR_BptxAND : ASYMET70 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym70_not_minimum_bias_hf2_or_bptx_and <= single_asymet_i71 and not ( single_mbt1_hfp_i9 or single_mbt1_hfm_i10 ) and single_ext_i0;
algo(10) <= l1_ett_asym70_not_minimum_bias_hf2_or_bptx_and;

-- 402 L1_ETTAsym80 : ASYMET80
l1_ett_asym80 <= single_asymet_i72;
algo(65) <= l1_ett_asym80;

-- 403 L1_ETTAsym70 : ASYMET70
l1_ett_asym70 <= single_asymet_i71;
algo(64) <= l1_ett_asym70;

-- 404 L1_ETTAsym60 : ASYMET60
l1_ett_asym60 <= single_asymet_i69;
algo(63) <= l1_ett_asym60;

-- 405 L1_ETTAsym50 : ASYMET50
l1_ett_asym50 <= single_asymet_i67;
algo(61) <= l1_ett_asym50;

-- 406 L1_ETTAsym40 : ASYMET40
l1_ett_asym40 <= single_asymet_i84;
algo(60) <= l1_ett_asym40;

-- 408 L1_ETT5_ETTAsym40_NotMinimumBiasHF2_OR_BptxAND : ETT5 AND ASYMET40 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym40_not_minimum_bias_hf2_or_bptx_and <= single_ett_i66 and single_asymet_i84 and not ( single_mbt1_hfp_i9 or single_mbt1_hfm_i10 ) and single_ext_i0;
algo(3) <= l1_ett5_ett_asym40_not_minimum_bias_hf2_or_bptx_and;

-- 409 L1_ETT5_ETTAsym50_NotMinimumBiasHF2_OR_BptxAND : ETT5 AND ASYMET50 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym50_not_minimum_bias_hf2_or_bptx_and <= single_ett_i66 and single_asymet_i67 and not ( single_mbt1_hfp_i9 or single_mbt1_hfm_i10 ) and single_ext_i0;
algo(23) <= l1_ett5_ett_asym50_not_minimum_bias_hf2_or_bptx_and;

-- 410 L1_ETT5_ETTAsym60_NotMinimumBiasHF2_OR_BptxAND : ETT5 AND ASYMET60 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym60_not_minimum_bias_hf2_or_bptx_and <= single_ett_i66 and single_asymet_i69 and not ( single_mbt1_hfp_i9 or single_mbt1_hfm_i10 ) and single_ext_i0;
algo(1) <= l1_ett5_ett_asym60_not_minimum_bias_hf2_or_bptx_and;

-- 411 L1_ETT5_ETTAsym70_NotMinimumBiasHF2_OR_BptxAND : ETT5 AND ASYMET70 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym70_not_minimum_bias_hf2_or_bptx_and <= single_ett_i66 and single_asymet_i71 and not ( single_mbt1_hfp_i9 or single_mbt1_hfm_i10 ) and single_ext_i0;
algo(11) <= l1_ett5_ett_asym70_not_minimum_bias_hf2_or_bptx_and;

-- 412 L1_ETT5_ETTAsym80_NotMinimumBiasHF2_OR_BptxAND : ETT5 AND ASYMET80 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym80_not_minimum_bias_hf2_or_bptx_and <= single_ett_i66 and single_asymet_i72 and not ( single_mbt1_hfp_i9 or single_mbt1_hfm_i10 ) and single_ext_i0;
algo(17) <= l1_ett5_ett_asym80_not_minimum_bias_hf2_or_bptx_and;

-- 416 L1_ETT5_ETTAsym50_BptxAND : ETT5 AND ASYMET50 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym50_bptx_and <= single_ett_i66 and single_asymet_i67 and single_ext_i0;
algo(31) <= l1_ett5_ett_asym50_bptx_and;

-- 418 L1_ETTAsym50_BptxAND : ASYMET50 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym50_bptx_and <= single_asymet_i67 and single_ext_i0;
algo(62) <= l1_ett_asym50_bptx_and;

-- 421 L1_ETTAsym60_NotMinimumBiasHF2_OR_BptxAND : ASYMET60 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym60_not_minimum_bias_hf2_or_bptx_and <= single_asymet_i69 and not ( single_mbt1_hfp_i9 or single_mbt1_hfm_i10 ) and single_ext_i0;
algo(30) <= l1_ett_asym60_not_minimum_bias_hf2_or_bptx_and;

-- 422 L1_ETTAsym80_NotMinimumBiasHF2_OR_BptxAND : ASYMET80 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym80_not_minimum_bias_hf2_or_bptx_and <= single_asymet_i72 and not ( single_mbt1_hfp_i9 or single_mbt1_hfm_i10 ) and single_ext_i0;
algo(13) <= l1_ett_asym80_not_minimum_bias_hf2_or_bptx_and;

-- 423 L1_ETTAsym40_NotMinimumBiasHF2_OR_BptxAND : ASYMET40 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym40_not_minimum_bias_hf2_or_bptx_and <= single_asymet_i84 and not ( single_mbt1_hfp_i9 or single_mbt1_hfm_i10 ) and single_ext_i0;
algo(14) <= l1_ett_asym40_not_minimum_bias_hf2_or_bptx_and;

-- 473 L1_SingleEG5 : EG5
l1_single_eg5 <= single_eg_i43;
algo(51) <= l1_single_eg5;

-- 476 L1_SingleEG7_BptxAND : EG7 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg7_bptx_and <= single_eg_i44 and single_ext_i0;
algo(54) <= l1_single_eg7_bptx_and;


-- ========================================================