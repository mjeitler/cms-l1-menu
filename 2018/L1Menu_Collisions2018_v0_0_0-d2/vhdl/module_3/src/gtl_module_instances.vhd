-- ========================================================
-- from VHDL producer:

-- Module ID: 3

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v0_0_0

-- Unique ID of L1 Trigger Menu:
-- ab180f50-10f1-4280-90cb-3f727321cac6

-- Unique ID of firmware implementation:
-- 815e57bf-b6ab-4733-98bf-d9de201a65ea

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

-- External condition assignment
    single_ext_17960169865075597331 <= ext_cond_bx_0(9); -- single_ext_17960169865075597331
    single_ext_4108951444235007726 <= ext_cond_bx_0(19); -- single_ext_4108951444235007726
    single_ext_9945386645006164836 <= ext_cond_bx_0(21); -- single_ext_9945386645006164836
    single_ext_9960888781174681113 <= ext_cond_bx_0(2); -- single_ext_9960888781174681113
-- Instantiations of muon charge correlations - only once for a certain Bx combination, if there is at least one DoubleMuon, TripleMuon, QuadMuon condition
-- or muon-muon correlation condition.
    muon_charge_correlations_bx_m1_bx_0_i: entity work.muon_charge_correlations
        port map(mu_bx_m1, mu_bx_0,
            ls_charcorr_double_bx_m1_bx_0, os_charcorr_double_bx_m1_bx_0,
            ls_charcorr_triple_bx_m1_bx_0, os_charcorr_triple_bx_m1_bx_0,
            ls_charcorr_quad_bx_m1_bx_0, os_charcorr_quad_bx_m1_bx_0);
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
    tau_data_bx_0_l: for i in 0 to NR_TAU_OBJECTS-1 generate
        tau_pt_vector_bx_0(i)(TAU_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(TAU_PT_LUT(CONV_INTEGER(tau_bx_0(i)(D_S_I_TAU_V2.et_high downto D_S_I_TAU_V2.et_low))), TAU_PT_VECTOR_WIDTH);
        tau_eta_integer_bx_0(i) <= CONV_INTEGER(signed(tau_bx_0(i)(D_S_I_TAU_V2.eta_high downto D_S_I_TAU_V2.eta_low)));
        tau_phi_integer_bx_0(i) <= CONV_INTEGER(tau_bx_0(i)(D_S_I_TAU_V2.phi_high downto D_S_I_TAU_V2.phi_low));
        tau_cos_phi_bx_0(i) <= CALO_COS_PHI_LUT(CONV_INTEGER(tau_bx_0(i)(D_S_I_TAU_V2.phi_high downto D_S_I_TAU_V2.phi_low)));
        tau_sin_phi_bx_0(i) <= CALO_SIN_PHI_LUT(CONV_INTEGER(tau_bx_0(i)(D_S_I_TAU_V2.phi_high downto D_S_I_TAU_V2.phi_low)));
        conv_tau_cos_phi_bx_0(i) <= MUON_COS_PHI_LUT(tau_phi_conv_2_muon_phi_integer_bx_0(i));
        conv_tau_sin_phi_bx_0(i) <= MUON_SIN_PHI_LUT(tau_phi_conv_2_muon_phi_integer_bx_0(i));
    end generate tau_data_bx_0_l;
    eg_data_bx_0_l: for i in 0 to NR_EG_OBJECTS-1 generate
        eg_pt_vector_bx_0(i)(EG_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(EG_PT_LUT(CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.et_high downto D_S_I_EG_V2.et_low))), EG_PT_VECTOR_WIDTH);
        eg_eta_integer_bx_0(i) <= CONV_INTEGER(signed(eg_bx_0(i)(D_S_I_EG_V2.eta_high downto D_S_I_EG_V2.eta_low)));
        eg_phi_integer_bx_0(i) <= CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.phi_high downto D_S_I_EG_V2.phi_low));
        eg_cos_phi_bx_0(i) <= CALO_COS_PHI_LUT(CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.phi_high downto D_S_I_EG_V2.phi_low)));
        eg_sin_phi_bx_0(i) <= CALO_SIN_PHI_LUT(CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.phi_high downto D_S_I_EG_V2.phi_low)));
        conv_eg_cos_phi_bx_0(i) <= MUON_COS_PHI_LUT(eg_phi_conv_2_muon_phi_integer_bx_0(i));
        conv_eg_sin_phi_bx_0(i) <= MUON_SIN_PHI_LUT(eg_phi_conv_2_muon_phi_integer_bx_0(i));
    end generate eg_data_bx_0_l;
    mu_data_bx_m1_l: for i in 0 to NR_MU_OBJECTS-1 generate
        mu_pt_vector_bx_m1(i)(MU_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(MU_PT_LUT(CONV_INTEGER(mu_bx_m1(i)(D_S_I_MU_V2.pt_high downto D_S_I_MU_V2.pt_low))), MU_PT_VECTOR_WIDTH);
        mu_eta_integer_bx_m1(i) <= CONV_INTEGER(signed(mu_bx_m1(i)(D_S_I_MU_V2.eta_high downto D_S_I_MU_V2.eta_low)));
        mu_phi_integer_bx_m1(i) <= CONV_INTEGER(mu_bx_m1(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low));
        mu_cos_phi_bx_m1(i) <= MUON_COS_PHI_LUT(CONV_INTEGER(mu_bx_m1(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low)));
        mu_sin_phi_bx_m1(i) <= MUON_SIN_PHI_LUT(CONV_INTEGER(mu_bx_m1(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low)));
    end generate mu_data_bx_m1_l;

-- Instantiations of differences for correlation conditions (used for DETA, DPHI, DR, mass and b_tagging) - once for correlation conditions with two ObjectTypes in certain Bxs
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
    diff_jet_tau_eta_bx_0_bx_0_i: entity work.sub_eta_integer_obj_vs_obj
        generic map(NR_JET_OBJECTS, NR_TAU_OBJECTS)
        port map(jet_eta_integer_bx_0, tau_eta_integer_bx_0, diff_jet_tau_bx_0_bx_0_eta_integer);
    diff_jet_tau_phi_bx_0_bx_0_i: entity work.sub_phi_integer_obj_vs_obj
        generic map(NR_JET_OBJECTS, NR_TAU_OBJECTS, CALO_PHI_HALF_RANGE_BINS)
        port map(jet_phi_integer_bx_0, tau_phi_integer_bx_0, diff_jet_tau_bx_0_bx_0_phi_integer);
    jet_tau_bx_0_bx_0_l1: for i in 0 to NR_JET_OBJECTS-1 generate
        jet_tau_bx_0_bx_0_l2: for j in 0 to NR_TAU_OBJECTS-1 generate
            diff_jet_tau_bx_0_bx_0_eta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_TAU_DIFF_ETA_LUT(diff_jet_tau_bx_0_bx_0_eta_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
            diff_jet_tau_bx_0_bx_0_phi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_TAU_DIFF_PHI_LUT(diff_jet_tau_bx_0_bx_0_phi_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
        end generate jet_tau_bx_0_bx_0_l2;
    end generate jet_tau_bx_0_bx_0_l1;
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
    diff_mu_mu_eta_bx_m1_bx_0_i: entity work.sub_eta_integer_obj_vs_obj
        generic map(NR_MU_OBJECTS, NR_MU_OBJECTS)
        port map(mu_eta_integer_bx_m1, mu_eta_integer_bx_0, diff_mu_mu_bx_m1_bx_0_eta_integer);
    diff_mu_mu_phi_bx_m1_bx_0_i: entity work.sub_phi_integer_obj_vs_obj
        generic map(NR_MU_OBJECTS, NR_MU_OBJECTS, MUON_PHI_HALF_RANGE_BINS)
        port map(mu_phi_integer_bx_m1, mu_phi_integer_bx_0, diff_mu_mu_bx_m1_bx_0_phi_integer);
    mu_mu_bx_m1_bx_0_l1: for i in 0 to NR_MU_OBJECTS-1 generate
        mu_mu_bx_m1_bx_0_l2: for j in 0 to NR_MU_OBJECTS-1 generate
            diff_mu_mu_bx_m1_bx_0_eta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_DIFF_ETA_LUT(diff_mu_mu_bx_m1_bx_0_eta_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
            diff_mu_mu_bx_m1_bx_0_phi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_DIFF_PHI_LUT(diff_mu_mu_bx_m1_bx_0_phi_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
        end generate mu_mu_bx_m1_bx_0_l2;
    end generate mu_mu_bx_m1_bx_0_l1;
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

-- Instantiations of cosh-deta and cos-dphi LUTs for correlation conditions (used for mass and overlap_remover) - once for correlation conditions with two ObjectTypes in certain Bxs
    jet_mu_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_JET_OBJECTS-1 generate
        jet_mu_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_MU_OBJECTS-1 generate
            jet_mu_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_MU_COSH_DETA_LUT(diff_jet_mu_bx_0_bx_0_eta_integer(i,j)), JET_MU_COSH_COS_VECTOR_WIDTH);
            jet_mu_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_MU_COS_DPHI_LUT(diff_jet_mu_bx_0_bx_0_phi_integer(i,j)), JET_MU_COSH_COS_VECTOR_WIDTH);
        end generate jet_mu_bx_0_bx_0_cosh_cos_l2;
    end generate jet_mu_bx_0_bx_0_cosh_cos_l1;
    eg_jet_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_EG_OBJECTS-1 generate
        eg_jet_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_JET_OBJECTS-1 generate
            eg_jet_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_JET_COSH_DETA_LUT(diff_eg_jet_bx_0_bx_0_eta_integer(i,j)), EG_JET_COSH_COS_VECTOR_WIDTH);
            eg_jet_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_JET_COS_DPHI_LUT(diff_eg_jet_bx_0_bx_0_phi_integer(i,j)), EG_JET_COSH_COS_VECTOR_WIDTH);
        end generate eg_jet_bx_0_bx_0_cosh_cos_l2;
    end generate eg_jet_bx_0_bx_0_cosh_cos_l1;
    jet_tau_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_JET_OBJECTS-1 generate
        jet_tau_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_TAU_OBJECTS-1 generate
            jet_tau_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_TAU_COSH_DETA_LUT(diff_jet_tau_bx_0_bx_0_eta_integer(i,j)), JET_TAU_COSH_COS_VECTOR_WIDTH);
            jet_tau_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_TAU_COS_DPHI_LUT(diff_jet_tau_bx_0_bx_0_phi_integer(i,j)), JET_TAU_COSH_COS_VECTOR_WIDTH);
        end generate jet_tau_bx_0_bx_0_cosh_cos_l2;
    end generate jet_tau_bx_0_bx_0_cosh_cos_l1;
    jet_jet_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_JET_OBJECTS-1 generate
        jet_jet_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_JET_OBJECTS-1 generate
            jet_jet_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_JET_COSH_DETA_LUT(diff_jet_jet_bx_0_bx_0_eta_integer(i,j)), JET_JET_COSH_COS_VECTOR_WIDTH);
            jet_jet_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_JET_COS_DPHI_LUT(diff_jet_jet_bx_0_bx_0_phi_integer(i,j)), JET_JET_COSH_COS_VECTOR_WIDTH);
        end generate jet_jet_bx_0_bx_0_cosh_cos_l2;
    end generate jet_jet_bx_0_bx_0_cosh_cos_l1;
    mu_mu_bx_m1_bx_0_cosh_cos_l1: for i in 0 to NR_MU_OBJECTS-1 generate
        mu_mu_bx_m1_bx_0_cosh_cos_l2: for j in 0 to NR_MU_OBJECTS-1 generate
            mu_mu_bx_m1_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_COSH_DETA_LUT(diff_mu_mu_bx_m1_bx_0_eta_integer(i,j)), MU_MU_COSH_COS_VECTOR_WIDTH);
            mu_mu_bx_m1_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_COS_DPHI_LUT(diff_mu_mu_bx_m1_bx_0_phi_integer(i,j)), MU_MU_COSH_COS_VECTOR_WIDTH);
        end generate mu_mu_bx_m1_bx_0_cosh_cos_l2;
    end generate mu_mu_bx_m1_bx_0_cosh_cos_l1;
    mu_mu_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_MU_OBJECTS-1 generate
        mu_mu_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_MU_OBJECTS-1 generate
            mu_mu_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_COSH_DETA_LUT(diff_mu_mu_bx_0_bx_0_eta_integer(i,j)), MU_MU_COSH_COS_VECTOR_WIDTH);
            mu_mu_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_COS_DPHI_LUT(diff_mu_mu_bx_0_bx_0_phi_integer(i,j)), MU_MU_COSH_COS_VECTOR_WIDTH);
        end generate mu_mu_bx_0_bx_0_cosh_cos_l2;
    end generate mu_mu_bx_0_bx_0_cosh_cos_l1;

