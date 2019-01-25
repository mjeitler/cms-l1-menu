-- ========================================================
-- from VHDL producer:

-- Module ID: 4

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_dev_r6_woCDC

-- Unique ID of L1 Trigger Menu:
-- 769ff1e5-53d7-4e3d-813c-259f36a208a0

-- Unique ID of firmware implementation:
-- f497b2a1-149a-4580-85bd-c6a15234ad4a

-- Scale set:
-- scales_2017_05_22

-- VHDL producer version
-- v2.0.0

-- External condition assignment
    single_ext_10333571493479462268 <= ext_cond_bx_0(20); -- single_ext_10333571493479462268
    single_ext_16249626042834147010 <= ext_cond_bx_0(23); -- single_ext_16249626042834147010
    single_ext_9945386644737729380 <= ext_cond_bx_0(17); -- single_ext_9945386644737729380
    single_ext_9960888781443116569 <= ext_cond_bx_0(3); -- single_ext_9960888781443116569
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

-- Instantiations of cosh-deta and cos-dphi LUTs for correlation conditions (used for mass and overlap_remover) - once for correlation conditions with two ObjectTypes in certain Bxs
    jet_jet_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_JET_OBJECTS-1 generate
	jet_jet_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_JET_OBJECTS-1 generate
	    jet_jet_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_JET_COSH_DETA_LUT(diff_jet_jet_bx_0_bx_0_eta_integer(i,j)), JET_JET_COSH_COS_VECTOR_WIDTH);
	    jet_jet_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_JET_COS_DPHI_LUT(diff_jet_jet_bx_0_bx_0_phi_integer(i,j)), JET_JET_COSH_COS_VECTOR_WIDTH);
	end generate jet_jet_bx_0_bx_0_cosh_cos_l2;
    end generate jet_jet_bx_0_bx_0_cosh_cos_l1;
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

