-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_dev

-- Unique ID of L1 Trigger Menu:
-- a062fa36-6b9d-4302-9842-2e606a849e32

-- Unique ID of firmware implementation:
-- d2bef55e-4757-4a07-8032-f42a7daea756

-- Scale set:
-- scales_2017_01_12

-- VHDL producer version
-- v1.0.0

-- External condition assignment
    single_ext_10668942785814789677 <= ext_cond_bx_0(13); -- single_ext_10668942785814789677
    single_ext_10668942820174528044 <= ext_cond_bx_0(14); -- single_ext_10668942820174528044
    single_ext_13978480583031406537 <= ext_cond_bx_0(11); -- single_ext_13978480583031406537
    single_ext_14414193171404190569 <= ext_cond_bx_0(3); -- single_ext_14414193171404190569
    single_ext_14715923867298343304 <= ext_cond_bx_0(21); -- single_ext_14715923867298343304
    single_ext_14715923867298367880 <= ext_cond_bx_0(17); -- single_ext_14715923867298367880
    single_ext_17118203077108929635 <= ext_cond_bx_0(2); -- single_ext_17118203077108929635
    single_ext_17833638493488257651 <= ext_cond_bx_0(20); -- single_ext_17833638493488257651
    single_ext_17833638494023122291 <= ext_cond_bx_0(12); -- single_ext_17833638494023122291
    single_ext_17833638494293564019 <= ext_cond_bx_0(16); -- single_ext_17833638494293564019
    single_ext_17833638494294369813 <= ext_cond_bx_0(18); -- single_ext_17833638494294369813
    single_ext_2629888000553438421 <= ext_cond_bx_0(19); -- single_ext_2629888000553438421
    single_ext_6395038971485762907 <= ext_cond_bx_0(5); -- single_ext_6395038971485762907
    single_ext_6395038971485762908 <= ext_cond_bx_0(6); -- single_ext_6395038971485762908
    single_ext_6395038971485764604 <= ext_cond_bx_0(7); -- single_ext_6395038971485764604
    single_ext_6395198100430131034 <= ext_cond_bx_0(33); -- single_ext_6395198100430131034
    single_ext_6873400283626490434 <= ext_cond_bx_0(23); -- single_ext_6873400283626490434
    single_ext_6908249106957368432 <= ext_cond_bx_0(4); -- single_ext_6908249106957368432
    single_ext_6908249107225803888 <= ext_cond_bx_0(8); -- single_ext_6908249107225803888
    single_ext_6912739140295604792 <= ext_cond_bx_0(22); -- single_ext_6912739140295604792
    single_ext_6926915327998939228 <= ext_cond_bx_0(34); -- single_ext_6926915327998939228
    single_ext_7098142365486617009 <= ext_cond_bx_0(9); -- single_ext_7098142365486617009
    single_ext_7098142399846355376 <= ext_cond_bx_0(10); -- single_ext_7098142399846355376
    single_ext_7332905005558692114 <= ext_cond_bx_0(0); -- single_ext_7332905005558692114
    single_ext_7332905005558692115 <= ext_cond_bx_0(1); -- single_ext_7332905005558692115
    single_ext_8353702592807249329 <= ext_cond_bx_0(15); -- single_ext_8353702592807249329

-- Instantiations of muon charge correlations - only once for a certain Bx combination, if there is at least one DoubleMuon, TripleMuon, QuadMuon condition
-- or muon-muon correlation condition.
muon_charge_correlations_bx_0_bx_0_i: entity work.muon_charge_correlations
    port map(mu_bx_0, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


-- Instantiations of pt, eta and phi for correlation conditions (used for DETA, DPHI and DR) - once for every ObjectType in certain Bx used in correlation conditions
mu_data_bx_0_l: for i in 0 to NR_MU_OBJECTS-1 generate
    mu_pt_vector_bx_0(i)(MU_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(MU_PT_LUT(CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.pt_high downto D_S_I_MU_V2.pt_low))), MU_PT_VECTOR_WIDTH);
    mu_eta_integer_bx_0(i) <= CONV_INTEGER(signed(mu_bx_0(i)(D_S_I_MU_V2.eta_high downto D_S_I_MU_V2.eta_low)));
    mu_phi_integer_bx_0(i) <= CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low));
end generate;
jet_data_bx_0_l: for i in 0 to NR_JET_OBJECTS-1 generate
    jet_pt_vector_bx_0(i)(JET_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(JET_PT_LUT(CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.et_high downto D_S_I_JET_V2.et_low))), JET_PT_VECTOR_WIDTH);
    jet_eta_integer_bx_0(i) <= CONV_INTEGER(signed(jet_bx_0(i)(D_S_I_JET_V2.eta_high downto D_S_I_JET_V2.eta_low)));
    jet_phi_integer_bx_0(i) <= CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.phi_high downto D_S_I_JET_V2.phi_low));
end generate;
tau_data_bx_0_l: for i in 0 to NR_TAU_OBJECTS-1 generate
    tau_pt_vector_bx_0(i)(TAU_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(TAU_PT_LUT(CONV_INTEGER(tau_bx_0(i)(D_S_I_TAU_V2.et_high downto D_S_I_TAU_V2.et_low))), TAU_PT_VECTOR_WIDTH);
    tau_eta_integer_bx_0(i) <= CONV_INTEGER(signed(tau_bx_0(i)(D_S_I_TAU_V2.eta_high downto D_S_I_TAU_V2.eta_low)));
    tau_phi_integer_bx_0(i) <= CONV_INTEGER(tau_bx_0(i)(D_S_I_TAU_V2.phi_high downto D_S_I_TAU_V2.phi_low));
end generate;
eg_data_bx_0_l: for i in 0 to NR_EG_OBJECTS-1 generate
    eg_pt_vector_bx_0(i)(EG_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(EG_PT_LUT(CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.et_high downto D_S_I_EG_V2.et_low))), EG_PT_VECTOR_WIDTH);
    eg_eta_integer_bx_0(i) <= CONV_INTEGER(signed(eg_bx_0(i)(D_S_I_EG_V2.eta_high downto D_S_I_EG_V2.eta_low)));
    eg_phi_integer_bx_0(i) <= CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.phi_high downto D_S_I_EG_V2.phi_low));
end generate;


-- Instantiations of eta and phi conversion to muon scale for calo-muon and muon-esums correlation conditions (used for DETA, DPHI and DR) - once for every calo ObjectType in certain Bx used in correlation conditions
eg_conv_2_muon_bx_0_l: for i in 0 to NR_EG_OBJECTS-1 generate
    eg_eta_conv_2_muon_eta_integer_bx_0(i) <= EG_ETA_CONV_2_MUON_ETA_LUT(CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.eta_high downto D_S_I_EG_V2.eta_low)));
    eg_phi_conv_2_muon_phi_integer_bx_0(i) <= EG_PHI_CONV_2_MUON_PHI_LUT(CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.phi_high downto D_S_I_EG_V2.phi_low)));
end generate;
jet_conv_2_muon_bx_0_l: for i in 0 to NR_JET_OBJECTS-1 generate
    jet_eta_conv_2_muon_eta_integer_bx_0(i) <= JET_ETA_CONV_2_MUON_ETA_LUT(CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.eta_high downto D_S_I_JET_V2.eta_low)));
    jet_phi_conv_2_muon_phi_integer_bx_0(i) <= JET_PHI_CONV_2_MUON_PHI_LUT(CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.phi_high downto D_S_I_JET_V2.phi_low)));
end generate;


-- Instantiations of differences for correlation conditions (used for DETA, DPHI and DR) - once for correlation conditions with two ObjectTypes in certain Bxs
diff_eg_mu_eta_bx_0_bx_0_i: entity work.sub_eta_integer_obj_vs_obj
    generic map(NR_EG_OBJECTS, NR_MU_OBJECTS)
    port map(eg_eta_conv_2_muon_eta_integer_bx_0, mu_eta_integer_bx_0, diff_eg_mu_bx_0_bx_0_eta_integer);
diff_eg_mu_phi_bx_0_bx_0_i: entity work.sub_phi_integer_obj_vs_obj
    generic map(NR_EG_OBJECTS, NR_MU_OBJECTS, MUON_PHI_HALF_RANGE_BINS)
    port map(eg_phi_conv_2_muon_phi_integer_bx_0, mu_phi_integer_bx_0, diff_eg_mu_bx_0_bx_0_phi_integer);
eg_mu_bx_0_bx_0_l1: for i in 0 to NR_EG_OBJECTS-1 generate
    eg_mu_bx_0_bx_0_l2: for j in 0 to NR_MU_OBJECTS-1 generate
        diff_eg_mu_bx_0_bx_0_eta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_MU_DIFF_ETA_LUT(diff_eg_mu_bx_0_bx_0_eta_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
        diff_eg_mu_bx_0_bx_0_phi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_MU_DIFF_PHI_LUT(diff_eg_mu_bx_0_bx_0_phi_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
    end generate eg_mu_bx_0_bx_0_l2;
end generate eg_mu_bx_0_bx_0_l1;
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


-- Instantiations of cosh-deta and cos-dphi LUTs for correlation conditions (used for invariant mass) - once for correlation conditions with two ObjectTypes in certain Bxs
eg_mu_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_EG_OBJECTS-1 generate
    eg_mu_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_MU_OBJECTS-1 generate
        eg_mu_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_MU_COSH_DETA_LUT(diff_eg_mu_bx_0_bx_0_eta_integer(i,j)), EG_MU_COSH_COS_VECTOR_WIDTH);
        eg_mu_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_MU_COS_DPHI_LUT(diff_eg_mu_bx_0_bx_0_phi_integer(i,j)), EG_MU_COSH_COS_VECTOR_WIDTH);
    end generate eg_mu_bx_0_bx_0_cosh_cos_l2;
