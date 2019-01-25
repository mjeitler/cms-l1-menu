-- ========================================================
-- from VHDL producer:

-- Module ID: 5

-- Name of L1 Trigger Menu:
-- L1Menu_CollisionsHeavyIons2018_v4_0_0

-- Unique ID of L1 Trigger Menu:
-- b12c51f7-2c74-44b9-b170-21566e834f41

-- Unique ID of firmware implementation:
-- c0a658bc-2cd9-438e-a63d-025076271663

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

-- Signal definition for conditions names
    signal single_cent7_i104 : std_logic;
    signal single_ext_i196 : std_logic;
    signal single_ext_i56 : std_logic;
    signal single_ext_i57 : std_logic;
    signal single_ext_i58 : std_logic;
    signal single_ext_i59 : std_logic;
    signal single_ext_i60 : std_logic;
    signal single_ext_i61 : std_logic;
    signal single_ext_i62 : std_logic;
    signal single_ext_i63 : std_logic;
    signal single_ext_i64 : std_logic;
    signal single_ext_i65 : std_logic;
    signal single_ext_i66 : std_logic;
    signal single_ext_i67 : std_logic;
    signal single_ext_i68 : std_logic;
    signal single_ext_i69 : std_logic;
    signal single_ext_i70 : std_logic;
    signal single_ext_i71 : std_logic;
    signal single_ext_i72 : std_logic;
    signal single_ext_i73 : std_logic;
    signal single_ext_i86 : std_logic;
    signal single_ext_i87 : std_logic;
    signal single_ext_i88 : std_logic;
    signal single_ett_i80 : std_logic;
    signal single_ett_i81 : std_logic;
    signal single_ett_i82 : std_logic;
    signal single_htt_i34 : std_logic;
    signal single_htt_i36 : std_logic;
    signal single_eg_i19 : std_logic;
    signal single_jet_i29 : std_logic;
    signal single_jet_i30 : std_logic;
    signal single_jet_i77 : std_logic;
    signal single_jet_i79 : std_logic;
    signal single_mu_i11 : std_logic;
    signal single_mu_i2 : std_logic;
    signal single_mu_i5 : std_logic;
    signal single_mu_i7 : std_logic;
    signal single_mu_i74 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu_cosmics_omtf : std_logic;
    signal l1_single_mu0_dq : std_logic;
    signal l1_single_mu0_omtf : std_logic;
    signal l1_single_mu7_dq : std_logic;
    signal l1_single_mu22 : std_logic;
    signal l1_single_eg50 : std_logic;
    signal l1_single_jet60er2p5 : std_logic;
    signal l1_single_jet180er2p5 : std_logic;
    signal l1_single_jet90_fwd3p0 : std_logic;
    signal l1_htt200er : std_logic;
    signal l1_htt360er : std_logic;
    signal l1_ett1200 : std_logic;
    signal l1_ett1600 : std_logic;
    signal l1_ett2000 : std_logic;
    signal l1_totem_3 : std_logic;
    signal l1_hcal_laser_mon_trig : std_logic;
    signal l1_hcal_laser_mon_veto : std_logic;
    signal l1_bptx_xor : std_logic;
    signal l1_bptx_plus : std_logic;
    signal l1_bptx_minus : std_logic;
    signal l1_bptx_plus_not_bptx_minus : std_logic;
    signal l1_bptx_minus_not_bptx_plus : std_logic;
    signal l1_unpaired_bunch_bptx_plus : std_logic;
    signal l1_unpaired_bunch_bptx_minus : std_logic;
    signal l1_last_collision_in_train : std_logic;
    signal l1_first_collision_in_train : std_logic;
    signal l1_first_collision_in_orbit : std_logic;
    signal l1_bptx_not_or_vme : std_logic;
    signal l1_bptx_or_ref3_vme : std_logic;
    signal l1_bptx_or_ref4_vme : std_logic;
    signal l1_bptx_ref_and_vme : std_logic;
    signal l1_bptx_and_ref1_vme : std_logic;
    signal l1_bptx_and_ref3_vme : std_logic;
    signal l1_bptx_and_ref4_vme : std_logic;
    signal l1_bptx_beam_gas_ref1_vme : std_logic;
    signal l1_bptx_beam_gas_ref2_vme : std_logic;
    signal l1_bptx_beam_gas_b1_vme : std_logic;
    signal l1_bptx_beam_gas_b2_vme : std_logic;
    signal l1_centrality_saturation : std_logic;
    signal l1_castor1 : std_logic;

-- ========================================================