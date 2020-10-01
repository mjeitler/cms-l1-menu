-- ========================================================
-- from VHDL producer:

-- Module ID: 1

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v2_1_0

-- Unique ID of L1 Trigger Menu:
-- 56117f04-58fa-4e51-9fa4-a2394271d0ec

-- Unique ID of firmware implementation:
-- c9e926bd-7833-42bd-83e4-c61601a90af0

-- Scale set:
-- scales_2020_09_30

-- VHDL producer version
-- v2.8.1

-- External condition assignment
single_ext_i335 <= ext_cond_bx_0(5); -- single_ext_i335
single_ext_i336 <= ext_cond_bx_0(6); -- single_ext_i336
single_ext_i337 <= ext_cond_bx_0(9); -- single_ext_i337
single_ext_i338 <= ext_cond_bx_0(10); -- single_ext_i338
single_ext_i341 <= ext_cond_bx_0(22); -- single_ext_i341
single_ext_i342 <= ext_cond_bx_0(23); -- single_ext_i342
single_ext_i343 <= ext_cond_bx_0(19); -- single_ext_i343
single_ext_i344 <= ext_cond_bx_0(11); -- single_ext_i344
single_ext_i345 <= ext_cond_bx_0(17); -- single_ext_i345
single_ext_i346 <= ext_cond_bx_0(21); -- single_ext_i346
single_ext_i347 <= ext_cond_bx_0(18); -- single_ext_i347
single_ext_i348 <= ext_cond_bx_0(8); -- single_ext_i348
single_ext_i349 <= ext_cond_bx_0(16); -- single_ext_i349
single_ext_i350 <= ext_cond_bx_0(20); -- single_ext_i350
single_ext_i351 <= ext_cond_bx_0(0); -- single_ext_i351
single_ext_i352 <= ext_cond_bx_0(1); -- single_ext_i352
single_ext_i353 <= ext_cond_bx_0(2); -- single_ext_i353
single_ext_i354 <= ext_cond_bx_0(3); -- single_ext_i354
single_ext_i356 <= ext_cond_bx_0(32); -- single_ext_i356
single_ext_i357 <= ext_cond_bx_0(35); -- single_ext_i357
single_ext_i358 <= ext_cond_bx_0(40); -- single_ext_i358
single_ext_i359 <= ext_cond_bx_0(41); -- single_ext_i359
single_ext_i360 <= ext_cond_bx_0(42); -- single_ext_i360
single_ext_i361 <= ext_cond_bx_0(43); -- single_ext_i361
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
    eg_conv_2_muon_bx_0_l: for i in 0 to NR_EG_OBJECTS-1 generate
        eg_eta_conv_2_muon_eta_integer_bx_0(i) <= EG_ETA_CONV_2_MUON_ETA_LUT(CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.eta_high downto D_S_I_EG_V2.eta_low)));
        eg_phi_conv_2_muon_phi_integer_bx_0(i) <= EG_PHI_CONV_2_MUON_PHI_LUT(CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.phi_high downto D_S_I_EG_V2.phi_low)));
    end generate eg_conv_2_muon_bx_0_l;
    etm_phi_conv_2_muon_phi_integer_bx_0(0) <= ETM_PHI_CONV_2_MUON_PHI_LUT(CONV_INTEGER(etm_bx_0(D_S_I_ETM_V2.phi_high downto D_S_I_ETM_V2.phi_low)));