-- Instantiations of conditions
double_eg_14367260113818400607_i: entity work.calo_conditions_v5
    generic map(0, 11,  
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


double_eg_14367290900143979231_i: entity work.calo_conditions_v5
    generic map(0, 11,  
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


double_eg_8902241742241126126_i: entity work.calo_conditions_v5
    generic map(0, 11,  
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


double_jet_10840719965249128790_i: entity work.calo_conditions_v5
    generic map(0, 11,  
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


double_jet_16350512121229658012_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	2, true, JET_TYPE,
        (X"0078", X"0078", X"0000", X"0000"),
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
	double_jet_16350512121229658012);


double_jet_17504692923644168291_i: entity work.calo_conditions_v5
    generic map(0, 11,  
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


double_jet_3730266969229109735_i: entity work.calo_conditions_v5
    generic map(0, 11,  
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


double_jet_3805139313034161255_i: entity work.calo_conditions_v5
    generic map(0, 11,  
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


double_jet_3851467703317088356_i: entity work.calo_conditions_v5
    generic map(0, 11,  
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


double_jet_3851467703875127396_i: entity work.calo_conditions_v5
    generic map(0, 11,  
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


double_jet_7821119012726214247_i: entity work.calo_conditions_v5
    generic map(0, 11,  
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


double_jet_7821119013284253287_i: entity work.calo_conditions_v5
    generic map(0, 11,  
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


double_jet_8659301241633819347_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	2, true, JET_TYPE,
        (X"0078", X"0078", X"0000", X"0000"),
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
	double_jet_8659301241633819347);


quad_jet_17630949366336433287_i: entity work.calo_conditions_v5
    generic map(0, 11,  
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
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, jet_bx_0,
	quad_jet_17630949366336433287);


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


single_eg_14262501742930627507_i: entity work.calo_conditions_v5
    generic map(0, 11,  
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


single_eg_9244738805910375678_i: entity work.calo_conditions_v5
    generic map(0, 11,  
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
        (X"E", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, eg_bx_0,
	single_eg_9244738805910375678);


single_eg_9244741004933631230_i: entity work.calo_conditions_v5
    generic map(0, 11,  
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
        (X"E", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, eg_bx_0,
	single_eg_9244741004933631230);


single_eg_9244743203956886782_i: entity work.calo_conditions_v5
    generic map(0, 11,  
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
        (X"E", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, eg_bx_0,
	single_eg_9244743203956886782);


single_jet_20010310448_i: entity work.calo_conditions_v5
    generic map(0, 11,  
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


single_jet_20010310832_i: entity work.calo_conditions_v5
    generic map(0, 11,  
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


single_jet_5967545310244419783_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	1, true, JET_TYPE,
        (X"0030", X"0000", X"0000", X"0000"),
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
	single_jet_5967545310244419783);


single_tau_12210388642533153582_i: entity work.calo_conditions_v5
    generic map(0, 11,  
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


triple_jet_10368473969177751178_i: entity work.calo_conditions_v5
    generic map(0, 11,  
	3, true, JET_TYPE,
        (X"0034", X"0034", X"0034", X"0000"),
        (true, false, false, true),
        (X"0000", X"0044", X"0044", X"0000"), (X"0000", X"00BB", X"00BB", X"0000"),
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
	triple_jet_10368473969177751178);


triple_jet_1776207310752122438_i: entity work.calo_conditions_v5
    generic map(0, 11,  
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


double_mu_14585777620730815295_i: entity work.muon_conditions_v5
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
        (X"FF00", X"FF00", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
	false
    )
    port map(lhc_clk, mu_bx_0,
	double_mu_14585777620730815295,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


double_mu_14585786515326686015_i: entity work.muon_conditions_v5
    generic map(0, 7, 
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


single_mu_14769293122775847365_i: entity work.muon_conditions_v5
    generic map(0, 7, 
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


single_mu_17494117756195063635_i: entity work.muon_conditions_v5
    generic map(0, 7, 
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


single_mu_17545683025133343173_i: entity work.muon_conditions_v5
    generic map(0, 7, 
	1, true,
        (X"0015", X"0000", X"0000", X"0000"),
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
	single_mu_17545683025133343173);


single_mu_17545683111032689093_i: entity work.muon_conditions_v5
    generic map(0, 7, 
	1, true,
        (X"001F", X"0000", X"0000", X"0000"),
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
	single_mu_17545683111032689093);


single_mu_17545683162572296645_i: entity work.muon_conditions_v5
    generic map(0, 7, 
	1, true,
        (X"0025", X"0000", X"0000", X"0000"),
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
	single_mu_17545683162572296645);


single_etm_18699475504_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"0050",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_18699475504);


single_etm_18699475637_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"006E",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_18699475637);


single_etm_18699475760_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"0078",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_18699475760);


single_etm_18699475765_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"0082",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_18699475765);


single_etm_18699475888_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"008C",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_18699475888);


single_etm_18699476016_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00A0",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_18699476016);


single_etm_18699476021_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00AA",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_18699476021);


single_etm_18699476144_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00B4",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_18699476144);


single_etm_18699476149_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00BE",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_18699476149);


single_etm_2393532815408_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00C8",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_2393532815408);


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


single_etmhf_306372248968117_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"0096",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_306372248968117);


single_etmhf_306372248968240_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"00A0",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_306372248968240);


single_etmhf_306372248968245_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"00AA",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_306372248968245);


single_etmhf_306372248968368_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"00B4",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_306372248968368);


single_etmhf_306372248968373_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"00BE",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_306372248968373);


single_etmhf_39215647867820080_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"00C8",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_39215647867820080);


single_etmhf_39215647867820085_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"00D2",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_39215647867820085);


single_etmhf_39215647867820208_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"00DC",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_39215647867820208);


single_etmhf_39215647867820213_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"00E6",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_39215647867820213);


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


calo_calo_correlation_9829863660336053304_i: entity work.calo_calo_correlation_condition_v2
    generic map(
        true,
        false, false, true, false, 0, false, 
        0, 11, true, EG_TYPE,
        X"0030",
        false, X"0030", X"00CF",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"E",
        0, 11, true, JET_TYPE,
        X"0034",
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
        calo_calo_correlation_9829863660336053304);

invariant_mass_2940638391871890823_i: entity work.calo_calo_correlation_condition_v2
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
        0.0, 0.0,
        0.0, 0.0,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, JET_JET_DETA_DPHI_PRECISION,
        98000000.0, 80000.0, JET_JET_MASS_PRECISION,
        JET_PT_VECTOR_WIDTH, JET_PT_VECTOR_WIDTH, JET_JET_COSH_COS_PRECISION, JET_JET_COSH_COS_VECTOR_WIDTH,
        0.0, CALO_SIN_COS_VECTOR_WIDTH, JET_JET_PT_PRECISION, JET_JET_SIN_COS_PRECISION
    )
    port map(lhc_clk, jet_bx_0, jet_bx_0,
        diff_jet_jet_bx_0_bx_0_eta_vector, diff_jet_jet_bx_0_bx_0_phi_vector,
        jet_pt_vector_bx_0, jet_pt_vector_bx_0,
        jet_jet_bx_0_bx_0_cosh_deta_vector, jet_jet_bx_0_bx_0_cos_dphi_vector,
        jet_cos_phi_bx_0, jet_cos_phi_bx_0, jet_sin_phi_bx_0, jet_sin_phi_bx_0,
        invariant_mass_2940638391871890823);

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


-- Instantiations of algorithms

-- 17 L1_SingleMu18 : MU18[MU-QLTY_SNGL]
l1_single_mu18 <= single_mu_17545683162572296645;
algo(18) <= l1_single_mu18;

-- 30 L1_DoubleMu0 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]}
l1_double_mu0 <= double_mu_14585777620730815295;
algo(102) <= l1_double_mu0;

-- 133 L1_SingleJet60 : JET60
l1_single_jet60 <= single_jet_20010310448;
algo(8) <= l1_single_jet60;

-- 134 L1_SingleJet90 : JET90
l1_single_jet90 <= single_jet_20010310832;
algo(16) <= l1_single_jet90;

-- 152 L1_DoubleJet60er3p0 : comb{JET60[JET-ETA_CEN],JET60[JET-ETA_CEN]}
l1_double_jet60er3p0 <= double_jet_8659301241633819347;
algo(78) <= l1_double_jet60er3p0;

-- 162 L1_QuadJet60er3p0 : comb{JET60[JET-ETA_CEN],JET60[JET-ETA_CEN],JET60[JET-ETA_CEN],JET60[JET-ETA_CEN]}
l1_quad_jet60er3p0 <= quad_jet_2899845767245260980;
algo(112) <= l1_quad_jet60er3p0;

-- 172 L1_HTT200er : HTT200
l1_htt200er <= single_htt_2496626726960;
algo(35) <= l1_htt200er;

-- 173 L1_HTT220er : HTT220
l1_htt220er <= single_htt_2496626727216;
algo(105) <= l1_htt220er;

-- 174 L1_HTT240er : HTT240
l1_htt240er <= single_htt_2496626727472;
algo(84) <= l1_htt240er;

-- 175 L1_HTT255er : HTT255
l1_htt255er <= single_htt_2496626727605;
algo(43) <= l1_htt255er;

-- 176 L1_HTT270er : HTT270
l1_htt270er <= single_htt_2496626727856;
algo(49) <= l1_htt270er;

-- 177 L1_HTT280er : HTT280
l1_htt280er <= single_htt_2496626727984;
algo(53) <= l1_htt280er;

-- 178 L1_HTT300er : HTT300
l1_htt300er <= single_htt_2496626743344;
algo(95) <= l1_htt300er;

-- 191 L1_ETM40 : ETM40
l1_etm40 <= single_etm_18699475504;
algo(24) <= l1_etm40;

-- 193 L1_ETM60 : ETM60
l1_etm60 <= single_etm_18699475760;
algo(31) <= l1_etm60;

-- 194 L1_ETM70 : ETM70
l1_etm70 <= single_etm_18699475888;
algo(33) <= l1_etm70;

-- 196 L1_ETM80 : ETM80
l1_etm80 <= single_etm_18699476016;
algo(40) <= l1_etm80;

-- 197 L1_ETM85 : ETM85
l1_etm85 <= single_etm_18699476021;
algo(46) <= l1_etm85;

-- 198 L1_ETM90 : ETM90
l1_etm90 <= single_etm_18699476144;
algo(52) <= l1_etm90;

-- 199 L1_ETM95 : ETM95
l1_etm95 <= single_etm_18699476149;
algo(57) <= l1_etm95;

-- 200 L1_ETM100 : ETM100
l1_etm100 <= single_etm_2393532815408;
algo(4) <= l1_etm100;

-- 210 L1_ETMHF70 : ETMHF70
l1_etmhf70 <= single_etmhf_306372248968112;
algo(28) <= l1_etmhf70;

-- 211 L1_ETMHF80 : ETMHF80
l1_etmhf80 <= single_etmhf_306372248968240;
algo(34) <= l1_etmhf80;

-- 212 L1_ETMHF90 : ETMHF90
l1_etmhf90 <= single_etmhf_306372248968368;
algo(56) <= l1_etmhf90;

-- 213 L1_ETMHF100 : ETMHF100
l1_etmhf100 <= single_etmhf_39215647867820080;
algo(60) <= l1_etmhf100;

-- 214 L1_ETMHF110 : ETMHF110
l1_etmhf110 <= single_etmhf_39215647867820208;
algo(14) <= l1_etmhf110;

-- 215 L1_ETMHF120 : ETMHF120
l1_etmhf120 <= single_etmhf_39215647867820336;
algo(21) <= l1_etmhf120;

-- 230 L1_IsoEG24er2p1_Jet26er3p0_dR_Min0p3 : dist{EG24[EG-ETA_2p13,EG-ISO_0xE],JET26[JET-ETA_CEN]}[DR_MIN_0p3]
l1_iso_eg24er2p1_jet26er3p0_d_r_min0p3 <= calo_calo_correlation_9829863660336053304;
algo(113) <= l1_iso_eg24er2p1_jet26er3p0_d_r_min0p3;

-- 234 L1_IsoEG24er2p1_HTT100er : EG24[EG-ETA_2p13,EG-ISO_0xE] AND HTT100
l1_iso_eg24er2p1_htt100er <= single_eg_9244738805910375678 and single_htt_2496626710576;
algo(85) <= l1_iso_eg24er2p1_htt100er;

-- 235 L1_IsoEG26er2p1_HTT100er : EG26[EG-ETA_2p13,EG-ISO_0xE] AND HTT100
l1_iso_eg26er2p1_htt100er <= single_eg_9244741004933631230 and single_htt_2496626710576;
algo(88) <= l1_iso_eg26er2p1_htt100er;

-- 236 L1_IsoEG28er2p1_HTT100er : EG28[EG-ETA_2p13,EG-ISO_0xE] AND HTT100
l1_iso_eg28er2p1_htt100er <= single_eg_9244743203956886782 and single_htt_2496626710576;
algo(89) <= l1_iso_eg28er2p1_htt100er;

-- 237 L1_IsoEG24er2p1_TripleJet_26er3p0_26_26er3p0 : EG24[EG-ETA_2p13,EG-ISO_0xE] AND comb{JET26,JET26[JET-ETA_CEN],JET26[JET-ETA_CEN]}
l1_iso_eg24er2p1_triple_jet_26er3p0_26_26er3p0 <= single_eg_9244738805910375678 and triple_jet_10368473969177751178;
algo(87) <= l1_iso_eg24er2p1_triple_jet_26er3p0_26_26er3p0;

-- 238 L1_Mu18_HTT100er : MU18[MU-QLTY_SNGL] AND HTT100
l1_mu18_htt100er <= single_mu_17545683162572296645 and single_htt_2496626710576;
algo(30) <= l1_mu18_htt100er;

-- 239 L1_Mu18_Jet24er3p0 : MU18[MU-QLTY_SNGL] AND JET24[JET-ETA_CEN]
l1_mu18_jet24er3p0 <= single_mu_17545683162572296645 and single_jet_5967545310244419783;
algo(32) <= l1_mu18_jet24er3p0;

-- 248 L1_HTT250er_QuadJet_70_55_40_35_er2p5 : HTT250 AND comb{JET70[JET-ETA_RESTR],JET55[JET-ETA_RESTR],JET40[JET-ETA_RESTR],JET35[JET-ETA_RESTR]}
l1_htt250er_quad_jet_70_55_40_35_er2p5 <= single_htt_2496626727600 and quad_jet_17630949366336433287;
algo(26) <= l1_htt250er_quad_jet_70_55_40_35_er2p5;

-- 249 L1_HTT280er_QuadJet_70_55_40_35_er2p5 : HTT280 AND comb{JET70[JET-ETA_RESTR],JET55[JET-ETA_RESTR],JET40[JET-ETA_RESTR],JET35[JET-ETA_RESTR]}
l1_htt280er_quad_jet_70_55_40_35_er2p5 <= single_htt_2496626727984 and quad_jet_17630949366336433287;
algo(86) <= l1_htt280er_quad_jet_70_55_40_35_er2p5;

-- 250 L1_HTT300er_QuadJet_70_55_40_35_er2p5 : HTT300 AND comb{JET70[JET-ETA_RESTR],JET55[JET-ETA_RESTR],JET40[JET-ETA_RESTR],JET35[JET-ETA_RESTR]}
l1_htt300er_quad_jet_70_55_40_35_er2p5 <= single_htt_2496626743344 and quad_jet_17630949366336433287;
algo(50) <= l1_htt300er_quad_jet_70_55_40_35_er2p5;

-- 258 L1_IsoTau40er_ETM80 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETM80
l1_iso_tau40er_etm80 <= single_tau_12210388642533153582 and single_etm_18699476016;
algo(91) <= l1_iso_tau40er_etm80;

-- 259 L1_IsoTau40er_ETM85 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETM85
l1_iso_tau40er_etm85 <= single_tau_12210388642533153582 and single_etm_18699476021;
algo(80) <= l1_iso_tau40er_etm85;

-- 260 L1_IsoTau40er_ETM90 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETM90
l1_iso_tau40er_etm90 <= single_tau_12210388642533153582 and single_etm_18699476144;
algo(103) <= l1_iso_tau40er_etm90;

-- 261 L1_IsoTau40er_ETM95 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETM95
l1_iso_tau40er_etm95 <= single_tau_12210388642533153582 and single_etm_18699476149;
algo(76) <= l1_iso_tau40er_etm95;

-- 262 L1_IsoTau40er_ETM100 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETM100
l1_iso_tau40er_etm100 <= single_tau_12210388642533153582 and single_etm_2393532815408;
algo(93) <= l1_iso_tau40er_etm100;

-- 263 L1_IsoTau40er_ETMHF80 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETMHF80
l1_iso_tau40er_etmhf80 <= single_tau_12210388642533153582 and single_etmhf_306372248968240;
algo(109) <= l1_iso_tau40er_etmhf80;

-- 264 L1_IsoTau40er_ETMHF90 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETMHF90
l1_iso_tau40er_etmhf90 <= single_tau_12210388642533153582 and single_etmhf_306372248968368;
algo(107) <= l1_iso_tau40er_etmhf90;

-- 265 L1_Mu22er2p1_IsoTau40er2p1 : MU22[MU-ETA_2p10,MU-QLTY_SNGL] AND TAU40[TAU-ETA_2p13,TAU-ISO_0xE]
l1_mu22er2p1_iso_tau40er2p1 <= single_mu_17494117756195063635 and single_tau_12210388642533153582;
algo(94) <= l1_mu22er2p1_iso_tau40er2p1;

-- 271 L1_DoubleJet60er3p0_ETM70 : comb{JET60[JET-ETA_3p00],JET60[JET-ETA_3p00]} AND ETM70
l1_double_jet60er3p0_etm70 <= double_jet_16350512121229658012 and single_etm_18699475888;
algo(42) <= l1_double_jet60er3p0_etm70;

-- 272 L1_DoubleJet60er3p0_ETM80 : comb{JET60[JET-ETA_3p00],JET60[JET-ETA_3p00]} AND ETM80
l1_double_jet60er3p0_etm80 <= double_jet_16350512121229658012 and single_etm_18699476016;
algo(45) <= l1_double_jet60er3p0_etm80;

-- 273 L1_DoubleJet60er3p0_ETM90 : comb{JET60[JET-ETA_3p00],JET60[JET-ETA_3p00]} AND ETM90
l1_double_jet60er3p0_etm90 <= double_jet_16350512121229658012 and single_etm_18699476144;
algo(47) <= l1_double_jet60er3p0_etm90;

-- 274 L1_DoubleJet60er3p0_ETM100 : comb{JET60[JET-ETA_3p00],JET60[JET-ETA_3p00]} AND ETM100
l1_double_jet60er3p0_etm100 <= double_jet_16350512121229658012 and single_etm_2393532815408;
algo(66) <= l1_double_jet60er3p0_etm100;

-- 282 L1_DoubleJet30_Mass_Min400_Mu6 : MU6[MU-QLTY_SNGL] AND mass_inv{JET30,JET30}[MASS_MIN_400]
l1_double_jet30_mass_min400_mu6 <= single_mu_14769293122775847365 and invariant_mass_2940638391871890823;
algo(51) <= l1_double_jet30_mass_min400_mu6;

-- 283 L1_DoubleJet30_Mass_Min400_Mu10 : MU10[MU-QLTY_SNGL] AND mass_inv{JET30,JET30}[MASS_MIN_400]
l1_double_jet30_mass_min400_mu10 <= single_mu_17545683025133343173 and invariant_mass_2940638391871890823;
algo(23) <= l1_double_jet30_mass_min400_mu10;

-- 305 L1_Mu6_HTT240er : MU6[MU-QLTY_SNGL] AND HTT240
l1_mu6_htt240er <= single_mu_14769293122775847365 and single_htt_2496626727472;
algo(110) <= l1_mu6_htt240er;

-- 306 L1_Mu6_HTT250er : MU6[MU-QLTY_SNGL] AND HTT250
l1_mu6_htt250er <= single_mu_14769293122775847365 and single_htt_2496626727600;
algo(111) <= l1_mu6_htt250er;

-- 307 L1_Mu15_HTT100er : MU15[MU-QLTY_SNGL] AND HTT100
l1_mu15_htt100er <= single_mu_17545683111032689093 and single_htt_2496626710576;
algo(27) <= l1_mu15_htt100er;

-- 308 L1_DoubleMu0_ETMHF40_Jet60_OR_DoubleJet30 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETMHF40 AND (comb{JET30,JET30} OR JET60)
l1_double_mu0_etmhf40_jet60_or_double_jet30 <= double_mu_14585777620730815295 and single_etmhf_306372248967728 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(75) <= l1_double_mu0_etmhf40_jet60_or_double_jet30;

-- 309 L1_DoubleMu0_ETMHF50_Jet60_OR_DoubleJet30 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETMHF50 AND (comb{JET30,JET30} OR JET60)
l1_double_mu0_etmhf50_jet60_or_double_jet30 <= double_mu_14585777620730815295 and single_etmhf_306372248967856 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(25) <= l1_double_mu0_etmhf50_jet60_or_double_jet30;

-- 310 L1_DoubleMu0_ETMHF60_Jet60_OR_DoubleJet30 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETMHF60 AND (comb{JET30,JET30} OR JET60)
l1_double_mu0_etmhf60_jet60_or_double_jet30 <= double_mu_14585777620730815295 and single_etmhf_306372248967984 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(79) <= l1_double_mu0_etmhf60_jet60_or_double_jet30;

-- 311 L1_DoubleMu0_ETMHF70_Jet60_OR_DoubleJet30 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETMHF70 AND (comb{JET30,JET30} OR JET60)
l1_double_mu0_etmhf70_jet60_or_double_jet30 <= double_mu_14585777620730815295 and single_etmhf_306372248968112 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(81) <= l1_double_mu0_etmhf70_jet60_or_double_jet30;

-- 312 L1_DoubleMu0_ETMHF80_Jet60_OR_DoubleJet30 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETMHF80 AND (comb{JET30,JET30} OR JET60)
l1_double_mu0_etmhf80_jet60_or_double_jet30 <= double_mu_14585777620730815295 and single_etmhf_306372248968240 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(83) <= l1_double_mu0_etmhf80_jet60_or_double_jet30;

-- 313 L1_DoubleMu3_SQ_ETMHF40_Jet60_OR_DoubleJet30 : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND ETMHF40 AND (comb{JET30,JET30} OR JET60)
l1_double_mu3_sq_etmhf40_jet60_or_double_jet30 <= double_mu_14585786515326686015 and single_etmhf_306372248967728 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(90) <= l1_double_mu3_sq_etmhf40_jet60_or_double_jet30;

-- 314 L1_DoubleMu3_SQ_ETMHF50_Jet60_OR_DoubleJet30 : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND ETMHF50 AND (comb{JET30,JET30} OR JET60)
l1_double_mu3_sq_etmhf50_jet60_or_double_jet30 <= double_mu_14585786515326686015 and single_etmhf_306372248967856 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(17) <= l1_double_mu3_sq_etmhf50_jet60_or_double_jet30;

-- 315 L1_DoubleMu3_SQ_ETMHF60_Jet60_OR_DoubleJet30 : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND ETMHF60 AND (comb{JET30,JET30} OR JET60)
l1_double_mu3_sq_etmhf60_jet60_or_double_jet30 <= double_mu_14585786515326686015 and single_etmhf_306372248967984 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(6) <= l1_double_mu3_sq_etmhf60_jet60_or_double_jet30;

-- 316 L1_DoubleMu3_SQ_ETMHF70_Jet60_OR_DoubleJet30 : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND ETMHF70 AND (comb{JET30,JET30} OR JET60)
l1_double_mu3_sq_etmhf70_jet60_or_double_jet30 <= double_mu_14585786515326686015 and single_etmhf_306372248968112 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(97) <= l1_double_mu3_sq_etmhf70_jet60_or_double_jet30;

-- 317 L1_DoubleMu3_SQ_ETMHF80_Jet60_OR_DoubleJet30 : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND ETMHF80 AND (comb{JET30,JET30} OR JET60)
l1_double_mu3_sq_etmhf80_jet60_or_double_jet30 <= double_mu_14585786515326686015 and single_etmhf_306372248968240 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(99) <= l1_double_mu3_sq_etmhf80_jet60_or_double_jet30;

-- 318 L1_DoubleMu3_SQ_HTT100er : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND HTT100
l1_double_mu3_sq_htt100er <= double_mu_14585786515326686015 and single_htt_2496626710576;
algo(101) <= l1_double_mu3_sq_htt100er;

-- 319 L1_DoubleMu3_SQ_HTT200er : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND HTT200
l1_double_mu3_sq_htt200er <= double_mu_14585786515326686015 and single_htt_2496626726960;
algo(96) <= l1_double_mu3_sq_htt200er;

-- 320 L1_DoubleMu3_SQ_HTT220er : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND HTT220
l1_double_mu3_sq_htt220er <= double_mu_14585786515326686015 and single_htt_2496626727216;
algo(104) <= l1_double_mu3_sq_htt220er;

-- 321 L1_DoubleMu3_SQ_HTT240er : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND HTT240
l1_double_mu3_sq_htt240er <= double_mu_14585786515326686015 and single_htt_2496626727472;
algo(108) <= l1_double_mu3_sq_htt240er;

-- 325 L1_DoubleEG6_HTT240er : comb{EG6,EG6} AND HTT240
l1_double_eg6_htt240er <= double_eg_8902241742241126126 and single_htt_2496626727472;
algo(67) <= l1_double_eg6_htt240er;

-- 326 L1_DoubleEG6_HTT250er : comb{EG6,EG6} AND HTT250
l1_double_eg6_htt250er <= double_eg_8902241742241126126 and single_htt_2496626727600;
algo(106) <= l1_double_eg6_htt250er;

-- 327 L1_DoubleEG6_HTT270er : comb{EG6,EG6} AND HTT270
l1_double_eg6_htt270er <= double_eg_8902241742241126126 and single_htt_2496626727856;
algo(74) <= l1_double_eg6_htt270er;

-- 328 L1_DoubleEG6_HTT300er : comb{EG6,EG6} AND HTT300
l1_double_eg6_htt300er <= double_eg_8902241742241126126 and single_htt_2496626743344;
algo(77) <= l1_double_eg6_htt300er;

-- 329 L1_ETMHF70_Jet60_OR_DoubleJet30 : ETMHF70 AND (comb{JET30,JET30} OR JET60)
l1_etmhf70_jet60_or_double_jet30 <= single_etmhf_306372248968112 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(39) <= l1_etmhf70_jet60_or_double_jet30;

-- 330 L1_ETMHF75_Jet60_OR_DoubleJet30 : ETMHF75 AND (comb{JET30,JET30} OR JET60)
l1_etmhf75_jet60_or_double_jet30 <= single_etmhf_306372248968117 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(44) <= l1_etmhf75_jet60_or_double_jet30;

-- 331 L1_ETMHF80_Jet60_OR_DoubleJet30 : ETMHF80 AND (comb{JET30,JET30} OR JET60)
l1_etmhf80_jet60_or_double_jet30 <= single_etmhf_306372248968240 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(72) <= l1_etmhf80_jet60_or_double_jet30;

-- 332 L1_ETMHF85_Jet60_OR_DoubleJet30 : ETMHF85 AND (comb{JET30,JET30} OR JET60)
l1_etmhf85_jet60_or_double_jet30 <= single_etmhf_306372248968245 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(59) <= l1_etmhf85_jet60_or_double_jet30;

-- 333 L1_ETMHF90_Jet60_OR_DoubleJet30 : ETMHF90 AND (comb{JET30,JET30} OR JET60)
l1_etmhf90_jet60_or_double_jet30 <= single_etmhf_306372248968368 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(9) <= l1_etmhf90_jet60_or_double_jet30;

-- 334 L1_ETMHF95_Jet60_OR_DoubleJet30 : ETMHF95 AND (comb{JET30,JET30} OR JET60)
l1_etmhf95_jet60_or_double_jet30 <= single_etmhf_306372248968373 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(12) <= l1_etmhf95_jet60_or_double_jet30;

-- 335 L1_ETMHF100_Jet60_OR_DoubleJet30 : ETMHF100 AND (comb{JET30,JET30} OR JET60)
l1_etmhf100_jet60_or_double_jet30 <= single_etmhf_39215647867820080 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(82) <= l1_etmhf100_jet60_or_double_jet30;

-- 336 L1_ETMHF105_Jet60_OR_DoubleJet30 : ETMHF105 AND (comb{JET30,JET30} OR JET60)
l1_etmhf105_jet60_or_double_jet30 <= single_etmhf_39215647867820085 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(15) <= l1_etmhf105_jet60_or_double_jet30;

-- 337 L1_ETMHF110_Jet60_OR_DoubleJet30 : ETMHF110 AND (comb{JET30,JET30} OR JET60)
l1_etmhf110_jet60_or_double_jet30 <= single_etmhf_39215647867820208 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(19) <= l1_etmhf110_jet60_or_double_jet30;

-- 338 L1_ETMHF115_Jet60_OR_DoubleJet30 : ETMHF115 AND (comb{JET30,JET30} OR JET60)
l1_etmhf115_jet60_or_double_jet30 <= single_etmhf_39215647867820213 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(22) <= l1_etmhf115_jet60_or_double_jet30;

-- 339 L1_ETMHF120_Jet60_OR_DoubleJet30 : ETMHF120 AND (comb{JET30,JET30} OR JET60)
l1_etmhf120_jet60_or_double_jet30 <= single_etmhf_39215647867820336 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(64) <= l1_etmhf120_jet60_or_double_jet30;

-- 340 L1_ETMHF70_Jet60_OR_DiJet30woTT28 : ETMHF70 AND (comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_CENNoTT28]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_FWD_NEG],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_NEG]} OR JET60)
l1_etmhf70_jet60_or_di_jet30wo_tt28 <= single_etmhf_306372248968112 and ( double_jet_10840719965249128790 or double_jet_7821119013284253287 or double_jet_7821119012726214247 or double_jet_3851467703875127396 or double_jet_17504692923644168291 or double_jet_3851467703317088356 or single_jet_20010310448 );
algo(37) <= l1_etmhf70_jet60_or_di_jet30wo_tt28;

