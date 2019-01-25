-- ========================================================
-- from VHDL producer:

-- Module ID: 4

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
    signal single_ext_i1 : std_logic;
    signal double_eg_i46 : std_logic;
    signal double_jet_i12 : std_logic;
    signal double_jet_i8 : std_logic;
    signal double_mu_i76 : std_logic;
    signal single_eg_i35 : std_logic;
    signal single_eg_i36 : std_logic;
    signal single_eg_i38 : std_logic;
    signal single_eg_i41 : std_logic;
    signal single_eg_i43 : std_logic;
    signal single_eg_i57 : std_logic;
    signal single_jet_i0 : std_logic;
    signal single_jet_i15 : std_logic;
    signal single_jet_i29 : std_logic;
    signal single_jet_i30 : std_logic;
    signal single_jet_i51 : std_logic;
    signal single_jet_i52 : std_logic;
    signal single_mu_i49 : std_logic;
    signal single_mu_i54 : std_logic;
    signal single_mu_i55 : std_logic;
    signal single_mu_i75 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_jet8_bptx_and : std_logic;
    signal l1_single_jet36_bptx_and : std_logic;
    signal l1_single_jet44_fwd_bptx_and : std_logic;
    signal l1_double_jet16_and8_mid_eta2p7 : std_logic;
    signal l1_double_jet28_and16_mid_eta2p7 : std_logic;
    signal l1_single_eg3_bptx_and : std_logic;
    signal l1_single_eg30_bptx_and : std_logic;
    signal l1_single_iso_eg7_bptx_and : std_logic;
    signal l1_double_eg5_bptx_and : std_logic;
    signal l1_single_mu3_single_jet32_mid_eta2p7 : std_logic;
    signal l1_single_mu3_single_eg12 : std_logic;
    signal l1_single_mu3_single_eg30 : std_logic;
    signal l1_single_mu5_single_eg10 : std_logic;
    signal l1_single_mu7_single_eg12 : std_logic;
    signal l1_single_eg5_single_jet40_mid_eta2p7 : std_logic;
    signal l1_single_mu3 : std_logic;
    signal l1_single_mu5 : std_logic;
    signal l1_single_mu16 : std_logic;
    signal l1_single_mu16_bptx_and : std_logic;
    signal l1_double_mu_open_bptx_and : std_logic;
    signal l1_double_mu_open : std_logic;

-- ========================================================