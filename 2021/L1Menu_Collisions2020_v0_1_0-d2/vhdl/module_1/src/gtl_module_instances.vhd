-- ========================================================
-- from VHDL producer:

-- Module ID: 1

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2020_v0_1_0

-- Unique ID of L1 Trigger Menu:
-- 67b390d3-5f18-4e77-8cb1-c26fa03f3548

-- Unique ID of firmware implementation:
-- bd872642-107c-4a0b-a18a-d457c20489d1

-- Scale set:
-- scales_2020_10_04

-- VHDL producer version
-- v2.9.0

-- tmEventSetup version
-- v0.8.1

-- External condition assignment
single_ext_i344 <= ext_cond_bx_0(5); -- single_ext_i344
single_ext_i345 <= ext_cond_bx_0(6); -- single_ext_i345
single_ext_i346 <= ext_cond_bx_0(9); -- single_ext_i346
single_ext_i347 <= ext_cond_bx_0(10); -- single_ext_i347
single_ext_i350 <= ext_cond_bx_0(22); -- single_ext_i350
single_ext_i351 <= ext_cond_bx_0(23); -- single_ext_i351
single_ext_i352 <= ext_cond_bx_0(19); -- single_ext_i352
single_ext_i353 <= ext_cond_bx_0(11); -- single_ext_i353
single_ext_i354 <= ext_cond_bx_0(17); -- single_ext_i354
single_ext_i355 <= ext_cond_bx_0(21); -- single_ext_i355
single_ext_i356 <= ext_cond_bx_0(18); -- single_ext_i356
single_ext_i357 <= ext_cond_bx_0(8); -- single_ext_i357
single_ext_i358 <= ext_cond_bx_0(16); -- single_ext_i358
single_ext_i359 <= ext_cond_bx_0(20); -- single_ext_i359
single_ext_i360 <= ext_cond_bx_0(0); -- single_ext_i360
single_ext_i361 <= ext_cond_bx_0(1); -- single_ext_i361
single_ext_i362 <= ext_cond_bx_0(2); -- single_ext_i362
single_ext_i363 <= ext_cond_bx_0(3); -- single_ext_i363
single_ext_i365 <= ext_cond_bx_0(32); -- single_ext_i365
single_ext_i366 <= ext_cond_bx_0(35); -- single_ext_i366
single_ext_i367 <= ext_cond_bx_0(40); -- single_ext_i367
single_ext_i368 <= ext_cond_bx_0(41); -- single_ext_i368
single_ext_i369 <= ext_cond_bx_0(42); -- single_ext_i369
single_ext_i370 <= ext_cond_bx_0(43); -- single_ext_i370
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
    mu_data_bx_0_l: for i in 0 to NR_MU_OBJECTS-1 generate
        mu_pt_vector_bx_0(i)(MU_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(MU_PT_LUT(CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.pt_high downto D_S_I_MU_V2.pt_low))), MU_PT_VECTOR_WIDTH);
        mu_upt_vector_bx_0(i)(MU_UPT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(MU_UPT_LUT(CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.upt_high downto D_S_I_MU_V2.upt_low))), MU_UPT_VECTOR_WIDTH);
        mu_eta_integer_bx_0(i) <= CONV_INTEGER(signed(mu_bx_0(i)(D_S_I_MU_V2.eta_high downto D_S_I_MU_V2.eta_low)));
        mu_phi_integer_bx_0(i) <= CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low));
        mu_cos_phi_bx_0(i) <= MUON_COS_PHI_LUT(CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low)));
        mu_sin_phi_bx_0(i) <= MUON_SIN_PHI_LUT(CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low)));
    end generate mu_data_bx_0_l;
    tau_data_bx_0_l: for i in 0 to NR_TAU_OBJECTS-1 generate
        tau_pt_vector_bx_0(i)(TAU_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(TAU_PT_LUT(CONV_INTEGER(tau_bx_0(i)(D_S_I_TAU_V2.et_high downto D_S_I_TAU_V2.et_low))), TAU_PT_VECTOR_WIDTH);
        tau_eta_integer_bx_0(i) <= CONV_INTEGER(signed(tau_bx_0(i)(D_S_I_TAU_V2.eta_high downto D_S_I_TAU_V2.eta_low)));
        tau_phi_integer_bx_0(i) <= CONV_INTEGER(tau_bx_0(i)(D_S_I_TAU_V2.phi_high downto D_S_I_TAU_V2.phi_low));
        tau_cos_phi_bx_0(i) <= CALO_COS_PHI_LUT(CONV_INTEGER(tau_bx_0(i)(D_S_I_TAU_V2.phi_high downto D_S_I_TAU_V2.phi_low)));
        tau_sin_phi_bx_0(i) <= CALO_SIN_PHI_LUT(CONV_INTEGER(tau_bx_0(i)(D_S_I_TAU_V2.phi_high downto D_S_I_TAU_V2.phi_low)));
        conv_tau_cos_phi_bx_0(i) <= MUON_COS_PHI_LUT(tau_phi_conv_2_muon_phi_integer_bx_0(i));
        conv_tau_sin_phi_bx_0(i) <= MUON_SIN_PHI_LUT(tau_phi_conv_2_muon_phi_integer_bx_0(i));
    end generate tau_data_bx_0_l;

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
    jet_tau_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_JET_OBJECTS-1 generate
        jet_tau_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_TAU_OBJECTS-1 generate
            jet_tau_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_TAU_COSH_DETA_LUT(diff_jet_tau_bx_0_bx_0_eta_integer(i,j)), JET_TAU_COSH_COS_VECTOR_WIDTH);
            jet_tau_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_TAU_COS_DPHI_LUT(diff_jet_tau_bx_0_bx_0_phi_integer(i,j)), JET_TAU_COSH_COS_VECTOR_WIDTH);
            jet_tau_bx_0_bx_0_deta_bin_vector(i,j) <= CONV_STD_LOGIC_VECTOR(diff_jet_tau_bx_0_bx_0_eta_integer(i,j), JET_TAU_DETA_BINS_WIDTH);
            jet_tau_bx_0_bx_0_dphi_bin_vector(i,j) <= CONV_STD_LOGIC_VECTOR(diff_jet_tau_bx_0_bx_0_phi_integer(i,j), JET_TAU_DPHI_BINS_WIDTH);
        end generate jet_tau_bx_0_bx_0_cosh_cos_l2;
    end generate jet_tau_bx_0_bx_0_cosh_cos_l1;