end generate eg_mu_bx_0_bx_0_cosh_cos_l1;
jet_jet_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_JET_OBJECTS-1 generate
    jet_jet_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_JET_OBJECTS-1 generate
        jet_jet_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_JET_COSH_DETA_LUT(diff_jet_jet_bx_0_bx_0_eta_integer(i,j)), JET_JET_COSH_COS_VECTOR_WIDTH);
        jet_jet_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_JET_COS_DPHI_LUT(diff_jet_jet_bx_0_bx_0_phi_integer(i,j)), JET_JET_COSH_COS_VECTOR_WIDTH);
    end generate jet_jet_bx_0_bx_0_cosh_cos_l2;
end generate jet_jet_bx_0_bx_0_cosh_cos_l1;
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
mu_mu_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_MU_OBJECTS-1 generate
    mu_mu_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_MU_OBJECTS-1 generate
        mu_mu_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_COSH_DETA_LUT(diff_mu_mu_bx_0_bx_0_eta_integer(i,j)), MU_MU_COSH_COS_VECTOR_WIDTH);
        mu_mu_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_COS_DPHI_LUT(diff_mu_mu_bx_0_bx_0_phi_integer(i,j)), MU_MU_COSH_COS_VECTOR_WIDTH);
    end generate mu_mu_bx_0_bx_0_cosh_cos_l2;
end generate mu_mu_bx_0_bx_0_cosh_cos_l1;


-- Instantiations of conditions
double_eg_14367260113818400607_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"0014", X"0014", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, double_eg_14367260113818400607);


double_eg_14367290900143979231_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"0022", X"0022", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, double_eg_14367290900143979231);


double_eg_14367823063771822943_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"0028", X"0024", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, double_eg_14367823063771822943);


double_eg_14367831859864844767_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"002C", X"001E", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, double_eg_14367831859864844767);


double_eg_14367845054004377695_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"0032", X"0018", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, double_eg_14367845054004377695);


double_eg_8902241742241126126_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"000C", X"000C", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, double_eg_8902241742241126126);


double_eg_9171846588003436194_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"002E", X"0014", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, double_eg_9171846588003436194);


double_jet_10840719965249128790_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"003C", X"003C", X"0000", X"0000"),
        (false, false, true, true),
        (X"003B", X"003B", X"0000", X"0000"), (X"00C4", X"00C4", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, double_jet_10840719965249128790);


double_jet_15894421920862285922_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"00C8", X"00C8", X"0000", X"0000"),
        (false, false, true, true),
        (X"0044", X"0044", X"0000", X"0000"), (X"00BB", X"00BB", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, double_jet_15894421920862285922);


double_jet_17504692923644168291_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"003C", X"003C", X"0000", X"0000"),
        (false, false, true, true),
        (X"00BA", X"00BA", X"0000", X"0000"), (X"008D", X"008D", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, double_jet_17504692923644168291);


double_jet_3730266969229109735_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"003C", X"003C", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, double_jet_3730266969229109735);


double_jet_3805139313034161255_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"005A", X"005A", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, double_jet_3805139313034161255);


double_jet_3851467703317088356_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"003C", X"003C", X"0000", X"0000"),
        (false, false, true, true),
        (X"0072", X"00BA", X"0000", X"0000"), (X"0045", X"008D", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, double_jet_3851467703317088356);


double_jet_3851467703875127396_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"003C", X"003C", X"0000", X"0000"),
        (false, false, true, true),
        (X"0072", X"0072", X"0000", X"0000"), (X"0045", X"0045", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, double_jet_3851467703875127396);


double_jet_7821119012726214247_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"003C", X"003C", X"0000", X"0000"),
        (false, false, true, true),
        (X"003B", X"00BA", X"0000", X"0000"), (X"00C4", X"008D", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, double_jet_7821119012726214247);


double_jet_7821119013284253287_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"003C", X"003C", X"0000", X"0000"),
        (false, false, true, true),
        (X"003B", X"0072", X"0000", X"0000"), (X"00C4", X"0045", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, double_jet_7821119013284253287);


double_jet_8659228673866386131_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"0064", X"0064", X"0000", X"0000"),
        (false, false, true, true),
        (X"0044", X"0044", X"0000", X"0000"), (X"00BB", X"00BB", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, double_jet_8659228673866386131);


double_jet_8659301241633819347_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"0078", X"0078", X"0000", X"0000"),
        (false, false, true, true),
        (X"0044", X"0044", X"0000", X"0000"), (X"00BB", X"00BB", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, double_jet_8659301241633819347);


double_jet_8659370613945584339_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"0090", X"0070", X"0000", X"0000"),
        (false, false, true, true),
        (X"0044", X"0044", X"0000", X"0000"), (X"00BB", X"00BB", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, double_jet_8659370613945584339);


double_jet_8659444281224645331_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"00B0", X"0070", X"0000", X"0000"),
        (false, false, true, true),
        (X"0044", X"0044", X"0000", X"0000"), (X"00BB", X"00BB", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, double_jet_8659444281224645331);


double_jet_8659448610551679699_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"00B0", X"0090", X"0000", X"0000"),
        (false, false, true, true),
        (X"0044", X"0044", X"0000", X"0000"), (X"00BB", X"00BB", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, double_jet_8659448610551679699);


double_tau_14808338292319009533_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 2, true, TAU_TYPE,
        (X"003C", X"003C", X"0000", X"0000"),
        (false, false, true, true),
        (X"0030", X"0030", X"0000", X"0000"), (X"00CF", X"00CF", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"E", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, double_tau_14808338292319009533);


double_tau_5584966257611717374_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 2, true, TAU_TYPE,
        (X"0044", X"0044", X"0000", X"0000"),
        (false, false, true, true),
        (X"0030", X"0030", X"0000", X"0000"), (X"00CF", X"00CF", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"E", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, double_tau_5584966257611717374);


quad_jet_17630949366336433287_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 4, true, JET_TYPE,
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
    port map(lhc_clk, jet_bx_0, quad_jet_17630949366336433287);


single_eg_1139639_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"000E", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, single_eg_1139639);


single_eg_12507579852188652608_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0034", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, single_eg_12507579852188652608);


single_eg_12507579852316578880_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"003C", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, single_eg_12507579852316578880);


single_eg_12507579852320773184_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0044", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, single_eg_12507579852320773184);


single_eg_12507579852324967488_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"004C", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, single_eg_12507579852324967488);


single_eg_14262501742662192051_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0032", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, single_eg_14262501742662192051);


single_eg_14262501742930627507_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0036", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, single_eg_14262501742930627507);


single_eg_14262501759976278963_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0048", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, single_eg_14262501759976278963);


single_eg_145873080_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0024", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, single_eg_145873080);


single_eg_145873208_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0038", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, single_eg_145873208);


single_eg_145873332_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0044", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, single_eg_145873332);


single_eg_145873456_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0050", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, single_eg_145873456);


single_eg_6872811427746276593_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0024", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, single_eg_6872811427746276593);


single_eg_6872945568164865265_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"002C", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, single_eg_6872945568164865265);


single_eg_9244738805910375678_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0030", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, single_eg_9244738805910375678);


single_eg_9244741004933631230_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0034", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, single_eg_9244741004933631230);


single_eg_9244743203956886782_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0038", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, single_eg_9244743203956886782);


single_jet_20010309814_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0020", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, single_jet_20010309814);


single_jet_20010309936_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0028", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, single_jet_20010309936);


single_jet_20010310448_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0078", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, single_jet_20010310448);


single_jet_20010310832_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"00B4", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, single_jet_20010310832);


single_jet_5967545310244419783_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0030", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0044", X"0000", X"0000", X"0000"), (X"00BB", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, single_jet_5967545310244419783);


single_jet_5974075644574252540_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0070", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"00BA", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0072", X"0000", X"0000", X"0000"), (X"0045", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, single_jet_5974075644574252540);


single_jet_5974214183039352316_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0090", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"00BA", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0072", X"0000", X"0000", X"0000"), (X"0045", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, single_jet_5974214183039352316);


single_jet_5974287850318413308_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"00B0", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"00BA", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0072", X"0000", X"0000", X"0000"), (X"0045", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, single_jet_5974287850318413308);


single_tau_16608830939767017288_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 1, true, TAU_TYPE,
        (X"0028", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, single_tau_16608830939767017288);


single_tau_218368042610145022_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 1, true, TAU_TYPE,
        (X"0034", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, single_tau_218368042610145022);


single_tau_3484215725702552004_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 1, true, TAU_TYPE,
        (X"00F0", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, single_tau_3484215725702552004);


triple_eg_667988932384156187_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 3, true, EG_TYPE,
        (X"0028", X"0014", X"000A", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, triple_eg_667988932384156187);


triple_jet_10368473969177751178_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 3, true, JET_TYPE,
        (X"0034", X"0034", X"0034", X"0000"),
        (true, false, false, true),
        (X"0000", X"0044", X"0044", X"0000"), (X"0000", X"00BB", X"00BB", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, triple_jet_10368473969177751178);


triple_jet_1776207310752122438_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 3, true, JET_TYPE,
        (X"003C", X"003C", X"003C", X"0000"),
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
    port map(lhc_clk, jet_bx_0, triple_jet_1776207310752122438);


triple_jet_7930493752634094709_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 3, true, JET_TYPE,
        (X"00B0", X"0090", X"0070", X"0000"),
        (false, false, false, true),
        (X"0044", X"0044", X"0044", X"0000"), (X"00BB", X"00BB", X"00BB", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, triple_jet_7930493752634094709);


double_mu_14585777620730815295_i: entity work.muon_conditions_v3
    generic map(2, true,
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
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        double_mu_14585777620730815295);


double_mu_14585786515326686015_i: entity work.muon_conditions_v3
    generic map(2, true,
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
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        double_mu_14585786515326686015);


double_mu_14585796862184301375_i: entity work.muon_conditions_v3
    generic map(2, true,
        (X"000F", X"000F", X"0000", X"0000"),
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
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        double_mu_14585796862184301375);


double_mu_14585797510442963775_i: entity work.muon_conditions_v3
    generic map(2, true,
        (X"000F", X"000F", X"0000", X"0000"),
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
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        double_mu_14585797510442963775);


double_mu_16961158905889323012_i: entity work.muon_conditions_v3
    generic map(2, true,
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
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        double_mu_16961158905889323012);


