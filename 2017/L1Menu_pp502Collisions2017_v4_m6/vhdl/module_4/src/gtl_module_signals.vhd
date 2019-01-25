-- ========================================================
-- from VHDL producer:

-- Module ID: 4

-- Name of L1 Trigger Menu:
-- L1Menu_pp502Collisions2017_v4

-- Unique ID of L1 Trigger Menu:
-- eb47f458-5cf5-408d-a5bf-004dffe6cd1b

-- Unique ID of firmware implementation:
-- 20c66d59-117a-430e-becd-61bae7a6e5a1

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.2.1

-- Signal definition of pt, eta and phi for correlation conditions.
-- Insert "signal_correlation_conditions_pt_eta_phi_cos_sin_phi.vhd.j2" as often as an ObjectType at a certain Bx is used in a correlation condition.
    signal mu_pt_vector_bx_0: diff_inputs_array(0 to NR_MU_OBJECTS-1) := (others => (others => '0'));
    signal mu_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal mu_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal mu_cos_phi_bx_0: muon_sin_cos_integer_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal mu_sin_phi_bx_0: muon_sin_cos_integer_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal jet_pt_vector_bx_0: diff_inputs_array(0 to NR_JET_OBJECTS-1) := (others => (others => '0'));
    signal jet_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_cos_phi_bx_0: calo_sin_cos_integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_sin_phi_bx_0: calo_sin_cos_integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal conv_jet_cos_phi_bx_0: muon_sin_cos_integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal conv_jet_sin_phi_bx_0: muon_sin_cos_integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_eta_conv_2_muon_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal eg_pt_vector_bx_0: diff_inputs_array(0 to NR_EG_OBJECTS-1) := (others => (others => '0'));
    signal eg_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_cos_phi_bx_0: calo_sin_cos_integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_sin_phi_bx_0: calo_sin_cos_integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal conv_eg_cos_phi_bx_0: muon_sin_cos_integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal conv_eg_sin_phi_bx_0: muon_sin_cos_integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_eta_conv_2_muon_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);

-- Signal definition of differences for correlation conditions.
-- Insert "signal_correlation_conditions_differences.vhd.j2" once for correlation conditions of different ObjectTypes and Bx combinations.

-- Signal definition for muon charge correlations.
-- Insert "signal_muon_charge_correlations.vhd.j2" only once for a certain Bx combination,
-- if there is at least one muon condition or one muon-muon correlation condition.
    signal ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0 : muon_charcorr_double_array;
    signal ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0 : muon_charcorr_triple_array;
    signal ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0 : muon_charcorr_quad_array;

