-- ========================================================
-- from VHDL producer:

-- Module ID: 5

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
    signal single_asymet_i67 : std_logic;
    signal single_asymet_i69 : std_logic;
    signal single_asymet_i70 : std_logic;
    signal single_asymet_i71 : std_logic;
    signal single_cent2_i4 : std_logic;
    signal single_cent3_i5 : std_logic;
    signal single_cent4_i6 : std_logic;
    signal single_ext_i0 : std_logic;
    signal single_mbt0_hfm_i2 : std_logic;
    signal single_mbt1_hfm_i8 : std_logic;
    signal single_mbt0_hfp_i1 : std_logic;
    signal single_mbt1_hfp_i7 : std_logic;
    signal single_ett_i66 : std_logic;
    signal single_ett_i74 : std_logic;
    signal double_eg_i50 : std_logic;
    signal double_jet_i35 : std_logic;
    signal double_jet_i39 : std_logic;
    signal double_mu_i80 : std_logic;
    signal single_eg_i40 : std_logic;
    signal single_eg_i41 : std_logic;
    signal single_eg_i42 : std_logic;
    signal single_eg_i43 : std_logic;
    signal single_eg_i44 : std_logic;
    signal single_eg_i56 : std_logic;
    signal single_jet_i12 : std_logic;
    signal single_jet_i14 : std_logic;
    signal single_jet_i16 : std_logic;
    signal single_jet_i18 : std_logic;
    signal single_jet_i20 : std_logic;
    signal single_jet_i21 : std_logic;
    signal single_jet_i22 : std_logic;
    signal single_jet_i25 : std_logic;
    signal single_jet_i26 : std_logic;
    signal single_jet_i31 : std_logic;
    signal single_jet_i32 : std_logic;
    signal single_jet_i53 : std_logic;
    signal single_jet_i54 : std_logic;
    signal single_mu_i52 : std_logic;
    signal single_mu_i57 : std_logic;
    signal single_mu_i60 : std_logic;

-- Signal definition for algorithms names
    signal l1_minimum_bias_hf2_and : std_logic;
    signal l1_minimum_bias_hf2_or : std_logic;
    signal l1_not_minimum_bias_hf2_or : std_logic;
    signal l1_single_jet16_bptx_and : std_logic;
    signal l1_single_jet28_bptx_and : std_logic;
    signal l1_single_jet36_bptx_and : std_logic;
    signal l1_single_jet56_bptx_and : std_logic;
    signal l1_single_jet64_bptx_and : std_logic;
    signal l1_single_jet56_fwd_bptx_and : std_logic;
    signal l1_single_jet8_fwd_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet28_fwd_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet8_fwd_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet28_fwd_centrality_50_100_bptx_and : std_logic;
    signal l1_double_jet28_and16_mid_eta2p7 : std_logic;
    signal l1_double_jet16_and8_mid_eta2p7_centrality_30_100 : std_logic;
    signal l1_double_jet16_and8_mid_eta2p7_centrality_50_100 : std_logic;
    signal l1_single_eg3_bptx_and : std_logic;
    signal l1_single_eg15_bptx_and : std_logic;
    signal l1_double_eg8_bptx_and : std_logic;
    signal l1_single_eg7_centrality_30_100_bptx_and : std_logic;
    signal l1_single_eg7_centrality_50_100_bptx_and : std_logic;
    signal l1_single_mu3_single_eg12 : std_logic;
    signal l1_single_mu5_single_eg20 : std_logic;
    signal l1_single_mu12_single_eg7 : std_logic;
    signal l1_single_eg5_single_jet28_mid_eta2p7 : std_logic;
    signal l1_single_eg5_single_jet32_mid_eta2p7 : std_logic;
    signal l1_ett10_ett_asym65_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_single_mu12_bptx_and : std_logic;
    signal l1_double_mu_open_ss : std_logic;
    signal l1_ett_asym70_bptx_and : std_logic;
    signal l1_ett_asym50 : std_logic;
    signal l1_ett5_ett_asym60_bptx_and : std_logic;
    signal l1_single_eg3_not_minimum_bias_hf2_or : std_logic;
    signal l1_single_eg5_not_minimum_bias_hf2_or : std_logic;

-- ========================================================