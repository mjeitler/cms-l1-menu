-- ========================================================
-- from VHDL producer:

-- Module ID: 4

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
    signal single_asymet_i71 : std_logic;
    signal single_asymet_i72 : std_logic;
    signal single_asymet_i83 : std_logic;
    signal single_ext_i0 : std_logic;
    signal single_mbt0_hfm_i2 : std_logic;
    signal single_mbt0_hfp_i1 : std_logic;
    signal single_ett_i63 : std_logic;
    signal single_ett_i64 : std_logic;
    signal single_ett_i65 : std_logic;
    signal single_ett_i66 : std_logic;
    signal single_ett_i73 : std_logic;
    signal single_ett_i74 : std_logic;
    signal double_mu_i80 : std_logic;
    signal double_mu_i81 : std_logic;
    signal double_mu_i82 : std_logic;
    signal single_eg_i42 : std_logic;
    signal single_eg_i43 : std_logic;
    signal single_eg_i44 : std_logic;
    signal single_eg_i46 : std_logic;
    signal single_eg_i56 : std_logic;
    signal single_jet_i54 : std_logic;
    signal single_mu_i52 : std_logic;
    signal single_mu_i57 : std_logic;
    signal single_mu_i59 : std_logic;
    signal single_mu_i60 : std_logic;
    signal single_mu_i75 : std_logic;
    signal single_mu_i77 : std_logic;

-- Signal definition for algorithms names
    signal l1_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_minimum_bias_hf1_xor_bptx_and : std_logic;
    signal l1_not_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_single_mu3_single_jet32_mid_eta2p7 : std_logic;
    signal l1_single_mu3_single_eg20 : std_logic;
    signal l1_single_mu3_single_eg30 : std_logic;
    signal l1_single_mu5_single_eg12 : std_logic;
    signal l1_single_mu7_single_eg7 : std_logic;
    signal l1_single_mu7_single_eg12 : std_logic;
    signal l1_single_mu7_single_eg15 : std_logic;
    signal l1_not_ett100_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_not_ett150_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_not_ett200_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_ett5_ett_asym50_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett5_ett_asym60_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett5_ett_asym70_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett5_ett_asym80_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett8_ett_asym50_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett8_ett_asym60_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett8_ett_asym70_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett8_ett_asym80_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett10_ett_asym50_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett10_ett_asym60_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett10_ett_asym70_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett10_ett_asym80_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_single_mu_open : std_logic;
    signal l1_single_mu3 : std_logic;
    signal l1_single_mu3_bptx_and : std_logic;
    signal l1_single_mu3_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_single_mu5 : std_logic;
    signal l1_single_mu5_bptx_and : std_logic;
    signal l1_single_mu5_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_single_mu7 : std_logic;
    signal l1_single_mu7_bptx_and : std_logic;
    signal l1_single_mu7_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_single_mu12_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_single_mu16_bptx_and : std_logic;
    signal l1_single_mu16_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_double_mu_open_ss_bptx_and : std_logic;
    signal l1_double_mu0_bptx_and : std_logic;
    signal l1_double_mu0 : std_logic;
    signal l1_double_mu0_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_double_mu10_bptx_and : std_logic;
    signal l1_ett_asym80_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett_asym40_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett_asym50_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett_asym60_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett_asym70_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett_asym40_bptx_and : std_logic;
    signal l1_ett_asym70 : std_logic;
    signal l1_ett5_ett_asym40_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett5_minimum_bias_hf1_or_bptx_and : std_logic;

-- ========================================================