-- Instantiations of conditions
double_eg_i169_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"001E", X"0014", X"0000", X"0000"),
        nr_eta_windows => (1, 1, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0039", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"00C6", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 2
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => double_eg_i169
    );

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

double_eg_i176_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"002C", X"0014", X"0000", X"0000"),
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
        condition_o => double_eg_i176
    );

double_eg_i180_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0030", X"0030", X"0000", X"0000"),
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
        condition_o => double_eg_i180
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

double_jet_i302_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => JET_TYPE,
        pt_thresholds => (X"00A0", X"008C", X"0000", X"0000"),
        nr_eta_windows => (1, 1, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0039", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"00C6", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 2
    )
    port map(
        lhc_clk,
        jet_bx_0,
        condition_o => double_jet_i302
    );

double_tau_i205_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => TAU_TYPE,
        pt_thresholds => (X"003C", X"003C", X"0000", X"0000"),
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
        condition_o => double_tau_i205
    );

quad_jet_i308_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => JET_TYPE,
        pt_thresholds => (X"0078", X"0078", X"0078", X"0078"),
        nr_eta_windows => (1, 1, 1, 1),
        eta_w1_upper_limits => (X"0039", X"0039", X"0039", X"0039"),
        eta_w1_lower_limits => (X"00C6", X"00C6", X"00C6", X"00C6"),
        -- no correlation cuts
        nr_templates => 4
    )
    port map(
        lhc_clk,
        jet_bx_0,
        condition_o => quad_jet_i308
    );

single_eg_i127_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"001E", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => single_eg_i127
    );

single_eg_i131_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0038", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => single_eg_i131
    );

single_eg_i137_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0050", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => single_eg_i137
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

single_eg_i148_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0038", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0022", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00DD", X"0000", X"0000", X"0000"),
        iso_luts => (X"C", X"F", X"F", X"F"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => single_eg_i148
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

single_eg_i155_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0034", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0022", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00DD", X"0000", X"0000", X"0000"),
        iso_luts => (X"A", X"F", X"F", X"F"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => single_eg_i155
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

single_eg_i165_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0044", X"0000", X"0000", X"0000"),
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
        condition_o => single_eg_i165
    );

single_eg_i79_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"002E", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => single_eg_i79
    );

single_eg_i80_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0028", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => single_eg_i80
    );

single_eg_i82_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0028", X"0000", X"0000", X"0000"),
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
        condition_o => single_eg_i82
    );

single_eg_i83_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"002E", X"0000", X"0000", X"0000"),
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
        condition_o => single_eg_i83
    );

single_eg_i90_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0012", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => single_eg_i90
    );

single_jet_i239_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => JET_TYPE,
        pt_thresholds => (X"0046", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        jet_bx_0,
        condition_o => single_jet_i239
    );

single_jet_i241_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => JET_TYPE,
        pt_thresholds => (X"00B4", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        jet_bx_0,
        condition_o => single_jet_i241
    );

single_jet_i249_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => JET_TYPE,
        pt_thresholds => (X"0140", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        jet_bx_0,
        condition_o => single_jet_i249
    );

single_jet_i257_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => JET_TYPE,
        pt_thresholds => (X"00F0", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"00BA", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"008D", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        jet_bx_0,
        condition_o => single_jet_i257
    );

single_jet_i258_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => JET_TYPE,
        pt_thresholds => (X"00F0", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0072", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"0045", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        jet_bx_0,
        condition_o => single_jet_i258
    );

triple_eg_i183_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0024", X"0022", X"0010", X"0000"),
        nr_eta_windows => (1, 1, 1, 0),
        eta_w1_upper_limits => (X"0039", X"0039", X"0039", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"00C6", X"00C6", X"0000"),
        -- no correlation cuts
        nr_templates => 3
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => triple_eg_i183
    );

triple_jet_i301_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => JET_TYPE,
        pt_thresholds => (X"00C8", X"00A0", X"008C", X"0000"),
        -- no correlation cuts
        nr_templates => 3
    )
    port map(
        lhc_clk,
        jet_bx_0,
        condition_o => triple_jet_i301
    );

double_mu_i33_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0001", X"0001", X"0000", X"0000"),
        qual_luts => (X"FFF0", X"FFF0", X"FFFF", X"FFFF"),
        -- no correlation cuts
        nr_templates => 2
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => double_mu_i33
    );