single_mu_14769293122775847365_i: entity work.muon_conditions_v3
    generic map(1, true,
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
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        single_mu_14769293122775847365);


single_mu_17545683025133343173_i: entity work.muon_conditions_v3
    generic map(1, true,
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
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        single_mu_17545683025133343173);


single_mu_17545683111032689093_i: entity work.muon_conditions_v3
    generic map(1, true,
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
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        single_mu_17545683111032689093);


single_mu_17545683128212558277_i: entity work.muon_conditions_v3
    generic map(1, true,
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
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        single_mu_17545683128212558277);


single_mu_17545683162572296645_i: entity work.muon_conditions_v3
    generic map(1, true,
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
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        single_mu_17545683162572296645);


single_mu_17545685310055944645_i: entity work.muon_conditions_v3
    generic map(1, true,
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
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        single_mu_17545685310055944645);


single_mu_7181677643621025184_i: entity work.muon_conditions_v3
    generic map(1, true,
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
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        single_mu_7181677643621025184);


single_mu_9343405464758863264_i: entity work.muon_conditions_v3
    generic map(1, true,
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
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        single_mu_9343405464758863264);


triple_mu_3324683539710430239_i: entity work.muon_conditions_v3
    generic map(3, true,
        (X"000B", X"0001", X"0001", X"0000"),
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
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        triple_mu_3324683539710430239);


triple_mu_3324691511169731615_i: entity work.muon_conditions_v3
    generic map(3, true,
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
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        triple_mu_3324691511169731615);


triple_mu_3324692885559266335_i: entity work.muon_conditions_v3
    generic map(3, true,
        (X"000B", X"000B", X"0007", X"0000"),
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
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        triple_mu_3324692885559266335);


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


single_etm_18699476021_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00AA",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_18699476021);


single_etm_2393532815413_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00D2",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_2393532815413);


single_etm_2393532815536_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00DC",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_2393532815536);


single_etm_2393532815541_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00E6",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_2393532815541);


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


single_htt_2496626710576_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"00C8",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626710576);


single_htt_2496626710832_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"00F0",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626710832);


single_htt_2496626710837_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"00FA",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626710837);


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


single_htt_2496626744368_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"02F8",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626744368);


calo_calo_correlation_14501897532220062144_i: entity work.calo_calo_correlation_condition
    generic map(
        true,
        true, false, false, false,
        NR_EG_OBJECTS, true, EG_TYPE,
        X"002C",
        false, X"0030", X"00CF",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"E",
        NR_TAU_OBJECTS, true, TAU_TYPE,
        X"0034",
        false, X"0030", X"00CF",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"E",
        10.0, 0.2,
        0.0, 0.0,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, EG_TAU_DETA_DPHI_PRECISION,
        0.0, 0.0, EG_TAU_INV_MASS_PRECISION,
        EG_PT_VECTOR_WIDTH, TAU_PT_VECTOR_WIDTH, EG_TAU_COSH_COS_PRECISION, EG_TAU_COSH_COS_VECTOR_WIDTH
    )
    port map(lhc_clk, eg_bx_0, tau_bx_0,
        diff_eg_tau_bx_0_bx_0_eta_vector, diff_eg_tau_bx_0_bx_0_phi_vector,
        eg_pt_vector_bx_0, tau_pt_vector_bx_0,
        eg_tau_bx_0_bx_0_cosh_deta_vector, eg_tau_bx_0_bx_0_cos_dphi_vector,
        calo_calo_correlation_14501897532220062144);

invariant_mass_14462129420734703062_i: entity work.calo_calo_correlation_condition
    generic map(
        true,
        false, false, false, true,
        NR_JET_OBJECTS, true, JET_TYPE,
        X"003C",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        NR_JET_OBJECTS, true, JET_TYPE,
        X"003C",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        0.0, 0.0,
        0.0, 0.0,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, JET_JET_DETA_DPHI_PRECISION,
        98000000.0, 80000.0, JET_JET_INV_MASS_PRECISION,
        JET_PT_VECTOR_WIDTH, JET_PT_VECTOR_WIDTH, JET_JET_COSH_COS_PRECISION, JET_JET_COSH_COS_VECTOR_WIDTH
    )
    port map(lhc_clk, jet_bx_0, jet_bx_0,
        diff_jet_jet_bx_0_bx_0_eta_vector, diff_jet_jet_bx_0_bx_0_phi_vector,
        jet_pt_vector_bx_0, jet_pt_vector_bx_0,
        jet_jet_bx_0_bx_0_cosh_deta_vector, jet_jet_bx_0_bx_0_cos_dphi_vector,
        invariant_mass_14462129420734703062);

calo_muon_correlation_10674670645420326056_i: entity work.calo_muon_correlation_condition
    generic map(
        false, true, false, false,
        NR_EG_OBJECTS, true, EG_TYPE,
        X"0014",
        true, X"0000",X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        true,
        X"0001",
        true, X"0000",X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FF00", X"F",
        0.0, 0.0,
        3.15, 1.0,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, EG_MUON_DETA_DPHI_PRECISION,
        0.0, 0.0, EG_MUON_INV_MASS_PRECISION,
        EG_PT_VECTOR_WIDTH, MUON_PT_VECTOR_WIDTH, EG_MUON_COSH_COS_PRECISION, EG_MUON_COSH_COS_VECTOR_WIDTH
    )
    port map(lhc_clk, eg_bx_0, mu_bx_0,
        diff_eg_mu_bx_0_bx_0_eta_vector, diff_eg_mu_bx_0_bx_0_phi_vector,
        eg_pt_vector_bx_0, mu_pt_vector_bx_0, eg_mu_bx_0_bx_0_cosh_deta_vector, eg_mu_bx_0_bx_0_cos_dphi_vector,
        calo_muon_correlation_10674670645420326056);

calo_muon_correlation_10791898730651162912_i: entity work.calo_muon_correlation_condition
    generic map(
        false, true, false, false,
        NR_JET_OBJECTS, true, JET_TYPE,
        X"0040",
        true, X"0000",X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        true,
        X"0001",
        true, X"0000",X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FF00", X"F",
        0.0, 0.0,
        0.4, 0.0,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, JET_MUON_DETA_DPHI_PRECISION,
        0.0, 0.0, JET_MUON_INV_MASS_PRECISION,
        JET_PT_VECTOR_WIDTH, MUON_PT_VECTOR_WIDTH, JET_MUON_COSH_COS_PRECISION, JET_MUON_COSH_COS_VECTOR_WIDTH
    )
    port map(lhc_clk, jet_bx_0, mu_bx_0,
        diff_jet_mu_bx_0_bx_0_eta_vector, diff_jet_mu_bx_0_bx_0_phi_vector,
        jet_pt_vector_bx_0, mu_pt_vector_bx_0, jet_mu_bx_0_bx_0_cosh_deta_vector, jet_mu_bx_0_bx_0_cos_dphi_vector,
        calo_muon_correlation_10791898730651162912);

calo_muon_correlation_15993852978349077723_i: entity work.calo_muon_correlation_condition
    generic map(
        true, true, false, false,
        NR_JET_OBJECTS, true, JET_TYPE,
        X"00F0",
        false, X"0044",X"00BB",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        true,
        X"0007",
        true, X"0000",X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"F000", X"F",
        0.4, 0.0,
        0.4, 0.0,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, JET_MUON_DETA_DPHI_PRECISION,
        0.0, 0.0, JET_MUON_INV_MASS_PRECISION,
        JET_PT_VECTOR_WIDTH, MUON_PT_VECTOR_WIDTH, JET_MUON_COSH_COS_PRECISION, JET_MUON_COSH_COS_VECTOR_WIDTH
    )
    port map(lhc_clk, jet_bx_0, mu_bx_0,
        diff_jet_mu_bx_0_bx_0_eta_vector, diff_jet_mu_bx_0_bx_0_phi_vector,
        jet_pt_vector_bx_0, mu_pt_vector_bx_0, jet_mu_bx_0_bx_0_cosh_deta_vector, jet_mu_bx_0_bx_0_cos_dphi_vector,
        calo_muon_correlation_15993852978349077723);

invariant_mass_14024936252694086828_i: entity work.muon_muon_correlation_condition
    generic map(
        true,
        false, false, false, true,
        true,
        X"000B",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FF00", X"F",
        true,
        X"0001",
        true, X"0000",X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FF00", X"F",
        "os",
        0.0, 0.0,
        0.0, 0.0,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, MUON_MUON_DETA_DPHI_PRECISION,
        144.5, 0.0, MUON_MUON_INV_MASS_PRECISION, MUON_PT_VECTOR_WIDTH, MUON_MUON_COSH_COS_PRECISION, MUON_MUON_COSH_COS_VECTOR_WIDTH
    )
    port map(lhc_clk, mu_bx_0, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        diff_mu_mu_bx_0_bx_0_eta_vector, diff_mu_mu_bx_0_bx_0_phi_vector,
        mu_pt_vector_bx_0, mu_pt_vector_bx_0,
        mu_mu_bx_0_bx_0_cosh_deta_vector, mu_mu_bx_0_bx_0_cos_dphi_vector,
        invariant_mass_14024936252694086828);

muon_muon_correlation_16784489743460462578_i: entity work.muon_muon_correlation_condition
    generic map(
        true,
        false, false, true, false,
        true,
        X"0009",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"F000", X"F",
        true,
        X"0009",
        true, X"0000",X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"F000", X"F",
        "os",
        0.0, 0.0,
        0.0, 0.0,
        1.441, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, MUON_MUON_DETA_DPHI_PRECISION,
        0.0, 0.0, MUON_MUON_INV_MASS_PRECISION, MUON_PT_VECTOR_WIDTH, MUON_MUON_COSH_COS_PRECISION, MUON_MUON_COSH_COS_VECTOR_WIDTH
    )
    port map(lhc_clk, mu_bx_0, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        diff_mu_mu_bx_0_bx_0_eta_vector, diff_mu_mu_bx_0_bx_0_phi_vector,
        mu_pt_vector_bx_0, mu_pt_vector_bx_0,
        mu_mu_bx_0_bx_0_cosh_deta_vector, mu_mu_bx_0_bx_0_cos_dphi_vector,
        muon_muon_correlation_16784489743460462578);

