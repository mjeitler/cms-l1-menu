-- ========================================================
-- from VHDL producer:

-- Module ID: 2

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_dev

-- Unique ID of L1 Trigger Menu:
-- ff279b6e-899e-468b-9704-5fa64b5c005d

-- Unique ID of firmware implementation:
-- 8a4c21f6-5307-4a58-800b-1a1b4e9802a7

-- Scale set:
-- scales_2017_01_12

-- VHDL producer version
-- v1.0.0

-- External condition assignment
    single_ext_1189548080491112364 <= ext_cond_bx_0(4); -- single_ext_1189548080491112364
    single_ext_6102799243448260461 <= ext_cond_bx_0(7); -- single_ext_6102799243448260461
    single_ext_6909925150529645277 <= ext_cond_bx_p1(7); -- single_ext_6909925150529645277
    single_ext_6909925150529645278 <= ext_cond_bx_p2(7); -- single_ext_6909925150529645278
    single_ext_6909925150529645533 <= ext_cond_bx_m1(7); -- single_ext_6909925150529645533
    single_ext_6909925150529645534 <= ext_cond_bx_m2(7); -- single_ext_6909925150529645534
    single_ext_9794008929098471889 <= ext_cond_bx_p1(4); -- single_ext_9794008929098471889
    single_ext_9794008929098471890 <= ext_cond_bx_p2(4); -- single_ext_9794008929098471890
    single_ext_9794008929098472145 <= ext_cond_bx_m1(4); -- single_ext_9794008929098472145
    single_ext_9794008929098472146 <= ext_cond_bx_m2(4); -- single_ext_9794008929098472146
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
    mu_mu_bx_0_bx_p1_cosh_cos_l1: for i in 0 to NR_MU_OBJECTS-1 generate
	mu_mu_bx_0_bx_p1_cosh_cos_l2: for j in 0 to NR_MU_OBJECTS-1 generate
	    mu_mu_bx_0_bx_p1_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_COSH_DETA_LUT(diff_mu_mu_bx_0_bx_p1_eta_integer(i,j)), MU_MU_COSH_COS_VECTOR_WIDTH);
	    mu_mu_bx_0_bx_p1_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_COS_DPHI_LUT(diff_mu_mu_bx_0_bx_p1_phi_integer(i,j)), MU_MU_COSH_COS_VECTOR_WIDTH);
	end generate mu_mu_bx_0_bx_p1_cosh_cos_l2;
    end generate mu_mu_bx_0_bx_p1_cosh_cos_l1;
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
double_eg_13783532606430824098_i: entity work.calo_conditions_v5
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
        (X"E", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, eg_bx_0,
	double_eg_13783532606430824098);


double_eg_14367823063771822943_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	2, true, EG_TYPE,
        (X"0028", X"0024", X"0000", X"0000"),
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
	double_eg_14367823063771822943);


double_eg_14367840655957867231_i: entity work.calo_conditions_v5
    generic map(0, 11,  
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


double_jet_15903572090988376162_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	2, true, JET_TYPE,
        (X"00E0", X"00E0", X"0000", X"0000"),
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
	double_jet_15903572090988376162);


double_tau_15233202657361500387_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	2, true, TAU_TYPE,
        (X"0064", X"0064", X"0000", X"0000"),
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
	double_tau_15233202657361500387);


double_tau_5584966257611717374_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	2, true, TAU_TYPE,
        (X"0044", X"0044", X"0000", X"0000"),
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
	double_tau_5584966257611717374);


quad_jet_15179766802198588760_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	4, true, JET_TYPE,
        (X"0048", X"0048", X"0048", X"0048"),
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
	quad_jet_15179766802198588760);


quad_jet_2751081844007168180_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	4, true, JET_TYPE,
        (X"0050", X"0050", X"0050", X"0050"),
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
	quad_jet_2751081844007168180);


single_eg_1139634_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	1, true, EG_TYPE,
        (X"0004", X"0000", X"0000", X"0000"),
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
	single_eg_1139634);


single_jet_20010309810_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	1, true, JET_TYPE,
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
    port map(lhc_clk, jet_bx_0,
	single_jet_20010309810);