-- 341 L1_ETMHF80_Jet60_OR_DiJet30woTT28 : ETMHF80 AND (comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_CENNoTT28]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_FWD_NEG],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_NEG]} OR JET60)
l1_etmhf80_jet60_or_di_jet30wo_tt28 <= single_etmhf_306372248968240 and ( double_jet_10840719965249128790 or double_jet_7821119013284253287 or double_jet_7821119012726214247 or double_jet_3851467703875127396 or double_jet_17504692923644168291 or double_jet_3851467703317088356 or single_jet_20010310448 );
algo(63) <= l1_etmhf80_jet60_or_di_jet30wo_tt28;

-- 342 L1_ETMHF90_Jet60_OR_DiJet30woTT28 : ETMHF90 AND (comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_CENNoTT28]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_FWD_NEG],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_NEG]} OR JET60)
l1_etmhf90_jet60_or_di_jet30wo_tt28 <= single_etmhf_306372248968368 and ( double_jet_10840719965249128790 or double_jet_7821119013284253287 or double_jet_7821119012726214247 or double_jet_3851467703875127396 or double_jet_17504692923644168291 or double_jet_3851467703317088356 or single_jet_20010310448 );
algo(61) <= l1_etmhf90_jet60_or_di_jet30wo_tt28;

-- 343 L1_ETMHF100_Jet60_OR_DiJet30woTT28 : ETMHF100 AND (comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_CENNoTT28]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_FWD_NEG],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_NEG]} OR JET60)
l1_etmhf100_jet60_or_di_jet30wo_tt28 <= single_etmhf_39215647867820080 and ( double_jet_10840719965249128790 or double_jet_7821119013284253287 or double_jet_7821119012726214247 or double_jet_3851467703875127396 or double_jet_17504692923644168291 or double_jet_3851467703317088356 or single_jet_20010310448 );
algo(62) <= l1_etmhf100_jet60_or_di_jet30wo_tt28;

