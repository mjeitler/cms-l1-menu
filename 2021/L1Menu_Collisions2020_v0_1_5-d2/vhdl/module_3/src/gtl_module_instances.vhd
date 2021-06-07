-- ========================================================
-- from VHDL producer:

-- Module ID: 3

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2020_v0_1_5

-- Unique ID of L1 Trigger Menu:
-- bc1fa81a-3cbf-49e9-8c0a-9dd8c6637c06

-- Unique ID of firmware implementation:
-- dc57c735-a5e1-42af-83aa-e544104a35c4

-- Scale set:
-- scales_2021_03_02

-- VHDL producer version
-- v2.9.4

-- tmEventSetup version
-- v0.8.1

-- External condition assignment
single_ext_i329 <= ext_cond_bx_m2(7); -- single_ext_i329
single_ext_i330 <= ext_cond_bx_m1(4); -- single_ext_i330
single_ext_i331 <= ext_cond_bx_0(4); -- single_ext_i331
single_ext_i332 <= ext_cond_bx_p1(4); -- single_ext_i332
single_ext_i333 <= ext_cond_bx_p2(4); -- single_ext_i333
single_ext_i334 <= ext_cond_bx_0(7); -- single_ext_i334
single_ext_i336 <= ext_cond_bx_m1(7); -- single_ext_i336
single_ext_i337 <= ext_cond_bx_p1(7); -- single_ext_i337
single_ext_i348 <= ext_cond_bx_p2(7); -- single_ext_i348
single_ext_i349 <= ext_cond_bx_m2(4); -- single_ext_i349
-- Instantiations of muon charge correlations - only once for a certain Bx combination, if there is at least one DoubleMuon, TripleMuon, QuadMuon condition
-- or muon-muon correlation condition.

    muon_charge_correlations_bx_0_bx_0_i: entity work.muon_charge_correlations
        port map(mu_bx_0, mu_bx_0,
            ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
            ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
            ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);

-- Instantiations of eta and phi conversion to muon scale for calo-muon and muon-esums correlation conditions (used for DETA, DPHI, DR and mass) - once for every calo ObjectType in certain Bx used in correlation conditions

    jet_conv_2_muon_bx_0_l: for i in 0 to NR_JET_OBJECTS-1 generate
        jet_eta_conv_2_muon_eta_integer_bx_0(i) <= JET_ETA_CONV_2_MUON_ETA_LUT(CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.eta_high downto D_S_I_JET_V2.eta_low)));
        jet_phi_conv_2_muon_phi_integer_bx_0(i) <= JET_PHI_CONV_2_MUON_PHI_LUT(CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.phi_high downto D_S_I_JET_V2.phi_low)));
    end generate jet_conv_2_muon_bx_0_l;
    eg_conv_2_muon_bx_0_l: for i in 0 to NR_EG_OBJECTS-1 generate
        eg_eta_conv_2_muon_eta_integer_bx_0(i) <= EG_ETA_CONV_2_MUON_ETA_LUT(CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.eta_high downto D_S_I_EG_V2.eta_low)));
        eg_phi_conv_2_muon_phi_integer_bx_0(i) <= EG_PHI_CONV_2_MUON_PHI_LUT(CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.phi_high downto D_S_I_EG_V2.phi_low)));
    end generate eg_conv_2_muon_bx_0_l;
    etm_phi_conv_2_muon_phi_integer_bx_0(0) <= ETM_PHI_CONV_2_MUON_PHI_LUT(CONV_INTEGER(etm_bx_0(D_S_I_ETM_V2.phi_high downto D_S_I_ETM_V2.phi_low)));

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
    tau_data_bx_0_l: for i in 0 to NR_TAU_OBJECTS-1 generate
        tau_pt_vector_bx_0(i)(TAU_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(TAU_PT_LUT(CONV_INTEGER(tau_bx_0(i)(D_S_I_TAU_V2.et_high downto D_S_I_TAU_V2.et_low))), TAU_PT_VECTOR_WIDTH);
        tau_eta_integer_bx_0(i) <= CONV_INTEGER(signed(tau_bx_0(i)(D_S_I_TAU_V2.eta_high downto D_S_I_TAU_V2.eta_low)));
        tau_phi_integer_bx_0(i) <= CONV_INTEGER(tau_bx_0(i)(D_S_I_TAU_V2.phi_high downto D_S_I_TAU_V2.phi_low));
        tau_cos_phi_bx_0(i) <= CALO_COS_PHI_LUT(CONV_INTEGER(tau_bx_0(i)(D_S_I_TAU_V2.phi_high downto D_S_I_TAU_V2.phi_low)));
        tau_sin_phi_bx_0(i) <= CALO_SIN_PHI_LUT(CONV_INTEGER(tau_bx_0(i)(D_S_I_TAU_V2.phi_high downto D_S_I_TAU_V2.phi_low)));
        conv_tau_cos_phi_bx_0(i) <= MUON_COS_PHI_LUT(tau_phi_conv_2_muon_phi_integer_bx_0(i));
        conv_tau_sin_phi_bx_0(i) <= MUON_SIN_PHI_LUT(tau_phi_conv_2_muon_phi_integer_bx_0(i));
    end generate tau_data_bx_0_l;
    mu_data_bx_0_l: for i in 0 to NR_MU_OBJECTS-1 generate
        mu_pt_vector_bx_0(i)(MU_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(MU_PT_LUT(CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.pt_high downto D_S_I_MU_V2.pt_low))), MU_PT_VECTOR_WIDTH);
        mu_upt_vector_bx_0(i)(MU_UPT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(MU_UPT_LUT(CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.upt_high downto D_S_I_MU_V2.upt_low))), MU_UPT_VECTOR_WIDTH);
        mu_eta_integer_bx_0(i) <= CONV_INTEGER(signed(mu_bx_0(i)(D_S_I_MU_V2.eta_high downto D_S_I_MU_V2.eta_low)));
        mu_phi_integer_bx_0(i) <= CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low));
        mu_cos_phi_bx_0(i) <= MUON_COS_PHI_LUT(CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low)));
        mu_sin_phi_bx_0(i) <= MUON_SIN_PHI_LUT(CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low)));
    end generate mu_data_bx_0_l;
    etm_data_bx_0_l: for i in 0 to NR_ETM_OBJECTS-1 generate
        etm_pt_vector_bx_0(0)(ETM_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(ETM_PT_LUT(CONV_INTEGER(etm_bx_0(D_S_I_ETM_V2.et_high downto D_S_I_ETM_V2.et_low))), ETM_PT_VECTOR_WIDTH);
        etm_phi_integer_bx_0(0) <= CONV_INTEGER(etm_bx_0(D_S_I_ETM_V2.phi_high downto D_S_I_ETM_V2.phi_low));
        etm_cos_phi_bx_0(0) <= CALO_COS_PHI_LUT(CONV_INTEGER(etm_bx_0(D_S_I_ETM_V2.phi_high downto D_S_I_ETM_V2.phi_low)));
        etm_sin_phi_bx_0(0) <= CALO_SIN_PHI_LUT(CONV_INTEGER(etm_bx_0(D_S_I_ETM_V2.phi_high downto D_S_I_ETM_V2.phi_low)));
        conv_etm_cos_phi_bx_0(0) <= MUON_COS_PHI_LUT(etm_phi_conv_2_muon_phi_integer_bx_0(0));
        conv_etm_sin_phi_bx_0(0) <= MUON_SIN_PHI_LUT(etm_phi_conv_2_muon_phi_integer_bx_0(0));
    end generate etm_data_bx_0_l;

-- Instantiations of differences for correlation conditions (used for DETA, DPHI, DR, mass and b_tagging) - once for correlation conditions with two ObjectTypes in certain Bxs

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
    diff_eg_tau_eta_bx_0_bx_0_i: entity work.sub_eta_integer_obj_vs_obj
        generic map(NR_EG_OBJECTS, NR_TAU_OBJECTS)
        port map(eg_eta_integer_bx_0, tau_eta_integer_bx_0, diff_eg_tau_bx_0_bx_0_eta_integer);
    diff_eg_tau_phi_bx_0_bx_0_i: entity work.sub_phi_integer_obj_vs_obj
        generic map(NR_EG_OBJECTS, NR_TAU_OBJECTS, CALO_PHI_HALF_RANGE_BINS)
        port map(eg_phi_integer_bx_0, tau_phi_integer_bx_0, diff_eg_tau_bx_0_bx_0_phi_integer);
    eg_tau_bx_0_bx_0_l1: for i in 0 to NR_EG_OBJECTS-1 generate
        eg_tau_bx_0_bx_0_l2: for j in 0 to NR_TAU_OBJECTS-1 generate
            diff_eg_tau_bx_0_bx_0_eta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_TAU_DIFF_ETA_LUT(diff_eg_tau_bx_0_bx_0_eta_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
            diff_eg_tau_bx_0_bx_0_phi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_TAU_DIFF_PHI_LUT(diff_eg_tau_bx_0_bx_0_phi_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
        end generate eg_tau_bx_0_bx_0_l2;
    end generate eg_tau_bx_0_bx_0_l1;
    diff_jet_mu_eta_bx_0_bx_0_i: entity work.sub_eta_integer_obj_vs_obj
        generic map(NR_JET_OBJECTS, NR_MU_OBJECTS)
        port map(jet_eta_conv_2_muon_eta_integer_bx_0, mu_eta_integer_bx_0, diff_jet_mu_bx_0_bx_0_eta_integer);
    diff_jet_mu_phi_bx_0_bx_0_i: entity work.sub_phi_integer_obj_vs_obj
        generic map(NR_JET_OBJECTS, NR_MU_OBJECTS, MUON_PHI_HALF_RANGE_BINS)
        port map(jet_phi_conv_2_muon_phi_integer_bx_0, mu_phi_integer_bx_0, diff_jet_mu_bx_0_bx_0_phi_integer);
    jet_mu_bx_0_bx_0_l1: for i in 0 to NR_JET_OBJECTS-1 generate
        jet_mu_bx_0_bx_0_l2: for j in 0 to NR_MU_OBJECTS-1 generate
            diff_jet_mu_bx_0_bx_0_eta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_MU_DIFF_ETA_LUT(diff_jet_mu_bx_0_bx_0_eta_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
            diff_jet_mu_bx_0_bx_0_phi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_MU_DIFF_PHI_LUT(diff_jet_mu_bx_0_bx_0_phi_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
        end generate jet_mu_bx_0_bx_0_l2;
    end generate jet_mu_bx_0_bx_0_l1;
    diff_tau_tau_eta_bx_0_bx_0_i: entity work.sub_eta_integer_obj_vs_obj
        generic map(NR_TAU_OBJECTS, NR_TAU_OBJECTS)
        port map(tau_eta_integer_bx_0, tau_eta_integer_bx_0, diff_tau_tau_bx_0_bx_0_eta_integer);
    diff_tau_tau_phi_bx_0_bx_0_i: entity work.sub_phi_integer_obj_vs_obj
        generic map(NR_TAU_OBJECTS, NR_TAU_OBJECTS, CALO_PHI_HALF_RANGE_BINS)
        port map(tau_phi_integer_bx_0, tau_phi_integer_bx_0, diff_tau_tau_bx_0_bx_0_phi_integer);
    tau_tau_bx_0_bx_0_l1: for i in 0 to NR_TAU_OBJECTS-1 generate
        tau_tau_bx_0_bx_0_l2: for j in 0 to NR_TAU_OBJECTS-1 generate
            diff_tau_tau_bx_0_bx_0_eta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(TAU_TAU_DIFF_ETA_LUT(diff_tau_tau_bx_0_bx_0_eta_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
            diff_tau_tau_bx_0_bx_0_phi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(TAU_TAU_DIFF_PHI_LUT(diff_tau_tau_bx_0_bx_0_phi_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
        end generate tau_tau_bx_0_bx_0_l2;
    end generate tau_tau_bx_0_bx_0_l1;
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
    diff_eg_etm_phi_bx_0_bx_0_i: entity work.sub_phi_integer_obj_vs_obj
        generic map(NR_EG_OBJECTS, NR_ETM_OBJECTS, CALO_PHI_HALF_RANGE_BINS)
        port map(eg_phi_integer_bx_0, etm_phi_integer_bx_0, diff_eg_etm_bx_0_bx_0_phi_integer);
    eg_etm_bx_0_bx_0_l1: for i in 0 to NR_EG_OBJECTS-1 generate
        eg_etm_bx_0_bx_0_l2: for j in 0 to NR_ETM_OBJECTS-1 generate
            diff_eg_etm_bx_0_bx_0_phi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_ETM_DIFF_PHI_LUT(diff_eg_etm_bx_0_bx_0_phi_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
        end generate eg_etm_bx_0_bx_0_l2;
    end generate eg_etm_bx_0_bx_0_l1;

-- Instantiations of cosh-deta and cos-dphi LUTs for correlation conditions (used for mass and overlap_remover) - once for correlation conditions with two ObjectTypes in certain Bxs

    jet_jet_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_JET_OBJECTS-1 generate
        jet_jet_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_JET_OBJECTS-1 generate
            jet_jet_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_JET_COSH_DETA_LUT(diff_jet_jet_bx_0_bx_0_eta_integer(i,j)), JET_JET_COSH_COS_VECTOR_WIDTH);
            jet_jet_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_JET_COS_DPHI_LUT(diff_jet_jet_bx_0_bx_0_phi_integer(i,j)), JET_JET_COSH_COS_VECTOR_WIDTH);
            jet_jet_bx_0_bx_0_deta_bin_vector(i,j) <= CONV_STD_LOGIC_VECTOR(diff_jet_jet_bx_0_bx_0_eta_integer(i,j), JET_JET_DETA_BINS_WIDTH);
            jet_jet_bx_0_bx_0_dphi_bin_vector(i,j) <= CONV_STD_LOGIC_VECTOR(diff_jet_jet_bx_0_bx_0_phi_integer(i,j), JET_JET_DPHI_BINS_WIDTH);
        end generate jet_jet_bx_0_bx_0_cosh_cos_l2;
    end generate jet_jet_bx_0_bx_0_cosh_cos_l1;
    eg_tau_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_EG_OBJECTS-1 generate
        eg_tau_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_TAU_OBJECTS-1 generate
            eg_tau_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_TAU_COSH_DETA_LUT(diff_eg_tau_bx_0_bx_0_eta_integer(i,j)), EG_TAU_COSH_COS_VECTOR_WIDTH);
            eg_tau_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_TAU_COS_DPHI_LUT(diff_eg_tau_bx_0_bx_0_phi_integer(i,j)), EG_TAU_COSH_COS_VECTOR_WIDTH);
            eg_tau_bx_0_bx_0_deta_bin_vector(i,j) <= CONV_STD_LOGIC_VECTOR(diff_eg_tau_bx_0_bx_0_eta_integer(i,j), EG_TAU_DETA_BINS_WIDTH);
            eg_tau_bx_0_bx_0_dphi_bin_vector(i,j) <= CONV_STD_LOGIC_VECTOR(diff_eg_tau_bx_0_bx_0_phi_integer(i,j), EG_TAU_DPHI_BINS_WIDTH);
        end generate eg_tau_bx_0_bx_0_cosh_cos_l2;
    end generate eg_tau_bx_0_bx_0_cosh_cos_l1;
    jet_mu_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_JET_OBJECTS-1 generate
        jet_mu_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_MU_OBJECTS-1 generate
            jet_mu_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_MU_COSH_DETA_LUT(diff_jet_mu_bx_0_bx_0_eta_integer(i,j)), JET_MU_COSH_COS_VECTOR_WIDTH);
            jet_mu_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_MU_COS_DPHI_LUT(diff_jet_mu_bx_0_bx_0_phi_integer(i,j)), JET_MU_COSH_COS_VECTOR_WIDTH);
            jet_mu_bx_0_bx_0_deta_bin_vector(i,j) <= CONV_STD_LOGIC_VECTOR(diff_jet_mu_bx_0_bx_0_eta_integer(i,j), JET_MU_DETA_BINS_WIDTH);
            jet_mu_bx_0_bx_0_dphi_bin_vector(i,j) <= CONV_STD_LOGIC_VECTOR(diff_jet_mu_bx_0_bx_0_phi_integer(i,j), JET_MU_DPHI_BINS_WIDTH);
        end generate jet_mu_bx_0_bx_0_cosh_cos_l2;
    end generate jet_mu_bx_0_bx_0_cosh_cos_l1;
    tau_tau_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_TAU_OBJECTS-1 generate
        tau_tau_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_TAU_OBJECTS-1 generate
            tau_tau_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(TAU_TAU_COSH_DETA_LUT(diff_tau_tau_bx_0_bx_0_eta_integer(i,j)), TAU_TAU_COSH_COS_VECTOR_WIDTH);
            tau_tau_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(TAU_TAU_COS_DPHI_LUT(diff_tau_tau_bx_0_bx_0_phi_integer(i,j)), TAU_TAU_COSH_COS_VECTOR_WIDTH);
            tau_tau_bx_0_bx_0_deta_bin_vector(i,j) <= CONV_STD_LOGIC_VECTOR(diff_tau_tau_bx_0_bx_0_eta_integer(i,j), TAU_TAU_DETA_BINS_WIDTH);
            tau_tau_bx_0_bx_0_dphi_bin_vector(i,j) <= CONV_STD_LOGIC_VECTOR(diff_tau_tau_bx_0_bx_0_phi_integer(i,j), TAU_TAU_DPHI_BINS_WIDTH);
        end generate tau_tau_bx_0_bx_0_cosh_cos_l2;
    end generate tau_tau_bx_0_bx_0_cosh_cos_l1;
    mu_mu_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_MU_OBJECTS-1 generate
        mu_mu_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_MU_OBJECTS-1 generate
            mu_mu_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_COSH_DETA_LUT(diff_mu_mu_bx_0_bx_0_eta_integer(i,j)), MU_MU_COSH_COS_VECTOR_WIDTH);
            mu_mu_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_COS_DPHI_LUT(diff_mu_mu_bx_0_bx_0_phi_integer(i,j)), MU_MU_COSH_COS_VECTOR_WIDTH);
            mu_mu_bx_0_bx_0_deta_bin_vector(i,j) <= CONV_STD_LOGIC_VECTOR(diff_mu_mu_bx_0_bx_0_eta_integer(i,j), MU_MU_DETA_BINS_WIDTH);
            mu_mu_bx_0_bx_0_dphi_bin_vector(i,j) <= CONV_STD_LOGIC_VECTOR(diff_mu_mu_bx_0_bx_0_phi_integer(i,j), MU_MU_DPHI_BINS_WIDTH);
        end generate mu_mu_bx_0_bx_0_cosh_cos_l2;
    end generate mu_mu_bx_0_bx_0_cosh_cos_l1;
    eg_eg_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_EG_OBJECTS-1 generate
        eg_eg_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_EG_OBJECTS-1 generate
            eg_eg_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_EG_COSH_DETA_LUT(diff_eg_eg_bx_0_bx_0_eta_integer(i,j)), EG_EG_COSH_COS_VECTOR_WIDTH);
            eg_eg_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_EG_COS_DPHI_LUT(diff_eg_eg_bx_0_bx_0_phi_integer(i,j)), EG_EG_COSH_COS_VECTOR_WIDTH);
            eg_eg_bx_0_bx_0_deta_bin_vector(i,j) <= CONV_STD_LOGIC_VECTOR(diff_eg_eg_bx_0_bx_0_eta_integer(i,j), EG_EG_DETA_BINS_WIDTH);
            eg_eg_bx_0_bx_0_dphi_bin_vector(i,j) <= CONV_STD_LOGIC_VECTOR(diff_eg_eg_bx_0_bx_0_phi_integer(i,j), EG_EG_DPHI_BINS_WIDTH);
        end generate eg_eg_bx_0_bx_0_cosh_cos_l2;
    end generate eg_eg_bx_0_bx_0_cosh_cos_l1;
    eg_etm_bx_0_bx_0_cos_dphi_l1: for i in 0 to NR_EG_OBJECTS-1 generate
        eg_etm_bx_0_bx_0_cos_dphi_l2: for j in 0 to NR_ETM_OBJECTS-1 generate
            eg_etm_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_ETM_COS_DPHI_LUT(diff_eg_etm_bx_0_bx_0_phi_integer(i,j)), EG_ETM_COSH_COS_VECTOR_WIDTH);
        end generate eg_etm_bx_0_bx_0_cos_dphi_l2;
    end generate eg_etm_bx_0_bx_0_cos_dphi_l1;


