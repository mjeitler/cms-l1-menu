-- ========================================================
-- from VHDL producer:

-- Module ID: 3

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

-- External condition assignment
single_ext_i156 <= ext_cond_bx_0(57); -- single_ext_i156
single_ext_i158 <= ext_cond_bx_0(58); -- single_ext_i158
single_ext_i35 <= ext_cond_bx_0(4); -- single_ext_i35
-- Instantiations of muon charge correlations - only once for a certain Bx combination, if there is at least one DoubleMuon, TripleMuon, QuadMuon condition
-- or muon-muon correlation condition.
    muon_charge_correlations_bx_0_bx_0_i: entity work.muon_charge_correlations
        port map(mu_bx_0, mu_bx_0,
            ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
            ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
            ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);

-- Instantiations of eta and phi conversion to muon scale for calo-muon and muon-esums correlation conditions (used for DETA, DPHI, DR and mass) - once for every calo ObjectType in certain Bx used in correlation conditions

-- Instantiations of pt, eta, phi, cos-phi and sin-phi for correlation conditions (used for DETA, DPHI, DR, mass, overlap_remover and b_tagging) - once for every ObjectType in certain Bx used in correlation conditions
    jet_data_bx_0_l: for i in 0 to NR_JET_OBJECTS-1 generate
        jet_pt_vector_bx_0(i)(JET_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(JET_PT_LUT(CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.et_high downto D_S_I_JET_V2.et_low))), JET_PT_VECTOR_WIDTH);
        jet_eta_integer_bx_0(i) <= CONV_INTEGER(signed(jet_bx_0(i)(D_S_I_JET_V2.eta_high downto D_S_I_JET_V2.eta_low)));
        jet_phi_integer_bx_0(i) <= CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.phi_high downto D_S_I_JET_V2.phi_low));
        jet_cos_phi_bx_0(i) <= CALO_COS_PHI_LUT(CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.phi_high downto D_S_I_JET_V2.phi_low)));
        jet_sin_phi_bx_0(i) <= CALO_SIN_PHI_LUT(CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.phi_high downto D_S_I_JET_V2.phi_low)));
        conv_jet_cos_phi_bx_0(i) <= MUON_COS_PHI_LUT(jet_phi_conv_2_muon_phi_integer_bx_0(i));
        conv_jet_sin_phi_bx_0(i) <= MUON_SIN_PHI_LUT(jet_phi_conv_2_muon_phi_integer_bx_0(i));
    end generate jet_data_bx_0_l;
    eg_data_bx_0_l: for i in 0 to NR_EG_OBJECTS-1 generate
        eg_pt_vector_bx_0(i)(EG_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(EG_PT_LUT(CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.et_high downto D_S_I_EG_V2.et_low))), EG_PT_VECTOR_WIDTH);
        eg_eta_integer_bx_0(i) <= CONV_INTEGER(signed(eg_bx_0(i)(D_S_I_EG_V2.eta_high downto D_S_I_EG_V2.eta_low)));
        eg_phi_integer_bx_0(i) <= CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.phi_high downto D_S_I_EG_V2.phi_low));
        eg_cos_phi_bx_0(i) <= CALO_COS_PHI_LUT(CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.phi_high downto D_S_I_EG_V2.phi_low)));
        eg_sin_phi_bx_0(i) <= CALO_SIN_PHI_LUT(CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.phi_high downto D_S_I_EG_V2.phi_low)));
        conv_eg_cos_phi_bx_0(i) <= MUON_COS_PHI_LUT(eg_phi_conv_2_muon_phi_integer_bx_0(i));
        conv_eg_sin_phi_bx_0(i) <= MUON_SIN_PHI_LUT(eg_phi_conv_2_muon_phi_integer_bx_0(i));
    end generate eg_data_bx_0_l;

