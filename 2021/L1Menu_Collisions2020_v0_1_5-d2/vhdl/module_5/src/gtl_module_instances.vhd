-- ========================================================
-- from VHDL producer:

-- Module ID: 5

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

-- Instantiations of cosh-deta and cos-dphi LUTs for correlation conditions (used for mass and overlap_remover) - once for correlation conditions with two ObjectTypes in certain Bxs

    jet_jet_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_JET_OBJECTS-1 generate
        jet_jet_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_JET_OBJECTS-1 generate
            jet_jet_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_JET_COSH_DETA_LUT(diff_jet_jet_bx_0_bx_0_eta_integer(i,j)), JET_JET_COSH_COS_VECTOR_WIDTH);
            jet_jet_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_JET_COS_DPHI_LUT(diff_jet_jet_bx_0_bx_0_phi_integer(i,j)), JET_JET_COSH_COS_VECTOR_WIDTH);
            jet_jet_bx_0_bx_0_deta_bin_vector(i,j) <= CONV_STD_LOGIC_VECTOR(diff_jet_jet_bx_0_bx_0_eta_integer(i,j), JET_JET_DETA_BINS_WIDTH);
            jet_jet_bx_0_bx_0_dphi_bin_vector(i,j) <= CONV_STD_LOGIC_VECTOR(diff_jet_jet_bx_0_bx_0_phi_integer(i,j), JET_JET_DPHI_BINS_WIDTH);
        end generate jet_jet_bx_0_bx_0_cosh_cos_l2;
    end generate jet_jet_bx_0_bx_0_cosh_cos_l1;
    eg_jet_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_EG_OBJECTS-1 generate
        eg_jet_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_JET_OBJECTS-1 generate
            eg_jet_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_JET_COSH_DETA_LUT(diff_eg_jet_bx_0_bx_0_eta_integer(i,j)), EG_JET_COSH_COS_VECTOR_WIDTH);
            eg_jet_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_JET_COS_DPHI_LUT(diff_eg_jet_bx_0_bx_0_phi_integer(i,j)), EG_JET_COSH_COS_VECTOR_WIDTH);
            eg_jet_bx_0_bx_0_deta_bin_vector(i,j) <= CONV_STD_LOGIC_VECTOR(diff_eg_jet_bx_0_bx_0_eta_integer(i,j), EG_JET_DETA_BINS_WIDTH);
            eg_jet_bx_0_bx_0_dphi_bin_vector(i,j) <= CONV_STD_LOGIC_VECTOR(diff_eg_jet_bx_0_bx_0_phi_integer(i,j), EG_JET_DPHI_BINS_WIDTH);
        end generate eg_jet_bx_0_bx_0_cosh_cos_l2;
    end generate eg_jet_bx_0_bx_0_cosh_cos_l1;
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


-- Instantiations of conditions
double_eg_i170_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0028", X"0014", X"0000", X"0000"),
        nr_eta_windows => (1, 1, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0039", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"00C6", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 2
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => double_eg_i170
    );

double_eg_i175_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0028", X"0014", X"0000", X"0000"),
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
        condition_o => double_eg_i175
    );

double_eg_i179_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"002C", X"002C", X"0000", X"0000"),
        nr_eta_windows => (1, 1, 0, 0),
        eta_w1_upper_limits => (X"0030", X"0030", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00CF", X"00CF", X"0000", X"0000"),
        iso_luts => (X"C", X"C", X"F", X"F"),
        -- no correlation cuts
        nr_templates => 2
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => double_eg_i179
    );

double_jet_i279_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => JET_TYPE,
        pt_thresholds => (X"00E6", X"0050", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 2
    )
    port map(
        lhc_clk,
        jet_bx_0,
        condition_o => double_jet_i279
    );

double_jet_i300_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => JET_TYPE,
        pt_thresholds => (X"0096", X"0082", X"0000", X"0000"),
        nr_eta_windows => (1, 1, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0039", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"00C6", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 2
    )
    port map(
        lhc_clk,
        jet_bx_0,
        condition_o => double_jet_i300
    );

double_tau_i206_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => TAU_TYPE,
        pt_thresholds => (X"0040", X"0040", X"0000", X"0000"),
        nr_eta_windows => (1, 1, 0, 0),
        eta_w1_upper_limits => (X"0030", X"0030", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00CF", X"00CF", X"0000", X"0000"),
        iso_luts => (X"E", X"E", X"F", X"F"),
        -- no correlation cuts
        nr_templates => 2
    )
    port map(
        lhc_clk,
        tau_bx_0,
        condition_o => double_tau_i206
    );