single_jet_2561319656368_i: entity work.calo_conditions_v5
    generic map(0, 11,  
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


single_jet_5967545309707548871_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	1, true, JET_TYPE,
        (X"0028", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0044", X"0000", X"0000", X"0000"), (X"00BB", X"0000", X"0000", X"0000"),
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
	single_jet_5967545309707548871);


single_jet_5967545344469940423_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	1, true, JET_TYPE,
        (X"0056", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0044", X"0000", X"0000", X"0000"), (X"00BB", X"0000", X"0000", X"0000"),
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
	single_jet_5967545344469940423);


single_jet_5967545344872593607_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	1, true, JET_TYPE,
        (X"005C", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0044", X"0000", X"0000", X"0000"), (X"00BB", X"0000", X"0000", X"0000"),
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
	single_jet_5967545344872593607);


single_tau_14552260448765811502_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	1, true, TAU_TYPE,
        (X"0068", X"0000", X"0000", X"0000"),
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
	single_tau_14552260448765811502);


single_tau_3484215725702552004_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	1, true, TAU_TYPE,
        (X"00F0", X"0000", X"0000", X"0000"),
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
	single_tau_3484215725702552004);


triple_eg_4430569691209534124_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	3, true, EG_TYPE,
        (X"0024", X"0022", X"0010", X"0000"),
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
	triple_eg_4430569691209534124);


double_mu_16961157256621881348_i: entity work.muon_conditions_v5
    generic map(0, 7, 
	2, true,
        (X"0019", X"000B", X"0000", X"0000"),
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
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
	double_mu_16961157256621881348);


double_mu_16961163952194496516_i: entity work.muon_conditions_v5
    generic map(0, 7, 
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
        (X"F000", X"F000", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
	false
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
	double_mu_16961163952194496516);


quad_mu_509409160461874775_i: entity work.muon_conditions_v5
    generic map(0, 7, 
	4, true,
        (X"0001", X"0001", X"0001", X"0001"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FF00", X"FF00", X"FF00", X"FF00"),
        (X"F", X"F", X"F", X"F"),
        "ig",
	false
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
	quad_mu_509409160461874775);


single_mu_14769293018627052229_i: entity work.muon_conditions_v5
    generic map(0, 7, 
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
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
	single_mu_14769293018627052229);


single_mu_14769293157135585733_i: entity work.muon_conditions_v5
    generic map(0, 7, 
	1, true,
        (X"0011", X"0000", X"0000", X"0000"),
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
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
	single_mu_14769293157135585733);


single_mu_17545685258516337093_i: entity work.muon_conditions_v5
    generic map(0, 7, 
	1, true,
        (X"002D", X"0000", X"0000", X"0000"),
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
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
	single_mu_17545685258516337093);


single_mu_8112227488948132609_i: entity work.muon_conditions_v5
    generic map(0, 7, 
	1, true,
        (X"0001", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"023F", X"0000", X"0000", X"0000"), (X"0120", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
	false
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
	single_mu_8112227488948132609);


triple_mu_3324692191841327135_i: entity work.muon_conditions_v5
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
        (X"F000", X"F000", X"F000", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
	false
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
	triple_mu_3324692191841327135);


single_ett_18699590325_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"006E",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_18699590325);


single_ett_18699590576_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"008C",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_18699590576);


single_ett_18699590581_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0096",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_18699590581);


single_htt_2496626711216_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"012C",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626711216);


single_htt_2496626711344_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0140",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626711344);


single_htt_2496626760368_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0384",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626760368);


