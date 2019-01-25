-- ========================================================
-- from VHDL producer:

-- Module ID: 5

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
    signal single_ext_6102798787913291629 : std_logic;
    signal single_ext_6102798788181727085 : std_logic;
    signal single_ext_6106690317781795104 : std_logic;
    signal single_ext_866206785869629780 : std_logic;
    signal single_etmhf_306372248968368 : std_logic;
    signal single_etmhf_39215647867820080 : std_logic;
    signal single_etmhf_39215647867820208 : std_logic;
    signal single_etmhf_39215647867820336 : std_logic;
    signal single_etmhf_39215647867820464 : std_logic;
    signal single_htt_19504896816 : std_logic;
    signal invariant_mass_12340992865530516744 : std_logic;
    signal double_eg_56167094600470587 : std_logic;
    signal double_eg_7286147931930277883 : std_logic;
    signal double_jet_7222953723145440851 : std_logic;
    signal double_mu_14585803008001102655 : std_logic;
    signal single_eg_10104274582658947339 : std_logic;
    signal single_eg_14262501759976344371 : std_logic;
    signal single_eg_145873584 : std_logic;
    signal single_eg_9244743204492708606 : std_logic;
    signal single_eg_9244879543934552830 : std_logic;
    signal single_jet_15945345197955153345 : std_logic;
    signal single_jet_15945345197959513025 : std_logic;
    signal single_jet_20010310069 : std_logic;
    signal single_jet_20010310832 : std_logic;
    signal single_jet_3448191326719711173 : std_logic;
    signal single_mu_14769293105595978181 : std_logic;
    signal single_mu_17545685258516337093 : std_logic;
    signal single_mu_6011484727103937211 : std_logic;
    signal single_mu_7069342828816371872 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu_cosmics_omtf : std_logic;
    signal l1_single_mu5 : std_logic;
    signal l1_single_mu12_dq_bmtf : std_logic;
    signal l1_single_mu22 : std_logic;
    signal l1_double_mu9_sq : std_logic;
    signal l1_double_mu_15_7_mass_min1 : std_logic;
    signal l1_single_eg36er2p5 : std_logic;
    signal l1_single_eg50 : std_logic;
    signal l1_single_iso_eg26er1p5 : std_logic;
    signal l1_single_iso_eg28er2p5 : std_logic;
    signal l1_single_iso_eg34er2p5 : std_logic;
    signal l1_double_eg_20_10_er2p5 : std_logic;
    signal l1_double_eg_loose_iso20_10_er2p5 : std_logic;
    signal l1_single_jet35 : std_logic;
    signal l1_single_jet90 : std_logic;
    signal l1_single_jet140er2p5 : std_logic;
    signal l1_single_jet60_fwd3p0 : std_logic;
    signal l1_double_jet120er2p5 : std_logic;
    signal l1_etmhf100 : std_logic;
    signal l1_etmhf110 : std_logic;
    signal l1_etmhf120 : std_logic;
    signal l1_etmhf130 : std_logic;
    signal l1_etmhf90_htt60er : std_logic;
    signal l1_etmhf100_htt60er : std_logic;
    signal l1_etmhf110_htt60er : std_logic;
    signal l1_etmhf120_htt60er : std_logic;
    signal l1_etmhf130_htt60er : std_logic;
    signal l1_bptx_xor : std_logic;
    signal l1_bptx_plus : std_logic;
    signal l1_bptx_minus : std_logic;
    signal l1_bptx_beam_gas_ref1_vme : std_logic;
    signal l1_totem_4 : std_logic;

-- ========================================================