quad_jet_i305_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => JET_TYPE,
        pt_thresholds => (X"00BE", X"0096", X"0082", X"0028"),
        -- no correlation cuts
        nr_templates => 4
    )
    port map(
        lhc_clk,
        jet_bx_0,
        condition_o => quad_jet_i305
    );

single_eg_i128_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0034", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => single_eg_i128
    );

single_eg_i134_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0044", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => single_eg_i134
    );

single_eg_i139_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"005A", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => single_eg_i139
    );

single_eg_i149_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"003C", X"0000", X"0000", X"0000"),
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
        condition_o => single_eg_i149
    );

single_eg_i151_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0030", X"0000", X"0000", X"0000"),
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
        condition_o => single_eg_i151
    );

single_eg_i158_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0038", X"0000", X"0000", X"0000"),
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
        condition_o => single_eg_i158
    );

single_eg_i81_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0014", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => single_eg_i81
    );

single_jet_i244_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => JET_TYPE,
        pt_thresholds => (X"0190", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        jet_bx_0,
        condition_o => single_jet_i244
    );

single_jet_i246_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => JET_TYPE,
        pt_thresholds => (X"00B4", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        jet_bx_0,
        condition_o => single_jet_i246
    );

single_jet_i251_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => JET_TYPE,
        pt_thresholds => (X"0046", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"00BA", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"008D", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        jet_bx_0,
        condition_o => single_jet_i251
    );

single_jet_i252_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => JET_TYPE,
        pt_thresholds => (X"0046", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0072", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"0045", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        jet_bx_0,
        condition_o => single_jet_i252
    );

single_jet_i260_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => JET_TYPE,
        pt_thresholds => (X"0014", X"0000", X"0000", X"0000"),
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
        condition_o => single_jet_i260
    );

single_jet_i306_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => JET_TYPE,
        pt_thresholds => (X"0028", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"00BA", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"008D", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        jet_bx_0,
        condition_o => single_jet_i306
    );

single_jet_i307_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => JET_TYPE,
        pt_thresholds => (X"0028", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0072", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"0045", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        jet_bx_0,
        condition_o => single_jet_i307
    );

triple_jet_i299_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => JET_TYPE,
        pt_thresholds => (X"00BE", X"0096", X"0082", X"0000"),
        -- no correlation cuts
        nr_templates => 3
    )
    port map(
        lhc_clk,
        jet_bx_0,
        condition_o => triple_jet_i299
    );

double_mu_i41_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"001F", X"000B", X"0000", X"0000"),
        qual_luts => (X"F000", X"F000", X"FFFF", X"FFFF"),
        -- no correlation cuts
        nr_templates => 2
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => double_mu_i41
    );

double_mu_i53_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0009", X"0009", X"0000", X"0000"),
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
        condition_o => double_mu_i53
    );

single_mu_i0_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0001", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => single_mu_i0
    );

single_mu_i15_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0019", X"0000", X"0000", X"0000"),
        nr_eta_windows => (2, 0, 0, 0),
        eta_w1_upper_limits => (X"00E1", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"0073", X"0000", X"0000", X"0000"),
        eta_w2_upper_limits => (X"018D", X"0000", X"0000", X"0000"),
        eta_w2_lower_limits => (X"011F", X"0000", X"0000", X"0000"),
        qual_luts => (X"FF00", X"FFFF", X"FFFF", X"FFFF"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => single_mu_i15
    );

single_mu_i17_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0025", X"0000", X"0000", X"0000"),
        qual_luts => (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => single_mu_i17
    );

single_mu_i18_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0029", X"0000", X"0000", X"0000"),
        qual_luts => (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => single_mu_i18
    );

single_mu_i23_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0033", X"0000", X"0000", X"0000"),
        qual_luts => (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => single_mu_i23
    );

single_mu_i232_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0001", X"0000", X"0000", X"0000"),
        upt_cuts => (true, false, false, false),
        upt_upper_limits => (X"00FF", X"0000", X"0000", X"0000"),
        upt_lower_limits => (X"000B", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => single_mu_i232
    );