calo_calo_correlation_14500771630165735872_i: entity work.calo_calo_correlation_condition_v2
    generic map(
        true,
        true, false, false, false, 0, false, 
        0, 11, true, EG_TYPE,
        X"0028",
        false, X"0030", X"00CF",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"E",
        0, 11, true, TAU_TYPE,
        X"0032",
        false, X"0030", X"00CF",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"E",
        10.0, 0.2,
        0.0, 0.0,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, EG_TAU_DETA_DPHI_PRECISION,
        0.0, 0.0, EG_TAU_MASS_PRECISION,
        EG_PT_VECTOR_WIDTH, TAU_PT_VECTOR_WIDTH, EG_TAU_COSH_COS_PRECISION, EG_TAU_COSH_COS_VECTOR_WIDTH,
        0.0, CALO_SIN_COS_VECTOR_WIDTH, EG_TAU_PT_PRECISION, EG_TAU_SIN_COS_PRECISION
    )
    port map(lhc_clk, eg_bx_0, tau_bx_0,
        diff_eg_tau_bx_0_bx_0_eta_vector, diff_eg_tau_bx_0_bx_0_phi_vector,
        eg_pt_vector_bx_0, tau_pt_vector_bx_0,
        eg_tau_bx_0_bx_0_cosh_deta_vector, eg_tau_bx_0_bx_0_cos_dphi_vector,
        eg_cos_phi_bx_0, tau_cos_phi_bx_0, eg_sin_phi_bx_0, tau_sin_phi_bx_0,
        calo_calo_correlation_14500771630165735872);

calo_muon_correlation_15993852978349077723_i: entity work.calo_muon_correlation_condition_v2
    generic map(
        true, true, false, false, 0, false, 
        0, 11, true, JET_TYPE,
        X"00F0",
        false, X"0044",X"00BB",
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
        0.4, 0.0,
        0.4, 0.0,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, JET_MU_DETA_DPHI_PRECISION,
        0.0, 0.0, JET_MU_MASS_PRECISION,
        JET_PT_VECTOR_WIDTH, MU_PT_VECTOR_WIDTH, JET_MU_COSH_COS_PRECISION, JET_MU_COSH_COS_VECTOR_WIDTH,
        0.0, MUON_SIN_COS_VECTOR_WIDTH, JET_MU_PT_PRECISION, JET_MU_SIN_COS_PRECISION
    )
    port map(lhc_clk, jet_bx_0, mu_bx_0,
        diff_jet_mu_bx_0_bx_0_eta_vector, diff_jet_mu_bx_0_bx_0_phi_vector,
        jet_pt_vector_bx_0, mu_pt_vector_bx_0, 
        jet_mu_bx_0_bx_0_cosh_deta_vector, jet_mu_bx_0_bx_0_cos_dphi_vector,
        conv_jet_cos_phi_bx_0, mu_cos_phi_bx_0, conv_jet_sin_phi_bx_0, mu_sin_phi_bx_0,
        calo_muon_correlation_15993852978349077723);

invariant_mass_3136996817261618632_i: entity work.muon_muon_correlation_condition_v2
    generic map(
        true,
        false, false, false, true, 0, false, 
        0, 7, true,
        X"001F",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"F000", X"F",
        true,
        X"000F",
        true, X"0000",X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"F000", X"F",
        "ig",
        0.0, 0.0,
        0.0, 0.0,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, MU_MU_DETA_DPHI_PRECISION,
        11549264162.0, 8.0, MU_MU_MASS_PRECISION,
        MU_PT_VECTOR_WIDTH, MU_MU_COSH_COS_PRECISION, MU_MU_COSH_COS_VECTOR_WIDTH,
        0.0, MUON_SIN_COS_VECTOR_WIDTH, MU_MU_PT_PRECISION, MU_MU_SIN_COS_PRECISION
    )
    port map(lhc_clk, mu_bx_0, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        diff_mu_mu_bx_0_bx_0_eta_vector, diff_mu_mu_bx_0_bx_0_phi_vector,
        mu_pt_vector_bx_0, mu_pt_vector_bx_0,
        mu_mu_bx_0_bx_0_cosh_deta_vector, mu_mu_bx_0_bx_0_cos_dphi_vector,
        mu_cos_phi_bx_0, mu_cos_phi_bx_0, mu_sin_phi_bx_0, mu_sin_phi_bx_0,
        invariant_mass_3136996817261618632);