-- Instantiations of differences for correlation conditions (used for DETA, DPHI, DR, mass and b_tagging) - once for correlation conditions with two ObjectTypes in certain Bxs
    diff_eg_jet_eta_bx_0_bx_0_i: entity work.sub_eta_integer_obj_vs_obj
        generic map(NR_EG_OBJECTS, NR_JET_OBJECTS)
        port map(eg_eta_integer_bx_0, jet_eta_integer_bx_0, diff_eg_jet_bx_0_bx_0_eta_integer);
    diff_eg_jet_phi_bx_0_bx_0_i: entity work.sub_phi_integer_obj_vs_obj
        generic map(NR_EG_OBJECTS, NR_JET_OBJECTS, CALO_PHI_HALF_RANGE_BINS)
        port map(eg_phi_integer_bx_0, jet_phi_integer_bx_0, diff_eg_jet_bx_0_bx_0_phi_integer);
    eg_jet_bx_0_bx_0_l1: for i in 0 to NR_EG_OBJECTS-1 generate
        eg_jet_bx_0_bx_0_l2: for j in 0 to NR_JET_OBJECTS-1 generate
            diff_eg_jet_bx_0_bx_0_eta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_JET_DIFF_ETA_LUT(diff_eg_jet_bx_0_bx_0_eta_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
            diff_eg_jet_bx_0_bx_0_phi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_JET_DIFF_PHI_LUT(diff_eg_jet_bx_0_bx_0_phi_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
        end generate eg_jet_bx_0_bx_0_l2;
    end generate eg_jet_bx_0_bx_0_l1;

-- Instantiations of cosh-deta and cos-dphi LUTs for correlation conditions (used for mass and overlap_remover) - once for correlation conditions with two ObjectTypes in certain Bxs
    eg_jet_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_EG_OBJECTS-1 generate
        eg_jet_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_JET_OBJECTS-1 generate
            eg_jet_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_JET_COSH_DETA_LUT(diff_eg_jet_bx_0_bx_0_eta_integer(i,j)), EG_JET_COSH_COS_VECTOR_WIDTH);
            eg_jet_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_JET_COS_DPHI_LUT(diff_eg_jet_bx_0_bx_0_phi_integer(i,j)), EG_JET_COSH_COS_VECTOR_WIDTH);
        end generate eg_jet_bx_0_bx_0_cosh_cos_l2;
    end generate eg_jet_bx_0_bx_0_cosh_cos_l1;

-- Instantiations of conditions
double_eg_i102_i: entity work.calo_conditions_v7_no_quad
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
        double_eg_i102);


double_eg_i103_i: entity work.calo_conditions_v7_no_quad
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
        double_eg_i103);


double_eg_i154_i: entity work.calo_conditions_v7_no_quad
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
        double_eg_i154);


double_eg_i155_i: entity work.calo_conditions_v7_no_quad
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
        double_eg_i155);


single_eg_i111_i: entity work.calo_conditions_v7_no_quad
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
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, eg_bx_0,
        single_eg_i111);


single_eg_i84_i: entity work.calo_conditions_v7_no_quad
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
        single_eg_i84);


single_eg_i85_i: entity work.calo_conditions_v7_no_quad
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
        single_eg_i85);


single_jet_i13_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0078", X"0000", X"0000", X"0000"),
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
        single_jet_i13);


single_jet_i52_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0010", X"0000", X"0000", X"0000"),
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
        single_jet_i52);


single_jet_i65_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0010", X"0000", X"0000", X"0000"),
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
        single_jet_i65);


single_jet_i66_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0010", X"0000", X"0000", X"0000"),
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
        single_jet_i66);


single_jet_i71_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i71);


single_jet_i72_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i72);


double_mu_i112_i: entity work.muon_conditions_v7
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
        double_mu_i112,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


double_mu_i114_i: entity work.muon_conditions_v7
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
        double_mu_i114,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


double_mu_i119_i: entity work.muon_conditions_v7
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
        double_mu_i119,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


single_mu_i1_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"0001", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0049", X"0000", X"0000", X"0000"), (X"01B7", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
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
        single_mu_i1);


single_mu_i104_i: entity work.muon_conditions_v7
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
        single_mu_i104);


single_mu_i106_i: entity work.muon_conditions_v7
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
        single_mu_i106);


single_mu_i148_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"002D", X"0000", X"0000", X"0000"),
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
        single_mu_i148);


single_mu_i40_i: entity work.muon_conditions_v7
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
        single_mu_i40);


single_mu_i41_i: entity work.muon_conditions_v7
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
        single_mu_i41);


single_mu_i6_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"0001", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"00E1", X"0000", X"0000", X"0000"), (X"0073", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"018D", X"0000", X"0000", X"0000"), (X"011F", X"0000", X"0000", X"0000"),
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
        single_mu_i6);


single_asymet_i122_i: entity work.esums_conditions
    generic map(true, ASYMET_TYPE,
        X"0028",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, asymet_bx_0, single_asymet_i122);


single_asymet_i123_i: entity work.esums_conditions
    generic map(true, ASYMET_TYPE,
        X"0032",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, asymet_bx_0, single_asymet_i123);


