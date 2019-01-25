-- ========================================================
-- from VHDL producer:

-- Module ID: 5

-- Name of L1 Trigger Menu:
-- L1Menu_pp502Collisions2017_v4

-- Unique ID of L1 Trigger Menu:
-- eb47f458-5cf5-408d-a5bf-004dffe6cd1b

-- Unique ID of firmware implementation:
-- 20c66d59-117a-430e-becd-61bae7a6e5a1

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.2.1

-- External condition assignment
    single_ext_1189548080491112364 <= ext_cond_bx_0(4); -- single_ext_1189548080491112364
    single_ext_17960169865075597331 <= ext_cond_bx_0(9); -- single_ext_17960169865075597331
    single_ext_6102799243448260461 <= ext_cond_bx_0(7); -- single_ext_6102799243448260461
    single_ext_6106690317781795102 <= ext_cond_bx_0(41); -- single_ext_6106690317781795102
    single_ext_6106690317781795104 <= ext_cond_bx_0(43); -- single_ext_6106690317781795104
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
    muon_charge_correlations_bx_0_bx_0_i: entity work.muon_charge_correlations
        port map(mu_bx_0, mu_bx_0,
            ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
            ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
            ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);

-- Instantiations of eta and phi conversion to muon scale for calo-muon and muon-esums correlation conditions (used for DETA, DPHI, DR and mass) - once for every calo ObjectType in certain Bx used in correlation conditions

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

-- Instantiations of differences for correlation conditions (used for DETA, DPHI, DR, mass and b_tagging) - once for correlation conditions with two ObjectTypes in certain Bxs

-- Instantiations of cosh-deta and cos-dphi LUTs for correlation conditions (used for mass and overlap_remover) - once for correlation conditions with two ObjectTypes in certain Bxs

-- Instantiations of conditions  
double_eg_14235532651073082298_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 11, 0, 0, 
	2, true, EG_TYPE,
        (X"0014", X"000A", X"0000", X"0000"),
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
	double_eg_14235532651073082298);

  
double_eg_14235532822871774138_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 11, 0, 0, 
	2, true, EG_TYPE,
        (X"001E", X"000A", X"0000", X"0000"),
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
	double_eg_14235532822871774138);

  
double_eg_14367823063771822943_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 11, 0, 0, 
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

  
double_eg_14367831859864844383_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 11, 0, 0, 
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

  
double_eg_14367836257911355231_i: entity work.calo_conditions_v6_no_quad
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
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, eg_bx_0,
	double_eg_14367836257911355231);

  
double_eg_14367845054004377695_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 11, 0, 0, 
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

  
double_eg_14367845054004377951_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 11, 0, 0, 
	2, true, EG_TYPE,
        (X"0032", X"001C", X"0000", X"0000"),
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
	double_eg_14367845054004377951);

  
double_eg_2931778810409473715_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 11, 0, 0, 
	2, true, EG_TYPE,
        (X"0030", X"0030", X"0000", X"0000"),
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
	double_eg_2931778810409473715);

  
double_jet_15903553762640785506_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 11, 0, 0, 
	2, true, JET_TYPE,
        (X"00E0", X"00E0", X"0000", X"0000"),
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
	double_jet_15903553762640785506);

  
double_jet_15939450583904677986_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 11, 0, 0, 
	2, true, JET_TYPE,
        (X"012C", X"012C", X"0000", X"0000"),
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
	double_jet_15939450583904677986);

  
double_jet_4975926206739241185_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 11, 0, 0, 
	2, true, JET_TYPE,
        (X"0020", X"0010", X"0000", X"0000"),
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
	double_jet_4975926206739241185);

  
double_jet_4975926730725251297_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 11, 0, 0, 
	2, true, JET_TYPE,
        (X"0028", X"0010", X"0000", X"0000"),
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
	double_jet_4975926730725251297);

  
double_jet_6172847213698614300_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 11, 0, 0, 
	2, true, JET_TYPE,
        (X"0010", X"0010", X"0000", X"0000"),
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
	double_jet_6172847213698614300);

  
double_jet_8659155958470085331_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 11, 0, 0, 
	2, true, JET_TYPE,
        (X"0050", X"0050", X"0000", X"0000"),
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
	double_jet_8659155958470085331);

  
double_jet_8659301094004951763_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 11, 0, 0, 
	2, true, JET_TYPE,
        (X"0078", X"0078", X"0000", X"0000"),
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
	double_jet_8659301094004951763);

  
single_eg_1139634_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 0, 0, 0, 
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

  
single_eg_1139637_i: entity work.calo_conditions_v6_no_quad
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
	single_eg_1139637);

  