-- Instantiations of conditions
double_eg_13299746526186732683_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, EG_TYPE,
        (X"0010", X"0010", X"0000", X"0000"),
        (false, false, true, true),
        (X"003B", X"003B", X"0000", X"0000"), (X"00C4", X"00C4", X"0000", X"0000"),
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
        double_eg_13299746526186732683);


double_eg_14367260113818400607_i: entity work.calo_conditions_v7_no_quad
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
        double_eg_14367260113818400607);


double_eg_14367290900143979231_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, EG_TYPE,
        (X"0022", X"0022", X"0000", X"0000"),
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
        double_eg_14367290900143979231);


double_eg_8902241742241126126_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, EG_TYPE,
        (X"000C", X"000C", X"0000", X"0000"),
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
        double_eg_8902241742241126126);


double_jet_10840719965249128790_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, JET_TYPE,
        (X"003C", X"003C", X"0000", X"0000"),
        (false, false, true, true),
        (X"003B", X"003B", X"0000", X"0000"), (X"00C4", X"00C4", X"0000", X"0000"),
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
        double_jet_10840719965249128790);


double_jet_16307690244847013269_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, JET_TYPE,
        (X"00C8", X"003C", X"0000", X"0000"),
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
        double_jet_16307690244847013269);


double_jet_17504692923644168291_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, JET_TYPE,
        (X"003C", X"003C", X"0000", X"0000"),
        (false, false, true, true),
        (X"00BA", X"00BA", X"0000", X"0000"), (X"008D", X"008D", X"0000", X"0000"),
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
        double_jet_17504692923644168291);