single_mu_i236_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0001", X"0000", X"0000", X"0000"),
        qual_luts => (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        upt_cuts => (true, false, false, false),
        upt_upper_limits => (X"00FF", X"0000", X"0000", X"0000"),
        upt_lower_limits => (X"0006", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => single_mu_i236
    );

single_mu_i372_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0001", X"0000", X"0000", X"0000"),
        upt_cuts => (true, false, false, false),
        upt_upper_limits => (X"00FF", X"0000", X"0000", X"0000"),
        upt_lower_limits => (X"0015", X"0000", X"0000", X"0000"),
        ip_luts => (X"2", X"F", X"F", X"F"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => single_mu_i372
    );

single_mu_i6_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0001", X"0000", X"0000", X"0000"),
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
        condition_o => single_mu_i6
    );

triple_mu_i69_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"000B", X"000B", X"0007", X"0000"),
        qual_luts => (X"FF00", X"FF00", X"FF00", X"FFFF"),
        -- no correlation cuts
        nr_templates => 3
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => triple_mu_i69
    );

triple_mu_i70_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"000B", X"0008", X"0006", X"0000"),
        qual_luts => (X"FFF0", X"FFF0", X"FFF0", X"FFFF"),
        -- no correlation cuts
        nr_templates => 3
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => triple_mu_i70
    );

single_htt_i318_i: entity work.esums_conditions
    generic map(
        et_threshold => X"0320",
        obj_type => HTT_TYPE
    )
    port map(
        lhc_clk,
        htt_bx_0,
        condition_o => single_htt_i318
    );

calo_calo_correlation_i110_i: entity work.calo_calo_correlation_condition
    generic map(
      -- obj cuts
        nr_calo1_objects => NR_JET_OBJECTS,
        obj_type_calo1 => JET_TYPE,
        pt_threshold_calo1 => X"0040",
        nr_eta_windows_calo1 => 1,
        eta_w1_upper_limit_calo1 => X"0034",
        eta_w1_lower_limit_calo1 => X"00CB",
        nr_calo2_objects => NR_JET_OBJECTS,
        obj_type_calo2 => JET_TYPE,
        pt_threshold_calo2 => X"0040",
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
        condition_o => calo_calo_correlation_i110
    );

calo_calo_correlation_i114_i: entity work.calo_calo_correlation_condition
    generic map(
      -- obj cuts
        nr_calo1_objects => NR_JET_OBJECTS,
        obj_type_calo1 => JET_TYPE,
        pt_threshold_calo1 => X"0050",
        nr_eta_windows_calo1 => 1,
        eta_w1_upper_limit_calo1 => X"0030",
        eta_w1_lower_limit_calo1 => X"00CF",
        nr_calo2_objects => NR_JET_OBJECTS,
        obj_type_calo2 => JET_TYPE,
        pt_threshold_calo2 => X"0050",
        nr_eta_windows_calo2 => 1,
        eta_w1_upper_limit_calo2 => X"0030",
        eta_w1_lower_limit_calo2 => X"00CF",
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
        condition_o => calo_calo_correlation_i114
    );

calo_calo_correlation_i188_i: entity work.calo_calo_correlation_condition
    generic map(
      -- obj cuts
        nr_calo1_objects => NR_EG_OBJECTS,
        obj_type_calo1 => EG_TYPE,
        pt_threshold_calo1 => X"003C",
        nr_eta_windows_calo1 => 1,
        eta_w1_upper_limit_calo1 => X"0030",
        eta_w1_lower_limit_calo1 => X"00CF",
        iso_lut_calo1 => X"C",
        nr_calo2_objects => NR_JET_OBJECTS,
        obj_type_calo2 => JET_TYPE,
        pt_threshold_calo2 => X"0044",
        nr_eta_windows_calo2 => 1,
        eta_w1_upper_limit_calo2 => X"0039",
        eta_w1_lower_limit_calo2 => X"00C6",
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
        jet_bx_0,
        diff_eta => diff_eg_jet_bx_0_bx_0_eta_vector,
        diff_phi => diff_eg_jet_bx_0_bx_0_phi_vector,
        condition_o => calo_calo_correlation_i188
    );

calo_calo_correlation_i198_i: entity work.calo_calo_correlation_condition
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
        pt_threshold_calo2 => X"0034",
        nr_eta_windows_calo2 => 1,
        eta_w1_upper_limit_calo2 => X"0030",
        eta_w1_lower_limit_calo2 => X"00CF",
        iso_lut_calo2 => X"E",
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
        condition_o => calo_calo_correlation_i198
    );

invariant_mass_i271_i: entity work.calo_calo_correlation_condition
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
        mass_lower_limit => X"000000010C388D00",
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
        condition_o => invariant_mass_i271
    );