single_eg_12507579852056531520_i: entity work.calo_conditions_v6_no_quad
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

  
single_eg_12507579852184457792_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 0, 0, 0, 
	1, true, EG_TYPE,
        (X"002C", X"0000", X"0000", X"0000"),
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
	single_eg_12507579852184457792);

  
single_eg_12507579852188652096_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 0, 0, 0, 
	1, true, EG_TYPE,
        (X"0034", X"0000", X"0000", X"0000"),
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
	single_eg_12507579852188652096);

  
single_eg_12507579852316578368_i: entity work.calo_conditions_v6_no_quad
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

  
single_eg_12507579852320772672_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 0, 0, 0, 
	1, true, EG_TYPE,
        (X"0044", X"0000", X"0000", X"0000"),
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
	single_eg_12507579852320772672);

  
single_eg_12507579852322869824_i: entity work.calo_conditions_v6_no_quad
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

  
single_eg_12507579852324966976_i: entity work.calo_conditions_v6_no_quad
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

  
single_eg_145873072_i: entity work.calo_conditions_v6_no_quad
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
	single_eg_145873072);

  
single_eg_145873077_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 0, 0, 0, 
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

  
single_eg_145873201_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 0, 0, 0, 
	1, true, EG_TYPE,
        (X"002A", X"0000", X"0000", X"0000"),
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
	single_eg_145873201);

  
single_eg_145873206_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 0, 0, 0, 
	1, true, EG_TYPE,
        (X"0034", X"0000", X"0000", X"0000"),
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
	single_eg_145873206);

  
single_eg_145873328_i: entity work.calo_conditions_v6_no_quad
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
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, eg_bx_0,
	single_eg_145873328);

  
single_eg_145873332_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 0, 0, 0, 
	1, true, EG_TYPE,
        (X"0044", X"0000", X"0000", X"0000"),
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
	single_eg_145873332);

  
single_eg_145873336_i: entity work.calo_conditions_v6_no_quad
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
        (X"F", X"F", X"F", X"F"),
	false
    )
    port map(lhc_clk, eg_bx_0,
	single_eg_145873336);

  
single_eg_145873458_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 0, 0, 0, 
	1, true, EG_TYPE,
        (X"0054", X"0000", X"0000", X"0000"),
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
	single_eg_145873458);

  
single_jet_156330552_i: entity work.calo_conditions_v6_no_quad
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
	single_jet_156330552);

  
single_jet_15873313992196292033_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 0, 0, 0, 
	1, true, JET_TYPE,
        (X"0028", X"0000", X"0000", X"0000"),
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
	single_jet_15873313992196292033);

  
single_jet_15873313992200651713_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 0, 0, 0, 
	1, true, JET_TYPE,
        (X"0028", X"0000", X"0000", X"0000"),
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
	single_jet_15873313992200651713);

  
single_jet_15873314009376161217_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 0, 0, 0, 
	1, true, JET_TYPE,
        (X"0050", X"0000", X"0000", X"0000"),
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
	single_jet_15873314009376161217);

  
single_jet_15873314009380520897_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 0, 0, 0, 
	1, true, JET_TYPE,
        (X"0050", X"0000", X"0000", X"0000"),
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
	single_jet_15873314009380520897);

  
single_jet_15873314026556030401_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 0, 0, 0, 
	1, true, JET_TYPE,
        (X"0078", X"0000", X"0000", X"0000"),
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
	single_jet_15873314026556030401);

  
single_jet_15873314026560390081_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 0, 0, 0, 
	1, true, JET_TYPE,
        (X"0078", X"0000", X"0000", X"0000"),
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
	single_jet_15873314026560390081);

  
single_jet_20010309810_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 0, 0, 0, 
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

  
single_jet_20010309944_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 0, 0, 0, 
	1, true, JET_TYPE,
        (X"0038", X"0000", X"0000", X"0000"),
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
	single_jet_20010309944);

  
single_jet_20010310069_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 0, 0, 0, 
	1, true, JET_TYPE,
        (X"0046", X"0000", X"0000", X"0000"),
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
	single_jet_20010310069);

  
single_jet_20010310196_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 0, 0, 0, 
	1, true, JET_TYPE,
        (X"0058", X"0000", X"0000", X"0000"),
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
	single_jet_20010310196);

  
single_jet_20010310320_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 0, 0, 0, 
	1, true, JET_TYPE,
        (X"0064", X"0000", X"0000", X"0000"),
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
	single_jet_20010310320);

  