single_asymet_i124_i: entity work.esums_conditions
    generic map(true, ASYMET_TYPE,
        X"003C",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, asymet_bx_0, single_asymet_i124);


single_asymet_i125_i: entity work.esums_conditions
    generic map(true, ASYMET_TYPE,
        X"0046",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, asymet_bx_0, single_asymet_i125);


single_asymet_i126_i: entity work.esums_conditions
    generic map(true, ASYMET_TYPE,
        X"0050",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, asymet_bx_0, single_asymet_i126);


single_ett_i121_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"000A",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i121);


single_ett_i129_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"00A0",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i129);


single_ett_i131_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"00BE",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i131);


single_ett_i133_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"00DC",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i133);


single_ett_i134_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0064",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i134);


single_ett_i138_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0028",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i138);


single_ett_i140_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"012C",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i140);


single_ett_i170_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0078",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i170);


single_ett_i171_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0082",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i171);


calo_calo_correlation_i152_i: entity work.calo_calo_correlation_condition_v4
    generic map(
        true,
        false, false, true, false, 0, false,
        0, 11, true, EG_TYPE,
        X"001E",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        0, 11, true, JET_TYPE,
        X"0070",
        false, X"003D", X"00C2",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        X"00000000", X"00000000",
        X"00000000", X"00000000",
        X"00000000084CA240", X"0000000000027100",
        X"0000000000000000", X"0000000000000000",
        EG_PT_VECTOR_WIDTH, JET_PT_VECTOR_WIDTH, EG_JET_COSH_COS_PRECISION, EG_JET_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", CALO_SIN_COS_VECTOR_WIDTH, EG_JET_SIN_COS_PRECISION
    )
    port map(lhc_clk, eg_bx_0, jet_bx_0,
        diff_eg_jet_bx_0_bx_0_eta_vector, diff_eg_jet_bx_0_bx_0_phi_vector,
        eg_pt_vector_bx_0, jet_pt_vector_bx_0,
        eg_jet_bx_0_bx_0_cosh_deta_vector, eg_jet_bx_0_bx_0_cos_dphi_vector,
        eg_cos_phi_bx_0, jet_cos_phi_bx_0, eg_sin_phi_bx_0, jet_sin_phi_bx_0,
        calo_calo_correlation_i152);

calo_calo_correlation_i163_i: entity work.calo_calo_correlation_condition_v4
    generic map(
        true,
        false, false, true, false, 0, false,
        0, 11, true, EG_TYPE,
        X"0018",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        0, 11, true, JET_TYPE,
        X"0038",
        false, X"003D", X"00C2",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        X"00000000", X"00000000",
        X"00000000", X"00000000",
        X"00000000084CA240", X"0000000000027100",
        X"0000000000000000", X"0000000000000000",
        EG_PT_VECTOR_WIDTH, JET_PT_VECTOR_WIDTH, EG_JET_COSH_COS_PRECISION, EG_JET_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", CALO_SIN_COS_VECTOR_WIDTH, EG_JET_SIN_COS_PRECISION
    )
    port map(lhc_clk, eg_bx_0, jet_bx_0,
        diff_eg_jet_bx_0_bx_0_eta_vector, diff_eg_jet_bx_0_bx_0_phi_vector,
        eg_pt_vector_bx_0, jet_pt_vector_bx_0,
        eg_jet_bx_0_bx_0_cosh_deta_vector, eg_jet_bx_0_bx_0_cos_dphi_vector,
        eg_cos_phi_bx_0, jet_cos_phi_bx_0, eg_sin_phi_bx_0, jet_sin_phi_bx_0,
        calo_calo_correlation_i163);

single_mbt1_hfm_i44_i: entity work.min_bias_hf_conditions
    generic map(true, MBT1HFM_TYPE, X"1")
    port map(lhc_clk, mbt1hfm_bx_0, single_mbt1_hfm_i44);


single_mbt1_hfp_i43_i: entity work.min_bias_hf_conditions
    generic map(true, MBT1HFP_TYPE, X"1")
    port map(lhc_clk, mbt1hfp_bx_0, single_mbt1_hfp_i43);


-- Instantiations of algorithms

-- 1 L1_SingleMuCosmics_BMTF : MU0[MU-ETA_BMTF]
l1_single_mu_cosmics_bmtf <= single_mu_i1;
algo(55) <= l1_single_mu_cosmics_bmtf;

-- 9 L1_SingleMu0_EMTF : MU0[MU-QLTY_SNGL,MU-ETA_EMTF_POS,MU-ETA_EMTF_NEG]
l1_single_mu0_emtf <= single_mu_i6;
algo(53) <= l1_single_mu0_emtf;