muon_muon_correlation_6226381454046753505_i: entity work.muon_muon_correlation_condition
    generic map(
        true,
        false, true, false, false,
        true,
        X"0001",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FF00", X"F",
        true,
        X"0015",
        true, X"0000",X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FF00", X"F",
        "ig",
        0.0, 0.0,
        3.15, 1.0,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, MUON_MUON_DETA_DPHI_PRECISION,
        0.0, 0.0, MUON_MUON_INV_MASS_PRECISION, MUON_PT_VECTOR_WIDTH, MUON_MUON_COSH_COS_PRECISION, MUON_MUON_COSH_COS_VECTOR_WIDTH
    )
    port map(lhc_clk, mu_bx_0, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        diff_mu_mu_bx_0_bx_0_eta_vector, diff_mu_mu_bx_0_bx_0_phi_vector,
        mu_pt_vector_bx_0, mu_pt_vector_bx_0,
        mu_mu_bx_0_bx_0_cosh_deta_vector, mu_mu_bx_0_bx_0_cos_dphi_vector,
        muon_muon_correlation_6226381454046753505);

muon_muon_correlation_9513481109949270451_i: entity work.muon_muon_correlation_condition
    generic map(
        true,
        false, false, true, false,
        true,
        X"0001",
        false, X"0081", X"017F",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"F000", X"F",
        true,
        X"0001",
        false, X"0081",X"017F",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"F000", X"F",
        "os",
        0.0, 0.0,
        0.0, 0.0,
        1.961, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, MUON_MUON_DETA_DPHI_PRECISION,
        0.0, 0.0, MUON_MUON_INV_MASS_PRECISION, MUON_PT_VECTOR_WIDTH, MUON_MUON_COSH_COS_PRECISION, MUON_MUON_COSH_COS_VECTOR_WIDTH
    )
    port map(lhc_clk, mu_bx_0, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        diff_mu_mu_bx_0_bx_0_eta_vector, diff_mu_mu_bx_0_bx_0_phi_vector,
        mu_pt_vector_bx_0, mu_pt_vector_bx_0,
        mu_mu_bx_0_bx_0_cosh_deta_vector, mu_mu_bx_0_bx_0_cos_dphi_vector,
        muon_muon_correlation_9513481109949270451);


-- Instantiations of algorithms

-- 7 L1_SingleMu16 : MU16[MU-QLTY_SNGL]
l1_single_mu16 <= single_mu_17545683128212558277;
algo(129) <= l1_single_mu16;

-- 8 L1_SingleMu18 : MU18[MU-QLTY_SNGL]
l1_single_mu18 <= single_mu_17545683162572296645;
algo(14) <= l1_single_mu18;

-- 11 L1_SingleMu25 : MU25[MU-QLTY_SNGL]
l1_single_mu25 <= single_mu_17545685310055944645;
algo(130) <= l1_single_mu25;

-- 15 L1_SingleMu18er2p1 : MU18[MU-QLTY_SNGL,MU-ETA_2p10]
l1_single_mu18er2p1 <= single_mu_7181677643621025184;
algo(101) <= l1_single_mu18er2p1;

-- 16 L1_SingleMu20er2p1 : MU20[MU-QLTY_SNGL,MU-ETA_2p10]
l1_single_mu20er2p1 <= single_mu_9343405464758863264;
algo(100) <= l1_single_mu20er2p1;

-- 20 L1_DoubleMu0 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]}
l1_double_mu0 <= double_mu_14585777620730815295;
algo(68) <= l1_double_mu0;

-- 25 L1_DoubleMu_15_5 : comb{MU15[MU-QLTY_DBLE],MU5[MU-QLTY_DBLE]}
l1_double_mu_15_5 <= double_mu_16961158905889323012;
algo(114) <= l1_double_mu_15_5;

-- 28 L1_TripleMu3 : comb{MU3[MU-QLTY_DBLE],MU3[MU-QLTY_DBLE],MU3[MU-QLTY_DBLE]}
l1_triple_mu3 <= triple_mu_3324691511169731615;
algo(112) <= l1_triple_mu3;

-- 30 L1_TripleMu_5_0_0 : comb{MU5[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]}
l1_triple_mu_5_0_0 <= triple_mu_3324683539710430239;
algo(1) <= l1_triple_mu_5_0_0;

-- 32 L1_TripleMu_5_5_3 : comb{MU5[MU-QLTY_DBLE],MU5[MU-QLTY_DBLE],MU3[MU-QLTY_DBLE]}
l1_triple_mu_5_5_3 <= triple_mu_3324692885559266335;
algo(113) <= l1_triple_mu_5_5_3;

-- 43 L1_SingleEG18 : EG18
l1_single_eg18 <= single_eg_145873080;
algo(115) <= l1_single_eg18;

-- 46 L1_SingleEG28 : EG28
l1_single_eg28 <= single_eg_145873208;
algo(116) <= l1_single_eg28;

-- 49 L1_SingleEG34 : EG34
l1_single_eg34 <= single_eg_145873332;
algo(117) <= l1_single_eg34;

-- 52 L1_SingleEG40 : EG40
l1_single_eg40 <= single_eg_145873456;
algo(119) <= l1_single_eg40;

-- 55 L1_SingleEG36er2p1 : EG36[EG-ETA_2p13]
l1_single_eg36er2p1 <= single_eg_14262501759976278963;
algo(118) <= l1_single_eg36er2p1;

-- 61 L1_SingleIsoEG26 : EG26[EG-ISO_0xE]
l1_single_iso_eg26 <= single_eg_12507579852188652608;
algo(122) <= l1_single_iso_eg26;

-- 63 L1_SingleIsoEG30 : EG30[EG-ISO_0xE]
l1_single_iso_eg30 <= single_eg_12507579852316578880;
algo(123) <= l1_single_iso_eg30;

-- 65 L1_SingleIsoEG34 : EG34[EG-ISO_0xE]
l1_single_iso_eg34 <= single_eg_12507579852320773184;
algo(124) <= l1_single_iso_eg34;

-- 67 L1_SingleIsoEG38 : EG38[EG-ISO_0xE]
l1_single_iso_eg38 <= single_eg_12507579852324967488;
algo(125) <= l1_single_iso_eg38;

-- 68 L1_SingleIsoEG18er2p1 : EG18[EG-ISO_0xE,EG-ETA_2p13]
l1_single_iso_eg18er2p1 <= single_eg_6872811427746276593;
algo(120) <= l1_single_iso_eg18er2p1;

-- 70 L1_SingleIsoEG22er2p1 : EG22[EG-ISO_0xE,EG-ETA_2p13]
l1_single_iso_eg22er2p1 <= single_eg_6872945568164865265;
algo(121) <= l1_single_iso_eg22er2p1;

-- 82 L1_DoubleEG_20_18 : comb{EG20,EG18}
l1_double_eg_20_18 <= double_eg_14367823063771822943;
algo(103) <= l1_double_eg_20_18;

-- 85 L1_DoubleEG_22_15 : comb{EG22,EG15}
l1_double_eg_22_15 <= double_eg_14367831859864844767;
algo(104) <= l1_double_eg_22_15;

-- 88 L1_DoubleEG_25_12 : comb{EG25,EG12}
l1_double_eg_25_12 <= double_eg_14367845054004377695;
algo(105) <= l1_double_eg_25_12;

-- 102 L1_SingleTau120er2p1 : TAU120[TAU-ETA_2p13]
l1_single_tau120er2p1 <= single_tau_3484215725702552004;
algo(128) <= l1_single_tau120er2p1;

-- 106 L1_DoubleIsoTau30er2p1 : comb{TAU30[TAU-ISO_0xE,TAU-ETA_2p13],TAU30[TAU-ISO_0xE,TAU-ETA_2p13]}
l1_double_iso_tau30er2p1 <= double_tau_14808338292319009533;
algo(107) <= l1_double_iso_tau30er2p1;

-- 109 L1_DoubleIsoTau34er2p1 : comb{TAU34[TAU-ISO_0xE,TAU-ETA_2p13],TAU34[TAU-ISO_0xE,TAU-ETA_2p13]}
l1_double_iso_tau34er2p1 <= double_tau_5584966257611717374;
algo(108) <= l1_double_iso_tau34er2p1;

-- 120 L1_SingleJet16 : JET16
l1_single_jet16 <= single_jet_20010309814;
algo(126) <= l1_single_jet16;

-- 121 L1_SingleJet20 : JET20
l1_single_jet20 <= single_jet_20010309936;
algo(127) <= l1_single_jet20;

-- 123 L1_SingleJet60 : JET60
l1_single_jet60 <= single_jet_20010310448;
algo(42) <= l1_single_jet60;

-- 124 L1_SingleJet90 : JET90
l1_single_jet90 <= single_jet_20010310832;
algo(66) <= l1_single_jet90;

-- 141 L1_DoubleJet50er3p0 : comb{JET50[JET-ETA_CEN],JET50[JET-ETA_CEN]}
l1_double_jet50er3p0 <= double_jet_8659228673866386131;
algo(110) <= l1_double_jet50er3p0;

-- 142 L1_DoubleJet60er3p0 : comb{JET60[JET-ETA_CEN],JET60[JET-ETA_CEN]}
l1_double_jet60er3p0 <= double_jet_8659301241633819347;
algo(15) <= l1_double_jet60er3p0;

-- 144 L1_DoubleJet100er3p0 : comb{JET100[JET-ETA_CEN],JET100[JET-ETA_CEN]}
l1_double_jet100er3p0 <= double_jet_15894421920862285922;
algo(109) <= l1_double_jet100er3p0;