-- Signal definition for conditions names
    signal single_ext_10333571492674155900 : std_logic;
    signal single_ext_10333571493211026812 : std_logic;
    signal single_ext_10333571493479462268 : std_logic;
    signal single_ext_15141600570663550655 : std_logic;
    signal single_ext_16249626042834147010 : std_logic;
    signal single_ext_17417807877912935668 : std_logic;
    signal single_ext_4108951444235007726 : std_logic;
    signal single_ext_6102798787913291629 : std_logic;
    signal single_ext_6102798788181727085 : std_logic;
    signal single_ext_6106690317781795101 : std_logic;
    signal single_ext_6106690317781795103 : std_logic;
    signal single_ext_6953200472440552930 : std_logic;
    signal single_ext_866206785869629780 : std_logic;
    signal single_ext_866206786138065236 : std_logic;
    signal single_ext_8736797827952386068 : std_logic;
    signal single_ext_9945386644737729380 : std_logic;
    signal single_ext_9945386645006164836 : std_logic;
    signal single_ext_9960888781174681113 : std_logic;
    signal single_ext_9960888781443116569 : std_logic;
    signal single_etm_18699475376 : std_logic;
    signal double_eg_14367260113818400607 : std_logic;
    signal double_eg_14367282104050956127 : std_logic;
    signal double_eg_14367295298190490335 : std_logic;
    signal double_eg_14367831859864844127 : std_logic;
    signal double_eg_14367831859864844767 : std_logic;
    signal double_eg_14367840655957867231 : std_logic;
    signal double_eg_14367845054004377823 : std_logic;
    signal double_eg_2355036583129339571 : std_logic;
    signal double_jet_15894403592514695266 : std_logic;
    signal double_jet_15912422389070688354 : std_logic;
    signal double_jet_8658941588062407379 : std_logic;
    signal double_jet_8659008658271701715 : std_logic;
    signal double_jet_8659013125037689555 : std_logic;
    signal double_jet_8659228526237518547 : std_logic;
    signal double_jet_8659446229539818195 : std_logic;
    signal double_mu_14585777620730815295 : std_logic;
    signal double_mu_14585778097856672575 : std_logic;
    signal double_mu_16961163952194496516 : std_logic;
    signal double_mu_3137853811412761100 : std_logic;
    signal double_mu_3139255731352238604 : std_logic;
    signal single_eg_12507579852182360640 : std_logic;
    signal single_eg_12507579852186554944 : std_logic;
    signal single_eg_12507579852190749248 : std_logic;
    signal single_eg_12507579852318675520 : std_logic;
    signal single_eg_12507579852321821248 : std_logic;
    signal single_eg_12507579852323918400 : std_logic;
    signal single_eg_12507579852450796096 : std_logic;
    signal single_eg_145873080 : std_logic;
    signal single_eg_145873204 : std_logic;
    signal single_eg_145873208 : std_logic;
    signal single_eg_145873330 : std_logic;
    signal single_eg_145873334 : std_logic;
    signal single_eg_145873456 : std_logic;
    signal single_eg_145873461 : std_logic;
    signal single_eg_145873584 : std_logic;
    signal single_jet_15873314001121770945 : std_logic;
    signal single_jet_15873314001126130625 : std_logic;
    signal single_jet_15873314017966095809 : std_logic;
    signal single_jet_15873314017970455489 : std_logic;
    signal single_jet_15873314052325834177 : std_logic;
    signal single_jet_15873314052330193857 : std_logic;
    signal single_jet_1950256523785076171 : std_logic;
    signal single_jet_1950256523789435851 : std_logic;
    signal single_jet_20010309814 : std_logic;
    signal single_jet_20010309936 : std_logic;
    signal single_jet_20010309940 : std_logic;
    signal single_jet_20010310066 : std_logic;
    signal single_jet_20010310192 : std_logic;
    signal single_jet_20010310200 : std_logic;
    signal single_jet_20010310326 : std_logic;
    signal single_jet_20010310704 : std_logic;
    signal single_jet_2561319655984 : std_logic;
    signal single_jet_2561319656368 : std_logic;
    signal single_mu_1272496 : std_logic;
    signal single_mu_14769293071236239813 : std_logic;
    signal single_mu_14769293105595978181 : std_logic;
    signal single_mu_17545683021081726533 : std_logic;
    signal single_mu_17545683059493081541 : std_logic;
    signal single_mu_17545683162572296645 : std_logic;
    signal single_mu_17545685258516337093 : std_logic;
    signal single_mu_5290897791608380091 : std_logic;
    signal single_mu_7037562455545169312 : std_logic;
    signal single_mu_7109620049583097248 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu_cosmics : std_logic;
    signal l1_single_mu_cosmics_emtf : std_logic;
    signal l1_single_mu3 : std_logic;
    signal l1_single_mu5 : std_logic;
    signal l1_single_mu10_low_q : std_logic;
    signal l1_single_mu18 : std_logic;
    signal l1_single_mu22 : std_logic;
    signal l1_double_mu0 : std_logic;
    signal l1_mu10er2p1_etm30 : std_logic;
    signal l1_mu14er2p1_etm30 : std_logic;
    signal l1_single_mu12 : std_logic;
    signal l1_single_eg18 : std_logic;
    signal l1_single_eg24 : std_logic;
    signal l1_single_eg28 : std_logic;
    signal l1_single_eg32 : std_logic;
    signal l1_single_eg36 : std_logic;
    signal l1_single_eg40 : std_logic;
    signal l1_single_eg45 : std_logic;
    signal l1_single_eg50 : std_logic;
    signal l1_single_iso_eg20 : std_logic;
    signal l1_single_iso_eg24 : std_logic;
    signal l1_single_iso_eg28 : std_logic;
    signal l1_single_iso_eg32 : std_logic;
    signal l1_single_iso_eg35 : std_logic;
    signal l1_single_iso_eg37 : std_logic;
    signal l1_single_iso_eg40 : std_logic;
    signal l1_double_eg_10_10 : std_logic;
    signal l1_double_eg_15_10 : std_logic;
    signal l1_double_eg_18_17 : std_logic;
    signal l1_double_eg_22_10 : std_logic;
    signal l1_double_eg_22_15 : std_logic;
    signal l1_double_eg_24_17 : std_logic;
    signal l1_double_eg_25_13 : std_logic;
    signal l1_double_loose_iso_eg22er2p1 : std_logic;
    signal l1_single_jet24 : std_logic;
    signal l1_single_jet32 : std_logic;
    signal l1_single_jet48 : std_logic;
    signal l1_single_jet56 : std_logic;
    signal l1_single_jet40 : std_logic;
    signal l1_single_jet80 : std_logic;
    signal l1_single_jet50_fwd : std_logic;
    signal l1_single_jet16 : std_logic;
    signal l1_single_jet20 : std_logic;
    signal l1_single_jet140 : std_logic;
    signal l1_single_jet170 : std_logic;
    signal l1_single_jet35_fwd : std_logic;
    signal l1_single_jet90_fwd : std_logic;
    signal l1_single_jet120_fwd : std_logic;
    signal l1_double_jet50er2p7 : std_logic;
    signal l1_double_jet80er2p7 : std_logic;
    signal l1_double_jet100er2p7 : std_logic;
    signal l1_double_jet120er2p7 : std_logic;
    signal l1_double_jet16_and12er2p7 : std_logic;
    signal l1_double_jet20_and12er2p7 : std_logic;
    signal l1_double_jet28_and16er2p7 : std_logic;
    signal l1_double_mu_open : std_logic;
    signal l1_double_mu_open_ss : std_logic;
    signal l1_double_mu_15_7_sq : std_logic;
    signal l1_double_mu0_sq_os : std_logic;
    signal l1_bptx_xor : std_logic;
    signal l1_bptx_beam_gas_ref1_vme : std_logic;
    signal l1_bptx_beam_gas_ref2_vme : std_logic;
    signal l1_bptx_beam_gas_b1_vme : std_logic;
    signal l1_bptx_beam_gas_b2_vme : std_logic;
    signal l1_bptx_plus : std_logic;
    signal l1_bptx_minus : std_logic;
    signal l1_bptx_and_ref1_vme : std_logic;
    signal l1_unpaired_bunch_bptx_minus : std_logic;
    signal l1_bptx_not_or_vme : std_logic;
    signal l1_bptx_and_ref3_vme : std_logic;
    signal l1_bptx_or_ref3_vme : std_logic;
    signal l1_bptx_ref_and_vme : std_logic;
    signal l1_first_collision_in_orbit : std_logic;
    signal l1_bptx_and_ref4_vme : std_logic;
    signal l1_bptx_or_ref4_vme : std_logic;
    signal l1_last_collision_in_train : std_logic;
    signal l1_first_collision_in_train : std_logic;
    signal l1_totem1 : std_logic;
    signal l1_totem3 : std_logic;

-- ========================================================