muon_muon_correlation_11176000511867825161_i: entity work.muon_muon_correlation_condition_v2
    generic map(
        false,
        false, true, false, false, 0, false, 
        0, 7, true,
        X"0007",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        false, X"00EF", X"0030",
        true, X"0000", X"0000",
        "ign", X"F000", X"F",
        true,
        X"0007",
        true, X"0000",X"0000",
        true, X"0000", X"0000",
        false, X"020F", X"0150",
        true, X"0000", X"0000",
        "ign", X"F000", X"F",
        "ig",
        0.0, 0.0,
        3.665, 2.618,
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
        muon_muon_correlation_11176000511867825161);

muon_muon_correlation_12544921195247778505_i: entity work.muon_muon_correlation_condition_v2
    generic map(
        false,
        false, true, false, false, 0, false, 
        0, 7, true,
        X"0007",
        false, X"0093", X"016D",
        true, X"0000", X"0000",
        false, X"00EF", X"0030",
        true, X"0000", X"0000",
        "ign", X"FFFF", X"F",
        true,
        X"0007",
        false, X"0093",X"016D",
        true, X"0000", X"0000",
        false, X"020F", X"0150",
        true, X"0000", X"0000",
        "ign", X"FFFF", X"F",
        "ig",
        0.0, 0.0,
        4.711, 1.57,
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
        muon_muon_correlation_12544921195247778505);

muon_muon_correlation_12923126501326425857_i: entity work.muon_muon_correlation_condition_v2
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
        true,
        X"000A",
        true, X"0000",X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"F000", X"F",
        "os",
        0.0, 0.0,
        0.0, 0.0,
        1.441, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, MU_MU_DETA_DPHI_PRECISION,
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
        muon_muon_correlation_12923126501326425857);

muon_muon_correlation_16427048327526215320_i: entity work.muon_muon_correlation_condition_v2
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
        true,
        X"0007",
        true, X"0000",X"0000",
        true, X"0000", X"0000",
        false, X"020F", X"0150",
        true, X"0000", X"0000",
        "ign", X"FFFF", X"F",
        "ig",
        0.0, 0.0,
        4.189, 2.094,
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
        muon_muon_correlation_16427048327526215320);

muon_muon_correlation_685631557001524687_i: entity work.muon_muon_correlation_condition_v2
    generic map(
        false,
        false, true, false, false, 0, false, 
        0, 7, true,
        X"0007",
        false, X"0093", X"016D",
        true, X"0000", X"0000",
        false, X"00EF", X"0030",
        true, X"0000", X"0000",
        "ign", X"FFF0", X"F",
        true,
        X"0007",
        false, X"0093",X"016D",
        true, X"0000", X"0000",
        false, X"020F", X"0150",
        true, X"0000", X"0000",
        "ign", X"FFF0", X"F",
        "ig",
        0.0, 0.0,
        3.665, 2.618,
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
        muon_muon_correlation_685631557001524687);

single_mbt0_hfm_43640316738250417_i: entity work.min_bias_hf_conditions
    generic map(true, MBT0HFM_TYPE, X"1")
    port map(lhc_clk, mbt0hfm_bx_0, single_mbt0_hfm_43640316738250417);


single_mbt0_hfp_43640316738250801_i: entity work.min_bias_hf_conditions
    generic map(true, MBT0HFP_TYPE, X"1")
    port map(lhc_clk, mbt0hfp_bx_0, single_mbt0_hfp_43640316738250801);



-- Instantiations of algorithms

-- 1 L1_SingleMuOpen : MU0[MU-QLTY_OPEN]
l1_single_mu_open <= single_mu_14769293018627052229;
algo(31) <= l1_single_mu_open;

-- 10 L1_SingleMu22 : MU22[MU-QLTY_SNGL]
l1_single_mu22 <= single_mu_17545685258516337093;
algo(46) <= l1_single_mu22;

-- 22 L1_DoubleMu_12_5 : comb{MU12[MU-QLTY_DBLE],MU5[MU-QLTY_DBLE]}
l1_double_mu_12_5 <= double_mu_16961157256621881348;
algo(20) <= l1_double_mu_12_5;

-- 33 L1_QuadMu0 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]}
l1_quad_mu0 <= quad_mu_509409160461874775;
algo(11) <= l1_quad_mu0;