single_jet_20010310448_i: entity work.calo_conditions_v6_no_quad
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

  
single_jet_20010310832_i: entity work.calo_conditions_v6_no_quad
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

  
single_jet_2561319655728_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 0, 0, 0, 
	1, true, JET_TYPE,
        (X"00F0", X"0000", X"0000", X"0000"),
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
	single_jet_2561319655728);

  
single_jet_2561319656112_i: entity work.calo_conditions_v6_no_quad
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

  
single_jet_2561319656240_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 0, 0, 0, 
	1, true, JET_TYPE,
        (X"0140", X"0000", X"0000", X"0000"),
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
	single_jet_2561319656240);

  
single_jet_2561319656496_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 0, 0, 0, 
	1, true, JET_TYPE,
        (X"0168", X"0000", X"0000", X"0000"),
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
	single_jet_2561319656496);

  
single_jet_2561319671856_i: entity work.calo_conditions_v6_no_quad
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

  
single_jet_5967545309672598855_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 0, 0, 0, 
	1, true, JET_TYPE,
        (X"0028", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"003D", X"0000", X"0000", X"0000"), (X"00C2", X"0000", X"0000", X"0000"),
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
	single_jet_5967545309672598855);

  
single_jet_5967545344434990407_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 0, 0, 0, 
	1, true, JET_TYPE,
        (X"0056", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"003D", X"0000", X"0000", X"0000"), (X"00C2", X"0000", X"0000", X"0000"),
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
	single_jet_5967545344434990407);

  
single_jet_5967545344837643591_i: entity work.calo_conditions_v6_no_quad
    generic map(0, 11, 0, 0, 0, 0, 
	1, true, JET_TYPE,
        (X"005C", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"003D", X"0000", X"0000", X"0000"), (X"00C2", X"0000", X"0000", X"0000"),
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
	single_jet_5967545344837643591);


double_mu_12394164411069199406_i: entity work.muon_conditions_v6
    generic map(0, 7, 0, 7, 0, 0, 0, 0,
        2, true,
        (X"0015", X"0015", X"0000", X"0000"),
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
        double_mu_12394164411069199406,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


double_mu_14585778268989477695_i: entity work.muon_conditions_v6
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


double_mu_16961159554147985412_i: entity work.muon_conditions_v6
    generic map(0, 7, 0, 7, 0, 0, 0, 0,
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
        (X"F000", X"F000", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        double_mu_16961159554147985412,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


double_mu_3137853811412695564_i: entity work.muon_conditions_v6
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
        double_mu_3137853811412695564,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


single_mu_14243093768255232179_i: entity work.muon_conditions_v6
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
        single_mu_14243093768255232179);


single_mu_14769293018627052229_i: entity work.muon_conditions_v6
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
        single_mu_14769293018627052229);


single_mu_14769293019696632261_i: entity work.muon_conditions_v6
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
        single_mu_14769293019696632261);


single_mu_14769293139955716549_i: entity work.muon_conditions_v6
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
        single_mu_14769293139955716549);


single_mu_17545683038261595717_i: entity work.muon_conditions_v6
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


single_mu_17545683128212558277_i: entity work.muon_conditions_v6
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


single_mu_17545685224156598725_i: entity work.muon_conditions_v6
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
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


single_mu_17545685310055944645_i: entity work.muon_conditions_v6
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"0033", X"0000", X"0000", X"0000"),
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
        single_mu_17545685310055944645);


single_mu_17545687423179854277_i: entity work.muon_conditions_v6
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"003D", X"0000", X"0000", X"0000"),
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
        single_mu_17545687423179854277);


single_mu_6011484727103937211_i: entity work.muon_conditions_v6
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"0001", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0072", X"0000", X"0000", X"0000"), (X"004A", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"01B6", X"0000", X"0000", X"0000"), (X"018E", X"0000", X"0000", X"0000"),
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
        single_mu_6011484727103937211);


single_ett_18699590192_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0050",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_18699590192);


single_ett_18699590320_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0064",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_18699590320);


single_ett_18699590448_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0078",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_18699590448);


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


single_ett_18699590704_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"00A0",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_18699590704);


single_ett_18699590709_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"00AA",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_18699590709);


single_ett_18699590832_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"00B4",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_18699590832);


single_ett_18699590837_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"00BE",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_18699590837);


single_ett_2393547495472_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"00C8",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_2393547495472);


single_ett_2393547495600_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"00DC",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_2393547495600);


single_mbt0_hfm_43640316738250417_i: entity work.min_bias_hf_conditions
    generic map(true, MBT0HFM_TYPE, X"1")
    port map(lhc_clk, mbt0hfm_bx_0, single_mbt0_hfm_43640316738250417);


