-- ========================================================
-- from VHDL producer:

-- Module ID: 5

-- Name of L1 Trigger Menu:
-- L1Menu_CollisionsHeavyIons2018_v4_1_0

-- Unique ID of L1 Trigger Menu:
-- 7d0ea060-750b-4a39-a23d-4f78198b8446

-- Unique ID of firmware implementation:
-- d44505d2-7dee-45fa-a7e6-a5c3d0862858

-- Scale set:
-- scales_2018_08_07

-- VHDL producer version
-- v2.5.0

-- Signal definition of pt, eta and phi for correlation conditions.
-- Insert "signal_correlation_conditions_pt_eta_phi_cos_sin_phi.vhd.j2" as often as an ObjectType at a certain Bx is used in a correlation condition.
    signal jet_pt_vector_bx_0: diff_inputs_array(0 to NR_JET_OBJECTS-1) := (others => (others => '0'));
    signal jet_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_cos_phi_bx_0: calo_sin_cos_integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_sin_phi_bx_0: calo_sin_cos_integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal conv_jet_cos_phi_bx_0: muon_sin_cos_integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal conv_jet_sin_phi_bx_0: muon_sin_cos_integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_eta_conv_2_muon_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal eg_pt_vector_bx_0: diff_inputs_array(0 to NR_EG_OBJECTS-1) := (others => (others => '0'));
    signal eg_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_cos_phi_bx_0: calo_sin_cos_integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_sin_phi_bx_0: calo_sin_cos_integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal conv_eg_cos_phi_bx_0: muon_sin_cos_integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal conv_eg_sin_phi_bx_0: muon_sin_cos_integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_eta_conv_2_muon_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);

-- Signal definition of differences for correlation conditions.
-- Insert "signal_correlation_conditions_differences.vhd.j2" once for correlation conditions of different ObjectTypes and Bx combinations.
    signal diff_eg_jet_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => 0));
    signal diff_eg_jet_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_eg_jet_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => 0));
    signal diff_eg_jet_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_jet_bx_0_bx_0_cosh_deta_vector : calo_cosh_cos_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_jet_bx_0_bx_0_cos_dphi_vector : calo_cosh_cos_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));

-- Signal definition for muon charge correlations.
-- Insert "signal_muon_charge_correlations.vhd.j2" only once for a certain Bx combination,
-- if there is at least one muon condition or one muon-muon correlation condition.
    signal ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0 : muon_charcorr_double_array;
    signal ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0 : muon_charcorr_triple_array;
    signal ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0 : muon_charcorr_quad_array;