-- Instantiations of conditions
double_eg_i172_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0032", X"0018", X"0000", X"0000"),
        nr_eta_windows => (1, 1, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0039", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"00C6", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 2
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => double_eg_i172
    );

double_eg_i178_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0032", X"0018", X"0000", X"0000"),
        nr_eta_windows => (1, 1, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0039", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"00C6", X"0000", X"0000"),
        iso_luts => (X"C", X"F", X"F", X"F"),
        -- no correlation cuts
        nr_templates => 2
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => double_eg_i178
    );

double_eg_i193_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0010", X"0010", X"0000", X"0000"),
        nr_eta_windows => (1, 1, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0039", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"00C6", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 2
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => double_eg_i193
    );

double_eg_i85_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0014", X"0014", X"0000", X"0000"),
        nr_eta_windows => (1, 1, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0039", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"00C6", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 2
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => double_eg_i85
    );

double_eg_i86_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0018", X"0018", X"0000", X"0000"),
        nr_eta_windows => (1, 1, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0039", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"00C6", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 2
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => double_eg_i86
    );

double_eg_i87_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"001E", X"001E", X"0000", X"0000"),
        nr_eta_windows => (1, 1, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0039", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"00C6", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 2
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => double_eg_i87
    );

double_eg_i88_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0022", X"0022", X"0000", X"0000"),
        nr_eta_windows => (1, 1, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0039", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"00C6", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 2
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => double_eg_i88
    );

double_jet_i122_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => JET_TYPE,
        pt_thresholds => (X"0050", X"0050", X"0000", X"0000"),
        nr_eta_windows => (1, 1, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0039", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"00C6", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 2
    )
    port map(
        lhc_clk,
        jet_bx_0,
        condition_o => double_jet_i122
    );

double_jet_i263_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => JET_TYPE,
        pt_thresholds => (X"00C8", X"00C8", X"0000", X"0000"),
        nr_eta_windows => (1, 1, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0039", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"00C6", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 2
    )
    port map(
        lhc_clk,
        jet_bx_0,
        condition_o => double_jet_i263
    );

quad_jet_i309_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => JET_TYPE,
        pt_thresholds => (X"008C", X"006E", X"0050", X"0046"),
        nr_eta_windows => (1, 1, 1, 1),
        eta_w1_upper_limits => (X"0036", X"0036", X"0036", X"0036"),
        eta_w1_lower_limits => (X"00C9", X"00C9", X"00C9", X"00C9"),
        -- no correlation cuts
        nr_templates => 4
    )
    port map(
        lhc_clk,
        jet_bx_0,
        condition_o => quad_jet_i309
    );

quad_jet_i310_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => JET_TYPE,
        pt_thresholds => (X"008C", X"006E", X"0050", X"0050"),
        nr_eta_windows => (1, 1, 1, 1),
        eta_w1_upper_limits => (X"0036", X"0036", X"0036", X"0036"),
        eta_w1_lower_limits => (X"00C9", X"00C9", X"00C9", X"00C9"),
        -- no correlation cuts
        nr_templates => 4
    )
    port map(
        lhc_clk,
        jet_bx_0,
        condition_o => quad_jet_i310
    );

