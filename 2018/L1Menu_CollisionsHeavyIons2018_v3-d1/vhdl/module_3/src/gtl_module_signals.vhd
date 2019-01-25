-- ========================================================
-- from VHDL producer:

-- Module ID: 3

-- Name of L1 Trigger Menu:
-- L1Menu_CollisionsHeavyIons2018_v3

-- Unique ID of L1 Trigger Menu:
-- bb9a82eb-17df-4991-b806-4028ee613a4c

-- Unique ID of firmware implementation:
-- 721d74e7-03e3-48ab-938d-1e8242e7c1dd

-- Scale set:
-- scales_2018_08_07

-- VHDL producer version
-- v2.5.0

-- Signal definition of pt, eta and phi for correlation conditions.
-- Insert "signal_correlation_conditions_pt_eta_phi_cos_sin_phi.vhd.j2" as often as an ObjectType at a certain Bx is used in a correlation condition.

-- Signal definition of differences for correlation conditions.
-- Insert "signal_correlation_conditions_differences.vhd.j2" once for correlation conditions of different ObjectTypes and Bx combinations.

-- Signal definition for muon charge correlations.
-- Insert "signal_muon_charge_correlations.vhd.j2" only once for a certain Bx combination,
-- if there is at least one muon condition or one muon-muon correlation condition.
    signal ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0 : muon_charcorr_double_array;
    signal ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0 : muon_charcorr_triple_array;
    signal ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0 : muon_charcorr_quad_array;

-- Signal definition for conditions names
    signal single_asymet_i69 : std_logic;
    signal single_asymet_i71 : std_logic;
    signal single_asymet_i72 : std_logic;
    signal single_asymet_i84 : std_logic;
    signal single_cent1_i79 : std_logic;
    signal single_cent2_i3 : std_logic;
    signal single_cent3_i4 : std_logic;
    signal single_cent4_i5 : std_logic;
    signal single_cent5_i6 : std_logic;
    signal single_cent6_i7 : std_logic;
    signal single_cent7_i8 : std_logic;
    signal single_ext_i0 : std_logic;
    signal single_mbt0_hfm_i2 : std_logic;
    signal single_mbt0_hfp_i1 : std_logic;
    signal single_ett_i66 : std_logic;
    signal single_ett_i96 : std_logic;
    signal double_jet_i37 : std_logic;
    signal double_jet_i38 : std_logic;
    signal double_jet_i39 : std_logic;
    signal double_jet_i40 : std_logic;
    signal double_jet_i41 : std_logic;
    signal double_mu_i78 : std_logic;
    signal double_mu_i82 : std_logic;
    signal single_eg_i42 : std_logic;
    signal single_eg_i43 : std_logic;
    signal single_eg_i44 : std_logic;
    signal single_eg_i45 : std_logic;
    signal single_eg_i46 : std_logic;
    signal single_eg_i47 : std_logic;
    signal single_eg_i48 : std_logic;
    signal single_eg_i93 : std_logic;
    signal single_jet_i13 : std_logic;
    signal single_jet_i14 : std_logic;
    signal single_jet_i15 : std_logic;
    signal single_jet_i16 : std_logic;
    signal single_jet_i17 : std_logic;
    signal single_jet_i18 : std_logic;
    signal single_jet_i19 : std_logic;
    signal single_jet_i20 : std_logic;
    signal single_jet_i21 : std_logic;
    signal single_jet_i22 : std_logic;
    signal single_jet_i23 : std_logic;
    signal single_jet_i24 : std_logic;
    signal single_jet_i25 : std_logic;
    signal single_jet_i26 : std_logic;
    signal single_jet_i27 : std_logic;
    signal single_jet_i28 : std_logic;
    signal single_jet_i29 : std_logic;
    signal single_jet_i30 : std_logic;
    signal single_jet_i31 : std_logic;
    signal single_jet_i32 : std_logic;
    signal single_jet_i33 : std_logic;
    signal single_jet_i34 : std_logic;
    signal single_jet_i35 : std_logic;
    signal single_jet_i36 : std_logic;
    signal single_jet_i56 : std_logic;
    signal single_jet_i57 : std_logic;
    signal single_jet_i94 : std_logic;
    signal single_mu_i75 : std_logic;