-- Instantiations of pt, eta, phi, cos-phi and sin-phi for correlation conditions (used for DETA, DPHI, DR, mass, overlap_remover and b_tagging) - once for every ObjectType in certain Bx used in correlation conditions
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
    jet_data_bx_0_l: for i in 0 to NR_JET_OBJECTS-1 generate
        jet_pt_vector_bx_0(i)(JET_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(JET_PT_LUT(CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.et_high downto D_S_I_JET_V2.et_low))), JET_PT_VECTOR_WIDTH);
        jet_eta_integer_bx_0(i) <= CONV_INTEGER(signed(jet_bx_0(i)(D_S_I_JET_V2.eta_high downto D_S_I_JET_V2.eta_low)));
        jet_phi_integer_bx_0(i) <= CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.phi_high downto D_S_I_JET_V2.phi_low));
        jet_cos_phi_bx_0(i) <= CALO_COS_PHI_LUT(CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.phi_high downto D_S_I_JET_V2.phi_low)));
        jet_sin_phi_bx_0(i) <= CALO_SIN_PHI_LUT(CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.phi_high downto D_S_I_JET_V2.phi_low)));
        conv_jet_cos_phi_bx_0(i) <= MUON_COS_PHI_LUT(jet_phi_conv_2_muon_phi_integer_bx_0(i));
        conv_jet_sin_phi_bx_0(i) <= MUON_SIN_PHI_LUT(jet_phi_conv_2_muon_phi_integer_bx_0(i));
    end generate jet_data_bx_0_l;
    mu_data_bx_0_l: for i in 0 to NR_MU_OBJECTS-1 generate
        mu_pt_vector_bx_0(i)(MU_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(MU_PT_LUT(CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.pt_high downto D_S_I_MU_V2.pt_low))), MU_PT_VECTOR_WIDTH);
        mu_upt_vector_bx_0(i)(MU_UPT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(MU_UPT_LUT(CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.upt_high downto D_S_I_MU_V2.upt_low))), MU_UPT_VECTOR_WIDTH);
        mu_eta_integer_bx_0(i) <= CONV_INTEGER(signed(mu_bx_0(i)(D_S_I_MU_V2.eta_high downto D_S_I_MU_V2.eta_low)));
        mu_phi_integer_bx_0(i) <= CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low));
        mu_cos_phi_bx_0(i) <= MUON_COS_PHI_LUT(CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low)));
        mu_sin_phi_bx_0(i) <= MUON_SIN_PHI_LUT(CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low)));
    end generate mu_data_bx_0_l;
    mu_data_bx_m1_l: for i in 0 to NR_MU_OBJECTS-1 generate
        mu_pt_vector_bx_m1(i)(MU_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(MU_PT_LUT(CONV_INTEGER(mu_bx_m1(i)(D_S_I_MU_V2.pt_high downto D_S_I_MU_V2.pt_low))), MU_PT_VECTOR_WIDTH);
        mu_upt_vector_bx_m1(i)(MU_UPT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(MU_UPT_LUT(CONV_INTEGER(mu_bx_m1(i)(D_S_I_MU_V2.upt_high downto D_S_I_MU_V2.upt_low))), MU_UPT_VECTOR_WIDTH);
        mu_eta_integer_bx_m1(i) <= CONV_INTEGER(signed(mu_bx_m1(i)(D_S_I_MU_V2.eta_high downto D_S_I_MU_V2.eta_low)));
        mu_phi_integer_bx_m1(i) <= CONV_INTEGER(mu_bx_m1(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low));
        mu_cos_phi_bx_m1(i) <= MUON_COS_PHI_LUT(CONV_INTEGER(mu_bx_m1(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low)));
        mu_sin_phi_bx_m1(i) <= MUON_SIN_PHI_LUT(CONV_INTEGER(mu_bx_m1(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low)));
    end generate mu_data_bx_m1_l;
    etm_data_bx_0_l: for i in 0 to NR_ETM_OBJECTS-1 generate
        etm_pt_vector_bx_0(0)(ETM_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(ETM_PT_LUT(CONV_INTEGER(etm_bx_0(D_S_I_ETM_V2.et_high downto D_S_I_ETM_V2.et_low))), ETM_PT_VECTOR_WIDTH);
        etm_phi_integer_bx_0(0) <= CONV_INTEGER(etm_bx_0(D_S_I_ETM_V2.phi_high downto D_S_I_ETM_V2.phi_low));
        etm_cos_phi_bx_0(0) <= CALO_COS_PHI_LUT(CONV_INTEGER(etm_bx_0(D_S_I_ETM_V2.phi_high downto D_S_I_ETM_V2.phi_low)));
        etm_sin_phi_bx_0(0) <= CALO_SIN_PHI_LUT(CONV_INTEGER(etm_bx_0(D_S_I_ETM_V2.phi_high downto D_S_I_ETM_V2.phi_low)));
        conv_etm_cos_phi_bx_0(0) <= MUON_COS_PHI_LUT(etm_phi_conv_2_muon_phi_integer_bx_0(0));
        conv_etm_sin_phi_bx_0(0) <= MUON_SIN_PHI_LUT(etm_phi_conv_2_muon_phi_integer_bx_0(0));
    end generate etm_data_bx_0_l;

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
    diff_eg_etm_phi_bx_0_bx_0_i: entity work.sub_phi_integer_obj_vs_obj
        generic map(NR_EG_OBJECTS, NR_ETM_OBJECTS, CALO_PHI_HALF_RANGE_BINS)
        port map(eg_phi_integer_bx_0, etm_phi_integer_bx_0, diff_eg_etm_bx_0_bx_0_phi_integer);
    eg_etm_bx_0_bx_0_l1: for i in 0 to NR_EG_OBJECTS-1 generate
        eg_etm_bx_0_bx_0_l2: for j in 0 to NR_ETM_OBJECTS-1 generate
            diff_eg_etm_bx_0_bx_0_phi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_ETM_DIFF_PHI_LUT(diff_eg_etm_bx_0_bx_0_phi_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
        end generate eg_etm_bx_0_bx_0_l2;
    end generate eg_etm_bx_0_bx_0_l1;

-- Instantiations of cosh-deta and cos-dphi LUTs for correlation conditions (used for mass and overlap_remover) - once for correlation conditions with two ObjectTypes in certain Bxs
    eg_tau_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_EG_OBJECTS-1 generate
        eg_tau_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_TAU_OBJECTS-1 generate
            eg_tau_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_TAU_COSH_DETA_LUT(diff_eg_tau_bx_0_bx_0_eta_integer(i,j)), EG_TAU_COSH_COS_VECTOR_WIDTH);
            eg_tau_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_TAU_COS_DPHI_LUT(diff_eg_tau_bx_0_bx_0_phi_integer(i,j)), EG_TAU_COSH_COS_VECTOR_WIDTH);
            eg_tau_bx_0_bx_0_deta_bin_vector(i,j) <= CONV_STD_LOGIC_VECTOR(diff_eg_tau_bx_0_bx_0_eta_integer(i,j), EG_TAU_DETA_BINS_WIDTH);
            eg_tau_bx_0_bx_0_dphi_bin_vector(i,j) <= CONV_STD_LOGIC_VECTOR(diff_eg_tau_bx_0_bx_0_phi_integer(i,j), EG_TAU_DPHI_BINS_WIDTH);
        end generate eg_tau_bx_0_bx_0_cosh_cos_l2;
    end generate eg_tau_bx_0_bx_0_cosh_cos_l1;
    jet_jet_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_JET_OBJECTS-1 generate
        jet_jet_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_JET_OBJECTS-1 generate
            jet_jet_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_JET_COSH_DETA_LUT(diff_jet_jet_bx_0_bx_0_eta_integer(i,j)), JET_JET_COSH_COS_VECTOR_WIDTH);
            jet_jet_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_JET_COS_DPHI_LUT(diff_jet_jet_bx_0_bx_0_phi_integer(i,j)), JET_JET_COSH_COS_VECTOR_WIDTH);
            jet_jet_bx_0_bx_0_deta_bin_vector(i,j) <= CONV_STD_LOGIC_VECTOR(diff_jet_jet_bx_0_bx_0_eta_integer(i,j), JET_JET_DETA_BINS_WIDTH);
            jet_jet_bx_0_bx_0_dphi_bin_vector(i,j) <= CONV_STD_LOGIC_VECTOR(diff_jet_jet_bx_0_bx_0_phi_integer(i,j), JET_JET_DPHI_BINS_WIDTH);
        end generate jet_jet_bx_0_bx_0_cosh_cos_l2;
    end generate jet_jet_bx_0_bx_0_cosh_cos_l1;
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
    mu_mu_bx_m1_bx_0_cosh_cos_l1: for i in 0 to NR_MU_OBJECTS-1 generate
        mu_mu_bx_m1_bx_0_cosh_cos_l2: for j in 0 to NR_MU_OBJECTS-1 generate
            mu_mu_bx_m1_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_COSH_DETA_LUT(diff_mu_mu_bx_m1_bx_0_eta_integer(i,j)), MU_MU_COSH_COS_VECTOR_WIDTH);
            mu_mu_bx_m1_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_COS_DPHI_LUT(diff_mu_mu_bx_m1_bx_0_phi_integer(i,j)), MU_MU_COSH_COS_VECTOR_WIDTH);
            mu_mu_bx_m1_bx_0_deta_bin_vector(i,j) <= CONV_STD_LOGIC_VECTOR(diff_mu_mu_bx_m1_bx_0_eta_integer(i,j), MU_MU_DETA_BINS_WIDTH);
            mu_mu_bx_m1_bx_0_dphi_bin_vector(i,j) <= CONV_STD_LOGIC_VECTOR(diff_mu_mu_bx_m1_bx_0_phi_integer(i,j), MU_MU_DPHI_BINS_WIDTH);
        end generate mu_mu_bx_m1_bx_0_cosh_cos_l2;
    end generate mu_mu_bx_m1_bx_0_cosh_cos_l1;
    eg_etm_bx_0_bx_0_cos_dphi_l1: for i in 0 to NR_EG_OBJECTS-1 generate
        eg_etm_bx_0_bx_0_cos_dphi_l2: for j in 0 to NR_ETM_OBJECTS-1 generate
            eg_etm_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_ETM_COS_DPHI_LUT(diff_eg_etm_bx_0_bx_0_phi_integer(i,j)), EG_ETM_COSH_COS_VECTOR_WIDTH);
        end generate eg_etm_bx_0_bx_0_cos_dphi_l2;
    end generate eg_etm_bx_0_bx_0_cos_dphi_l1;

-- Instantiations of conditions
  