quad_jet_i311_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => JET_TYPE,
        pt_thresholds => (X"00A0", X"0078", X"005A", X"0050"),
        nr_eta_windows => (1, 1, 1, 1),
        eta_w1_upper_limits => (X"0030", X"0030", X"0034", X"0034"),
        eta_w1_lower_limits => (X"00CF", X"00CF", X"00CB", X"00CB"),
        -- no correlation cuts
        nr_templates => 4
    )
    port map(
        lhc_clk,
        jet_bx_0,
        condition_o => quad_jet_i311
    );

quad_jet_i312_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => JET_TYPE,
        pt_thresholds => (X"00A0", X"0078", X"0064", X"005A"),
        nr_eta_windows => (1, 1, 1, 1),
        eta_w1_upper_limits => (X"0030", X"0030", X"0034", X"0034"),
        eta_w1_lower_limits => (X"00CF", X"00CF", X"00CB", X"00CB"),
        -- no correlation cuts
        nr_templates => 4
    )
    port map(
        lhc_clk,
        jet_bx_0,
        condition_o => quad_jet_i312
    );

single_eg_i129_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0038", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0072", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"003A", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => single_eg_i129
    );

single_eg_i130_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0038", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"00C5", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"008D", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => single_eg_i130
    );

single_eg_i136_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"004C", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => single_eg_i136
    );

single_eg_i141_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0078", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => single_eg_i141
    );

single_eg_i142_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0034", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"0000", X"0000", X"0000"),
        iso_luts => (X"C", X"F", X"F", X"F"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => single_eg_i142
    );

single_eg_i144_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0038", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0072", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"003A", X"0000", X"0000", X"0000"),
        iso_luts => (X"C", X"F", X"F", X"F"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => single_eg_i144
    );

single_eg_i145_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0038", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"00C5", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"008D", X"0000", X"0000", X"0000"),
        iso_luts => (X"C", X"F", X"F", X"F"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => single_eg_i145
    );

single_eg_i154_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0034", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0030", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00CF", X"0000", X"0000", X"0000"),
        iso_luts => (X"A", X"F", X"F", X"F"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => single_eg_i154
    );

single_eg_i161_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"003C", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"0000", X"0000", X"0000"),
        iso_luts => (X"A", X"F", X"F", X"F"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => single_eg_i161
    );

single_jet_i104_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => JET_TYPE,
        pt_thresholds => (X"00C8", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        jet_bx_0,
        condition_o => single_jet_i104
    );

single_jet_i121_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => JET_TYPE,
        pt_thresholds => (X"0078", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        jet_bx_0,
        condition_o => single_jet_i121
    );

single_jet_i245_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => JET_TYPE,
        pt_thresholds => (X"0046", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        jet_bx_0,
        condition_o => single_jet_i245
    );

single_jet_i248_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => JET_TYPE,
        pt_thresholds => (X"0118", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        jet_bx_0,
        condition_o => single_jet_i248
    );

single_jet_i261_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => JET_TYPE,
        pt_thresholds => (X"0018", X"0000", X"0000", X"0000"),
        nr_eta_windows => (2, 0, 0, 0),
        eta_w1_upper_limits => (X"00DF", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00BC", X"0000", X"0000", X"0000"),
        eta_w2_upper_limits => (X"0043", X"0000", X"0000", X"0000"),
        eta_w2_lower_limits => (X"0020", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        jet_bx_0,
        condition_o => single_jet_i261
    );

single_jet_i339_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => JET_TYPE,
        pt_thresholds => (X"0028", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        jet_bx_0,
        condition_o => single_jet_i339
    );

single_jet_i340_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => JET_TYPE,
        pt_thresholds => (X"0056", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        jet_bx_0,
        condition_o => single_jet_i340
    );

single_jet_i341_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => JET_TYPE,
        pt_thresholds => (X"005C", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        jet_bx_0,
        condition_o => single_jet_i341
    );

single_jet_i96_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => JET_TYPE,
        pt_thresholds => (X"003C", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        jet_bx_0,
        condition_o => single_jet_i96
    );

single_tau_i202_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => TAU_TYPE,
        pt_thresholds => (X"0104", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0030", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00CF", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        tau_bx_0,
        condition_o => single_tau_i202
    );

single_tau_i217_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => TAU_TYPE,
        pt_thresholds => (X"0038", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0030", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00CF", X"0000", X"0000", X"0000"),
        iso_luts => (X"E", X"F", X"F", X"F"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        tau_bx_0,
        condition_o => single_tau_i217
    );

single_tau_i218_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => TAU_TYPE,
        pt_thresholds => (X"003C", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0030", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00CF", X"0000", X"0000", X"0000"),
        iso_luts => (X"E", X"F", X"F", X"F"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        tau_bx_0,
        condition_o => single_tau_i218
    );

single_tau_i219_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => TAU_TYPE,
        pt_thresholds => (X"0040", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0030", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00CF", X"0000", X"0000", X"0000"),
        iso_luts => (X"E", X"F", X"F", X"F"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        tau_bx_0,
        condition_o => single_tau_i219
    );

single_tau_i220_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => TAU_TYPE,
        pt_thresholds => (X"0044", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0030", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00CF", X"0000", X"0000", X"0000"),
        iso_luts => (X"E", X"F", X"F", X"F"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        tau_bx_0,
        condition_o => single_tau_i220
    );

single_tau_i221_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => TAU_TYPE,
        pt_thresholds => (X"0048", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0030", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00CF", X"0000", X"0000", X"0000"),
        iso_luts => (X"E", X"F", X"F", X"F"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        tau_bx_0,
        condition_o => single_tau_i221
    );

single_tau_i222_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => TAU_TYPE,
        pt_thresholds => (X"0050", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0030", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00CF", X"0000", X"0000", X"0000"),
        iso_luts => (X"E", X"F", X"F", X"F"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        tau_bx_0,
        condition_o => single_tau_i222
    );

single_tau_i223_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => TAU_TYPE,
        pt_thresholds => (X"008C", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0030", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00CF", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        tau_bx_0,
        condition_o => single_tau_i223
    );

triple_eg_i182_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0020", X"001E", X"0010", X"0000"),
        nr_eta_windows => (1, 1, 1, 0),
        eta_w1_upper_limits => (X"0039", X"0039", X"0039", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"00C6", X"00C6", X"0000"),
        -- no correlation cuts
        nr_templates => 3
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => triple_eg_i182
    );

double_mu_i119_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0007", X"0007", X"0000", X"0000"),
        qual_luts => (X"F000", X"F000", X"FFFF", X"FFFF"),
        -- no correlation cuts
        nr_templates => 2
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => double_mu_i119
    );

double_mu_i35_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0001", X"0001", X"0000", X"0000"),
        qual_luts => (X"F000", X"F000", X"FFFF", X"FFFF"),
        -- no correlation cuts
        nr_templates => 2
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => double_mu_i35
    );

double_mu_i36_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0001", X"0001", X"0000", X"0000"),
        qual_luts => (X"F000", X"F000", X"FFFF", X"FFFF"),
        -- charge correlation cut
        requested_charge_correlation => "os",
        -- no correlation cuts
        nr_templates => 2
    )
    port map(
        lhc_clk,
        mu_bx_0,
        ls_charcorr_double => ls_charcorr_double_bx_0_bx_0,
        os_charcorr_double => os_charcorr_double_bx_0_bx_0,
        condition_o => double_mu_i36
    );

double_mu_i42_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"001F", X"000F", X"0000", X"0000"),
        qual_luts => (X"FF00", X"FF00", X"FFFF", X"FFFF"),
        -- no correlation cuts
        nr_templates => 2
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => double_mu_i42
    );

double_mu_i55_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"000A", X"000A", X"0000", X"0000"),
        qual_luts => (X"F000", X"F000", X"FFFF", X"FFFF"),
        -- charge correlation cut
        requested_charge_correlation => "os",
        -- no correlation cuts
        nr_templates => 2
    )
    port map(
        lhc_clk,
        mu_bx_0,
        ls_charcorr_double => ls_charcorr_double_bx_0_bx_0,
        os_charcorr_double => os_charcorr_double_bx_0_bx_0,
        condition_o => double_mu_i55
    );

quad_mu_i76_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0001", X"0001", X"0001", X"0001"),
        qual_luts => (X"FFF0", X"FFF0", X"FFF0", X"FFF0"),
        -- no correlation cuts
        nr_templates => 4
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => quad_mu_i76
    );

quad_mu_i78_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0001", X"0001", X"0001", X"0001"),
        qual_luts => (X"F000", X"F000", X"F000", X"F000"),
        -- no correlation cuts
        nr_templates => 4
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => quad_mu_i78
    );

single_mu_i103_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0007", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"008A", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"0176", X"0000", X"0000", X"0000"),
        qual_luts => (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => single_mu_i103
    );

single_mu_i2_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0001", X"0000", X"0000", X"0000"),
        nr_eta_windows => (2, 0, 0, 0),
        eta_w1_upper_limits => (X"0072", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"004A", X"0000", X"0000", X"0000"),
        eta_w2_upper_limits => (X"01B6", X"0000", X"0000", X"0000"),
        eta_w2_lower_limits => (X"018E", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => single_mu_i2
    );

single_mu_i20_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"002D", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0049", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"01B7", X"0000", X"0000", X"0000"),
        qual_luts => (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => single_mu_i20
    );

single_mu_i216_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"002D", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"00C1", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"013F", X"0000", X"0000", X"0000"),
        qual_luts => (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => single_mu_i216
    );

single_mu_i231_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0001", X"0000", X"0000", X"0000"),
        upt_cuts => (true, false, false, false),
        upt_upper_limits => (X"00FF", X"0000", X"0000", X"0000"),
        upt_lower_limits => (X"0006", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => single_mu_i231
    );

single_mu_i25_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"000F", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"008A", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"0176", X"0000", X"0000", X"0000"),
        qual_luts => (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => single_mu_i25
    );

single_mu_i298_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0011", X"0000", X"0000", X"0000"),
        qual_luts => (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => single_mu_i298
    );

single_mu_i30_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"001D", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"008A", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"0176", X"0000", X"0000", X"0000"),
        qual_luts => (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => single_mu_i30
    );

single_mu_i335_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0001", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0081", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"017F", X"0000", X"0000", X"0000"),
        qual_luts => (X"FFF0", X"FFFF", X"FFFF", X"FFFF"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => single_mu_i335
    );

single_mu_i338_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0001", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0065", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"019B", X"0000", X"0000", X"0000"),
        qual_luts => (X"FFF0", X"FFFF", X"FFFF", X"FFFF"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => single_mu_i338
    );

single_mu_i371_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0001", X"0000", X"0000", X"0000"),
        upt_cuts => (true, false, false, false),
        upt_upper_limits => (X"00FF", X"0000", X"0000", X"0000"),
        upt_lower_limits => (X"0015", X"0000", X"0000", X"0000"),
        ip_luts => (X"1", X"F", X"F", X"F"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => single_mu_i371
    );

single_mu_i4_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0001", X"0000", X"0000", X"0000"),
        qual_luts => (X"FFF0", X"FFFF", X"FFFF", X"FFFF"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => single_mu_i4
    );

single_mu_i7_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0001", X"0000", X"0000", X"0000"),
        nr_eta_windows => (2, 0, 0, 0),
        eta_w1_upper_limits => (X"0072", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"004A", X"0000", X"0000", X"0000"),
        eta_w2_upper_limits => (X"01B6", X"0000", X"0000", X"0000"),
        eta_w2_lower_limits => (X"018E", X"0000", X"0000", X"0000"),
        qual_luts => (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => single_mu_i7
    );