-- 22 L1_SingleMu22_OMTF : MU22[MU-QLTY_SNGL,MU-ETA_OMTF_POS,MU-ETA_OMTF_NEG]
l1_single_mu22_omtf <= single_mu_i148;
algo(54) <= l1_single_mu22_omtf;

-- 27 L1_DoubleMuOpen_NotMinimumBiasHF2_AND_BptxAND : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]} AND  NOT (MBT1HFP1 AND MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu_open_not_minimum_bias_hf2_and_bptx_and <= double_mu_i112 and not ( single_mbt1_hfp_i43 and single_mbt1_hfm_i44 ) and single_ext_i35;
algo(30) <= l1_double_mu_open_not_minimum_bias_hf2_and_bptx_and;

-- 48 L1_SingleJet8 : JET8
l1_single_jet8 <= single_jet_i52;
algo(47) <= l1_single_jet8;

-- 199 L1_SingleMuOpen_NotMinimumBiasHF2_OR_BptxAND : MU0[MU-QLTY_OPEN] AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu_open_not_minimum_bias_hf2_or_bptx_and <= single_mu_i41 and not ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 ) and single_ext_i35;
algo(38) <= l1_single_mu_open_not_minimum_bias_hf2_or_bptx_and;

-- 200 L1_SingleMu0_NotMinimumBiasHF2_OR_BptxAND : MU0[MU-QLTY_SNGL] AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu0_not_minimum_bias_hf2_or_bptx_and <= single_mu_i104 and not ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 ) and single_ext_i35;
algo(13) <= l1_single_mu0_not_minimum_bias_hf2_or_bptx_and;

-- 201 L1_SingleMu3_NotMinimumBiasHF2_OR_BptxAND : MU3[MU-QLTY_SNGL] AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu3_not_minimum_bias_hf2_or_bptx_and <= single_mu_i40 and not ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 ) and single_ext_i35;
algo(28) <= l1_single_mu3_not_minimum_bias_hf2_or_bptx_and;

-- 202 L1_SingleMuOpen_NotMinimumBiasHF2_AND_BptxAND : MU0[MU-QLTY_OPEN] AND  NOT (MBT1HFP1 AND MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu_open_not_minimum_bias_hf2_and_bptx_and <= single_mu_i41 and not ( single_mbt1_hfp_i43 and single_mbt1_hfm_i44 ) and single_ext_i35;
algo(19) <= l1_single_mu_open_not_minimum_bias_hf2_and_bptx_and;

-- 203 L1_SingleMu0_NotMinimumBiasHF2_AND_BptxAND : MU0[MU-QLTY_SNGL] AND  NOT (MBT1HFP1 AND MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu0_not_minimum_bias_hf2_and_bptx_and <= single_mu_i104 and not ( single_mbt1_hfp_i43 and single_mbt1_hfm_i44 ) and single_ext_i35;
algo(26) <= l1_single_mu0_not_minimum_bias_hf2_and_bptx_and;

-- 225 L1_SingleMu7_SingleEG10_BptxAND : MU7[MU-QLTY_SNGL] AND EG10 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu7_single_eg10_bptx_and <= single_mu_i106 and single_eg_i111 and single_ext_i35;
algo(56) <= l1_single_mu7_single_eg10_bptx_and;

-- 232 L1_DoubleMuOpen_BptxAND : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]} AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu_open_bptx_and <= double_mu_i112 and single_ext_i35;
algo(57) <= l1_double_mu_open_bptx_and;

-- 233 L1_DoubleMuOpen_OS_BptxAND : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]}[CHGCOR_OS] AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu_open_os_bptx_and <= double_mu_i114 and single_ext_i35;
algo(58) <= l1_double_mu_open_os_bptx_and;

-- 244 L1_DoubleMuOpen_NotMinimumBiasHF2_OR_BptxAND : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]} AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu_open_not_minimum_bias_hf2_or_bptx_and <= double_mu_i112 and not ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 ) and single_ext_i35;
algo(15) <= l1_double_mu_open_not_minimum_bias_hf2_or_bptx_and;

-- 245 L1_DoubleMu0_NotMinimumBiasHF2_OR_BptxAND : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu0_not_minimum_bias_hf2_or_bptx_and <= double_mu_i119 and not ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 ) and single_ext_i35;
algo(2) <= l1_double_mu0_not_minimum_bias_hf2_or_bptx_and;

