-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_CollisionsHeavyIons2018_v1

-- Unique ID of L1 Trigger Menu:
-- 41e89c13-7e5a-4610-a477-a238c4a72331

-- Unique ID of firmware implementation:
-- 45336cdc-d724-464d-a3a6-196f2fa31e86

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
    signal single_asymet_i65 : std_logic;
    signal single_asymet_i68 : std_logic;
    signal single_asymet_i69 : std_logic;
    signal single_asymet_i70 : std_logic;
    signal single_asymet_i71 : std_logic;
    signal single_asymet_i72 : std_logic;
    signal single_asymet_i83 : std_logic;
    signal single_cent1_i60 : std_logic;
    signal single_cent2_i18 : std_logic;
    signal single_cent3_i19 : std_logic;
    signal single_cent4_i20 : std_logic;
    signal single_ext_i1 : std_logic;
    signal single_mbt0_hfm_i14 : std_logic;
    signal single_mbt0_hfp_i13 : std_logic;
    signal single_ett_i61 : std_logic;
    signal single_ett_i62 : std_logic;
    signal single_ett_i63 : std_logic;
    signal single_ett_i64 : std_logic;
    signal single_ett_i66 : std_logic;
    signal single_ett_i67 : std_logic;
    signal double_mu_i76 : std_logic;
    signal double_mu_i79 : std_logic;
    signal single_eg_i36 : std_logic;
    signal single_eg_i53 : std_logic;
    signal single_jet_i2 : std_logic;
    signal single_jet_i31 : std_logic;
    signal single_jet_i32 : std_logic;
    signal single_jet_i6 : std_logic;
    signal single_mu_i49 : std_logic;
    signal single_mu_i54 : std_logic;
    signal single_mu_i55 : std_logic;
    signal single_mu_i56 : std_logic;
    signal single_mu_i75 : std_logic;

-- Signal definition for algorithms names
    signal l1_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_minimum_bias_hf1_xor_bptx_and : std_logic;
    signal l1_centrality_10_100_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_centrality_30_100_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_minimum_bias_hf1_and : std_logic;
    signal l1_minimum_bias_hf1_or : std_logic;
    signal l1_not_minimum_bias_hf1_or : std_logic;
    signal l1_not_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_single_jet16_bptx_and : std_logic;
    signal l1_single_jet44_bptx_and : std_logic;
    signal l1_single_jet56_fwd_bptx_and : std_logic;
    signal l1_single_eg5_bptx_and : std_logic;
    signal l1_single_mu5_single_eg20 : std_logic;
    signal l1_not_ett100_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_not_ett150_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_not_ett200_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_ett5_ett_asym50_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett5_ett_asym55_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett5_ett_asym60_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett5_ett_asym65_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett5_ett_asym70_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett5_ett_asym80_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett8_ett_asym50_minimum_bias_hf1_or_bptx_and : std_logic;
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
    signal l1_single_mu3_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_single_mu5_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_single_mu7_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_single_mu12_bptx_and : std_logic;
    signal l1_single_mu12_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_single_mu16_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_double_mu_open_centrality_10_100_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_double_mu_open_centrality_50_100_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_double_mu0_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_double_mu0_centrality_10_100_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_double_mu0_centrality_30_100_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_double_mu0_centrality_50_100_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_ett_asym80_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett_asym40_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett_asym50_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett_asym60_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett_asym70_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett_asym40_bptx_and : std_logic;
    signal l1_ett_asym50_bptx_and : std_logic;
    signal l1_ett_asym60_bptx_and : std_logic;
    signal l1_ett_asym70_bptx_and : std_logic;
    signal l1_ett_asym80_bptx_and : std_logic;
    signal l1_ett_asym80 : std_logic;
    signal l1_ett_asym70 : std_logic;
    signal l1_ett_asym60 : std_logic;
    signal l1_ett_asym50 : std_logic;
    signal l1_ett_asym40 : std_logic;
    signal l1_ett5_ett_asym40_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett5_ett_asym80_bptx_and : std_logic;
    signal l1_ett5_ett_asym70_bptx_and : std_logic;
    signal l1_ett5_ett_asym60_bptx_and : std_logic;
    signal l1_ett5_ett_asym50_bptx_and : std_logic;
    signal l1_ett5_bptx_and : std_logic;
    signal l1_ett5 : std_logic;
    signal l1_ett5_minimum_bias_hf1_or_bptx_and : std_logic;

-- ========================================================