double_mu_i38_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0011", X"0011", X"0000", X"0000"),
        qual_luts => (X"F000", X"F000", X"FFFF", X"FFFF"),
        -- no correlation cuts
        nr_templates => 2
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => double_mu_i38
    );

double_mu_i40_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0019", X"000B", X"0000", X"0000"),
        qual_luts => (X"FF00", X"FF00", X"FFFF", X"FFFF"),
        -- no correlation cuts
        nr_templates => 2
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => double_mu_i40
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

double_mu_i45_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0025", X"0025", X"0000", X"0000"),
        nr_eta_windows => (1, 1, 0, 0),
        eta_w1_upper_limits => (X"00C1", X"00C1", X"0000", X"0000"),
        eta_w1_lower_limits => (X"013F", X"013F", X"0000", X"0000"),
        qual_luts => (X"F000", X"F000", X"FFFF", X"FFFF"),
        -- no correlation cuts
        nr_templates => 2
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => double_mu_i45
    );

double_mu_i48_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0001", X"0001", X"0000", X"0000"),
        nr_eta_windows => (1, 1, 0, 0),
        eta_w1_upper_limits => (X"008A", X"008A", X"0000", X"0000"),
        eta_w1_lower_limits => (X"0176", X"0176", X"0000", X"0000"),
        qual_luts => (X"F000", X"F000", X"FFFF", X"FFFF"),
        -- no correlation cuts
        nr_templates => 2
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => double_mu_i48
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

double_mu_i89_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0009", X"0009", X"0000", X"0000"),
        qual_luts => (X"F000", X"F000", X"FFFF", X"FFFF"),
        -- no correlation cuts
        nr_templates => 2
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => double_mu_i89
    );

double_mu_i91_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"000B", X"000B", X"0000", X"0000"),
        qual_luts => (X"F000", X"F000", X"FFFF", X"FFFF"),
        -- no correlation cuts
        nr_templates => 2
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => double_mu_i91
    );

single_mu_i10_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"000B", X"0000", X"0000", X"0000"),
        qual_luts => (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => single_mu_i10
    );

single_mu_i12_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"000F", X"0000", X"0000", X"0000"),
        qual_luts => (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => single_mu_i12
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

single_mu_i22_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"002D", X"0000", X"0000", X"0000"),
        nr_eta_windows => (2, 0, 0, 0),
        eta_w1_upper_limits => (X"00E1", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"0073", X"0000", X"0000", X"0000"),
        eta_w2_upper_limits => (X"018D", X"0000", X"0000", X"0000"),
        eta_w2_lower_limits => (X"011F", X"0000", X"0000", X"0000"),
        qual_luts => (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => single_mu_i22
    );

single_mu_i235_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0001", X"0000", X"0000", X"0000"),
        upt_cuts => (true, false, false, false),
        upt_upper_limits => (X"00FF", X"0000", X"0000", X"0000"),
        upt_lower_limits => (X"0065", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => single_mu_i235
    );

single_mu_i238_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0001", X"0000", X"0000", X"0000"),
        qual_luts => (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        upt_cuts => (true, false, false, false),
        upt_upper_limits => (X"00FF", X"0000", X"0000", X"0000"),
        upt_lower_limits => (X"0065", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => single_mu_i238
    );

single_mu_i28_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0015", X"0000", X"0000", X"0000"),
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
        condition_o => single_mu_i28
    );

single_mu_i29_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0019", X"0000", X"0000", X"0000"),
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
        condition_o => single_mu_i29
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

triple_mu_i60_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0001", X"0001", X"0001", X"0000"),
        qual_luts => (X"FFF0", X"FFF0", X"FFF0", X"FFFF"),
        -- no correlation cuts
        nr_templates => 3
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => triple_mu_i60
    );

triple_mu_i63_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0007", X"0007", X"0007", X"0000"),
        qual_luts => (X"FF00", X"FF00", X"FF00", X"FFFF"),
        -- no correlation cuts
        nr_templates => 3
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => triple_mu_i63
    );

triple_mu_i65_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"000B", X"0007", X"0001", X"0000"),
        qual_luts => (X"F000", X"F000", X"FFF0", X"FFFF"),
        -- no correlation cuts
        nr_templates => 3
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => triple_mu_i65
    );

triple_mu_i75_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"000B", X"0007", X"0001", X"0000"),
        qual_luts => (X"F000", X"F000", X"FF00", X"FFFF"),
        -- no correlation cuts
        nr_templates => 3
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => triple_mu_i75
    );

single_etm_i323_i: entity work.esums_conditions
    generic map(
        et_threshold => X"00F0",
        obj_type => ETM_TYPE
    )
    port map(
        lhc_clk,
        etm_bx_0,
        condition_o => single_etm_i323
    );

single_ett_i321_i: entity work.esums_conditions
    generic map(
        et_threshold => X"0C80",
        obj_type => ETT_TYPE
    )
    port map(
        lhc_clk,
        ett_bx_0,
        condition_o => single_ett_i321
    );