-- 148 L1_TripleJet_88_72_56_VBF : comb{JET88[JET-ETA_CEN],JET72[JET-ETA_CEN],JET56[JET-ETA_CEN]} OR (comb{JET88[JET-ETA_CEN],JET72[JET-ETA_CEN]} AND JET56[JET-ETA_FWD_NEG,JET-ETA_FWD_POS]) OR (comb{JET88[JET-ETA_CEN],JET56[JET-ETA_CEN]} AND JET72[JET-ETA_FWD_NEG,JET-ETA_FWD_POS]) OR (comb{JET72[JET-ETA_CEN],JET56[JET-ETA_CEN]} AND JET88[JET-ETA_FWD_NEG,JET-ETA_FWD_POS])
l1_triple_jet_88_72_56_vbf <= triple_jet_7930493752634094709 or ( double_jet_8659448610551679699 and single_jet_5974075644574252540 ) or ( double_jet_8659444281224645331 and single_jet_5974214183039352316 ) or ( double_jet_8659370613945584339 and single_jet_5974287850318413308 );
algo(94) <= l1_triple_jet_88_72_56_vbf;

-- 160 L1_HTT120er : HTT120
l1_htt120er <= single_htt_2496626710832;
algo(136) <= l1_htt120er;

-- 162 L1_HTT200er : HTT200
l1_htt200er <= single_htt_2496626726960;
algo(35) <= l1_htt200er;

-- 163 L1_HTT220er : HTT220
l1_htt220er <= single_htt_2496626727216;
algo(77) <= l1_htt220er;

-- 164 L1_HTT240er : HTT240
l1_htt240er <= single_htt_2496626727472;
algo(31) <= l1_htt240er;

-- 165 L1_HTT255er : HTT255
l1_htt255er <= single_htt_2496626727605;
algo(51) <= l1_htt255er;

-- 166 L1_HTT270er : HTT270
l1_htt270er <= single_htt_2496626727856;
algo(50) <= l1_htt270er;

-- 167 L1_HTT280er : HTT280
l1_htt280er <= single_htt_2496626727984;
algo(27) <= l1_htt280er;

-- 168 L1_HTT300er : HTT300
l1_htt300er <= single_htt_2496626743344;
algo(63) <= l1_htt300er;

-- 171 L1_HTT380er : HTT380
l1_htt380er <= single_htt_2496626744368;
algo(137) <= l1_htt380er;

-- 181 L1_ETM40cer : ETM40
l1_etm40cer <= single_etm_18699475504;
algo(41) <= l1_etm40cer;

-- 183 L1_ETM60cer : ETM60
l1_etm60cer <= single_etm_18699475760;
algo(71) <= l1_etm60cer;

-- 184 L1_ETM70cer : ETM70
l1_etm70cer <= single_etm_18699475888;
algo(70) <= l1_etm70cer;

-- 187 L1_ETM85cer : ETM85
l1_etm85cer <= single_etm_18699476021;
algo(135) <= l1_etm85cer;

-- 191 L1_ETM105cer : ETM105
l1_etm105cer <= single_etm_2393532815413;
algo(131) <= l1_etm105cer;

-- 192 L1_ETM110cer : ETM110
l1_etm110cer <= single_etm_2393532815536;
algo(132) <= l1_etm110cer;

-- 193 L1_ETM115cer : ETM115
l1_etm115cer <= single_etm_2393532815541;
algo(133) <= l1_etm115cer;

-- 194 L1_ETM120cer : ETM120
l1_etm120cer <= single_etm_2393532815664;
algo(134) <= l1_etm120cer;

-- 200 L1_ETMHF70c : ETMHF70
l1_etmhf70c <= single_etmhf_306372248968112;
algo(23) <= l1_etmhf70c;

-- 201 L1_ETMHF80c : ETMHF80
l1_etmhf80c <= single_etmhf_306372248968240;
algo(22) <= l1_etmhf80c;

-- 202 L1_ETMHF90c : ETMHF90
l1_etmhf90c <= single_etmhf_306372248968368;
algo(46) <= l1_etmhf90c;

-- 203 L1_ETMHF100c : ETMHF100
l1_etmhf100c <= single_etmhf_39215647867820080;
algo(40) <= l1_etmhf100c;

-- 204 L1_ETMHF110c : ETMHF110
l1_etmhf110c <= single_etmhf_39215647867820208;
algo(16) <= l1_etmhf110c;

-- 205 L1_ETMHF120c : ETMHF120
l1_etmhf120c <= single_etmhf_39215647867820336;
algo(57) <= l1_etmhf120c;

-- 263 L1_IsoEG24er2p1_HTT100er : EG24[EG-ETA_2p13,EG-ISO_0xE] AND HTT100
l1_iso_eg24er2p1_htt100er <= single_eg_9244738805910375678 and single_htt_2496626710576;
algo(82) <= l1_iso_eg24er2p1_htt100er;

-- 264 L1_IsoEG26er2p1_HTT100er : EG26[EG-ETA_2p13,EG-ISO_0xE] AND HTT100
l1_iso_eg26er2p1_htt100er <= single_eg_9244741004933631230 and single_htt_2496626710576;
algo(10) <= l1_iso_eg26er2p1_htt100er;

-- 265 L1_IsoEG28er2p1_HTT100er : EG28[EG-ETA_2p13,EG-ISO_0xE] AND HTT100
l1_iso_eg28er2p1_htt100er <= single_eg_9244743203956886782 and single_htt_2496626710576;
algo(73) <= l1_iso_eg28er2p1_htt100er;

-- 266 L1_IsoEG24er2p1_TripleJet_26er3p0_26_26er3p0 : EG24[EG-ETA_2p13,EG-ISO_0xE] AND comb{JET26,JET26[JET-ETA_CEN],JET26[JET-ETA_CEN]}
l1_iso_eg24er2p1_triple_jet_26er3p0_26_26er3p0 <= single_eg_9244738805910375678 and triple_jet_10368473969177751178;
algo(87) <= l1_iso_eg24er2p1_triple_jet_26er3p0_26_26er3p0;

-- 267 L1_Mu18_HTT100er : MU18[MU-QLTY_SNGL] AND HTT100
l1_mu18_htt100er <= single_mu_17545683162572296645 and single_htt_2496626710576;
algo(39) <= l1_mu18_htt100er;

-- 268 L1_Mu18_Jet24er3p0 : MU18[MU-QLTY_SNGL] AND JET24[JET-ETA_CEN]
l1_mu18_jet24er3p0 <= single_mu_17545683162572296645 and single_jet_5967545310244419783;
algo(49) <= l1_mu18_jet24er3p0;

-- 277 L1_HTT250er_QuadJet_70_55_40_35_er2p5 : HTT250 AND comb{JET70[JET-ETA_RESTR],JET55[JET-ETA_RESTR],JET40[JET-ETA_RESTR],JET35[JET-ETA_RESTR]}
l1_htt250er_quad_jet_70_55_40_35_er2p5 <= single_htt_2496626727600 and quad_jet_17630949366336433287;
algo(4) <= l1_htt250er_quad_jet_70_55_40_35_er2p5;

-- 278 L1_HTT280er_QuadJet_70_55_40_35_er2p5 : HTT280 AND comb{JET70[JET-ETA_RESTR],JET55[JET-ETA_RESTR],JET40[JET-ETA_RESTR],JET35[JET-ETA_RESTR]}
l1_htt280er_quad_jet_70_55_40_35_er2p5 <= single_htt_2496626727984 and quad_jet_17630949366336433287;
algo(67) <= l1_htt280er_quad_jet_70_55_40_35_er2p5;

-- 279 L1_HTT300er_QuadJet_70_55_40_35_er2p5 : HTT300 AND comb{JET70[JET-ETA_RESTR],JET55[JET-ETA_RESTR],JET40[JET-ETA_RESTR],JET35[JET-ETA_RESTR]}
l1_htt300er_quad_jet_70_55_40_35_er2p5 <= single_htt_2496626743344 and quad_jet_17630949366336433287;
algo(84) <= l1_htt300er_quad_jet_70_55_40_35_er2p5;

-- 288 L1_DoubleEG_Iso23_10 : comb{EG23[EG-ISO_0xE],EG10}
l1_double_eg_iso23_10 <= double_eg_9171846588003436194;
algo(106) <= l1_double_eg_iso23_10;

-- 290 L1_TripleEG_Iso20_10_5 : comb{EG20[EG-ISO_0xE],EG10,EG5}
l1_triple_eg_iso20_10_5 <= triple_eg_667988932384156187;
algo(102) <= l1_triple_eg_iso20_10_5;

-- 293 L1_DoubleJet30_Mass_Min400_Mu6 : MU6[MU-QLTY_SNGL] AND mass{JET30,JET30}[MASS_MIN_400]
l1_double_jet30_mass_min400_mu6 <= single_mu_14769293122775847365 and invariant_mass_14462129420734703062;
algo(48) <= l1_double_jet30_mass_min400_mu6;

-- 294 L1_DoubleJet30_Mass_Min400_Mu10 : MU10[MU-QLTY_SNGL] AND mass{JET30,JET30}[MASS_MIN_400]
l1_double_jet30_mass_min400_mu10 <= single_mu_17545683025133343173 and invariant_mass_14462129420734703062;
algo(72) <= l1_double_jet30_mass_min400_mu10;

-- 297 L1_IsoEG22er2p1_IsoTau26er2p1_dEta_Min0p2 : dist{EG22[EG-ISO_0xE,EG-ETA_2p13],TAU26[TAU-ISO_0xE,TAU-ETA_2p13]}[DETA_MIN_0p2]
l1_iso_eg22er2p1_iso_tau26er2p1_d_eta_min0p2 <= calo_calo_correlation_14501897532220062144;
algo(90) <= l1_iso_eg22er2p1_iso_tau26er2p1_d_eta_min0p2;

-- 300 L1_Mu6_HTT240er : MU6[MU-QLTY_SNGL] AND HTT240
l1_mu6_htt240er <= single_mu_14769293122775847365 and single_htt_2496626727472;
algo(62) <= l1_mu6_htt240er;

-- 301 L1_Mu6_HTT250er : MU6[MU-QLTY_SNGL] AND HTT250
l1_mu6_htt250er <= single_mu_14769293122775847365 and single_htt_2496626727600;
algo(54) <= l1_mu6_htt250er;