-- 246 L1_DoubleMu0_NotMinimumBiasHF2_AND_BptxAND : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND  NOT (MBT1HFP1 AND MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu0_not_minimum_bias_hf2_and_bptx_and <= double_mu_i119 and not ( single_mbt1_hfp_i43 and single_mbt1_hfm_i44 ) and single_ext_i35;
algo(23) <= l1_double_mu0_not_minimum_bias_hf2_and_bptx_and;

-- 269 L1_SingleJet60_BptxAND : JET60 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet60_bptx_and <= single_jet_i13 and single_ext_i35;
algo(46) <= l1_single_jet60_bptx_and;

-- 274 L1_SingleJet8_FWD_BptxAND : (JET8[JET-ETA_FWD_2p7_NEG] OR JET8[JET-ETA_FWD_2p7_POS]) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet8_fwd_bptx_and <= ( single_jet_i65 or single_jet_i66 ) and single_ext_i35;
algo(52) <= l1_single_jet8_fwd_bptx_and;

-- 277 L1_SingleJet36_FWD_BptxAND : (JET36[JET-ETA_FWD_2p7_NEG] OR JET36[JET-ETA_FWD_2p7_POS]) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet36_fwd_bptx_and <= ( single_jet_i71 or single_jet_i72 ) and single_ext_i35;
algo(51) <= l1_single_jet36_fwd_bptx_and;

-- 358 L1_SingleEG3_NotMinimumBiasHF2_OR_BptxAND : EG3 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg3_not_minimum_bias_hf2_or_bptx_and <= single_eg_i84 and not ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 ) and single_ext_i35;
algo(44) <= l1_single_eg3_not_minimum_bias_hf2_or_bptx_and;

-- 359 L1_SingleEG5_NotMinimumBiasHF2_OR_BptxAND : EG5 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg5_not_minimum_bias_hf2_or_bptx_and <= single_eg_i85 and not ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 ) and single_ext_i35;
algo(9) <= l1_single_eg5_not_minimum_bias_hf2_or_bptx_and;

-- 360 L1_SingleEG3_NotMinimumBiasHF2_AND_BptxAND : EG3 AND  NOT (MBT1HFP1 AND MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg3_not_minimum_bias_hf2_and_bptx_and <= single_eg_i84 and not ( single_mbt1_hfp_i43 and single_mbt1_hfm_i44 ) and single_ext_i35;
algo(35) <= l1_single_eg3_not_minimum_bias_hf2_and_bptx_and;

-- 361 L1_SingleEG5_NotMinimumBiasHF2_AND_BptxAND : EG5 AND  NOT (MBT1HFP1 AND MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg5_not_minimum_bias_hf2_and_bptx_and <= single_eg_i85 and not ( single_mbt1_hfp_i43 and single_mbt1_hfm_i44 ) and single_ext_i35;
algo(10) <= l1_single_eg5_not_minimum_bias_hf2_and_bptx_and;

-- 384 L1_SingleEG12_SingleJet28_MidEta2p7_MinDr0p4_BptxAND : dist{EG12,JET28[JET-ETA_2p7]}[DR_MIN_0p4] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg12_single_jet28_mid_eta2p7_min_dr0p4_bptx_and <= calo_calo_correlation_i163 and single_ext_i35;
algo(59) <= l1_single_eg12_single_jet28_mid_eta2p7_min_dr0p4_bptx_and;

-- 394 L1_SingleEG15_SingleJet56_MidEta2p7_MinDr0p4_BptxAND : dist{EG15,JET56[JET-ETA_2p7]}[DR_MIN_0p4] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg15_single_jet56_mid_eta2p7_min_dr0p4_bptx_and <= calo_calo_correlation_i152 and single_ext_i35;
algo(60) <= l1_single_eg15_single_jet56_mid_eta2p7_min_dr0p4_bptx_and;

-- 397 L1_DoubleEG5_BptxAND : comb{EG5,EG5} AND EXT_ZeroBias_BPTX_AND_VME
l1_double_eg5_bptx_and <= double_eg_i103 and single_ext_i35;
algo(49) <= l1_double_eg5_bptx_and;

-- 398 L1_DoubleEG8_BptxAND : comb{EG8,EG8} AND EXT_ZeroBias_BPTX_AND_VME
l1_double_eg8_bptx_and <= double_eg_i154 and single_ext_i35;
algo(50) <= l1_double_eg8_bptx_and;

-- 399 L1_DoubleEG10_BptxAND : comb{EG10,EG10} AND EXT_ZeroBias_BPTX_AND_VME
l1_double_eg10_bptx_and <= double_eg_i155 and single_ext_i35;
algo(48) <= l1_double_eg10_bptx_and;

-- 400 L1_DoubleEG2_NotMinimumBiasHF2_OR_BptxAND : comb{EG2,EG2} AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_eg2_not_minimum_bias_hf2_or_bptx_and <= double_eg_i102 and not ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 ) and single_ext_i35;
algo(16) <= l1_double_eg2_not_minimum_bias_hf2_or_bptx_and;

-- 401 L1_DoubleEG5_NotMinimumBiasHF2_OR_BptxAND : comb{EG5,EG5} AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_eg5_not_minimum_bias_hf2_or_bptx_and <= double_eg_i103 and not ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 ) and single_ext_i35;
algo(1) <= l1_double_eg5_not_minimum_bias_hf2_or_bptx_and;

