-- ========================================================
-- from VHDL producer:

-- Module ID: 1

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_v3_test_correlation_conditions_v3_test

-- Unique ID of L1 Trigger Menu:
-- cd1736f5-2c73-49e7-bb57-ba14e8ac44cd

-- Unique ID of firmware implementation:
-- bafbf2d2-d2a5-4d4e-a6f8-e391e3ff31e5

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.1.1

-- External condition assignment
    single_ext_10333571492674155900 <= ext_cond_bx_0(8); -- single_ext_10333571492674155900
    single_ext_17417807877912804092 <= ext_cond_bx_0(15); -- single_ext_17417807877912804092
    single_ext_6102798787913291629 <= ext_cond_bx_0(5); -- single_ext_6102798787913291629
    single_ext_6102798788181727085 <= ext_cond_bx_0(6); -- single_ext_6102798788181727085
    single_ext_8736797827952254492 <= ext_cond_bx_0(14); -- single_ext_8736797827952254492
-- Instantiations of muon charge correlations - only once for a certain Bx combination, if there is at least one DoubleMuon, TripleMuon, QuadMuon condition
-- or muon-muon correlation condition.
    muon_charge_correlations_bx_0_bx_p1_i: entity work.muon_charge_correlations
        port map(mu_bx_0, mu_bx_p1,
            ls_charcorr_double_bx_0_bx_p1, os_charcorr_double_bx_0_bx_p1,
            ls_charcorr_triple_bx_0_bx_p1, os_charcorr_triple_bx_0_bx_p1,
            ls_charcorr_quad_bx_0_bx_p1, os_charcorr_quad_bx_0_bx_p1);
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
    eg_data_bx_0_l: for i in 0 to NR_EG_OBJECTS-1 generate
        eg_pt_vector_bx_0(i)(EG_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(EG_PT_LUT(CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.et_high downto D_S_I_EG_V2.et_low))), EG_PT_VECTOR_WIDTH);
        eg_eta_integer_bx_0(i) <= CONV_INTEGER(signed(eg_bx_0(i)(D_S_I_EG_V2.eta_high downto D_S_I_EG_V2.eta_low)));
        eg_phi_integer_bx_0(i) <= CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.phi_high downto D_S_I_EG_V2.phi_low));
        eg_cos_phi_bx_0(i) <= CALO_COS_PHI_LUT(CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.phi_high downto D_S_I_EG_V2.phi_low)));
        eg_sin_phi_bx_0(i) <= CALO_SIN_PHI_LUT(CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.phi_high downto D_S_I_EG_V2.phi_low)));
        conv_eg_cos_phi_bx_0(i) <= MUON_COS_PHI_LUT(eg_phi_conv_2_muon_phi_integer_bx_0(i));
        conv_eg_sin_phi_bx_0(i) <= MUON_SIN_PHI_LUT(eg_phi_conv_2_muon_phi_integer_bx_0(i));
    end generate eg_data_bx_0_l;
    mu_data_bx_p1_l: for i in 0 to NR_MU_OBJECTS-1 generate
        mu_pt_vector_bx_p1(i)(MU_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(MU_PT_LUT(CONV_INTEGER(mu_bx_p1(i)(D_S_I_MU_V2.pt_high downto D_S_I_MU_V2.pt_low))), MU_PT_VECTOR_WIDTH);
        mu_eta_integer_bx_p1(i) <= CONV_INTEGER(signed(mu_bx_p1(i)(D_S_I_MU_V2.eta_high downto D_S_I_MU_V2.eta_low)));
        mu_phi_integer_bx_p1(i) <= CONV_INTEGER(mu_bx_p1(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low));
        mu_cos_phi_bx_p1(i) <= MUON_COS_PHI_LUT(CONV_INTEGER(mu_bx_p1(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low)));
        mu_sin_phi_bx_p1(i) <= MUON_SIN_PHI_LUT(CONV_INTEGER(mu_bx_p1(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low)));
    end generate mu_data_bx_p1_l;
    tau_data_bx_0_l: for i in 0 to NR_TAU_OBJECTS-1 generate
        tau_pt_vector_bx_0(i)(TAU_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(TAU_PT_LUT(CONV_INTEGER(tau_bx_0(i)(D_S_I_TAU_V2.et_high downto D_S_I_TAU_V2.et_low))), TAU_PT_VECTOR_WIDTH);
        tau_eta_integer_bx_0(i) <= CONV_INTEGER(signed(tau_bx_0(i)(D_S_I_TAU_V2.eta_high downto D_S_I_TAU_V2.eta_low)));
        tau_phi_integer_bx_0(i) <= CONV_INTEGER(tau_bx_0(i)(D_S_I_TAU_V2.phi_high downto D_S_I_TAU_V2.phi_low));
        tau_cos_phi_bx_0(i) <= CALO_COS_PHI_LUT(CONV_INTEGER(tau_bx_0(i)(D_S_I_TAU_V2.phi_high downto D_S_I_TAU_V2.phi_low)));
        tau_sin_phi_bx_0(i) <= CALO_SIN_PHI_LUT(CONV_INTEGER(tau_bx_0(i)(D_S_I_TAU_V2.phi_high downto D_S_I_TAU_V2.phi_low)));
        conv_tau_cos_phi_bx_0(i) <= MUON_COS_PHI_LUT(tau_phi_conv_2_muon_phi_integer_bx_0(i));
        conv_tau_sin_phi_bx_0(i) <= MUON_SIN_PHI_LUT(tau_phi_conv_2_muon_phi_integer_bx_0(i));
    end generate tau_data_bx_0_l;
    mu_data_bx_m1_l: for i in 0 to NR_MU_OBJECTS-1 generate
        mu_pt_vector_bx_m1(i)(MU_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(MU_PT_LUT(CONV_INTEGER(mu_bx_m1(i)(D_S_I_MU_V2.pt_high downto D_S_I_MU_V2.pt_low))), MU_PT_VECTOR_WIDTH);
        mu_eta_integer_bx_m1(i) <= CONV_INTEGER(signed(mu_bx_m1(i)(D_S_I_MU_V2.eta_high downto D_S_I_MU_V2.eta_low)));
        mu_phi_integer_bx_m1(i) <= CONV_INTEGER(mu_bx_m1(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low));
        mu_cos_phi_bx_m1(i) <= MUON_COS_PHI_LUT(CONV_INTEGER(mu_bx_m1(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low)));
        mu_sin_phi_bx_m1(i) <= MUON_SIN_PHI_LUT(CONV_INTEGER(mu_bx_m1(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low)));
    end generate mu_data_bx_m1_l;
    jet_data_bx_0_l: for i in 0 to NR_JET_OBJECTS-1 generate
        jet_pt_vector_bx_0(i)(JET_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(JET_PT_LUT(CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.et_high downto D_S_I_JET_V2.et_low))), JET_PT_VECTOR_WIDTH);
        jet_eta_integer_bx_0(i) <= CONV_INTEGER(signed(jet_bx_0(i)(D_S_I_JET_V2.eta_high downto D_S_I_JET_V2.eta_low)));
        jet_phi_integer_bx_0(i) <= CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.phi_high downto D_S_I_JET_V2.phi_low));
        jet_cos_phi_bx_0(i) <= CALO_COS_PHI_LUT(CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.phi_high downto D_S_I_JET_V2.phi_low)));
        jet_sin_phi_bx_0(i) <= CALO_SIN_PHI_LUT(CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.phi_high downto D_S_I_JET_V2.phi_low)));
        conv_jet_cos_phi_bx_0(i) <= MUON_COS_PHI_LUT(jet_phi_conv_2_muon_phi_integer_bx_0(i));
        conv_jet_sin_phi_bx_0(i) <= MUON_SIN_PHI_LUT(jet_phi_conv_2_muon_phi_integer_bx_0(i));
    end generate jet_data_bx_0_l;