double_eg_i169_i: entity work.calo_conditions
    generic map(0, 11, 0, 11, 0, 0, 0, 0,
        2, true, EG_TYPE,
        (X"001E", X"0014", X"0000", X"0000"),
        (1, 1, 0, 0),
        (X"0039", X"0039", X"0000", X"0000"), (X"00C6", X"00C6", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, eg_bx_0,
        double_eg_i169);



  
double_eg_i172_i: entity work.calo_conditions
    generic map(0, 11, 0, 11, 0, 0, 0, 0,
        2, true, EG_TYPE,
        (X"0032", X"0018", X"0000", X"0000"),
        (1, 1, 0, 0),
        (X"0039", X"0039", X"0000", X"0000"), (X"00C6", X"00C6", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, eg_bx_0,
        double_eg_i172);



  
double_eg_i176_i: entity work.calo_conditions
    generic map(0, 11, 0, 11, 0, 0, 0, 0,
        2, true, EG_TYPE,
        (X"002C", X"0014", X"0000", X"0000"),
        (1, 1, 0, 0),
        (X"0039", X"0039", X"0000", X"0000"), (X"00C6", X"00C6", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"C", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, eg_bx_0,
        double_eg_i176);



  
double_eg_i180_i: entity work.calo_conditions
    generic map(0, 11, 0, 11, 0, 0, 0, 0,
        2, true, EG_TYPE,
        (X"0030", X"0030", X"0000", X"0000"),
        (1, 1, 0, 0),
        (X"0030", X"0030", X"0000", X"0000"), (X"00CF", X"00CF", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"C", X"C", X"F", X"F"),
        false
    )
    port map(lhc_clk, eg_bx_0,
        double_eg_i180);



  
double_jet_i254_i: entity work.calo_conditions
    generic map(0, 11, 0, 11, 0, 0, 0, 0,
        2, true, JET_TYPE,
        (X"00C8", X"00C8", X"0000", X"0000"),
        (1, 1, 0, 0),
        (X"0039", X"0039", X"0000", X"0000"), (X"00C6", X"00C6", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, jet_bx_0,
        double_jet_i254);



  
double_jet_i270_i: entity work.calo_conditions
    generic map(0, 11, 0, 11, 0, 0, 0, 0,
        2, true, JET_TYPE,
        (X"00E6", X"0050", X"0000", X"0000"),
        (0, 0, 0, 0),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, jet_bx_0,
        double_jet_i270);



  
double_jet_i295_i: entity work.calo_conditions
    generic map(0, 11, 0, 11, 0, 0, 0, 0,
        2, true, JET_TYPE,
        (X"00AA", X"0096", X"0000", X"0000"),
        (1, 1, 0, 0),
        (X"0039", X"0039", X"0000", X"0000"), (X"00C6", X"00C6", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, jet_bx_0,
        double_jet_i295);



  
double_tau_i205_i: entity work.calo_conditions
    generic map(0, 11, 0, 11, 0, 0, 0, 0,
        2, true, TAU_TYPE,
        (X"003C", X"003C", X"0000", X"0000"),
        (1, 1, 0, 0),
        (X"0030", X"0030", X"0000", X"0000"), (X"00CF", X"00CF", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"E", X"F", X"F"),
        false
    )
    port map(lhc_clk, tau_bx_0,
        double_tau_i205);



  
single_eg_i127_i: entity work.calo_conditions
    generic map(0, 11, 0, 0, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"001E", X"0000", X"0000", X"0000"),
        (1, 0, 0, 0),
        (X"0039", X"0000", X"0000", X"0000"), (X"00C6", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, eg_bx_0,
        single_eg_i127);



  
single_eg_i131_i: entity work.calo_conditions
    generic map(0, 11, 0, 0, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"0038", X"0000", X"0000", X"0000"),
        (1, 0, 0, 0),
        (X"0039", X"0000", X"0000", X"0000"), (X"00C6", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, eg_bx_0,
        single_eg_i131);



  
single_eg_i137_i: entity work.calo_conditions
    generic map(0, 11, 0, 0, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"0050", X"0000", X"0000", X"0000"),
        (1, 0, 0, 0),
        (X"0039", X"0000", X"0000", X"0000"), (X"00C6", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, eg_bx_0,
        single_eg_i137);



  
single_eg_i141_i: entity work.calo_conditions
    generic map(0, 11, 0, 0, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"0078", X"0000", X"0000", X"0000"),
        (0, 0, 0, 0),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, eg_bx_0,
        single_eg_i141);



  
single_eg_i144_i: entity work.calo_conditions
    generic map(0, 11, 0, 0, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"0038", X"0000", X"0000", X"0000"),
        (1, 0, 0, 0),
        (X"0072", X"0000", X"0000", X"0000"), (X"003A", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"C", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, eg_bx_0,
        single_eg_i144);



  
single_eg_i145_i: entity work.calo_conditions
    generic map(0, 11, 0, 0, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"0038", X"0000", X"0000", X"0000"),
        (1, 0, 0, 0),
        (X"00C5", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"C", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, eg_bx_0,
        single_eg_i145);



  
single_eg_i148_i: entity work.calo_conditions
    generic map(0, 11, 0, 0, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"0038", X"0000", X"0000", X"0000"),
        (1, 0, 0, 0),
        (X"0022", X"0000", X"0000", X"0000"), (X"00DD", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"C", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, eg_bx_0,
        single_eg_i148);



  
single_eg_i149_i: entity work.calo_conditions
    generic map(0, 11, 0, 0, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"003C", X"0000", X"0000", X"0000"),
        (1, 0, 0, 0),
        (X"0039", X"0000", X"0000", X"0000"), (X"00C6", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"C", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, eg_bx_0,
        single_eg_i149);



  
single_eg_i155_i: entity work.calo_conditions
    generic map(0, 11, 0, 0, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"0034", X"0000", X"0000", X"0000"),
        (1, 0, 0, 0),
        (X"0022", X"0000", X"0000", X"0000"), (X"00DD", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"A", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, eg_bx_0,
        single_eg_i155);



  
single_eg_i158_i: entity work.calo_conditions
    generic map(0, 11, 0, 0, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"0038", X"0000", X"0000", X"0000"),
        (1, 0, 0, 0),
        (X"0039", X"0000", X"0000", X"0000"), (X"00C6", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"A", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, eg_bx_0,
        single_eg_i158);



  
single_eg_i165_i: entity work.calo_conditions
    generic map(0, 11, 0, 0, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"0044", X"0000", X"0000", X"0000"),
        (1, 0, 0, 0),
        (X"0039", X"0000", X"0000", X"0000"), (X"00C6", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"A", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, eg_bx_0,
        single_eg_i165);



  
single_jet_i230_i: entity work.calo_conditions
    generic map(0, 11, 0, 0, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0046", X"0000", X"0000", X"0000"),
        (0, 0, 0, 0),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, jet_bx_0,
        single_jet_i230);



  
single_jet_i232_i: entity work.calo_conditions
    generic map(0, 11, 0, 0, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"00B4", X"0000", X"0000", X"0000"),
        (0, 0, 0, 0),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, jet_bx_0,
        single_jet_i232);



  
single_jet_i240_i: entity work.calo_conditions
    generic map(0, 11, 0, 0, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0140", X"0000", X"0000", X"0000"),
        (1, 0, 0, 0),
        (X"0039", X"0000", X"0000", X"0000"), (X"00C6", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, jet_bx_0,
        single_jet_i240);



  
single_jet_i248_i: entity work.calo_conditions
    generic map(0, 11, 0, 0, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"00F0", X"0000", X"0000", X"0000"),
        (1, 0, 0, 0),
        (X"00BA", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, jet_bx_0,
        single_jet_i248);



  
single_jet_i249_i: entity work.calo_conditions
    generic map(0, 11, 0, 0, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"00F0", X"0000", X"0000", X"0000"),
        (1, 0, 0, 0),
        (X"0072", X"0000", X"0000", X"0000"), (X"0045", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, jet_bx_0,
        single_jet_i249);



  
triple_eg_i183_i: entity work.calo_conditions
    generic map(0, 11, 0, 11, 0, 11, 0, 0,
        3, true, EG_TYPE,
        (X"0024", X"0022", X"0010", X"0000"),
        (1, 1, 1, 0),
        (X"0039", X"0039", X"0039", X"0000"), (X"00C6", X"00C6", X"00C6", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, eg_bx_0,
        triple_eg_i183);



  
triple_jet_i294_i: entity work.calo_conditions
    generic map(0, 11, 0, 11, 0, 11, 0, 0,
        3, true, JET_TYPE,
        (X"00D2", X"00AA", X"0096", X"0000"),
        (0, 0, 0, 0),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, jet_bx_0,
        triple_jet_i294);



double_mu_i35_i: entity work.muon_conditions
    generic map(0, 7, 0, 7, 0, 0, 0, 0,
        2, true,
        (X"0001", X"0001", X"0000", X"0000"),
        (0, 0, 0, 0),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"F000", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        double_mu_i35,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


single_mu_i11_i: entity work.muon_conditions
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"000F", X"0000", X"0000", X"0000"),
        (0, 0, 0, 0),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FF00", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        single_mu_i11);


single_mu_i15_i: entity work.muon_conditions
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"0019", X"0000", X"0000", X"0000"),
        (2, 0, 0, 0),
        (X"00E1", X"0000", X"0000", X"0000"), (X"0073", X"0000", X"0000", X"0000"),
        (X"018D", X"0000", X"0000", X"0000"), (X"011F", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FF00", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        single_mu_i15);


single_mu_i16_i: entity work.muon_conditions
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"001F", X"0000", X"0000", X"0000"),
        (0, 0, 0, 0),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FF00", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        single_mu_i16);


single_mu_i19_i: entity work.muon_conditions
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"002D", X"0000", X"0000", X"0000"),
        (0, 0, 0, 0),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        single_mu_i19);


single_mu_i23_i: entity work.muon_conditions
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"0033", X"0000", X"0000", X"0000"),
        (0, 0, 0, 0),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        single_mu_i23);


single_mu_i27_i: entity work.muon_conditions
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"0013", X"0000", X"0000", X"0000"),
        (1, 0, 0, 0),
        (X"008A", X"0000", X"0000", X"0000"), (X"0176", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        single_mu_i27);


single_mu_i289_i: entity work.muon_conditions
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"0011", X"0000", X"0000", X"0000"),
        (0, 0, 0, 0),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        single_mu_i289);


single_mu_i3_i: entity work.muon_conditions
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"0001", X"0000", X"0000", X"0000"),
        (2, 0, 0, 0),
        (X"00E1", X"0000", X"0000", X"0000"), (X"0073", X"0000", X"0000", X"0000"),
        (X"018D", X"0000", X"0000", X"0000"), (X"011F", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        single_mu_i3);