single_htt_i316_i: entity work.esums_conditions
    generic map(
        et_threshold => X"01FE",
        obj_type => HTT_TYPE
    )
    port map(
        lhc_clk,
        htt_bx_0,
        condition_o => single_htt_i316
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

calo_calo_correlation_i187_i: entity work.calo_calo_correlation_condition
    generic map(
      -- obj cuts
        nr_calo1_objects => NR_EG_OBJECTS,
        obj_type_calo1 => EG_TYPE,
        pt_threshold_calo1 => X"0038",
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
        condition_o => calo_calo_correlation_i187
    );

invariant_mass_i211_i: entity work.calo_calo_correlation_condition
    generic map(
      -- obj cuts
        nr_calo1_objects => NR_TAU_OBJECTS,
        obj_type_calo1 => TAU_TYPE,
        pt_threshold_calo1 => X"003C",
        nr_eta_windows_calo1 => 1,
        eta_w1_upper_limit_calo1 => X"0030",
        eta_w1_lower_limit_calo1 => X"00CF",
        iso_lut_calo1 => X"E",
        nr_calo2_objects => NR_TAU_OBJECTS,
        obj_type_calo2 => TAU_TYPE,
        pt_threshold_calo2 => X"003C",
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
        mass_upper_limit => X"000000001823CF40",
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
        condition_o => invariant_mass_i211
    );

invariant_mass_i268_i: entity work.calo_calo_correlation_condition
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
        mass_lower_limit => X"00000000430E2340",
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
        condition_o => invariant_mass_i268
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

invariant_mass_ov_rm_i296_i: entity work.calo_calo_calo_correlation_orm_condition
    generic map(
        dr_orm_cut => true,
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,

      -- obj cuts
        nr_calo1_objects => NR_JET_OBJECTS,
        obj_type_calo1 => JET_TYPE,
        pt_threshold_calo1 => X"00A0",
        nr_calo2_objects => NR_JET_OBJECTS,
        obj_type_calo2 => JET_TYPE,
        pt_threshold_calo2 => X"003C",
        obj_type_calo3 => TAU_TYPE,
        pt_threshold_calo3 => X"0050",
        iso_lut_calo3 => X"E",
        -- correlation cuts orm
        dr_orm_upper_limit_vector => X"000000000000A028",
        dr_orm_lower_limit_vector => X"0000000000000000",

    -- correlation cuts
        pt1_width => JET_PT_VECTOR_WIDTH,
        pt2_width => JET_PT_VECTOR_WIDTH,
        mass_cosh_cos_precision => JET_JET_COSH_COS_PRECISION,
        cosh_cos_width => JET_JET_COSH_COS_VECTOR_WIDTH,
        mass_upper_limit_vector => X"00041A6642C78140",
        mass_lower_limit_vector => X"000000020DB68500",
        -- selector one or two objects with orm
        obj_2plus1 => true
    )
    port map(
        lhc_clk,
        jet_bx_0,
        jet_bx_0,
        tau_bx_0,
        diff_eta_orm => diff_jet_tau_bx_0_bx_0_eta_vector,
        diff_phi_orm => diff_jet_tau_bx_0_bx_0_phi_vector,
        diff_eta => diff_jet_jet_bx_0_bx_0_eta_vector,
        diff_phi => diff_jet_jet_bx_0_bx_0_phi_vector,
        pt1 => jet_pt_vector_bx_0,
        pt2 => jet_pt_vector_bx_0,
        cosh_deta => jet_jet_bx_0_bx_0_cosh_deta_vector,
        cos_dphi => jet_jet_bx_0_bx_0_cos_dphi_vector,
        condition_o => invariant_mass_ov_rm_i296
    );

calo_muon_correlation_i101_i: entity work.calo_muon_correlation_condition
    generic map(
      -- calo obj cuts
        obj_type_calo => JET_TYPE,
        pt_threshold_calo => X"00F0",
        nr_eta_windows_calo => 1,
        eta_w1_upper_limit_calo => X"0039",
        eta_w1_lower_limit_calo => X"00C6",
      -- muon obj cuts
        pt_threshold_muon => X"0007",
        qual_lut_muon => X"F000",
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
        condition_o => calo_muon_correlation_i101
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

invariant_mass_i59_i: entity work.muon_muon_correlation_condition
    generic map(
      -- obj cuts
        pt_threshold_muon1 => X"000A",
        nr_eta_windows_muon1 => 1,
        eta_w1_upper_limit_muon1 => X"00B8",
        eta_w1_lower_limit_muon1 => X"0148",
        qual_lut_muon1 => X"F000",
        pt_threshold_muon2 => X"000A",
        nr_eta_windows_muon2 => 1,
        eta_w1_upper_limit_muon2 => X"00B8",
        eta_w1_lower_limit_muon2 => X"0148",
        qual_lut_muon2 => X"F000",
        -- charge correlation cut
        requested_charge_correlation => "os",
    
    -- correlation cuts
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        mass_upper_limit => X"0000000009A7EC80",
        mass_lower_limit => X"000000000175D720",
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
        condition_o => invariant_mass_i59
    );

invariant_mass_i74_i: entity work.muon_muon_correlation_condition
    generic map(
      -- obj cuts
        pt_threshold_muon1 => X"000B",
        qual_lut_muon1 => X"F000",
        pt_threshold_muon2 => X"0007",
        qual_lut_muon2 => X"F000",
        -- charge correlation cut
        requested_charge_correlation => "os",
    
    -- correlation cuts
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        mass_upper_limit => X"000000000269FB20",
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
        condition_o => invariant_mass_i74
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


-- 6 L1_SingleMu0_BMTF : MU0[MU-QLTY_SNGL,MU-ETA_BMTF]
l1_single_mu0_bmtf <= single_mu_i6;
algo(50) <= l1_single_mu0_bmtf;

-- 10 L1_SingleMu5 : MU5[MU-QLTY_SNGL]
l1_single_mu5 <= single_mu_i10;
algo(55) <= l1_single_mu5;

-- 12 L1_SingleMu7 : MU7[MU-QLTY_SNGL]
l1_single_mu7 <= single_mu_i12;
algo(59) <= l1_single_mu7;

-- 17 L1_SingleMu18 : MU18[MU-QLTY_SNGL]
l1_single_mu18 <= single_mu_i17;
algo(53) <= l1_single_mu18;

-- 22 L1_SingleMu22_EMTF : MU22[MU-QLTY_SNGL,MU-ETA_EMTF_POS,MU-ETA_EMTF_NEG]
l1_single_mu22_emtf <= single_mu_i22;
algo(54) <= l1_single_mu22_emtf;

-- 29 L1_SingleMu10er1p5 : MU10[MU-QLTY_SNGL,MU-ETA_1p5]
l1_single_mu10er1p5 <= single_mu_i28;
algo(51) <= l1_single_mu10er1p5;

-- 30 L1_SingleMu12er1p5 : MU12[MU-QLTY_SNGL,MU-ETA_1p5]
l1_single_mu12er1p5 <= single_mu_i29;
algo(52) <= l1_single_mu12er1p5;

-- 39 L1_DoubleMu0_OQ : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]}
l1_double_mu0_oq <= double_mu_i33;
algo(65) <= l1_double_mu0_oq;

-- 44 L1_DoubleMu8_SQ : comb{MU8[MU-QLTY_SNGL],MU8[MU-QLTY_SNGL]}
l1_double_mu8_sq <= double_mu_i38;
algo(69) <= l1_double_mu8_sq;

-- 46 L1_DoubleMu_12_5 : comb{MU12[MU-QLTY_DBLE],MU5[MU-QLTY_DBLE]}
l1_double_mu_12_5 <= double_mu_i40;
algo(70) <= l1_double_mu_12_5;

-- 48 L1_DoubleMu_15_7 : comb{MU15[MU-QLTY_DBLE],MU7[MU-QLTY_DBLE]}
l1_double_mu_15_7 <= double_mu_i42;
algo(71) <= l1_double_mu_15_7;

-- 51 L1_DoubleMu18er2p1 : comb{MU18[MU-QLTY_SNGL,MU-ETA_2p10],MU18[MU-QLTY_SNGL,MU-ETA_2p10]}
l1_double_mu18er2p1 <= double_mu_i45;
algo(67) <= l1_double_mu18er2p1;

-- 53 L1_DoubleMu0er2p0_SQ_dR_Max1p4 : dist{MU0[MU-QLTY_SNGL,MU-ETA_2p0],MU0[MU-QLTY_SNGL,MU-ETA_2p0]}[DR_1p4]
l1_double_mu0er2p0_sq_d_r_max1p4 <= muon_muon_correlation_i46;
algo(80) <= l1_double_mu0er2p0_sq_d_r_max1p4;

-- 55 L1_DoubleMu0er1p5_SQ : comb{MU0[MU-QLTY_SNGL,MU-ETA_1p5],MU0[MU-QLTY_SNGL,MU-ETA_1p5]}
l1_double_mu0er1p5_sq <= double_mu_i48;
algo(66) <= l1_double_mu0er1p5_sq;

-- 59 L1_DoubleMu0er1p4_SQ_OS_dR_Max1p4 : dist{MU0[MU-QLTY_SNGL,MU-ETA_1p4],MU0[MU-QLTY_SNGL,MU-ETA_1p4]}[DR_1p4,CHGCOR_OS]
l1_double_mu0er1p4_sq_os_d_r_max1p4 <= muon_muon_correlation_i52;
algo(79) <= l1_double_mu0er1p4_sq_os_d_r_max1p4;

-- 62 L1_DoubleMu4p5_SQ_OS : comb{MU4p5[MU-QLTY_SNGL],MU4p5[MU-QLTY_SNGL]}[CHGCOR_OS]
l1_double_mu4p5_sq_os <= double_mu_i55;
algo(68) <= l1_double_mu4p5_sq_os;

-- 66 L1_DoubleMu4p5er2p0_SQ_OS_Mass7to18 : mass_inv{MU4p5[MU-QLTY_SNGL,MU-ETA_2p0],MU4p5[MU-QLTY_SNGL,MU-ETA_2p0]}[MASS_MASS_7to18,CHGCOR_OS]
l1_double_mu4p5er2p0_sq_os_mass7to18 <= invariant_mass_i59;
algo(81) <= l1_double_mu4p5er2p0_sq_os_mass7to18;

-- 71 L1_TripleMu0_OQ : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]}
l1_triple_mu0_oq <= triple_mu_i60;
algo(74) <= l1_triple_mu0_oq;