invariant_mass_i280_i: entity work.calo_calo_correlation_condition
    generic map(
      -- obj cuts
        nr_calo1_objects => NR_JET_OBJECTS,
        obj_type_calo1 => JET_TYPE,
        pt_threshold_calo1 => X"0050",
        nr_calo2_objects => NR_JET_OBJECTS,
        obj_type_calo2 => JET_TYPE,
        pt_threshold_calo2 => X"0050",
    -- correlation cuts
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        pt1_width => JET_PT_VECTOR_WIDTH,
        pt2_width => JET_PT_VECTOR_WIDTH,
        mass_cosh_cos_precision => JET_JET_COSH_COS_PRECISION,
        cosh_cos_width => JET_JET_COSH_COS_VECTOR_WIDTH,
        mass_upper_limit => X"00041A6642C78140",
        mass_lower_limit => X"000000047999ED00",
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
        condition_o => invariant_mass_i280
    );

invariant_mass_i93_i: entity work.calo_calo_correlation_condition
    generic map(
      -- obj cuts
        nr_calo1_objects => NR_EG_OBJECTS,
        obj_type_calo1 => EG_TYPE,
        pt_threshold_calo1 => X"000F",
        nr_eta_windows_calo1 => 1,
        eta_w1_upper_limit_calo1 => X"0030",
        eta_w1_lower_limit_calo1 => X"00CF",
        nr_calo2_objects => NR_EG_OBJECTS,
        obj_type_calo2 => EG_TYPE,
        pt_threshold_calo2 => X"000F",
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
        condition_o => invariant_mass_i93
    );

calo_muon_correlation_i109_i: entity work.calo_muon_correlation_condition
    generic map(
      -- calo obj cuts
        obj_type_calo => JET_TYPE,
        pt_threshold_calo => X"0040",
        nr_eta_windows_calo => 1,
        eta_w1_upper_limit_calo => X"0034",
        eta_w1_lower_limit_calo => X"00CB",
      -- muon obj cuts
        pt_threshold_muon => X"0015",
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
        condition_o => calo_muon_correlation_i109
    );

calo_muon_correlation_i113_i: entity work.calo_muon_correlation_condition
    generic map(
      -- calo obj cuts
        obj_type_calo => JET_TYPE,
        pt_threshold_calo => X"0050",
        nr_eta_windows_calo => 1,
        eta_w1_upper_limit_calo => X"0030",
        eta_w1_lower_limit_calo => X"00CF",
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
        condition_o => calo_muon_correlation_i113
    );

invariant_mass_i71_i: entity work.muon_muon_correlation_condition
    generic map(
      -- obj cuts
        pt_threshold_muon1 => X"000B",
        qual_lut_muon1 => X"FFF0",
        pt_threshold_muon2 => X"0006",
        qual_lut_muon2 => X"FFF0",
        -- charge correlation cut
        requested_charge_correlation => "os",
    
    -- correlation cuts
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        mass_upper_limit => X"00000000089CE520",
        mass_lower_limit => X"0000000000BEBC20",
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
        condition_o => invariant_mass_i71
    );

invariant_mass_i92_i: entity work.muon_muon_correlation_condition
    generic map(
      -- obj cuts
        pt_threshold_muon1 => X"0007",
        nr_eta_windows_muon1 => 1,
        eta_w1_upper_limit_muon1 => X"00D3",
        eta_w1_lower_limit_muon1 => X"012D",
        qual_lut_muon1 => X"FF00",
        pt_threshold_muon2 => X"0007",
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
        mass_lower_limit => X"0000000000000000",
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
        condition_o => invariant_mass_i92
    );

invariant_mass_upt_i377_i: entity work.muon_muon_correlation_condition
    generic map(
      -- obj cuts
        pt_threshold_muon1 => X"0001",
        upt_cut_muon1 => true,
        upt_upper_limit_muon1 => X"00FF",
        upt_lower_limit_muon1 => X"0001",
        pt_threshold_muon2 => X"0001",
        upt_cut_muon2 => true,
        upt_upper_limit_muon2 => X"00FF",
        upt_lower_limit_muon2 => X"0001",
    -- correlation cuts
        mass_cut => true,
        mass_type => INVARIANT_MASS_UPT_TYPE,
        mass_upper_limit => X"002907FE9BCB0C80",
        mass_lower_limit => X"000000000BEBC200",
        -- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        mu_bx_0,
        mu_bx_0,
        pt1 => mu_pt_vector_bx_0,
        pt2 => mu_pt_vector_bx_0,
        upt1 => mu_upt_vector_bx_0,
        upt2 => mu_upt_vector_bx_0,
        cosh_deta => mu_mu_bx_0_bx_0_cosh_deta_vector,
        cos_dphi => mu_mu_bx_0_bx_0_cos_dphi_vector,
        condition_o => invariant_mass_upt_i377
    );