single_mu_i8_i: entity work.muon_conditions
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"0001", X"0000", X"0000", X"0000"),
        (2, 0, 0, 0),
        (X"00E1", X"0000", X"0000", X"0000"), (X"0073", X"0000", X"0000", X"0000"),
        (X"018D", X"0000", X"0000", X"0000"), (X"011F", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        single_mu_i8);


single_etm_i314_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00F0",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_i314);


single_ett_i312_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0C80",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i312);


single_htt_i307_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"01FE",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_i307);


calo_calo_correlation_i199_i: entity work.calo_calo_correlation_condition
    generic map(
        true,
        false, false, true, false, 0, false,
        0, 11, true, EG_TYPE,
        X"0030",
        1,
        X"0030", X"00CF",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"C",
        0, 11, true, TAU_TYPE,
        X"0036",
        1,
        X"0030", X"00CF",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"E",
        X"00000000", X"00000000",
        X"00000000", X"00000000",
        X"00000000084CA240", X"0000000000015F90",
        X"0000000000000000", X"0000000000000000",
        EG_PT_VECTOR_WIDTH, TAU_PT_VECTOR_WIDTH, EG_TAU_COSH_COS_PRECISION, EG_TAU_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", CALO_SIN_COS_VECTOR_WIDTH, EG_TAU_SIN_COS_PRECISION
    )
    port map(lhc_clk, eg_bx_0, tau_bx_0,
        diff_eg_tau_bx_0_bx_0_eta_vector, diff_eg_tau_bx_0_bx_0_phi_vector,
        eg_pt_vector_bx_0, tau_pt_vector_bx_0,
        eg_tau_bx_0_bx_0_cosh_deta_vector, eg_tau_bx_0_bx_0_cos_dphi_vector,
        eg_cos_phi_bx_0, tau_cos_phi_bx_0, eg_sin_phi_bx_0, tau_sin_phi_bx_0,
        calo_calo_correlation_i199);

calo_calo_correlation_i258_i: entity work.calo_calo_correlation_condition
    generic map(
        true,
        true, false, false, false, 0, false,
        0, 11, true, JET_TYPE,
        X"00E0",
        1,
        X"0034", X"00CB",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        0, 11, true, JET_TYPE,
        X"00E0",
        1,
        X"0034", X"00CB",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
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
        calo_calo_correlation_i258);

invariant_mass_i209_i: entity work.calo_calo_correlation_condition
    generic map(
        true,
        false, false, false, true, 0, false,
        0, 11, true, TAU_TYPE,
        X"0038",
        1,
        X"0030", X"00CF",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"E",
        0, 11, true, TAU_TYPE,
        X"0038",
        1,
        X"0030", X"00CF",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"E",
        X"00000000", X"00000000",
        X"00000000", X"00000000",
        X"0000000000000000", X"0000000000000000",
        X"000000001823CF40", X"0000000000000000",
        TAU_PT_VECTOR_WIDTH, TAU_PT_VECTOR_WIDTH, TAU_TAU_COSH_COS_PRECISION, TAU_TAU_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", CALO_SIN_COS_VECTOR_WIDTH, TAU_TAU_SIN_COS_PRECISION
    )
    port map(lhc_clk, tau_bx_0, tau_bx_0,
        diff_tau_tau_bx_0_bx_0_eta_vector, diff_tau_tau_bx_0_bx_0_phi_vector,
        tau_pt_vector_bx_0, tau_pt_vector_bx_0,
        tau_tau_bx_0_bx_0_cosh_deta_vector, tau_tau_bx_0_bx_0_cos_dphi_vector,
        tau_cos_phi_bx_0, tau_cos_phi_bx_0, tau_sin_phi_bx_0, tau_sin_phi_bx_0,
        invariant_mass_i209);

invariant_mass_i262_i: entity work.calo_calo_correlation_condition
    generic map(
        true,
        true, false, false, true, 0, false,
        0, 11, true, JET_TYPE,
        X"003C",
        1,
        X"0039", X"00C6",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        0, 11, true, JET_TYPE,
        X"003C",
        1,
        X"0039", X"00C6",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        X"000005DC", X"00000000",
        X"00000000", X"00000000",
        X"0000000000000000", X"0000000000000000",
        X"00041A6642C78140", X"000000010C388D00",
        JET_PT_VECTOR_WIDTH, JET_PT_VECTOR_WIDTH, JET_JET_COSH_COS_PRECISION, JET_JET_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", CALO_SIN_COS_VECTOR_WIDTH, JET_JET_SIN_COS_PRECISION
    )
    port map(lhc_clk, jet_bx_0, jet_bx_0,
        diff_jet_jet_bx_0_bx_0_eta_vector, diff_jet_jet_bx_0_bx_0_phi_vector,
        jet_pt_vector_bx_0, jet_pt_vector_bx_0,
        jet_jet_bx_0_bx_0_cosh_deta_vector, jet_jet_bx_0_bx_0_cos_dphi_vector,
        jet_cos_phi_bx_0, jet_cos_phi_bx_0, jet_sin_phi_bx_0, jet_sin_phi_bx_0,
        invariant_mass_i262);

invariant_mass_i271_i: entity work.calo_calo_correlation_condition
    generic map(
        true,
        false, false, false, true, 0, false,
        0, 11, true, JET_TYPE,
        X"0050",
        0,
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        0, 11, true, JET_TYPE,
        X"0050",
        0,
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        X"00000000", X"00000000",
        X"00000000", X"00000000",
        X"0000000000000000", X"0000000000000000",
        X"00041A6642C78140", X"000000047999ED00",
        JET_PT_VECTOR_WIDTH, JET_PT_VECTOR_WIDTH, JET_JET_COSH_COS_PRECISION, JET_JET_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", CALO_SIN_COS_VECTOR_WIDTH, JET_JET_SIN_COS_PRECISION
    )
    port map(lhc_clk, jet_bx_0, jet_bx_0,
        diff_jet_jet_bx_0_bx_0_eta_vector, diff_jet_jet_bx_0_bx_0_phi_vector,
        jet_pt_vector_bx_0, jet_pt_vector_bx_0,
        jet_jet_bx_0_bx_0_cosh_deta_vector, jet_jet_bx_0_bx_0_cos_dphi_vector,
        jet_cos_phi_bx_0, jet_cos_phi_bx_0, jet_sin_phi_bx_0, jet_sin_phi_bx_0,
        invariant_mass_i271);

invariant_mass_i288_i: entity work.calo_calo_correlation_condition
    generic map(
        true,
        false, false, false, true, 0, false,
        0, 11, true, JET_TYPE,
        X"00A0",
        0,
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        0, 11, true, JET_TYPE,
        X"003C",
        0,
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        X"00000000", X"00000000",
        X"00000000", X"00000000",
        X"0000000000000000", X"0000000000000000",
        X"00041A6642C78140", X"000000020DB68500",
        JET_PT_VECTOR_WIDTH, JET_PT_VECTOR_WIDTH, JET_JET_COSH_COS_PRECISION, JET_JET_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", CALO_SIN_COS_VECTOR_WIDTH, JET_JET_SIN_COS_PRECISION
    )
    port map(lhc_clk, jet_bx_0, jet_bx_0,
        diff_jet_jet_bx_0_bx_0_eta_vector, diff_jet_jet_bx_0_bx_0_phi_vector,
        jet_pt_vector_bx_0, jet_pt_vector_bx_0,
        jet_jet_bx_0_bx_0_cosh_deta_vector, jet_jet_bx_0_bx_0_cos_dphi_vector,
        jet_cos_phi_bx_0, jet_cos_phi_bx_0, jet_sin_phi_bx_0, jet_sin_phi_bx_0,
        invariant_mass_i288);

invariant_mass_i95_i: entity work.calo_calo_correlation_condition
    generic map(
        true,
        false, false, false, true, 0, false,
        0, 11, true, EG_TYPE,
        X"0006",
        1,
        X"0030", X"00CF",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        0, 11, true, EG_TYPE,
        X"0006",
        1,
        X"0030", X"00CF",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
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
        invariant_mass_i95);