-- 344 L1_ETMHF110_Jet60_OR_DiJet30woTT28 : ETMHF110 AND (comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_CENNoTT28]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_FWD_NEG],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_NEG]} OR JET60)
l1_etmhf110_jet60_or_di_jet30wo_tt28 <= single_etmhf_39215647867820208 and ( double_jet_10840719965249128790 or double_jet_7821119013284253287 or double_jet_7821119012726214247 or double_jet_3851467703875127396 or double_jet_17504692923644168291 or double_jet_3851467703317088356 or single_jet_20010310448 );
algo(92) <= l1_etmhf110_jet60_or_di_jet30wo_tt28;

-- 345 L1_ETMHF120_Jet60_OR_DiJet30woTT28 : ETMHF120 AND (comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_CENNoTT28]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_FWD_NEG],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_NEG]} OR JET60)
l1_etmhf120_jet60_or_di_jet30wo_tt28 <= single_etmhf_39215647867820336 and ( double_jet_10840719965249128790 or double_jet_7821119013284253287 or double_jet_7821119012726214247 or double_jet_3851467703875127396 or double_jet_17504692923644168291 or double_jet_3851467703317088356 or single_jet_20010310448 );
algo(29) <= l1_etmhf120_jet60_or_di_jet30wo_tt28;