invariant_mass_upt_i383_i: entity work.muon_muon_correlation_condition
    generic map(
      -- obj cuts
        pt_threshold_muon1 => X"0001",
        qual_lut_muon1 => X"FFF0",
        upt_cut_muon1 => true,
        upt_upper_limit_muon1 => X"00FF",
        upt_lower_limit_muon1 => X"0006",
        pt_threshold_muon2 => X"0001",
        qual_lut_muon2 => X"FFF0",
        upt_cut_muon2 => true,
        upt_upper_limit_muon2 => X"00FF",
        upt_lower_limit_muon2 => X"0006",
    -- correlation cuts
        mass_cut => true,
        mass_type => INVARIANT_MASS_UPT_TYPE,
        mass_upper_limit => X"002907FE9BCB0C80",
        mass_lower_limit => X"000000000BEBC200",
        -- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        mu_bx_0,
        mu_bx_0,
        pt1 => mu_pt_vector_bx_0,
        pt2 => mu_pt_vector_bx_0,
        upt1 => mu_upt_vector_bx_0,
        upt2 => mu_upt_vector_bx_0,
        cosh_deta => mu_mu_bx_0_bx_0_cosh_deta_vector,
        cos_dphi => mu_mu_bx_0_bx_0_cos_dphi_vector,
        condition_o => invariant_mass_upt_i383
    );

muon_muon_correlation_i46_i: entity work.muon_muon_correlation_condition
    generic map(
      -- obj cuts
        pt_threshold_muon1 => X"0001",
        nr_eta_windows_muon1 => 1,
        eta_w1_upper_limit_muon1 => X"00B8",
        eta_w1_lower_limit_muon1 => X"0148",
        qual_lut_muon1 => X"F000",
        pt_threshold_muon2 => X"0001",
        nr_eta_windows_muon2 => 1,
        eta_w1_upper_limit_muon2 => X"00B8",
        eta_w1_lower_limit_muon2 => X"0148",
        qual_lut_muon2 => X"F000",
    -- correlation cuts
        dr_cut => true,
        dr_upper_limit_vector => X"00000000001DEC28",
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
        condition_o => muon_muon_correlation_i46
    );

muon_muon_correlation_i52_i: entity work.muon_muon_correlation_condition
    generic map(
      -- obj cuts
        pt_threshold_muon1 => X"0001",
        nr_eta_windows_muon1 => 1,
        eta_w1_upper_limit_muon1 => X"0081",
        eta_w1_lower_limit_muon1 => X"017F",
        qual_lut_muon1 => X"F000",
        pt_threshold_muon2 => X"0001",
        nr_eta_windows_muon2 => 1,
        eta_w1_upper_limit_muon2 => X"0081",
        eta_w1_lower_limit_muon2 => X"017F",
        qual_lut_muon2 => X"F000",
        -- charge correlation cut
        requested_charge_correlation => "os",
    
    -- correlation cuts
        dr_cut => true,
        dr_upper_limit_vector => X"00000000001DEC28",
        dr_lower_limit_vector => X"0000000000000000",
        -- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        mu_bx_0,
        mu_bx_0,
        ls_charcorr_double_bx_0_bx_0,
        os_charcorr_double_bx_0_bx_0,
        diff_eta => diff_mu_mu_bx_0_bx_0_eta_vector,
        diff_phi => diff_mu_mu_bx_0_bx_0_phi_vector,
        condition_o => muon_muon_correlation_i52
    );


-- Instantiations of algorithms


-- 0 L1_SingleMuCosmics : MU0
l1_single_mu_cosmics <= single_mu_i0;
algo(26) <= l1_single_mu_cosmics;

-- 6 L1_SingleMu0_BMTF : MU0[MU-QLTY_SNGL,MU-ETA_BMTF]
l1_single_mu0_bmtf <= single_mu_i6;
algo(22) <= l1_single_mu0_bmtf;

-- 15 L1_SingleMu12_DQ_EMTF : MU12[MU-QLTY_DBLE,MU-ETA_EMTF_POS,MU-ETA_EMTF_NEG]
l1_single_mu12_dq_emtf <= single_mu_i15;
algo(23) <= l1_single_mu12_dq_emtf;

-- 17 L1_SingleMu18 : MU18[MU-QLTY_SNGL]
l1_single_mu18 <= single_mu_i17;
algo(24) <= l1_single_mu18;

-- 18 L1_SingleMu20 : MU20[MU-QLTY_SNGL]
l1_single_mu20 <= single_mu_i18;
algo(18) <= l1_single_mu20;