calo_muon_correlation_i118_i: entity work.calo_muon_correlation_condition
    generic map(
        false, false, true, false, 0, false,
        0, 11, true, JET_TYPE,
        X"00B4",
        1,
        X"0039", X"00C6",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        0, 7, true,
        X"0007",
        0,
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FF00", X"F",
        false, X"0000", X"0000", X"F",
        X"00000000", X"00000000",
        X"00000000", X"00000000",
        X"000000000009C7E8", X"0000000000000000",
        X"0000000000000000", X"0000000000000000",
        JET_PT_VECTOR_WIDTH, MU_PT_VECTOR_WIDTH, JET_MU_COSH_COS_PRECISION, JET_MU_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", MUON_SIN_COS_VECTOR_WIDTH, JET_MU_SIN_COS_PRECISION
    )
    port map(lhc_clk, jet_bx_0(0 to 11), mu_bx_0(0 to 7),
        diff_jet_mu_bx_0_bx_0_eta_vector, diff_jet_mu_bx_0_bx_0_phi_vector,
        jet_pt_vector_bx_0, mu_pt_vector_bx_0,
        jet_mu_bx_0_bx_0_cosh_deta_vector, jet_mu_bx_0_bx_0_cos_dphi_vector,
        conv_jet_cos_phi_bx_0, mu_cos_phi_bx_0, conv_jet_sin_phi_bx_0, mu_sin_phi_bx_0,
        calo_muon_correlation_i118);

calo_muon_correlation_i99_i: entity work.calo_muon_correlation_condition
    generic map(
        false, false, true, false, 0, false,
        0, 11, true, JET_TYPE,
        X"0078",
        1,
        X"0039", X"00C6",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        0, 7, true,
        X"0007",
        0,
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"F000", X"F",
        false, X"0000", X"0000", X"F",
        X"00000000", X"00000000",
        X"00000000", X"00000000",
        X"00000000000274E8", X"0000000000000000",
        X"0000000000000000", X"0000000000000000",
        JET_PT_VECTOR_WIDTH, MU_PT_VECTOR_WIDTH, JET_MU_COSH_COS_PRECISION, JET_MU_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", MUON_SIN_COS_VECTOR_WIDTH, JET_MU_SIN_COS_PRECISION
    )
    port map(lhc_clk, jet_bx_0(0 to 11), mu_bx_0(0 to 7),
        diff_jet_mu_bx_0_bx_0_eta_vector, diff_jet_mu_bx_0_bx_0_phi_vector,
        jet_pt_vector_bx_0, mu_pt_vector_bx_0,
        jet_mu_bx_0_bx_0_cosh_deta_vector, jet_mu_bx_0_bx_0_cos_dphi_vector,
        conv_jet_cos_phi_bx_0, mu_cos_phi_bx_0, conv_jet_sin_phi_bx_0, mu_sin_phi_bx_0,
        calo_muon_correlation_i99);

invariant_mass_i37_i: entity work.muon_muon_correlation_condition
    generic map(
        true,
        false, false, false, true, 0,
        false, false,
        0, 7, true,
        X"0001",
        0,
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FFFF", X"F",
        false, X"0000", X"0000", X"F",
        0, 7, true,
        X"0001",
        0,
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FFFF", X"F",
        false, X"0000", X"0000", X"F",
        "ig",
        X"00000000", X"00000000",
        X"00000000", X"00000000",
        X"0000000000000000", X"0000000000000000",
        X"002907FE9BCB0C80", X"000000000007A120",
        pt_width => MU_PT_VECTOR_WIDTH, mass_cosh_cos_precision => MU_MU_COSH_COS_PRECISION,
        cosh_cos_width => MU_MU_COSH_COS_VECTOR_WIDTH,
        pt_sq_threshold_vector => X"0000000000000000", sin_cos_width => MUON_SIN_COS_VECTOR_WIDTH,
        pt_sq_sin_cos_precision => MU_MU_SIN_COS_PRECISION
    )
    port map(lhc_clk, mu_bx_0, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        diff_mu_mu_bx_0_bx_0_eta_vector, diff_mu_mu_bx_0_bx_0_phi_vector,
        mu_pt_vector_bx_0, mu_pt_vector_bx_0,
        mu_upt_vector_bx_0, mu_upt_vector_bx_0,
        mu_mu_bx_0_bx_0_cosh_deta_vector, mu_mu_bx_0_bx_0_cos_dphi_vector,
        mu_cos_phi_bx_0, mu_cos_phi_bx_0, mu_sin_phi_bx_0, mu_sin_phi_bx_0,
        invariant_mass_i37);

invariant_mass_i94_i: entity work.muon_muon_correlation_condition
    generic map(
        true,
        false, false, false, true, 0,
        false, false,
        0, 7, true,
        X"000B",
        1,
        X"00D3", X"012D",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FF00", X"F",
        false, X"0000", X"0000", X"F",
        0, 7, true,
        X"000B",
        1,
        X"00D3", X"012D",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FF00", X"F",
        false, X"0000", X"0000", X"F",
        "os",
        X"00000000", X"00000000",
        X"00000000", X"00000000",
        X"0000000000000000", X"0000000000000000",
        X"0000000005D75C80", X"0000000001E84800",
        pt_width => MU_PT_VECTOR_WIDTH, mass_cosh_cos_precision => MU_MU_COSH_COS_PRECISION,
        cosh_cos_width => MU_MU_COSH_COS_VECTOR_WIDTH,
        pt_sq_threshold_vector => X"0000000000000000", sin_cos_width => MUON_SIN_COS_VECTOR_WIDTH,
        pt_sq_sin_cos_precision => MU_MU_SIN_COS_PRECISION
    )
    port map(lhc_clk, mu_bx_0, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        diff_mu_mu_bx_0_bx_0_eta_vector, diff_mu_mu_bx_0_bx_0_phi_vector,
        mu_pt_vector_bx_0, mu_pt_vector_bx_0,
        mu_upt_vector_bx_0, mu_upt_vector_bx_0,
        mu_mu_bx_0_bx_0_cosh_deta_vector, mu_mu_bx_0_bx_0_cos_dphi_vector,
        mu_cos_phi_bx_0, mu_cos_phi_bx_0, mu_sin_phi_bx_0, mu_sin_phi_bx_0,
        invariant_mass_i94);

muon_muon_correlation_i117_i: entity work.muon_muon_correlation_condition
    generic map(
        true,
        false, false, true, false, 0,
        false, false,
        0, 7, true,
        X"0007",
        0,
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FF00", X"F",
        false, X"0000", X"0000", X"F",
        0, 7, true,
        X"0007",
        0,
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FF00", X"F",
        false, X"0000", X"0000", X"F",
        "ig",
        X"00000000", X"00000000",
        X"00000000", X"00000000",
        X"00000000002713E8", X"0000000000000000",
        X"0000000000000000", X"0000000000000000",
        pt_width => MU_PT_VECTOR_WIDTH, mass_cosh_cos_precision => MU_MU_COSH_COS_PRECISION,
        cosh_cos_width => MU_MU_COSH_COS_VECTOR_WIDTH,
        pt_sq_threshold_vector => X"0000000000000000", sin_cos_width => MUON_SIN_COS_VECTOR_WIDTH,
        pt_sq_sin_cos_precision => MU_MU_SIN_COS_PRECISION
    )
    port map(lhc_clk, mu_bx_0, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        diff_mu_mu_bx_0_bx_0_eta_vector, diff_mu_mu_bx_0_bx_0_phi_vector,
        mu_pt_vector_bx_0, mu_pt_vector_bx_0,
        mu_upt_vector_bx_0, mu_upt_vector_bx_0,
        mu_mu_bx_0_bx_0_cosh_deta_vector, mu_mu_bx_0_bx_0_cos_dphi_vector,
        mu_cos_phi_bx_0, mu_cos_phi_bx_0, mu_sin_phi_bx_0, mu_sin_phi_bx_0,
        muon_muon_correlation_i117);

