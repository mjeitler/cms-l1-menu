-- ========================================================
-- from VHDL producer:

-- Module ID: 4

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
    signal single_etmhf_i38 : std_logic;
    signal single_etmhf_i39 : std_logic;
    signal single_htt_i33 : std_logic;
    signal single_htt_i35 : std_logic;
    signal single_htt_i37 : std_logic;
    signal single_htt_i41 : std_logic;
    signal single_eg_i18 : std_logic;
    signal single_jet_i27 : std_logic;
    signal single_jet_i28 : std_logic;
    signal single_jet_i75 : std_logic;
    signal single_jet_i76 : std_logic;
    signal single_mu_i12 : std_logic;
    signal single_mu_i3 : std_logic;
    signal single_mu_i4 : std_logic;
    signal single_mu_i6 : std_logic;
    signal single_mu_i9 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu_cosmics_emtf : std_logic;
    signal l1_single_mu0_bmtf : std_logic;
    signal l1_single_mu0_emtf : std_logic;
    signal l1_single_mu12_dq_omtf : std_logic;
    signal l1_single_mu22_omtf : std_logic;
    signal l1_single_eg26er2p5 : std_logic;
    signal l1_single_jet35er2p5 : std_logic;
    signal l1_single_jet120er2p5 : std_logic;
    signal l1_single_jet60_fwd3p0 : std_logic;
    signal l1_htt120er : std_logic;
    signal l1_htt280er : std_logic;
    signal l1_htt450er : std_logic;
    signal l1_etmhf100 : std_logic;
    signal l1_etmhf120 : std_logic;
    signal l1_etmhf100_htt60er : std_logic;
    signal l1_etmhf120_htt60er : std_logic;

-- ========================================================