-- 346 L1_ETMHF70_Jet90_OR_DoubleJet45_OR_TripleJet30 : ETMHF70 AND (comb{JET30,JET30,JET30} OR comb{JET45,JET45} OR JET90)
l1_etmhf70_jet90_or_double_jet45_or_triple_jet30 <= single_etmhf_306372248968112 and ( triple_jet_1776207310752122438 or double_jet_3805139313034161255 or single_jet_20010310832 );
algo(13) <= l1_etmhf70_jet90_or_double_jet45_or_triple_jet30;

-- 347 L1_ETMHF80_Jet90_OR_DoubleJet45_OR_TripleJet30 : ETMHF80 AND (comb{JET30,JET30,JET30} OR comb{JET45,JET45} OR JET90)
l1_etmhf80_jet90_or_double_jet45_or_triple_jet30 <= single_etmhf_306372248968240 and ( triple_jet_1776207310752122438 or double_jet_3805139313034161255 or single_jet_20010310832 );
algo(55) <= l1_etmhf80_jet90_or_double_jet45_or_triple_jet30;

-- 348 L1_ETMHF90_Jet90_OR_DoubleJet45_OR_TripleJet30 : ETMHF90 AND (comb{JET30,JET30,JET30} OR comb{JET45,JET45} OR JET90)
l1_etmhf90_jet90_or_double_jet45_or_triple_jet30 <= single_etmhf_306372248968368 and ( triple_jet_1776207310752122438 or double_jet_3805139313034161255 or single_jet_20010310832 );
algo(10) <= l1_etmhf90_jet90_or_double_jet45_or_triple_jet30;