single_mbt0_hfp_43640316738250801_i: entity work.min_bias_hf_conditions
    generic map(true, MBT0HFP_TYPE, X"1")
    port map(lhc_clk, mbt0hfp_bx_0, single_mbt0_hfp_43640316738250801);



-- Instantiations of algorithms

-- 1 L1_SingleMuOpen : MU0[MU-QLTY_OPEN]
l1_single_mu_open <= single_mu_14769293018627052229;
algo(21) <= l1_single_mu_open;

-- 2 L1_SingleMuCosmics_BMTF : MU0[MU-ETA_BMTF]
l1_single_mu_cosmics_bmtf <= single_mu_14243093768255232179;
algo(42) <= l1_single_mu_cosmics_bmtf;

-- 3 L1_SingleMuCosmics_OMTF : MU0[MU-ETA_OMTF_POS,MU-ETA_OMTF_NEG]
l1_single_mu_cosmics_omtf <= single_mu_6011484727103937211;
algo(43) <= l1_single_mu_cosmics_omtf;

-- 10 L1_SingleMu7 : MU7[MU-QLTY_SNGL]
l1_single_mu7 <= single_mu_14769293139955716549;
algo(41) <= l1_single_mu7;

-- 12 L1_SingleMu11_LowQ : MU11[MU-QLTY_DBLE]
l1_single_mu11_low_q <= single_mu_17545683038261595717;
algo(36) <= l1_single_mu11_low_q;

-- 16 L1_SingleMu16 : MU16[MU-QLTY_SNGL]
l1_single_mu16 <= single_mu_17545683128212558277;
algo(37) <= l1_single_mu16;

-- 18 L1_SingleMu20 : MU20[MU-QLTY_SNGL]
l1_single_mu20 <= single_mu_17545685224156598725;
algo(38) <= l1_single_mu20;

-- 23 L1_SingleMu25 : MU25[MU-QLTY_SNGL]
l1_single_mu25 <= single_mu_17545685310055944645;
algo(39) <= l1_single_mu25;

-- 24 L1_SingleMu30 : MU30[MU-QLTY_SNGL]
l1_single_mu30 <= single_mu_17545687423179854277;
algo(40) <= l1_single_mu30;

-- 46 L1_SingleMu0 : MU0[MU-QLTY_SNGL]
l1_single_mu0 <= single_mu_14769293019696632261;
algo(35) <= l1_single_mu0;

-- 50 L1_SingleEG5 : EG5
l1_single_eg5 <= single_eg_1139637;
algo(70) <= l1_single_eg5;

-- 51 L1_SingleEG10 : EG10
l1_single_eg10 <= single_eg_145873072;
algo(62) <= l1_single_eg10;

-- 52 L1_SingleEG15 : EG15
l1_single_eg15 <= single_eg_145873077;
algo(63) <= l1_single_eg15;

-- 55 L1_SingleEG26 : EG26
l1_single_eg26 <= single_eg_145873206;
algo(65) <= l1_single_eg26;

-- 57 L1_SingleEG30 : EG30
l1_single_eg30 <= single_eg_145873328;
algo(66) <= l1_single_eg30;

-- 59 L1_SingleEG34 : EG34
l1_single_eg34 <= single_eg_145873332;
algo(67) <= l1_single_eg34;

-- 61 L1_SingleEG38 : EG38
l1_single_eg38 <= single_eg_145873336;
algo(68) <= l1_single_eg38;

-- 63 L1_SingleEG42 : EG42
l1_single_eg42 <= single_eg_145873458;
algo(69) <= l1_single_eg42;

-- 66 L1_SingleEG2_BptxAND : EG2 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg2_bptx_and <= single_eg_1139634 and single_ext_1189548080491112364;
algo(17) <= l1_single_eg2_bptx_and;

-- 67 L1_SingleEG21 : EG21
l1_single_eg21 <= single_eg_145873201;
algo(64) <= l1_single_eg21;

-- 69 L1_SingleIsoEG18 : EG18[EG-ISO_0xA]
l1_single_iso_eg18 <= single_eg_12507579852056531520;
algo(71) <= l1_single_iso_eg18;

-- 71 L1_SingleIsoEG22 : EG22[EG-ISO_0xA]
l1_single_iso_eg22 <= single_eg_12507579852184457792;
algo(72) <= l1_single_iso_eg22;

-- 73 L1_SingleIsoEG26 : EG26[EG-ISO_0xA]
l1_single_iso_eg26 <= single_eg_12507579852188652096;
algo(73) <= l1_single_iso_eg26;