double_jet_3730266969229109735_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, JET_TYPE,
        (X"003C", X"003C", X"0000", X"0000"),
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
        double_jet_3730266969229109735);


double_jet_3805139313034161255_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, JET_TYPE,
        (X"005A", X"005A", X"0000", X"0000"),
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
        double_jet_3805139313034161255);


double_jet_3851467703317088356_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, JET_TYPE,
        (X"003C", X"003C", X"0000", X"0000"),
        (false, false, true, true),
        (X"0072", X"00BA", X"0000", X"0000"), (X"0045", X"008D", X"0000", X"0000"),
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
        double_jet_3851467703317088356);


double_jet_3851467703875127396_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, JET_TYPE,
        (X"003C", X"003C", X"0000", X"0000"),
        (false, false, true, true),
        (X"0072", X"0072", X"0000", X"0000"), (X"0045", X"0045", X"0000", X"0000"),
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
        double_jet_3851467703875127396);


double_jet_4162612533456677351_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, JET_TYPE,
        (X"00B4", X"003C", X"0000", X"0000"),
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
        double_jet_4162612533456677351);


double_jet_7821119012726214247_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, JET_TYPE,
        (X"003C", X"003C", X"0000", X"0000"),
        (false, false, true, true),
        (X"003B", X"00BA", X"0000", X"0000"), (X"00C4", X"008D", X"0000", X"0000"),
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
        double_jet_7821119012726214247);


double_jet_7821119013284253287_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, JET_TYPE,
        (X"003C", X"003C", X"0000", X"0000"),
        (false, false, true, true),
        (X"003B", X"0072", X"0000", X"0000"), (X"00C4", X"0045", X"0000", X"0000"),
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
        double_jet_7821119013284253287);


quad_jet_17630949366336433287_i: entity work.calo_condition_v6_quad
    generic map(0, 11, 0, 11, 0, 11, 0, 11,
        4, true, JET_TYPE,
        (X"008C", X"006E", X"0050", X"0046"),
        (false, false, false, false),
        (X"0039", X"0039", X"0039", X"0039"), (X"00C6", X"00C6", X"00C6", X"00C6"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0,
        quad_jet_17630949366336433287);


single_eg_14262501742930627507_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"0036", X"0000", X"0000", X"0000"),
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
        single_eg_14262501742930627507);


single_eg_9244738805910375422_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"0030", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
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
        single_eg_9244738805910375422);


single_eg_9244741004933630974_i: entity work.calo_conditions_v7_no_quad
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
        (X"C", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, eg_bx_0,
        single_eg_9244741004933630974);


single_eg_9244743203956886526_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"0038", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
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
        single_eg_9244743203956886526);


single_jet_20010310448_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_20010310448);


single_jet_20010310832_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"00B4", X"0000", X"0000", X"0000"),
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
        single_jet_20010310832);


single_tau_12210388642533153582_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, TAU_TYPE,
        (X"0050", X"0000", X"0000", X"0000"),
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
        single_tau_12210388642533153582);


triple_jet_10368473821548883594_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 11,
        3, true, JET_TYPE,
        (X"0034", X"0034", X"0034", X"0000"),
        (true, false, false, true),
        (X"0000", X"003D", X"003D", X"0000"), (X"0000", X"00C2", X"00C2", X"0000"),
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
        triple_jet_10368473821548883594);


triple_jet_1776207310752122438_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 11,
        3, true, JET_TYPE,
        (X"003C", X"003C", X"003C", X"0000"),
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
        triple_jet_1776207310752122438);


double_mu_14585786515326686015_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 7, 0, 0, 0, 0,
        2, true,
        (X"0007", X"0007", X"0000", X"0000"),
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
        double_mu_14585786515326686015,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


single_mu_14769293122775847365_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"000D", X"0000", X"0000", X"0000"),
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
        single_mu_14769293122775847365);


single_mu_17494117756195063635_i: entity work.muon_conditions_v7
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
        single_mu_17494117756195063635);


single_etm_18699475632_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"0064",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_18699475632);


single_etm_2393532815664_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00F0",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_2393532815664);


single_etmhf_306372248967728_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"0050",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_306372248967728);


single_etmhf_306372248967856_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"0064",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_306372248967856);


single_etmhf_306372248967984_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"0078",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_306372248967984);


single_etmhf_306372248968112_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"008C",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_306372248968112);


single_etmhf_306372248968240_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"00A0",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_306372248968240);


single_etmhf_306372248968368_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"00B4",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_306372248968368);


single_etmhf_39215647867820080_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"00C8",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_39215647867820080);


single_etmhf_39215647867820208_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"00DC",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_39215647867820208);


single_etmhf_39215647867820336_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"00F0",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_39215647867820336);


single_htt_19504896816_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0078",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_19504896816);


single_htt_2496626710576_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"00C8",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626710576);


single_htt_2496626726960_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0190",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626726960);


single_htt_2496626727216_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"01B8",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626727216);


single_htt_2496626727472_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"01E0",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626727472);


single_htt_2496626727600_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"01F4",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626727600);


single_htt_2496626727605_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"01FE",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626727605);


single_htt_2496626727856_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"021C",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626727856);


single_htt_2496626727984_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0230",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626727984);


single_htt_2496626743344_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0258",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626743344);


calo_calo_correlation_7041035331710545453_i: entity work.calo_calo_correlation_condition_v4
    generic map(
        true,
        true, false, false, false, 0, false,
        0, 11, true, JET_TYPE,
        X"00E0",
        false, X"0034", X"00CB",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        0, 11, true, JET_TYPE,
        X"00E0",
        false, X"0034", X"00CB",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        X"00000640", X"00000000",
        X"00000000", X"00000000",
        X"0000000000000000", X"0000000000000000",
        X"0000000000000000", X"0000000000000000",
        JET_PT_VECTOR_WIDTH, JET_PT_VECTOR_WIDTH, JET_JET_COSH_COS_PRECISION, JET_JET_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", CALO_SIN_COS_VECTOR_WIDTH, JET_JET_SIN_COS_PRECISION
    )
    port map(lhc_clk, jet_bx_0, jet_bx_0,
        diff_jet_jet_bx_0_bx_0_eta_vector, diff_jet_jet_bx_0_bx_0_phi_vector,
        jet_pt_vector_bx_0, jet_pt_vector_bx_0,
        jet_jet_bx_0_bx_0_cosh_deta_vector, jet_jet_bx_0_bx_0_cos_dphi_vector,
        jet_cos_phi_bx_0, jet_cos_phi_bx_0, jet_sin_phi_bx_0, jet_sin_phi_bx_0,
        calo_calo_correlation_7041035331710545453);

