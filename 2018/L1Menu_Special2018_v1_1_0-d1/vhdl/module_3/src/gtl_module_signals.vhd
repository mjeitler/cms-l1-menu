-- ========================================================
-- from VHDL producer:

-- Module ID: 3

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
    signal jet_pt_vector_bx_0: diff_inputs_array(0 to NR_JET_OBJECTS-1) := (others => (others => '0'));
    signal jet_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_cos_phi_bx_0: calo_sin_cos_integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_sin_phi_bx_0: calo_sin_cos_integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal conv_jet_cos_phi_bx_0: muon_sin_cos_integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal conv_jet_sin_phi_bx_0: muon_sin_cos_integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_eta_conv_2_muon_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);

-- Signal definition of differences for correlation conditions.
-- Insert "signal_correlation_conditions_differences.vhd.j2" once for correlation conditions of different ObjectTypes and Bx combinations.
    signal diff_jet_jet_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_jet_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_jet_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_jet_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_jet_bx_0_bx_0_cosh_deta_vector : calo_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_jet_bx_0_bx_0_cos_dphi_vector : calo_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));

-- Signal definition for muon charge correlations.
-- Insert "signal_muon_charge_correlations.vhd.j2" only once for a certain Bx combination,
-- if there is at least one muon condition or one muon-muon correlation condition.
    signal ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0 : muon_charcorr_double_array;
    signal ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0 : muon_charcorr_triple_array;
    signal ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0 : muon_charcorr_quad_array;

-- Signal definition for conditions names
    signal single_ext_14860848214295529384 : std_logic;
    signal single_ext_8736797827952386068 : std_logic;
    signal single_ext_9945386645006164836 : std_logic;
    signal single_ext_9960888781174681113 : std_logic;
    signal single_etmhf_39215647867820592 : std_logic;
    signal single_ett_306374081517616 : std_logic;
    signal single_htt_2496626727605 : std_logic;
    signal single_htt_2496626759728 : std_logic;
    signal calo_calo_correlation_4555011488863154385 : std_logic;
    signal double_eg_56237463344648251 : std_logic;
    signal double_eg_7286147940520212475 : std_logic;
    signal double_jet_7223798148075572843 : std_logic;
    signal double_mu_12394181525097886766 : std_logic;
    signal single_eg_14262501725885041459 : std_logic;
    signal single_eg_14262501760244779827 : std_logic;
    signal single_eg_145873712 : std_logic;
    signal single_eg_9244741004933630718 : std_logic;
    signal single_eg_9244875145352219390 : std_logic;
    signal single_jet_11401653256114550551 : std_logic;
    signal single_jet_15945345223724957121 : std_logic;
    signal single_jet_15945345223729316801 : std_logic;
    signal single_jet_3448195724766222277 : std_logic;
    signal single_jet_7529294900923600518 : std_logic;
    signal single_jet_7529308009163787910 : std_logic;
    signal single_mu_14769293071236239813 : std_logic;
    signal single_mu_17545685224156598725 : std_logic;
    signal single_mu_5290897791608380091 : std_logic;
    signal single_mu_7069342828816371872 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu_cosmics_emtf : std_logic;
    signal l1_single_mu3 : std_logic;
    signal l1_single_mu12_dq_bmtf : std_logic;
    signal l1_single_mu20 : std_logic;
    signal l1_double_mu10_sq : std_logic;
    signal l1_single_eg18er2p5 : std_logic;
    signal l1_single_eg38er2p5 : std_logic;
    signal l1_single_eg60 : std_logic;
    signal l1_single_iso_eg26er2p1 : std_logic;
    signal l1_single_iso_eg30er2p1 : std_logic;
    signal l1_double_eg_22_10_er2p5 : std_logic;
    signal l1_double_eg_loose_iso22_10_er2p5 : std_logic;
    signal l1_single_jet35er2p5 : std_logic;
    signal l1_single_jet90er2p5 : std_logic;
    signal l1_single_jet160er2p5 : std_logic;
    signal l1_single_jet90_fwd3p0 : std_logic;
    signal l1_single_jet10er_he : std_logic;
    signal l1_double_jet150er2p5 : std_logic;
    signal l1_double_jet32_d_eta_2p5_10p0 : std_logic;
    signal l1_htt255er : std_logic;
    signal l1_htt400er : std_logic;
    signal l1_ett2000 : std_logic;
    signal l1_etmhf140 : std_logic;
    signal l1_unpaired_bunch_bptx_minus : std_logic;
    signal l1_bptx_or_ref4_vme : std_logic;
    signal l1_bptx_beam_gas_b1_vme : std_logic;
    signal l1_hcal_laser_mon_trig : std_logic;

-- ========================================================