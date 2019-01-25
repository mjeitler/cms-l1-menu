-- ========================================================
-- from VHDL producer:

-- Module ID: 4

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_v4

-- Unique ID of L1 Trigger Menu:
-- 77c4c1a3-8e88-4e16-b904-f67e69239cf6

-- Unique ID of firmware implementation:
-- bee17521-369e-46ad-94a1-68752fcac3bc

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

-- External condition assignment
    single_ext_15141600570663550655 <= ext_cond_bx_0(18); -- single_ext_15141600570663550655
    single_ext_8736797827952386068 <= ext_cond_bx_0(10); -- single_ext_8736797827952386068
    single_ext_9960888781443116569 <= ext_cond_bx_0(3); -- single_ext_9960888781443116569
-- Instantiations of muon charge correlations - only once for a certain Bx combination, if there is at least one DoubleMuon, TripleMuon, QuadMuon condition
-- or muon-muon correlation condition.
    muon_charge_correlations_bx_0_bx_0_i: entity work.muon_charge_correlations
        port map(mu_bx_0, mu_bx_0,
            ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
            ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
            ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);

-- Instantiations of eta and phi conversion to muon scale for calo-muon and muon-esums correlation conditions (used for DETA, DPHI, DR and mass) - once for every calo ObjectType in certain Bx used in correlation conditions
    eg_conv_2_muon_bx_0_l: for i in 0 to NR_EG_OBJECTS-1 generate
        eg_eta_conv_2_muon_eta_integer_bx_0(i) <= EG_ETA_CONV_2_MUON_ETA_LUT(CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.eta_high downto D_S_I_EG_V2.eta_low)));
        eg_phi_conv_2_muon_phi_integer_bx_0(i) <= EG_PHI_CONV_2_MUON_PHI_LUT(CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.phi_high downto D_S_I_EG_V2.phi_low)));
    end generate eg_conv_2_muon_bx_0_l;
    etm_phi_conv_2_muon_phi_integer_bx_0(0) <= ETM_PHI_CONV_2_MUON_PHI_LUT(CONV_INTEGER(etm_bx_0(D_S_I_ETM_V2.phi_high downto D_S_I_ETM_V2.phi_low)));