muon_muon_correlation_i355_i: entity work.muon_muon_correlation_condition
    generic map(
        false,
        false, true, false, false, 0,
        false, false,
        0, 7, true,
        X"0007",
        1,
        X"006E", X"0192",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        false, X"00EF", X"0030",
        true, X"0000", X"0000",
        "ign", X"F000", X"F",
        false, X"0000", X"0000", X"F",
        0, 7, true,
        X"0007",
        1,
        X"006E", X"0192",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        false, X"020F", X"0150",
        true, X"0000", X"0000",
        "ign", X"F000", X"F",
        false, X"0000", X"0000", X"F",
        "ig",
        X"00000000", X"00000000",
        X"00000C46", X"00000A3A",
        X"0000000000000000", X"0000000000000000",
        X"0000000000000000", X"0000000000000000",
        pt_width => MU_PT_VECTOR_WIDTH, mass_cosh_cos_precision => MU_MU_COSH_COS_PRECISION,
        cosh_cos_width => MU_MU_COSH_COS_VECTOR_WIDTH,
        pt_sq_threshold_vector => X"0000000000000000", sin_cos_width => MUON_SIN_COS_VECTOR_WIDTH,
        pt_sq_sin_cos_precision => MU_MU_SIN_COS_PRECISION
    )
    port map(lhc_clk, mu_bx_m1, mu_bx_0,
        ls_charcorr_double_bx_m1_bx_0, os_charcorr_double_bx_m1_bx_0,
        diff_mu_mu_bx_m1_bx_0_eta_vector, diff_mu_mu_bx_m1_bx_0_phi_vector,
        mu_pt_vector_bx_m1, mu_pt_vector_bx_0,
        mu_upt_vector_bx_m1, mu_upt_vector_bx_0,
        mu_mu_bx_m1_bx_0_cosh_deta_vector, mu_mu_bx_m1_bx_0_cos_dphi_vector,
        mu_cos_phi_bx_m1, mu_cos_phi_bx_0, mu_sin_phi_bx_m1, mu_sin_phi_bx_0,
        muon_muon_correlation_i355);

muon_muon_correlation_i47_i: entity work.muon_muon_correlation_condition
    generic map(
        true,
        false, false, true, false, 0,
        false, false,
        0, 7, true,
        X"0001",
        1,
        X"00B8", X"0148",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"F000", X"F",
        false, X"0000", X"0000", X"F",
        0, 7, true,
        X"0001",
        1,
        X"00B8", X"0148",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"F000", X"F",
        false, X"0000", X"0000", X"F",
        "os",
        X"00000000", X"00000000",
        X"00000000", X"00000000",
        X"00000000001DEC28", X"0000000000000000",
        X"0000000000000000", X"0000000000000000",
        pt_width => MU_PT_VECTOR_WIDTH, mass_cosh_cos_precision => MU_MU_COSH_COS_PRECISION,
        cosh_cos_width => MU_MU_COSH_COS_VECTOR_WIDTH,
        pt_sq_threshold_vector => X"0000000000000000", sin_cos_width => MUON_SIN_COS_VECTOR_WIDTH,
        pt_sq_sin_cos_precision => MU_MU_SIN_COS_PRECISION
    )
    port map(lhc_clk, mu_bx_0, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        diff_mu_mu_bx_0_bx_0_eta_vector, diff_mu_mu_bx_0_bx_0_phi_vector,
        mu_pt_vector_bx_0, mu_pt_vector_bx_0,
        mu_upt_vector_bx_0, mu_upt_vector_bx_0,
        mu_mu_bx_0_bx_0_cosh_deta_vector, mu_mu_bx_0_bx_0_cos_dphi_vector,
        mu_cos_phi_bx_0, mu_cos_phi_bx_0, mu_sin_phi_bx_0, mu_sin_phi_bx_0,
        muon_muon_correlation_i47);

transverse_mass_i166_i: entity work.calo_esums_correlation_condition
    generic map(
        false, true, TRANSVERSE_MASS_TYPE, false,
        0, 11, true, EG_TYPE,
        X"0040",
        1, 
        X"0039", X"00C6",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
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
        transverse_mass_i166);

transverse_mass_i168_i: entity work.calo_esums_correlation_condition
    generic map(
        false, true, TRANSVERSE_MASS_TYPE, false,
        0, 11, true, EG_TYPE,
        X"0040",
        1, 
        X"0039", X"00C6",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
        X"0000", X"0000",
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
        transverse_mass_i168);

-- Instantiations of algorithms

-- 3 L1_SingleMuCosmics_EMTF : MU0[MU-ETA_EMTF_POS,MU-ETA_EMTF_NEG]
l1_single_mu_cosmics_emtf <= single_mu_i3;
algo(56) <= l1_single_mu_cosmics_emtf;

-- 8 L1_SingleMu0_EMTF : MU0[MU-QLTY_SNGL,MU-ETA_EMTF_POS,MU-ETA_EMTF_NEG]
l1_single_mu0_emtf <= single_mu_i8;
algo(49) <= l1_single_mu0_emtf;

-- 11 L1_SingleMu7_DQ : MU7[MU-QLTY_DBLE]
l1_single_mu7_dq <= single_mu_i11;
algo(54) <= l1_single_mu7_dq;

-- 15 L1_SingleMu12_DQ_EMTF : MU12[MU-QLTY_DBLE,MU-ETA_EMTF_POS,MU-ETA_EMTF_NEG]
l1_single_mu12_dq_emtf <= single_mu_i15;
algo(50) <= l1_single_mu12_dq_emtf;

-- 16 L1_SingleMu15_DQ : MU15[MU-QLTY_DBLE]
l1_single_mu15_dq <= single_mu_i16;
algo(51) <= l1_single_mu15_dq;

-- 19 L1_SingleMu22 : MU22[MU-QLTY_SNGL]
l1_single_mu22 <= single_mu_i19;
algo(52) <= l1_single_mu22;

-- 23 L1_SingleMu25 : MU25[MU-QLTY_SNGL]
l1_single_mu25 <= single_mu_i23;
algo(53) <= l1_single_mu25;

-- 28 L1_SingleMu9er1p5 : MU9[MU-QLTY_SNGL,MU-ETA_1p5]
l1_single_mu9er1p5 <= single_mu_i27;
algo(55) <= l1_single_mu9er1p5;

-- 41 L1_DoubleMu0_SQ : comb{MU0[MU-QLTY_SNGL],MU0[MU-QLTY_SNGL]}
l1_double_mu0_sq <= double_mu_i35;
algo(58) <= l1_double_mu0_sq;

-- 43 L1_DoubleMu0_Mass_Min1 : mass_inv{MU0,MU0}[MASS_MIN_1]
l1_double_mu0_mass_min1 <= invariant_mass_i37;
algo(65) <= l1_double_mu0_mass_min1;

-- 54 L1_DoubleMu0er2p0_SQ_OS_dR_Max1p4 : dist{MU0[MU-QLTY_SNGL,MU-ETA_2p0],MU0[MU-QLTY_SNGL,MU-ETA_2p0]}[DR_1p4,CHGCOR_OS]
l1_double_mu0er2p0_sq_os_d_r_max1p4 <= muon_muon_correlation_i47;
algo(64) <= l1_double_mu0er2p0_sq_os_d_r_max1p4;

-- 113 L1_DoubleMu5Upsilon_OS_DoubleEG3 : mass_inv{MU5[MU-QLTY_DBLE,MU-ETA_2p3],MU5[MU-QLTY_DBLE,MU-ETA_2p3]}[MASS_MASS_8to14,CHGCOR_OS] AND mass_inv{EG3[EG-ETA_2p13],EG3[EG-ETA_2p13]}[MASS_MASS_0to20]
l1_double_mu5_upsilon_os_double_eg3 <= invariant_mass_i94 and invariant_mass_i95;
algo(71) <= l1_double_mu5_upsilon_os_double_eg3;

-- 123 L1_Mu3_Jet60er2p5_dR_Max0p4 : dist{MU3[MU-QLTY_SNGL],JET60[JET-ETA_2p52]}[DR_MAX_0p4]
l1_mu3_jet60er2p5_d_r_max0p4 <= calo_muon_correlation_i99;
algo(72) <= l1_mu3_jet60er2p5_d_r_max0p4;

-- 143 L1_DoubleMu3_dR_Max1p6_Jet90er2p5_dR_Max0p8 : dist{MU3[MU-QLTY_DBLE],MU3[MU-QLTY_DBLE]}[DR_MAX_1p6] AND dist{MU3[MU-QLTY_DBLE],JET90[JET-ETA_2p52]}[DR_MAX_0p8]
l1_double_mu3_d_r_max1p6_jet90er2p5_d_r_max0p8 <= muon_muon_correlation_i117 and calo_muon_correlation_i118;
algo(73) <= l1_double_mu3_d_r_max1p6_jet90er2p5_d_r_max0p8;