-- 75 L1_SingleIsoEG30 : EG30[EG-ISO_0xA]
l1_single_iso_eg30 <= single_eg_12507579852316578368;
algo(74) <= l1_single_iso_eg30;

-- 77 L1_SingleIsoEG34 : EG34[EG-ISO_0xA]
l1_single_iso_eg34 <= single_eg_12507579852320772672;
algo(75) <= l1_single_iso_eg34;

-- 79 L1_SingleIsoEG36 : EG36[EG-ISO_0xA]
l1_single_iso_eg36 <= single_eg_12507579852322869824;
algo(76) <= l1_single_iso_eg36;

-- 81 L1_SingleIsoEG38 : EG38[EG-ISO_0xA]
l1_single_iso_eg38 <= single_eg_12507579852324966976;
algo(77) <= l1_single_iso_eg38;

-- 98 L1_DoubleEG_10_5 : comb{EG10,EG5}
l1_double_eg_10_5 <= double_eg_14235532651073082298;
algo(44) <= l1_double_eg_10_5;

-- 99 L1_DoubleEG_15_5 : comb{EG15,EG5}
l1_double_eg_15_5 <= double_eg_14235532822871774138;
algo(45) <= l1_double_eg_15_5;

-- 102 L1_DoubleEG_20_18 : comb{EG20,EG18}
l1_double_eg_20_18 <= double_eg_14367823063771822943;
algo(46) <= l1_double_eg_20_18;

-- 104 L1_DoubleEG_22_12 : comb{EG22,EG12}
l1_double_eg_22_12 <= double_eg_14367831859864844383;
algo(47) <= l1_double_eg_22_12;

-- 106 L1_DoubleEG_23_10 : comb{EG23,EG10}
l1_double_eg_23_10 <= double_eg_14367836257911355231;
algo(48) <= l1_double_eg_23_10;

-- 108 L1_DoubleEG_25_12 : comb{EG25,EG12}
l1_double_eg_25_12 <= double_eg_14367845054004377695;
algo(49) <= l1_double_eg_25_12;

-- 110 L1_DoubleEG_25_14 : comb{EG25,EG14}
l1_double_eg_25_14 <= double_eg_14367845054004377951;
algo(50) <= l1_double_eg_25_14;

-- 112 L1_DoubleLooseIsoEG24er2p1 : comb{EG24[EG-ISO_0xC,EG-ETA_2p13],EG24[EG-ISO_0xC,EG-ETA_2p13]}
l1_double_loose_iso_eg24er2p1 <= double_eg_2931778810409473715;
algo(58) <= l1_double_loose_iso_eg24er2p1;

-- 118 L1_SingleJet44 : JET44
l1_single_jet44 <= single_jet_20010310196;
algo(85) <= l1_single_jet44;

-- 119 L1_SingleJet8_BptxAND : JET8 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet8_bptx_and <= single_jet_156330552 and single_ext_1189548080491112364;
algo(6) <= l1_single_jet8_bptx_and;

-- 124 L1_SingleJet28 : JET28
l1_single_jet28 <= single_jet_20010309944;
algo(83) <= l1_single_jet28;

-- 126 L1_SingleJet50 : JET50
l1_single_jet50 <= single_jet_20010310320;
algo(86) <= l1_single_jet50;

-- 128 L1_SingleJet20_FWD : JET20[JET-ETA_FWD_2p61_NEG] OR JET20[JET-ETA_FWD_2p61_POS]
l1_single_jet20_fwd <= single_jet_15873313992196292033 or single_jet_15873313992200651713;
algo(59) <= l1_single_jet20_fwd;

-- 129 L1_SingleJet40_FWD : JET40[JET-ETA_FWD_2p61_NEG] OR JET40[JET-ETA_FWD_2p61_POS]
l1_single_jet40_fwd <= single_jet_15873314009376161217 or single_jet_15873314009380520897;
algo(60) <= l1_single_jet40_fwd;

-- 133 L1_SingleJet35 : JET35
l1_single_jet35 <= single_jet_20010310069;
algo(84) <= l1_single_jet35;

-- 134 L1_SingleJet60 : JET60
l1_single_jet60 <= single_jet_20010310448;
algo(87) <= l1_single_jet60;

-- 135 L1_SingleJet90 : JET90
l1_single_jet90 <= single_jet_20010310832;
algo(88) <= l1_single_jet90;

-- 136 L1_SingleJet120 : JET120
l1_single_jet120 <= single_jet_2561319655728;
algo(78) <= l1_single_jet120;