single_mu_i84_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"000D", X"0000", X"0000", X"0000"),
        qual_luts => (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => single_mu_i84
    );

single_mu_i9_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0007", X"0000", X"0000", X"0000"),
        qual_luts => (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => single_mu_i9
    );

triple_mu_i62_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0001", X"0001", X"0001", X"0000"),
        qual_luts => (X"F000", X"F000", X"F000", X"FFFF"),
        -- no correlation cuts
        nr_templates => 3
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => triple_mu_i62
    );

triple_mu_i67_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"000B", X"0007", X"0007", X"0000"),
        qual_luts => (X"FF00", X"FF00", X"FF00", X"FFFF"),
        -- no correlation cuts
        nr_templates => 3
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => triple_mu_i67
    );

single_etmhf_i105_i: entity work.esums_conditions
    generic map(
        et_threshold => X"0050",
        obj_type => ETMHF_TYPE
    )
    port map(
        lhc_clk,
        etmhf_bx_0,
        condition_o => single_etmhf_i105
    );

single_etmhf_i106_i: entity work.esums_conditions
    generic map(
        et_threshold => X"0064",
        obj_type => ETMHF_TYPE
    )
    port map(
        lhc_clk,
        etmhf_bx_0,
        condition_o => single_etmhf_i106
    );

single_etmhf_i123_i: entity work.esums_conditions
    generic map(
        et_threshold => X"0078",
        obj_type => ETMHF_TYPE
    )
    port map(
        lhc_clk,
        etmhf_bx_0,
        condition_o => single_etmhf_i123
    );

single_etmhf_i224_i: entity work.esums_conditions
    generic map(
        et_threshold => X"00A0",
        obj_type => ETMHF_TYPE
    )
    port map(
        lhc_clk,
        etmhf_bx_0,
        condition_o => single_etmhf_i224
    );

single_etmhf_i225_i: entity work.esums_conditions
    generic map(
        et_threshold => X"00B4",
        obj_type => ETMHF_TYPE
    )
    port map(
        lhc_clk,
        etmhf_bx_0,
        condition_o => single_etmhf_i225
    );

single_etmhf_i226_i: entity work.esums_conditions
    generic map(
        et_threshold => X"00C8",
        obj_type => ETMHF_TYPE
    )
    port map(
        lhc_clk,
        etmhf_bx_0,
        condition_o => single_etmhf_i226
    );

single_etmhf_i227_i: entity work.esums_conditions
    generic map(
        et_threshold => X"00DC",
        obj_type => ETMHF_TYPE
    )
    port map(
        lhc_clk,
        etmhf_bx_0,
        condition_o => single_etmhf_i227
    );

single_etmhf_i262_i: entity work.esums_conditions
    generic map(
        et_threshold => X"008C",
        obj_type => ETMHF_TYPE
    )
    port map(
        lhc_clk,
        etmhf_bx_0,
        condition_o => single_etmhf_i262
    );

single_etmhf_i325_i: entity work.esums_conditions
    generic map(
        et_threshold => X"00F0",
        obj_type => ETMHF_TYPE
    )
    port map(
        lhc_clk,
        etmhf_bx_0,
        condition_o => single_etmhf_i325
    );

single_etmhf_i326_i: entity work.esums_conditions
    generic map(
        et_threshold => X"0104",
        obj_type => ETMHF_TYPE
    )
    port map(
        lhc_clk,
        etmhf_bx_0,
        condition_o => single_etmhf_i326
    );

single_htt_i107_i: entity work.esums_conditions
    generic map(
        et_threshold => X"01E0",
        obj_type => HTT_TYPE
    )
    port map(
        lhc_clk,
        htt_bx_0,
        condition_o => single_htt_i107
    );

single_htt_i108_i: entity work.esums_conditions
    generic map(
        et_threshold => X"01F4",
        obj_type => HTT_TYPE
    )
    port map(
        lhc_clk,
        htt_bx_0,
        condition_o => single_htt_i108
    );

single_htt_i120_i: entity work.esums_conditions
    generic map(
        et_threshold => X"0078",
        obj_type => HTT_TYPE
    )
    port map(
        lhc_clk,
        htt_bx_0,
        condition_o => single_htt_i120
    );

single_htt_i124_i: entity work.esums_conditions
    generic map(
        et_threshold => X"01B8",
        obj_type => HTT_TYPE
    )
    port map(
        lhc_clk,
        htt_bx_0,
        condition_o => single_htt_i124
    );

single_htt_i125_i: entity work.esums_conditions
    generic map(
        et_threshold => X"0208",
        obj_type => HTT_TYPE
    )
    port map(
        lhc_clk,
        htt_bx_0,
        condition_o => single_htt_i125
    );

single_htt_i194_i: entity work.esums_conditions
    generic map(
        et_threshold => X"0230",
        obj_type => HTT_TYPE
    )
    port map(
        lhc_clk,
        htt_bx_0,
        condition_o => single_htt_i194
    );

single_htt_i195_i: entity work.esums_conditions
    generic map(
        et_threshold => X"0258",
        obj_type => HTT_TYPE
    )
    port map(
        lhc_clk,
        htt_bx_0,
        condition_o => single_htt_i195
    );

single_htt_i196_i: entity work.esums_conditions
    generic map(
        et_threshold => X"0280",
        obj_type => HTT_TYPE
    )
    port map(
        lhc_clk,
        htt_bx_0,
        condition_o => single_htt_i196
    );

single_htt_i197_i: entity work.esums_conditions
    generic map(
        et_threshold => X"02A8",
        obj_type => HTT_TYPE
    )
    port map(
        lhc_clk,
        htt_bx_0,
        condition_o => single_htt_i197
    );

calo_calo_correlation_i112_i: entity work.calo_calo_correlation_condition
    generic map(
      -- obj cuts
        nr_calo1_objects => NR_JET_OBJECTS,
        obj_type_calo1 => JET_TYPE,
        pt_threshold_calo1 => X"0050",
        nr_eta_windows_calo1 => 1,
        eta_w1_upper_limit_calo1 => X"0034",
        eta_w1_lower_limit_calo1 => X"00CB",
        nr_calo2_objects => NR_JET_OBJECTS,
        obj_type_calo2 => JET_TYPE,
        pt_threshold_calo2 => X"0050",
        nr_eta_windows_calo2 => 1,
        eta_w1_upper_limit_calo2 => X"0034",
        eta_w1_lower_limit_calo2 => X"00CB",
    -- correlation cuts
        deta_cut => true,
        diff_eta_upper_limit_vector => X"00000640",
        diff_eta_lower_limit_vector => X"00000000",
        -- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        jet_bx_0,
        jet_bx_0,
        diff_eta => diff_jet_jet_bx_0_bx_0_eta_vector,
        condition_o => calo_calo_correlation_i112
    );

calo_calo_correlation_i200_i: entity work.calo_calo_correlation_condition
    generic map(
      -- obj cuts
        nr_calo1_objects => NR_EG_OBJECTS,
        obj_type_calo1 => EG_TYPE,
        pt_threshold_calo1 => X"002C",
        nr_eta_windows_calo1 => 1,
        eta_w1_upper_limit_calo1 => X"0030",
        eta_w1_lower_limit_calo1 => X"00CF",
        iso_lut_calo1 => X"C",
        nr_calo2_objects => NR_TAU_OBJECTS,
        obj_type_calo2 => TAU_TYPE,
        pt_threshold_calo2 => X"008C",
        nr_eta_windows_calo2 => 1,
        eta_w1_upper_limit_calo2 => X"0030",
        eta_w1_lower_limit_calo2 => X"00CF",
    -- correlation cuts
        dr_cut => true,
        dr_upper_limit_vector => X"00000000084CA240",
        dr_lower_limit_vector => X"0000000000015F90",
        -- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        eg_bx_0,
        tau_bx_0,
        diff_eta => diff_eg_tau_bx_0_bx_0_eta_vector,
        diff_phi => diff_eg_tau_bx_0_bx_0_phi_vector,
        condition_o => calo_calo_correlation_i200
    );

invariant_mass_i210_i: entity work.calo_calo_correlation_condition
    generic map(
      -- obj cuts
        nr_calo1_objects => NR_TAU_OBJECTS,
        obj_type_calo1 => TAU_TYPE,
        pt_threshold_calo1 => X"0038",
        nr_eta_windows_calo1 => 1,
        eta_w1_upper_limit_calo1 => X"0030",
        eta_w1_lower_limit_calo1 => X"00CF",
        iso_lut_calo1 => X"E",
        nr_calo2_objects => NR_TAU_OBJECTS,
        obj_type_calo2 => TAU_TYPE,
        pt_threshold_calo2 => X"0038",
        nr_eta_windows_calo2 => 1,
        eta_w1_upper_limit_calo2 => X"0030",
        eta_w1_lower_limit_calo2 => X"00CF",
        iso_lut_calo2 => X"E",
    -- correlation cuts
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        pt1_width => TAU_PT_VECTOR_WIDTH,
        pt2_width => TAU_PT_VECTOR_WIDTH,
        mass_cosh_cos_precision => TAU_TAU_COSH_COS_PRECISION,
        cosh_cos_width => TAU_TAU_COSH_COS_VECTOR_WIDTH,
        mass_upper_limit => X"000000001312D000",
        mass_lower_limit => X"0000000000000000",
        -- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        tau_bx_0,
        tau_bx_0,
        pt1 => tau_pt_vector_bx_0,
        pt2 => tau_pt_vector_bx_0,
        cosh_deta => tau_tau_bx_0_bx_0_cosh_deta_vector,
        cos_dphi => tau_tau_bx_0_bx_0_cos_dphi_vector,
        condition_o => invariant_mass_i210
    );

invariant_mass_i273_i: entity work.calo_calo_correlation_condition
    generic map(
      -- obj cuts
        nr_calo1_objects => NR_JET_OBJECTS,
        obj_type_calo1 => JET_TYPE,
        pt_threshold_calo1 => X"003C",
        nr_eta_windows_calo1 => 1,
        eta_w1_upper_limit_calo1 => X"0039",
        eta_w1_lower_limit_calo1 => X"00C6",
        nr_calo2_objects => NR_JET_OBJECTS,
        obj_type_calo2 => JET_TYPE,
        pt_threshold_calo2 => X"003C",
        nr_eta_windows_calo2 => 1,
        eta_w1_upper_limit_calo2 => X"0039",
        eta_w1_lower_limit_calo2 => X"00C6",
    -- correlation cuts
        deta_cut => true,
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        pt1_width => JET_PT_VECTOR_WIDTH,
        pt2_width => JET_PT_VECTOR_WIDTH,
        diff_eta_upper_limit_vector => X"000005DC",
        diff_eta_lower_limit_vector => X"00000000",
        mass_cosh_cos_precision => JET_JET_COSH_COS_PRECISION,
        cosh_cos_width => JET_JET_COSH_COS_VECTOR_WIDTH,
        mass_upper_limit => X"00041A6642C78140",
        mass_lower_limit => X"00000001823CF400",
        -- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        jet_bx_0,
        jet_bx_0,
        diff_eta => diff_jet_jet_bx_0_bx_0_eta_vector,
        pt1 => jet_pt_vector_bx_0,
        pt2 => jet_pt_vector_bx_0,
        cosh_deta => jet_jet_bx_0_bx_0_cosh_deta_vector,
        cos_dphi => jet_jet_bx_0_bx_0_cos_dphi_vector,
        condition_o => invariant_mass_i273
    );