-- 82 L1_DoubleEG_20_18 : comb{EG20,EG18}
l1_double_eg_20_18 <= double_eg_14367823063771822943;
algo(13) <= l1_double_eg_20_18;

-- 87 L1_DoubleEG_24_17 : comb{EG24,EG17}
l1_double_eg_24_17 <= double_eg_14367840655957867231;
algo(14) <= l1_double_eg_24_17;

-- 92 L1_TripleEG_18_17_8 : comb{EG18,EG17,EG8}
l1_triple_eg_18_17_8 <= triple_eg_4430569691209534124;
algo(12) <= l1_triple_eg_18_17_8;

-- 103 L1_SingleTau120er2p1 : TAU120[TAU-ETA_2p13]
l1_single_tau120er2p1 <= single_tau_3484215725702552004;
algo(45) <= l1_single_tau120er2p1;

-- 104 L1_DoubleTau50er2p1 : comb{TAU50[TAU-ETA_2p13],TAU50[TAU-ETA_2p13]}
l1_double_tau50er2p1 <= double_tau_15233202657361500387;
algo(18) <= l1_double_tau50er2p1;

-- 110 L1_DoubleIsoTau34er2p1 : comb{TAU34[TAU-ISO_0xE,TAU-ETA_2p13],TAU34[TAU-ISO_0xE,TAU-ETA_2p13]}
l1_double_iso_tau34er2p1 <= double_tau_5584966257611717374;
algo(16) <= l1_double_iso_tau34er2p1;

-- 129 L1_SingleJet170 : JET170
l1_single_jet170 <= single_jet_2561319656368;
algo(44) <= l1_single_jet170;

-- 145 L1_DoubleJet112er3p0 : comb{JET112[JET-ETA_CEN],JET112[JET-ETA_CEN]}
l1_double_jet112er3p0 <= double_jet_15903572090988376162;
algo(17) <= l1_double_jet112er3p0;

-- 150 L1_QuadJet40er3p0 : comb{JET40[JET-ETA_CEN],JET40[JET-ETA_CEN],JET40[JET-ETA_CEN],JET40[JET-ETA_CEN]}
l1_quad_jet40er3p0 <= quad_jet_2751081844007168180;
algo(3) <= l1_quad_jet40er3p0;

-- 161 L1_HTT160er : HTT160
l1_htt160er <= single_htt_2496626711344;
algo(48) <= l1_htt160er;

-- 173 L1_HTT450er : HTT450
l1_htt450er <= single_htt_2496626760368;
algo(49) <= l1_htt450er;

-- 220 L1_CDC_3_TOP120_DPHI2p094_4p189 : dist{MU3-1[MU-PHI_TOP120],MU3[MU-PHI_BOTTOM120]}[DPHI_MIN2p094_MAX4p189]
l1_cdc_3_top120_dphi2p094_4p189 <= muon_muon_correlation_16427048327526215320;
algo(6) <= l1_cdc_3_top120_dphi2p094_4p189;

-- 224 L1_CDC_SingleMu_3_TOP120_DPHI2p618_3p665 : dist{MU3-1[MU-PHI_TOP120,MU-QLTY_SNGL],MU3[MU-PHI_BOTTOM120,MU-QLTY_SNGL]}[DPHI_DPHI_MIN2p618_MAX3p665]
l1_cdc_single_mu_3_top120_dphi2p618_3p665 <= muon_muon_correlation_11176000511867825161;
algo(8) <= l1_cdc_single_mu_3_top120_dphi2p618_3p665;

-- 230 L1_CDCp1_3_er1p6_TOP120_DPHI2p618_3p665 : dist{MU3[MU-ETA_1p6,MU-PHI_TOP120,MU-QLTY_OPEN],MU3+1[MU-ETA_1p6,MU-PHI_BOTTOM120,MU-QLTY_OPEN]}[DPHI_DPHI_MIN2p618_MAX3p665]
l1_cd_cp1_3_er1p6_top120_dphi2p618_3p665 <= muon_muon_correlation_685631557001524687;
algo(9) <= l1_cd_cp1_3_er1p6_top120_dphi2p618_3p665;

