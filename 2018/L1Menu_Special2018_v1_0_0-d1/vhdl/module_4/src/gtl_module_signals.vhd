-- ========================================================
-- from VHDL producer:

-- Module ID: 4

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
    signal single_ext_14860848214295529387 : std_logic;
    signal single_ext_15141600570663550655 : std_logic;
    signal single_ext_6106690317781795103 : std_logic;
    signal single_ext_9960888781443116569 : std_logic;
    signal single_etm_2393532816048 : std_logic;
    signal single_ett_306374079518768 : std_logic;
    signal single_htt_2496626726960 : std_logic;
    signal single_htt_2496626744112 : std_logic;
    signal double_eg_56237497704386619 : std_logic;
    signal double_eg_7286147987764852731 : std_logic;
    signal double_jet_14043965433308858268 : std_logic;
    signal double_mu_14585778097856672575 : std_logic;
    signal double_mu_16961159554147985412 : std_logic;
    signal single_eg_10104274591248882187 : std_logic;
    signal single_eg_14243075932402617139 : std_logic;
    signal single_eg_14262501725482388275 : std_logic;
    signal single_eg_14262501776350907187 : std_logic;
    signal single_eg_9244741005469453054 : std_logic;
    signal single_eg_9244875145888041726 : std_logic;
    signal single_jet_20010310448 : std_logic;
    signal single_jet_2561319655728 : std_logic;
    signal single_jet_2561319656496 : std_logic;
    signal single_mu_14769293135904099909 : std_logic;
    signal single_mu_16260934496621930532 : std_logic;
    signal single_mu_6225176160372139651 : std_logic;
    signal single_mu_7990946204847842434 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu0_bmtf : std_logic;
    signal l1_single_mu7_dq : std_logic;
    signal l1_single_mu12_dq_omtf : std_logic;
    signal l1_single_mu22_emtf : std_logic;
    signal l1_double_mu0_oq : std_logic;
    signal l1_double_mu_15_5_sq : std_logic;
    signal l1_single_eg8er2p5 : std_logic;
    signal l1_single_eg15er2p5 : std_logic;
    signal l1_single_eg40er2p5 : std_logic;
    signal l1_single_loose_iso_eg28er1p5 : std_logic;
    signal l1_single_iso_eg26er2p5 : std_logic;
    signal l1_single_iso_eg30er2p5 : std_logic;
    signal l1_double_eg_25_12_er2p5 : std_logic;
    signal l1_double_eg_loose_iso22_12_er2p5 : std_logic;
    signal l1_single_jet60 : std_logic;
    signal l1_single_jet120 : std_logic;
    signal l1_single_jet180 : std_logic;
    signal l1_double_jet40er2p5 : std_logic;
    signal l1_htt200er : std_logic;
    signal l1_htt360er : std_logic;
    signal l1_ett1600 : std_logic;
    signal l1_etm150 : std_logic;
    signal l1_bptx_ref_and_vme : std_logic;
    signal l1_bptx_beam_gas_b2_vme : std_logic;
    signal l1_hcal_laser_mon_veto : std_logic;
    signal l1_totem_3 : std_logic;

-- ========================================================