calo_calo_correlation_9825171649083341880_i: entity work.calo_calo_correlation_condition_v4
    generic map(
        true,
        false, false, true, false, 0, false,
        0, 11, true, EG_TYPE,
        X"0030",
        false, X"0030", X"00CF",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"C",
        0, 11, true, JET_TYPE,
        X"0034",
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
        calo_calo_correlation_9825171649083341880);

invariant_mass_2940638391876117895_i: entity work.calo_calo_correlation_condition_v4
    generic map(
        true,
        false, false, false, true, 0, false,
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
        invariant_mass_2940638391876117895);

invariant_mass_3160759413460650486_i: entity work.calo_calo_correlation_condition_v4
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
        X"00041A6642C78140", X"00000001823CF400",
        JET_PT_VECTOR_WIDTH, JET_PT_VECTOR_WIDTH, JET_JET_COSH_COS_PRECISION, JET_JET_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", CALO_SIN_COS_VECTOR_WIDTH, JET_JET_SIN_COS_PRECISION
    )
    port map(lhc_clk, jet_bx_0, jet_bx_0,
        diff_jet_jet_bx_0_bx_0_eta_vector, diff_jet_jet_bx_0_bx_0_phi_vector,
        jet_pt_vector_bx_0, jet_pt_vector_bx_0,
        jet_jet_bx_0_bx_0_cosh_deta_vector, jet_jet_bx_0_bx_0_cos_dphi_vector,
        jet_cos_phi_bx_0, jet_cos_phi_bx_0, jet_sin_phi_bx_0, jet_sin_phi_bx_0,
        invariant_mass_3160759413460650486);

invariant_mass_ov_rm_10967205787862279205_i: entity work.calo_calo_calo_correlation_orm_condition_v3
    generic map(
        true,
        false, false, true,
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
        0, 11, true, TAU_TYPE,
        X"005A",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"E",
        X"00000000", X"00000000",
        X"00000000", X"00000000",
        X"000000000000A028", X"0000000000000000",
        X"00000000", X"00000000",
        X"00000000", X"00000000",
        X"0000000000000000", X"0000000000000000",
        X"000008E9BD84D000", X"000000025B7F3D40",
        JET_PT_VECTOR_WIDTH, JET_PT_VECTOR_WIDTH, JET_JET_COSH_COS_PRECISION, JET_JET_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", CALO_SIN_COS_VECTOR_WIDTH, JET_JET_SIN_COS_PRECISION
    )
    port map(lhc_clk, jet_bx_0, tau_bx_0,
        diff_jet_tau_bx_0_bx_0_eta_vector, diff_jet_tau_bx_0_bx_0_phi_vector,
        diff_jet_jet_bx_0_bx_0_eta_vector, diff_jet_jet_bx_0_bx_0_phi_vector,
        jet_pt_vector_bx_0, jet_pt_vector_bx_0,
        jet_jet_bx_0_bx_0_cosh_deta_vector, jet_jet_bx_0_bx_0_cos_dphi_vector,
        jet_cos_phi_bx_0, jet_cos_phi_bx_0, jet_sin_phi_bx_0, jet_sin_phi_bx_0,
        invariant_mass_ov_rm_10967205787862279205);

calo_muon_correlation_16240389187803176961_i: entity work.calo_muon_correlation_condition_v3
    generic map(
        true, true, false, false, 0, false,
        0, 11, true, JET_TYPE,
        X"0078",
        false, X"003D",X"00C2",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        0, 7, true,
        X"0007",
        true, X"0000",X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"F000", X"F",
        X"00000190", X"00000000",
        X"00000190", X"00000000",
        X"0000000000000000", X"0000000000000000",
        X"0000000000000000", X"0000000000000000",
        JET_PT_VECTOR_WIDTH, MU_PT_VECTOR_WIDTH, JET_MU_COSH_COS_PRECISION, JET_MU_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", MUON_SIN_COS_VECTOR_WIDTH, JET_MU_SIN_COS_PRECISION
    )
    port map(lhc_clk, jet_bx_0(0 to 11), mu_bx_0(0 to 7),
        diff_jet_mu_bx_0_bx_0_eta_vector, diff_jet_mu_bx_0_bx_0_phi_vector,
        jet_pt_vector_bx_0, mu_pt_vector_bx_0,
        jet_mu_bx_0_bx_0_cosh_deta_vector, jet_mu_bx_0_bx_0_cos_dphi_vector,
        conv_jet_cos_phi_bx_0, mu_cos_phi_bx_0, conv_jet_sin_phi_bx_0, mu_sin_phi_bx_0,
        calo_muon_correlation_16240389187803176961);

muon_muon_correlation_16784489743460462578_i: entity work.muon_muon_correlation_condition_v4
    generic map(
        true,
        false, false, true, false, 0, false,
        0, 7, true,
        X"0009",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"F000", X"F",
        0, 7, true,
        X"0009",
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
        muon_muon_correlation_16784489743460462578);

muon_muon_correlation_5013507948943010765_i: entity work.muon_muon_correlation_condition_v4
    generic map(
        false,
        false, true, false, false, 0, false,
        0, 7, true,
        X"0007",
        false, X"006E", X"0192",
        true, X"0000", X"0000",
        false, X"00EF", X"0030",
        true, X"0000", X"0000",
        "ign", X"F000", X"F",
        0, 7, true,
        X"0007",
        false, X"006E",X"0192",
        true, X"0000", X"0000",
        false, X"020F", X"0150",
        true, X"0000", X"0000",
        "ign", X"F000", X"F",
        "ig",
        X"00000000", X"00000000",
        X"00000C46", X"00000A3A",
        X"0000000000000000", X"0000000000000000",
        X"0000000000000000", X"0000000000000000",
        MU_PT_VECTOR_WIDTH, MU_MU_COSH_COS_PRECISION, MU_MU_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", MUON_SIN_COS_VECTOR_WIDTH, MU_MU_SIN_COS_PRECISION
    )
    port map(lhc_clk, mu_bx_m1, mu_bx_0,
        ls_charcorr_double_bx_m1_bx_0, os_charcorr_double_bx_m1_bx_0,
        diff_mu_mu_bx_m1_bx_0_eta_vector, diff_mu_mu_bx_m1_bx_0_phi_vector,
        mu_pt_vector_bx_m1, mu_pt_vector_bx_0,
        mu_mu_bx_m1_bx_0_cosh_deta_vector, mu_mu_bx_m1_bx_0_cos_dphi_vector,
        mu_cos_phi_bx_m1, mu_cos_phi_bx_0, mu_sin_phi_bx_m1, mu_sin_phi_bx_0,
        muon_muon_correlation_5013507948943010765);


-- Instantiations of algorithms

-- 134 L1_SingleJet60 : JET60
l1_single_jet60 <= single_jet_20010310448;
algo(50) <= l1_single_jet60;