-- 402 L1_DoubleEG2_NotMinimumBiasHF2_AND_BptxAND : comb{EG2,EG2} AND  NOT (MBT1HFP1 AND MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_eg2_not_minimum_bias_hf2_and_bptx_and <= double_eg_i102 and not ( single_mbt1_hfp_i43 and single_mbt1_hfm_i44 ) and single_ext_i35;
algo(40) <= l1_double_eg2_not_minimum_bias_hf2_and_bptx_and;

-- 403 L1_DoubleEG5_NotMinimumBiasHF2_AND_BptxAND : comb{EG5,EG5} AND  NOT (MBT1HFP1 AND MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_eg5_not_minimum_bias_hf2_and_bptx_and <= double_eg_i103 and not ( single_mbt1_hfp_i43 and single_mbt1_hfm_i44 ) and single_ext_i35;
algo(39) <= l1_double_eg5_not_minimum_bias_hf2_and_bptx_and;

-- 424 L1_ETTAsym40_NotMinimumBiasHF2_OR_BptxAND : ASYMET40 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym40_not_minimum_bias_hf2_or_bptx_and <= single_asymet_i122 and not ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 ) and single_ext_i35;
algo(6) <= l1_ett_asym40_not_minimum_bias_hf2_or_bptx_and;

-- 425 L1_ETTAsym50_NotMinimumBiasHF2_OR_BptxAND : ASYMET50 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym50_not_minimum_bias_hf2_or_bptx_and <= single_asymet_i123 and not ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 ) and single_ext_i35;
algo(18) <= l1_ett_asym50_not_minimum_bias_hf2_or_bptx_and;

-- 426 L1_ETTAsym60_NotMinimumBiasHF2_OR_BptxAND : ASYMET60 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym60_not_minimum_bias_hf2_or_bptx_and <= single_asymet_i124 and not ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 ) and single_ext_i35;
algo(33) <= l1_ett_asym60_not_minimum_bias_hf2_or_bptx_and;

-- 427 L1_ETTAsym70_NotMinimumBiasHF2_OR_BptxAND : ASYMET70 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym70_not_minimum_bias_hf2_or_bptx_and <= single_asymet_i125 and not ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 ) and single_ext_i35;
algo(24) <= l1_ett_asym70_not_minimum_bias_hf2_or_bptx_and;

-- 428 L1_ETTAsym80_NotMinimumBiasHF2_OR_BptxAND : ASYMET80 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym80_not_minimum_bias_hf2_or_bptx_and <= single_asymet_i126 and not ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 ) and single_ext_i35;
algo(36) <= l1_ett_asym80_not_minimum_bias_hf2_or_bptx_and;

-- 441 L1_ETT5_ETTAsym50_NotMinimumBiasHF2_OR_BptxAND : ETT5 AND ASYMET50 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym50_not_minimum_bias_hf2_or_bptx_and <= single_ett_i121 and single_asymet_i123 and not ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 ) and single_ext_i35;
algo(31) <= l1_ett5_ett_asym50_not_minimum_bias_hf2_or_bptx_and;

-- 451 L1_ETT50_ETTAsym40_MinimumBiasHF2_OR_BptxAND : ETT50 AND ASYMET40 AND (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett50_ett_asym40_minimum_bias_hf2_or_bptx_and <= single_ett_i134 and single_asymet_i122 and ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 ) and single_ext_i35;
algo(21) <= l1_ett50_ett_asym40_minimum_bias_hf2_or_bptx_and;