-- 74 L1_TripleMu3 : comb{MU3[MU-QLTY_DBLE],MU3[MU-QLTY_DBLE],MU3[MU-QLTY_DBLE]}
l1_triple_mu3 <= triple_mu_i63;
algo(75) <= l1_triple_mu3;

-- 76 L1_TripleMu_5SQ_3SQ_0OQ : comb{MU5[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL],MU0[MU-QLTY_OPEN]}
l1_triple_mu_5_sq_3_sq_0_oq <= triple_mu_i65;
algo(76) <= l1_triple_mu_5_sq_3_sq_0_oq;

-- 85 L1_TripleMu_5SQ_3SQ_0OQ_DoubleMu_5_3_SQ_OS_Mass_Max9 : comb{MU5[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL],MU0[MU-QLTY_OPEN]} AND mass_inv{MU5[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]}[MASS_MASS_0to9,CHGCOR_OS]
l1_triple_mu_5_sq_3_sq_0_oq_double_mu_5_3_sq_os_mass_max9 <= triple_mu_i65 and invariant_mass_i74;
algo(77) <= l1_triple_mu_5_sq_3_sq_0_oq_double_mu_5_3_sq_os_mass_max9;

-- 86 L1_TripleMu_5SQ_3SQ_0_DoubleMu_5_3_SQ_OS_Mass_Max9 : comb{MU5[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL],MU0[MU-QLTY_DBLE]} AND mass_inv{MU5[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]}[MASS_MASS_0to9,CHGCOR_OS]
l1_triple_mu_5_sq_3_sq_0_double_mu_5_3_sq_os_mass_max9 <= triple_mu_i75 and invariant_mass_i74;
algo(78) <= l1_triple_mu_5_sq_3_sq_0_double_mu_5_3_sq_os_mass_max9;