-- 23 L1_SingleMu25 : MU25[MU-QLTY_SNGL]
l1_single_mu25 <= single_mu_i23;
algo(25) <= l1_single_mu25;

-- 34 L1_MASSUPT_0_0_20 : mass_inv_upt{MU0[MU-UPT_0],MU0[MU-UPT_0]}[MASSUPT_20]
l1_massupt_0_0_20 <= invariant_mass_upt_i377;
algo(12) <= l1_massupt_0_0_20;

-- 47 L1_DoubleMu_15_5_SQ : comb{MU15[MU-QLTY_SNGL],MU5[MU-QLTY_SNGL]}
l1_double_mu_15_5_sq <= double_mu_i41;
algo(16) <= l1_double_mu_15_5_sq;

-- 53 L1_DoubleMu0er2p0_SQ_dR_Max1p4 : dist{MU0[MU-QLTY_SNGL,MU-ETA_2p0],MU0[MU-QLTY_SNGL,MU-ETA_2p0]}[DR_1p4]
l1_double_mu0er2p0_sq_d_r_max1p4 <= muon_muon_correlation_i46;
algo(11) <= l1_double_mu0er2p0_sq_d_r_max1p4;

-- 59 L1_DoubleMu0er1p4_SQ_OS_dR_Max1p4 : dist{MU0[MU-QLTY_SNGL,MU-ETA_1p4],MU0[MU-QLTY_SNGL,MU-ETA_1p4]}[DR_1p4,CHGCOR_OS]
l1_double_mu0er1p4_sq_os_d_r_max1p4 <= muon_muon_correlation_i52;
algo(10) <= l1_double_mu0er1p4_sq_os_d_r_max1p4;

-- 60 L1_DoubleMu4_SQ_OS : comb{MU4[MU-QLTY_SNGL],MU4[MU-QLTY_SNGL]}[CHGCOR_OS]
l1_double_mu4_sq_os <= double_mu_i53;
algo(15) <= l1_double_mu4_sq_os;

-- 67 L1_MASSUPT_5_5_20_open : mass_inv_upt{MU0[MU-UPT_5,MU-QLTY_OPEN],MU0[MU-UPT_5,MU-QLTY_OPEN]}[MASSUPT_20]
l1_massupt_5_5_20_open <= invariant_mass_upt_i383;
algo(13) <= l1_massupt_5_5_20_open;

-- 80 L1_TripleMu_5_5_3 : comb{MU5[MU-QLTY_DBLE],MU5[MU-QLTY_DBLE],MU3[MU-QLTY_DBLE]}
l1_triple_mu_5_5_3 <= triple_mu_i69;
algo(14) <= l1_triple_mu_5_5_3;

-- 82 L1_TripleMu_5_3p5_2p5_OQ_DoubleMu_5_2p5_OQ_OS_Mass_5to17 : comb{MU5[MU-QLTY_OPEN],MU3p5[MU-QLTY_OPEN],MU2p5[MU-QLTY_OPEN]} AND mass_inv{MU5[MU-QLTY_OPEN],MU2p5[MU-QLTY_OPEN]}[MASS_MASS_5to17,CHGCOR_OS]
l1_triple_mu_5_3p5_2p5_oq_double_mu_5_2p5_oq_os_mass_5to17 <= triple_mu_i70 and invariant_mass_i71;
algo(9) <= l1_triple_mu_5_3p5_2p5_oq_double_mu_5_2p5_oq_os_mass_5to17;

-- 99 L1_Mu20_EG10er2p5 : MU20[MU-QLTY_SNGL] AND EG10[EG-ETA_2p52]
l1_mu20_eg10er2p5 <= single_mu_i18 and single_eg_i81;
algo(17) <= l1_mu20_eg10er2p5;

-- 112 L1_DoubleMu3_OS_DoubleEG7p5Upsilon : mass_inv{MU3[MU-QLTY_DBLE,MU-ETA_2p3],MU3[MU-QLTY_DBLE,MU-ETA_2p3]}[MASS_MASS_0to14,CHGCOR_OS] AND mass_inv{EG7p5[EG-ETA_2p13],EG7p5[EG-ETA_2p13]}[MASS_MASS_0to20]
l1_double_mu3_os_double_eg7p5_upsilon <= invariant_mass_i92 and invariant_mass_i93;
algo(2) <= l1_double_mu3_os_double_eg7p5_upsilon;