-- 452 L1_ETT50_ETTAsym50_MinimumBiasHF2_OR_BptxAND : ETT50 AND ASYMET50 AND (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett50_ett_asym50_minimum_bias_hf2_or_bptx_and <= single_ett_i134 and single_asymet_i123 and ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 ) and single_ext_i35;
algo(27) <= l1_ett50_ett_asym50_minimum_bias_hf2_or_bptx_and;

-- 454 L1_ETT50_ETTAsym60_MinimumBiasHF2_OR_BptxAND : ETT50 AND ASYMET60 AND (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett50_ett_asym60_minimum_bias_hf2_or_bptx_and <= single_ett_i134 and single_asymet_i124 and ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 ) and single_ext_i35;
algo(3) <= l1_ett50_ett_asym60_minimum_bias_hf2_or_bptx_and;

-- 456 L1_ETT50_ETTAsym70_MinimumBiasHF2_OR_BptxAND : ETT50 AND ASYMET70 AND (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett50_ett_asym70_minimum_bias_hf2_or_bptx_and <= single_ett_i134 and single_asymet_i125 and ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 ) and single_ext_i35;
algo(43) <= l1_ett50_ett_asym70_minimum_bias_hf2_or_bptx_and;

-- 457 L1_ETT50_ETTAsym80_MinimumBiasHF2_OR_BptxAND : ETT50 AND ASYMET80 AND (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett50_ett_asym80_minimum_bias_hf2_or_bptx_and <= single_ett_i134 and single_asymet_i126 and ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 ) and single_ext_i35;
algo(4) <= l1_ett50_ett_asym80_minimum_bias_hf2_or_bptx_and;

-- 458 L1_ETT50_ETTAsym40_NotMinimumBiasHF2_OR_BptxAND : ETT50 AND ASYMET40 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett50_ett_asym40_not_minimum_bias_hf2_or_bptx_and <= single_ett_i134 and single_asymet_i122 and not ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 ) and single_ext_i35;
algo(20) <= l1_ett50_ett_asym40_not_minimum_bias_hf2_or_bptx_and;

-- 459 L1_ETT50_ETTAsym50_NotMinimumBiasHF2_OR_BptxAND : ETT50 AND ASYMET50 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett50_ett_asym50_not_minimum_bias_hf2_or_bptx_and <= single_ett_i134 and single_asymet_i123 and not ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 ) and single_ext_i35;
algo(14) <= l1_ett50_ett_asym50_not_minimum_bias_hf2_or_bptx_and;

-- 460 L1_ETT50_ETTAsym60_NotMinimumBiasHF2_OR_BptxAND : ETT50 AND ASYMET60 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett50_ett_asym60_not_minimum_bias_hf2_or_bptx_and <= single_ett_i134 and single_asymet_i124 and not ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 ) and single_ext_i35;
algo(42) <= l1_ett50_ett_asym60_not_minimum_bias_hf2_or_bptx_and;

-- 461 L1_ETT50_ETTAsym70_NotMinimumBiasHF2_OR_BptxAND : ETT50 AND ASYMET70 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett50_ett_asym70_not_minimum_bias_hf2_or_bptx_and <= single_ett_i134 and single_asymet_i125 and not ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 ) and single_ext_i35;
algo(12) <= l1_ett50_ett_asym70_not_minimum_bias_hf2_or_bptx_and;

-- 462 L1_ETT50_ETTAsym80_NotMinimumBiasHF2_OR_BptxAND : ETT50 AND ASYMET80 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett50_ett_asym80_not_minimum_bias_hf2_or_bptx_and <= single_ett_i134 and single_asymet_i126 and not ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 ) and single_ext_i35;
algo(7) <= l1_ett50_ett_asym80_not_minimum_bias_hf2_or_bptx_and;

-- 464 L1_ETT60_ETTAsym60_MinimumBiasHF2_OR_BptxAND : ETT60 AND ASYMET60 AND (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett60_ett_asym60_minimum_bias_hf2_or_bptx_and <= single_ett_i170 and single_asymet_i124 and ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 ) and single_ext_i35;
algo(41) <= l1_ett60_ett_asym60_minimum_bias_hf2_or_bptx_and;

-- 466 L1_ETT65_ETTAsym70_MinimumBiasHF2_OR_BptxAND : ETT65 AND ASYMET70 AND (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett65_ett_asym70_minimum_bias_hf2_or_bptx_and <= single_ett_i171 and single_asymet_i125 and ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 ) and single_ext_i35;
algo(5) <= l1_ett65_ett_asym70_minimum_bias_hf2_or_bptx_and;