-- Instantiations of pt, eta, phi, cos-phi and sin-phi for correlation conditions (used for DETA, DPHI, DR, mass, overlap_remover and b_tagging) - once for every ObjectType in certain Bx used in correlation conditions
    mu_data_bx_0_l: for i in 0 to NR_MU_OBJECTS-1 generate
        mu_pt_vector_bx_0(i)(MU_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(MU_PT_LUT(CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.pt_high downto D_S_I_MU_V2.pt_low))), MU_PT_VECTOR_WIDTH);
        mu_eta_integer_bx_0(i) <= CONV_INTEGER(signed(mu_bx_0(i)(D_S_I_MU_V2.eta_high downto D_S_I_MU_V2.eta_low)));
        mu_phi_integer_bx_0(i) <= CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low));
        mu_cos_phi_bx_0(i) <= MUON_COS_PHI_LUT(CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low)));
        mu_sin_phi_bx_0(i) <= MUON_SIN_PHI_LUT(CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low)));
    end generate mu_data_bx_0_l;
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
    etm_data_bx_0_l: for i in 0 to NR_ETM_OBJECTS-1 generate
        etm_pt_vector_bx_0(0)(ETM_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(ETM_PT_LUT(CONV_INTEGER(etm_bx_0(D_S_I_ETM_V2.et_high downto D_S_I_ETM_V2.et_low))), ETM_PT_VECTOR_WIDTH);
        etm_phi_integer_bx_0(0) <= CONV_INTEGER(etm_bx_0(D_S_I_ETM_V2.phi_high downto D_S_I_ETM_V2.phi_low));
        etm_cos_phi_bx_0(0) <= CALO_COS_PHI_LUT(CONV_INTEGER(etm_bx_0(D_S_I_ETM_V2.phi_high downto D_S_I_ETM_V2.phi_low)));
        etm_sin_phi_bx_0(0) <= CALO_SIN_PHI_LUT(CONV_INTEGER(etm_bx_0(D_S_I_ETM_V2.phi_high downto D_S_I_ETM_V2.phi_low)));
        conv_etm_cos_phi_bx_0(0) <= MUON_COS_PHI_LUT(etm_phi_conv_2_muon_phi_integer_bx_0(0));
        conv_etm_sin_phi_bx_0(0) <= MUON_SIN_PHI_LUT(etm_phi_conv_2_muon_phi_integer_bx_0(0));
    end generate etm_data_bx_0_l;

-- Instantiations of differences for correlation conditions (used for DETA, DPHI, DR, mass and b_tagging) - once for correlation conditions with two ObjectTypes in certain Bxs
    diff_eg_etm_phi_bx_0_bx_0_i: entity work.sub_phi_integer_obj_vs_obj
        generic map(NR_EG_OBJECTS, NR_ETM_OBJECTS, CALO_PHI_HALF_RANGE_BINS)
        port map(eg_phi_integer_bx_0, etm_phi_integer_bx_0, diff_eg_etm_bx_0_bx_0_phi_integer);
    eg_etm_bx_0_bx_0_l1: for i in 0 to NR_EG_OBJECTS-1 generate
        eg_etm_bx_0_bx_0_l2: for j in 0 to NR_ETM_OBJECTS-1 generate
            diff_eg_etm_bx_0_bx_0_phi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_ETM_DIFF_PHI_LUT(diff_eg_etm_bx_0_bx_0_phi_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
        end generate eg_etm_bx_0_bx_0_l2;
    end generate eg_etm_bx_0_bx_0_l1;
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
    diff_jet_jet_eta_bx_0_bx_0_i: entity work.sub_eta_integer_obj_vs_obj
        generic map(NR_JET_OBJECTS, NR_JET_OBJECTS)
        port map(jet_eta_integer_bx_0, jet_eta_integer_bx_0, diff_jet_jet_bx_0_bx_0_eta_integer);
    diff_jet_jet_phi_bx_0_bx_0_i: entity work.sub_phi_integer_obj_vs_obj
        generic map(NR_JET_OBJECTS, NR_JET_OBJECTS, CALO_PHI_HALF_RANGE_BINS)
        port map(jet_phi_integer_bx_0, jet_phi_integer_bx_0, diff_jet_jet_bx_0_bx_0_phi_integer);
    jet_jet_bx_0_bx_0_l1: for i in 0 to NR_JET_OBJECTS-1 generate
        jet_jet_bx_0_bx_0_l2: for j in 0 to NR_JET_OBJECTS-1 generate
            diff_jet_jet_bx_0_bx_0_eta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_JET_DIFF_ETA_LUT(diff_jet_jet_bx_0_bx_0_eta_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
            diff_jet_jet_bx_0_bx_0_phi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_JET_DIFF_PHI_LUT(diff_jet_jet_bx_0_bx_0_phi_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
        end generate jet_jet_bx_0_bx_0_l2;
    end generate jet_jet_bx_0_bx_0_l1;
    diff_eg_eg_eta_bx_0_bx_0_i: entity work.sub_eta_integer_obj_vs_obj
        generic map(NR_EG_OBJECTS, NR_EG_OBJECTS)
        port map(eg_eta_integer_bx_0, eg_eta_integer_bx_0, diff_eg_eg_bx_0_bx_0_eta_integer);
    diff_eg_eg_phi_bx_0_bx_0_i: entity work.sub_phi_integer_obj_vs_obj
        generic map(NR_EG_OBJECTS, NR_EG_OBJECTS, CALO_PHI_HALF_RANGE_BINS)
        port map(eg_phi_integer_bx_0, eg_phi_integer_bx_0, diff_eg_eg_bx_0_bx_0_phi_integer);
    eg_eg_bx_0_bx_0_l1: for i in 0 to NR_EG_OBJECTS-1 generate
        eg_eg_bx_0_bx_0_l2: for j in 0 to NR_EG_OBJECTS-1 generate
            diff_eg_eg_bx_0_bx_0_eta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_EG_DIFF_ETA_LUT(diff_eg_eg_bx_0_bx_0_eta_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
            diff_eg_eg_bx_0_bx_0_phi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_EG_DIFF_PHI_LUT(diff_eg_eg_bx_0_bx_0_phi_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
        end generate eg_eg_bx_0_bx_0_l2;
    end generate eg_eg_bx_0_bx_0_l1;
    diff_mu_mu_eta_bx_0_bx_0_i: entity work.sub_eta_integer_obj_vs_obj
        generic map(NR_MU_OBJECTS, NR_MU_OBJECTS)
        port map(mu_eta_integer_bx_0, mu_eta_integer_bx_0, diff_mu_mu_bx_0_bx_0_eta_integer);
    diff_mu_mu_phi_bx_0_bx_0_i: entity work.sub_phi_integer_obj_vs_obj
        generic map(NR_MU_OBJECTS, NR_MU_OBJECTS, MUON_PHI_HALF_RANGE_BINS)
        port map(mu_phi_integer_bx_0, mu_phi_integer_bx_0, diff_mu_mu_bx_0_bx_0_phi_integer);
    mu_mu_bx_0_bx_0_l1: for i in 0 to NR_MU_OBJECTS-1 generate
        mu_mu_bx_0_bx_0_l2: for j in 0 to NR_MU_OBJECTS-1 generate
            diff_mu_mu_bx_0_bx_0_eta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_DIFF_ETA_LUT(diff_mu_mu_bx_0_bx_0_eta_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
            diff_mu_mu_bx_0_bx_0_phi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_DIFF_PHI_LUT(diff_mu_mu_bx_0_bx_0_phi_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
        end generate mu_mu_bx_0_bx_0_l2;
    end generate mu_mu_bx_0_bx_0_l1;
    diff_jet_etm_phi_bx_0_bx_0_i: entity work.sub_phi_integer_obj_vs_obj
        generic map(NR_JET_OBJECTS, NR_ETM_OBJECTS, CALO_PHI_HALF_RANGE_BINS)
        port map(jet_phi_integer_bx_0, etm_phi_integer_bx_0, diff_jet_etm_bx_0_bx_0_phi_integer);
    jet_etm_bx_0_bx_0_l1: for i in 0 to NR_JET_OBJECTS-1 generate
        jet_etm_bx_0_bx_0_l2: for j in 0 to NR_ETM_OBJECTS-1 generate
            diff_jet_etm_bx_0_bx_0_phi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_ETM_DIFF_PHI_LUT(diff_jet_etm_bx_0_bx_0_phi_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
        end generate jet_etm_bx_0_bx_0_l2;
    end generate jet_etm_bx_0_bx_0_l1;

-- Instantiations of cosh-deta and cos-dphi LUTs for correlation conditions (used for mass and overlap_remover) - once for correlation conditions with two ObjectTypes in certain Bxs
    eg_etm_bx_0_bx_0_cos_dphi_l1: for i in 0 to NR_EG_OBJECTS-1 generate
        eg_etm_bx_0_bx_0_cos_dphi_l2: for j in 0 to NR_ETM_OBJECTS-1 generate
            eg_etm_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_ETM_COS_DPHI_LUT(diff_eg_etm_bx_0_bx_0_phi_integer(i,j)), EG_ETM_COSH_COS_VECTOR_WIDTH);
        end generate eg_etm_bx_0_bx_0_cos_dphi_l2;
    end generate eg_etm_bx_0_bx_0_cos_dphi_l1;
    eg_jet_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_EG_OBJECTS-1 generate
        eg_jet_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_JET_OBJECTS-1 generate
            eg_jet_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_JET_COSH_DETA_LUT(diff_eg_jet_bx_0_bx_0_eta_integer(i,j)), EG_JET_COSH_COS_VECTOR_WIDTH);
            eg_jet_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_JET_COS_DPHI_LUT(diff_eg_jet_bx_0_bx_0_phi_integer(i,j)), EG_JET_COSH_COS_VECTOR_WIDTH);
        end generate eg_jet_bx_0_bx_0_cosh_cos_l2;
    end generate eg_jet_bx_0_bx_0_cosh_cos_l1;
    jet_jet_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_JET_OBJECTS-1 generate
        jet_jet_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_JET_OBJECTS-1 generate
            jet_jet_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_JET_COSH_DETA_LUT(diff_jet_jet_bx_0_bx_0_eta_integer(i,j)), JET_JET_COSH_COS_VECTOR_WIDTH);
            jet_jet_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_JET_COS_DPHI_LUT(diff_jet_jet_bx_0_bx_0_phi_integer(i,j)), JET_JET_COSH_COS_VECTOR_WIDTH);
        end generate jet_jet_bx_0_bx_0_cosh_cos_l2;
    end generate jet_jet_bx_0_bx_0_cosh_cos_l1;
    eg_eg_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_EG_OBJECTS-1 generate
        eg_eg_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_EG_OBJECTS-1 generate
            eg_eg_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_EG_COSH_DETA_LUT(diff_eg_eg_bx_0_bx_0_eta_integer(i,j)), EG_EG_COSH_COS_VECTOR_WIDTH);
            eg_eg_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_EG_COS_DPHI_LUT(diff_eg_eg_bx_0_bx_0_phi_integer(i,j)), EG_EG_COSH_COS_VECTOR_WIDTH);
        end generate eg_eg_bx_0_bx_0_cosh_cos_l2;
    end generate eg_eg_bx_0_bx_0_cosh_cos_l1;
    mu_mu_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_MU_OBJECTS-1 generate
        mu_mu_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_MU_OBJECTS-1 generate
            mu_mu_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_COSH_DETA_LUT(diff_mu_mu_bx_0_bx_0_eta_integer(i,j)), MU_MU_COSH_COS_VECTOR_WIDTH);
            mu_mu_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_COS_DPHI_LUT(diff_mu_mu_bx_0_bx_0_phi_integer(i,j)), MU_MU_COSH_COS_VECTOR_WIDTH);
        end generate mu_mu_bx_0_bx_0_cosh_cos_l2;
    end generate mu_mu_bx_0_bx_0_cosh_cos_l1;
    jet_etm_bx_0_bx_0_cos_dphi_l1: for i in 0 to NR_JET_OBJECTS-1 generate
        jet_etm_bx_0_bx_0_cos_dphi_l2: for j in 0 to NR_ETM_OBJECTS-1 generate
            jet_etm_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_ETM_COS_DPHI_LUT(diff_jet_etm_bx_0_bx_0_phi_integer(i,j)), JET_ETM_COSH_COS_VECTOR_WIDTH);
        end generate jet_etm_bx_0_bx_0_cos_dphi_l2;
    end generate jet_etm_bx_0_bx_0_cos_dphi_l1;

-- Instantiations of conditions
double_eg_14367831859864844127_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, EG_TYPE,
        (X"002C", X"0014", X"0000", X"0000"),
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
        double_eg_14367831859864844127);


double_eg_14367840655957867231_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, EG_TYPE,
        (X"0030", X"0022", X"0000", X"0000"),
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
        double_eg_14367840655957867231);


double_eg_9170720688096593570_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, EG_TYPE,
        (X"002E", X"0014", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"C", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, eg_bx_0,
        double_eg_9170720688096593570);


double_jet_15912422389070688354_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, JET_TYPE,
        (X"00F0", X"00F0", X"0000", X"0000"),
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
        double_jet_15912422389070688354);


double_jet_16307690244847013909_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, JET_TYPE,
        (X"00C8", X"0046", X"0000", X"0000"),
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
        double_jet_16307690244847013909);


double_jet_16379747838884941845_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, JET_TYPE,
        (X"00DC", X"0046", X"0000", X"0000"),
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
        double_jet_16379747838884941845);


double_jet_16382562588652048405_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, JET_TYPE,
        (X"00E6", X"0046", X"0000", X"0000"),
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
        double_jet_16382562588652048405);


double_jet_8659446229539818195_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, JET_TYPE,
        (X"00A0", X"00A0", X"0000", X"0000"),
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
        double_jet_8659446229539818195);


double_tau_10196652277112847102_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, TAU_TYPE,
        (X"0048", X"0048", X"0000", X"0000"),
        (false, false, true, true),
        (X"0030", X"0030", X"0000", X"0000"), (X"00CF", X"00CF", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"E", X"F", X"F"),
        false
    )
    port map(lhc_clk, tau_bx_0,
        double_tau_10196652277112847102);


