-- ========================================================
-- from VHDL producer:

-- Module ID: 1

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
    signal single_asymet_i69 : std_logic;
    signal single_asymet_i71 : std_logic;
    signal single_asymet_i72 : std_logic;
    signal single_asymet_i83 : std_logic;
    signal single_ext_i1 : std_logic;
    signal single_mbt1_hfm_i82 : std_logic;
    signal single_mbt1_hfp_i81 : std_logic;
    signal single_ett_i64 : std_logic;
    signal double_eg_i45 : std_logic;
    signal double_eg_i46 : std_logic;
    signal double_mu_i76 : std_logic;
    signal double_mu_i79 : std_logic;
    signal single_eg_i35 : std_logic;
    signal single_eg_i36 : std_logic;
    signal single_eg_i37 : std_logic;
    signal single_eg_i59 : std_logic;
    signal single_jet_i16 : std_logic;
    signal single_jet_i23 : std_logic;
    signal single_jet_i24 : std_logic;
    signal single_jet_i3 : std_logic;
    signal single_jet_i33 : std_logic;
    signal single_jet_i34 : std_logic;
    signal single_mu_i49 : std_logic;
    signal single_mu_i73 : std_logic;
    signal single_mu_i74 : std_logic;

-- Signal definition for algorithms names
    signal l1_minimum_bias_hf2_and_bptx_and : std_logic;
    signal l1_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_minimum_bias_hf2_and : std_logic;
    signal l1_minimum_bias_hf2_or : std_logic;
    signal l1_not_minimum_bias_hf2_or : std_logic;
    signal l1_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_double_eg5_not_minimum_bias_hf2_or : std_logic;
    signal l1_double_eg2_not_minimum_bias_hf2_or : std_logic;
    signal l1_single_jet24_bptx_and : std_logic;
    signal l1_single_jet56_bptx_and : std_logic;
    signal l1_single_jet16_fwd_bptx_and : std_logic;
    signal l1_single_jet64_fwd_bptx_and : std_logic;
    signal l1_single_eg7_bptx_and : std_logic;
    signal l1_single_eg5_single_eg40 : std_logic;
    signal l1_ett_asym50_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett_asym40_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett_asym60_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett_asym70_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett_asym80_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett5_ett_asym40_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett5_ett_asym50_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett5_ett_asym60_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett5_ett_asym70_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett5_ett_asym80_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett5_ett_asym40_bptx_and : std_logic;
    signal l1_ett5_not_minimum_bias_hf2_or : std_logic;
    signal l1_single_mu_open_not_minimum_bias_hf2_or : std_logic;
    signal l1_single_mu0_not_minimum_bias_hf2_or : std_logic;
    signal l1_single_mu3_not_minimum_bias_hf2_or : std_logic;
    signal l1_double_mu_open_not_minimum_bias_hf2_or : std_logic;
    signal l1_double_mu0_not_minimum_bias_hf2_or : std_logic;
    signal l1_single_eg3_not_minimum_bias_hf2_or : std_logic;
    signal l1_single_eg5_not_minimum_bias_hf2_or : std_logic;

-- ========================================================