-- 234 L1_CDC_3_er1p6_TOP120_DPHI1p570_4p711 : dist{MU3-1[MU-ETA_1p6,MU-PHI_TOP120],MU3[MU-ETA_1p6,MU-PHI_BOTTOM120]}[DPHI_MIN1p570_MAX4p711]
l1_cdc_3_er1p6_top120_dphi1p570_4p711 <= muon_muon_correlation_12544921195247778505;
algo(7) <= l1_cdc_3_er1p6_top120_dphi1p570_4p711;

-- 237 L1_SingleMuCosmics_Bottom : MU0[MU-PHI_BOTTOM]
l1_single_mu_cosmics_bottom <= single_mu_8112227488948132609;
algo(47) <= l1_single_mu_cosmics_bottom;

-- 240 L1_SingleMuOpen_NotBptxOR : MU0[MU-QLTY_OPEN] AND ( NOT EXT_BPTX_OR_VME)
l1_single_mu_open_not_bptx_or <= single_mu_14769293018627052229 and ( not single_ext_6102799243448260461 );
algo(36) <= l1_single_mu_open_not_bptx_or;

-- 241 L1_SingleMuOpen_NotBptxOR_3BX : MU0[MU-QLTY_OPEN] AND ( NOT EXT_BPTX_OR_VME-1) AND ( NOT EXT_BPTX_OR_VME) AND ( NOT EXT_BPTX_OR_VME+1)
l1_single_mu_open_not_bptx_or_3_bx <= single_mu_14769293018627052229 and ( not single_ext_6909925150529645533 ) and ( not single_ext_6102799243448260461 ) and ( not single_ext_6909925150529645277 );
algo(37) <= l1_single_mu_open_not_bptx_or_3_bx;

-- 242 L1_SingleJet20er3p0_NotBptxOR : JET20[JET-ETA_CEN] AND ( NOT EXT_BPTX_OR_VME)
l1_single_jet20er3p0_not_bptx_or <= single_jet_5967545309707548871 and ( not single_ext_6102799243448260461 );
algo(24) <= l1_single_jet20er3p0_not_bptx_or;

-- 243 L1_SingleJet20er3p0_NotBptxOR_3BX : JET20[JET-ETA_CEN] AND ( NOT EXT_BPTX_OR_VME-1) AND ( NOT EXT_BPTX_OR_VME) AND ( NOT EXT_BPTX_OR_VME+1)
l1_single_jet20er3p0_not_bptx_or_3_bx <= single_jet_5967545309707548871 and ( not single_ext_6909925150529645533 ) and ( not single_ext_6102799243448260461 ) and ( not single_ext_6909925150529645277 );
algo(40) <= l1_single_jet20er3p0_not_bptx_or_3_bx;

-- 244 L1_SingleJet43er3p0_NotBptxOR_3BX : JET43[JET-ETA_CEN] AND ( NOT EXT_BPTX_OR_VME-1) AND ( NOT EXT_BPTX_OR_VME) AND ( NOT EXT_BPTX_OR_VME+1)
l1_single_jet43er3p0_not_bptx_or_3_bx <= single_jet_5967545344469940423 and ( not single_ext_6909925150529645533 ) and ( not single_ext_6102799243448260461 ) and ( not single_ext_6909925150529645277 );
algo(33) <= l1_single_jet43er3p0_not_bptx_or_3_bx;

-- 245 L1_SingleJet46er3p0_NotBptxOR_3BX : JET46[JET-ETA_CEN] AND ( NOT EXT_BPTX_OR_VME-1) AND ( NOT EXT_BPTX_OR_VME) AND ( NOT EXT_BPTX_OR_VME+1)
l1_single_jet46er3p0_not_bptx_or_3_bx <= single_jet_5967545344872593607 and ( not single_ext_6909925150529645533 ) and ( not single_ext_6102799243448260461 ) and ( not single_ext_6909925150529645277 );
algo(34) <= l1_single_jet46er3p0_not_bptx_or_3_bx;