-- 135 L1_SingleJet90 : JET90
l1_single_jet90 <= single_jet_20010310832;
algo(65) <= l1_single_jet90;

-- 170 L1_HTT200er : HTT200
l1_htt200er <= single_htt_2496626726960;
algo(21) <= l1_htt200er;

-- 171 L1_HTT220er : HTT220
l1_htt220er <= single_htt_2496626727216;
algo(22) <= l1_htt220er;

-- 172 L1_HTT240er : HTT240
l1_htt240er <= single_htt_2496626727472;
algo(7) <= l1_htt240er;

-- 173 L1_HTT255er : HTT255
l1_htt255er <= single_htt_2496626727605;
algo(29) <= l1_htt255er;

-- 174 L1_HTT270er : HTT270
l1_htt270er <= single_htt_2496626727856;
algo(44) <= l1_htt270er;

-- 175 L1_HTT280er : HTT280
l1_htt280er <= single_htt_2496626727984;
algo(53) <= l1_htt280er;

-- 176 L1_HTT300er : HTT300
l1_htt300er <= single_htt_2496626743344;
algo(64) <= l1_htt300er;

-- 185 L1_ETM50 : ETM50
l1_etm50 <= single_etm_18699475632;
algo(5) <= l1_etm50;

-- 197 L1_ETM120 : ETM120
l1_etm120 <= single_etm_2393532815664;
algo(4) <= l1_etm120;

-- 199 L1_ETMHF70 : ETMHF70
l1_etmhf70 <= single_etmhf_306372248968112;
algo(19) <= l1_etmhf70;

-- 200 L1_ETMHF80 : ETMHF80
l1_etmhf80 <= single_etmhf_306372248968240;
algo(30) <= l1_etmhf80;

-- 201 L1_ETMHF90 : ETMHF90
l1_etmhf90 <= single_etmhf_306372248968368;
algo(46) <= l1_etmhf90;

-- 202 L1_ETMHF100 : ETMHF100
l1_etmhf100 <= single_etmhf_39215647867820080;
algo(6) <= l1_etmhf100;

-- 203 L1_ETMHF110 : ETMHF110
l1_etmhf110 <= single_etmhf_39215647867820208;
algo(15) <= l1_etmhf110;

-- 204 L1_ETMHF120 : ETMHF120
l1_etmhf120 <= single_etmhf_39215647867820336;
algo(48) <= l1_etmhf120;

-- 219 L1_DoubleJet30_Mass_Min360_dEta_Max1p5 : mass_inv{JET30,JET30}[MASS_MIN_360,DETA_MAX_1p5]
l1_double_jet30_mass_min360_d_eta_max1p5 <= invariant_mass_3160759413460650486;
algo(73) <= l1_double_jet30_mass_min360_d_eta_max1p5;

-- 225 L1_LooseIsoEG24er2p1_Jet26er2p7_dR_Min0p3 : dist{EG24[EG-ETA_2p13,EG-ISO_0xC],JET26[JET-ETA_2p7]}[DR_MIN_0p3]
l1_loose_iso_eg24er2p1_jet26er2p7_d_r_min0p3 <= calo_calo_correlation_9825171649083341880;
algo(74) <= l1_loose_iso_eg24er2p1_jet26er2p7_d_r_min0p3;

-- 229 L1_LooseIsoEG24er2p1_HTT100er : EG24[EG-ETA_2p13,EG-ISO_0xC] AND HTT100
l1_loose_iso_eg24er2p1_htt100er <= single_eg_9244738805910375422 and single_htt_2496626710576;
algo(55) <= l1_loose_iso_eg24er2p1_htt100er;

-- 230 L1_LooseIsoEG26er2p1_HTT100er : EG26[EG-ETA_2p13,EG-ISO_0xC] AND HTT100
l1_loose_iso_eg26er2p1_htt100er <= single_eg_9244741004933630974 and single_htt_2496626710576;
algo(9) <= l1_loose_iso_eg26er2p1_htt100er;

-- 231 L1_LooseIsoEG28er2p1_HTT100er : EG28[EG-ETA_2p13,EG-ISO_0xC] AND HTT100
l1_loose_iso_eg28er2p1_htt100er <= single_eg_9244743203956886526 and single_htt_2496626710576;
algo(8) <= l1_loose_iso_eg28er2p1_htt100er;

-- 232 L1_LooseIsoEG24er2p1_TripleJet_26er2p7_26_26er2p7 : EG24[EG-ETA_2p13,EG-ISO_0xC] AND comb{JET26,JET26[JET-ETA_2p7],JET26[JET-ETA_2p7]}
l1_loose_iso_eg24er2p1_triple_jet_26er2p7_26_26er2p7 <= single_eg_9244738805910375422 and triple_jet_10368473821548883594;
algo(39) <= l1_loose_iso_eg24er2p1_triple_jet_26er2p7_26_26er2p7;

-- 244 L1_HTT280er_QuadJet_70_55_40_35_er2p5 : HTT280 AND comb{JET70[JET-ETA_RESTR],JET55[JET-ETA_RESTR],JET40[JET-ETA_RESTR],JET35[JET-ETA_RESTR]}
l1_htt280er_quad_jet_70_55_40_35_er2p5 <= single_htt_2496626727984 and quad_jet_17630949366336433287;
algo(20) <= l1_htt280er_quad_jet_70_55_40_35_er2p5;

-- 245 L1_HTT300er_QuadJet_70_55_40_35_er2p5 : HTT300 AND comb{JET70[JET-ETA_RESTR],JET55[JET-ETA_RESTR],JET40[JET-ETA_RESTR],JET35[JET-ETA_RESTR]}
l1_htt300er_quad_jet_70_55_40_35_er2p5 <= single_htt_2496626743344 and quad_jet_17630949366336433287;
algo(49) <= l1_htt300er_quad_jet_70_55_40_35_er2p5;

-- 252 L1_DoubleJet112er2p3_dEta_Max1p6 : dist{JET112[JET-ETA_2p3],JET112[JET-ETA_2p3]}[DETA_MAX_1p6]
l1_double_jet112er2p3_d_eta_max1p6 <= calo_calo_correlation_7041035331710545453;
algo(68) <= l1_double_jet112er2p3_d_eta_max1p6;

-- 265 L1_IsoTau40er_ETMHF90 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETMHF90
l1_iso_tau40er_etmhf90 <= single_tau_12210388642533153582 and single_etmhf_306372248968368;
algo(51) <= l1_iso_tau40er_etmhf90;

-- 266 L1_IsoTau40er_ETMHF100 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETMHF100
l1_iso_tau40er_etmhf100 <= single_tau_12210388642533153582 and single_etmhf_39215647867820080;
algo(11) <= l1_iso_tau40er_etmhf100;

-- 267 L1_IsoTau40er_ETMHF110 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETMHF110
l1_iso_tau40er_etmhf110 <= single_tau_12210388642533153582 and single_etmhf_39215647867820208;
algo(57) <= l1_iso_tau40er_etmhf110;