-- 349 L1_ETMHF100_Jet90_OR_DoubleJet45_OR_TripleJet30 : ETMHF100 AND (comb{JET30,JET30,JET30} OR comb{JET45,JET45} OR JET90)
l1_etmhf100_jet90_or_double_jet45_or_triple_jet30 <= single_etmhf_39215647867820080 and ( triple_jet_1776207310752122438 or double_jet_3805139313034161255 or single_jet_20010310832 );
algo(11) <= l1_etmhf100_jet90_or_double_jet45_or_triple_jet30;

-- 350 L1_ETMHF110_Jet90_OR_DoubleJet45_OR_TripleJet30 : ETMHF110 AND (comb{JET30,JET30,JET30} OR comb{JET45,JET45} OR JET90)
l1_etmhf110_jet90_or_double_jet45_or_triple_jet30 <= single_etmhf_39215647867820208 and ( triple_jet_1776207310752122438 or double_jet_3805139313034161255 or single_jet_20010310832 );
algo(41) <= l1_etmhf110_jet90_or_double_jet45_or_triple_jet30;

-- 352 L1_ETMHF80_HTT60 : ETMHF80 AND HTT60
l1_etmhf80_htt60 <= single_etmhf_306372248968240 and single_htt_19504896816;
algo(48) <= l1_etmhf80_htt60;