invariant_mass_i297_i: entity work.calo_calo_correlation_condition
    generic map(
      -- obj cuts
        nr_calo1_objects => NR_JET_OBJECTS,
        obj_type_calo1 => JET_TYPE,
        pt_threshold_calo1 => X"00A0",
        nr_calo2_objects => NR_JET_OBJECTS,
        obj_type_calo2 => JET_TYPE,
        pt_threshold_calo2 => X"003C",
    -- correlation cuts
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        pt1_width => JET_PT_VECTOR_WIDTH,
        pt2_width => JET_PT_VECTOR_WIDTH,
        mass_cosh_cos_precision => JET_JET_COSH_COS_PRECISION,
        cosh_cos_width => JET_JET_COSH_COS_VECTOR_WIDTH,
        mass_upper_limit => X"00041A6642C78140",
        mass_lower_limit => X"000000020DB68500",
        -- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        jet_bx_0,
        jet_bx_0,
        pt1 => jet_pt_vector_bx_0,
        pt2 => jet_pt_vector_bx_0,
        cosh_deta => jet_jet_bx_0_bx_0_cosh_deta_vector,
        cos_dphi => jet_jet_bx_0_bx_0_cos_dphi_vector,
        condition_o => invariant_mass_i297
    );

invariant_mass_i95_i: entity work.calo_calo_correlation_condition
    generic map(
      -- obj cuts
        nr_calo1_objects => NR_EG_OBJECTS,
        obj_type_calo1 => EG_TYPE,
        pt_threshold_calo1 => X"0006",
        nr_eta_windows_calo1 => 1,
        eta_w1_upper_limit_calo1 => X"0030",
        eta_w1_lower_limit_calo1 => X"00CF",
        nr_calo2_objects => NR_EG_OBJECTS,
        obj_type_calo2 => EG_TYPE,
        pt_threshold_calo2 => X"0006",
        nr_eta_windows_calo2 => 1,
        eta_w1_upper_limit_calo2 => X"0030",
        eta_w1_lower_limit_calo2 => X"00CF",
    -- correlation cuts
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        pt1_width => EG_PT_VECTOR_WIDTH,
        pt2_width => EG_PT_VECTOR_WIDTH,
        mass_cosh_cos_precision => EG_EG_COSH_COS_PRECISION,
        cosh_cos_width => EG_EG_COSH_COS_VECTOR_WIDTH,
        mass_upper_limit => X"0000000001312D00",
        mass_lower_limit => X"0000000000000000",
        -- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        eg_bx_0,
        eg_bx_0,
        pt1 => eg_pt_vector_bx_0,
        pt2 => eg_pt_vector_bx_0,
        cosh_deta => eg_eg_bx_0_bx_0_cosh_deta_vector,
        cos_dphi => eg_eg_bx_0_bx_0_cos_dphi_vector,
        condition_o => invariant_mass_i95
    );

calo_muon_correlation_i111_i: entity work.calo_muon_correlation_condition
    generic map(
      -- calo obj cuts
        obj_type_calo => JET_TYPE,
        pt_threshold_calo => X"0050",
        nr_eta_windows_calo => 1,
        eta_w1_upper_limit_calo => X"0034",
        eta_w1_lower_limit_calo => X"00CB",
      -- muon obj cuts
        pt_threshold_muon => X"0019",
        nr_eta_windows_muon => 1,
        eta_w1_upper_limit_muon => X"00D3",
        eta_w1_lower_limit_muon => X"012D",
        qual_lut_muon => X"F000",
    -- correlation cuts
        dr_cut => true,
        dr_upper_limit_vector => X"00000000000274E8",
        dr_lower_limit_vector => X"0000000000000000",
        -- number of calo objects
        nr_calo_objects => NR_JET_OBJECTS
    )
    port map(
        lhc_clk,
        jet_bx_0,
        mu_bx_0,
        diff_eta => diff_jet_mu_bx_0_bx_0_eta_vector,
        diff_phi => diff_jet_mu_bx_0_bx_0_phi_vector,
        condition_o => calo_muon_correlation_i111
    );

calo_muon_correlation_i116_i: entity work.calo_muon_correlation_condition
    generic map(
      -- calo obj cuts
        obj_type_calo => JET_TYPE,
        pt_threshold_calo => X"00B4",
        nr_eta_windows_calo => 1,
        eta_w1_upper_limit_calo => X"0039",
        eta_w1_lower_limit_calo => X"00C6",
      -- muon obj cuts
        pt_threshold_muon => X"0001",
        qual_lut_muon => X"FF00",
    -- correlation cuts
        dr_cut => true,
        dr_upper_limit_vector => X"000000000009C7E8",
        dr_lower_limit_vector => X"0000000000000000",
        -- number of calo objects
        nr_calo_objects => NR_JET_OBJECTS
    )
    port map(
        lhc_clk,
        jet_bx_0,
        mu_bx_0,
        diff_eta => diff_jet_mu_bx_0_bx_0_eta_vector,
        diff_phi => diff_jet_mu_bx_0_bx_0_phi_vector,
        condition_o => calo_muon_correlation_i116
    );

invariant_mass_i94_i: entity work.muon_muon_correlation_condition
    generic map(
      -- obj cuts
        pt_threshold_muon1 => X"000B",
        nr_eta_windows_muon1 => 1,
        eta_w1_upper_limit_muon1 => X"00D3",
        eta_w1_lower_limit_muon1 => X"012D",
        qual_lut_muon1 => X"FF00",
        pt_threshold_muon2 => X"000B",
        nr_eta_windows_muon2 => 1,
        eta_w1_upper_limit_muon2 => X"00D3",
        eta_w1_lower_limit_muon2 => X"012D",
        qual_lut_muon2 => X"FF00",
        -- charge correlation cut
        requested_charge_correlation => "os",
    
    -- correlation cuts
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        mass_upper_limit => X"0000000005D75C80",
        mass_lower_limit => X"0000000001E84800",
        -- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        mu_bx_0,
        mu_bx_0,
        ls_charcorr_double_bx_0_bx_0,
        os_charcorr_double_bx_0_bx_0,
        pt1 => mu_pt_vector_bx_0,
        pt2 => mu_pt_vector_bx_0,
        cosh_deta => mu_mu_bx_0_bx_0_cosh_deta_vector,
        cos_dphi => mu_mu_bx_0_bx_0_cos_dphi_vector,
        condition_o => invariant_mass_i94
    );

muon_muon_correlation_i115_i: entity work.muon_muon_correlation_condition
    generic map(
      -- obj cuts
        pt_threshold_muon1 => X"0001",
        qual_lut_muon1 => X"FF00",
        pt_threshold_muon2 => X"0001",
        qual_lut_muon2 => X"FF00",
    -- correlation cuts
        dr_cut => true,
        dr_upper_limit_vector => X"00000000002713E8",
        dr_lower_limit_vector => X"0000000000000000",
        -- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        mu_bx_0,
        mu_bx_0,
        diff_eta => diff_mu_mu_bx_0_bx_0_eta_vector,
        diff_phi => diff_mu_mu_bx_0_bx_0_phi_vector,
        condition_o => muon_muon_correlation_i115
    );

transverse_mass_i168_i: entity work.calo_esums_correlation_condition
    generic map(
        mass_cut => true,
        mass_type => TRANSVERSE_MASS_TYPE,

      -- obj cuts
        obj_type_calo => EG_TYPE,
        pt_threshold_calo => X"0040",
        nr_eta_windows_calo => 1,
        eta_w1_upper_limit_calo => X"0039",
        eta_w1_lower_limit_calo => X"00C6",
        iso_lut_calo => X"A",
      -- esums obj cuts
        obj_type_esums => ETM_TYPE,
        et_threshold_esums => X"0014",
        -- correlation cuts
        pt1_width => EG_PT_VECTOR_WIDTH,
        pt2_width => ETM_PT_VECTOR_WIDTH,
        mass_upper_limit_vector => X"00041A6642C78140",
        mass_lower_limit_vector => X"0000000006DDD000",
        mass_cosh_cos_precision => EG_ETM_COSH_COS_PRECISION,
        cosh_cos_width => EG_ETM_COSH_COS_VECTOR_WIDTH,

        -- number of calo objects
        nr_calo_objects => NR_EG_OBJECTS
    )
    port map(
        lhc_clk,
        eg_bx_0,
        etm_bx_0,
        pt1 => eg_pt_vector_bx_0,
        pt2 => etm_pt_vector_bx_0,
        cos_dphi => eg_etm_bx_0_bx_0_cos_dphi_vector,
        condition_o => transverse_mass_i168
    );

single_mbt0_hfm_i343_i: entity work.min_bias_hf_conditions
    generic map(
        obj_type => MBT0HFM_TYPE,
        count_threshold => X"1"
    )
    port map(
        lhc_clk,
        mbt0hfm_bx_0,
        condition_o => single_mbt0_hfm_i343
    );

single_mbt0_hfp_i342_i: entity work.min_bias_hf_conditions
    generic map(
        obj_type => MBT0HFP_TYPE,
        count_threshold => X"1"
    )
    port map(
        lhc_clk,
        mbt0hfp_bx_0,
        condition_o => single_mbt0_hfp_i342
    );


-- Instantiations of algorithms


-- 2 L1_SingleMuCosmics_OMTF : MU0[MU-ETA_OMTF_POS,MU-ETA_OMTF_NEG]
l1_single_mu_cosmics_omtf <= single_mu_i2;
algo(100) <= l1_single_mu_cosmics_omtf;

-- 4 L1_SingleMuOpen : MU0[MU-QLTY_OPEN]
l1_single_mu_open <= single_mu_i4;
algo(18) <= l1_single_mu_open;

-- 7 L1_SingleMu0_OMTF : MU0[MU-QLTY_SNGL,MU-ETA_OMTF_POS,MU-ETA_OMTF_NEG]
l1_single_mu0_omtf <= single_mu_i7;
algo(96) <= l1_single_mu0_omtf;

-- 9 L1_SingleMu3 : MU3[MU-QLTY_SNGL]
l1_single_mu3 <= single_mu_i9;
algo(93) <= l1_single_mu3;

-- 20 L1_SingleMu22_BMTF : MU22[MU-QLTY_SNGL,MU-ETA_BMTF]
l1_single_mu22_bmtf <= single_mu_i20;
algo(98) <= l1_single_mu22_bmtf;

-- 26 L1_SingleMu7er1p5 : MU7[MU-QLTY_SNGL,MU-ETA_1p5]
l1_single_mu7er1p5 <= single_mu_i25;
algo(99) <= l1_single_mu7er1p5;

-- 31 L1_SingleMu14er1p5 : MU14[MU-QLTY_SNGL,MU-ETA_1p5]
l1_single_mu14er1p5 <= single_mu_i30;
algo(97) <= l1_single_mu14er1p5;

-- 41 L1_DoubleMu0_SQ : comb{MU0[MU-QLTY_SNGL],MU0[MU-QLTY_SNGL]}
l1_double_mu0_sq <= double_mu_i35;
algo(5) <= l1_double_mu0_sq;

-- 42 L1_DoubleMu0_SQ_OS : comb{MU0[MU-QLTY_SNGL],MU0[MU-QLTY_SNGL]}[CHGCOR_OS]
l1_double_mu0_sq_os <= double_mu_i36;
algo(89) <= l1_double_mu0_sq_os;

-- 48 L1_DoubleMu_15_7 : comb{MU15[MU-QLTY_DBLE],MU7[MU-QLTY_DBLE]}
l1_double_mu_15_7 <= double_mu_i42;
algo(91) <= l1_double_mu_15_7;

-- 62 L1_DoubleMu4p5_SQ_OS : comb{MU4p5[MU-QLTY_SNGL],MU4p5[MU-QLTY_SNGL]}[CHGCOR_OS]
l1_double_mu4p5_sq_os <= double_mu_i55;
algo(90) <= l1_double_mu4p5_sq_os;

-- 73 L1_TripleMu0_SQ : comb{MU0[MU-QLTY_SNGL],MU0[MU-QLTY_SNGL],MU0[MU-QLTY_SNGL]}
l1_triple_mu0_sq <= triple_mu_i62;
algo(87) <= l1_triple_mu0_sq;