-- 268 L1_IsoTau40er_ETMHF120 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETMHF120
l1_iso_tau40er_etmhf120 <= single_tau_12210388642533153582 and single_etmhf_39215647867820336;
algo(23) <= l1_iso_tau40er_etmhf120;

-- 269 L1_Mu22er2p1_IsoTau40er2p1 : MU22[MU-ETA_2p10,MU-QLTY_SNGL] AND TAU40[TAU-ETA_2p13,TAU-ISO_0xE]
l1_mu22er2p1_iso_tau40er2p1 <= single_mu_17494117756195063635 and single_tau_12210388642533153582;
algo(26) <= l1_mu22er2p1_iso_tau40er2p1;

-- 282 L1_DoubleJet_90_30_DoubleJet30_Mass_Min620 : comb{JET90,JET30} AND mass_inv{JET30,JET30}[MASS_MIN_620]
l1_double_jet_90_30_double_jet30_mass_min620 <= double_jet_4162612533456677351 and invariant_mass_2940638391876117895;
algo(72) <= l1_double_jet_90_30_double_jet30_mass_min620;

-- 283 L1_DoubleJet_100_30_DoubleJet30_Mass_Min620 : comb{JET100,JET30} AND mass_inv{JET30,JET30}[MASS_MIN_620]
l1_double_jet_100_30_double_jet30_mass_min620 <= double_jet_16307690244847013269 and invariant_mass_2940638391876117895;
algo(71) <= l1_double_jet_100_30_double_jet30_mass_min620;

-- 292 L1_DoubleJet35_rmovlp_IsoTau45_Mass_Min450 : mass_inv_orm{JET35,JET35,TAU45[TAU-ISO_0xE]}[MASS_MIN_450,ORMDR_0p2]
l1_double_jet35_rmovlp_iso_tau45_mass_min450 <= invariant_mass_ov_rm_10967205787862279205;
algo(76) <= l1_double_jet35_rmovlp_iso_tau45_mass_min450;

-- 315 L1_Mu6_HTT240er : MU6[MU-QLTY_SNGL] AND HTT240
l1_mu6_htt240er <= single_mu_14769293122775847365 and single_htt_2496626727472;
algo(59) <= l1_mu6_htt240er;

-- 316 L1_Mu6_HTT250er : MU6[MU-QLTY_SNGL] AND HTT250
l1_mu6_htt250er <= single_mu_14769293122775847365 and single_htt_2496626727600;
algo(47) <= l1_mu6_htt250er;

-- 323 L1_DoubleMu3_SQ_ETMHF40_Jet60_OR_DoubleJet30 : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND ETMHF40 AND (comb{JET30,JET30} OR JET60)
l1_double_mu3_sq_etmhf40_jet60_or_double_jet30 <= double_mu_14585786515326686015 and single_etmhf_306372248967728 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(35) <= l1_double_mu3_sq_etmhf40_jet60_or_double_jet30;

-- 324 L1_DoubleMu3_SQ_ETMHF50_Jet60_OR_DoubleJet30 : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND ETMHF50 AND (comb{JET30,JET30} OR JET60)
l1_double_mu3_sq_etmhf50_jet60_or_double_jet30 <= double_mu_14585786515326686015 and single_etmhf_306372248967856 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(45) <= l1_double_mu3_sq_etmhf50_jet60_or_double_jet30;

-- 325 L1_DoubleMu3_SQ_ETMHF60_Jet60_OR_DoubleJet30 : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND ETMHF60 AND (comb{JET30,JET30} OR JET60)
l1_double_mu3_sq_etmhf60_jet60_or_double_jet30 <= double_mu_14585786515326686015 and single_etmhf_306372248967984 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(36) <= l1_double_mu3_sq_etmhf60_jet60_or_double_jet30;

-- 326 L1_DoubleMu3_SQ_ETMHF70_Jet60_OR_DoubleJet30 : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND ETMHF70 AND (comb{JET30,JET30} OR JET60)
l1_double_mu3_sq_etmhf70_jet60_or_double_jet30 <= double_mu_14585786515326686015 and single_etmhf_306372248968112 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(27) <= l1_double_mu3_sq_etmhf70_jet60_or_double_jet30;

-- 327 L1_DoubleMu3_SQ_ETMHF80_Jet60_OR_DoubleJet30 : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND ETMHF80 AND (comb{JET30,JET30} OR JET60)
l1_double_mu3_sq_etmhf80_jet60_or_double_jet30 <= double_mu_14585786515326686015 and single_etmhf_306372248968240 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(52) <= l1_double_mu3_sq_etmhf80_jet60_or_double_jet30;

-- 328 L1_DoubleMu3_SQ_HTT100er : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND HTT100
l1_double_mu3_sq_htt100er <= double_mu_14585786515326686015 and single_htt_2496626710576;
algo(62) <= l1_double_mu3_sq_htt100er;

-- 329 L1_DoubleMu3_SQ_HTT200er : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND HTT200
l1_double_mu3_sq_htt200er <= double_mu_14585786515326686015 and single_htt_2496626726960;
algo(17) <= l1_double_mu3_sq_htt200er;

-- 330 L1_DoubleMu3_SQ_HTT220er : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND HTT220
l1_double_mu3_sq_htt220er <= double_mu_14585786515326686015 and single_htt_2496626727216;
algo(32) <= l1_double_mu3_sq_htt220er;

-- 331 L1_DoubleMu3_SQ_HTT240er : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND HTT240
l1_double_mu3_sq_htt240er <= double_mu_14585786515326686015 and single_htt_2496626727472;
algo(33) <= l1_double_mu3_sq_htt240er;

-- 336 L1_DoubleEG6_HTT240er : comb{EG6,EG6} AND HTT240
l1_double_eg6_htt240er <= double_eg_8902241742241126126 and single_htt_2496626727472;
algo(18) <= l1_double_eg6_htt240er;

-- 337 L1_DoubleEG6_HTT250er : comb{EG6,EG6} AND HTT250
l1_double_eg6_htt250er <= double_eg_8902241742241126126 and single_htt_2496626727600;
algo(42) <= l1_double_eg6_htt250er;

-- 338 L1_DoubleEG6_HTT270er : comb{EG6,EG6} AND HTT270
l1_double_eg6_htt270er <= double_eg_8902241742241126126 and single_htt_2496626727856;
algo(60) <= l1_double_eg6_htt270er;

-- 339 L1_DoubleEG6_HTT300er : comb{EG6,EG6} AND HTT300
l1_double_eg6_htt300er <= double_eg_8902241742241126126 and single_htt_2496626743344;
algo(40) <= l1_double_eg6_htt300er;

-- 340 L1_DoubleEG8er2p6_HTT255er : comb{EG8[EG-ETA_2p61],EG8[EG-ETA_2p61]} AND HTT255
l1_double_eg8er2p6_htt255er <= double_eg_13299746526186732683 and single_htt_2496626727605;
algo(34) <= l1_double_eg8er2p6_htt255er;