-- 302 L1_Mu15_HTT100er : MU15[MU-QLTY_SNGL] AND HTT100
l1_mu15_htt100er <= single_mu_17545683111032689093 and single_htt_2496626710576;
algo(21) <= l1_mu15_htt100er;

-- 303 L1_DoubleMu0_ETMHF40c_Jet60_OR_DoubleJet30 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETMHF40 AND (comb{JET30,JET30} OR JET60)
l1_double_mu0_etmhf40c_jet60_or_double_jet30 <= double_mu_14585777620730815295 and single_etmhf_306372248967728 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(18) <= l1_double_mu0_etmhf40c_jet60_or_double_jet30;

-- 304 L1_DoubleMu0_ETMHF50c_Jet60_OR_DoubleJet30 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETMHF50 AND (comb{JET30,JET30} OR JET60)
l1_double_mu0_etmhf50c_jet60_or_double_jet30 <= double_mu_14585777620730815295 and single_etmhf_306372248967856 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(24) <= l1_double_mu0_etmhf50c_jet60_or_double_jet30;

-- 305 L1_DoubleMu0_ETMHF60c_Jet60_OR_DoubleJet30 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETMHF60 AND (comb{JET30,JET30} OR JET60)
l1_double_mu0_etmhf60c_jet60_or_double_jet30 <= double_mu_14585777620730815295 and single_etmhf_306372248967984 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(60) <= l1_double_mu0_etmhf60c_jet60_or_double_jet30;

-- 306 L1_DoubleMu0_ETMHF70c_Jet60_OR_DoubleJet30 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETMHF70 AND (comb{JET30,JET30} OR JET60)
l1_double_mu0_etmhf70c_jet60_or_double_jet30 <= double_mu_14585777620730815295 and single_etmhf_306372248968112 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(12) <= l1_double_mu0_etmhf70c_jet60_or_double_jet30;

-- 307 L1_DoubleMu0_ETMHF80c_Jet60_OR_DoubleJet30 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETMHF80 AND (comb{JET30,JET30} OR JET60)
l1_double_mu0_etmhf80c_jet60_or_double_jet30 <= double_mu_14585777620730815295 and single_etmhf_306372248968240 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(56) <= l1_double_mu0_etmhf80c_jet60_or_double_jet30;

-- 308 L1_DoubleMu3_SQ_ETMHF40c_Jet60_OR_DoubleJet30 : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND ETMHF40 AND (comb{JET30,JET30} OR JET60)
l1_double_mu3_sq_etmhf40c_jet60_or_double_jet30 <= double_mu_14585786515326686015 and single_etmhf_306372248967728 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(55) <= l1_double_mu3_sq_etmhf40c_jet60_or_double_jet30;

-- 309 L1_DoubleMu3_SQ_ETMHF50c_Jet60_OR_DoubleJet30 : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND ETMHF50 AND (comb{JET30,JET30} OR JET60)
l1_double_mu3_sq_etmhf50c_jet60_or_double_jet30 <= double_mu_14585786515326686015 and single_etmhf_306372248967856 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(64) <= l1_double_mu3_sq_etmhf50c_jet60_or_double_jet30;

-- 310 L1_DoubleMu3_SQ_ETMHF60c_Jet60_OR_DoubleJet30 : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND ETMHF60 AND (comb{JET30,JET30} OR JET60)
l1_double_mu3_sq_etmhf60c_jet60_or_double_jet30 <= double_mu_14585786515326686015 and single_etmhf_306372248967984 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(20) <= l1_double_mu3_sq_etmhf60c_jet60_or_double_jet30;

-- 311 L1_DoubleMu3_SQ_ETMHF70c_Jet60_OR_DoubleJet30 : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND ETMHF70 AND (comb{JET30,JET30} OR JET60)
l1_double_mu3_sq_etmhf70c_jet60_or_double_jet30 <= double_mu_14585786515326686015 and single_etmhf_306372248968112 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(76) <= l1_double_mu3_sq_etmhf70c_jet60_or_double_jet30;

-- 312 L1_DoubleMu3_SQ_ETMHF80c_Jet60_OR_DoubleJet30 : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND ETMHF80 AND (comb{JET30,JET30} OR JET60)
l1_double_mu3_sq_etmhf80c_jet60_or_double_jet30 <= double_mu_14585786515326686015 and single_etmhf_306372248968240 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(86) <= l1_double_mu3_sq_etmhf80c_jet60_or_double_jet30;

-- 313 L1_DoubleMu3_SQ_HTT100er : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND HTT100
l1_double_mu3_sq_htt100er <= double_mu_14585786515326686015 and single_htt_2496626710576;
algo(80) <= l1_double_mu3_sq_htt100er;

-- 314 L1_DoubleMu3_SQ_HTT200er : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND HTT200
l1_double_mu3_sq_htt200er <= double_mu_14585786515326686015 and single_htt_2496626726960;
algo(74) <= l1_double_mu3_sq_htt200er;

-- 315 L1_DoubleMu3_SQ_HTT220er : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND HTT220
l1_double_mu3_sq_htt220er <= double_mu_14585786515326686015 and single_htt_2496626727216;
algo(78) <= l1_double_mu3_sq_htt220er;

-- 316 L1_DoubleMu3_SQ_HTT240er : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND HTT240
l1_double_mu3_sq_htt240er <= double_mu_14585786515326686015 and single_htt_2496626727472;
algo(79) <= l1_double_mu3_sq_htt240er;

-- 320 L1_DoubleEG6_HTT240er : comb{EG6,EG6} AND HTT240
l1_double_eg6_htt240er <= double_eg_8902241742241126126 and single_htt_2496626727472;
algo(26) <= l1_double_eg6_htt240er;

-- 321 L1_DoubleEG6_HTT250er : comb{EG6,EG6} AND HTT250
l1_double_eg6_htt250er <= double_eg_8902241742241126126 and single_htt_2496626727600;
algo(32) <= l1_double_eg6_htt250er;

-- 322 L1_DoubleEG6_HTT270er : comb{EG6,EG6} AND HTT270
l1_double_eg6_htt270er <= double_eg_8902241742241126126 and single_htt_2496626727856;
algo(45) <= l1_double_eg6_htt270er;

-- 323 L1_DoubleEG6_HTT300er : comb{EG6,EG6} AND HTT300
l1_double_eg6_htt300er <= double_eg_8902241742241126126 and single_htt_2496626743344;
algo(89) <= l1_double_eg6_htt300er;

-- 324 L1_ETMHF70c_Jet60_OR_DoubleJet30 : ETMHF70 AND (comb{JET30,JET30} OR JET60)
l1_etmhf70c_jet60_or_double_jet30 <= single_etmhf_306372248968112 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(81) <= l1_etmhf70c_jet60_or_double_jet30;

-- 325 L1_ETMHF75c_Jet60_OR_DoubleJet30 : ETMHF75 AND (comb{JET30,JET30} OR JET60)
l1_etmhf75c_jet60_or_double_jet30 <= single_etmhf_306372248968117 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(83) <= l1_etmhf75c_jet60_or_double_jet30;

-- 326 L1_ETMHF80c_Jet60_OR_DoubleJet30 : ETMHF80 AND (comb{JET30,JET30} OR JET60)
l1_etmhf80c_jet60_or_double_jet30 <= single_etmhf_306372248968240 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(7) <= l1_etmhf80c_jet60_or_double_jet30;

-- 327 L1_ETMHF85c_Jet60_OR_DoubleJet30 : ETMHF85 AND (comb{JET30,JET30} OR JET60)
l1_etmhf85c_jet60_or_double_jet30 <= single_etmhf_306372248968245 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(17) <= l1_etmhf85c_jet60_or_double_jet30;

-- 328 L1_ETMHF90c_Jet60_OR_DoubleJet30 : ETMHF90 AND (comb{JET30,JET30} OR JET60)
l1_etmhf90c_jet60_or_double_jet30 <= single_etmhf_306372248968368 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(34) <= l1_etmhf90c_jet60_or_double_jet30;

-- 329 L1_ETMHF95c_Jet60_OR_DoubleJet30 : ETMHF95 AND (comb{JET30,JET30} OR JET60)
l1_etmhf95c_jet60_or_double_jet30 <= single_etmhf_306372248968373 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(9) <= l1_etmhf95c_jet60_or_double_jet30;

-- 330 L1_ETMHF100c_Jet60_OR_DoubleJet30 : ETMHF100 AND (comb{JET30,JET30} OR JET60)
l1_etmhf100c_jet60_or_double_jet30 <= single_etmhf_39215647867820080 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(30) <= l1_etmhf100c_jet60_or_double_jet30;

-- 331 L1_ETMHF105c_Jet60_OR_DoubleJet30 : ETMHF105 AND (comb{JET30,JET30} OR JET60)
l1_etmhf105c_jet60_or_double_jet30 <= single_etmhf_39215647867820085 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(11) <= l1_etmhf105c_jet60_or_double_jet30;

-- 332 L1_ETMHF110c_Jet60_OR_DoubleJet30 : ETMHF110 AND (comb{JET30,JET30} OR JET60)
l1_etmhf110c_jet60_or_double_jet30 <= single_etmhf_39215647867820208 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(6) <= l1_etmhf110c_jet60_or_double_jet30;

-- 333 L1_ETMHF115c_Jet60_OR_DoubleJet30 : ETMHF115 AND (comb{JET30,JET30} OR JET60)
l1_etmhf115c_jet60_or_double_jet30 <= single_etmhf_39215647867820213 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(19) <= l1_etmhf115c_jet60_or_double_jet30;

-- 334 L1_ETMHF120c_Jet60_OR_DoubleJet30 : ETMHF120 AND (comb{JET30,JET30} OR JET60)
l1_etmhf120c_jet60_or_double_jet30 <= single_etmhf_39215647867820336 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(28) <= l1_etmhf120c_jet60_or_double_jet30;