-- 161 L1_SingleEG15er2p5 : EG15[EG-ETA_2p52]
l1_single_eg15er2p5 <= single_eg_i127;
algo(28) <= l1_single_eg15er2p5;

-- 164 L1_SingleEG28er2p5 : EG28[EG-ETA_2p52]
l1_single_eg28er2p5 <= single_eg_i131;
algo(29) <= l1_single_eg28er2p5;

-- 170 L1_SingleEG40er2p5 : EG40[EG-ETA_2p52]
l1_single_eg40er2p5 <= single_eg_i137;
algo(30) <= l1_single_eg40er2p5;

-- 174 L1_SingleEG60 : EG60
l1_single_eg60 <= single_eg_i141;
algo(31) <= l1_single_eg60;

-- 177 L1_SingleLooseIsoEG28_FWD2p5 : EG28[EG-ETA_FWD_2p52_POS,EG-ISO_0xC] OR EG28[EG-ETA_FWD_2p52_NEG,EG-ISO_0xC]
l1_single_loose_iso_eg28_fwd2p5 <= single_eg_i144 or single_eg_i145;
algo(47) <= l1_single_loose_iso_eg28_fwd2p5;

-- 180 L1_SingleLooseIsoEG28er1p5 : EG28[EG-ETA_1p52_HASHFIX,EG-ISO_0xC]
l1_single_loose_iso_eg28er1p5 <= single_eg_i148;
algo(38) <= l1_single_loose_iso_eg28er1p5;

-- 181 L1_SingleLooseIsoEG30er2p5 : EG30[EG-ETA_2p52,EG-ISO_0xC]
l1_single_loose_iso_eg30er2p5 <= single_eg_i149;
algo(39) <= l1_single_loose_iso_eg30er2p5;

-- 187 L1_SingleIsoEG26er1p5 : EG26[EG-ETA_1p52_HASHFIX,EG-ISO_0xA]
l1_single_iso_eg26er1p5 <= single_eg_i155;
algo(32) <= l1_single_iso_eg26er1p5;

-- 189 L1_SingleIsoEG28er2p5 : EG28[EG-ETA_2p52,EG-ISO_0xA]
l1_single_iso_eg28er2p5 <= single_eg_i158;
algo(33) <= l1_single_iso_eg28er2p5;

-- 196 L1_SingleIsoEG34er2p5 : EG34[EG-ETA_2p52,EG-ISO_0xA]
l1_single_iso_eg34er2p5 <= single_eg_i165;
algo(34) <= l1_single_iso_eg34er2p5;

-- 197 L1_IsoEG32er2p5_Mt40 : mass_trv{EG32[EG-ETA_2p52,EG-ISO_0xA],ETM10}[MASS_MIN_40]
l1_iso_eg32er2p5_mt40 <= transverse_mass_i166;
algo(61) <= l1_iso_eg32er2p5_mt40;

-- 199 L1_IsoEG32er2p5_Mt48 : mass_trv{EG32[EG-ETA_2p52,EG-ISO_0xA],ETM10}[MASS_MIN_48]
l1_iso_eg32er2p5_mt48 <= transverse_mass_i168;
algo(62) <= l1_iso_eg32er2p5_mt48;

-- 205 L1_DoubleEG_15_10_er2p5 : comb{EG15[EG-ETA_2p52],EG10[EG-ETA_2p52]}
l1_double_eg_15_10_er2p5 <= double_eg_i169;
algo(40) <= l1_double_eg_15_10_er2p5;

-- 208 L1_DoubleEG_25_12_er2p5 : comb{EG25[EG-ETA_2p52],EG12[EG-ETA_2p52]}
l1_double_eg_25_12_er2p5 <= double_eg_i172;
algo(41) <= l1_double_eg_25_12_er2p5;

-- 213 L1_DoubleEG_LooseIso22_10_er2p5 : comb{EG22[EG-ETA_2p52,EG-ISO_0xC],EG10[EG-ETA_2p52]}
l1_double_eg_loose_iso22_10_er2p5 <= double_eg_i176;
algo(42) <= l1_double_eg_loose_iso22_10_er2p5;

-- 218 L1_DoubleLooseIsoEG24er2p1 : comb{EG24[EG-ISO_0xC,EG-ETA_2p13],EG24[EG-ISO_0xC,EG-ETA_2p13]}
l1_double_loose_iso_eg24er2p1 <= double_eg_i180;
algo(45) <= l1_double_loose_iso_eg24er2p1;

-- 226 L1_TripleEG_18_17_8_er2p5 : comb{EG18[EG-ETA_2p52],EG17[EG-ETA_2p52],EG8[EG-ETA_2p52]}
l1_triple_eg_18_17_8_er2p5 <= triple_eg_i183;
algo(48) <= l1_triple_eg_18_17_8_er2p5;

-- 258 L1_LooseIsoEG24er2p1_IsoTau27er2p1_dR_Min0p3 : dist{EG24[EG-ETA_2p13,EG-ISO_0xC],TAU27[TAU-ETA_2p13,TAU-ISO_0xE]}[DR_MIN_0p3]
l1_loose_iso_eg24er2p1_iso_tau27er2p1_d_r_min0p3 <= calo_calo_correlation_i199;
algo(70) <= l1_loose_iso_eg24er2p1_iso_tau27er2p1_d_r_min0p3;

-- 270 L1_DoubleIsoTau30er2p1 : comb{TAU30[TAU-ETA_2p13,TAU-ISO_0xE],TAU30[TAU-ETA_2p13,TAU-ISO_0xE]}
l1_double_iso_tau30er2p1 <= double_tau_i205;
algo(43) <= l1_double_iso_tau30er2p1;

-- 274 L1_DoubleIsoTau28er2p1_Mass_Max90 : mass_inv{TAU28[TAU-ETA_2p13,TAU-ISO_0xE],TAU28[TAU-ETA_2p13,TAU-ISO_0xE]}[MASS_MAX_90]
l1_double_iso_tau28er2p1_mass_max90 <= invariant_mass_i209;
algo(67) <= l1_double_iso_tau28er2p1_mass_max90;

-- 309 L1_SingleJet35 : JET35
l1_single_jet35 <= single_jet_i230;
algo(36) <= l1_single_jet35;

-- 311 L1_SingleJet90 : JET90
l1_single_jet90 <= single_jet_i232;
algo(37) <= l1_single_jet90;

-- 321 L1_SingleJet160er2p5 : JET160[JET-ETA_2p52]
l1_single_jet160er2p5 <= single_jet_i240;
algo(35) <= l1_single_jet160er2p5;

-- 327 L1_SingleJet120_FWD3p0 : JET120[JET-ETA_FWD_3p00_NEG] OR JET120[JET-ETA_FWD_3p00_POS]
l1_single_jet120_fwd3p0 <= single_jet_i248 or single_jet_i249;
algo(46) <= l1_single_jet120_fwd3p0;

-- 341 L1_DoubleJet100er2p5 : comb{JET100[JET-ETA_2p52],JET100[JET-ETA_2p52]}
l1_double_jet100er2p5 <= double_jet_i254;
algo(44) <= l1_double_jet100er2p5;

-- 346 L1_DoubleJet112er2p3_dEta_Max1p6 : dist{JET112[JET-ETA_2p3],JET112[JET-ETA_2p3]}[DETA_MAX_1p6]
l1_double_jet112er2p3_d_eta_max1p6 <= calo_calo_correlation_i258;
algo(63) <= l1_double_jet112er2p3_d_eta_max1p6;

-- 351 L1_DoubleJet30er2p5_Mass_Min300_dEta_Max1p5 : mass_inv{JET30[JET-ETA_2p52],JET30[JET-ETA_2p52]}[MASS_MIN_300,DETA_MAX_1p5]
l1_double_jet30er2p5_mass_min300_d_eta_max1p5 <= invariant_mass_i262;
algo(69) <= l1_double_jet30er2p5_mass_min300_d_eta_max1p5;

