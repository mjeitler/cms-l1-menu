-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_CollisionsHeavyIons2018_v2

-- Unique ID of L1 Trigger Menu:
-- e3d0f07f-f1ad-4fee-842a-79441531f4b3

-- Unique ID of firmware implementation:
-- bc29c622-7f74-4d05-8536-eab541c325b5

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
    signal single_cent1_i3 : std_logic;
    signal single_cent2_i4 : std_logic;
    signal single_cent3_i5 : std_logic;
    signal single_cent4_i6 : std_logic;
    signal single_ext_i0 : std_logic;
    signal single_ext_i84 : std_logic;
    signal single_ext_i85 : std_logic;
    signal single_ext_i86 : std_logic;
    signal single_ext_i87 : std_logic;
    signal single_mbt0_hfm_i2 : std_logic;
    signal single_mbt1_hfm_i8 : std_logic;
    signal single_mbt0_hfp_i1 : std_logic;
    signal single_mbt1_hfp_i7 : std_logic;
    signal double_jet_i36 : std_logic;
    signal double_mu_i78 : std_logic;
    signal double_mu_i79 : std_logic;
    signal double_mu_i81 : std_logic;
    signal single_eg_i41 : std_logic;
    signal single_eg_i44 : std_logic;
    signal single_eg_i61 : std_logic;
    signal single_jet_i23 : std_logic;
    signal single_jet_i24 : std_logic;
    signal single_jet_i29 : std_logic;
    signal single_jet_i30 : std_logic;
    signal single_jet_i33 : std_logic;
    signal single_jet_i34 : std_logic;
    signal single_jet_i55 : std_logic;
    signal single_mu_i52 : std_logic;
    signal single_mu_i57 : std_logic;
    signal single_mu_i76 : std_logic;

-- Signal definition for algorithms names
    signal l1_zero_bias : std_logic;
    signal l1_zero_bias_copy : std_logic;
    signal l1_centrality_10_100_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_centrality_30_100_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_always_true : std_logic;
    signal l1_single_jet44_fwd_bptx_and : std_logic;
    signal l1_single_jet16_fwd_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet64_fwd_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet16_fwd_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet64_fwd_centrality_50_100_bptx_and : std_logic;
    signal l1_double_jet20_and8_mid_eta2p7 : std_logic;
    signal l1_single_mu3_single_jet40_mid_eta2p7 : std_logic;
    signal l1_single_mu5_single_eg15 : std_logic;
    signal l1_single_eg5_single_eg32 : std_logic;
    signal l1_single_mu0_bptx_and : std_logic;
    signal l1_double_mu_open_centrality_10_100_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_double_mu_open_centrality_50_100_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_double_mu_open_os_bptx_and : std_logic;
    signal l1_double_mu0_centrality_10_100_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_double_mu0_centrality_30_100_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_single_mu0_not_minimum_bias_hf2_or : std_logic;
    signal l1_single_mu3_not_minimum_bias_hf2_or : std_logic;
    signal l1_castor1 : std_logic;
    signal l1_castor2 : std_logic;
    signal l1_castor3 : std_logic;
    signal l1_castor4 : std_logic;

-- ========================================================