-- 138 L1_SingleJet150 : JET150
l1_single_jet150 <= single_jet_2561319656112;
algo(79) <= l1_single_jet150;

-- 139 L1_SingleJet160 : JET160
l1_single_jet160 <= single_jet_2561319656240;
algo(80) <= l1_single_jet160;

-- 141 L1_SingleJet180 : JET180
l1_single_jet180 <= single_jet_2561319656496;
algo(81) <= l1_single_jet180;

-- 142 L1_SingleJet200 : JET200
l1_single_jet200 <= single_jet_2561319671856;
algo(82) <= l1_single_jet200;

-- 144 L1_SingleJet60_FWD : JET60[JET-ETA_FWD_2p61_NEG] OR JET60[JET-ETA_FWD_2p61_POS]
l1_single_jet60_fwd <= single_jet_15873314026556030401 or single_jet_15873314026560390081;
algo(61) <= l1_single_jet60_fwd;

-- 147 L1_SingleJet12_BptxAND : JET12 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet12_bptx_and <= single_jet_20010309810 and single_ext_1189548080491112364;
algo(30) <= l1_single_jet12_bptx_and;

-- 150 L1_DoubleJet8er2p7 : comb{JET8[JET-ETA_2p7],JET8[JET-ETA_2p7]}
l1_double_jet8er2p7 <= double_jet_6172847213698614300;
algo(57) <= l1_double_jet8er2p7;

-- 151 L1_DoubleJet40er2p7 : comb{JET40[JET-ETA_2p7],JET40[JET-ETA_2p7]}
l1_double_jet40er2p7 <= double_jet_8659155958470085331;
algo(55) <= l1_double_jet40er2p7;

-- 153 L1_DoubleJet60er2p7 : comb{JET60[JET-ETA_2p7],JET60[JET-ETA_2p7]}
l1_double_jet60er2p7 <= double_jet_8659301094004951763;
algo(56) <= l1_double_jet60er2p7;

-- 156 L1_DoubleJet112er2p7 : comb{JET112[JET-ETA_2p7],JET112[JET-ETA_2p7]}
l1_double_jet112er2p7 <= double_jet_15903553762640785506;
algo(51) <= l1_double_jet112er2p7;

-- 158 L1_DoubleJet150er2p7 : comb{JET150[JET-ETA_2p7],JET150[JET-ETA_2p7]}
l1_double_jet150er2p7 <= double_jet_15939450583904677986;
algo(52) <= l1_double_jet150er2p7;

-- 160 L1_DoubleJet16And8er2p7 : comb{JET16[JET-ETA_2p7],JET8[JET-ETA_2p7]}
l1_double_jet16_and8er2p7 <= double_jet_4975926206739241185;
algo(53) <= l1_double_jet16_and8er2p7;

-- 161 L1_DoubleJet20And8er2p7 : comb{JET20[JET-ETA_2p7],JET8[JET-ETA_2p7]}
l1_double_jet20_and8er2p7 <= double_jet_4975926730725251297;
algo(54) <= l1_double_jet20_and8er2p7;

-- 176 L1_SingleMuOpen_NotBptxOR : MU0[MU-QLTY_OPEN] AND ( NOT EXT_BPTX_OR_VME)
l1_single_mu_open_not_bptx_or <= single_mu_14769293018627052229 and ( not single_ext_6102799243448260461 );
algo(26) <= l1_single_mu_open_not_bptx_or;

-- 177 L1_SingleMuOpen_NotBptxOR_3BX : MU0[MU-QLTY_OPEN] AND ( NOT EXT_BPTX_OR_VME-1) AND ( NOT EXT_BPTX_OR_VME) AND ( NOT EXT_BPTX_OR_VME+1)
l1_single_mu_open_not_bptx_or_3_bx <= single_mu_14769293018627052229 and ( not single_ext_6909925150529645533 ) and ( not single_ext_6102799243448260461 ) and ( not single_ext_6909925150529645277 );
algo(4) <= l1_single_mu_open_not_bptx_or_3_bx;

-- 178 L1_SingleJet20er2p7_NotBptxOR : JET20[JET-ETA_2p7] AND ( NOT EXT_BPTX_OR_VME)
l1_single_jet20er2p7_not_bptx_or <= single_jet_5967545309672598855 and ( not single_ext_6102799243448260461 );
algo(24) <= l1_single_jet20er2p7_not_bptx_or;