-- 358 L1_DoubleJet_115_40_DoubleJet40_Mass_Min620 : comb{JET115,JET40} AND mass_inv{JET40,JET40}[MASS_MIN_620]
l1_double_jet_115_40_double_jet40_mass_min620 <= double_jet_i270 and invariant_mass_i271;
algo(68) <= l1_double_jet_115_40_double_jet40_mass_min620;

-- 365 L1_DoubleJet_80_30_Mass_Min420_Mu8 : mass_inv{JET80,JET30}[MASS_MIN_420] AND MU8[MU-QLTY_SNGL]
l1_double_jet_80_30_mass_min420_mu8 <= invariant_mass_i288 and single_mu_i289;
algo(60) <= l1_double_jet_80_30_mass_min420_mu8;

-- 366 L1_DoubleJet_80_30_Mass_Min420_DoubleMu0_SQ : mass_inv{JET80,JET30}[MASS_MIN_420] AND comb{MU0[MU-QLTY_SNGL],MU0[MU-QLTY_SNGL]}
l1_double_jet_80_30_mass_min420_double_mu0_sq <= invariant_mass_i288 and double_mu_i35;
algo(59) <= l1_double_jet_80_30_mass_min420_double_mu0_sq;

-- 374 L1_TripleJet_105_85_75_DoubleJet_85_75_er2p5 : comb{JET105,JET85,JET75} AND comb{JET85[JET-ETA_2p52],JET75[JET-ETA_2p52]}
l1_triple_jet_105_85_75_double_jet_85_75_er2p5 <= triple_jet_i294 and double_jet_i295;
algo(57) <= l1_triple_jet_105_85_75_double_jet_85_75_er2p5;

-- 401 L1_HTT255er : HTT255
l1_htt255er <= single_htt_i307;
algo(27) <= l1_htt255er;

-- 411 L1_ETT1600 : ETT1600
l1_ett1600 <= single_ett_i312;
algo(26) <= l1_ett1600;

-- 416 L1_ETM120 : ETM120
l1_etm120 <= single_etm_i314;
algo(25) <= l1_etm120;

-- 465 L1_BptxXOR : (EXT_BPTX_B1_VME AND ( NOT EXT_BPTX_B2_VME)) OR (EXT_BPTX_B2_VME AND ( NOT EXT_BPTX_B1_VME))
l1_bptx_xor <= ( single_ext_i335 and ( not single_ext_i336 ) ) or ( single_ext_i336 and ( not single_ext_i335 ) );
algo(12) <= l1_bptx_xor;

-- 466 L1_BptxPlus : EXT_BPTX_B1_VME
l1_bptx_plus <= single_ext_i335;
algo(13) <= l1_bptx_plus;

-- 467 L1_BptxMinus : EXT_BPTX_B2_VME
l1_bptx_minus <= single_ext_i336;
algo(11) <= l1_bptx_minus;

-- 468 L1_UnpairedBunchBptxPlus : EXT_BPTX_B1NotB2_VME
l1_unpaired_bunch_bptx_plus <= single_ext_i337;
algo(24) <= l1_unpaired_bunch_bptx_plus;

-- 469 L1_UnpairedBunchBptxMinus : EXT_BPTX_B2NotB1_VME
l1_unpaired_bunch_bptx_minus <= single_ext_i338;
algo(23) <= l1_unpaired_bunch_bptx_minus;

-- 478 L1_LastCollisionInTrain : EXT_BPTX_LastCollisionInTrain_VME
l1_last_collision_in_train <= single_ext_i341;
algo(18) <= l1_last_collision_in_train;

-- 479 L1_FirstCollisionInTrain : EXT_BPTX_FirstCollisionInTrain_VME
l1_first_collision_in_train <= single_ext_i342;
algo(15) <= l1_first_collision_in_train;

-- 480 L1_FirstCollisionInOrbit : EXT_BPTX_FirstCollidingBunch_VME
l1_first_collision_in_orbit <= single_ext_i343;
algo(14) <= l1_first_collision_in_orbit;

-- 482 L1_BPTX_NotOR_VME : EXT_BPTX_NotOR_VME
l1_bptx_not_or_vme <= single_ext_i344;
algo(7) <= l1_bptx_not_or_vme;

-- 483 L1_BPTX_OR_Ref3_VME : EXT_BPTX_OR_Ref3_VME
l1_bptx_or_ref3_vme <= single_ext_i345;
algo(8) <= l1_bptx_or_ref3_vme;

-- 484 L1_BPTX_OR_Ref4_VME : EXT_BPTX_OR_Ref4_VME
l1_bptx_or_ref4_vme <= single_ext_i346;
algo(9) <= l1_bptx_or_ref4_vme;

-- 485 L1_BPTX_RefAND_VME : EXT_BPTX_RefAND_VME
l1_bptx_ref_and_vme <= single_ext_i347;
algo(10) <= l1_bptx_ref_and_vme;

-- 486 L1_BPTX_AND_Ref1_VME : EXT_BPTX_AND_Ref1_VME
l1_bptx_and_ref1_vme <= single_ext_i348;
algo(0) <= l1_bptx_and_ref1_vme;

-- 487 L1_BPTX_AND_Ref3_VME : EXT_BPTX_AND_Ref3_VME
l1_bptx_and_ref3_vme <= single_ext_i349;
algo(1) <= l1_bptx_and_ref3_vme;

-- 488 L1_BPTX_AND_Ref4_VME : EXT_BPTX_AND_Ref4_VME
l1_bptx_and_ref4_vme <= single_ext_i350;
algo(2) <= l1_bptx_and_ref4_vme;

-- 489 L1_BPTX_BeamGas_Ref1_VME : EXT_BPTX_BeamGas_Ref1_VME
l1_bptx_beam_gas_ref1_vme <= single_ext_i351;
algo(5) <= l1_bptx_beam_gas_ref1_vme;

-- 490 L1_BPTX_BeamGas_Ref2_VME : EXT_BPTX_BeamGas_Ref2_VME
l1_bptx_beam_gas_ref2_vme <= single_ext_i352;
algo(6) <= l1_bptx_beam_gas_ref2_vme;

-- 491 L1_BPTX_BeamGas_B1_VME : EXT_BPTX_BeamGas_B1_VME
l1_bptx_beam_gas_b1_vme <= single_ext_i353;
algo(3) <= l1_bptx_beam_gas_b1_vme;

-- 492 L1_BPTX_BeamGas_B2_VME : EXT_BPTX_BeamGas_B2_VME
l1_bptx_beam_gas_b2_vme <= single_ext_i354;
algo(4) <= l1_bptx_beam_gas_b2_vme;

-- 494 L1_CDC_SingleMu_3_er1p2_TOP120_DPHI2p618_3p142 : dist{MU3-1[MU-ETA_1p2,MU-PHI_TOP120,MU-QLTY_SNGL],MU3[MU-ETA_1p2,MU-PHI_BOTTOM120,MU-QLTY_SNGL]}[DPHI_DPHI_MIN2p618_MAX3p142]
l1_cdc_single_mu_3_er1p2_top120_dphi2p618_3p142 <= muon_muon_correlation_i355;
algo(66) <= l1_cdc_single_mu_3_er1p2_top120_dphi2p618_3p142;

-- 500 L1_HCAL_LaserMon_Trig : EXT_HCAL_LaserMon_1
l1_hcal_laser_mon_trig <= single_ext_i356;
algo(16) <= l1_hcal_laser_mon_trig;

-- 501 L1_HCAL_LaserMon_Veto : EXT_HCAL_LaserMon_4
l1_hcal_laser_mon_veto <= single_ext_i357;
algo(17) <= l1_hcal_laser_mon_veto;

-- 503 L1_TOTEM_1 : EXT_TOTEM_1
l1_totem_1 <= single_ext_i358;
algo(19) <= l1_totem_1;

-- 504 L1_TOTEM_2 : EXT_TOTEM_2
l1_totem_2 <= single_ext_i359;
algo(20) <= l1_totem_2;

-- 505 L1_TOTEM_3 : EXT_TOTEM_3
l1_totem_3 <= single_ext_i360;
algo(21) <= l1_totem_3;

-- 506 L1_TOTEM_4 : EXT_TOTEM_4
l1_totem_4 <= single_ext_i361;
algo(22) <= l1_totem_4;


-- ========================================================