-- 341 L1_DoubleEG8er2p6_HTT270er : comb{EG8[EG-ETA_2p61],EG8[EG-ETA_2p61]} AND HTT270
l1_double_eg8er2p6_htt270er <= double_eg_13299746526186732683 and single_htt_2496626727856;
algo(58) <= l1_double_eg8er2p6_htt270er;

-- 342 L1_DoubleEG8er2p6_HTT300er : comb{EG8[EG-ETA_2p61],EG8[EG-ETA_2p61]} AND HTT300
l1_double_eg8er2p6_htt300er <= double_eg_13299746526186732683 and single_htt_2496626743344;
algo(10) <= l1_double_eg8er2p6_htt300er;

-- 349 L1_ETMHF100_Jet60_OR_DoubleJet30 : ETMHF100 AND (comb{JET30,JET30} OR JET60)
l1_etmhf100_jet60_or_double_jet30 <= single_etmhf_39215647867820080 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(67) <= l1_etmhf100_jet60_or_double_jet30;

-- 357 L1_ETMHF100_Jet60_OR_DiJet30woTT28 : ETMHF100 AND (comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_CENNoTT28]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_FWD_NEG],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_NEG]} OR JET60)
l1_etmhf100_jet60_or_di_jet30wo_tt28 <= single_etmhf_39215647867820080 and ( double_jet_10840719965249128790 or double_jet_7821119013284253287 or double_jet_7821119012726214247 or double_jet_3851467703875127396 or double_jet_17504692923644168291 or double_jet_3851467703317088356 or single_jet_20010310448 );
algo(41) <= l1_etmhf100_jet60_or_di_jet30wo_tt28;

-- 358 L1_ETMHF110_Jet60_OR_DiJet30woTT28 : ETMHF110 AND (comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_CENNoTT28]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_FWD_NEG],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_NEG]} OR JET60)
l1_etmhf110_jet60_or_di_jet30wo_tt28 <= single_etmhf_39215647867820208 and ( double_jet_10840719965249128790 or double_jet_7821119013284253287 or double_jet_7821119012726214247 or double_jet_3851467703875127396 or double_jet_17504692923644168291 or double_jet_3851467703317088356 or single_jet_20010310448 );
algo(63) <= l1_etmhf110_jet60_or_di_jet30wo_tt28;

-- 359 L1_ETMHF120_Jet60_OR_DiJet30woTT28 : ETMHF120 AND (comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_CENNoTT28]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_FWD_NEG],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_NEG]} OR JET60)
l1_etmhf120_jet60_or_di_jet30wo_tt28 <= single_etmhf_39215647867820336 and ( double_jet_10840719965249128790 or double_jet_7821119013284253287 or double_jet_7821119012726214247 or double_jet_3851467703875127396 or double_jet_17504692923644168291 or double_jet_3851467703317088356 or single_jet_20010310448 );
algo(16) <= l1_etmhf120_jet60_or_di_jet30wo_tt28;

-- 360 L1_ETMHF70_Jet90_OR_DoubleJet45_OR_TripleJet30 : ETMHF70 AND (comb{JET30,JET30,JET30} OR comb{JET45,JET45} OR JET90)
l1_etmhf70_jet90_or_double_jet45_or_triple_jet30 <= single_etmhf_306372248968112 and ( triple_jet_1776207310752122438 or double_jet_3805139313034161255 or single_jet_20010310832 );
algo(28) <= l1_etmhf70_jet90_or_double_jet45_or_triple_jet30;

-- 361 L1_ETMHF80_Jet90_OR_DoubleJet45_OR_TripleJet30 : ETMHF80 AND (comb{JET30,JET30,JET30} OR comb{JET45,JET45} OR JET90)
l1_etmhf80_jet90_or_double_jet45_or_triple_jet30 <= single_etmhf_306372248968240 and ( triple_jet_1776207310752122438 or double_jet_3805139313034161255 or single_jet_20010310832 );
algo(56) <= l1_etmhf80_jet90_or_double_jet45_or_triple_jet30;

-- 362 L1_ETMHF90_Jet90_OR_DoubleJet45_OR_TripleJet30 : ETMHF90 AND (comb{JET30,JET30,JET30} OR comb{JET45,JET45} OR JET90)
l1_etmhf90_jet90_or_double_jet45_or_triple_jet30 <= single_etmhf_306372248968368 and ( triple_jet_1776207310752122438 or double_jet_3805139313034161255 or single_jet_20010310832 );
algo(12) <= l1_etmhf90_jet90_or_double_jet45_or_triple_jet30;

-- 363 L1_ETMHF100_Jet90_OR_DoubleJet45_OR_TripleJet30 : ETMHF100 AND (comb{JET30,JET30,JET30} OR comb{JET45,JET45} OR JET90)
l1_etmhf100_jet90_or_double_jet45_or_triple_jet30 <= single_etmhf_39215647867820080 and ( triple_jet_1776207310752122438 or double_jet_3805139313034161255 or single_jet_20010310832 );
algo(14) <= l1_etmhf100_jet90_or_double_jet45_or_triple_jet30;

-- 364 L1_ETMHF110_Jet90_OR_DoubleJet45_OR_TripleJet30 : ETMHF110 AND (comb{JET30,JET30,JET30} OR comb{JET45,JET45} OR JET90)
l1_etmhf110_jet90_or_double_jet45_or_triple_jet30 <= single_etmhf_39215647867820208 and ( triple_jet_1776207310752122438 or double_jet_3805139313034161255 or single_jet_20010310832 );
algo(66) <= l1_etmhf110_jet90_or_double_jet45_or_triple_jet30;

-- 366 L1_ETMHF80_HTT60er : ETMHF80 AND HTT60
l1_etmhf80_htt60er <= single_etmhf_306372248968240 and single_htt_19504896816;
algo(38) <= l1_etmhf80_htt60er;

-- 367 L1_ETMHF90_HTT60er : ETMHF90 AND HTT60
l1_etmhf90_htt60er <= single_etmhf_306372248968368 and single_htt_19504896816;
algo(54) <= l1_etmhf90_htt60er;

-- 368 L1_ETMHF100_HTT60er : ETMHF100 AND HTT60
l1_etmhf100_htt60er <= single_etmhf_39215647867820080 and single_htt_19504896816;
algo(25) <= l1_etmhf100_htt60er;

-- 369 L1_ETMHF110_HTT60er : ETMHF110 AND HTT60
l1_etmhf110_htt60er <= single_etmhf_39215647867820208 and single_htt_19504896816;
algo(43) <= l1_etmhf110_htt60er;

-- 370 L1_ETMHF120_HTT60er : ETMHF120 AND HTT60
l1_etmhf120_htt60er <= single_etmhf_39215647867820336 and single_htt_19504896816;
algo(61) <= l1_etmhf120_htt60er;

-- 377 L1_DoubleMu4_SQ_OS_dR_Max1p2 : dist{MU4[MU-QLTY_SNGL],MU4[MU-QLTY_SNGL]}[DR_1p2,CHGCOR_OS]
l1_double_mu4_sq_os_d_r_max1p2 <= muon_muon_correlation_16784489743460462578;
algo(69) <= l1_double_mu4_sq_os_d_r_max1p2;