-- 335 L1_ETMHF70c_Jet60_OR_DiJet30woTT28 : ETMHF70 AND (comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_CENNoTT28]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_FWD_NEG],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_NEG]} OR JET60)
l1_etmhf70c_jet60_or_di_jet30wo_tt28 <= single_etmhf_306372248968112 and ( double_jet_10840719965249128790 or double_jet_7821119013284253287 or double_jet_7821119012726214247 or double_jet_3851467703875127396 or double_jet_17504692923644168291 or double_jet_3851467703317088356 or single_jet_20010310448 );
algo(8) <= l1_etmhf70c_jet60_or_di_jet30wo_tt28;

-- 336 L1_ETMHF80c_Jet60_OR_DiJet30woTT28 : ETMHF80 AND (comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_CENNoTT28]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_FWD_NEG],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_NEG]} OR JET60)
l1_etmhf80c_jet60_or_di_jet30wo_tt28 <= single_etmhf_306372248968240 and ( double_jet_10840719965249128790 or double_jet_7821119013284253287 or double_jet_7821119012726214247 or double_jet_3851467703875127396 or double_jet_17504692923644168291 or double_jet_3851467703317088356 or single_jet_20010310448 );
algo(75) <= l1_etmhf80c_jet60_or_di_jet30wo_tt28;

-- 337 L1_ETMHF90c_Jet60_OR_DiJet30woTT28 : ETMHF90 AND (comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_CENNoTT28]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_FWD_NEG],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_NEG]} OR JET60)
l1_etmhf90c_jet60_or_di_jet30wo_tt28 <= single_etmhf_306372248968368 and ( double_jet_10840719965249128790 or double_jet_7821119013284253287 or double_jet_7821119012726214247 or double_jet_3851467703875127396 or double_jet_17504692923644168291 or double_jet_3851467703317088356 or single_jet_20010310448 );
algo(29) <= l1_etmhf90c_jet60_or_di_jet30wo_tt28;

-- 338 L1_ETMHF100c_Jet60_OR_DiJet30woTT28 : ETMHF100 AND (comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_CENNoTT28]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_FWD_NEG],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_NEG]} OR JET60)
l1_etmhf100c_jet60_or_di_jet30wo_tt28 <= single_etmhf_39215647867820080 and ( double_jet_10840719965249128790 or double_jet_7821119013284253287 or double_jet_7821119012726214247 or double_jet_3851467703875127396 or double_jet_17504692923644168291 or double_jet_3851467703317088356 or single_jet_20010310448 );
algo(33) <= l1_etmhf100c_jet60_or_di_jet30wo_tt28;

-- 339 L1_ETMHF110c_Jet60_OR_DiJet30woTT28 : ETMHF110 AND (comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_CENNoTT28]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_FWD_NEG],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_NEG]} OR JET60)
l1_etmhf110c_jet60_or_di_jet30wo_tt28 <= single_etmhf_39215647867820208 and ( double_jet_10840719965249128790 or double_jet_7821119013284253287 or double_jet_7821119012726214247 or double_jet_3851467703875127396 or double_jet_17504692923644168291 or double_jet_3851467703317088356 or single_jet_20010310448 );
algo(25) <= l1_etmhf110c_jet60_or_di_jet30wo_tt28;

-- 340 L1_ETMHF120c_Jet60_OR_DiJet30woTT28 : ETMHF120 AND (comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_CENNoTT28]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_FWD_NEG],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_NEG]} OR JET60)
l1_etmhf120c_jet60_or_di_jet30wo_tt28 <= single_etmhf_39215647867820336 and ( double_jet_10840719965249128790 or double_jet_7821119013284253287 or double_jet_7821119012726214247 or double_jet_3851467703875127396 or double_jet_17504692923644168291 or double_jet_3851467703317088356 or single_jet_20010310448 );
algo(13) <= l1_etmhf120c_jet60_or_di_jet30wo_tt28;

-- 341 L1_ETMHF70c_Jet90_OR_DoubleJet45_OR_TripleJet30 : ETMHF70 AND (comb{JET30,JET30,JET30} OR comb{JET45,JET45} OR JET90)
l1_etmhf70c_jet90_or_double_jet45_or_triple_jet30 <= single_etmhf_306372248968112 and ( triple_jet_1776207310752122438 or double_jet_3805139313034161255 or single_jet_20010310832 );
algo(69) <= l1_etmhf70c_jet90_or_double_jet45_or_triple_jet30;

-- 342 L1_ETMHF80c_Jet90_OR_DoubleJet45_OR_TripleJet30 : ETMHF80 AND (comb{JET30,JET30,JET30} OR comb{JET45,JET45} OR JET90)
l1_etmhf80c_jet90_or_double_jet45_or_triple_jet30 <= single_etmhf_306372248968240 and ( triple_jet_1776207310752122438 or double_jet_3805139313034161255 or single_jet_20010310832 );
algo(52) <= l1_etmhf80c_jet90_or_double_jet45_or_triple_jet30;

-- 343 L1_ETMHF90c_Jet90_OR_DoubleJet45_OR_TripleJet30 : ETMHF90 AND (comb{JET30,JET30,JET30} OR comb{JET45,JET45} OR JET90)
l1_etmhf90c_jet90_or_double_jet45_or_triple_jet30 <= single_etmhf_306372248968368 and ( triple_jet_1776207310752122438 or double_jet_3805139313034161255 or single_jet_20010310832 );
algo(65) <= l1_etmhf90c_jet90_or_double_jet45_or_triple_jet30;

-- 344 L1_ETMHF100c_Jet90_OR_DoubleJet45_OR_TripleJet30 : ETMHF100 AND (comb{JET30,JET30,JET30} OR comb{JET45,JET45} OR JET90)
l1_etmhf100c_jet90_or_double_jet45_or_triple_jet30 <= single_etmhf_39215647867820080 and ( triple_jet_1776207310752122438 or double_jet_3805139313034161255 or single_jet_20010310832 );
algo(47) <= l1_etmhf100c_jet90_or_double_jet45_or_triple_jet30;

-- 345 L1_ETMHF110c_Jet90_OR_DoubleJet45_OR_TripleJet30 : ETMHF110 AND (comb{JET30,JET30,JET30} OR comb{JET45,JET45} OR JET90)
l1_etmhf110c_jet90_or_double_jet45_or_triple_jet30 <= single_etmhf_39215647867820208 and ( triple_jet_1776207310752122438 or double_jet_3805139313034161255 or single_jet_20010310832 );
algo(58) <= l1_etmhf110c_jet90_or_double_jet45_or_triple_jet30;

-- 346 L1_DoubleMu7_SQ_EG7 : comb{MU7[MU-QLTY_SNGL],MU7[MU-QLTY_SNGL]} AND EG7
l1_double_mu7_sq_eg7 <= double_mu_14585797510442963775 and single_eg_1139639;
algo(96) <= l1_double_mu7_sq_eg7;

-- 352 L1_DoubleMu4_SQ_OS_dR_Max1p2 : dist{MU4[MU-QLTY_SNGL],MU4[MU-QLTY_SNGL]}[DR_1p2,CHGCOR_OS]
l1_double_mu4_sq_os_d_r_max1p2 <= muon_muon_correlation_16784489743460462578;
algo(93) <= l1_double_mu4_sq_os_d_r_max1p2;

