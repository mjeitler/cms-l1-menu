-- ========================================================
-- from VHDL producer:

-- Module ID: 1

-- Name of L1 Trigger Menu:
-- L1Menu_Special2018_v1_0_0

-- Unique ID of L1 Trigger Menu:
-- fc29be71-db7f-4aff-9e46-094f956ff1d1

-- Unique ID of firmware implementation:
-- ede4df2a-e7ec-4ef1-b0f0-3d2b2b7fe1ac

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

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
    signal single_ext_10333571493211026812 : std_logic;
    signal single_ext_17417807877912935668 : std_logic;
    signal single_ext_4108951444235007726 : std_logic;
    signal single_ext_6953200472440552930 : std_logic;
    signal single_ext_8736797827952386068 : std_logic;
    signal single_etmhf_39215647867820592 : std_logic;
    signal single_ett_306374081517616 : std_logic;
    signal single_htt_2496626727605 : std_logic;
    signal single_htt_2496626759728 : std_logic;
    signal double_eg_56343050820653115 : std_logic;
    signal double_eg_7286148022124591099 : std_logic;
    signal double_mu_16961163952194496516 : std_logic;
    signal double_mu_3139255731352238604 : std_logic;
    signal single_eg_10104274574069012747 : std_logic;
    signal single_eg_10104274591248881931 : std_logic;
    signal single_eg_10104275106644957707 : std_logic;
    signal single_eg_14262501742796475187 : std_logic;
    signal single_eg_14262501776619342643 : std_logic;
    signal single_eg_9244877344375474942 : std_logic;
    signal single_jet_2022287695184199115 : std_logic;
    signal single_jet_2022287695188558795 : std_logic;
    signal single_jet_3448186928673200069 : std_logic;
    signal single_jet_3448200122812733381 : std_logic;
    signal single_jet_7529301412094021254 : std_logic;
    signal single_mu_14243093768255232179 : std_logic;
    signal single_mu_17545683162572296645 : std_logic;
    signal single_mu_17545685310055944645 : std_logic;
    signal single_mu_6225176159725710459 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu_cosmics_bmtf : std_logic;
    signal l1_single_mu0_emtf : std_logic;
    signal l1_single_mu18 : std_logic;
    signal l1_single_mu25 : std_logic;
    signal l1_double_mu0_sq_os : std_logic;
    signal l1_double_mu_15_7_sq : std_logic;
    signal l1_single_eg26er2p5 : std_logic;
    signal l1_single_eg42er2p5 : std_logic;
    signal l1_single_loose_iso_eg30er1p5 : std_logic;
    signal l1_single_iso_eg24er1p5 : std_logic;
    signal l1_single_iso_eg28er1p5 : std_logic;
    signal l1_single_iso_eg32er2p1 : std_logic;
    signal l1_double_eg_25_14_er2p5 : std_logic;
    signal l1_double_eg_loose_iso25_12_er2p5 : std_logic;
    signal l1_single_jet60er2p5 : std_logic;
    signal l1_single_jet120er2p5 : std_logic;
    signal l1_single_jet180er2p5 : std_logic;
    signal l1_single_jet120_fwd3p0 : std_logic;
    signal l1_htt255er : std_logic;
    signal l1_htt400er : std_logic;
    signal l1_ett2000 : std_logic;
    signal l1_etmhf140 : std_logic;
    signal l1_unpaired_bunch_bptx_minus : std_logic;
    signal l1_last_collision_in_train : std_logic;
    signal l1_first_collision_in_orbit : std_logic;
    signal l1_bptx_not_or_vme : std_logic;
    signal l1_bptx_and_ref3_vme : std_logic;

-- ========================================================