-- 179 L1_SingleJet20er2p7_NotBptxOR_3BX : JET20[JET-ETA_2p7] AND ( NOT EXT_BPTX_OR_VME-1) AND ( NOT EXT_BPTX_OR_VME) AND ( NOT EXT_BPTX_OR_VME+1)
l1_single_jet20er2p7_not_bptx_or_3_bx <= single_jet_5967545309672598855 and ( not single_ext_6909925150529645533 ) and ( not single_ext_6102799243448260461 ) and ( not single_ext_6909925150529645277 );
algo(23) <= l1_single_jet20er2p7_not_bptx_or_3_bx;

-- 180 L1_SingleJet43er2p7_NotBptxOR_3BX : JET43[JET-ETA_2p7] AND ( NOT EXT_BPTX_OR_VME-1) AND ( NOT EXT_BPTX_OR_VME) AND ( NOT EXT_BPTX_OR_VME+1)
l1_single_jet43er2p7_not_bptx_or_3_bx <= single_jet_5967545344434990407 and ( not single_ext_6909925150529645533 ) and ( not single_ext_6102799243448260461 ) and ( not single_ext_6909925150529645277 );
algo(16) <= l1_single_jet43er2p7_not_bptx_or_3_bx;

-- 181 L1_SingleJet46er2p7_NotBptxOR_3BX : JET46[JET-ETA_2p7] AND ( NOT EXT_BPTX_OR_VME-1) AND ( NOT EXT_BPTX_OR_VME) AND ( NOT EXT_BPTX_OR_VME+1)
l1_single_jet46er2p7_not_bptx_or_3_bx <= single_jet_5967545344837643591 and ( not single_ext_6909925150529645533 ) and ( not single_ext_6102799243448260461 ) and ( not single_ext_6909925150529645277 );
algo(20) <= l1_single_jet46er2p7_not_bptx_or_3_bx;

-- 193 L1_DoubleMuOpen_OS : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]}[CHGCOR_OS]
l1_double_mu_open_os <= double_mu_3137853811412695564;
algo(2) <= l1_double_mu_open_os;

-- 195 L1_DoubleMu10 : comb{MU10[MU-QLTY_DBLE],MU10[MU-QLTY_DBLE]}
l1_double_mu10 <= double_mu_12394164411069199406;
algo(1) <= l1_double_mu10;

-- 196 L1_DoubleMu_15_5_SQ : comb{MU15[MU-QLTY_SNGL],MU5[MU-QLTY_SNGL]}
l1_double_mu_15_5_sq <= double_mu_16961159554147985412;
algo(3) <= l1_double_mu_15_5_sq;

-- 198 L1_DoubleMu0_SQ : comb{MU0[MU-QLTY_SNGL],MU0[MU-QLTY_SNGL]}
l1_double_mu0_sq <= double_mu_14585778268989477695;
algo(0) <= l1_double_mu0_sq;

-- 224 L1_IsolatedBunch : ( NOT EXT_BPTX_OR_VME-2) AND ( NOT EXT_BPTX_OR_VME-1) AND EXT_ZeroBias_BPTX_AND_VME AND ( NOT EXT_BPTX_OR_VME+1) AND ( NOT EXT_BPTX_OR_VME+2)
l1_isolated_bunch <= ( not single_ext_6909925150529645534 ) and ( not single_ext_6909925150529645533 ) and single_ext_1189548080491112364 and ( not single_ext_6909925150529645277 ) and ( not single_ext_6909925150529645278 );
algo(25) <= l1_isolated_bunch;