-- 78 L1_TripleMu_5_3_3 : comb{MU5[MU-QLTY_DBLE],MU3[MU-QLTY_DBLE],MU3[MU-QLTY_DBLE]}
l1_triple_mu_5_3_3 <= triple_mu_i67;
algo(88) <= l1_triple_mu_5_3_3;

-- 88 L1_QuadMu0_OQ : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]}
l1_quad_mu0_oq <= quad_mu_i76;
algo(85) <= l1_quad_mu0_oq;

-- 90 L1_QuadMu0_SQ : comb{MU0[MU-QLTY_SNGL],MU0[MU-QLTY_SNGL],MU0[MU-QLTY_SNGL],MU0[MU-QLTY_SNGL]}
l1_quad_mu0_sq <= quad_mu_i78;
algo(86) <= l1_quad_mu0_sq;

-- 104 L1_Mu6_DoubleEG10er2p5 : MU6[MU-QLTY_SNGL] AND comb{EG10[EG-ETA_2p52],EG10[EG-ETA_2p52]}
l1_mu6_double_eg10er2p5 <= single_mu_i84 and double_eg_i85;
algo(29) <= l1_mu6_double_eg10er2p5;

-- 105 L1_Mu6_DoubleEG12er2p5 : MU6[MU-QLTY_SNGL] AND comb{EG12[EG-ETA_2p52],EG12[EG-ETA_2p52]}
l1_mu6_double_eg12er2p5 <= single_mu_i84 and double_eg_i86;
algo(35) <= l1_mu6_double_eg12er2p5;

-- 106 L1_Mu6_DoubleEG15er2p5 : MU6[MU-QLTY_SNGL] AND comb{EG15[EG-ETA_2p52],EG15[EG-ETA_2p52]}
l1_mu6_double_eg15er2p5 <= single_mu_i84 and double_eg_i87;
algo(44) <= l1_mu6_double_eg15er2p5;

-- 107 L1_Mu6_DoubleEG17er2p5 : MU6[MU-QLTY_SNGL] AND comb{EG17[EG-ETA_2p52],EG17[EG-ETA_2p52]}
l1_mu6_double_eg17er2p5 <= single_mu_i84 and double_eg_i88;
algo(50) <= l1_mu6_double_eg17er2p5;

-- 113 L1_DoubleMu5Upsilon_OS_DoubleEG3 : mass_inv{MU5[MU-QLTY_DBLE,MU-ETA_2p3],MU5[MU-QLTY_DBLE,MU-ETA_2p3]}[MASS_MASS_8to14,CHGCOR_OS] AND mass_inv{EG3[EG-ETA_2p13],EG3[EG-ETA_2p13]}[MASS_MASS_0to20]
l1_double_mu5_upsilon_os_double_eg3 <= invariant_mass_i94 and invariant_mass_i95;
algo(2) <= l1_double_mu5_upsilon_os_double_eg3;

-- 119 L1_Mu3_Jet30er2p5 : MU3[MU-QLTY_SNGL] AND JET30[JET-ETA_2p52]
l1_mu3_jet30er2p5 <= single_mu_i9 and single_jet_i96;
algo(92) <= l1_mu3_jet30er2p5;

-- 128 L1_Mu3er1p5_Jet100er2p5_ETMHF40 : MU3[MU-QLTY_SNGL,MU-ETA_1p5] AND JET100[JET-ETA_2p52] AND ETMHF40
l1_mu3er1p5_jet100er2p5_etmhf40 <= single_mu_i103 and single_jet_i104 and single_etmhf_i105;
algo(17) <= l1_mu3er1p5_jet100er2p5_etmhf40;

-- 129 L1_Mu3er1p5_Jet100er2p5_ETMHF50 : MU3[MU-QLTY_SNGL,MU-ETA_1p5] AND JET100[JET-ETA_2p52] AND ETMHF50
l1_mu3er1p5_jet100er2p5_etmhf50 <= single_mu_i103 and single_jet_i104 and single_etmhf_i106;
algo(20) <= l1_mu3er1p5_jet100er2p5_etmhf50;

-- 131 L1_Mu6_HTT240er : MU6[MU-QLTY_SNGL] AND HTT240
l1_mu6_htt240er <= single_mu_i84 and single_htt_i107;
algo(57) <= l1_mu6_htt240er;

-- 132 L1_Mu6_HTT250er : MU6[MU-QLTY_SNGL] AND HTT250
l1_mu6_htt250er <= single_mu_i84 and single_htt_i108;
algo(63) <= l1_mu6_htt250er;

-- 135 L1_Mu12er2p3_Jet40er2p3_dR_Max0p4_DoubleJet40er2p3_dEta_Max1p6 : dist{MU12[MU-QLTY_SNGL,MU-ETA_2p3],JET40[JET-ETA_2p3]}[DR_MAX_0p4] AND dist{JET40[JET-ETA_2p3],JET40[JET-ETA_2p3]}[DETA_MAX_1p6]
l1_mu12er2p3_jet40er2p3_d_r_max0p4_double_jet40er2p3_d_eta_max1p6 <= calo_muon_correlation_i111 and calo_calo_correlation_i112;
algo(1) <= l1_mu12er2p3_jet40er2p3_d_r_max0p4_double_jet40er2p3_d_eta_max1p6;

-- 142 L1_DoubleMu0_dR_Max1p6_Jet90er2p5_dR_Max0p8 : dist{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]}[DR_MAX_1p6] AND dist{MU0[MU-QLTY_DBLE],JET90[JET-ETA_2p52]}[DR_MAX_0p8]
l1_double_mu0_d_r_max1p6_jet90er2p5_d_r_max0p8 <= muon_muon_correlation_i115 and calo_muon_correlation_i116;
algo(0) <= l1_double_mu0_d_r_max1p6_jet90er2p5_d_r_max0p8;

-- 145 L1_DoubleMu3_SQ_ETMHF50_HTT60er : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND ETMHF50 AND HTT60
l1_double_mu3_sq_etmhf50_htt60er <= double_mu_i119 and single_etmhf_i106 and single_htt_i120;
algo(78) <= l1_double_mu3_sq_etmhf50_htt60er;

-- 146 L1_DoubleMu3_SQ_ETMHF50_Jet60er2p5_OR_DoubleJet40er2p5 : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND ETMHF50 AND (JET60[JET-ETA_2p52] OR comb{JET40[JET-ETA_2p52],JET40[JET-ETA_2p52]})
l1_double_mu3_sq_etmhf50_jet60er2p5_or_double_jet40er2p5 <= double_mu_i119 and single_etmhf_i106 and ( single_jet_i121 or double_jet_i122 );
algo(68) <= l1_double_mu3_sq_etmhf50_jet60er2p5_or_double_jet40er2p5;

-- 147 L1_DoubleMu3_SQ_ETMHF50_Jet60er2p5 : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND ETMHF50 AND JET60[JET-ETA_2p52]
l1_double_mu3_sq_etmhf50_jet60er2p5 <= double_mu_i119 and single_etmhf_i106 and single_jet_i121;
algo(82) <= l1_double_mu3_sq_etmhf50_jet60er2p5;

-- 148 L1_DoubleMu3_SQ_ETMHF60_Jet60er2p5 : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND ETMHF60 AND JET60[JET-ETA_2p52]
l1_double_mu3_sq_etmhf60_jet60er2p5 <= double_mu_i119 and single_etmhf_i123 and single_jet_i121;
algo(76) <= l1_double_mu3_sq_etmhf60_jet60er2p5;

-- 150 L1_DoubleMu3_SQ_HTT220er : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND HTT220
l1_double_mu3_sq_htt220er <= double_mu_i119 and single_htt_i124;
algo(74) <= l1_double_mu3_sq_htt220er;

-- 151 L1_DoubleMu3_SQ_HTT240er : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND HTT240
l1_double_mu3_sq_htt240er <= double_mu_i119 and single_htt_i107;
algo(16) <= l1_double_mu3_sq_htt240er;

-- 152 L1_DoubleMu3_SQ_HTT260er : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND HTT260
l1_double_mu3_sq_htt260er <= double_mu_i119 and single_htt_i125;
algo(19) <= l1_double_mu3_sq_htt260er;

-- 153 L1_Mu0upt20ip0 : MU0[MU-IP_0,MU-UPT_20]
l1_mu0upt20ip0 <= single_mu_i371;
algo(94) <= l1_mu0upt20ip0;

-- 163 L1_SingleEG28_FWD2p5 : EG28[EG-ETA_FWD_2p52_POS] OR EG28[EG-ETA_FWD_2p52_NEG]
l1_single_eg28_fwd2p5 <= single_eg_i129 or single_eg_i130;
algo(105) <= l1_single_eg28_fwd2p5;

-- 169 L1_SingleEG38er2p5 : EG38[EG-ETA_2p52]
l1_single_eg38er2p5 <= single_eg_i136;
algo(107) <= l1_single_eg38er2p5;

-- 174 L1_SingleEG60 : EG60
l1_single_eg60 <= single_eg_i141;
algo(108) <= l1_single_eg60;

-- 175 L1_SingleLooseIsoEG26er2p5 : EG26[EG-ETA_2p52,EG-ISO_0xC]
l1_single_loose_iso_eg26er2p5 <= single_eg_i142;
algo(113) <= l1_single_loose_iso_eg26er2p5;

-- 177 L1_SingleLooseIsoEG28_FWD2p5 : EG28[EG-ETA_FWD_2p52_POS,EG-ISO_0xC] OR EG28[EG-ETA_FWD_2p52_NEG,EG-ISO_0xC]
l1_single_loose_iso_eg28_fwd2p5 <= single_eg_i144 or single_eg_i145;
algo(106) <= l1_single_loose_iso_eg28_fwd2p5;

-- 186 L1_SingleIsoEG26er2p1 : EG26[EG-ETA_2p13,EG-ISO_0xA]
l1_single_iso_eg26er2p1 <= single_eg_i154;
algo(109) <= l1_single_iso_eg26er2p1;

-- 192 L1_SingleIsoEG30er2p5 : EG30[EG-ETA_2p52,EG-ISO_0xA]
l1_single_iso_eg30er2p5 <= single_eg_i161;
algo(110) <= l1_single_iso_eg30er2p5;

-- 199 L1_IsoEG32er2p5_Mt48 : mass_trv{EG32[EG-ETA_2p52,EG-ISO_0xA],ETM10}[MASS_MIN_48]
l1_iso_eg32er2p5_mt48 <= transverse_mass_i168;
algo(84) <= l1_iso_eg32er2p5_mt48;

-- 208 L1_DoubleEG_25_12_er2p5 : comb{EG25[EG-ETA_2p52],EG12[EG-ETA_2p52]}
l1_double_eg_25_12_er2p5 <= double_eg_i172;
algo(102) <= l1_double_eg_25_12_er2p5;

-- 215 L1_DoubleEG_LooseIso25_12_er2p5 : comb{EG25[EG-ETA_2p52,EG-ISO_0xC],EG12[EG-ETA_2p52]}
l1_double_eg_loose_iso25_12_er2p5 <= double_eg_i178;
algo(103) <= l1_double_eg_loose_iso25_12_er2p5;

-- 225 L1_TripleEG_16_15_8_er2p5 : comb{EG16[EG-ETA_2p52],EG15[EG-ETA_2p52],EG8[EG-ETA_2p52]}
l1_triple_eg_16_15_8_er2p5 <= triple_eg_i182;
algo(101) <= l1_triple_eg_16_15_8_er2p5;

-- 247 L1_DoubleEG8er2p5_HTT260er : comb{EG8[EG-ETA_2p52],EG8[EG-ETA_2p52]} AND HTT260
l1_double_eg8er2p5_htt260er <= double_eg_i193 and single_htt_i125;
algo(10) <= l1_double_eg8er2p5_htt260er;