-- 286 L1_QuadJet36er3p0_IsoTau52er2p1 : comb{JET36[JET-ETA_3p00],JET36[JET-ETA_3p00],JET36[JET-ETA_3p00],JET36[JET-ETA_3p00]} AND TAU52[TAU-ETA_2p13,TAU-ISO_0xE]
l1_quad_jet36er3p0_iso_tau52er2p1 <= quad_jet_15179766802198588760 and single_tau_14552260448765811502;
algo(2) <= l1_quad_jet36er3p0_iso_tau52er2p1;

-- 296 L1_DoubleEG_Iso24_10 : comb{EG24[EG-ISO_0xE],EG10}
l1_double_eg_iso24_10 <= double_eg_13783532606430824098;
algo(15) <= l1_double_eg_iso24_10;

-- 304 L1_IsoEG20er2p1_IsoTau25er2p1_dEta_Min0p2 : dist{EG20[EG-ISO_0xE,EG-ETA_2p13],TAU25[TAU-ISO_0xE,TAU-ETA_2p13]}[DETA_MIN_0p2]
l1_iso_eg20er2p1_iso_tau25er2p1_d_eta_min0p2 <= calo_calo_correlation_14500771630165735872;
algo(4) <= l1_iso_eg20er2p1_iso_tau25er2p1_d_eta_min0p2;

-- 332 L1_DoubleMu_15_7_SQ : comb{MU15[MU-QLTY_SNGL],MU7[MU-QLTY_SNGL]}
l1_double_mu_15_7_sq <= double_mu_16961163952194496516;
algo(1) <= l1_double_mu_15_7_sq;

-- 333 L1_DoubleMu_15_7_SQ_Mass_Min4 : comb{MU15[MU-QLTY_SNGL],MU7[MU-QLTY_SNGL]} AND mass_inv{MU15[MU-QLTY_SNGL],MU7[MU-QLTY_SNGL]}[MASS_MIN_4]
l1_double_mu_15_7_sq_mass_min4 <= double_mu_16961163952194496516 and invariant_mass_3136996817261618632;
algo(0) <= l1_double_mu_15_7_sq_mass_min4;

-- 334 L1_TripleMu3_SQ : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]}
l1_triple_mu3_sq <= triple_mu_3324692191841327135;
algo(19) <= l1_triple_mu3_sq;

-- 378 L1_DoubleMu4p5_SQ_OS_dR_Max1p2 : dist{MU4p5[MU-QLTY_SNGL],MU4p5[MU-QLTY_SNGL]}[DR_1p2,CHGCOR_OS]
l1_double_mu4p5_sq_os_d_r_max1p2 <= muon_muon_correlation_12923126501326425857;
algo(10) <= l1_double_mu4p5_sq_os_d_r_max1p2;

-- 400 L1_IsolatedBunch : ( NOT EXT_BPTX_OR_VME-2) AND ( NOT EXT_BPTX_OR_VME-1) AND EXT_ZeroBias_BPTX_AND_VME AND ( NOT EXT_BPTX_OR_VME+1) AND ( NOT EXT_BPTX_OR_VME+2)
l1_isolated_bunch <= ( not single_ext_6909925150529645534 ) and ( not single_ext_6909925150529645533 ) and single_ext_1189548080491112364 and ( not single_ext_6909925150529645277 ) and ( not single_ext_6909925150529645278 );
algo(29) <= l1_isolated_bunch;

-- 401 L1_FirstBunchInTrain : ( NOT EXT_BPTX_OR_VME-2) AND ( NOT EXT_BPTX_OR_VME-1) AND EXT_ZeroBias_BPTX_AND_VME AND EXT_ZeroBias_BPTX_AND_VME+1 AND EXT_ZeroBias_BPTX_AND_VME+2
l1_first_bunch_in_train <= ( not single_ext_6909925150529645534 ) and ( not single_ext_6909925150529645533 ) and single_ext_1189548080491112364 and single_ext_9794008929098471889 and single_ext_9794008929098471890;
algo(23) <= l1_first_bunch_in_train;