-- Signal definition for conditions names
    signal single_asymet_i150 : std_logic;
    signal single_asymet_i151 : std_logic;
    signal single_asymet_i153 : std_logic;
    signal single_asymet_i195 : std_logic;
    signal single_asymet_i196 : std_logic;
    signal single_cent0_i72 : std_logic;
    signal single_cent1_i73 : std_logic;
    signal single_cent2_i74 : std_logic;
    signal single_cent3_i75 : std_logic;
    signal single_cent4_i76 : std_logic;
    signal single_cent5_i77 : std_logic;
    signal single_cent6_i140 : std_logic;
    signal single_ext_i183 : std_logic;
    signal single_ext_i185 : std_logic;
    signal single_ext_i30 : std_logic;
    signal single_mbt0_hfm_i39 : std_logic;
    signal single_mbt1_hfm_i71 : std_logic;
    signal single_mbt0_hfp_i38 : std_logic;
    signal single_mbt1_hfp_i70 : std_logic;
    signal single_etmhf_i27 : std_logic;
    signal single_ett_i148 : std_logic;
    signal single_ett_i157 : std_logic;
    signal single_ett_i158 : std_logic;
    signal single_ett_i161 : std_logic;
    signal single_ett_i165 : std_logic;
    signal single_ett_i194 : std_logic;
    signal single_ett_i197 : std_logic;
    signal single_htt_i25 : std_logic;
    signal calo_calo_correlation_i178 : std_logic;
    signal calo_calo_correlation_i189 : std_logic;
    signal double_eg_i182 : std_logic;
    signal double_jet_i106 : std_logic;
    signal double_jet_i107 : std_logic;
    signal double_jet_i108 : std_logic;
    signal double_jet_i109 : std_logic;
    signal double_jet_i110 : std_logic;
    signal double_mu_i139 : std_logic;
    signal double_mu_i141 : std_logic;
    signal double_mu_i146 : std_logic;
    signal double_mu_i147 : std_logic;
    signal single_eg_i111 : std_logic;
    signal single_eg_i112 : std_logic;
    signal single_eg_i113 : std_logic;
    signal single_eg_i114 : std_logic;
    signal single_eg_i115 : std_logic;
    signal single_eg_i116 : std_logic;
    signal single_eg_i117 : std_logic;
    signal single_eg_i126 : std_logic;
    signal single_eg_i138 : std_logic;
    signal single_eg_i9 : std_logic;
    signal single_jet_i102 : std_logic;
    signal single_jet_i103 : std_logic;
    signal single_jet_i104 : std_logic;
    signal single_jet_i105 : std_logic;
    signal single_jet_i118 : std_logic;
    signal single_jet_i119 : std_logic;
    signal single_jet_i120 : std_logic;
    signal single_jet_i121 : std_logic;
    signal single_jet_i122 : std_logic;
    signal single_jet_i123 : std_logic;
    signal single_jet_i15 : std_logic;
    signal single_jet_i21 : std_logic;
    signal single_jet_i22 : std_logic;
    signal single_jet_i79 : std_logic;
    signal single_jet_i81 : std_logic;
    signal single_jet_i83 : std_logic;
    signal single_jet_i84 : std_logic;
    signal single_jet_i86 : std_logic;
    signal single_jet_i88 : std_logic;
    signal single_jet_i89 : std_logic;
    signal single_jet_i94 : std_logic;
    signal single_jet_i95 : std_logic;
    signal single_jet_i96 : std_logic;
    signal single_jet_i97 : std_logic;
    signal single_jet_i98 : std_logic;
    signal single_jet_i99 : std_logic;
    signal single_mu_i1 : std_logic;
    signal single_mu_i131 : std_logic;
    signal single_mu_i132 : std_logic;
    signal single_mu_i133 : std_logic;
    signal single_mu_i134 : std_logic;
    signal single_mu_i135 : std_logic;
    signal single_mu_i172 : std_logic;
    signal single_mu_i173 : std_logic;
    signal single_mu_i176 : std_logic;
    signal single_mu_i2 : std_logic;
    signal single_mu_i5 : std_logic;
    signal single_mu_i58 : std_logic;
    signal single_mu_i67 : std_logic;
    signal single_mu_i68 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu_cosmics_bmtf : std_logic;
    signal l1_single_mu_cosmics_omtf : std_logic;
    signal l1_single_mu0_dq : std_logic;
    signal l1_single_mu0_omtf : std_logic;
    signal l1_single_mu3 : std_logic;
    signal l1_single_mu3_open_bptx_and : std_logic;
    signal l1_single_mu22 : std_logic;
    signal l1_single_mu22_emtf : std_logic;
    signal l1_double_mu_open_not_minimum_bias_hf2_and_bptx_and : std_logic;
    signal l1_single_eg10er2p5 : std_logic;
    signal l1_single_jet120 : std_logic;
    signal l1_single_jet120_fwd3p0 : std_logic;
    signal l1_htt280er : std_logic;
    signal l1_etmhf100 : std_logic;
    signal l1_centrality_30_100_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_single_mu0_bptx_and : std_logic;
    signal l1_single_mu12_bptx_and : std_logic;
    signal l1_single_mu16_bptx_and : std_logic;
    signal l1_single_mu12_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_single_mu16_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_single_mu_open_single_jet44_mid_eta2p7_bptx_and : std_logic;
    signal l1_single_mu_open_single_jet56_mid_eta2p7_bptx_and : std_logic;
    signal l1_single_mu3_single_jet28_mid_eta2p7_bptx_and : std_logic;
    signal l1_single_mu3_single_jet32_mid_eta2p7_bptx_and : std_logic;
    signal l1_single_mu3_single_eg12_bptx_and : std_logic;
    signal l1_single_mu_open_single_eg15_bptx_and : std_logic;
    signal l1_single_mu3_single_eg30_bptx_and : std_logic;
    signal l1_single_mu5_single_eg10_bptx_and : std_logic;
    signal l1_single_mu5_single_eg15_bptx_and : std_logic;
    signal l1_single_mu7_single_eg7_bptx_and : std_logic;
    signal l1_single_mu7_single_eg12_bptx_and : std_logic;
    signal l1_single_mu7_single_eg15_bptx_and : std_logic;
    signal l1_single_mu12_single_eg7_bptx_and : std_logic;
    signal l1_double_mu_open_os_bptx_and : std_logic;
    signal l1_double_mu10_bptx_and : std_logic;
    signal l1_double_mu_open_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_double_mu_open_centrality_10_100_bptx_and : std_logic;
    signal l1_double_mu_open_centrality_30_100_bptx_and : std_logic;
    signal l1_double_mu_open_centrality_40_100_bptx_and : std_logic;
    signal l1_double_mu_open_centrality_50_100_bptx_and : std_logic;
    signal l1_double_mu0_centrality_50_100_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_single_jet8_bptx_and : std_logic;
    signal l1_single_jet24_bptx_and : std_logic;
    signal l1_single_jet64_bptx_and : std_logic;
    signal l1_single_jet36_fwd_bptx_and : std_logic;
    signal l1_single_jet56_fwd_bptx_and : std_logic;
    signal l1_single_jet32_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet36_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet56_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet44_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet16_fwd_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet28_fwd_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet64_fwd_centrality_50_100_bptx_and : std_logic;
    signal l1_double_jet16_and8_mid_eta2p7_bptx_and : std_logic;
    signal l1_double_jet16_and12_mid_eta2p7_bptx_and : std_logic;
    signal l1_double_jet20_and8_mid_eta2p7_bptx_and : std_logic;
    signal l1_double_jet20_and12_mid_eta2p7_bptx_and : std_logic;
    signal l1_double_jet28_and16_mid_eta2p7_bptx_and : std_logic;
    signal l1_double_jet16_and8_mid_eta2p7_centrality_50_100_bptx_and : std_logic;
    signal l1_double_jet16_and12_mid_eta2p7_centrality_50_100_bptx_and : std_logic;
    signal l1_double_jet20_and8_mid_eta2p7_centrality_50_100_bptx_and : std_logic;
    signal l1_double_jet20_and12_mid_eta2p7_centrality_50_100_bptx_and : std_logic;
    signal l1_double_jet28_and16_mid_eta2p7_centrality_50_100_bptx_and : std_logic;
    signal l1_single_eg3_bptx_and : std_logic;
    signal l1_single_eg21_bptx_and : std_logic;
    signal l1_single_iso_eg12_bptx_and : std_logic;
    signal l1_single_eg5_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_single_eg5_not_minimum_bias_hf2_and_bptx_and : std_logic;
    signal l1_single_eg5_single_jet32_mid_eta2p7_bptx_and : std_logic;
    signal l1_single_eg7_single_jet40_mid_eta2p7_bptx_and : std_logic;
    signal l1_single_eg7_single_jet60_mid_eta2p7_min_dr0p4_bptx_and : std_logic;
    signal l1_single_eg12_single_jet32_mid_eta2p7_bptx_and : std_logic;
    signal l1_single_eg12_single_jet40_mid_eta2p7_bptx_and : std_logic;
    signal l1_single_eg15_single_jet44_mid_eta2p7_bptx_and : std_logic;
    signal l1_single_eg15_single_jet56_mid_eta2p7_bptx_and : std_logic;
    signal l1_single_eg15_single_jet60_mid_eta2p7_bptx_and : std_logic;
    signal l1_single_eg15_single_jet44_mid_eta2p7_min_dr0p4_bptx_and : std_logic;
    signal l1_double_eg10_bptx_and : std_logic;
    signal l1_ett_asym80_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett5_ett_asym60_bptx_and : std_logic;
    signal l1_ett8_ett_asym50_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett50_ett_asym55_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett50_ett_asym80_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett50_ett_asym80_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett60_ett_asym65_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett40_not_ett95_bptx_and : std_logic;
    signal l1_not_ett20_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_not_ett20_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_castor_medium_jet_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_castor_medium_jet_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_castor_medium_jet_not_minimum_bias_hf2_and_bptx_and : std_logic;
    signal l1_castor_medium_jet_single_mu0_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_castor_high_jet_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_castor_high_jet_not_minimum_bias_hf2_and_bptx_and : std_logic;
    signal l1_castor_high_jet_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_castor_high_jet_or_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_castor_high_jet_or_minimum_bias_hf2_and_bptx_and : std_logic;

-- ========================================================