-- Signal definition for algorithms names
    signal l1_centrality_30_100 : std_logic;
    signal l1_centrality_50_100 : std_logic;
    signal l1_single_jet8 : std_logic;
    signal l1_single_jet8_bptx_and : std_logic;
    signal l1_single_jet16_bptx_and : std_logic;
    signal l1_single_jet24_bptx_and : std_logic;
    signal l1_single_jet28_bptx_and : std_logic;
    signal l1_single_jet32_bptx_and : std_logic;
    signal l1_single_jet36_bptx_and : std_logic;
    signal l1_single_jet40_bptx_and : std_logic;
    signal l1_single_jet56_bptx_and : std_logic;
    signal l1_single_jet60_bptx_and : std_logic;
    signal l1_single_jet64_bptx_and : std_logic;
    signal l1_single_jet8_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet16_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet24_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet28_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet32_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet36_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet44_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet56_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet60_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet64_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet8_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet16_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet24_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet28_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet32_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet36_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet44_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet56_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet60_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet64_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet8_fwd_bptx_and : std_logic;
    signal l1_single_jet36_fwd_bptx_and : std_logic;
    signal l1_single_jet44_fwd_bptx_and : std_logic;
    signal l1_single_jet56_fwd_bptx_and : std_logic;
    signal l1_single_jet64_fwd_bptx_and : std_logic;
    signal l1_single_jet8_fwd_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet16_fwd_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet28_fwd_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet36_fwd_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet44_fwd_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet56_fwd_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet64_fwd_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet8_fwd_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet16_fwd_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet28_fwd_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet36_fwd_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet44_fwd_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet56_fwd_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet64_fwd_centrality_50_100_bptx_and : std_logic;
    signal l1_single_iso_eg21_bptx_and : std_logic;
    signal l1_ett5_not_ett30_bptx_and : std_logic;
    signal l1_single_mu_open : std_logic;
    signal l1_single_mu_open_bptx_and : std_logic;
    signal l1_double_mu_open_bptx_and : std_logic;
    signal l1_double_mu_open : std_logic;
    signal l1_double_mu_open_centrality_10_100_bptx_and : std_logic;
    signal l1_double_mu_open_centrality_50_100_bptx_and : std_logic;
    signal l1_double_mu0_centrality_50_100_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_double_mu0_centrality_10_100_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_double_mu0_centrality_30_100_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_ett5_bptx_and : std_logic;
    signal l1_double_mu_open_centrality_30_100_bptx_and : std_logic;
    signal l1_double_mu_open_centrality_40_100_bptx_and : std_logic;
    signal l1_centrality_20_100_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_single_eg7_single_jet32_mid_eta2p7 : std_logic;
    signal l1_centrality_30_100_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_double_jet16_and8_mid_eta2p7 : std_logic;
    signal l1_double_jet20_and8_mid_eta2p7 : std_logic;
    signal l1_double_jet20_and12_mid_eta2p7 : std_logic;
    signal l1_double_jet28_and16_mid_eta2p7 : std_logic;
    signal l1_double_jet16_and12_mid_eta2p7 : std_logic;
    signal l1_ett_asym70_bptx_and : std_logic;
    signal l1_ett_asym80_bptx_and : std_logic;
    signal l1_ett5_ett_asym80_bptx_and : std_logic;
    signal l1_ett5_ett_asym70_bptx_and : std_logic;
    signal l1_ett5_ett_asym60_bptx_and : std_logic;
    signal l1_ett5_ett_asym40_bptx_and : std_logic;
    signal l1_ett_asym60_bptx_and : std_logic;
    signal l1_ett_asym40_bptx_and : std_logic;
    signal l1_double_jet16_and8_mid_eta2p7_centrality_30_100 : std_logic;
    signal l1_double_jet20_and8_mid_eta2p7_centrality_30_100 : std_logic;
    signal l1_double_jet16_and12_mid_eta2p7_centrality_30_100 : std_logic;
    signal l1_double_jet20_and12_mid_eta2p7_centrality_30_100 : std_logic;
    signal l1_double_jet28_and16_mid_eta2p7_centrality_30_100 : std_logic;
    signal l1_double_jet16_and8_mid_eta2p7_centrality_50_100 : std_logic;
    signal l1_double_jet20_and8_mid_eta2p7_centrality_50_100 : std_logic;
    signal l1_double_jet16_and12_mid_eta2p7_centrality_50_100 : std_logic;
    signal l1_double_jet20_and12_mid_eta2p7_centrality_50_100 : std_logic;
    signal l1_double_jet28_and16_mid_eta2p7_centrality_50_100 : std_logic;
    signal l1_single_eg3 : std_logic;
    signal l1_single_eg3_bptx_and : std_logic;
    signal l1_single_eg5_bptx_and : std_logic;
    signal l1_single_eg12_bptx_and : std_logic;
    signal l1_single_eg15_bptx_and : std_logic;
    signal l1_single_eg21_bptx_and : std_logic;
    signal l1_single_eg30_bptx_and : std_logic;
    signal l1_single_eg3_centrality_30_100_bptx_and : std_logic;
    signal l1_single_eg7_centrality_30_100_bptx_and : std_logic;
    signal l1_single_eg15_centrality_30_100_bptx_and : std_logic;
    signal l1_single_eg21_centrality_30_100_bptx_and : std_logic;
    signal l1_single_eg3_centrality_50_100_bptx_and : std_logic;
    signal l1_single_eg7_centrality_50_100_bptx_and : std_logic;
    signal l1_single_eg15_centrality_50_100_bptx_and : std_logic;
    signal l1_single_eg21_centrality_50_100_bptx_and : std_logic;
    signal l1_single_eg7_single_jet40_mid_eta2p7 : std_logic;
    signal l1_single_eg12_single_jet32_mid_eta2p7 : std_logic;

-- ========================================================