-- 96 L1_Mu5_EG23er2p5 : MU5[MU-QLTY_SNGL] AND EG23[EG-ETA_2p52]
l1_mu5_eg23er2p5 <= single_mu_i10 and single_eg_i79;
algo(57) <= l1_mu5_eg23er2p5;

-- 97 L1_Mu7_EG20er2p5 : MU7[MU-QLTY_SNGL] AND EG20[EG-ETA_2p52]
l1_mu7_eg20er2p5 <= single_mu_i12 and single_eg_i80;
algo(56) <= l1_mu7_eg20er2p5;

-- 98 L1_Mu7_EG23er2p5 : MU7[MU-QLTY_SNGL] AND EG23[EG-ETA_2p52]
l1_mu7_eg23er2p5 <= single_mu_i12 and single_eg_i79;
algo(58) <= l1_mu7_eg23er2p5;

-- 100 L1_Mu5_LooseIsoEG20er2p5 : MU5[MU-QLTY_SNGL] AND EG20[EG-ETA_2p52,EG-ISO_0xC]
l1_mu5_loose_iso_eg20er2p5 <= single_mu_i10 and single_eg_i82;
algo(60) <= l1_mu5_loose_iso_eg20er2p5;

-- 101 L1_Mu7_LooseIsoEG20er2p5 : MU7[MU-QLTY_SNGL] AND EG20[EG-ETA_2p52,EG-ISO_0xC]
l1_mu7_loose_iso_eg20er2p5 <= single_mu_i12 and single_eg_i82;
algo(61) <= l1_mu7_loose_iso_eg20er2p5;

-- 102 L1_Mu7_LooseIsoEG23er2p5 : MU7[MU-QLTY_SNGL] AND EG23[EG-ETA_2p52,EG-ISO_0xC]
l1_mu7_loose_iso_eg23er2p5 <= single_mu_i12 and single_eg_i83;
algo(62) <= l1_mu7_loose_iso_eg23er2p5;

-- 109 L1_DoubleMu4_SQ_EG9er2p5 : comb{MU4[MU-QLTY_SNGL],MU4[MU-QLTY_SNGL]} AND EG9[EG-ETA_2p52]
l1_double_mu4_sq_eg9er2p5 <= double_mu_i89 and single_eg_i90;
algo(72) <= l1_double_mu4_sq_eg9er2p5;

-- 110 L1_DoubleMu5_SQ_EG9er2p5 : comb{MU5[MU-QLTY_SNGL],MU5[MU-QLTY_SNGL]} AND EG9[EG-ETA_2p52]
l1_double_mu5_sq_eg9er2p5 <= double_mu_i91 and single_eg_i90;
algo(73) <= l1_double_mu5_sq_eg9er2p5;

-- 125 L1_Mu3_Jet120er2p5_dR_Max0p8 : dist{MU3[MU-QLTY_SNGL],JET120[JET-ETA_2p52]}[DR_MAX_0p8]
l1_mu3_jet120er2p5_d_r_max0p8 <= calo_muon_correlation_i101;
algo(87) <= l1_mu3_jet120er2p5_d_r_max0p8;

-- 134 L1_Mu10er2p3_Jet32er2p3_dR_Max0p4_DoubleJet32er2p3_dEta_Max1p6 : dist{MU10[MU-QLTY_SNGL,MU-ETA_2p3],JET32[JET-ETA_2p3]}[DR_MAX_0p4] AND dist{JET32[JET-ETA_2p3],JET32[JET-ETA_2p3]}[DETA_MAX_1p6]
l1_mu10er2p3_jet32er2p3_d_r_max0p4_double_jet32er2p3_d_eta_max1p6 <= calo_muon_correlation_i109 and calo_calo_correlation_i110;
algo(88) <= l1_mu10er2p3_jet32er2p3_d_r_max0p4_double_jet32er2p3_d_eta_max1p6;

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

