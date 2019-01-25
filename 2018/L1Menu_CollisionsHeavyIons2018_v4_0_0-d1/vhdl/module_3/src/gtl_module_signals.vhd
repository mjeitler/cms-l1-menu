-- ========================================================
-- from VHDL producer:

-- Module ID: 3

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
    signal ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0 : muon_charcorr_double_array;
    signal ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0 : muon_charcorr_triple_array;
    signal ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0 : muon_charcorr_quad_array;

-- Signal definition for conditions names
    signal double_mu_i43 : std_logic;
    signal single_eg_i16 : std_logic;
    signal single_jet_i20 : std_logic;
    signal single_jet_i23 : std_logic;
    signal single_jet_i25 : std_logic;
    signal single_jet_i26 : std_logic;
    signal single_jet_i78 : std_logic;
    signal single_mu_i1 : std_logic;
    signal single_mu_i10 : std_logic;
    signal single_mu_i14 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu_cosmics_bmtf : std_logic;
    signal l1_single_mu12_dq_emtf : std_logic;
    signal l1_single_mu22_emtf : std_logic;
    signal l1_double_mu0_sq_os : std_logic;
    signal l1_single_eg15er2p5 : std_logic;
    signal l1_single_jet35 : std_logic;
    signal l1_single_jet120 : std_logic;
    signal l1_single_jet90er2p5 : std_logic;
    signal l1_single_jet35_fwd3p0 : std_logic;

-- ========================================================