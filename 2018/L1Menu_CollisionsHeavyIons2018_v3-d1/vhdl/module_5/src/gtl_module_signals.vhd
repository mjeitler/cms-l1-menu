-- ========================================================
-- from VHDL producer:

-- Module ID: 5

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
    signal single_asymet_i67 : std_logic;
    signal single_asymet_i69 : std_logic;
    signal single_asymet_i71 : std_logic;
    signal single_asymet_i72 : std_logic;
    signal single_asymet_i84 : std_logic;
    signal single_cent0_i98 : std_logic;
    signal single_ext_i0 : std_logic;
    signal single_ext_i85 : std_logic;
    signal single_ext_i86 : std_logic;
    signal single_ext_i87 : std_logic;
    signal single_ext_i88 : std_logic;
    signal single_mbt1_hfm_i10 : std_logic;
    signal single_mbt1_hfp_i9 : std_logic;
    signal single_ett_i66 : std_logic;
    signal single_ett_i97 : std_logic;
    signal double_eg_i11 : std_logic;
    signal double_eg_i12 : std_logic;
    signal double_eg_i52 : std_logic;
    signal double_mu_i78 : std_logic;
    signal double_mu_i80 : std_logic;
    signal double_mu_i82 : std_logic;
    signal single_eg_i42 : std_logic;
    signal single_eg_i43 : std_logic;
    signal single_eg_i44 : std_logic;
    signal single_eg_i45 : std_logic;
    signal single_eg_i49 : std_logic;
    signal single_eg_i51 : std_logic;
    signal single_jet_i19 : std_logic;
    signal single_jet_i25 : std_logic;
    signal single_jet_i26 : std_logic;
    signal single_jet_i55 : std_logic;
    signal single_jet_i56 : std_logic;
    signal single_jet_i57 : std_logic;
    signal single_mu_i54 : std_logic;
    signal single_mu_i59 : std_logic;
    signal single_mu_i61 : std_logic;
    signal single_mu_i62 : std_logic;
    signal single_mu_i75 : std_logic;
    signal single_mu_i76 : std_logic;
    signal single_mu_i77 : std_logic;

-- Signal definition for algorithms names
    signal l1_centrality_saturation : std_logic;
    signal l1_minimum_bias_hf2_and_bptx_and : std_logic;
    signal l1_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_minimum_bias_hf2_and : std_logic;
    signal l1_minimum_bias_hf2_or : std_logic;
    signal l1_not_minimum_bias_hf2_or : std_logic;
    signal l1_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_single_jet44_bptx_and : std_logic;
    signal l1_single_jet16_fwd_bptx_and : std_logic;
    signal l1_double_eg5_bptx_and : std_logic;
    signal l1_double_eg8_bptx_and : std_logic;
    signal l1_single_iso_eg12_bptx_and : std_logic;
    signal l1_single_iso_eg3_bptx_and : std_logic;
    signal l1_single_mu12_single_eg7 : std_logic;
    signal l1_single_eg5_single_jet28_mid_eta2p7 : std_logic;
    signal l1_single_eg5_single_jet32_mid_eta2p7 : std_logic;
    signal l1_single_mu5_single_eg12 : std_logic;
    signal l1_not_ett20_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_single_mu3_single_jet40_mid_eta2p7 : std_logic;
    signal l1_single_mu12 : std_logic;
    signal l1_single_mu12_bptx_and : std_logic;
    signal l1_single_mu16 : std_logic;
    signal l1_single_mu16_bptx_and : std_logic;
    signal l1_double_mu_open_os : std_logic;
    signal l1_double_mu_open_os_bptx_and : std_logic;
    signal l1_double_mu0_not_minimum_bias_hf2_or : std_logic;
    signal l1_double_mu0_not_minimum_bias_hf2_and : std_logic;
    signal l1_single_mu7_bptx_and : std_logic;
    signal l1_single_mu5_bptx_and : std_logic;
    signal l1_ett5 : std_logic;
    signal l1_ett5_not_minimum_bias_hf2_or : std_logic;
    signal l1_single_mu_open_not_minimum_bias_hf2_or : std_logic;
    signal l1_single_mu0_not_minimum_bias_hf2_or : std_logic;
    signal l1_single_mu3_not_minimum_bias_hf2_or : std_logic;
    signal l1_double_mu_open_not_minimum_bias_hf2_or : std_logic;
    signal l1_single_eg3_not_minimum_bias_hf2_or : std_logic;
    signal l1_single_eg5_not_minimum_bias_hf2_or : std_logic;
    signal l1_single_mu3_single_jet28_mid_eta2p7 : std_logic;
    signal l1_not_minimum_bias_hf2_and : std_logic;
    signal l1_single_mu_open_not_minimum_bias_hf2_and : std_logic;
    signal l1_double_eg5 : std_logic;
    signal l1_double_eg2_not_minimum_bias_hf2_or : std_logic;
    signal l1_double_eg5_not_minimum_bias_hf2_or : std_logic;
    signal l1_single_mu0_not_minimum_bias_hf2_and : std_logic;
    signal l1_double_eg5_not_minimum_bias_hf2_and : std_logic;
    signal l1_double_eg2_not_minimum_bias_hf2_and : std_logic;
    signal l1_single_eg5_not_minimum_bias_hf2_and : std_logic;
    signal l1_single_eg3_not_minimum_bias_hf2_and : std_logic;
    signal l1_castor4 : std_logic;
    signal l1_castor2 : std_logic;
    signal l1_castor3 : std_logic;
    signal l1_castor1 : std_logic;
    signal l1_ett_asym50_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett_asym70_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett_asym80 : std_logic;
    signal l1_ett_asym70 : std_logic;
    signal l1_ett_asym60 : std_logic;
    signal l1_ett_asym50 : std_logic;
    signal l1_ett_asym40 : std_logic;
    signal l1_ett5_ett_asym40_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett5_ett_asym50_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett5_ett_asym60_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett5_ett_asym70_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett5_ett_asym80_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett5_ett_asym50_bptx_and : std_logic;
    signal l1_ett_asym50_bptx_and : std_logic;
    signal l1_ett_asym60_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett_asym80_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett_asym40_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_single_eg5 : std_logic;
    signal l1_single_eg7_bptx_and : std_logic;

-- ========================================================