-- 134 L1_Mu10er2p3_Jet32er2p3_dR_Max0p4_DoubleJet32er2p3_dEta_Max1p6 : dist{MU10[MU-QLTY_SNGL,MU-ETA_2p3],JET32[JET-ETA_2p3]}[DR_MAX_0p4] AND dist{JET32[JET-ETA_2p3],JET32[JET-ETA_2p3]}[DETA_MAX_1p6]
l1_mu10er2p3_jet32er2p3_d_r_max0p4_double_jet32er2p3_d_eta_max1p6 <= calo_muon_correlation_i109 and calo_calo_correlation_i110;
algo(0) <= l1_mu10er2p3_jet32er2p3_d_r_max0p4_double_jet32er2p3_d_eta_max1p6;

-- 136 L1_Mu12er2p3_Jet40er2p1_dR_Max0p4_DoubleJet40er2p1_dEta_Max1p6 : dist{MU12[MU-QLTY_SNGL,MU-ETA_2p3],JET40[JET-ETA_2p13]}[DR_MAX_0p4] AND dist{JET40[JET-ETA_2p13],JET40[JET-ETA_2p13]}[DETA_MAX_1p6]
l1_mu12er2p3_jet40er2p1_d_r_max0p4_double_jet40er2p1_d_eta_max1p6 <= calo_muon_correlation_i113 and calo_calo_correlation_i114;
algo(1) <= l1_mu12er2p3_jet40er2p1_d_r_max0p4_double_jet40er2p1_d_eta_max1p6;

-- 154 L1_Mu0upt20ip1 : MU0[MU-IP_1,MU-UPT_20]
l1_mu0upt20ip1 <= single_mu_i372;
algo(21) <= l1_mu0upt20ip1;

-- 160 L1_SingleEG10er2p5 : EG10[EG-ETA_2p52]
l1_single_eg10er2p5 <= single_eg_i81;
algo(19) <= l1_single_eg10er2p5;

-- 162 L1_SingleEG26er2p5 : EG26[EG-ETA_2p52]
l1_single_eg26er2p5 <= single_eg_i128;
algo(33) <= l1_single_eg26er2p5;

-- 167 L1_SingleEG34er2p5 : EG34[EG-ETA_2p52]
l1_single_eg34er2p5 <= single_eg_i134;
algo(34) <= l1_single_eg34er2p5;

-- 172 L1_SingleEG45er2p5 : EG45[EG-ETA_2p52]
l1_single_eg45er2p5 <= single_eg_i139;
algo(35) <= l1_single_eg45er2p5;

-- 181 L1_SingleLooseIsoEG30er2p5 : EG30[EG-ETA_2p52,EG-ISO_0xC]
l1_single_loose_iso_eg30er2p5 <= single_eg_i149;
algo(41) <= l1_single_loose_iso_eg30er2p5;

-- 183 L1_SingleIsoEG24er2p1 : EG24[EG-ETA_2p13,EG-ISO_0xA]
l1_single_iso_eg24er2p1 <= single_eg_i151;
algo(36) <= l1_single_iso_eg24er2p1;

-- 189 L1_SingleIsoEG28er2p5 : EG28[EG-ETA_2p52,EG-ISO_0xA]
l1_single_iso_eg28er2p5 <= single_eg_i158;
algo(37) <= l1_single_iso_eg28er2p5;

-- 206 L1_DoubleEG_20_10_er2p5 : comb{EG20[EG-ETA_2p52],EG10[EG-ETA_2p52]}
l1_double_eg_20_10_er2p5 <= double_eg_i170;
algo(28) <= l1_double_eg_20_10_er2p5;

-- 212 L1_DoubleEG_LooseIso20_10_er2p5 : comb{EG20[EG-ETA_2p52,EG-ISO_0xC],EG10[EG-ETA_2p52]}
l1_double_eg_loose_iso20_10_er2p5 <= double_eg_i175;
algo(29) <= l1_double_eg_loose_iso20_10_er2p5;

-- 217 L1_DoubleLooseIsoEG22er2p1 : comb{EG22[EG-ISO_0xC,EG-ETA_2p13],EG22[EG-ISO_0xC,EG-ETA_2p13]}
l1_double_loose_iso_eg22er2p1 <= double_eg_i179;
algo(31) <= l1_double_loose_iso_eg22er2p1;

-- 236 L1_LooseIsoEG30er2p1_Jet34er2p5_dR_Min0p3 : dist{EG30[EG-ETA_2p13,EG-ISO_0xC],JET34[JET-ETA_2p52]}[DR_MIN_0p3]
l1_loose_iso_eg30er2p1_jet34er2p5_d_r_min0p3 <= calo_calo_correlation_i188;
algo(4) <= l1_loose_iso_eg30er2p1_jet34er2p5_d_r_min0p3;