-- 405 L1_Mu6_DoubleEG17 : MU6[MU-QLTY_SNGL] AND comb{EG17,EG17}
l1_mu6_double_eg17 <= single_mu_14769293122775847365 and double_eg_14367290900143979231;
algo(31) <= l1_mu6_double_eg17;

-- 428 L1_EG27er2p1_HTT200er : EG27[EG-ETA_2p13] AND HTT200
l1_eg27er2p1_htt200er <= single_eg_14262501742930627507 and single_htt_2496626726960;
algo(13) <= l1_eg27er2p1_htt200er;

-- 439 L1_DoubleEG6_HTT255er : comb{EG6,EG6} AND HTT255
l1_double_eg6_htt255er <= double_eg_8902241742241126126 and single_htt_2496626727605;
algo(24) <= l1_double_eg6_htt255er;

-- 442 L1_Mu6_DoubleEG10 : MU6[MU-QLTY_SNGL] AND comb{EG10,EG10}
l1_mu6_double_eg10 <= single_mu_14769293122775847365 and double_eg_14367260113818400607;
algo(37) <= l1_mu6_double_eg10;

-- 444 L1_Mu3_Jet60er2p7_dEta_Max0p4_dPhi_Max0p4 : dist{MU3[MU-QLTY_SNGL],JET60[JET-ETA_2p7]}[DETA_MAX_0p4,DPHI_MAX_0p4]
l1_mu3_jet60er2p7_d_eta_max0p4_d_phi_max0p4 <= calo_muon_correlation_16240389187803176961;
algo(75) <= l1_mu3_jet60er2p7_d_eta_max0p4_d_phi_max0p4;

-- 471 L1_BPTX_BeamGas_B1_VME : EXT_BPTX_BeamGas_B1_VME
l1_bptx_beam_gas_b1_vme <= single_ext_9960888781174681113;
algo(0) <= l1_bptx_beam_gas_b1_vme;

-- 478 L1_UnpairedBunchBptxPlus : EXT_BPTX_B1NotB2_VME
l1_unpaired_bunch_bptx_plus <= single_ext_17960169865075597331;
algo(3) <= l1_unpaired_bunch_bptx_plus;

-- 484 L1_FirstCollisionInOrbit : EXT_BPTX_FirstCollidingBunch_VME
l1_first_collision_in_orbit <= single_ext_4108951444235007726;
algo(2) <= l1_first_collision_in_orbit;

-- 486 L1_BPTX_OR_Ref4_VME : EXT_BPTX_OR_Ref4_VME
l1_bptx_or_ref4_vme <= single_ext_9945386645006164836;
algo(1) <= l1_bptx_or_ref4_vme;

-- 504 L1_CDC_SingleMu_3_er1p2_TOP120_DPHI2p618_3p142 : dist{MU3-1[MU-ETA_1p2,MU-PHI_TOP120,MU-QLTY_SNGL],MU3[MU-ETA_1p2,MU-PHI_BOTTOM120,MU-QLTY_SNGL]}[DPHI_DPHI_MIN2p618_MAX3p142]
l1_cdc_single_mu_3_er1p2_top120_dphi2p618_3p142 <= muon_muon_correlation_5013507948943010765;
algo(70) <= l1_cdc_single_mu_3_er1p2_top120_dphi2p618_3p142;

-- HB 2018-03-02: hidden algos
-- Instantiations of conditions
quad_eg_11534701996898131025_i: entity work.calo_condition_v6_quad
    generic map(0, 11, 0, 11, 0, 11, 0, 11,
        4, true, EG_TYPE,
        (X"0014", X"0014", X"0014", X"0014"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0,
        quad_eg_11534701996898131025);


quad_eg_11535273742944591185_i: entity work.calo_condition_v6_quad
    generic map(0, 11, 0, 11, 0, 11, 0, 11,
        4, true, EG_TYPE,
        (X"0018", X"0018", X"0018", X"0018"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0,
        quad_eg_11535273742944591185);


quad_eg_11536131362014281425_i: entity work.calo_condition_v6_quad
    generic map(0, 11, 0, 11, 0, 11, 0, 11,
        4, true, EG_TYPE,
        (X"001E", X"001E", X"001E", X"001E"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0,
        quad_eg_11536131362014281425);


quad_eg_2163602249882847955_i: entity work.calo_condition_v6_quad
    generic map(0, 11, 0, 11, 0, 11, 0, 11,
        4, true, EG_TYPE,
        (X"000A", X"000A", X"000A", X"000A"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0,
        quad_eg_2163602249882847955);


quad_tau_12421088949737603255_i: entity work.calo_condition_v6_quad
    generic map(0, 11, 0, 11, 0, 11, 0, 11,
        4, true, TAU_TYPE,
        (X"000A", X"000A", X"000A", X"000A"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0,
        quad_tau_12421088949737603255);


quad_tau_15497969416798340400_i: entity work.calo_condition_v6_quad
    generic map(0, 11, 0, 11, 0, 11, 0, 11,
        4, true, TAU_TYPE,
        (X"0014", X"0014", X"0014", X"0014"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0,
        quad_tau_15497969416798340400);


quad_tau_15499095316973618800_i: entity work.calo_condition_v6_quad
    generic map(0, 11, 0, 11, 0, 11, 0, 11,
        4, true, TAU_TYPE,
        (X"0018", X"0018", X"0018", X"0018"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0,
        quad_tau_15499095316973618800);



-- Instantiations of algorithms

-- 124 L1_QuadEG15 : comb{EG15,EG15,EG15,EG15}
l1_quad_eg15 <= quad_eg_11536131362014281425;
algo(79) <= l1_quad_eg15;

-- 123 L1_QuadEG12 : comb{EG12,EG12,EG12,EG12}
l1_quad_eg12 <= quad_eg_11535273742944591185;
algo(78) <= l1_quad_eg12;

-- 121 L1_QuadEG10 : comb{EG10,EG10,EG10,EG10}
l1_quad_eg10 <= quad_eg_11534701996898131025;
algo(77) <= l1_quad_eg10;

-- 120 L1_QuadEG5 : comb{EG5,EG5,EG5,EG5}
l1_quad_eg5 <= quad_eg_2163602249882847955;
algo(80) <= l1_quad_eg5;

-- 128 L1_QuadTau10 : comb{TAU10,TAU10,TAU10,TAU10}
l1_quad_tau10 <= quad_tau_15497969416798340400;
algo(81) <= l1_quad_tau10;

-- 126 L1_QuadTau5 : comb{TAU5,TAU5,TAU5,TAU5}
l1_quad_tau5 <= quad_tau_12421088949737603255;
algo(83) <= l1_quad_tau5;

-- 130 L1_QuadTau12 : comb{TAU12,TAU12,TAU12,TAU12}
l1_quad_tau12 <= quad_tau_15499095316973618800;
algo(82) <= l1_quad_tau12;

-- ========================================================