-- 402 L1_FirstBunchAfterTrain : EXT_ZeroBias_BPTX_AND_VME-2 AND EXT_ZeroBias_BPTX_AND_VME-1 AND ( NOT EXT_BPTX_OR_VME) AND ( NOT EXT_BPTX_OR_VME+1) AND ( NOT EXT_BPTX_OR_VME+2)
l1_first_bunch_after_train <= single_ext_9794008929098472146 and single_ext_9794008929098472145 and ( not single_ext_6102799243448260461 ) and ( not single_ext_6909925150529645277 ) and ( not single_ext_6909925150529645278 );
algo(42) <= l1_first_bunch_after_train;

-- 411 L1_Mu8_HTT150er : MU8[MU-QLTY_SNGL] AND HTT150
l1_mu8_htt150er <= single_mu_14769293157135585733 and single_htt_2496626711216;
algo(21) <= l1_mu8_htt150er;

-- 430 L1_Mu3_JetC120_dEta_Max0p4_dPhi_Max0p4 : dist{MU3[MU-QLTY_SNGL],JET120[JET-ETA_CEN]}[DETA_MAX_0p4,DPHI_MAX_0p4]
l1_mu3_jet_c120_d_eta_max0p4_d_phi_max0p4 <= calo_muon_correlation_15993852978349077723;
algo(5) <= l1_mu3_jet_c120_d_eta_max0p4_d_phi_max0p4;

-- 431 L1_SingleEG2_BptxAND : EG2 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg2_bptx_and <= single_eg_1139634 and single_ext_1189548080491112364;
algo(22) <= l1_single_eg2_bptx_and;

-- 432 L1_SingleJet12_BptxAND : JET12 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet12_bptx_and <= single_jet_20010309810 and single_ext_1189548080491112364;
algo(25) <= l1_single_jet12_bptx_and;

-- 433 L1_ETT55_BptxAND : ETT55 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett55_bptx_and <= single_ett_18699590325 and single_ext_1189548080491112364;
algo(43) <= l1_ett55_bptx_and;

-- 434 L1_ETT70_BptxAND : ETT70 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett70_bptx_and <= single_ett_18699590576 and single_ext_1189548080491112364;
algo(26) <= l1_ett70_bptx_and;

-- 435 L1_ETT75_BptxAND : ETT75 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett75_bptx_and <= single_ett_18699590581 and single_ext_1189548080491112364;
algo(28) <= l1_ett75_bptx_and;

-- 436 L1_MinimumBiasHF0_AND_BptxAND : (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf0_and_bptx_and <= ( single_mbt0_hfp_43640316738250801 and single_mbt0_hfm_43640316738250417 ) and single_ext_1189548080491112364;
algo(32) <= l1_minimum_bias_hf0_and_bptx_and;

-- 437 L1_MinimumBiasHF0_OR_BptxAND : (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf0_or_bptx_and <= ( single_mbt0_hfp_43640316738250801 or single_mbt0_hfm_43640316738250417 ) and single_ext_1189548080491112364;
algo(35) <= l1_minimum_bias_hf0_or_bptx_and;

-- 450 L1_AlwaysTrue : EXT_ZeroBias_BPTX_AND_VME OR ( NOT EXT_ZeroBias_BPTX_AND_VME)
l1_always_true <= single_ext_1189548080491112364 or ( not single_ext_1189548080491112364 );
algo(39) <= l1_always_true;

-- 451 L1_NotBptxOR :  NOT EXT_BPTX_OR_VME
l1_not_bptx_or <= not single_ext_6102799243448260461;
algo(27) <= l1_not_bptx_or;

-- 453 L1_ZeroBias_copy : EXT_ZeroBias_BPTX_AND_VME
l1_zero_bias_copy <= single_ext_1189548080491112364;
algo(30) <= l1_zero_bias_copy;

-- 458 L1_ZeroBias : EXT_ZeroBias_BPTX_AND_VME
l1_zero_bias <= single_ext_1189548080491112364;
algo(38) <= l1_zero_bias;

-- 461 L1_BptxOR : EXT_BPTX_OR_VME
l1_bptx_or <= single_ext_6102799243448260461;
algo(41) <= l1_bptx_or;


-- ========================================================