-- 248 L1_DoubleEG8er2p5_HTT280er : comb{EG8[EG-ETA_2p52],EG8[EG-ETA_2p52]} AND HTT280
l1_double_eg8er2p5_htt280er <= double_eg_i193 and single_htt_i194;
algo(30) <= l1_double_eg8er2p5_htt280er;

-- 249 L1_DoubleEG8er2p5_HTT300er : comb{EG8[EG-ETA_2p52],EG8[EG-ETA_2p52]} AND HTT300
l1_double_eg8er2p5_htt300er <= double_eg_i193 and single_htt_i195;
algo(37) <= l1_double_eg8er2p5_htt300er;

-- 250 L1_DoubleEG8er2p5_HTT320er : comb{EG8[EG-ETA_2p52],EG8[EG-ETA_2p52]} AND HTT320
l1_double_eg8er2p5_htt320er <= double_eg_i193 and single_htt_i196;
algo(45) <= l1_double_eg8er2p5_htt320er;

-- 251 L1_DoubleEG8er2p5_HTT340er : comb{EG8[EG-ETA_2p52],EG8[EG-ETA_2p52]} AND HTT340
l1_double_eg8er2p5_htt340er <= double_eg_i193 and single_htt_i197;
algo(51) <= l1_double_eg8er2p5_htt340er;

-- 259 L1_LooseIsoEG22er2p1_Tau70er2p1_dR_Min0p3 : dist{EG22[EG-ETA_2p13,EG-ISO_0xC],TAU70[TAU-ETA_2p13]}[DR_MIN_0p3]
l1_loose_iso_eg22er2p1_tau70er2p1_d_r_min0p3 <= calo_calo_correlation_i200;
algo(3) <= l1_loose_iso_eg22er2p1_tau70er2p1_d_r_min0p3;

-- 265 L1_SingleTau130er2p1 : TAU130[TAU-ETA_2p13]
l1_single_tau130er2p1 <= single_tau_i202;
algo(114) <= l1_single_tau130er2p1;

-- 275 L1_DoubleIsoTau28er2p1_Mass_Max80 : mass_inv{TAU28[TAU-ETA_2p13,TAU-ISO_0xE],TAU28[TAU-ETA_2p13,TAU-ISO_0xE]}[MASS_MAX_80]
l1_double_iso_tau28er2p1_mass_max80 <= invariant_mass_i210;
algo(8) <= l1_double_iso_tau28er2p1_mass_max80;

