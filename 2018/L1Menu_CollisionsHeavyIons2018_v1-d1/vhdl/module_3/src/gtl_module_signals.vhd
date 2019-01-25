-- ========================================================
-- from VHDL producer:

-- Module ID: 3

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
    signal single_cent2_i18 : std_logic;
    signal single_cent3_i19 : std_logic;
    signal single_cent4_i20 : std_logic;
    signal single_ext_i1 : std_logic;
    signal double_eg_i45 : std_logic;
    signal double_jet_i10 : std_logic;
    signal double_jet_i11 : std_logic;
    signal double_jet_i12 : std_logic;
    signal double_jet_i8 : std_logic;
    signal double_jet_i9 : std_logic;
    signal double_mu_i80 : std_logic;
    signal single_eg_i35 : std_logic;
    signal single_eg_i37 : std_logic;
    signal single_eg_i40 : std_logic;
    signal single_eg_i53 : std_logic;
    signal single_eg_i57 : std_logic;
    signal single_jet_i0 : std_logic;
    signal single_jet_i15 : std_logic;
    signal single_jet_i16 : std_logic;
    signal single_jet_i17 : std_logic;
    signal single_jet_i2 : std_logic;
    signal single_jet_i21 : std_logic;
    signal single_jet_i22 : std_logic;
    signal single_jet_i23 : std_logic;
    signal single_jet_i24 : std_logic;
    signal single_jet_i25 : std_logic;
    signal single_jet_i26 : std_logic;
    signal single_jet_i27 : std_logic;
    signal single_jet_i28 : std_logic;
    signal single_jet_i29 : std_logic;
    signal single_jet_i3 : std_logic;
    signal single_jet_i30 : std_logic;
    signal single_jet_i31 : std_logic;
    signal single_jet_i32 : std_logic;
    signal single_jet_i33 : std_logic;
    signal single_jet_i34 : std_logic;
    signal single_jet_i4 : std_logic;
    signal single_jet_i5 : std_logic;
    signal single_jet_i6 : std_logic;
    signal single_jet_i7 : std_logic;
    signal single_mu_i49 : std_logic;
    signal single_mu_i55 : std_logic;
    signal single_mu_i56 : std_logic;
    signal single_mu_i74 : std_logic;

-- Signal definition for algorithms names
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
    signal l1_double_eg2_bptx_and : std_logic;
    signal l1_single_eg3_centrality_30_100_bptx_and : std_logic;
    signal l1_single_eg7_centrality_30_100_bptx_and : std_logic;
    signal l1_single_eg21_centrality_30_100_bptx_and : std_logic;
    signal l1_single_eg3_centrality_50_100_bptx_and : std_logic;
    signal l1_single_eg7_centrality_50_100_bptx_and : std_logic;
    signal l1_single_eg21_centrality_50_100_bptx_and : std_logic;
    signal l1_single_mu3_single_eg20 : std_logic;
    signal l1_single_mu7_single_eg10 : std_logic;
    signal l1_single_mu12_single_eg7 : std_logic;
    signal l1_single_mu0 : std_logic;
    signal l1_single_mu0_bptx_and : std_logic;
    signal l1_single_mu7 : std_logic;
    signal l1_single_mu12 : std_logic;
    signal l1_double_mu10_bptx_and : std_logic;

-- ========================================================