double_tau_17539608616528615651_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, TAU_TYPE,
        (X"008C", X"008C", X"0000", X"0000"),
        (false, false, true, true),
        (X"0030", X"0030", X"0000", X"0000"), (X"00CF", X"00CF", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, tau_bx_0,
        double_tau_17539608616528615651);


double_tau_973280238110587646_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, TAU_TYPE,
        (X"0040", X"0040", X"0000", X"0000"),
        (false, false, true, true),
        (X"0030", X"0030", X"0000", X"0000"), (X"00CF", X"00CF", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"E", X"F", X"F"),
        false
    )
    port map(lhc_clk, tau_bx_0,
        double_tau_973280238110587646);


quad_jet_2750930524417894580_i: entity work.calo_condition_v6_quad
    generic map(0, 11, 0, 11, 0, 11, 0, 11,
        4, true, JET_TYPE,
        (X"0050", X"0050", X"0050", X"0050"),
        (false, false, false, false),
        (X"003D", X"003D", X"003D", X"003D"), (X"00C2", X"00C2", X"00C2", X"00C2"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0,
        quad_jet_2750930524417894580);


single_eg_12507579852056531520_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"0024", X"0000", X"0000", X"0000"),
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
        single_eg_12507579852056531520);


single_eg_12507579852186554944_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"0030", X"0000", X"0000", X"0000"),
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
        single_eg_12507579852186554944);


single_eg_12507579852316578368_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"003C", X"0000", X"0000", X"0000"),
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
        single_eg_12507579852316578368);


single_eg_12507579852322869824_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"0048", X"0000", X"0000", X"0000"),
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
        single_eg_12507579852322869824);


single_eg_12507579852324966976_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"004C", X"0000", X"0000", X"0000"),
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
        single_eg_12507579852324966976);


single_eg_14262501742662192051_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"0032", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
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
        single_eg_14262501742662192051);


single_eg_14262501759707843507_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"0044", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
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
        single_eg_14262501759707843507);


single_eg_14262501759976278963_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"0048", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
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
        single_eg_14262501759976278963);


single_eg_14262501760244714419_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"004C", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
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
        single_eg_14262501760244714419);


single_eg_145873461_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"005A", X"0000", X"0000", X"0000"),
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
        single_eg_145873461);


single_eg_6872943368604738801_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"0028", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
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
        single_eg_6872943368604738801);


single_eg_6872949965674505457_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"0034", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
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
        single_eg_6872949965674505457);


single_eg_6873086305116349681_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"0040", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
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
        single_eg_6873086305116349681);


single_eg_6873088504139605233_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"0044", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
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
        single_eg_6873088504139605233);


single_eg_9245015882840574718_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"0050", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
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
        single_eg_9245015882840574718);


single_jet_13432253330327927178_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0046", X"0000", X"0000", X"0000"),
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
        single_jet_13432253330327927178);


single_jet_15873314052325834177_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"00B4", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"00C3", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
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
        single_jet_15873314052325834177);


single_jet_15873314052330193857_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"00B4", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0072", X"0000", X"0000", X"0000"), (X"003C", X"0000", X"0000", X"0000"),
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
        single_jet_15873314052330193857);


single_jet_2561319656112_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"012C", X"0000", X"0000", X"0000"),
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
        single_jet_2561319656112);


single_jet_2561319656368_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0154", X"0000", X"0000", X"0000"),
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
        single_jet_2561319656368);


single_jet_2561319671856_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0190", X"0000", X"0000", X"0000"),
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
        single_jet_2561319671856);


single_tau_16608837536836783944_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, TAU_TYPE,
        (X"0064", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, tau_bx_0,
        single_tau_16608837536836783944);


single_tau_16608841934883295048_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, TAU_TYPE,
        (X"008C", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, tau_bx_0,
        single_tau_16608841934883295048);


single_tau_2416124660766947070_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, TAU_TYPE,
        (X"003C", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, tau_bx_0,
        single_tau_2416124660766947070);


single_tau_2452153457785911038_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, TAU_TYPE,
        (X"0040", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, tau_bx_0,
        single_tau_2452153457785911038);


single_tau_2470167856295393022_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, TAU_TYPE,
        (X"0042", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, tau_bx_0,
        single_tau_2470167856295393022);


single_tau_2488182254804875006_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, TAU_TYPE,
        (X"0044", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, tau_bx_0,
        single_tau_2488182254804875006);


single_tau_2506196653314356990_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, TAU_TYPE,
        (X"0046", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, tau_bx_0,
        single_tau_2506196653314356990);


single_tau_2524211051823838974_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, TAU_TYPE,
        (X"0048", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, tau_bx_0,
        single_tau_2524211051823838974);


single_tau_254396839629108990_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, TAU_TYPE,
        (X"0038", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, tau_bx_0,
        single_tau_254396839629108990);


single_tau_2560239848842802942_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, TAU_TYPE,
        (X"004C", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, tau_bx_0,
        single_tau_2560239848842802942);


single_tau_3484211327656040900_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, TAU_TYPE,
        (X"00C8", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, tau_bx_0,
        single_tau_3484211327656040900);


single_tau_3484220123749063108_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, TAU_TYPE,
        (X"0118", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, tau_bx_0,
        single_tau_3484220123749063108);


triple_jet_1514927488963884831_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 11,
        3, true, JET_TYPE,
        (X"00AA", X"0090", X"00C8", X"0000"),
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
        triple_jet_1514927488963884831);


triple_jet_1514927488965982623_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 11,
        3, true, JET_TYPE,
        (X"00AA", X"0098", X"00D2", X"0000"),
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
        triple_jet_1514927488965982623);


triple_jet_4911751765569599162_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 11,
        3, true, JET_TYPE,
        (X"0098", X"0080", X"00B8", X"0000"),
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
        triple_jet_4911751765569599162);


triple_jet_4911751765602597050_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 11,
        3, true, JET_TYPE,
        (X"00B8", X"0080", X"0098", X"0000"),
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
        triple_jet_4911751765602597050);


triple_jet_4911751765603112890_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 11,
        3, true, JET_TYPE,
        (X"00B8", X"0098", X"0080", X"0000"),
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
        triple_jet_4911751765603112890);


triple_jet_655678244564243471_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 11,
        3, true, JET_TYPE,
        (X"00C8", X"0090", X"00AA", X"0000"),
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
        triple_jet_655678244564243471);


triple_jet_655678244564763279_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 11,
        3, true, JET_TYPE,
        (X"00C8", X"00AA", X"0090", X"0000"),
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
        triple_jet_655678244564763279);


triple_jet_655678244564915215_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 11,
        3, true, JET_TYPE,
        (X"00D2", X"0098", X"00AA", X"0000"),
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
        triple_jet_655678244564915215);


triple_jet_655678244565419151_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 11,
        3, true, JET_TYPE,
        (X"00D2", X"00AA", X"0098", X"0000"),
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
        triple_jet_655678244565419151);


double_mu_14617142003772573591_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 7, 0, 0, 0, 0,
        2, true,
        (X"0001", X"0001", X"0000", X"0000"),
        (false, false, true, true),
        (X"008A", X"008A", X"0000", X"0000"), (X"0176", X"0176", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"F000", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "os",
        false
    )
    port map(lhc_clk, mu_bx_0,
        double_mu_14617142003772573591,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


double_mu_16961163303935834116_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 7, 0, 0, 0, 0,
        2, true,
        (X"001F", X"000F", X"0000", X"0000"),
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
        double_mu_16961163303935834116,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


double_mu_16961163853691648004_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 7, 0, 0, 0, 0,
        2, true,
        (X"0019", X"0011", X"0000", X"0000"),
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
        double_mu_16961163853691648004,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


double_mu_17582786187978172426_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 7, 0, 0, 0, 0,
        2, true,
        (X"000A", X"000A", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"F000", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        double_mu_17582786187978172426,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


double_mu_3274363720173353484_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 7, 0, 0, 0, 0,
        2, true,
        (X"000D", X"000D", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"F000", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "os",
        false
    )
    port map(lhc_clk, mu_bx_0,
        double_mu_3274363720173353484,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


single_mu_16260934496621930532_i: entity work.muon_conditions_v7
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
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        single_mu_16260934496621930532);


single_mu_17545683038261595717_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"0017", X"0000", X"0000", X"0000"),
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
        single_mu_17545683038261595717);