-- 282 L1_Mu22er2p1_IsoTau28er2p1 : MU22[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU28[TAU-ETA_2p13,TAU-ISO_0xE]
l1_mu22er2p1_iso_tau28er2p1 <= single_mu_i216 and single_tau_i217;
algo(31) <= l1_mu22er2p1_iso_tau28er2p1;

-- 283 L1_Mu22er2p1_IsoTau30er2p1 : MU22[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU30[TAU-ETA_2p13,TAU-ISO_0xE]
l1_mu22er2p1_iso_tau30er2p1 <= single_mu_i216 and single_tau_i218;
algo(40) <= l1_mu22er2p1_iso_tau30er2p1;

-- 284 L1_Mu22er2p1_IsoTau32er2p1 : MU22[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU32[TAU-ETA_2p13,TAU-ISO_0xE]
l1_mu22er2p1_iso_tau32er2p1 <= single_mu_i216 and single_tau_i219;
algo(49) <= l1_mu22er2p1_iso_tau32er2p1;

-- 285 L1_Mu22er2p1_IsoTau34er2p1 : MU22[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU34[TAU-ETA_2p13,TAU-ISO_0xE]
l1_mu22er2p1_iso_tau34er2p1 <= single_mu_i216 and single_tau_i220;
algo(52) <= l1_mu22er2p1_iso_tau34er2p1;

-- 286 L1_Mu22er2p1_IsoTau36er2p1 : MU22[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU36[TAU-ETA_2p13,TAU-ISO_0xE]
l1_mu22er2p1_iso_tau36er2p1 <= single_mu_i216 and single_tau_i221;
algo(60) <= l1_mu22er2p1_iso_tau36er2p1;

-- 287 L1_Mu22er2p1_IsoTau40er2p1 : MU22[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU40[TAU-ETA_2p13,TAU-ISO_0xE]
l1_mu22er2p1_iso_tau40er2p1 <= single_mu_i216 and single_tau_i222;
algo(64) <= l1_mu22er2p1_iso_tau40er2p1;

-- 289 L1_Mu22er2p1_Tau70er2p1 : MU22[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU70[TAU-ETA_2p13]
l1_mu22er2p1_tau70er2p1 <= single_mu_i216 and single_tau_i223;
algo(69) <= l1_mu22er2p1_tau70er2p1;

-- 291 L1_IsoTau40er2p1_ETMHF80 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETMHF80
l1_iso_tau40er2p1_etmhf80 <= single_tau_i222 and single_etmhf_i224;
algo(13) <= l1_iso_tau40er2p1_etmhf80;

-- 292 L1_IsoTau40er2p1_ETMHF90 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETMHF90
l1_iso_tau40er2p1_etmhf90 <= single_tau_i222 and single_etmhf_i225;
algo(15) <= l1_iso_tau40er2p1_etmhf90;

-- 293 L1_IsoTau40er2p1_ETMHF100 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETMHF100
l1_iso_tau40er2p1_etmhf100 <= single_tau_i222 and single_etmhf_i226;
algo(72) <= l1_iso_tau40er2p1_etmhf100;

-- 294 L1_IsoTau40er2p1_ETMHF110 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETMHF110
l1_iso_tau40er2p1_etmhf110 <= single_tau_i222 and single_etmhf_i227;
algo(83) <= l1_iso_tau40er2p1_etmhf110;

-- 301 L1_Mu0upt5 : MU0[MU-UPT_5]
l1_mu0upt5 <= single_mu_i231;
algo(95) <= l1_mu0upt5;

-- 316 L1_SingleJet35er2p5 : JET35[JET-ETA_2p52]
l1_single_jet35er2p5 <= single_jet_i245;
algo(112) <= l1_single_jet35er2p5;

-- 317 L1_SingleJet60er2p5 : JET60[JET-ETA_2p52]
l1_single_jet60er2p5 <= single_jet_i121;
algo(58) <= l1_single_jet60er2p5;

-- 320 L1_SingleJet140er2p5 : JET140[JET-ETA_2p52]
l1_single_jet140er2p5 <= single_jet_i248;
algo(53) <= l1_single_jet140er2p5;

-- 331 L1_SingleJet12erHE : JET12[JET-ETA_1p392_2p958_NEG,JET-ETA_1p392_2p958_POS]
l1_single_jet12er_he <= single_jet_i261;
algo(111) <= l1_single_jet12er_he;

-- 332 L1_SingleJet140er2p5_ETMHF70 : JET140[JET-ETA_2p52] AND ETMHF70
l1_single_jet140er2p5_etmhf70 <= single_jet_i248 and single_etmhf_i262;
algo(43) <= l1_single_jet140er2p5_etmhf70;

-- 333 L1_SingleJet140er2p5_ETMHF80 : JET140[JET-ETA_2p52] AND ETMHF80
l1_single_jet140er2p5_etmhf80 <= single_jet_i248 and single_etmhf_i224;
algo(66) <= l1_single_jet140er2p5_etmhf80;

-- 334 L1_SingleJet140er2p5_ETMHF90 : JET140[JET-ETA_2p52] AND ETMHF90
l1_single_jet140er2p5_etmhf90 <= single_jet_i248 and single_etmhf_i225;
algo(71) <= l1_single_jet140er2p5_etmhf90;

-- 340 L1_DoubleJet40er2p5 : comb{JET40[JET-ETA_2p52],JET40[JET-ETA_2p52]}
l1_double_jet40er2p5 <= double_jet_i122;
algo(25) <= l1_double_jet40er2p5;

-- 341 L1_DoubleJet100er2p5 : comb{JET100[JET-ETA_2p52],JET100[JET-ETA_2p52]}
l1_double_jet100er2p5 <= double_jet_i263;
algo(104) <= l1_double_jet100er2p5;

-- 353 L1_DoubleJet30er2p5_Mass_Min360_dEta_Max1p5 : mass_inv{JET30[JET-ETA_2p52],JET30[JET-ETA_2p52]}[MASS_MIN_360,DETA_MAX_1p5]
l1_double_jet30er2p5_mass_min360_d_eta_max1p5 <= invariant_mass_i273;
algo(7) <= l1_double_jet30er2p5_mass_min360_d_eta_max1p5;

-- 365 L1_DoubleJet_80_30_Mass_Min420_Mu8 : mass_inv{JET80,JET30}[MASS_MIN_420] AND MU8[MU-QLTY_SNGL]
l1_double_jet_80_30_mass_min420_mu8 <= invariant_mass_i297 and single_mu_i298;
algo(6) <= l1_double_jet_80_30_mass_min420_mu8;

-- 366 L1_DoubleJet_80_30_Mass_Min420_DoubleMu0_SQ : mass_inv{JET80,JET30}[MASS_MIN_420] AND comb{MU0[MU-QLTY_SNGL],MU0[MU-QLTY_SNGL]}
l1_double_jet_80_30_mass_min420_double_mu0_sq <= invariant_mass_i297 and double_mu_i35;
algo(4) <= l1_double_jet_80_30_mass_min420_double_mu0_sq;

-- 384 L1_HTT280er_QuadJet_70_55_40_35_er2p4 : HTT280 AND comb{JET70[JET-ETA_2p4],JET55[JET-ETA_2p4],JET40[JET-ETA_2p4],JET35[JET-ETA_2p4]}
l1_htt280er_quad_jet_70_55_40_35_er2p4 <= single_htt_i194 and quad_jet_i309;
algo(9) <= l1_htt280er_quad_jet_70_55_40_35_er2p4;

-- 385 L1_HTT320er_QuadJet_70_55_40_40_er2p4 : HTT320 AND comb{JET70[JET-ETA_2p4],JET55[JET-ETA_2p4],JET40[JET-ETA_2p4],JET40[JET-ETA_2p4]}
l1_htt320er_quad_jet_70_55_40_40_er2p4 <= single_htt_i196 and quad_jet_i310;
algo(27) <= l1_htt320er_quad_jet_70_55_40_40_er2p4;

-- 386 L1_HTT320er_QuadJet_80_60_er2p1_45_40_er2p3 : HTT320 AND comb{JET80[JET-ETA_2p13],JET60[JET-ETA_2p13],JET45[JET-ETA_2p3],JET40[JET-ETA_2p3]}
l1_htt320er_quad_jet_80_60_er2p1_45_40_er2p3 <= single_htt_i196 and quad_jet_i311;
algo(39) <= l1_htt320er_quad_jet_80_60_er2p1_45_40_er2p3;

-- 387 L1_HTT320er_QuadJet_80_60_er2p1_50_45_er2p3 : HTT320 AND comb{JET80[JET-ETA_2p13],JET60[JET-ETA_2p13],JET50[JET-ETA_2p3],JET45[JET-ETA_2p3]}
l1_htt320er_quad_jet_80_60_er2p1_50_45_er2p3 <= single_htt_i196 and quad_jet_i312;
algo(47) <= l1_htt320er_quad_jet_80_60_er2p1_50_45_er2p3;

-- 402 L1_HTT280er : HTT280
l1_htt280er <= single_htt_i194;
algo(14) <= l1_htt280er;

-- 403 L1_HTT320er : HTT320
l1_htt320er <= single_htt_i196;
algo(24) <= l1_htt320er;

-- 421 L1_ETMHF100 : ETMHF100
l1_etmhf100 <= single_etmhf_i226;
algo(42) <= l1_etmhf100;

-- 422 L1_ETMHF110 : ETMHF110
l1_etmhf110 <= single_etmhf_i227;
algo(55) <= l1_etmhf110;

-- 423 L1_ETMHF120 : ETMHF120
l1_etmhf120 <= single_etmhf_i325;
algo(65) <= l1_etmhf120;

-- 424 L1_ETMHF130 : ETMHF130
l1_etmhf130 <= single_etmhf_i326;
algo(75) <= l1_etmhf130;

-- 428 L1_ETMHF90_HTT60er : ETMHF90 AND HTT60
l1_etmhf90_htt60er <= single_etmhf_i225 and single_htt_i120;
algo(12) <= l1_etmhf90_htt60er;

-- 429 L1_ETMHF100_HTT60er : ETMHF100 AND HTT60
l1_etmhf100_htt60er <= single_etmhf_i226 and single_htt_i120;
algo(36) <= l1_etmhf100_htt60er;

-- 430 L1_ETMHF110_HTT60er : ETMHF110 AND HTT60
l1_etmhf110_htt60er <= single_etmhf_i227 and single_htt_i120;
algo(59) <= l1_etmhf110_htt60er;

-- 431 L1_ETMHF120_HTT60er : ETMHF120 AND HTT60
l1_etmhf120_htt60er <= single_etmhf_i325 and single_htt_i120;
algo(79) <= l1_etmhf120_htt60er;

-- 432 L1_ETMHF130_HTT60er : ETMHF130 AND HTT60
l1_etmhf130_htt60er <= single_etmhf_i326 and single_htt_i120;
algo(77) <= l1_etmhf130_htt60er;

-- 443 L1_ETMHF120_NotSecondBunchInTrain : ETMHF120 AND ((EXT_BPTX_OR_VME-2) OR ( NOT EXT_ZeroBias_BPTX_AND_VME-1) OR ( NOT EXT_ZeroBias_BPTX_AND_VME) OR ( NOT EXT_ZeroBias_BPTX_AND_VME+1) OR ( NOT EXT_ZeroBias_BPTX_AND_VME+2))
l1_etmhf120_not_second_bunch_in_train <= single_etmhf_i325 and ( ( single_ext_i329 ) or ( not single_ext_i330 ) or ( not single_ext_i331 ) or ( not single_ext_i332 ) or ( not single_ext_i333 ) );
algo(73) <= l1_etmhf120_not_second_bunch_in_train;

-- 444 L1_ETMHF110_HTT60er_NotSecondBunchInTrain : ETMHF110 AND HTT60 AND ((EXT_BPTX_OR_VME-2) OR ( NOT EXT_ZeroBias_BPTX_AND_VME-1) OR ( NOT EXT_ZeroBias_BPTX_AND_VME) OR ( NOT EXT_ZeroBias_BPTX_AND_VME+1) OR ( NOT EXT_ZeroBias_BPTX_AND_VME+2))
l1_etmhf110_htt60er_not_second_bunch_in_train <= single_etmhf_i227 and single_htt_i120 and ( ( single_ext_i329 ) or ( not single_ext_i330 ) or ( not single_ext_i331 ) or ( not single_ext_i332 ) or ( not single_ext_i333 ) );
algo(81) <= l1_etmhf110_htt60er_not_second_bunch_in_train;

-- 446 L1_SingleMuOpen_NotBptxOR : MU0[MU-QLTY_OPEN] AND ( NOT EXT_BPTX_OR_VME)
l1_single_mu_open_not_bptx_or <= single_mu_i4 and ( not single_ext_i334 );
algo(23) <= l1_single_mu_open_not_bptx_or;

-- 447 L1_SingleMuOpen_er1p4_NotBptxOR_3BX : MU0[MU-QLTY_OPEN,MU-ETA_1p4] AND ( NOT EXT_BPTX_OR_VME-1) AND ( NOT EXT_BPTX_OR_VME) AND ( NOT EXT_BPTX_OR_VME+1)
l1_single_mu_open_er1p4_not_bptx_or_3_bx <= single_mu_i335 and ( not single_ext_i336 ) and ( not single_ext_i334 ) and ( not single_ext_i337 );
algo(46) <= l1_single_mu_open_er1p4_not_bptx_or_3_bx;

-- 448 L1_SingleMuOpen_er1p1_NotBptxOR_3BX : MU0[MU-QLTY_OPEN,MU-ETA_1p1] AND ( NOT EXT_BPTX_OR_VME-1) AND ( NOT EXT_BPTX_OR_VME) AND ( NOT EXT_BPTX_OR_VME+1)
l1_single_mu_open_er1p1_not_bptx_or_3_bx <= single_mu_i338 and ( not single_ext_i336 ) and ( not single_ext_i334 ) and ( not single_ext_i337 );
algo(41) <= l1_single_mu_open_er1p1_not_bptx_or_3_bx;

-- 450 L1_SingleJet20er2p5_NotBptxOR : JET20[JET-ETA_2p52] AND ( NOT EXT_BPTX_OR_VME)
l1_single_jet20er2p5_not_bptx_or <= single_jet_i339 and ( not single_ext_i334 );
algo(11) <= l1_single_jet20er2p5_not_bptx_or;

-- 451 L1_SingleJet20er2p5_NotBptxOR_3BX : JET20[JET-ETA_2p52] AND ( NOT EXT_BPTX_OR_VME-1) AND ( NOT EXT_BPTX_OR_VME) AND ( NOT EXT_BPTX_OR_VME+1)
l1_single_jet20er2p5_not_bptx_or_3_bx <= single_jet_i339 and ( not single_ext_i336 ) and ( not single_ext_i334 ) and ( not single_ext_i337 );
algo(21) <= l1_single_jet20er2p5_not_bptx_or_3_bx;

-- 452 L1_SingleJet43er2p5_NotBptxOR_3BX : JET43[JET-ETA_2p52] AND ( NOT EXT_BPTX_OR_VME-1) AND ( NOT EXT_BPTX_OR_VME) AND ( NOT EXT_BPTX_OR_VME+1)
l1_single_jet43er2p5_not_bptx_or_3_bx <= single_jet_i340 and ( not single_ext_i336 ) and ( not single_ext_i334 ) and ( not single_ext_i337 );
algo(48) <= l1_single_jet43er2p5_not_bptx_or_3_bx;

-- 453 L1_SingleJet46er2p5_NotBptxOR_3BX : JET46[JET-ETA_2p52] AND ( NOT EXT_BPTX_OR_VME-1) AND ( NOT EXT_BPTX_OR_VME) AND ( NOT EXT_BPTX_OR_VME+1)
l1_single_jet46er2p5_not_bptx_or_3_bx <= single_jet_i341 and ( not single_ext_i336 ) and ( not single_ext_i334 ) and ( not single_ext_i337 );
algo(56) <= l1_single_jet46er2p5_not_bptx_or_3_bx;

-- 458 L1_AlwaysTrue : EXT_ZeroBias_BPTX_AND_VME OR ( NOT EXT_ZeroBias_BPTX_AND_VME)
l1_always_true <= single_ext_i331 or ( not single_ext_i331 );
algo(32) <= l1_always_true;

-- 459 L1_ZeroBias : EXT_ZeroBias_BPTX_AND_VME
l1_zero_bias <= single_ext_i331;
algo(22) <= l1_zero_bias;

-- 460 L1_ZeroBias_copy : EXT_ZeroBias_BPTX_AND_VME
l1_zero_bias_copy <= single_ext_i331;
algo(26) <= l1_zero_bias_copy;

-- 461 L1_MinimumBiasHF0_AND_BptxAND : (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf0_and_bptx_and <= ( single_mbt0_hfp_i342 and single_mbt0_hfm_i343 ) and single_ext_i331;
algo(33) <= l1_minimum_bias_hf0_and_bptx_and;

-- 463 L1_NotBptxOR :  NOT EXT_BPTX_OR_VME
l1_not_bptx_or <= not single_ext_i334;
algo(80) <= l1_not_bptx_or;

-- 464 L1_BptxOR : EXT_BPTX_OR_VME
l1_bptx_or <= single_ext_i334;
algo(38) <= l1_bptx_or;

-- 471 L1_IsolatedBunch : ( NOT EXT_BPTX_OR_VME-2) AND ( NOT EXT_BPTX_OR_VME-1) AND EXT_ZeroBias_BPTX_AND_VME AND ( NOT EXT_BPTX_OR_VME+1) AND ( NOT EXT_BPTX_OR_VME+2)
l1_isolated_bunch <= ( not single_ext_i329 ) and ( not single_ext_i336 ) and single_ext_i331 and ( not single_ext_i337 ) and ( not single_ext_i348 );
algo(34) <= l1_isolated_bunch;

-- 472 L1_FirstBunchBeforeTrain : ( NOT EXT_BPTX_OR_VME-2) AND ( NOT EXT_BPTX_OR_VME-1) AND ( NOT EXT_BPTX_OR_VME) AND EXT_ZeroBias_BPTX_AND_VME+1 AND EXT_ZeroBias_BPTX_AND_VME+2
l1_first_bunch_before_train <= ( not single_ext_i329 ) and ( not single_ext_i336 ) and ( not single_ext_i334 ) and single_ext_i332 and single_ext_i333;
algo(67) <= l1_first_bunch_before_train;

-- 473 L1_FirstBunchInTrain : ( NOT EXT_BPTX_OR_VME-2) AND ( NOT EXT_BPTX_OR_VME-1) AND EXT_ZeroBias_BPTX_AND_VME AND EXT_ZeroBias_BPTX_AND_VME+1 AND EXT_ZeroBias_BPTX_AND_VME+2
l1_first_bunch_in_train <= ( not single_ext_i329 ) and ( not single_ext_i336 ) and single_ext_i331 and single_ext_i332 and single_ext_i333;
algo(70) <= l1_first_bunch_in_train;

-- 474 L1_SecondBunchInTrain : ( NOT EXT_BPTX_OR_VME-2) AND EXT_ZeroBias_BPTX_AND_VME-1 AND EXT_ZeroBias_BPTX_AND_VME AND EXT_ZeroBias_BPTX_AND_VME+1 AND EXT_ZeroBias_BPTX_AND_VME+2
l1_second_bunch_in_train <= ( not single_ext_i329 ) and single_ext_i330 and single_ext_i331 and single_ext_i332 and single_ext_i333;
algo(54) <= l1_second_bunch_in_train;

-- 475 L1_SecondLastBunchInTrain : EXT_ZeroBias_BPTX_AND_VME-2 AND EXT_ZeroBias_BPTX_AND_VME-1 AND EXT_ZeroBias_BPTX_AND_VME AND EXT_ZeroBias_BPTX_AND_VME+1 AND ( NOT EXT_BPTX_OR_VME+2)
l1_second_last_bunch_in_train <= single_ext_i349 and single_ext_i330 and single_ext_i331 and single_ext_i332 and ( not single_ext_i348 );
algo(61) <= l1_second_last_bunch_in_train;

-- 476 L1_LastBunchInTrain : EXT_ZeroBias_BPTX_AND_VME-2 AND EXT_ZeroBias_BPTX_AND_VME-1 AND EXT_ZeroBias_BPTX_AND_VME AND ( NOT EXT_BPTX_OR_VME+1) AND ( NOT EXT_BPTX_OR_VME+2)
l1_last_bunch_in_train <= single_ext_i349 and single_ext_i330 and single_ext_i331 and ( not single_ext_i337 ) and ( not single_ext_i348 );
algo(28) <= l1_last_bunch_in_train;

-- 477 L1_FirstBunchAfterTrain : EXT_ZeroBias_BPTX_AND_VME-2 AND EXT_ZeroBias_BPTX_AND_VME-1 AND ( NOT EXT_BPTX_OR_VME) AND ( NOT EXT_BPTX_OR_VME+1) AND ( NOT EXT_BPTX_OR_VME+2)
l1_first_bunch_after_train <= single_ext_i349 and single_ext_i330 and ( not single_ext_i334 ) and ( not single_ext_i337 ) and ( not single_ext_i348 );
algo(62) <= l1_first_bunch_after_train;


-- ========================================================