-- 353 L1_ETMHF90_HTT60 : ETMHF90 AND HTT60
l1_etmhf90_htt60 <= single_etmhf_306372248968368 and single_htt_19504896816;
algo(38) <= l1_etmhf90_htt60;

-- 354 L1_ETMHF100_HTT60 : ETMHF100 AND HTT60
l1_etmhf100_htt60 <= single_etmhf_39215647867820080 and single_htt_19504896816;
algo(5) <= l1_etmhf100_htt60;

-- 355 L1_ETMHF110_HTT60 : ETMHF110 AND HTT60
l1_etmhf110_htt60 <= single_etmhf_39215647867820208 and single_htt_19504896816;
algo(54) <= l1_etmhf110_htt60;

-- 356 L1_ETMHF120_HTT60 : ETMHF120 AND HTT60
l1_etmhf120_htt60 <= single_etmhf_39215647867820336 and single_htt_19504896816;
algo(20) <= l1_etmhf120_htt60;

-- 390 L1_Mu6_DoubleEG17 : MU6[MU-QLTY_SNGL] AND comb{EG17,EG17}
l1_mu6_double_eg17 <= single_mu_14769293122775847365 and double_eg_14367290900143979231;
algo(100) <= l1_mu6_double_eg17;

-- 410 L1_Mu6_HTT200er : MU6[MU-QLTY_SNGL] AND HTT200
l1_mu6_htt200er <= single_mu_14769293122775847365 and single_htt_2496626726960;
algo(7) <= l1_mu6_htt200er;