-- Instantiations of differences for correlation conditions (used for DETA, DPHI, DR, mass and b_tagging) - once for correlation conditions with two ObjectTypes in certain Bxs
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
    diff_mu_mu_eta_bx_0_bx_p1_i: entity work.sub_eta_integer_obj_vs_obj
        generic map(NR_MU_OBJECTS, NR_MU_OBJECTS)
        port map(mu_eta_integer_bx_0, mu_eta_integer_bx_p1, diff_mu_mu_bx_0_bx_p1_eta_integer);
    diff_mu_mu_phi_bx_0_bx_p1_i: entity work.sub_phi_integer_obj_vs_obj
        generic map(NR_MU_OBJECTS, NR_MU_OBJECTS, MUON_PHI_HALF_RANGE_BINS)
        port map(mu_phi_integer_bx_0, mu_phi_integer_bx_p1, diff_mu_mu_bx_0_bx_p1_phi_integer);
    mu_mu_bx_0_bx_p1_l1: for i in 0 to NR_MU_OBJECTS-1 generate
        mu_mu_bx_0_bx_p1_l2: for j in 0 to NR_MU_OBJECTS-1 generate
            diff_mu_mu_bx_0_bx_p1_eta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_DIFF_ETA_LUT(diff_mu_mu_bx_0_bx_p1_eta_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
            diff_mu_mu_bx_0_bx_p1_phi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_DIFF_PHI_LUT(diff_mu_mu_bx_0_bx_p1_phi_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
        end generate mu_mu_bx_0_bx_p1_l2;
    end generate mu_mu_bx_0_bx_p1_l1;
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
    eg_tau_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_EG_OBJECTS-1 generate
        eg_tau_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_TAU_OBJECTS-1 generate
            eg_tau_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_TAU_COSH_DETA_LUT(diff_eg_tau_bx_0_bx_0_eta_integer(i,j)), EG_TAU_COSH_COS_VECTOR_WIDTH);
            eg_tau_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_TAU_COS_DPHI_LUT(diff_eg_tau_bx_0_bx_0_phi_integer(i,j)), EG_TAU_COSH_COS_VECTOR_WIDTH);
        end generate eg_tau_bx_0_bx_0_cosh_cos_l2;
    end generate eg_tau_bx_0_bx_0_cosh_cos_l1;
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
    jet_jet_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_JET_OBJECTS-1 generate
        jet_jet_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_JET_OBJECTS-1 generate
            jet_jet_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_JET_COSH_DETA_LUT(diff_jet_jet_bx_0_bx_0_eta_integer(i,j)), JET_JET_COSH_COS_VECTOR_WIDTH);
            jet_jet_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_JET_COS_DPHI_LUT(diff_jet_jet_bx_0_bx_0_phi_integer(i,j)), JET_JET_COSH_COS_VECTOR_WIDTH);
        end generate jet_jet_bx_0_bx_0_cosh_cos_l2;
    end generate jet_jet_bx_0_bx_0_cosh_cos_l1;
    mu_mu_bx_0_bx_p1_cosh_cos_l1: for i in 0 to NR_MU_OBJECTS-1 generate
        mu_mu_bx_0_bx_p1_cosh_cos_l2: for j in 0 to NR_MU_OBJECTS-1 generate
            mu_mu_bx_0_bx_p1_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_COSH_DETA_LUT(diff_mu_mu_bx_0_bx_p1_eta_integer(i,j)), MU_MU_COSH_COS_VECTOR_WIDTH);
            mu_mu_bx_0_bx_p1_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_COS_DPHI_LUT(diff_mu_mu_bx_0_bx_p1_phi_integer(i,j)), MU_MU_COSH_COS_VECTOR_WIDTH);
        end generate mu_mu_bx_0_bx_p1_cosh_cos_l2;
    end generate mu_mu_bx_0_bx_p1_cosh_cos_l1;
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
double_eg_13782406706523981474_i: entity work.calo_conditions_v5
    generic map(0, 11,
        2, true, EG_TYPE,
        (X"0030", X"0014", X"0000", X"0000"),
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
        double_eg_13782406706523981474);


double_eg_14367282104050956127_i: entity work.calo_conditions_v5
    generic map(0, 11,
        2, true, EG_TYPE,
        (X"001E", X"0014", X"0000", X"0000"),
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
        double_eg_14367282104050956127);


double_eg_14367831859864844383_i: entity work.calo_conditions_v5
    generic map(0, 11,
        2, true, EG_TYPE,
        (X"002C", X"0018", X"0000", X"0000"),
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
        double_eg_14367831859864844383);


double_eg_14367845054004377695_i: entity work.calo_conditions_v5
    generic map(0, 11,
        2, true, EG_TYPE,
        (X"0032", X"0018", X"0000", X"0000"),
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
        double_eg_14367845054004377695);


double_eg_2355036583129339571_i: entity work.calo_conditions_v5
    generic map(0, 11,
        2, true, EG_TYPE,
        (X"002C", X"002C", X"0000", X"0000"),
        (false, false, true, true),
        (X"0030", X"0030", X"0000", X"0000"), (X"00CF", X"00CF", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"C", X"C", X"F", X"F"),
        false
    )
    port map(lhc_clk, eg_bx_0,
        double_eg_2355036583129339571);


double_jet_15939468912252268642_i: entity work.calo_conditions_v5
    generic map(0, 11,
        2, true, JET_TYPE,
        (X"012C", X"012C", X"0000", X"0000"),
        (false, false, true, true),
        (X"0044", X"0044", X"0000", X"0000"), (X"00BB", X"00BB", X"0000", X"0000"),
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
        double_jet_15939468912252268642);


double_tau_14808338296613976830_i: entity work.calo_conditions_v5
    generic map(0, 11,
        2, true, TAU_TYPE,
        (X"004C", X"004C", X"0000", X"0000"),
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
        double_tau_14808338296613976830);


double_tau_3279123247861152510_i: entity work.calo_conditions_v5
    generic map(0, 11,
        2, true, TAU_TYPE,
        (X"0042", X"0042", X"0000", X"0000"),
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
        double_tau_3279123247861152510);


quad_jet_2899845767245260980_i: entity work.calo_conditions_v5
    generic map(0, 11,
        4, true, JET_TYPE,
        (X"0078", X"0078", X"0078", X"0078"),
        (false, false, false, false),
        (X"0044", X"0044", X"0044", X"0044"), (X"00BB", X"00BB", X"00BB", X"00BB"),
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
        quad_jet_2899845767245260980);


single_eg_12507428088042853184_i: entity work.calo_conditions_v5
    generic map(0, 11,
        1, true, EG_TYPE,
        (X"000C", X"0000", X"0000", X"0000"),
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
        single_eg_12507428088042853184);


