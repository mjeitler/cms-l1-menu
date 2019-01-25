-- ========================================================
-- from VHDL producer:

-- Module ID: 2

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
    signal single_asymet_i68 : std_logic;
    signal single_asymet_i69 : std_logic;
    signal single_asymet_i71 : std_logic;
    signal single_asymet_i72 : std_logic;
    signal single_asymet_i83 : std_logic;
    signal single_cent2_i4 : std_logic;
    signal single_cent3_i5 : std_logic;
    signal single_cent4_i6 : std_logic;
    signal single_ext_i0 : std_logic;
    signal single_mbt0_hfm_i2 : std_logic;
    signal single_mbt1_hfm_i8 : std_logic;
    signal single_mbt0_hfp_i1 : std_logic;
    signal single_mbt1_hfp_i7 : std_logic;
    signal single_ett_i66 : std_logic;
    signal double_eg_i9 : std_logic;
    signal double_jet_i35 : std_logic;
    signal double_jet_i36 : std_logic;
    signal double_mu_i78 : std_logic;
    signal double_mu_i81 : std_logic;
    signal single_eg_i41 : std_logic;
    signal single_eg_i42 : std_logic;
    signal single_eg_i43 : std_logic;
    signal single_eg_i46 : std_logic;
    signal single_eg_i48 : std_logic;
    signal single_eg_i58 : std_logic;
    signal single_eg_i62 : std_logic;
    signal single_jet_i11 : std_logic;
    signal single_jet_i13 : std_logic;
    signal single_jet_i15 : std_logic;
    signal single_jet_i17 : std_logic;
    signal single_jet_i19 : std_logic;
    signal single_jet_i21 : std_logic;
    signal single_jet_i22 : std_logic;
    signal single_jet_i25 : std_logic;
    signal single_jet_i26 : std_logic;
    signal single_jet_i29 : std_logic;
    signal single_jet_i30 : std_logic;
    signal single_mu_i57 : std_logic;
    signal single_mu_i60 : std_logic;
    signal single_mu_i75 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_jet8_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet24_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet32_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet44_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet60_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet8_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet24_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet32_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet44_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet60_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet8_fwd_bptx_and : std_logic;
    signal l1_single_jet28_fwd_bptx_and : std_logic;
    signal l1_single_jet44_fwd_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet44_fwd_centrality_50_100_bptx_and : std_logic;
    signal l1_double_jet16_and8_mid_eta2p7 : std_logic;
    signal l1_double_jet20_and8_mid_eta2p7_centrality_30_100 : std_logic;
    signal l1_double_jet20_and8_mid_eta2p7_centrality_50_100 : std_logic;
    signal l1_single_eg7_bptx_and : std_logic;
    signal l1_single_eg12_bptx_and : std_logic;
    signal l1_single_eg30_bptx_and : std_logic;
    signal l1_single_iso_eg7_bptx_and : std_logic;
    signal l1_double_eg5_bptx_and : std_logic;
    signal l1_single_mu5_single_eg10 : std_logic;
    signal l1_single_eg5_single_eg40 : std_logic;
    signal l1_ett5_ett_asym55_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_single_mu12 : std_logic;
    signal l1_double_mu_open_bptx_and : std_logic;
    signal l1_ett_asym80_bptx_and : std_logic;
    signal l1_ett_asym60 : std_logic;
    signal l1_ett5_ett_asym80_bptx_and : std_logic;
    signal l1_ett5_ett_asym70_bptx_and : std_logic;
    signal l1_ett5_ett_asym40_bptx_and : std_logic;
    signal l1_ett5_bptx_and : std_logic;
    signal l1_ett5_not_minimum_bias_hf2_or : std_logic;
    signal l1_single_mu_open_not_minimum_bias_hf2_or : std_logic;
    signal l1_double_mu0_not_minimum_bias_hf2_or : std_logic;

-- ========================================================