-- 413 L1_EG27er2p1_HTT200er : EG27[EG-ETA_2p13] AND HTT200
l1_eg27er2p1_htt200er <= single_eg_14262501742930627507 and single_htt_2496626726960;
algo(58) <= l1_eg27er2p1_htt200er;

-- 414 L1_DoubleJet60er3p0_ETM60 : comb{JET60[JET-ETA_CEN],JET60[JET-ETA_CEN]} AND ETM60
l1_double_jet60er3p0_etm60 <= double_jet_8659301241633819347 and single_etm_18699475760;
algo(36) <= l1_double_jet60er3p0_etm60;

-- 417 L1_DoubleMu0_ETM40 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETM40
l1_double_mu0_etm40 <= double_mu_14585777620730815295 and single_etm_18699475504;
algo(65) <= l1_double_mu0_etm40;

-- 418 L1_DoubleMu0_ETM55 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETM55
l1_double_mu0_etm55 <= double_mu_14585777620730815295 and single_etm_18699475637;
algo(68) <= l1_double_mu0_etm55;

-- 419 L1_DoubleMu0_ETM60 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETM60
l1_double_mu0_etm60 <= double_mu_14585777620730815295 and single_etm_18699475760;
algo(69) <= l1_double_mu0_etm60;

-- 420 L1_DoubleMu0_ETM65 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETM65
l1_double_mu0_etm65 <= double_mu_14585777620730815295 and single_etm_18699475765;
algo(71) <= l1_double_mu0_etm65;

-- 421 L1_DoubleMu0_ETM70 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETM70
l1_double_mu0_etm70 <= double_mu_14585777620730815295 and single_etm_18699475888;
algo(73) <= l1_double_mu0_etm70;

-- 424 L1_DoubleEG6_HTT255er : comb{EG6,EG6} AND HTT255
l1_double_eg6_htt255er <= double_eg_8902241742241126126 and single_htt_2496626727605;
algo(70) <= l1_double_eg6_htt255er;

-- 427 L1_Mu6_DoubleEG10 : MU6[MU-QLTY_SNGL] AND comb{EG10,EG10}
l1_mu6_double_eg10 <= single_mu_14769293122775847365 and double_eg_14367260113818400607;
algo(98) <= l1_mu6_double_eg10;

-- 430 L1_Mu3_JetC120_dEta_Max0p4_dPhi_Max0p4 : dist{MU3[MU-QLTY_SNGL],JET120[JET-ETA_CEN]}[DETA_MAX_0p4,DPHI_MAX_0p4]
l1_mu3_jet_c120_d_eta_max0p4_d_phi_max0p4 <= calo_muon_correlation_15993852978349077723;
algo(114) <= l1_mu3_jet_c120_d_eta_max0p4_d_phi_max0p4;

-- 457 L1_BPTX_BeamGas_B2_VME : EXT_BPTX_BeamGas_B2_VME
l1_bptx_beam_gas_b2_vme <= single_ext_9960888781443116569;
algo(1) <= l1_bptx_beam_gas_b2_vme;

-- 471 L1_BPTX_OR_Ref3_VME : EXT_BPTX_OR_Ref3_VME
l1_bptx_or_ref3_vme <= single_ext_9945386644737729380;
algo(2) <= l1_bptx_or_ref3_vme;

-- 474 L1_BPTX_AND_Ref4_VME : EXT_BPTX_AND_Ref4_VME
l1_bptx_and_ref4_vme <= single_ext_10333571493479462268;
algo(0) <= l1_bptx_and_ref4_vme;

-- 477 L1_FirstCollisionInTrain : EXT_BPTX_FirstCollisionInTrain_VME
l1_first_collision_in_train <= single_ext_16249626042834147010;
algo(3) <= l1_first_collision_in_train;


-- ========================================================