-- 355 L1_TripleMu_5_0_0_DoubleMu_5_0_OS_Mass_Max17 : comb{MU5[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND mass{MU5[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]}[MASS_MASS_0to17,CHGCOR_OS]
l1_triple_mu_5_0_0_double_mu_5_0_os_mass_max17 <= triple_mu_3324683539710430239 and invariant_mass_14024936252694086828;
algo(0) <= l1_triple_mu_5_0_0_double_mu_5_0_os_mass_max17;

-- 357 L1_DoubleMu0er1p4_SQ_OS_dR_Max1p4 : dist{MU0[MU-QLTY_SNGL,MU-ETA_1p4],MU0[MU-QLTY_SNGL,MU-ETA_1p4]}[DR_1p4,CHGCOR_OS]
l1_double_mu0er1p4_sq_os_d_r_max1p4 <= muon_muon_correlation_9513481109949270451;
algo(92) <= l1_double_mu0er1p4_sq_os_d_r_max1p4;

-- 370 L1_Mu6_DoubleEG17 : MU6[MU-QLTY_SNGL] AND comb{EG17,EG17}
l1_mu6_double_eg17 <= single_mu_14769293122775847365 and double_eg_14367290900143979231;
algo(38) <= l1_mu6_double_eg17;

-- 371 L1_DoubleMu7_EG7 : comb{MU7[MU-QLTY_DBLE],MU7[MU-QLTY_DBLE]} AND EG7
l1_double_mu7_eg7 <= double_mu_14585796862184301375 and single_eg_1139639;
algo(95) <= l1_double_mu7_eg7;

-- 405 L1_Mu3_JetC120_dEta_Max0p4_dPhi_Max0p4 : dist{MU3[MU-QLTY_SNGL],JET120[JET-ETA_CEN]}[DETA_MAX_0p4,DPHI_MAX_0p4]
l1_mu3_jet_c120_d_eta_max0p4_d_phi_max0p4 <= calo_muon_correlation_15993852978349077723;
algo(91) <= l1_mu3_jet_c120_d_eta_max0p4_d_phi_max0p4;

-- 409 L1_Mu6_DoubleEG10 : MU6[MU-QLTY_SNGL] AND comb{EG10,EG10}
l1_mu6_double_eg10 <= single_mu_14769293122775847365 and double_eg_14367260113818400607;
algo(43) <= l1_mu6_double_eg10;

-- 410 L1_Mu6_HTT200er : MU6[MU-QLTY_SNGL] AND HTT200
l1_mu6_htt200er <= single_mu_14769293122775847365 and single_htt_2496626726960;
algo(61) <= l1_mu6_htt200er;

-- 413 L1_Mu18er2p1_Tau20er2p1 : MU18[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU20[TAU-ETA_2p13]
l1_mu18er2p1_tau20er2p1 <= single_mu_7181677643621025184 and single_tau_16608830939767017288;
algo(99) <= l1_mu18er2p1_tau20er2p1;

-- 418 L1_Mu18er2p1_IsoTau26er2p1 : MU18[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU26[TAU-ISO_0xE,TAU-ETA_2p13]
l1_mu18er2p1_iso_tau26er2p1 <= single_mu_7181677643621025184 and single_tau_218368042610145022;
algo(97) <= l1_mu18er2p1_iso_tau26er2p1;

-- 420 L1_Mu20er2p1_IsoTau26er2p1 : MU20[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU26[TAU-ISO_0xE,TAU-ETA_2p13]
l1_mu20er2p1_iso_tau26er2p1 <= single_mu_9343405464758863264 and single_tau_218368042610145022;
algo(98) <= l1_mu20er2p1_iso_tau26er2p1;

-- 422 L1_DoubleMu0_ETM40cer : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETM40
l1_double_mu0_etm40cer <= double_mu_14585777620730815295 and single_etm_18699475504;
algo(37) <= l1_double_mu0_etm40cer;

-- 423 L1_DoubleMu0_ETM55cer : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETM55
l1_double_mu0_etm55cer <= double_mu_14585777620730815295 and single_etm_18699475637;
algo(53) <= l1_double_mu0_etm55cer;

-- 424 L1_DoubleMu0_ETM60cer : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETM60
l1_double_mu0_etm60cer <= double_mu_14585777620730815295 and single_etm_18699475760;
algo(85) <= l1_double_mu0_etm60cer;

-- 425 L1_DoubleMu0_ETM65cer : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETM65
l1_double_mu0_etm65cer <= double_mu_14585777620730815295 and single_etm_18699475765;
algo(5) <= l1_double_mu0_etm65cer;

-- 426 L1_DoubleMu0_ETM70cer : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETM70
l1_double_mu0_etm70cer <= double_mu_14585777620730815295 and single_etm_18699475888;
algo(88) <= l1_double_mu0_etm70cer;

-- 428 L1_EG25er2p1_HTT125er : EG25[EG-ETA_2p13] AND HTT125
l1_eg25er2p1_htt125er <= single_eg_14262501742662192051 and single_htt_2496626710837;
algo(111) <= l1_eg25er2p1_htt125er;

-- 429 L1_EG27er2p1_HTT200er : EG27[EG-ETA_2p13] AND HTT200
l1_eg27er2p1_htt200er <= single_eg_14262501742930627507 and single_htt_2496626726960;
algo(44) <= l1_eg27er2p1_htt200er;

-- 430 L1_DoubleEG6_HTT255er : comb{EG6,EG6} AND HTT255
l1_double_eg6_htt255er <= double_eg_8902241742241126126 and single_htt_2496626727605;
algo(36) <= l1_double_eg6_htt255er;

-- 431 L1_Jet32_DoubleMu_10_0_dPhi_Jet_Mu0_Max0p4_dPhi_Mu_Mu_Min1p0 : dist{JET32,MU0[MU-QLTY_DBLE]}[DPHI_MAX_0p4] AND dist{MU0[MU-QLTY_DBLE],MU10[MU-QLTY_DBLE]}[DPHI_MIN_1p0]
l1_jet32_double_mu_10_0_d_phi_jet_mu0_max0p4_d_phi_mu_mu_min1p0 <= calo_muon_correlation_10791898730651162912 and muon_muon_correlation_6226381454046753505;
algo(3) <= l1_jet32_double_mu_10_0_d_phi_jet_mu0_max0p4_d_phi_mu_mu_min1p0;

-- 432 L1_Jet32_Mu0_EG10_dPhi_Jet_Mu_Max0p4_dPhi_Mu_EG_Min1p0 : dist{JET32,MU0[MU-QLTY_DBLE]}[DPHI_MAX_0p4] AND dist{EG10,MU0[MU-QLTY_DBLE]}[DPHI_MIN_1p0]
l1_jet32_mu0_eg10_d_phi_jet_mu_max0p4_d_phi_mu_eg_min1p0 <= calo_muon_correlation_10791898730651162912 and calo_muon_correlation_10674670645420326056;
algo(2) <= l1_jet32_mu0_eg10_d_phi_jet_mu_max0p4_d_phi_mu_eg_min1p0;

-- 433 L1_DoubleJet60er3p0_ETM60cer : comb{JET60[JET-ETA_CEN],JET60[JET-ETA_CEN]} AND ETM60
l1_double_jet60er3p0_etm60cer <= double_jet_8659301241633819347 and single_etm_18699475760;
algo(59) <= l1_double_jet60er3p0_etm60cer;

-- 451 L1_BptxPlus : EXT_BPTX_plus.v0
l1_bptx_plus <= single_ext_6395198100430131034;
algo(157) <= l1_bptx_plus;

-- 452 L1_BptxMinus : EXT_BPTX_minus.v0
l1_bptx_minus <= single_ext_6926915327998939228;
algo(155) <= l1_bptx_minus;

-- 455 L1_BptxXOR : (EXT_BPTX_plus.v0 AND ( NOT EXT_BPTX_minus.v0)) OR (EXT_BPTX_minus.v0 AND ( NOT EXT_BPTX_plus.v0))
l1_bptx_xor <= ( single_ext_6395198100430131034 and ( not single_ext_6926915327998939228 ) ) or ( single_ext_6926915327998939228 and ( not single_ext_6395198100430131034 ) );
algo(156) <= l1_bptx_xor;

-- 458 L1_ZeroBias_FirstCollidingBunch : EXT_BRIL_TRIG3_FstColBunch
l1_zero_bias_first_colliding_bunch <= single_ext_2629888000553438421;
algo(163) <= l1_zero_bias_first_colliding_bunch;

-- 459 L1_BeamGasB1 : EXT_BeamGas_B1
l1_beam_gas_b1 <= single_ext_7332905005558692114;
algo(151) <= l1_beam_gas_b1;

-- 460 L1_BeamGasB2 : EXT_BeamGas_B2
l1_beam_gas_b2 <= single_ext_7332905005558692115;
algo(152) <= l1_beam_gas_b2;

-- 461 L1_BeamGasMinus : EXT_BeamGas_minus
l1_beam_gas_minus <= single_ext_14414193171404190569;
algo(153) <= l1_beam_gas_minus;

-- 462 L1_ZeroBias_VME : EXT_BPTX_LUT1_AND
l1_zero_bias_vme <= single_ext_6908249106957368432;
algo(164) <= l1_zero_bias_vme;

-- 463 L1_BeamGasPlus : EXT_BeamGas_plus
l1_beam_gas_plus <= single_ext_17118203077108929635;
algo(154) <= l1_beam_gas_plus;

-- 464 L1_BptxPlus_VME : EXT_BPTX_LUT1_B1
l1_bptx_plus_vme <= single_ext_6395038971485762907;
algo(160) <= l1_bptx_plus_vme;

-- 465 L1_BptxMinus_VME : EXT_BPTX_LUT1_B2
l1_bptx_minus_vme <= single_ext_6395038971485762908;
algo(158) <= l1_bptx_minus_vme;

-- 466 L1_BptxOR_VME : EXT_BPTX_LUT1_OR
l1_bptx_or_vme <= single_ext_6395038971485764604;
algo(159) <= l1_bptx_or_vme;

-- 467 L1_BRIL_bit008 : EXT_BPTX_LUT2_AND
l1_bril_bit008 <= single_ext_6908249107225803888;
algo(138) <= l1_bril_bit008;

-- 468 L1_BRIL_bit009 : EXT_BPTX_LUT2_B1NotB2
l1_bril_bit009 <= single_ext_7098142365486617009;
algo(139) <= l1_bril_bit009;

-- 469 L1_BRIL_bit010 : EXT_BPTX_LUT2_B2NotB1
l1_bril_bit010 <= single_ext_7098142399846355376;
algo(140) <= l1_bril_bit010;

-- 470 L1_BRIL_bit011 : EXT_BPTX_LUT2_NotOR
l1_bril_bit011 <= single_ext_13978480583031406537;
algo(141) <= l1_bril_bit011;

-- 471 L1_BRIL_bit012 : EXT_BPTX_TRIG2_AND
l1_bril_bit012 <= single_ext_17833638494023122291;
algo(142) <= l1_bril_bit012;

-- 472 L1_BRIL_bit013 : EXT_BPTX_TRIG2_B1NotB2
l1_bril_bit013 <= single_ext_10668942785814789677;
algo(143) <= l1_bril_bit013;

-- 473 L1_BRIL_bit014 : EXT_BPTX_TRIG2_B2NotB1
l1_bril_bit014 <= single_ext_10668942820174528044;
algo(144) <= l1_bril_bit014;

-- 474 L1_BRIL_bit015 : EXT_BPTX_TRIG2_NotOR
l1_bril_bit015 <= single_ext_8353702592807249329;
algo(145) <= l1_bril_bit015;

-- 475 L1_BRIL_bit016 : EXT_BRIL_TRIG3_AND
l1_bril_bit016 <= single_ext_17833638494293564019;
algo(146) <= l1_bril_bit016;

-- 476 L1_BRIL_bit017 : EXT_BRIL_TRIG3_delayedAND
l1_bril_bit017 <= single_ext_14715923867298367880;
algo(147) <= l1_bril_bit017;

-- 477 L1_BRIL_bit018 : EXT_BRIL_TRIG3_ref
l1_bril_bit018 <= single_ext_17833638494294369813;
algo(148) <= l1_bril_bit018;

-- 478 L1_BRIL_bit020 : EXT_BRIL_TRIG0_AND
l1_bril_bit020 <= single_ext_17833638493488257651;
algo(149) <= l1_bril_bit020;

-- 479 L1_BRIL_bit021 : EXT_BRIL_TRIG0_delayedAND
l1_bril_bit021 <= single_ext_14715923867298343304;
algo(150) <= l1_bril_bit021;

-- 480 L1_Last_Collision_in_Train : EXT_BRIL_TRIG0_OR
l1_last_collision_in_train <= single_ext_6912739140295604792;
algo(162) <= l1_last_collision_in_train;

-- 481 L1_First_Collision_in_Train : EXT_BRIL_TRIG0_FstBunchInTrain
l1_first_collision_in_train <= single_ext_6873400283626490434;
algo(161) <= l1_first_collision_in_train;


-- ========================================================