-- 235 L1_LooseIsoEG28er2p1_Jet34er2p5_dR_Min0p3 : dist{EG28[EG-ETA_2p13,EG-ISO_0xC],JET34[JET-ETA_2p52]}[DR_MIN_0p3]
l1_loose_iso_eg28er2p1_jet34er2p5_d_r_min0p3 <= calo_calo_correlation_i187;
algo(86) <= l1_loose_iso_eg28er2p1_jet34er2p5_d_r_min0p3;

-- 270 L1_DoubleIsoTau30er2p1 : comb{TAU30[TAU-ETA_2p13,TAU-ISO_0xE],TAU30[TAU-ETA_2p13,TAU-ISO_0xE]}
l1_double_iso_tau30er2p1 <= double_tau_i205;
algo(43) <= l1_double_iso_tau30er2p1;

-- 276 L1_DoubleIsoTau30er2p1_Mass_Max90 : mass_inv{TAU30[TAU-ETA_2p13,TAU-ISO_0xE],TAU30[TAU-ETA_2p13,TAU-ISO_0xE]}[MASS_MAX_90]
l1_double_iso_tau30er2p1_mass_max90 <= invariant_mass_i211;
algo(83) <= l1_double_iso_tau30er2p1_mass_max90;

-- 305 L1_Mu0upt100 : MU0[MU-UPT_100]
l1_mu0upt100 <= single_mu_i235;
algo(49) <= l1_mu0upt100;

-- 308 L1_SingleMuOpenupt100 : MU0[MU-QLTY_SNGL,MU-UPT_100]
l1_single_mu_openupt100 <= single_mu_i238;
algo(63) <= l1_single_mu_openupt100;

-- 309 L1_SingleJet35 : JET35
l1_single_jet35 <= single_jet_i239;
algo(36) <= l1_single_jet35;

-- 311 L1_SingleJet90 : JET90
l1_single_jet90 <= single_jet_i241;
algo(37) <= l1_single_jet90;

-- 321 L1_SingleJet160er2p5 : JET160[JET-ETA_2p52]
l1_single_jet160er2p5 <= single_jet_i249;
algo(35) <= l1_single_jet160er2p5;

-- 327 L1_SingleJet120_FWD3p0 : JET120[JET-ETA_FWD_3p00_NEG] OR JET120[JET-ETA_FWD_3p00_POS]
l1_single_jet120_fwd3p0 <= single_jet_i257 or single_jet_i258;
algo(46) <= l1_single_jet120_fwd3p0;

-- 341 L1_DoubleJet100er2p5 : comb{JET100[JET-ETA_2p52],JET100[JET-ETA_2p52]}
l1_double_jet100er2p5 <= double_jet_i263;
algo(44) <= l1_double_jet100er2p5;

-- 348 L1_DoubleJet30er2p5_Mass_Min150_dEta_Max1p5 : mass_inv{JET30[JET-ETA_2p52],JET30[JET-ETA_2p52]}[MASS_MIN_150,DETA_MAX_1p5]
l1_double_jet30er2p5_mass_min150_d_eta_max1p5 <= invariant_mass_i268;
algo(84) <= l1_double_jet30er2p5_mass_min150_d_eta_max1p5;

-- 353 L1_DoubleJet30er2p5_Mass_Min360_dEta_Max1p5 : mass_inv{JET30[JET-ETA_2p52],JET30[JET-ETA_2p52]}[MASS_MIN_360,DETA_MAX_1p5]
l1_double_jet30er2p5_mass_min360_d_eta_max1p5 <= invariant_mass_i273;
algo(85) <= l1_double_jet30er2p5_mass_min360_d_eta_max1p5;

-- 364 L1_DoubleJet_80_30_Mass_Min420_IsoTau40_RmOvlp : mass_inv_orm{JET80,JET30,TAU40[TAU-ISO_0xE]}[MASS_MIN_420,ORMDR_0p2]
l1_double_jet_80_30_mass_min420_iso_tau40_rm_ovlp <= invariant_mass_ov_rm_i296;
algo(89) <= l1_double_jet_80_30_mass_min420_iso_tau40_rm_ovlp;

-- 373 L1_TripleJet_100_80_70_DoubleJet_80_70_er2p5 : comb{JET100,JET80,JET70} AND comb{JET80[JET-ETA_2p52],JET70[JET-ETA_2p52]}
l1_triple_jet_100_80_70_double_jet_80_70_er2p5 <= triple_jet_i301 and double_jet_i302;
algo(64) <= l1_triple_jet_100_80_70_double_jet_80_70_er2p5;

-- 382 L1_QuadJet60er2p5 : comb{JET60[JET-ETA_2p52],JET60[JET-ETA_2p52],JET60[JET-ETA_2p52],JET60[JET-ETA_2p52]}
l1_quad_jet60er2p5 <= quad_jet_i308;
algo(82) <= l1_quad_jet60er2p5;

-- 401 L1_HTT255er : HTT255
l1_htt255er <= single_htt_i316;
algo(27) <= l1_htt255er;

-- 411 L1_ETT1600 : ETT1600
l1_ett1600 <= single_ett_i321;
algo(26) <= l1_ett1600;

-- 416 L1_ETM120 : ETM120
l1_etm120 <= single_etm_i323;
algo(25) <= l1_etm120;

-- 465 L1_BptxXOR : (EXT_BPTX_B1_VME AND ( NOT EXT_BPTX_B2_VME)) OR (EXT_BPTX_B2_VME AND ( NOT EXT_BPTX_B1_VME))
l1_bptx_xor <= ( single_ext_i344 and ( not single_ext_i345 ) ) or ( single_ext_i345 and ( not single_ext_i344 ) );
algo(13) <= l1_bptx_xor;