-- 225 L1_MinimumBiasHF0_AND_BptxAND : (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf0_and_bptx_and <= ( single_mbt0_hfp_43640316738250801 and single_mbt0_hfm_43640316738250417 ) and single_ext_1189548080491112364;
algo(32) <= l1_minimum_bias_hf0_and_bptx_and;

-- 226 L1_MinimumBiasHF0_OR_BptxAND : (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf0_or_bptx_and <= ( single_mbt0_hfp_43640316738250801 or single_mbt0_hfm_43640316738250417 ) and single_ext_1189548080491112364;
algo(27) <= l1_minimum_bias_hf0_or_bptx_and;

-- 227 L1_AlwaysTrue : EXT_ZeroBias_BPTX_AND_VME OR ( NOT EXT_ZeroBias_BPTX_AND_VME)
l1_always_true <= single_ext_1189548080491112364 or ( not single_ext_1189548080491112364 );
algo(13) <= l1_always_true;

-- 228 L1_NotBptxOR :  NOT EXT_BPTX_OR_VME
l1_not_bptx_or <= not single_ext_6102799243448260461;
algo(12) <= l1_not_bptx_or;

-- 230 L1_ZeroBias_copy : EXT_ZeroBias_BPTX_AND_VME
l1_zero_bias_copy <= single_ext_1189548080491112364;
algo(33) <= l1_zero_bias_copy;

-- 235 L1_ZeroBias : EXT_ZeroBias_BPTX_AND_VME
l1_zero_bias <= single_ext_1189548080491112364;
algo(10) <= l1_zero_bias;

-- 238 L1_BptxOR : EXT_BPTX_OR_VME
l1_bptx_or <= single_ext_6102799243448260461;
algo(19) <= l1_bptx_or;

-- 240 L1_UnpairedBunchBptxPlus : EXT_BPTX_B1NotB2_VME
l1_unpaired_bunch_bptx_plus <= single_ext_17960169865075597331;
algo(91) <= l1_unpaired_bunch_bptx_plus;

-- 251 L1_FirstBunchInTrain : ( NOT EXT_BPTX_OR_VME-2) AND ( NOT EXT_BPTX_OR_VME-1) AND EXT_ZeroBias_BPTX_AND_VME AND EXT_ZeroBias_BPTX_AND_VME+1 AND EXT_ZeroBias_BPTX_AND_VME+2
l1_first_bunch_in_train <= ( not single_ext_6909925150529645534 ) and ( not single_ext_6909925150529645533 ) and single_ext_1189548080491112364 and single_ext_9794008929098471889 and single_ext_9794008929098471890;
algo(18) <= l1_first_bunch_in_train;

-- 252 L1_FirstBunchAfterTrain : EXT_ZeroBias_BPTX_AND_VME-2 AND EXT_ZeroBias_BPTX_AND_VME-1 AND ( NOT EXT_BPTX_OR_VME) AND ( NOT EXT_BPTX_OR_VME+1) AND ( NOT EXT_BPTX_OR_VME+2)
l1_first_bunch_after_train <= single_ext_9794008929098472146 and single_ext_9794008929098472145 and ( not single_ext_6102799243448260461 ) and ( not single_ext_6909925150529645277 ) and ( not single_ext_6909925150529645278 );
algo(28) <= l1_first_bunch_after_train;

-- 264 L1_ETT40_BptxAND : ETT40 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett40_bptx_and <= single_ett_18699590192 and single_ext_1189548080491112364;
algo(31) <= l1_ett40_bptx_and;

-- 265 L1_ETT50_BptxAND : ETT50 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett50_bptx_and <= single_ett_18699590320 and single_ext_1189548080491112364;
algo(14) <= l1_ett50_bptx_and;

-- 266 L1_ETT60_BptxAND : ETT60 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett60_bptx_and <= single_ett_18699590448 and single_ext_1189548080491112364;
algo(34) <= l1_ett60_bptx_and;

-- 267 L1_ETT70_BptxAND : ETT70 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett70_bptx_and <= single_ett_18699590576 and single_ext_1189548080491112364;
algo(5) <= l1_ett70_bptx_and;

-- 268 L1_ETT75_BptxAND : ETT75 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett75_bptx_and <= single_ett_18699590581 and single_ext_1189548080491112364;
algo(7) <= l1_ett75_bptx_and;

-- 269 L1_ETT80_BptxAND : ETT80 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett80_bptx_and <= single_ett_18699590704 and single_ext_1189548080491112364;
algo(8) <= l1_ett80_bptx_and;

-- 270 L1_ETT85_BptxAND : ETT85 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett85_bptx_and <= single_ett_18699590709 and single_ext_1189548080491112364;
algo(9) <= l1_ett85_bptx_and;

-- 271 L1_ETT90_BptxAND : ETT90 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett90_bptx_and <= single_ett_18699590832 and single_ext_1189548080491112364;
algo(22) <= l1_ett90_bptx_and;

-- 272 L1_ETT95_BptxAND : ETT95 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett95_bptx_and <= single_ett_18699590837 and single_ext_1189548080491112364;
algo(15) <= l1_ett95_bptx_and;

-- 273 L1_ETT100_BptxAND : ETT100 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett100_bptx_and <= single_ett_2393547495472 and single_ext_1189548080491112364;
algo(11) <= l1_ett100_bptx_and;

-- 274 L1_ETT110_BptxAND : ETT110 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett110_bptx_and <= single_ett_2393547495600 and single_ext_1189548080491112364;
algo(29) <= l1_ett110_bptx_and;

-- 277 L1_Totem2 : EXT_TOTEM_2
l1_totem2 <= single_ext_6106690317781795102;
algo(89) <= l1_totem2;

-- 279 L1_Totem4 : EXT_TOTEM_4
l1_totem4 <= single_ext_6106690317781795104;
algo(90) <= l1_totem4;


-- ========================================================