single_mu_17545683128212558277_i: entity work.muon_conditions_v7
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
        single_mu_17545683128212558277);


single_mu_7037562455545169312_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"0015", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"00C1", X"0000", X"0000", X"0000"), (X"013F", X"0000", X"0000", X"0000"),
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
        single_mu_7037562455545169312);


single_mu_7109620049583097248_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"001D", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"00C1", X"0000", X"0000", X"0000"), (X"013F", X"0000", X"0000", X"0000"),
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
        single_mu_7109620049583097248);


single_mu_9379434261777827232_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"002D", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"00C1", X"0000", X"0000", X"0000"), (X"013F", X"0000", X"0000", X"0000"),
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
        single_mu_9379434261777827232);


single_mu_9379434265999970464_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"002D", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0049", X"0000", X"0000", X"0000"), (X"01B7", X"0000", X"0000", X"0000"),
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
        single_mu_9379434265999970464);


triple_mu_3324683353497813023_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 7, 0, 7, 0, 0,
        3, true,
        (X"0001", X"0001", X"0001", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FFF0", X"FFF0", X"FFF0", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        triple_mu_3324683353497813023,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


triple_mu_3324691786047638559_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 7, 0, 7, 0, 0,
        3, true,
        (X"000B", X"0007", X"0007", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FF00", X"FF00", X"FF00", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        triple_mu_3324691786047638559,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


triple_mu_3324694397387754527_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 7, 0, 7, 0, 0,
        3, true,
        (X"0009", X"0009", X"0009", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FF00", X"FF00", X"FF00", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        triple_mu_3324694397387754527,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


single_etm_18699475376_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"003C",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_18699475376);


single_htt_2496626710837_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"00FA",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626710837);


calo_calo_correlation_12094985861278072888_i: entity work.calo_calo_correlation_condition_v4
    generic map(
        true,
        false, false, true, false, 0, false,
        0, 11, true, EG_TYPE,
        X"0038",
        false, X"0030", X"00CF",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"C",
        0, 11, true, JET_TYPE,
        X"0044",
        false, X"003D", X"00C2",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        X"00000000", X"00000000",
        X"00000000", X"00000000",
        X"00000000084CA240", X"0000000000015F90",
        X"0000000000000000", X"0000000000000000",
        EG_PT_VECTOR_WIDTH, JET_PT_VECTOR_WIDTH, EG_JET_COSH_COS_PRECISION, EG_JET_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", CALO_SIN_COS_VECTOR_WIDTH, EG_JET_SIN_COS_PRECISION
    )
    port map(lhc_clk, eg_bx_0, jet_bx_0,
        diff_eg_jet_bx_0_bx_0_eta_vector, diff_eg_jet_bx_0_bx_0_phi_vector,
        eg_pt_vector_bx_0, jet_pt_vector_bx_0,
        eg_jet_bx_0_bx_0_cosh_deta_vector, eg_jet_bx_0_bx_0_cos_dphi_vector,
        eg_cos_phi_bx_0, jet_cos_phi_bx_0, eg_sin_phi_bx_0, jet_sin_phi_bx_0,
        calo_calo_correlation_12094985861278072888);

invariant_mass_16981538589298500419_i: entity work.calo_calo_correlation_condition_v4
    generic map(
        true,
        false, false, false, true, 0, false,
        0, 11, true, EG_TYPE,
        X"000F",
        false, X"0030", X"00CF",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        0, 11, true, EG_TYPE,
        X"000F",
        false, X"0030", X"00CF",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        X"00000000", X"00000000",
        X"00000000", X"00000000",
        X"0000000000000000", X"0000000000000000",
        X"0000000001312D00", X"0000000000000000",
        EG_PT_VECTOR_WIDTH, EG_PT_VECTOR_WIDTH, EG_EG_COSH_COS_PRECISION, EG_EG_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", CALO_SIN_COS_VECTOR_WIDTH, EG_EG_SIN_COS_PRECISION
    )
    port map(lhc_clk, eg_bx_0, eg_bx_0,
        diff_eg_eg_bx_0_bx_0_eta_vector, diff_eg_eg_bx_0_bx_0_phi_vector,
        eg_pt_vector_bx_0, eg_pt_vector_bx_0,
        eg_eg_bx_0_bx_0_cosh_deta_vector, eg_eg_bx_0_bx_0_cos_dphi_vector,
        eg_cos_phi_bx_0, eg_cos_phi_bx_0, eg_sin_phi_bx_0, eg_sin_phi_bx_0,
        invariant_mass_16981538589298500419);

invariant_mass_2940649386995017095_i: entity work.calo_calo_correlation_condition_v4
    generic map(
        true,
        false, false, false, true, 0, false,
        0, 11, true, JET_TYPE,
        X"0046",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        0, 11, true, JET_TYPE,
        X"0046",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        X"00000000", X"00000000",
        X"00000000", X"00000000",
        X"0000000000000000", X"0000000000000000",
        X"000008E9BD84D000", X"000000047999ED00",
        JET_PT_VECTOR_WIDTH, JET_PT_VECTOR_WIDTH, JET_JET_COSH_COS_PRECISION, JET_JET_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", CALO_SIN_COS_VECTOR_WIDTH, JET_JET_SIN_COS_PRECISION
    )
    port map(lhc_clk, jet_bx_0, jet_bx_0,
        diff_jet_jet_bx_0_bx_0_eta_vector, diff_jet_jet_bx_0_bx_0_phi_vector,
        jet_pt_vector_bx_0, jet_pt_vector_bx_0,
        jet_jet_bx_0_bx_0_cosh_deta_vector, jet_jet_bx_0_bx_0_cos_dphi_vector,
        jet_cos_phi_bx_0, jet_cos_phi_bx_0, jet_sin_phi_bx_0, jet_sin_phi_bx_0,
        invariant_mass_2940649386995017095);

invariant_mass_3160763811507161590_i: entity work.calo_calo_correlation_condition_v4
    generic map(
        true,
        true, false, false, true, 0, false,
        0, 11, true, JET_TYPE,
        X"003C",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        0, 11, true, JET_TYPE,
        X"003C",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        X"000005DC", X"00000000",
        X"00000000", X"00000000",
        X"0000000000000000", X"0000000000000000",
        X"00041A6642C78140", X"00000001AE587500",
        JET_PT_VECTOR_WIDTH, JET_PT_VECTOR_WIDTH, JET_JET_COSH_COS_PRECISION, JET_JET_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", CALO_SIN_COS_VECTOR_WIDTH, JET_JET_SIN_COS_PRECISION
    )
    port map(lhc_clk, jet_bx_0, jet_bx_0,
        diff_jet_jet_bx_0_bx_0_eta_vector, diff_jet_jet_bx_0_bx_0_phi_vector,
        jet_pt_vector_bx_0, jet_pt_vector_bx_0,
        jet_jet_bx_0_bx_0_cosh_deta_vector, jet_jet_bx_0_bx_0_cos_dphi_vector,
        jet_cos_phi_bx_0, jet_cos_phi_bx_0, jet_sin_phi_bx_0, jet_sin_phi_bx_0,
        invariant_mass_3160763811507161590);

invariant_mass_4461482972834602413_i: entity work.muon_muon_correlation_condition_v4
    generic map(
        true,
        false, false, false, true, 0, false,
        0, 7, true,
        X"0007",
        false, X"00D3", X"012D",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FF00", X"F",
        0, 7, true,
        X"0007",
        false, X"00D3",X"012D",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FF00", X"F",
        "os",
        X"00000000", X"00000000",
        X"00000000", X"00000000",
        X"0000000000000000", X"0000000000000000",
        X"0000000005D75C80", X"0000000000000000",
        MU_PT_VECTOR_WIDTH, MU_MU_COSH_COS_PRECISION, MU_MU_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", MUON_SIN_COS_VECTOR_WIDTH, MU_MU_SIN_COS_PRECISION
    )
    port map(lhc_clk, mu_bx_0, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        diff_mu_mu_bx_0_bx_0_eta_vector, diff_mu_mu_bx_0_bx_0_phi_vector,
        mu_pt_vector_bx_0, mu_pt_vector_bx_0,
        mu_mu_bx_0_bx_0_cosh_deta_vector, mu_mu_bx_0_bx_0_cos_dphi_vector,
        mu_cos_phi_bx_0, mu_cos_phi_bx_0, mu_sin_phi_bx_0, mu_sin_phi_bx_0,
        invariant_mass_4461482972834602413);

muon_muon_correlation_12923126501326425857_i: entity work.muon_muon_correlation_condition_v4
    generic map(
        true,
        false, false, true, false, 0, false,
        0, 7, true,
        X"000A",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"F000", X"F",
        0, 7, true,
        X"000A",
        true, X"0000",X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"F000", X"F",
        "os",
        X"00000000", X"00000000",
        X"00000000", X"00000000",
        X"000000000015FCE8", X"0000000000000000",
        X"0000000000000000", X"0000000000000000",
        MU_PT_VECTOR_WIDTH, MU_MU_COSH_COS_PRECISION, MU_MU_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", MUON_SIN_COS_VECTOR_WIDTH, MU_MU_SIN_COS_PRECISION
    )
    port map(lhc_clk, mu_bx_0, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        diff_mu_mu_bx_0_bx_0_eta_vector, diff_mu_mu_bx_0_bx_0_phi_vector,
        mu_pt_vector_bx_0, mu_pt_vector_bx_0,
        mu_mu_bx_0_bx_0_cosh_deta_vector, mu_mu_bx_0_bx_0_cos_dphi_vector,
        mu_cos_phi_bx_0, mu_cos_phi_bx_0, mu_sin_phi_bx_0, mu_sin_phi_bx_0,
        muon_muon_correlation_12923126501326425857);

muon_muon_correlation_8772456668275224612_i: entity work.muon_muon_correlation_condition_v4
    generic map(
        true,
        true, false, false, false, 0, false,
        0, 7, true,
        X"0015",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FF00", X"F",
        0, 7, true,
        X"0001",
        true, X"0000",X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FF00", X"F",
        "ig",
        X"00000708", X"00000000",
        X"00000000", X"00000000",
        X"0000000000000000", X"0000000000000000",
        X"0000000000000000", X"0000000000000000",
        MU_PT_VECTOR_WIDTH, MU_MU_COSH_COS_PRECISION, MU_MU_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", MUON_SIN_COS_VECTOR_WIDTH, MU_MU_SIN_COS_PRECISION
    )
    port map(lhc_clk, mu_bx_0, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        diff_mu_mu_bx_0_bx_0_eta_vector, diff_mu_mu_bx_0_bx_0_phi_vector,
        mu_pt_vector_bx_0, mu_pt_vector_bx_0,
        mu_mu_bx_0_bx_0_cosh_deta_vector, mu_mu_bx_0_bx_0_cos_dphi_vector,
        mu_cos_phi_bx_0, mu_cos_phi_bx_0, mu_sin_phi_bx_0, mu_sin_phi_bx_0,
        muon_muon_correlation_8772456668275224612);

muon_muon_correlation_9513481109949270451_i: entity work.muon_muon_correlation_condition_v4
    generic map(
        true,
        false, false, true, false, 0, false,
        0, 7, true,
        X"0001",
        false, X"0081", X"017F",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"F000", X"F",
        0, 7, true,
        X"0001",
        false, X"0081",X"017F",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"F000", X"F",
        "os",
        X"00000000", X"00000000",
        X"00000000", X"00000000",
        X"00000000001DEC28", X"0000000000000000",
        X"0000000000000000", X"0000000000000000",
        MU_PT_VECTOR_WIDTH, MU_MU_COSH_COS_PRECISION, MU_MU_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", MUON_SIN_COS_VECTOR_WIDTH, MU_MU_SIN_COS_PRECISION
    )
    port map(lhc_clk, mu_bx_0, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        diff_mu_mu_bx_0_bx_0_eta_vector, diff_mu_mu_bx_0_bx_0_phi_vector,
        mu_pt_vector_bx_0, mu_pt_vector_bx_0,
        mu_mu_bx_0_bx_0_cosh_deta_vector, mu_mu_bx_0_bx_0_cos_dphi_vector,
        mu_cos_phi_bx_0, mu_cos_phi_bx_0, mu_sin_phi_bx_0, mu_sin_phi_bx_0,
        muon_muon_correlation_9513481109949270451);

calo_esum_correlation_13491612199618123042_i: entity work.calo_esums_correlation_condition_v3
    generic map(
        true, false, TRANSVERSE_MASS_TYPE, false,
        0, 11, true, JET_TYPE,
        X"0078",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        true, ETM_TYPE,
        X"00C8",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"00000C4E", X"00000190",
        X"0000000000000000", X"0000000000000000",
        JET_PT_VECTOR_WIDTH, ETM_PT_VECTOR_WIDTH, JET_ETM_COSH_COS_PRECISION, JET_ETM_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", CALO_SIN_COS_VECTOR_WIDTH, JET_ETM_SIN_COS_PRECISION
   )
    port map(lhc_clk, jet_bx_0(0 to 11), etm_bx_0,
        diff_jet_etm_bx_0_bx_0_phi_vector,
        jet_pt_vector_bx_0, etm_pt_vector_bx_0,
        jet_etm_bx_0_bx_0_cos_dphi_vector,
        jet_cos_phi_bx_0, etm_cos_phi_bx_0, jet_sin_phi_bx_0, etm_sin_phi_bx_0,
        calo_esum_correlation_13491612199618123042);

calo_esum_correlation_16768129600233686289_i: entity work.calo_esums_correlation_condition_v3
    generic map(
        true, false, TRANSVERSE_MASS_TYPE, false,
        0, 11, true, JET_TYPE,
        X"0078",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        true, ETM_TYPE,
        X"0096",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"00000C4E", X"00000190",
        X"0000000000000000", X"0000000000000000",
        JET_PT_VECTOR_WIDTH, ETM_PT_VECTOR_WIDTH, JET_ETM_COSH_COS_PRECISION, JET_ETM_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", CALO_SIN_COS_VECTOR_WIDTH, JET_ETM_SIN_COS_PRECISION
   )
    port map(lhc_clk, jet_bx_0(0 to 11), etm_bx_0,
        diff_jet_etm_bx_0_bx_0_phi_vector,
        jet_pt_vector_bx_0, etm_pt_vector_bx_0,
        jet_etm_bx_0_bx_0_cos_dphi_vector,
        jet_cos_phi_bx_0, etm_cos_phi_bx_0, jet_sin_phi_bx_0, etm_sin_phi_bx_0,
        calo_esum_correlation_16768129600233686289);

calo_esum_correlation_16768129600365282577_i: entity work.calo_esums_correlation_condition_v3
    generic map(
        true, false, TRANSVERSE_MASS_TYPE, false,
        0, 11, true, JET_TYPE,
        X"0078",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        true, ETM_TYPE,
        X"00B4",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"00000C4E", X"00000190",
        X"0000000000000000", X"0000000000000000",
        JET_PT_VECTOR_WIDTH, ETM_PT_VECTOR_WIDTH, JET_ETM_COSH_COS_PRECISION, JET_ETM_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", CALO_SIN_COS_VECTOR_WIDTH, JET_ETM_SIN_COS_PRECISION
   )
    port map(lhc_clk, jet_bx_0(0 to 11), etm_bx_0,
        diff_jet_etm_bx_0_bx_0_phi_vector,
        jet_pt_vector_bx_0, etm_pt_vector_bx_0,
        jet_etm_bx_0_bx_0_cos_dphi_vector,
        jet_cos_phi_bx_0, etm_cos_phi_bx_0, jet_sin_phi_bx_0, etm_sin_phi_bx_0,
        calo_esum_correlation_16768129600365282577);

transverse_mass_1757817201761093878_i: entity work.calo_esums_correlation_condition_v3
    generic map(
        false, true, TRANSVERSE_MASS_TYPE, false,
        0, 11, true, EG_TYPE,
        X"0042",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"A",
        true, ETM_TYPE,
        X"0014",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"00000000", X"00000000",
        X"00041A6642C78140", X"0000000004C4B400",
        EG_PT_VECTOR_WIDTH, ETM_PT_VECTOR_WIDTH, EG_ETM_COSH_COS_PRECISION, EG_ETM_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", CALO_SIN_COS_VECTOR_WIDTH, EG_ETM_SIN_COS_PRECISION
   )
    port map(lhc_clk, eg_bx_0(0 to 11), etm_bx_0,
        diff_eg_etm_bx_0_bx_0_phi_vector,
        eg_pt_vector_bx_0, etm_pt_vector_bx_0,
        eg_etm_bx_0_bx_0_cos_dphi_vector,
        eg_cos_phi_bx_0, etm_cos_phi_bx_0, eg_sin_phi_bx_0, etm_sin_phi_bx_0,
        transverse_mass_1757817201761093878);

transverse_mass_3639674040417019753_i: entity work.calo_esums_correlation_condition_v3
    generic map(
        false, true, TRANSVERSE_MASS_TYPE, false,
        0, 11, true, EG_TYPE,
        X"0042",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"A",
        true, ETM_TYPE,
        X"0014",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"00000000", X"00000000",
        X"00041A6642C78140", X"0000000006DDD000",
        EG_PT_VECTOR_WIDTH, ETM_PT_VECTOR_WIDTH, EG_ETM_COSH_COS_PRECISION, EG_ETM_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", CALO_SIN_COS_VECTOR_WIDTH, EG_ETM_SIN_COS_PRECISION
   )
    port map(lhc_clk, eg_bx_0(0 to 11), etm_bx_0,
        diff_eg_etm_bx_0_bx_0_phi_vector,
        eg_pt_vector_bx_0, etm_pt_vector_bx_0,
        eg_etm_bx_0_bx_0_cos_dphi_vector,
        eg_cos_phi_bx_0, etm_cos_phi_bx_0, eg_sin_phi_bx_0, etm_sin_phi_bx_0,
        transverse_mass_3639674040417019753);


-- Instantiations of algorithms

-- 5 L1_SingleMu0_BMTF : MU0[MU-QLTY_SNGL,MU-ETA_BMTF]
l1_single_mu0_bmtf <= single_mu_16260934496621930532;
algo(37) <= l1_single_mu0_bmtf;

-- 12 L1_SingleMu11_LowQ : MU11[MU-QLTY_DBLE]
l1_single_mu11_low_q <= single_mu_17545683038261595717;
algo(38) <= l1_single_mu11_low_q;

-- 16 L1_SingleMu16 : MU16[MU-QLTY_SNGL]
l1_single_mu16 <= single_mu_17545683128212558277;
algo(39) <= l1_single_mu16;

-- 20 L1_SingleMu22_BMTF : MU22[MU-QLTY_SNGL,MU-ETA_BMTF]
l1_single_mu22_bmtf <= single_mu_9379434265999970464;
algo(40) <= l1_single_mu22_bmtf;

-- 25 L1_SingleMu14er2p1 : MU14[MU-QLTY_SNGL,MU-ETA_2p10]
l1_single_mu14er2p1 <= single_mu_7109620049583097248;
algo(4) <= l1_single_mu14er2p1;

-- 29 L1_SingleMu22er2p1 : MU22[MU-QLTY_SNGL,MU-ETA_2p10]
l1_single_mu22er2p1 <= single_mu_9379434261777827232;
algo(41) <= l1_single_mu22er2p1;

-- 33 L1_DoubleMu_12_8 : comb{MU12[MU-QLTY_DBLE],MU8[MU-QLTY_DBLE]}
l1_double_mu_12_8 <= double_mu_16961163853691648004;
algo(55) <= l1_double_mu_12_8;

-- 36 L1_DoubleMu_15_7 : comb{MU15[MU-QLTY_DBLE],MU7[MU-QLTY_DBLE]}
l1_double_mu_15_7 <= double_mu_16961163303935834116;
algo(56) <= l1_double_mu_15_7;

-- 41 L1_TripleMu_4_4_4 : comb{MU4[MU-QLTY_DBLE],MU4[MU-QLTY_DBLE],MU4[MU-QLTY_DBLE]}
l1_triple_mu_4_4_4 <= triple_mu_3324694397387754527;
algo(61) <= l1_triple_mu_4_4_4;

-- 43 L1_TripleMu_5_3_3 : comb{MU5[MU-QLTY_DBLE],MU3[MU-QLTY_DBLE],MU3[MU-QLTY_DBLE]}
l1_triple_mu_5_3_3 <= triple_mu_3324691786047638559;
algo(62) <= l1_triple_mu_5_3_3;

-- 64 L1_SingleEG45 : EG45
l1_single_eg45 <= single_eg_145873461;
algo(10) <= l1_single_eg45;

-- 66 L1_SingleEG34er2p1 : EG34[EG-ETA_2p13]
l1_single_eg34er2p1 <= single_eg_14262501759707843507;
algo(7) <= l1_single_eg34er2p1;

-- 67 L1_SingleEG36er2p1 : EG36[EG-ETA_2p13]
l1_single_eg36er2p1 <= single_eg_14262501759976278963;
algo(8) <= l1_single_eg36er2p1;

-- 68 L1_SingleEG38er2p1 : EG38[EG-ETA_2p13]
l1_single_eg38er2p1 <= single_eg_14262501760244714419;
algo(9) <= l1_single_eg38er2p1;

-- 69 L1_SingleIsoEG18 : EG18[EG-ISO_0xA]
l1_single_iso_eg18 <= single_eg_12507579852056531520;
algo(11) <= l1_single_iso_eg18;

-- 72 L1_SingleIsoEG24 : EG24[EG-ISO_0xA]
l1_single_iso_eg24 <= single_eg_12507579852186554944;
algo(13) <= l1_single_iso_eg24;

-- 75 L1_SingleIsoEG30 : EG30[EG-ISO_0xA]
l1_single_iso_eg30 <= single_eg_12507579852316578368;
algo(15) <= l1_single_iso_eg30;

-- 79 L1_SingleIsoEG36 : EG36[EG-ISO_0xA]
l1_single_iso_eg36 <= single_eg_12507579852322869824;
algo(18) <= l1_single_iso_eg36;

-- 81 L1_SingleIsoEG38 : EG38[EG-ISO_0xA]
l1_single_iso_eg38 <= single_eg_12507579852324966976;
algo(19) <= l1_single_iso_eg38;

-- 84 L1_SingleIsoEG20er2p1 : EG20[EG-ISO_0xA,EG-ETA_2p13]
l1_single_iso_eg20er2p1 <= single_eg_6872943368604738801;
algo(12) <= l1_single_iso_eg20er2p1;

-- 87 L1_SingleIsoEG26er2p1 : EG26[EG-ISO_0xA,EG-ETA_2p13]
l1_single_iso_eg26er2p1 <= single_eg_6872949965674505457;
algo(14) <= l1_single_iso_eg26er2p1;

-- 90 L1_SingleIsoEG32er2p1 : EG32[EG-ISO_0xA,EG-ETA_2p13]
l1_single_iso_eg32er2p1 <= single_eg_6873086305116349681;
algo(16) <= l1_single_iso_eg32er2p1;

-- 92 L1_SingleIsoEG34er2p1 : EG34[EG-ISO_0xA,EG-ETA_2p13]
l1_single_iso_eg34er2p1 <= single_eg_6873088504139605233;
algo(17) <= l1_single_iso_eg34er2p1;

-- 96 L1_SingleIsoEG40er2p1 : EG40[EG-ETA_2p13,EG-ISO_0xA]
l1_single_iso_eg40er2p1 <= single_eg_9245015882840574718;
algo(20) <= l1_single_iso_eg40er2p1;

-- 97 L1_IsoEG33_Mt40 : mass_trv{EG33[EG-ISO_0xA],ETM10}[MASS_WMass]
l1_iso_eg33_mt40 <= transverse_mass_1757817201761093878;
algo(66) <= l1_iso_eg33_mt40;

-- 99 L1_IsoEG33_Mt48 : mass_trv{EG33[EG-ISO_0xA],ETM10}[MASS_Wmass5]
l1_iso_eg33_mt48 <= transverse_mass_3639674040417019753;
algo(67) <= l1_iso_eg33_mt48;

-- 103 L1_DoubleEG_22_10 : comb{EG22,EG10}
l1_double_eg_22_10 <= double_eg_14367831859864844127;
algo(28) <= l1_double_eg_22_10;

-- 107 L1_DoubleEG_24_17 : comb{EG24,EG17}
l1_double_eg_24_17 <= double_eg_14367840655957867231;
algo(29) <= l1_double_eg_24_17;

-- 117 L1_SingleTau100er2p1 : TAU100[TAU-ETA_2p13]
l1_single_tau100er2p1 <= single_tau_3484211327656040900;
algo(25) <= l1_single_tau100er2p1;

-- 120 L1_SingleTau140er2p1 : TAU140[TAU-ETA_2p13]
l1_single_tau140er2p1 <= single_tau_3484220123749063108;
algo(26) <= l1_single_tau140er2p1;

-- 122 L1_DoubleTau70er2p1 : comb{TAU70[TAU-ETA_2p13],TAU70[TAU-ETA_2p13]}
l1_double_tau70er2p1 <= double_tau_17539608616528615651;
algo(35) <= l1_double_tau70er2p1;

-- 125 L1_DoubleIsoTau32er2p1 : comb{TAU32[TAU-ISO_0xE,TAU-ETA_2p13],TAU32[TAU-ISO_0xE,TAU-ETA_2p13]}
l1_double_iso_tau32er2p1 <= double_tau_973280238110587646;
algo(31) <= l1_double_iso_tau32er2p1;

-- 129 L1_DoubleIsoTau36er2p1 : comb{TAU36[TAU-ISO_0xE,TAU-ETA_2p13],TAU36[TAU-ISO_0xE,TAU-ETA_2p13]}
l1_double_iso_tau36er2p1 <= double_tau_10196652277112847102;
algo(32) <= l1_double_iso_tau36er2p1;

-- 138 L1_SingleJet150 : JET150
l1_single_jet150 <= single_jet_2561319656112;
algo(21) <= l1_single_jet150;

-- 140 L1_SingleJet170 : JET170
l1_single_jet170 <= single_jet_2561319656368;
algo(22) <= l1_single_jet170;

-- 142 L1_SingleJet200 : JET200
l1_single_jet200 <= single_jet_2561319671856;
algo(23) <= l1_single_jet200;

-- 145 L1_SingleJet90_FWD : JET90[JET-ETA_FWD_2p61_NEG] OR JET90[JET-ETA_FWD_2p61_POS]
l1_single_jet90_fwd <= single_jet_15873314052325834177 or single_jet_15873314052330193857;
algo(36) <= l1_single_jet90_fwd;

-- 147 L1_SingleJet35_HFp : JET35[JET-ETA_FWD_POS]
l1_single_jet35_h_fp <= single_jet_13432253330327927178;
algo(24) <= l1_single_jet35_h_fp;

-- 154 L1_DoubleJet80er2p7 : comb{JET80[JET-ETA_2p7],JET80[JET-ETA_2p7]}
l1_double_jet80er2p7 <= double_jet_8659446229539818195;
algo(34) <= l1_double_jet80er2p7;

-- 157 L1_DoubleJet120er2p7 : comb{JET120[JET-ETA_2p7],JET120[JET-ETA_2p7]}
l1_double_jet120er2p7 <= double_jet_15912422389070688354;
algo(33) <= l1_double_jet120er2p7;

-- 161 L1_TripleJet_92_76_64_VBF : comb{JET92[JET-ETA_2p7],JET76[JET-ETA_2p7],JET64} OR comb{JET92[JET-ETA_2p7],JET64[JET-ETA_2p7],JET76} OR comb{JET76[JET-ETA_2p7],JET64[JET-ETA_2p7],JET92}
l1_triple_jet_92_76_64_vbf <= triple_jet_4911751765603112890 or triple_jet_4911751765602597050 or triple_jet_4911751765569599162;
algo(59) <= l1_triple_jet_92_76_64_vbf;

-- 163 L1_TripleJet_105_85_76_VBF : comb{JET105[JET-ETA_2p7],JET85[JET-ETA_2p7],JET76} OR comb{JET105[JET-ETA_2p7],JET76[JET-ETA_2p7],JET85} OR comb{JET85[JET-ETA_2p7],JET76[JET-ETA_2p7],JET105}
l1_triple_jet_105_85_76_vbf <= triple_jet_655678244565419151 or triple_jet_655678244564915215 or triple_jet_1514927488965982623;
algo(58) <= l1_triple_jet_105_85_76_vbf;

-- 164 L1_TripleJet_100_85_72_VBF : comb{JET100[JET-ETA_2p7],JET85[JET-ETA_2p7],JET72} OR comb{JET100[JET-ETA_2p7],JET72[JET-ETA_2p7],JET85} OR comb{JET85[JET-ETA_2p7],JET72[JET-ETA_2p7],JET100}
l1_triple_jet_100_85_72_vbf <= triple_jet_655678244564763279 or triple_jet_655678244564243471 or triple_jet_1514927488963884831;
algo(57) <= l1_triple_jet_100_85_72_vbf;

-- 165 L1_QuadJet40er2p7 : comb{JET40[JET-ETA_2p7],JET40[JET-ETA_2p7],JET40[JET-ETA_2p7],JET40[JET-ETA_2p7]}
l1_quad_jet40er2p7 <= quad_jet_2750930524417894580;
algo(71) <= l1_quad_jet40er2p7;

-- 183 L1_ETM30 : ETM30
l1_etm30 <= single_etm_18699475376;
algo(3) <= l1_etm30;

-- 220 L1_DoubleJet30_Mass_Min380_dEta_Max1p5 : mass_inv{JET30,JET30}[MASS_MIN_380,DETA_MAX_1p5]
l1_double_jet30_mass_min380_d_eta_max1p5 <= invariant_mass_3160763811507161590;
algo(75) <= l1_double_jet30_mass_min380_d_eta_max1p5;

-- 227 L1_LooseIsoEG28er2p1_Jet34er2p7_dR_Min0p3 : dist{EG28[EG-ETA_2p13,EG-ISO_0xC],JET34[JET-ETA_2p7]}[DR_MIN_0p3]
l1_loose_iso_eg28er2p1_jet34er2p7_d_r_min0p3 <= calo_calo_correlation_12094985861278072888;
algo(76) <= l1_loose_iso_eg28er2p1_jet34er2p7_d_r_min0p3;

-- 272 L1_ETM90_Jet60_dPhi_Min0p4 : dist{ETM90,JET60}[DPHI_MIN_0p4]
l1_etm90_jet60_d_phi_min0p4 <= calo_esum_correlation_16768129600365282577;
algo(65) <= l1_etm90_jet60_d_phi_min0p4;

-- 273 L1_ETM100_Jet60_dPhi_Min0p4 : dist{ETM100,JET60}[DPHI_MIN_0p4]
l1_etm100_jet60_d_phi_min0p4 <= calo_esum_correlation_13491612199618123042;
algo(63) <= l1_etm100_jet60_d_phi_min0p4;

-- 279 L1_DoubleEG_LooseIso23_10 : comb{EG23[EG-ISO_0xC],EG10}
l1_double_eg_loose_iso23_10 <= double_eg_9170720688096593570;
algo(30) <= l1_double_eg_loose_iso23_10;

-- 284 L1_DoubleJet_100_35_DoubleJet35_Mass_Min620 : comb{JET100,JET35} AND mass_inv{JET35,JET35}[MASS_MIN_620]
l1_double_jet_100_35_double_jet35_mass_min620 <= double_jet_16307690244847013909 and invariant_mass_2940649386995017095;
algo(72) <= l1_double_jet_100_35_double_jet35_mass_min620;

-- 285 L1_DoubleJet_110_35_DoubleJet35_Mass_Min620 : comb{JET110,JET35} AND mass_inv{JET35,JET35}[MASS_MIN_620]
l1_double_jet_110_35_double_jet35_mass_min620 <= double_jet_16379747838884941845 and invariant_mass_2940649386995017095;
algo(73) <= l1_double_jet_110_35_double_jet35_mass_min620;

-- 287 L1_DoubleJet_115_35_DoubleJet35_Mass_Min620 : comb{JET115,JET35} AND mass_inv{JET35,JET35}[MASS_MIN_620]
l1_double_jet_115_35_double_jet35_mass_min620 <= double_jet_16382562588652048405 and invariant_mass_2940649386995017095;
algo(74) <= l1_double_jet_115_35_double_jet35_mass_min620;

-- 300 L1_Mu22er2p1_Tau50er2p1 : MU22[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU50[TAU-ETA_2p13]
l1_mu22er2p1_tau50er2p1 <= single_mu_9379434261777827232 and single_tau_16608837536836783944;
algo(46) <= l1_mu22er2p1_tau50er2p1;

-- 301 L1_Mu22er2p1_Tau70er2p1 : MU22[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU70[TAU-ETA_2p13]
l1_mu22er2p1_tau70er2p1 <= single_mu_9379434261777827232 and single_tau_16608841934883295048;
algo(50) <= l1_mu22er2p1_tau70er2p1;

-- 305 L1_Mu22er2p1_IsoTau28er2p1 : MU22[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU28[TAU-ISO_0xE,TAU-ETA_2p13]
l1_mu22er2p1_iso_tau28er2p1 <= single_mu_9379434261777827232 and single_tau_254396839629108990;
algo(51) <= l1_mu22er2p1_iso_tau28er2p1;

-- 306 L1_Mu22er2p1_IsoTau30er2p1 : MU22[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU30[TAU-ISO_0xE,TAU-ETA_2p13]
l1_mu22er2p1_iso_tau30er2p1 <= single_mu_9379434261777827232 and single_tau_2416124660766947070;
algo(44) <= l1_mu22er2p1_iso_tau30er2p1;

-- 307 L1_Mu22er2p1_IsoTau32er2p1 : MU22[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU32[TAU-ISO_0xE,TAU-ETA_2p13]
l1_mu22er2p1_iso_tau32er2p1 <= single_mu_9379434261777827232 and single_tau_2452153457785911038;
algo(48) <= l1_mu22er2p1_iso_tau32er2p1;

-- 308 L1_Mu22er2p1_IsoTau33er2p1 : MU22[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU33[TAU-ISO_0xE,TAU-ETA_2p13]
l1_mu22er2p1_iso_tau33er2p1 <= single_mu_9379434261777827232 and single_tau_2470167856295393022;
algo(42) <= l1_mu22er2p1_iso_tau33er2p1;

-- 309 L1_Mu22er2p1_IsoTau34er2p1 : MU22[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU34[TAU-ISO_0xE,TAU-ETA_2p13]
l1_mu22er2p1_iso_tau34er2p1 <= single_mu_9379434261777827232 and single_tau_2488182254804875006;
algo(45) <= l1_mu22er2p1_iso_tau34er2p1;

-- 310 L1_Mu22er2p1_IsoTau35er2p1 : MU22[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU35[TAU-ISO_0xE,TAU-ETA_2p13]
l1_mu22er2p1_iso_tau35er2p1 <= single_mu_9379434261777827232 and single_tau_2506196653314356990;
algo(49) <= l1_mu22er2p1_iso_tau35er2p1;

-- 311 L1_Mu22er2p1_IsoTau36er2p1 : MU22[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU36[TAU-ISO_0xE,TAU-ETA_2p13]
l1_mu22er2p1_iso_tau36er2p1 <= single_mu_9379434261777827232 and single_tau_2524211051823838974;
algo(43) <= l1_mu22er2p1_iso_tau36er2p1;

-- 312 L1_Mu22er2p1_IsoTau38er2p1 : MU22[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU38[TAU-ISO_0xE,TAU-ETA_2p13]
l1_mu22er2p1_iso_tau38er2p1 <= single_mu_9379434261777827232 and single_tau_2560239848842802942;
algo(47) <= l1_mu22er2p1_iso_tau38er2p1;

-- 381 L1_DoubleMu0er1p4_SQ_OS_dR_Max1p4 : dist{MU0[MU-QLTY_SNGL,MU-ETA_1p4],MU0[MU-QLTY_SNGL,MU-ETA_1p4]}[DR_1p4,CHGCOR_OS]
l1_double_mu0er1p4_sq_os_d_r_max1p4 <= muon_muon_correlation_9513481109949270451;
algo(69) <= l1_double_mu0er1p4_sq_os_d_r_max1p4;

-- 382 L1_DoubleMu4p5_SQ_OS_dR_Max1p2 : dist{MU4p5[MU-QLTY_SNGL],MU4p5[MU-QLTY_SNGL]}[DR_1p2,CHGCOR_OS]
l1_double_mu4p5_sq_os_d_r_max1p2 <= muon_muon_correlation_12923126501326425857;
algo(70) <= l1_double_mu4p5_sq_os_d_r_max1p2;

-- 384 L1_DoubleMu6_SQ_OS : comb{MU6[MU-QLTY_SNGL],MU6[MU-QLTY_SNGL]}[CHGCOR_OS]
l1_double_mu6_sq_os <= double_mu_3274363720173353484;
algo(54) <= l1_double_mu6_sq_os;

-- 392 L1_DoubleMu4p5_SQ : comb{MU4p5[MU-QLTY_SNGL],MU4p5[MU-QLTY_SNGL]}
l1_double_mu4p5_sq <= double_mu_17582786187978172426;
algo(53) <= l1_double_mu4p5_sq;

-- 395 L1_DoubleMu0er1p5_SQ_OS : comb{MU0[MU-QLTY_SNGL,MU-ETA_1p5],MU0[MU-QLTY_SNGL,MU-ETA_1p5]}[CHGCOR_OS]
l1_double_mu0er1p5_sq_os <= double_mu_14617142003772573591;
algo(52) <= l1_double_mu0er1p5_sq_os;

-- 399 L1_TripleMu0_OQ : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]}
l1_triple_mu0_oq <= triple_mu_3324683353497813023;
algo(60) <= l1_triple_mu0_oq;

-- 402 L1_DoubleMu3_OS_DoubleEG7p5Upsilon : mass_inv{EG7p5[EG-ETA_2p13],EG7p5[EG-ETA_2p13]}[MASS_MASS_0to20] AND mass_inv{MU3[MU-QLTY_DBLE,MU-ETA_2p3],MU3[MU-QLTY_DBLE,MU-ETA_2p3]}[MASS_MASS_0to14,CHGCOR_OS]
l1_double_mu3_os_double_eg7p5_upsilon <= invariant_mass_16981538589298500419 and invariant_mass_4461482972834602413;
algo(77) <= l1_double_mu3_os_double_eg7p5_upsilon;

-- 427 L1_EG25er2p1_HTT125er : EG25[EG-ETA_2p13] AND HTT125
l1_eg25er2p1_htt125er <= single_eg_14262501742662192051 and single_htt_2496626710837;
algo(27) <= l1_eg25er2p1_htt125er;

-- 431 L1_ETM75_Jet60_dPhi_Min0p4 : dist{ETM75,JET60}[DPHI_MIN_0p4]
l1_etm75_jet60_d_phi_min0p4 <= calo_esum_correlation_16768129600233686289;
algo(64) <= l1_etm75_jet60_d_phi_min0p4;

-- 441 L1_DoubleMu_10_0_dEta_Max1p8 : dist{MU10[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]}[DETA_MAX_1p8]
l1_double_mu_10_0_d_eta_max1p8 <= muon_muon_correlation_8772456668275224612;
algo(68) <= l1_double_mu_10_0_d_eta_max1p8;

-- 461 L1_Mu10er2p1_ETM30 : MU10[MU-QLTY_SNGL,MU-ETA_2p10] AND ETM30
l1_mu10er2p1_etm30 <= single_mu_7037562455545169312 and single_etm_18699475376;
algo(5) <= l1_mu10er2p1_etm30;

-- 462 L1_Mu14er2p1_ETM30 : MU14[MU-QLTY_SNGL,MU-ETA_2p10] AND ETM30
l1_mu14er2p1_etm30 <= single_mu_7109620049583097248 and single_etm_18699475376;
algo(6) <= l1_mu14er2p1_etm30;

-- 472 L1_BPTX_BeamGas_B2_VME : EXT_BPTX_BeamGas_B2_VME
l1_bptx_beam_gas_b2_vme <= single_ext_9960888781443116569;
algo(0) <= l1_bptx_beam_gas_b2_vme;

-- 479 L1_UnpairedBunchBptxMinus : EXT_BPTX_B2NotB1_VME
l1_unpaired_bunch_bptx_minus <= single_ext_8736797827952386068;
algo(2) <= l1_unpaired_bunch_bptx_minus;

-- 483 L1_BPTX_RefAND_VME : EXT_BPTX_RefAND_VME
l1_bptx_ref_and_vme <= single_ext_15141600570663550655;
algo(1) <= l1_bptx_ref_and_vme;


-- ========================================================