-- 466 L1_BptxPlus : EXT_BPTX_B1_VME
l1_bptx_plus <= single_ext_i344;
algo(12) <= l1_bptx_plus;

-- 467 L1_BptxMinus : EXT_BPTX_B2_VME
l1_bptx_minus <= single_ext_i345;
algo(11) <= l1_bptx_minus;

-- 468 L1_UnpairedBunchBptxPlus : EXT_BPTX_B1NotB2_VME
l1_unpaired_bunch_bptx_plus <= single_ext_i346;
algo(24) <= l1_unpaired_bunch_bptx_plus;

-- 469 L1_UnpairedBunchBptxMinus : EXT_BPTX_B2NotB1_VME
l1_unpaired_bunch_bptx_minus <= single_ext_i347;
algo(23) <= l1_unpaired_bunch_bptx_minus;

-- 478 L1_LastCollisionInTrain : EXT_BPTX_LastCollisionInTrain_VME
l1_last_collision_in_train <= single_ext_i350;
algo(18) <= l1_last_collision_in_train;

-- 479 L1_FirstCollisionInTrain : EXT_BPTX_FirstCollisionInTrain_VME
l1_first_collision_in_train <= single_ext_i351;
algo(15) <= l1_first_collision_in_train;

-- 480 L1_FirstCollisionInOrbit : EXT_BPTX_FirstCollidingBunch_VME
l1_first_collision_in_orbit <= single_ext_i352;
algo(14) <= l1_first_collision_in_orbit;

-- 482 L1_BPTX_NotOR_VME : EXT_BPTX_NotOR_VME
l1_bptx_not_or_vme <= single_ext_i353;
algo(7) <= l1_bptx_not_or_vme;

-- 483 L1_BPTX_OR_Ref3_VME : EXT_BPTX_OR_Ref3_VME
l1_bptx_or_ref3_vme <= single_ext_i354;
algo(8) <= l1_bptx_or_ref3_vme;

-- 484 L1_BPTX_OR_Ref4_VME : EXT_BPTX_OR_Ref4_VME
l1_bptx_or_ref4_vme <= single_ext_i355;
algo(9) <= l1_bptx_or_ref4_vme;

-- 485 L1_BPTX_RefAND_VME : EXT_BPTX_RefAND_VME
l1_bptx_ref_and_vme <= single_ext_i356;
algo(10) <= l1_bptx_ref_and_vme;

-- 486 L1_BPTX_AND_Ref1_VME : EXT_BPTX_AND_Ref1_VME
l1_bptx_and_ref1_vme <= single_ext_i357;
algo(0) <= l1_bptx_and_ref1_vme;

-- 487 L1_BPTX_AND_Ref3_VME : EXT_BPTX_AND_Ref3_VME
l1_bptx_and_ref3_vme <= single_ext_i358;
algo(1) <= l1_bptx_and_ref3_vme;

-- 488 L1_BPTX_AND_Ref4_VME : EXT_BPTX_AND_Ref4_VME
l1_bptx_and_ref4_vme <= single_ext_i359;
algo(2) <= l1_bptx_and_ref4_vme;

-- 489 L1_BPTX_BeamGas_Ref1_VME : EXT_BPTX_BeamGas_Ref1_VME
l1_bptx_beam_gas_ref1_vme <= single_ext_i360;
algo(5) <= l1_bptx_beam_gas_ref1_vme;

-- 490 L1_BPTX_BeamGas_Ref2_VME : EXT_BPTX_BeamGas_Ref2_VME
l1_bptx_beam_gas_ref2_vme <= single_ext_i361;
algo(6) <= l1_bptx_beam_gas_ref2_vme;

-- 491 L1_BPTX_BeamGas_B1_VME : EXT_BPTX_BeamGas_B1_VME
l1_bptx_beam_gas_b1_vme <= single_ext_i362;
algo(3) <= l1_bptx_beam_gas_b1_vme;

-- 492 L1_BPTX_BeamGas_B2_VME : EXT_BPTX_BeamGas_B2_VME
l1_bptx_beam_gas_b2_vme <= single_ext_i363;
algo(4) <= l1_bptx_beam_gas_b2_vme;

-- 500 L1_HCAL_LaserMon_Trig : EXT_HCAL_LaserMon_1
l1_hcal_laser_mon_trig <= single_ext_i365;
algo(16) <= l1_hcal_laser_mon_trig;

-- 501 L1_HCAL_LaserMon_Veto : EXT_HCAL_LaserMon_4
l1_hcal_laser_mon_veto <= single_ext_i366;
algo(17) <= l1_hcal_laser_mon_veto;

-- 503 L1_TOTEM_1 : EXT_TOTEM_1
l1_totem_1 <= single_ext_i367;
algo(19) <= l1_totem_1;

-- 504 L1_TOTEM_2 : EXT_TOTEM_2
l1_totem_2 <= single_ext_i368;
algo(20) <= l1_totem_2;

-- 505 L1_TOTEM_3 : EXT_TOTEM_3
l1_totem_3 <= single_ext_i369;
algo(21) <= l1_totem_3;

-- 506 L1_TOTEM_4 : EXT_TOTEM_4
l1_totem_4 <= single_ext_i370;
algo(22) <= l1_totem_4;


-- ========================================================