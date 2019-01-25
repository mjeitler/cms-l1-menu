-- ========================================================
-- from VHDL producer:

-- Module ID: 4

-- Name of L1 Trigger Menu:
-- L1Menu_Special2018_v1_1_0

-- Unique ID of L1 Trigger Menu:
-- f5f8369a-7595-4101-ba04-ba7f70eab3a7

-- Unique ID of firmware implementation:
-- ac0bbb8c-f586-40cd-b48e-54dc34f99857

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

-- Signal definition of pt, eta and phi for correlation conditions.
-- Insert "signal_correlation_conditions_pt_eta_phi_cos_sin_phi.vhd.j2" as often as an ObjectType at a certain Bx is used in a correlation condition.
    signal mu_pt_vector_bx_0: diff_inputs_array(0 to NR_MU_OBJECTS-1) := (others => (others => '0'));
    signal mu_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal mu_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal mu_cos_phi_bx_0: muon_sin_cos_integer_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal mu_sin_phi_bx_0: muon_sin_cos_integer_array(0 to NR_MU_OBJECTS-1) := (others => 0);

-- Signal definition of differences for correlation conditions.
-- Insert "signal_correlation_conditions_differences.vhd.j2" once for correlation conditions of different ObjectTypes and Bx combinations.
    signal diff_mu_mu_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_mu_mu_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_mu_mu_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_mu_mu_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal mu_mu_bx_0_bx_0_cosh_deta_vector : muon_cosh_cos_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal mu_mu_bx_0_bx_0_cos_dphi_vector : muon_cosh_cos_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));

-- Signal definition for muon charge correlations.
-- Insert "signal_muon_charge_correlations.vhd.j2" only once for a certain Bx combination,
-- if there is at least one muon condition or one muon-muon correlation condition.
    signal ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0 : muon_charcorr_double_array;
    signal ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0 : muon_charcorr_triple_array;
    signal ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0 : muon_charcorr_quad_array;

-- Signal definition for conditions names
    signal single_ext_14860848214295529387 : std_logic;
    signal single_ext_15141600570663550655 : std_logic;
    signal single_ext_17960169865075597331 : std_logic;
    signal single_ext_9960888781443116569 : std_logic;
    signal single_etmhf_39215647867820720 : std_logic;
    signal single_htt_2496626710832 : std_logic;
    signal single_htt_2496626727984 : std_logic;
    signal single_htt_2496626760368 : std_logic;
    signal invariant_mass_7551966572230413519 : std_logic;
    signal double_eg_56237497704386619 : std_logic;
    signal double_eg_7286147987764852731 : std_logic;
    signal double_jet_14043965433308858268 : std_logic;
    signal double_mu_14585803008001102655 : std_logic;
    signal single_eg_10104274591248882187 : std_logic;
    signal single_eg_14243075932402617139 : std_logic;
    signal single_eg_14262501742125386547 : std_logic;
    signal single_eg_14262501776350907187 : std_logic;
    signal single_eg_9244741005469453054 : std_logic;
    signal single_eg_9244875145888041726 : std_logic;
    signal single_jet_20010310448 : std_logic;
    signal single_jet_2561319655728 : std_logic;
    signal single_jet_2561319656496 : std_logic;
    signal single_mu_14769293105595978181 : std_logic;
    signal single_mu_16260934496621930532 : std_logic;
    signal single_mu_17545685258516337093 : std_logic;
    signal single_mu_6011484727103937211 : std_logic;
    signal single_mu_7270359269352285314 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu_cosmics_omtf : std_logic;
    signal l1_single_mu0_bmtf : std_logic;
    signal l1_single_mu5 : std_logic;
    signal l1_single_mu12_dq_emtf : std_logic;
    signal l1_single_mu22 : std_logic;
    signal l1_double_mu0_mass_min1 : std_logic;
    signal l1_double_mu9_sq : std_logic;
    signal l1_single_eg8er2p5 : std_logic;
    signal l1_single_eg21er2p5 : std_logic;
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
    signal l1_htt120er : std_logic;
    signal l1_htt280er : std_logic;
    signal l1_htt450er : std_logic;
    signal l1_etmhf150 : std_logic;
    signal l1_unpaired_bunch_bptx_plus : std_logic;
    signal l1_bptx_ref_and_vme : std_logic;
    signal l1_bptx_beam_gas_b2_vme : std_logic;
    signal l1_hcal_laser_mon_veto : std_logic;

-- ========================================================