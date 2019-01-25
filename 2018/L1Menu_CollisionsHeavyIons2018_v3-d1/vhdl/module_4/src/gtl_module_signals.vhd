-- ========================================================
-- from VHDL producer:

-- Module ID: 4

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
    signal single_asymet_i68 : std_logic;
    signal single_asymet_i69 : std_logic;
    signal single_asymet_i70 : std_logic;
    signal single_asymet_i71 : std_logic;
    signal single_asymet_i72 : std_logic;
    signal single_asymet_i84 : std_logic;
    signal single_cent6_i7 : std_logic;
    signal single_cent7_i8 : std_logic;
    signal single_ext_i0 : std_logic;
    signal single_mbt0_hfm_i2 : std_logic;
    signal single_mbt0_hfp_i1 : std_logic;
    signal single_ett_i63 : std_logic;
    signal single_ett_i64 : std_logic;
    signal single_ett_i65 : std_logic;
    signal single_ett_i66 : std_logic;
    signal single_ett_i73 : std_logic;
    signal single_ett_i74 : std_logic;
    signal single_ett_i97 : std_logic;
    signal double_eg_i12 : std_logic;
    signal double_eg_i53 : std_logic;
    signal double_mu_i81 : std_logic;
    signal double_mu_i82 : std_logic;
    signal double_mu_i83 : std_logic;
    signal single_eg_i43 : std_logic;
    signal single_eg_i44 : std_logic;
    signal single_eg_i45 : std_logic;
    signal single_eg_i46 : std_logic;
    signal single_eg_i48 : std_logic;
    signal single_eg_i50 : std_logic;
    signal single_eg_i58 : std_logic;
    signal single_eg_i60 : std_logic;
    signal single_eg_i92 : std_logic;
    signal single_jet_i27 : std_logic;
    signal single_jet_i28 : std_logic;
    signal single_jet_i56 : std_logic;
    signal single_jet_i57 : std_logic;
    signal single_jet_i95 : std_logic;
    signal single_mu_i54 : std_logic;
    signal single_mu_i59 : std_logic;
    signal single_mu_i61 : std_logic;
    signal single_mu_i62 : std_logic;
    signal single_mu_i75 : std_logic;
    signal single_mu_i76 : std_logic;
    signal single_mu_i77 : std_logic;

-- Signal definition for algorithms names
    signal l1_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_minimum_bias_hf1_xor_bptx_and : std_logic;
    signal l1_minimum_bias_hf1_and : std_logic;
    signal l1_minimum_bias_hf1_or : std_logic;
    signal l1_not_minimum_bias_hf1_or : std_logic;
    signal l1_not_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_single_jet48_bptx_and : std_logic;
    signal l1_single_jet28_fwd_bptx_and : std_logic;
    signal l1_double_eg10_bptx_and : std_logic;
    signal l1_double_eg2_bptx_and : std_logic;
    signal l1_single_iso_eg7_bptx_and : std_logic;
    signal l1_single_iso_eg15_bptx_and : std_logic;
    signal l1_single_mu7_single_eg12 : std_logic;
    signal l1_single_mu7_single_eg15 : std_logic;
    signal l1_single_eg5_single_jet40_mid_eta2p7 : std_logic;
    signal l1_not_ett20_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_not_ett20_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_single_mu5_single_eg15 : std_logic;
    signal l1_not_ett100_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_not_ett150_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_single_mu3_single_eg30 : std_logic;
    signal l1_single_mu3_single_eg12 : std_logic;
    signal l1_ett5_ett_asym55_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_single_mu5_single_eg10 : std_logic;
    signal l1_single_mu0 : std_logic;
    signal l1_single_mu0_bptx_and : std_logic;
    signal l1_ett5_ett_asym65_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_single_mu3_single_eg15 : std_logic;
    signal l1_ett5_ett_asym60_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_single_mu3_single_jet32_mid_eta2p7 : std_logic;
    signal l1_single_mu12_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_single_mu16_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_double_mu_open_ss_bptx_and : std_logic;
    signal l1_double_mu_open_ss : std_logic;
    signal l1_double_mu0_bptx_and : std_logic;
    signal l1_double_mu0 : std_logic;
    signal l1_double_mu0_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_double_mu10_bptx_and : std_logic;
    signal l1_single_mu7_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_single_mu5_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_single_mu7 : std_logic;
    signal l1_single_mu3 : std_logic;
    signal l1_ett5_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett5_ett_asym50_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_single_mu3_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_single_mu5 : std_logic;
    signal l1_single_mu3_bptx_and : std_logic;
    signal l1_single_mu3_single_eg20 : std_logic;
    signal l1_double_eg2 : std_logic;
    signal l1_not_minimum_bias_hf1_and : std_logic;
    signal l1_single_mu_open_centrality_80_100_bptx_and : std_logic;
    signal l1_single_mu3_centrality_80_100_bptx_and : std_logic;
    signal l1_single_mu3_centrality_70_100_bptx_and : std_logic;
    signal l1_single_mu_open_centrality_70_100_bptx_and : std_logic;
    signal l1_not_ett200_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_single_mu7_single_eg7 : std_logic;
    signal l1_single_mu7_single_eg10 : std_logic;
    signal l1_single_mu5_single_eg20 : std_logic;
    signal l1_ett_asym80_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett_asym40_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett_asym50_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett_asym60_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett_asym70_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett5_ett_asym40_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett8_ett_asym55_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett8_ett_asym60_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett8_ett_asym65_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett8_ett_asym70_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett8_ett_asym80_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett10_ett_asym50_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett10_ett_asym55_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett10_ett_asym60_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett10_ett_asym65_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett10_ett_asym70_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett10_ett_asym80_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett8_ett_asym50_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett5_ett_asym80_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett5_ett_asym70_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_single_eg12_single_jet40_mid_eta2p7 : std_logic;

-- ========================================================