-- 257 L1_LooseIsoEG22er2p1_IsoTau26er2p1_dR_Min0p3 : dist{EG22[EG-ETA_2p13,EG-ISO_0xC],TAU26[TAU-ETA_2p13,TAU-ISO_0xE]}[DR_MIN_0p3]
l1_loose_iso_eg22er2p1_iso_tau26er2p1_d_r_min0p3 <= calo_calo_correlation_i198;
algo(3) <= l1_loose_iso_eg22er2p1_iso_tau26er2p1_d_r_min0p3;

-- 271 L1_DoubleIsoTau32er2p1 : comb{TAU32[TAU-ETA_2p13,TAU-ISO_0xE],TAU32[TAU-ETA_2p13,TAU-ISO_0xE]}
l1_double_iso_tau32er2p1 <= double_tau_i206;
algo(30) <= l1_double_iso_tau32er2p1;

-- 302 L1_Mu0upt10 : MU0[MU-UPT_10]
l1_mu0upt10 <= single_mu_i232;
algo(20) <= l1_mu0upt10;

-- 306 L1_SingleMuOpenupt5 : MU0[MU-QLTY_SNGL,MU-UPT_5]
l1_single_mu_openupt5 <= single_mu_i236;
algo(27) <= l1_single_mu_openupt5;

-- 314 L1_SingleJet200 : JET200
l1_single_jet200 <= single_jet_i244;
algo(39) <= l1_single_jet200;

-- 318 L1_SingleJet90er2p5 : JET90[JET-ETA_2p52]
l1_single_jet90er2p5 <= single_jet_i246;
algo(40) <= l1_single_jet90er2p5;

-- 324 L1_SingleJet35_FWD3p0 : JET35[JET-ETA_FWD_3p00_NEG] OR JET35[JET-ETA_FWD_3p00_POS]
l1_single_jet35_fwd3p0 <= single_jet_i251 or single_jet_i252;
algo(32) <= l1_single_jet35_fwd3p0;

-- 330 L1_SingleJet10erHE : JET10[JET-ETA_1p392_2p958_NEG,JET-ETA_1p392_2p958_POS]
l1_single_jet10er_he <= single_jet_i260;
algo(38) <= l1_single_jet10er_he;

-- 351 L1_DoubleJet30er2p5_Mass_Min300_dEta_Max1p5 : mass_inv{JET30[JET-ETA_2p52],JET30[JET-ETA_2p52]}[MASS_MIN_300,DETA_MAX_1p5]
l1_double_jet30er2p5_mass_min300_d_eta_max1p5 <= invariant_mass_i271;
algo(5) <= l1_double_jet30er2p5_mass_min300_d_eta_max1p5;

-- 358 L1_DoubleJet_115_40_DoubleJet40_Mass_Min620 : comb{JET115,JET40} AND mass_inv{JET40,JET40}[MASS_MIN_620]
l1_double_jet_115_40_double_jet40_mass_min620 <= double_jet_i279 and invariant_mass_i280;
algo(6) <= l1_double_jet_115_40_double_jet40_mass_min620;

-- 372 L1_TripleJet_95_75_65_DoubleJet_75_65_er2p5 : comb{JET95,JET75,JET65} AND comb{JET75[JET-ETA_2p52],JET65[JET-ETA_2p52]}
l1_triple_jet_95_75_65_double_jet_75_65_er2p5 <= triple_jet_i299 and double_jet_i300;
algo(8) <= l1_triple_jet_95_75_65_double_jet_75_65_er2p5;

-- 376 L1_QuadJet_95_75_65_20_DoubleJet_75_65_er2p5_Jet20_FWD3p0 : comb{JET95,JET75,JET65,JET20} AND comb{JET75[JET-ETA_2p52],JET65[JET-ETA_2p52]} AND (JET20[JET-ETA_FWD_3p00_NEG] OR JET20[JET-ETA_FWD_3p00_POS])
l1_quad_jet_95_75_65_20_double_jet_75_65_er2p5_jet20_fwd3p0 <= quad_jet_i305 and double_jet_i300 and ( single_jet_i306 or single_jet_i307 );
algo(7) <= l1_quad_jet_95_75_65_20_double_jet_75_65_er2p5_jet20_fwd3p0;

-- 405 L1_HTT400er : HTT400
l1_htt400er <= single_htt_i318;
algo(42) <= l1_htt400er;


-- ========================================================