-- 467 L1_ETT65_ETTAsym80_MinimumBiasHF2_OR_BptxAND : ETT65 AND ASYMET80 AND (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett65_ett_asym80_minimum_bias_hf2_or_bptx_and <= single_ett_i171 and single_asymet_i126 and ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 ) and single_ext_i35;
algo(22) <= l1_ett65_ett_asym80_minimum_bias_hf2_or_bptx_and;

-- 481 L1_NotETT20_MinimumBiasHF2_OR_BptxAND : ( NOT ETT20) AND (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_ett20_minimum_bias_hf2_or_bptx_and <= ( not single_ett_i138 ) and ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 ) and single_ext_i35;
algo(45) <= l1_not_ett20_minimum_bias_hf2_or_bptx_and;

-- 482 L1_NotETT80_MinimumBiasHF2_OR_BptxAND : ( NOT ETT80) AND (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_ett80_minimum_bias_hf2_or_bptx_and <= ( not single_ett_i129 ) and ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 ) and single_ext_i35;
algo(8) <= l1_not_ett80_minimum_bias_hf2_or_bptx_and;

-- 483 L1_NotETT95_MinimumBiasHF2_OR_BptxAND : ( NOT ETT95) AND (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_ett95_minimum_bias_hf2_or_bptx_and <= ( not single_ett_i131 ) and ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 ) and single_ext_i35;
algo(17) <= l1_not_ett95_minimum_bias_hf2_or_bptx_and;

-- 492 L1_NotETT110_MinimumBiasHF2_OR_BptxAND : ( NOT ETT110) AND (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_ett110_minimum_bias_hf2_or_bptx_and <= ( not single_ett_i133 ) and ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 ) and single_ext_i35;
algo(25) <= l1_not_ett110_minimum_bias_hf2_or_bptx_and;

-- 494 L1_NotETT150_MinimumBiasHF2_OR_BptxAND : ( NOT ETT150) AND (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_ett150_minimum_bias_hf2_or_bptx_and <= ( not single_ett_i140 ) and ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 ) and single_ext_i35;
algo(34) <= l1_not_ett150_minimum_bias_hf2_or_bptx_and;

-- 499 L1_CastorMediumJet_NotMinimumBiasHF2_OR_BptxAND : EXT_CASTOR_2 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_castor_medium_jet_not_minimum_bias_hf2_or_bptx_and <= single_ext_i156 and not ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 ) and single_ext_i35;
algo(29) <= l1_castor_medium_jet_not_minimum_bias_hf2_or_bptx_and;

-- 500 L1_CastorMediumJet_NotMinimumBiasHF2_AND_BptxAND : EXT_CASTOR_2 AND  NOT (MBT1HFP1 AND MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_castor_medium_jet_not_minimum_bias_hf2_and_bptx_and <= single_ext_i156 and not ( single_mbt1_hfp_i43 and single_mbt1_hfm_i44 ) and single_ext_i35;
algo(32) <= l1_castor_medium_jet_not_minimum_bias_hf2_and_bptx_and;

-- 508 L1_CastorHighJet_NotMinimumBiasHF2_AND_BptxAND : EXT_CASTOR_3 AND  NOT (MBT1HFP1 AND MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_castor_high_jet_not_minimum_bias_hf2_and_bptx_and <= single_ext_i158 and not ( single_mbt1_hfp_i43 and single_mbt1_hfm_i44 ) and single_ext_i35;
algo(0) <= l1_castor_high_jet_not_minimum_bias_hf2_and_bptx_and;

-- 509 L1_CastorHighJet_NotMinimumBiasHF2_OR_BptxAND : EXT_CASTOR_3 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_castor_high_jet_not_minimum_bias_hf2_or_bptx_and <= single_ext_i158 and not ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 ) and single_ext_i35;
algo(37) <= l1_castor_high_jet_not_minimum_bias_hf2_or_bptx_and;

-- 511 L1_CastorHighJet_OR_MinimumBiasHF2_AND_BptxAND : (EXT_CASTOR_3 OR (MBT1HFP1 AND MBT1HFM1)) AND EXT_ZeroBias_BPTX_AND_VME
l1_castor_high_jet_or_minimum_bias_hf2_and_bptx_and <= ( single_ext_i158 or ( single_mbt1_hfp_i43 and single_mbt1_hfm_i44 ) ) and single_ext_i35;
algo(11) <= l1_castor_high_jet_or_minimum_bias_hf2_and_bptx_and;


-- ========================================================