single_eg_12507579852048143168_i: entity work.calo_conditions_v5
    generic map(0, 11,
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
        (X"C", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, eg_bx_0,
        single_eg_12507579852048143168);


single_eg_12507579852056531776_i: entity work.calo_conditions_v5
    generic map(0, 11,
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
        (X"C", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, eg_bx_0,
        single_eg_12507579852056531776);


single_eg_12507579852182360896_i: entity work.calo_conditions_v5
    generic map(0, 11,
        1, true, EG_TYPE,
        (X"0028", X"0000", X"0000", X"0000"),
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
        single_eg_12507579852182360896);


single_eg_12507579852185506624_i: entity work.calo_conditions_v5
    generic map(0, 11,
        1, true, EG_TYPE,
        (X"002E", X"0000", X"0000", X"0000"),
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
        single_eg_12507579852185506624);


single_eg_145873072_i: entity work.calo_conditions_v5
    generic map(0, 11,
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
        single_eg_145873072);


single_eg_145873074_i: entity work.calo_conditions_v5
    generic map(0, 11,
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
        single_eg_145873074);


single_eg_145873077_i: entity work.calo_conditions_v5
    generic map(0, 11,
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
        single_eg_145873077);


single_eg_145873079_i: entity work.calo_conditions_v5
    generic map(0, 11,
        1, true, EG_TYPE,
        (X"0022", X"0000", X"0000", X"0000"),
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
        single_eg_145873079);


single_eg_145873200_i: entity work.calo_conditions_v5
    generic map(0, 11,
        1, true, EG_TYPE,
        (X"0028", X"0000", X"0000", X"0000"),
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
        single_eg_145873200);


single_eg_145873203_i: entity work.calo_conditions_v5
    generic map(0, 11,
        1, true, EG_TYPE,
        (X"002E", X"0000", X"0000", X"0000"),
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
        single_eg_145873203);


single_jet_1950256523785076171_i: entity work.calo_conditions_v5
    generic map(0, 11,
        1, true, JET_TYPE,
        (X"00F0", X"0000", X"0000", X"0000"),
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
        single_jet_1950256523785076171);


single_jet_1950256523789435851_i: entity work.calo_conditions_v5
    generic map(0, 11,
        1, true, JET_TYPE,
        (X"00F0", X"0000", X"0000", X"0000"),
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
        single_jet_1950256523789435851);


single_tau_16608830939767017288_i: entity work.calo_conditions_v5
    generic map(0, 11,
        1, true, TAU_TYPE,
        (X"0028", X"0000", X"0000", X"0000"),
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
        single_tau_16608830939767017288);


single_tau_16608831008486494024_i: entity work.calo_conditions_v5
    generic map(0, 11,
        1, true, TAU_TYPE,
        (X"0030", X"0000", X"0000", X"0000"),
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
        single_tau_16608831008486494024);


single_tau_218368042610145022_i: entity work.calo_conditions_v5
    generic map(0, 11,
        1, true, TAU_TYPE,
        (X"0034", X"0000", X"0000", X"0000"),
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
        single_tau_218368042610145022);


single_tau_236382441119627006_i: entity work.calo_conditions_v5
    generic map(0, 11,
        1, true, TAU_TYPE,
        (X"0036", X"0000", X"0000", X"0000"),
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
        single_tau_236382441119627006);


triple_eg_4430569450691365292_i: entity work.calo_conditions_v5
    generic map(0, 11,
        3, true, EG_TYPE,
        (X"001C", X"0014", X"0010", X"0000"),
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
        triple_eg_4430569450691365292);


double_mu_13627348644483379947_i: entity work.muon_conditions_v5
    generic map(0, 7,
        2, true,
        (X"000A", X"000A", X"0000", X"0000"),
        (false, false, true, true),
        (X"00B8", X"00B8", X"0000", X"0000"), (X"0148", X"0148", X"0000", X"0000"),
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
        double_mu_13627348644483379947,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


double_mu_14585778268989477695_i: entity work.muon_conditions_v5
    generic map(0, 7,
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
        (X"F000", X"F000", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        double_mu_14585778268989477695,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


double_mu_16961154507842811908_i: entity work.muon_conditions_v5
    generic map(0, 7,
        2, true,
        (X"0017", X"0009", X"0000", X"0000"),
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
        double_mu_16961154507842811908,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


double_mu_16961158905889323012_i: entity work.muon_conditions_v5
    generic map(0, 7,
        2, true,
        (X"001F", X"000B", X"0000", X"0000"),
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
        double_mu_16961158905889323012,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


double_mu_2488845469206592112_i: entity work.muon_conditions_v5
    generic map(0, 7,
        2, true,
        (X"002D", X"002D", X"0000", X"0000"),
        (false, false, true, true),
        (X"00C1", X"00C1", X"0000", X"0000"), (X"013F", X"013F", X"0000", X"0000"),
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
        double_mu_2488845469206592112,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


double_mu_3224017188937267724_i: entity work.muon_conditions_v5
    generic map(0, 7,
        2, true,
        (X"0009", X"0009", X"0000", X"0000"),
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
        "os",
        false
    )
    port map(lhc_clk, mu_bx_0,
        double_mu_3224017188937267724,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


double_mu_3246535187074120204_i: entity work.muon_conditions_v5
    generic map(0, 7,
        2, true,
        (X"000B", X"000B", X"0000", X"0000"),
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
        "os",
        false
    )
    port map(lhc_clk, mu_bx_0,
        double_mu_3246535187074120204,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


single_mu_14769293105595978181_i: entity work.muon_conditions_v5
    generic map(0, 7,
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
        single_mu_14769293105595978181);


single_mu_14769293139955716549_i: entity work.muon_conditions_v5
    generic map(0, 7,
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
        single_mu_14769293139955716549);


single_mu_17545683059493081541_i: entity work.muon_conditions_v5
    generic map(0, 7,
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
        single_mu_17545683059493081541);


single_mu_17545685224156598725_i: entity work.muon_conditions_v5
    generic map(0, 7,
        1, true,
        (X"0029", X"0000", X"0000", X"0000"),
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
        single_mu_17545685224156598725);


single_mu_17545685275696206277_i: entity work.muon_conditions_v5
    generic map(0, 7,
        1, true,
        (X"002F", X"0000", X"0000", X"0000"),
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
        single_mu_17545685275696206277);


single_mu_5290897791608380091_i: entity work.muon_conditions_v5
    generic map(0, 7,
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
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        single_mu_5290897791608380091);


single_mu_6225176159725710459_i: entity work.muon_conditions_v5
    generic map(0, 7,
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
        single_mu_6225176159725710459);


single_mu_7069342828816371872_i: entity work.muon_conditions_v5
    generic map(0, 7,
        1, true,
        (X"0019", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0049", X"0000", X"0000", X"0000"), (X"01B7", X"0000", X"0000", X"0000"),
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
        single_mu_7069342828816371872);


single_mu_7145648846602061216_i: entity work.muon_conditions_v5
    generic map(0, 7,
        1, true,
        (X"0021", X"0000", X"0000", X"0000"),
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
        single_mu_7145648846602061216);


single_mu_7181677643621025184_i: entity work.muon_conditions_v5
    generic map(0, 7,
        1, true,
        (X"0025", X"0000", X"0000", X"0000"),
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
        single_mu_7181677643621025184);


single_mu_9343405464758863264_i: entity work.muon_conditions_v5
    generic map(0, 7,
        1, true,
        (X"0029", X"0000", X"0000", X"0000"),
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
        single_mu_9343405464758863264);


triple_mu_3324690130789734431_i: entity work.muon_conditions_v5
    generic map(0, 7,
        3, true,
        (X"000B", X"0007", X"0005", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"F000", X"FFF0", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        triple_mu_3324690130789734431,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


triple_mu_3324691511169731615_i: entity work.muon_conditions_v5
    generic map(0, 7,
        3, true,
        (X"0007", X"0007", X"0007", X"0000"),
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
        triple_mu_3324691511169731615,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


triple_mu_6936497366859389375_i: entity work.muon_conditions_v5
    generic map(0, 7,
        3, true,
        (X"000B", X"0009", X"0006", X"0000"),
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
        triple_mu_6936497366859389375,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


triple_mu_9287399899537551596_i: entity work.muon_conditions_v5
    generic map(0, 7,
        3, true,
        (X"000B", X"0008", X"0006", X"0000"),
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
        triple_mu_9287399899537551596,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


single_etm_18699475632_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"0064",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_18699475632);


single_htt_2496626710832_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"00F0",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626710832);


single_htt_2496626744368_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"02F8",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626744368);


single_htt_2496626760368_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0384",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626760368);


calo_calo_correlation_12099676773019156536_i: entity work.calo_calo_correlation_condition_v3
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
        false, X"0044", X"00BB",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        0.0, 0.0,
        0.0, 0.0,
        139.24, 0.09, DETA_DPHI_VECTOR_WIDTH_ALL, EG_JET_DETA_DPHI_PRECISION,
        0.0, 0.0, EG_JET_MASS_PRECISION,
        EG_PT_VECTOR_WIDTH, JET_PT_VECTOR_WIDTH, EG_JET_COSH_COS_PRECISION, EG_JET_COSH_COS_VECTOR_WIDTH,
        0.0, CALO_SIN_COS_VECTOR_WIDTH, EG_JET_PT_PRECISION, EG_JET_SIN_COS_PRECISION
    )
    port map(lhc_clk, eg_bx_0, jet_bx_0,
        diff_eg_jet_bx_0_bx_0_eta_vector, diff_eg_jet_bx_0_bx_0_phi_vector,
        eg_pt_vector_bx_0, jet_pt_vector_bx_0,
        eg_jet_bx_0_bx_0_cosh_deta_vector, eg_jet_bx_0_bx_0_cos_dphi_vector,
        eg_cos_phi_bx_0, jet_cos_phi_bx_0, eg_sin_phi_bx_0, jet_sin_phi_bx_0,
        calo_calo_correlation_12099676773019156536);

calo_calo_correlation_3813196582576312175_i: entity work.calo_calo_correlation_condition_v3
    generic map(
        true,
        true, false, false, false, 0, false, 
        0, 11, true, JET_TYPE,
        X"0040",
        false, X"0034", X"00CB",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        0, 11, true, JET_TYPE,
        X"0040",
        false, X"0034", X"00CB",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        1.6, 0.0,
        0.0, 0.0,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, JET_JET_DETA_DPHI_PRECISION,
        0.0, 0.0, JET_JET_MASS_PRECISION,
        JET_PT_VECTOR_WIDTH, JET_PT_VECTOR_WIDTH, JET_JET_COSH_COS_PRECISION, JET_JET_COSH_COS_VECTOR_WIDTH,
        0.0, CALO_SIN_COS_VECTOR_WIDTH, JET_JET_PT_PRECISION, JET_JET_SIN_COS_PRECISION
    )
    port map(lhc_clk, jet_bx_0, jet_bx_0,
        diff_jet_jet_bx_0_bx_0_eta_vector, diff_jet_jet_bx_0_bx_0_phi_vector,
        jet_pt_vector_bx_0, jet_pt_vector_bx_0,
        jet_jet_bx_0_bx_0_cosh_deta_vector, jet_jet_bx_0_bx_0_cos_dphi_vector,
        jet_cos_phi_bx_0, jet_cos_phi_bx_0, jet_sin_phi_bx_0, jet_sin_phi_bx_0,
        calo_calo_correlation_3813196582576312175);

calo_calo_correlation_911637241500190160_i: entity work.calo_calo_correlation_condition_v3
    generic map(
        true,
        false, false, true, false, 0, false, 
        0, 11, true, EG_TYPE,
        X"0024",
        false, X"0030", X"00CF",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"C",
        0, 11, true, TAU_TYPE,
        X"0030",
        false, X"0030", X"00CF",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"E",
        0.0, 0.0,
        0.0, 0.0,
        139.24, 0.09, DETA_DPHI_VECTOR_WIDTH_ALL, EG_TAU_DETA_DPHI_PRECISION,
        0.0, 0.0, EG_TAU_MASS_PRECISION,
        EG_PT_VECTOR_WIDTH, TAU_PT_VECTOR_WIDTH, EG_TAU_COSH_COS_PRECISION, EG_TAU_COSH_COS_VECTOR_WIDTH,
        0.0, CALO_SIN_COS_VECTOR_WIDTH, EG_TAU_PT_PRECISION, EG_TAU_SIN_COS_PRECISION
    )
    port map(lhc_clk, eg_bx_0, tau_bx_0,
        diff_eg_tau_bx_0_bx_0_eta_vector, diff_eg_tau_bx_0_bx_0_phi_vector,
        eg_pt_vector_bx_0, tau_pt_vector_bx_0,
        eg_tau_bx_0_bx_0_cosh_deta_vector, eg_tau_bx_0_bx_0_cos_dphi_vector,
        eg_cos_phi_bx_0, tau_cos_phi_bx_0, eg_sin_phi_bx_0, tau_sin_phi_bx_0,
        calo_calo_correlation_911637241500190160);

invariant_mass_3160746219321117174_i: entity work.calo_calo_correlation_condition_v3
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
        1.5, 0.0,
        0.0, 0.0,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, JET_JET_DETA_DPHI_PRECISION,
        11549264162.0, 45000.0, JET_JET_MASS_PRECISION,
        JET_PT_VECTOR_WIDTH, JET_PT_VECTOR_WIDTH, JET_JET_COSH_COS_PRECISION, JET_JET_COSH_COS_VECTOR_WIDTH,
        0.0, CALO_SIN_COS_VECTOR_WIDTH, JET_JET_PT_PRECISION, JET_JET_SIN_COS_PRECISION
    )
    port map(lhc_clk, jet_bx_0, jet_bx_0,
        diff_jet_jet_bx_0_bx_0_eta_vector, diff_jet_jet_bx_0_bx_0_phi_vector,
        jet_pt_vector_bx_0, jet_pt_vector_bx_0,
        jet_jet_bx_0_bx_0_cosh_deta_vector, jet_jet_bx_0_bx_0_cos_dphi_vector,
        jet_cos_phi_bx_0, jet_cos_phi_bx_0, jet_sin_phi_bx_0, jet_sin_phi_bx_0,
        invariant_mass_3160746219321117174);

calo_muon_correlation_1722762447326210349_i: entity work.calo_muon_correlation_condition_v2
    generic map(
        false, false, true, false, 0, false, 
        0, 11, true, JET_TYPE,
        X"0040",
        false, X"0034",X"00CB",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        0, 7, true,
        X"0015",
        false, X"00D3",X"012D",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"F000", X"F",
        0.0, 0.0,
        0.0, 0.0,
        0.161, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, JET_MU_DETA_DPHI_PRECISION,
        0.0, 0.0, JET_MU_MASS_PRECISION,
        JET_PT_VECTOR_WIDTH, MU_PT_VECTOR_WIDTH, JET_MU_COSH_COS_PRECISION, JET_MU_COSH_COS_VECTOR_WIDTH,
        0.0, MUON_SIN_COS_VECTOR_WIDTH, JET_MU_PT_PRECISION, JET_MU_SIN_COS_PRECISION
    )
    port map(lhc_clk, jet_bx_0, mu_bx_0,
        diff_jet_mu_bx_0_bx_0_eta_vector, diff_jet_mu_bx_0_bx_0_phi_vector,
        jet_pt_vector_bx_0, mu_pt_vector_bx_0, 
        jet_mu_bx_0_bx_0_cosh_deta_vector, jet_mu_bx_0_bx_0_cos_dphi_vector,
        conv_jet_cos_phi_bx_0, mu_cos_phi_bx_0, conv_jet_sin_phi_bx_0, mu_sin_phi_bx_0,
        calo_muon_correlation_1722762447326210349);

invariant_mass_15191958030943548804_i: entity work.muon_muon_correlation_condition_v3
    generic map(
        true,
        false, false, false, true, 0, false, 
        0, 7, true,
        X"000B",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FF00", X"F",
        0, 7, true,
        X"0006",
        true, X"0000",X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FF00", X"F",
        "os",
        0.0, 0.0,
        0.0, 0.0,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, MU_MU_DETA_DPHI_PRECISION,
        144.5, 12.5, MU_MU_MASS_PRECISION,
        MU_PT_VECTOR_WIDTH, MU_MU_COSH_COS_PRECISION, MU_MU_COSH_COS_VECTOR_WIDTH,
        0.0, MUON_SIN_COS_VECTOR_WIDTH, MU_MU_PT_PRECISION, MU_MU_SIN_COS_PRECISION
    )
    port map(lhc_clk, mu_bx_0, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        diff_mu_mu_bx_0_bx_0_eta_vector, diff_mu_mu_bx_0_bx_0_phi_vector,
        mu_pt_vector_bx_0, mu_pt_vector_bx_0,
        mu_mu_bx_0_bx_0_cosh_deta_vector, mu_mu_bx_0_bx_0_cos_dphi_vector,
        mu_cos_phi_bx_0, mu_cos_phi_bx_0, mu_sin_phi_bx_0, mu_sin_phi_bx_0,
        invariant_mass_15191958030943548804);

muon_muon_correlation_16427048275991767576_i: entity work.muon_muon_correlation_condition_v3
    generic map(
        false,
        false, true, false, false, 0, false, 
        0, 7, true,
        X"0007",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        false, X"00EF", X"0030",
        true, X"0000", X"0000",
        "ign", X"FFFF", X"F",
        0, 7, true,
        X"0007",
        true, X"0000",X"0000",
        true, X"0000", X"0000",
        false, X"020F", X"0150",
        true, X"0000", X"0000",
        "ign", X"FFFF", X"F",
        "ig",
        0.0, 0.0,
        3.142, 1.57,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, MU_MU_DETA_DPHI_PRECISION,
        0.0, 0.0, MU_MU_MASS_PRECISION,
        MU_PT_VECTOR_WIDTH, MU_MU_COSH_COS_PRECISION, MU_MU_COSH_COS_VECTOR_WIDTH,
        0.0, MUON_SIN_COS_VECTOR_WIDTH, MU_MU_PT_PRECISION, MU_MU_SIN_COS_PRECISION
    )
    port map(lhc_clk, mu_bx_m1, mu_bx_0,
        ls_charcorr_double_bx_m1_bx_0, os_charcorr_double_bx_m1_bx_0,
        diff_mu_mu_bx_m1_bx_0_eta_vector, diff_mu_mu_bx_m1_bx_0_phi_vector,
        mu_pt_vector_bx_m1, mu_pt_vector_bx_0,
        mu_mu_bx_m1_bx_0_cosh_deta_vector, mu_mu_bx_m1_bx_0_cos_dphi_vector,
        mu_cos_phi_bx_m1, mu_cos_phi_bx_0, mu_sin_phi_bx_m1, mu_sin_phi_bx_0,
        muon_muon_correlation_16427048275991767576);

muon_muon_correlation_3624461197084981300_i: entity work.muon_muon_correlation_condition_v3
    generic map(
        false,
        false, true, false, false, 0, false, 
        0, 7, true,
        X"0007",
        false, X"006E", X"0192",
        true, X"0000", X"0000",
        false, X"00EF", X"0030",
        true, X"0000", X"0000",
        "ign", X"FFFF", X"F",
        0, 7, true,
        X"0007",
        false, X"006E",X"0192",
        true, X"0000", X"0000",
        false, X"020F", X"0150",
        true, X"0000", X"0000",
        "ign", X"FFFF", X"F",
        "ig",
        0.0, 0.0,
        3.142, 2.618,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, MU_MU_DETA_DPHI_PRECISION,
        0.0, 0.0, MU_MU_MASS_PRECISION,
        MU_PT_VECTOR_WIDTH, MU_MU_COSH_COS_PRECISION, MU_MU_COSH_COS_VECTOR_WIDTH,
        0.0, MUON_SIN_COS_VECTOR_WIDTH, MU_MU_PT_PRECISION, MU_MU_SIN_COS_PRECISION
    )
    port map(lhc_clk, mu_bx_m1, mu_bx_0,
        ls_charcorr_double_bx_m1_bx_0, os_charcorr_double_bx_m1_bx_0,
        diff_mu_mu_bx_m1_bx_0_eta_vector, diff_mu_mu_bx_m1_bx_0_phi_vector,
        mu_pt_vector_bx_m1, mu_pt_vector_bx_0,
        mu_mu_bx_m1_bx_0_cosh_deta_vector, mu_mu_bx_m1_bx_0_cos_dphi_vector,
        mu_cos_phi_bx_m1, mu_cos_phi_bx_0, mu_sin_phi_bx_m1, mu_sin_phi_bx_0,
        muon_muon_correlation_3624461197084981300);

muon_muon_correlation_685595273107289167_i: entity work.muon_muon_correlation_condition_v3
    generic map(
        false,
        false, true, false, false, 0, false, 
        0, 7, true,
        X"0007",
        false, X"006E", X"0192",
        true, X"0000", X"0000",
        false, X"00EF", X"0030",
        true, X"0000", X"0000",
        "ign", X"FFF0", X"F",
        0, 7, true,
        X"0007",
        false, X"006E",X"0192",
        true, X"0000", X"0000",
        false, X"020F", X"0150",
        true, X"0000", X"0000",
        "ign", X"FFF0", X"F",
        "ig",
        0.0, 0.0,
        3.142, 2.618,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, MU_MU_DETA_DPHI_PRECISION,
        0.0, 0.0, MU_MU_MASS_PRECISION,
        MU_PT_VECTOR_WIDTH, MU_MU_COSH_COS_PRECISION, MU_MU_COSH_COS_VECTOR_WIDTH,
        0.0, MUON_SIN_COS_VECTOR_WIDTH, MU_MU_PT_PRECISION, MU_MU_SIN_COS_PRECISION
    )
    port map(lhc_clk, mu_bx_0, mu_bx_p1,
        ls_charcorr_double_bx_0_bx_p1, os_charcorr_double_bx_0_bx_p1,
        diff_mu_mu_bx_0_bx_p1_eta_vector, diff_mu_mu_bx_0_bx_p1_phi_vector,
        mu_pt_vector_bx_0, mu_pt_vector_bx_p1,
        mu_mu_bx_0_bx_p1_cosh_deta_vector, mu_mu_bx_0_bx_p1_cos_dphi_vector,
        mu_cos_phi_bx_0, mu_cos_phi_bx_p1, mu_sin_phi_bx_0, mu_sin_phi_bx_p1,
        muon_muon_correlation_685595273107289167);

muon_muon_correlation_7969075141653825327_i: entity work.muon_muon_correlation_condition_v3
    generic map(
        false,
        false, true, false, false, 0, false, 
        0, 7, true,
        X"0007",
        false, X"00C1", X"013F",
        true, X"0000", X"0000",
        false, X"00EF", X"0030",
        true, X"0000", X"0000",
        "ign", X"FFFF", X"F",
        0, 7, true,
        X"0007",
        false, X"00C1",X"013F",
        true, X"0000", X"0000",
        false, X"020F", X"0150",
        true, X"0000", X"0000",
        "ign", X"FFFF", X"F",
        "ig",
        0.0, 0.0,
        3.142, 2.618,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, MU_MU_DETA_DPHI_PRECISION,
        0.0, 0.0, MU_MU_MASS_PRECISION,
        MU_PT_VECTOR_WIDTH, MU_MU_COSH_COS_PRECISION, MU_MU_COSH_COS_VECTOR_WIDTH,
        0.0, MUON_SIN_COS_VECTOR_WIDTH, MU_MU_PT_PRECISION, MU_MU_SIN_COS_PRECISION
    )
    port map(lhc_clk, mu_bx_m1, mu_bx_0,
        ls_charcorr_double_bx_m1_bx_0, os_charcorr_double_bx_m1_bx_0,
        diff_mu_mu_bx_m1_bx_0_eta_vector, diff_mu_mu_bx_m1_bx_0_phi_vector,
        mu_pt_vector_bx_m1, mu_pt_vector_bx_0,
        mu_mu_bx_m1_bx_0_cosh_deta_vector, mu_mu_bx_m1_bx_0_cos_dphi_vector,
        mu_cos_phi_bx_m1, mu_cos_phi_bx_0, mu_sin_phi_bx_m1, mu_sin_phi_bx_0,
        muon_muon_correlation_7969075141653825327);

muon_muon_correlation_9513481109957663155_i: entity work.muon_muon_correlation_condition_v3
    generic map(
        true,
        false, false, true, false, 0, false, 
        0, 7, true,
        X"0001",
        false, X"008A", X"0176",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"F000", X"F",
        0, 7, true,
        X"0001",
        false, X"008A",X"0176",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"F000", X"F",
        "os",
        0.0, 0.0,
        0.0, 0.0,
        1.961, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, MU_MU_DETA_DPHI_PRECISION,
        0.0, 0.0, MU_MU_MASS_PRECISION,
        MU_PT_VECTOR_WIDTH, MU_MU_COSH_COS_PRECISION, MU_MU_COSH_COS_VECTOR_WIDTH,
        0.0, MUON_SIN_COS_VECTOR_WIDTH, MU_MU_PT_PRECISION, MU_MU_SIN_COS_PRECISION
    )
    port map(lhc_clk, mu_bx_0, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        diff_mu_mu_bx_0_bx_0_eta_vector, diff_mu_mu_bx_0_bx_0_phi_vector,
        mu_pt_vector_bx_0, mu_pt_vector_bx_0,
        mu_mu_bx_0_bx_0_cosh_deta_vector, mu_mu_bx_0_bx_0_cos_dphi_vector,
        mu_cos_phi_bx_0, mu_cos_phi_bx_0, mu_sin_phi_bx_0, mu_sin_phi_bx_0,
        muon_muon_correlation_9513481109957663155);


-- Instantiations of algorithms

-- 4 L1_SingleMuCosmics_EMTF : MU0[MU-ETA_EMTF_POS,MU-ETA_EMTF_NEG]
l1_single_mu_cosmics_emtf <= single_mu_5290897791608380091;
algo(52) <= l1_single_mu_cosmics_emtf;

-- 7 L1_SingleMu0_EMTF : MU0[MU-QLTY_SNGL,MU-ETA_EMTF_POS,MU-ETA_EMTF_NEG]
l1_single_mu0_emtf <= single_mu_6225176159725710459;
algo(40) <= l1_single_mu0_emtf;

-- 9 L1_SingleMu5 : MU5[MU-QLTY_SNGL]
l1_single_mu5 <= single_mu_14769293105595978181;
algo(20) <= l1_single_mu5;

-- 10 L1_SingleMu7 : MU7[MU-QLTY_SNGL]
l1_single_mu7 <= single_mu_14769293139955716549;
algo(25) <= l1_single_mu7;

-- 13 L1_SingleMu12_LowQ_BMTF : MU12[MU-QLTY_DBLE,MU-ETA_BMTF]
l1_single_mu12_low_q_bmtf <= single_mu_7069342828816371872;
algo(41) <= l1_single_mu12_low_q_bmtf;

-- 18 L1_SingleMu20 : MU20[MU-QLTY_SNGL]
l1_single_mu20 <= single_mu_17545685224156598725;
algo(19) <= l1_single_mu20;

-- 26 L1_SingleMu16er2p1 : MU16[MU-QLTY_SNGL,MU-ETA_2p10]
l1_single_mu16er2p1 <= single_mu_7145648846602061216;
algo(42) <= l1_single_mu16er2p1;

-- 27 L1_SingleMu18er2p1 : MU18[MU-QLTY_SNGL,MU-ETA_2p10]
l1_single_mu18er2p1 <= single_mu_7181677643621025184;
algo(49) <= l1_single_mu18er2p1;

-- 28 L1_SingleMu20er2p1 : MU20[MU-QLTY_SNGL,MU-ETA_2p10]
l1_single_mu20er2p1 <= single_mu_9343405464758863264;
algo(44) <= l1_single_mu20er2p1;

-- 31 L1_DoubleMu_11_4 : comb{MU11[MU-QLTY_DBLE],MU4[MU-QLTY_DBLE]}
l1_double_mu_11_4 <= double_mu_16961154507842811908;
algo(56) <= l1_double_mu_11_4;

-- 35 L1_DoubleMu_15_5 : comb{MU15[MU-QLTY_DBLE],MU5[MU-QLTY_DBLE]}
l1_double_mu_15_5 <= double_mu_16961158905889323012;
algo(57) <= l1_double_mu_15_5;

-- 38 L1_DoubleMu22er2p1 : comb{MU22[MU-QLTY_SNGL,MU-ETA_2p10],MU22[MU-QLTY_SNGL,MU-ETA_2p10]}
l1_double_mu22er2p1 <= double_mu_2488845469206592112;
algo(54) <= l1_double_mu22er2p1;

-- 40 L1_TripleMu3 : comb{MU3[MU-QLTY_DBLE],MU3[MU-QLTY_DBLE],MU3[MU-QLTY_DBLE]}
l1_triple_mu3 <= triple_mu_3324691511169731615;
algo(60) <= l1_triple_mu3;

-- 51 L1_SingleEG10 : EG10
l1_single_eg10 <= single_eg_145873072;
algo(10) <= l1_single_eg10;

-- 52 L1_SingleEG15 : EG15
l1_single_eg15 <= single_eg_145873077;
algo(15) <= l1_single_eg15;

-- 100 L1_DoubleEG_15_10 : comb{EG15,EG10}
l1_double_eg_15_10 <= double_eg_14367282104050956127;
algo(30) <= l1_double_eg_15_10;

-- 104 L1_DoubleEG_22_12 : comb{EG22,EG12}
l1_double_eg_22_12 <= double_eg_14367831859864844383;
algo(31) <= l1_double_eg_22_12;

-- 108 L1_DoubleEG_25_12 : comb{EG25,EG12}
l1_double_eg_25_12 <= double_eg_14367845054004377695;
algo(32) <= l1_double_eg_25_12;

-- 111 L1_DoubleLooseIsoEG22er2p1 : comb{EG22[EG-ISO_0xC,EG-ETA_2p13],EG22[EG-ISO_0xC,EG-ETA_2p13]}
l1_double_loose_iso_eg22er2p1 <= double_eg_2355036583129339571;
algo(37) <= l1_double_loose_iso_eg22er2p1;

-- 113 L1_TripleEG_14_10_8 : comb{EG14,EG10,EG8}
l1_triple_eg_14_10_8 <= triple_eg_4430569450691365292;
algo(39) <= l1_triple_eg_14_10_8;

-- 126 L1_DoubleIsoTau33er2p1 : comb{TAU33[TAU-ISO_0xE,TAU-ETA_2p13],TAU33[TAU-ISO_0xE,TAU-ETA_2p13]}
l1_double_iso_tau33er2p1 <= double_tau_3279123247861152510;
algo(34) <= l1_double_iso_tau33er2p1;

-- 130 L1_DoubleIsoTau38er2p1 : comb{TAU38[TAU-ISO_0xE,TAU-ETA_2p13],TAU38[TAU-ISO_0xE,TAU-ETA_2p13]}
l1_double_iso_tau38er2p1 <= double_tau_14808338296613976830;
algo(35) <= l1_double_iso_tau38er2p1;

-- 146 L1_SingleJet120_FWD : JET120[JET-ETA_FWD_2p61_NEG] OR JET120[JET-ETA_FWD_2p61_POS]
l1_single_jet120_fwd <= single_jet_1950256523785076171 or single_jet_1950256523789435851;
algo(38) <= l1_single_jet120_fwd;

-- 158 L1_DoubleJet150er3p0 : comb{JET150[JET-ETA_CEN],JET150[JET-ETA_CEN]}
l1_double_jet150er3p0 <= double_jet_15939468912252268642;
algo(36) <= l1_double_jet150er3p0;

-- 164 L1_QuadJet60er3p0 : comb{JET60[JET-ETA_CEN],JET60[JET-ETA_CEN],JET60[JET-ETA_CEN],JET60[JET-ETA_CEN]}
l1_quad_jet60er3p0 <= quad_jet_2899845767245260980;
algo(70) <= l1_quad_jet60er3p0;

-- 165 L1_HTT120er : HTT120
l1_htt120er <= single_htt_2496626710832;
algo(7) <= l1_htt120er;

-- 176 L1_HTT380er : HTT380
l1_htt380er <= single_htt_2496626744368;
algo(8) <= l1_htt380er;

-- 178 L1_HTT450er : HTT450
l1_htt450er <= single_htt_2496626760368;
algo(9) <= l1_htt450er;

-- 182 L1_ETM50 : ETM50
l1_etm50 <= single_etm_18699475632;
algo(6) <= l1_etm50;

-- 211 L1_DoubleJet30_Mass_Min300_dEta_Max1p5 : mass_inv{JET30,JET30}[MASS_MIN_300,DETA_MAX_1p5]
l1_double_jet30_mass_min300_d_eta_max1p5 <= invariant_mass_3160746219321117174;
algo(71) <= l1_double_jet30_mass_min300_d_eta_max1p5;

-- 222 L1_LooseIsoEG28er2p1_Jet34er3p0_dR_Min0p3 : dist{EG28[EG-ETA_2p13,EG-ISO_0xC],JET34[JET-ETA_CEN]}[DR_MIN_0p3]
l1_loose_iso_eg28er2p1_jet34er3p0_d_r_min0p3 <= calo_calo_correlation_12099676773019156536;
algo(73) <= l1_loose_iso_eg28er2p1_jet34er3p0_d_r_min0p3;

-- 230 L1_Mu20_EG17 : MU20[MU-QLTY_SNGL] AND EG17
l1_mu20_eg17 <= single_mu_17545685224156598725 and single_eg_145873079;
algo(17) <= l1_mu20_eg17;

-- 231 L1_Mu23_EG10 : MU23[MU-QLTY_SNGL] AND EG10
l1_mu23_eg10 <= single_mu_17545685275696206277 and single_eg_145873072;
algo(13) <= l1_mu23_eg10;

-- 232 L1_Mu23_LooseIsoEG10 : MU23[MU-QLTY_SNGL] AND EG10[EG-ISO_0xC]
l1_mu23_loose_iso_eg10 <= single_mu_17545685275696206277 and single_eg_12507579852048143168;
algo(26) <= l1_mu23_loose_iso_eg10;

-- 233 L1_Mu5_EG23 : MU5[MU-QLTY_SNGL] AND EG23
l1_mu5_eg23 <= single_mu_14769293105595978181 and single_eg_145873203;
algo(24) <= l1_mu5_eg23;

-- 234 L1_Mu5_LooseIsoEG20 : MU5[MU-QLTY_SNGL] AND EG20[EG-ISO_0xC]
l1_mu5_loose_iso_eg20 <= single_mu_14769293105595978181 and single_eg_12507579852182360896;
algo(23) <= l1_mu5_loose_iso_eg20;

-- 235 L1_Mu7_EG23 : MU7[MU-QLTY_SNGL] AND EG23
l1_mu7_eg23 <= single_mu_14769293139955716549 and single_eg_145873203;
algo(14) <= l1_mu7_eg23;

-- 236 L1_Mu7_LooseIsoEG20 : MU7[MU-QLTY_SNGL] AND EG20[EG-ISO_0xC]
l1_mu7_loose_iso_eg20 <= single_mu_14769293139955716549 and single_eg_12507579852182360896;
algo(16) <= l1_mu7_loose_iso_eg20;

-- 237 L1_Mu7_LooseIsoEG23 : MU7[MU-QLTY_SNGL] AND EG23[EG-ISO_0xC]
l1_mu7_loose_iso_eg23 <= single_mu_14769293139955716549 and single_eg_12507579852185506624;
algo(21) <= l1_mu7_loose_iso_eg23;

-- 247 L1_Mu10er2p3_Jet32er2p3_dR_Max0p4_DoubleJet32er2p3_dEta_Max1p6 : dist{MU10[MU-ETA_2p3,MU-QLTY_SNGL],JET32[JET-ETA_2p3]}[DR_MAX_0p4] AND dist{JET32[JET-ETA_2p3],JET32[JET-ETA_2p3]}[DETA_MAX_1p6]
l1_mu10er2p3_jet32er2p3_d_r_max0p4_double_jet32er2p3_d_eta_max1p6 <= calo_muon_correlation_1722762447326210349 and calo_calo_correlation_3813196582576312175;
algo(74) <= l1_mu10er2p3_jet32er2p3_d_r_max0p4_double_jet32er2p3_d_eta_max1p6;

-- 274 L1_DoubleEG_LooseIso24_10 : comb{EG24[EG-ISO_0xC],EG10}
l1_double_eg_loose_iso24_10 <= double_eg_13782406706523981474;
algo(33) <= l1_double_eg_loose_iso24_10;

-- 285 L1_LooseIsoEG18er2p1_IsoTau24er2p1_dR_Min0p3 : dist{EG18[EG-ISO_0xC,EG-ETA_2p13],TAU24[TAU-ISO_0xE,TAU-ETA_2p13]}[DR_MIN_0p3]
l1_loose_iso_eg18er2p1_iso_tau24er2p1_d_r_min0p3 <= calo_calo_correlation_911637241500190160;
algo(72) <= l1_loose_iso_eg18er2p1_iso_tau24er2p1_d_r_min0p3;

-- 290 L1_Mu16er2p1_Tau20er2p1 : MU16[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU20[TAU-ETA_2p13]
l1_mu16er2p1_tau20er2p1 <= single_mu_7145648846602061216 and single_tau_16608830939767017288;
algo(48) <= l1_mu16er2p1_tau20er2p1;

-- 291 L1_Mu16er2p1_Tau24er2p1 : MU16[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU24[TAU-ETA_2p13]
l1_mu16er2p1_tau24er2p1 <= single_mu_7145648846602061216 and single_tau_16608831008486494024;
algo(47) <= l1_mu16er2p1_tau24er2p1;

-- 292 L1_Mu18er2p1_Tau20er2p1 : MU18[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU20[TAU-ETA_2p13]
l1_mu18er2p1_tau20er2p1 <= single_mu_7181677643621025184 and single_tau_16608830939767017288;
algo(51) <= l1_mu18er2p1_tau20er2p1;

-- 293 L1_Mu18er2p1_Tau24er2p1 : MU18[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU24[TAU-ETA_2p13]
l1_mu18er2p1_tau24er2p1 <= single_mu_7181677643621025184 and single_tau_16608831008486494024;
algo(43) <= l1_mu18er2p1_tau24er2p1;

-- 296 L1_Mu18er2p1_IsoTau26er2p1 : MU18[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU26[TAU-ISO_0xE,TAU-ETA_2p13]
l1_mu18er2p1_iso_tau26er2p1 <= single_mu_7181677643621025184 and single_tau_218368042610145022;
algo(46) <= l1_mu18er2p1_iso_tau26er2p1;

-- 297 L1_Mu20er2p1_IsoTau26er2p1 : MU20[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU26[TAU-ISO_0xE,TAU-ETA_2p13]
l1_mu20er2p1_iso_tau26er2p1 <= single_mu_9343405464758863264 and single_tau_218368042610145022;
algo(45) <= l1_mu20er2p1_iso_tau26er2p1;

-- 298 L1_Mu20er2p1_IsoTau27er2p1 : MU20[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU27[TAU-ISO_0xE,TAU-ETA_2p13]
l1_mu20er2p1_iso_tau27er2p1 <= single_mu_9343405464758863264 and single_tau_236382441119627006;
algo(50) <= l1_mu20er2p1_iso_tau27er2p1;

-- 370 L1_DoubleMu0er1p5_SQ_OS_dR_Max1p4 : dist{MU0[MU-QLTY_SNGL,MU-ETA_1p5],MU0[MU-QLTY_SNGL,MU-ETA_1p5]}[DR_1p4,CHGCOR_OS]
l1_double_mu0er1p5_sq_os_d_r_max1p4 <= muon_muon_correlation_9513481109957663155;
algo(65) <= l1_double_mu0er1p5_sq_os_d_r_max1p4;

-- 375 L1_DoubleMu4_OS_EG12 : comb{MU4[MU-QLTY_DBLE],MU4[MU-QLTY_DBLE]}[CHGCOR_OS] AND EG12
l1_double_mu4_os_eg12 <= double_mu_3224017188937267724 and single_eg_145873074;
algo(58) <= l1_double_mu4_os_eg12;

-- 378 L1_DoubleMu5_OS_EG12 : comb{MU5[MU-QLTY_DBLE],MU5[MU-QLTY_DBLE]}[CHGCOR_OS] AND EG12
l1_double_mu5_os_eg12 <= double_mu_3246535187074120204 and single_eg_145873074;
algo(59) <= l1_double_mu5_os_eg12;

-- 380 L1_TripleMu_5_3p5_2p5_DoubleMu_5_2p5_OS_Mass_5to17 : comb{MU5[MU-QLTY_DBLE],MU3p5[MU-QLTY_DBLE],MU2p5[MU-QLTY_DBLE]} AND mass_inv{MU5[MU-QLTY_DBLE],MU2p5[MU-QLTY_DBLE]}[MASS_MASS_5to17,CHGCOR_OS]
l1_triple_mu_5_3p5_2p5_double_mu_5_2p5_os_mass_5to17 <= triple_mu_9287399899537551596 and invariant_mass_15191958030943548804;
algo(63) <= l1_triple_mu_5_3p5_2p5_double_mu_5_2p5_os_mass_5to17;

-- 381 L1_TripleMu_5_4_2p5_DoubleMu_5_2p5_OS_Mass_5to17 : comb{MU5[MU-QLTY_DBLE],MU4[MU-QLTY_DBLE],MU2p5[MU-QLTY_DBLE]} AND mass_inv{MU5[MU-QLTY_DBLE],MU2p5[MU-QLTY_DBLE]}[MASS_MASS_5to17,CHGCOR_OS]
l1_triple_mu_5_4_2p5_double_mu_5_2p5_os_mass_5to17 <= triple_mu_6936497366859389375 and invariant_mass_15191958030943548804;
algo(64) <= l1_triple_mu_5_4_2p5_double_mu_5_2p5_os_mass_5to17;

-- 385 L1_DoubleMu0_SQ : comb{MU0[MU-QLTY_SNGL],MU0[MU-QLTY_SNGL]}
l1_double_mu0_sq <= double_mu_14585778268989477695;
algo(53) <= l1_double_mu0_sq;

-- 389 L1_DoubleMu4p5er2p0_SQ_OS : comb{MU4p5[MU-QLTY_SNGL,MU-ETA_2p0],MU4p5[MU-QLTY_SNGL,MU-ETA_2p0]}[CHGCOR_OS]
l1_double_mu4p5er2p0_sq_os <= double_mu_13627348644483379947;
algo(55) <= l1_double_mu4p5er2p0_sq_os;

-- 393 L1_TripleMu_5_3p5_2p5 : comb{MU5[MU-QLTY_DBLE],MU3p5[MU-QLTY_DBLE],MU2p5[MU-QLTY_DBLE]}
l1_triple_mu_5_3p5_2p5 <= triple_mu_9287399899537551596;
algo(62) <= l1_triple_mu_5_3p5_2p5;

-- 395 L1_TripleMu_5SQ_3SQ_0OQ : comb{MU5[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL],MU2[MU-QLTY_OPEN]}
l1_triple_mu_5_sq_3_sq_0_oq <= triple_mu_3324690130789734431;
algo(61) <= l1_triple_mu_5_sq_3_sq_0_oq;

-- 403 L1_Mu5_EG15 : MU5[MU-QLTY_SNGL] AND EG15
l1_mu5_eg15 <= single_mu_14769293105595978181 and single_eg_145873077;
algo(29) <= l1_mu5_eg15;

-- 404 L1_Mu5_EG20 : MU5[MU-QLTY_SNGL] AND EG20
l1_mu5_eg20 <= single_mu_14769293105595978181 and single_eg_145873200;
algo(22) <= l1_mu5_eg20;

-- 405 L1_Mu5_LooseIsoEG18 : MU5[MU-QLTY_SNGL] AND EG18[EG-ISO_0xC]
l1_mu5_loose_iso_eg18 <= single_mu_14769293105595978181 and single_eg_12507579852056531776;
algo(12) <= l1_mu5_loose_iso_eg18;

-- 406 L1_Mu12_EG10 : MU12[MU-QLTY_SNGL] AND EG10
l1_mu12_eg10 <= single_mu_17545683059493081541 and single_eg_145873072;
algo(27) <= l1_mu12_eg10;

-- 407 L1_Mu20_EG10 : MU20[MU-QLTY_SNGL] AND EG10
l1_mu20_eg10 <= single_mu_17545685224156598725 and single_eg_145873072;
algo(28) <= l1_mu20_eg10;

-- 408 L1_MU20_EG15 : MU20[MU-QLTY_SNGL] AND EG15
l1_mu20_eg15 <= single_mu_17545685224156598725 and single_eg_145873077;
algo(18) <= l1_mu20_eg15;

-- 409 L1_Mu20_LooseIsoEG6 : MU20[MU-QLTY_SNGL] AND EG6[EG-ISO_0xC]
l1_mu20_loose_iso_eg6 <= single_mu_17545685224156598725 and single_eg_12507428088042853184;
algo(11) <= l1_mu20_loose_iso_eg6;

-- 452 L1_BptxXOR : (EXT_BPTX_B1_VME AND ( NOT EXT_BPTX_B2_VME)) OR (EXT_BPTX_B2_VME AND ( NOT EXT_BPTX_B1_VME))
l1_bptx_xor <= ( single_ext_6102798787913291629 and ( not single_ext_6102798788181727085 ) ) or ( single_ext_6102798788181727085 and ( not single_ext_6102798787913291629 ) );
algo(4) <= l1_bptx_xor;

-- 459 L1_BptxPlus : EXT_BPTX_B1_VME
l1_bptx_plus <= single_ext_6102798787913291629;
algo(5) <= l1_bptx_plus;

-- 460 L1_BptxMinus : EXT_BPTX_B2_VME
l1_bptx_minus <= single_ext_6102798788181727085;
algo(3) <= l1_bptx_minus;

-- 462 L1_BPTX_AND_Ref1_VME : EXT_BPTX_AND_Ref1_VME
l1_bptx_and_ref1_vme <= single_ext_10333571492674155900;
algo(0) <= l1_bptx_and_ref1_vme;

-- 468 L1_BPTX_B2NotB1_NIM : EXT_BPTX_B2NotB1_NIM
l1_bptx_b2_not_b1_nim <= single_ext_8736797827952254492;
algo(1) <= l1_bptx_b2_not_b1_nim;

-- 469 L1_BPTX_NotOR_NIM : EXT_BPTX_NotOR_NIM
l1_bptx_not_or_nim <= single_ext_17417807877912804092;
algo(2) <= l1_bptx_not_or_nim;

-- 490 L1_CDC_3_TOP120_DPHI1p570_3p142 : dist{MU3-1[MU-PHI_TOP120],MU3[MU-PHI_BOTTOM120]}[DPHI_MIN1p570_MAX3p142]
l1_cdc_3_top120_dphi1p570_3p142 <= muon_muon_correlation_16427048275991767576;
algo(66) <= l1_cdc_3_top120_dphi1p570_3p142;

-- 496 L1_CDC_3_er1p2_TOP120_DPHI2p618_3p142 : dist{MU3-1[MU-ETA_1p2,MU-PHI_TOP120],MU3[MU-ETA_1p2,MU-PHI_BOTTOM120]}[DPHI_DPHI_MIN2p618_MAX3p142]
l1_cdc_3_er1p2_top120_dphi2p618_3p142 <= muon_muon_correlation_3624461197084981300;
algo(67) <= l1_cdc_3_er1p2_top120_dphi2p618_3p142;

-- 502 L1_CDC_3_er2p1_TOP120_DPHI2p618_3p142 : dist{MU3-1[MU-ETA_2p10,MU-PHI_TOP120],MU3[MU-ETA_2p10,MU-PHI_BOTTOM120]}[DPHI_DPHI_MIN2p618_MAX3p142]
l1_cdc_3_er2p1_top120_dphi2p618_3p142 <= muon_muon_correlation_7969075141653825327;
algo(68) <= l1_cdc_3_er2p1_top120_dphi2p618_3p142;

-- 508 L1_CDCp1_3_er1p2_TOP120_DPHI2p618_3p142 : dist{MU3[MU-ETA_1p2,MU-PHI_TOP120,MU-QLTY_OPEN],MU3+1[MU-ETA_1p2,MU-PHI_BOTTOM120,MU-QLTY_OPEN]}[DPHI_DPHI_MIN2p618_MAX3p142]
l1_cd_cp1_3_er1p2_top120_dphi2p618_3p142 <= muon_muon_correlation_685595273107289167;
algo(69) <= l1_cd_cp1_3_er1p2_top120_dphi2p618_3p142;


-- ========================================================