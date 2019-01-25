-- ========================================================
-- from VHDL producer:

-- Module ID: 5

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
    signal single_ext_1189548080491112364 : std_logic;
    signal single_ext_17960169865075597331 : std_logic;
    signal single_ext_6102799243448260461 : std_logic;
    signal single_ext_6106690317781795102 : std_logic;
    signal single_ext_6106690317781795104 : std_logic;
    signal single_ext_6909925150529645277 : std_logic;
    signal single_ext_6909925150529645278 : std_logic;
    signal single_ext_6909925150529645533 : std_logic;
    signal single_ext_6909925150529645534 : std_logic;
    signal single_ext_9794008929098471889 : std_logic;
    signal single_ext_9794008929098471890 : std_logic;
    signal single_ext_9794008929098472145 : std_logic;
    signal single_ext_9794008929098472146 : std_logic;
    signal single_mbt0_hfm_43640316738250417 : std_logic;
    signal single_mbt0_hfp_43640316738250801 : std_logic;
    signal single_ett_18699590192 : std_logic;
    signal single_ett_18699590320 : std_logic;
    signal single_ett_18699590448 : std_logic;
    signal single_ett_18699590576 : std_logic;
    signal single_ett_18699590581 : std_logic;
    signal single_ett_18699590704 : std_logic;
    signal single_ett_18699590709 : std_logic;
    signal single_ett_18699590832 : std_logic;
    signal single_ett_18699590837 : std_logic;
    signal single_ett_2393547495472 : std_logic;
    signal single_ett_2393547495600 : std_logic;
    signal double_eg_14235532651073082298 : std_logic;
    signal double_eg_14235532822871774138 : std_logic;
    signal double_eg_14367823063771822943 : std_logic;
    signal double_eg_14367831859864844383 : std_logic;
    signal double_eg_14367836257911355231 : std_logic;
    signal double_eg_14367845054004377695 : std_logic;
    signal double_eg_14367845054004377951 : std_logic;
    signal double_eg_2931778810409473715 : std_logic;
    signal double_jet_15903553762640785506 : std_logic;
    signal double_jet_15939450583904677986 : std_logic;
    signal double_jet_4975926206739241185 : std_logic;
    signal double_jet_4975926730725251297 : std_logic;
    signal double_jet_6172847213698614300 : std_logic;
    signal double_jet_8659155958470085331 : std_logic;
    signal double_jet_8659301094004951763 : std_logic;
    signal double_mu_12394164411069199406 : std_logic;
    signal double_mu_14585778268989477695 : std_logic;
    signal double_mu_16961159554147985412 : std_logic;
    signal double_mu_3137853811412695564 : std_logic;
    signal single_eg_1139634 : std_logic;
    signal single_eg_1139637 : std_logic;
    signal single_eg_12507579852056531520 : std_logic;
    signal single_eg_12507579852184457792 : std_logic;
    signal single_eg_12507579852188652096 : std_logic;
    signal single_eg_12507579852316578368 : std_logic;
    signal single_eg_12507579852320772672 : std_logic;
    signal single_eg_12507579852322869824 : std_logic;
    signal single_eg_12507579852324966976 : std_logic;
    signal single_eg_145873072 : std_logic;
    signal single_eg_145873077 : std_logic;
    signal single_eg_145873201 : std_logic;
    signal single_eg_145873206 : std_logic;
    signal single_eg_145873328 : std_logic;
    signal single_eg_145873332 : std_logic;
    signal single_eg_145873336 : std_logic;
    signal single_eg_145873458 : std_logic;
    signal single_jet_156330552 : std_logic;
    signal single_jet_15873313992196292033 : std_logic;
    signal single_jet_15873313992200651713 : std_logic;
    signal single_jet_15873314009376161217 : std_logic;
    signal single_jet_15873314009380520897 : std_logic;
    signal single_jet_15873314026556030401 : std_logic;
    signal single_jet_15873314026560390081 : std_logic;
    signal single_jet_20010309810 : std_logic;
    signal single_jet_20010309944 : std_logic;
    signal single_jet_20010310069 : std_logic;
    signal single_jet_20010310196 : std_logic;
    signal single_jet_20010310320 : std_logic;
    signal single_jet_20010310448 : std_logic;
    signal single_jet_20010310832 : std_logic;
    signal single_jet_2561319655728 : std_logic;
    signal single_jet_2561319656112 : std_logic;
    signal single_jet_2561319656240 : std_logic;
    signal single_jet_2561319656496 : std_logic;
    signal single_jet_2561319671856 : std_logic;
    signal single_jet_5967545309672598855 : std_logic;
    signal single_jet_5967545344434990407 : std_logic;
    signal single_jet_5967545344837643591 : std_logic;
    signal single_mu_14243093768255232179 : std_logic;
    signal single_mu_14769293018627052229 : std_logic;
    signal single_mu_14769293019696632261 : std_logic;
    signal single_mu_14769293139955716549 : std_logic;
    signal single_mu_17545683038261595717 : std_logic;
    signal single_mu_17545683128212558277 : std_logic;
    signal single_mu_17545685224156598725 : std_logic;
    signal single_mu_17545685310055944645 : std_logic;
    signal single_mu_17545687423179854277 : std_logic;
    signal single_mu_6011484727103937211 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu_open : std_logic;
    signal l1_single_mu_cosmics_bmtf : std_logic;
    signal l1_single_mu_cosmics_omtf : std_logic;
    signal l1_single_mu7 : std_logic;
    signal l1_single_mu11_low_q : std_logic;
    signal l1_single_mu16 : std_logic;
    signal l1_single_mu20 : std_logic;
    signal l1_single_mu25 : std_logic;
    signal l1_single_mu30 : std_logic;
    signal l1_single_mu0 : std_logic;
    signal l1_single_eg5 : std_logic;
    signal l1_single_eg10 : std_logic;
    signal l1_single_eg15 : std_logic;
    signal l1_single_eg26 : std_logic;
    signal l1_single_eg30 : std_logic;
    signal l1_single_eg34 : std_logic;
    signal l1_single_eg38 : std_logic;
    signal l1_single_eg42 : std_logic;
    signal l1_single_eg2_bptx_and : std_logic;
    signal l1_single_eg21 : std_logic;
    signal l1_single_iso_eg18 : std_logic;
    signal l1_single_iso_eg22 : std_logic;
    signal l1_single_iso_eg26 : std_logic;
    signal l1_single_iso_eg30 : std_logic;
    signal l1_single_iso_eg34 : std_logic;
    signal l1_single_iso_eg36 : std_logic;
    signal l1_single_iso_eg38 : std_logic;
    signal l1_double_eg_10_5 : std_logic;
    signal l1_double_eg_15_5 : std_logic;
    signal l1_double_eg_20_18 : std_logic;
    signal l1_double_eg_22_12 : std_logic;
    signal l1_double_eg_23_10 : std_logic;
    signal l1_double_eg_25_12 : std_logic;
    signal l1_double_eg_25_14 : std_logic;
    signal l1_double_loose_iso_eg24er2p1 : std_logic;
    signal l1_single_jet44 : std_logic;
    signal l1_single_jet8_bptx_and : std_logic;
    signal l1_single_jet28 : std_logic;
    signal l1_single_jet50 : std_logic;
    signal l1_single_jet20_fwd : std_logic;
    signal l1_single_jet40_fwd : std_logic;
    signal l1_single_jet35 : std_logic;
    signal l1_single_jet60 : std_logic;
    signal l1_single_jet90 : std_logic;
    signal l1_single_jet120 : std_logic;
    signal l1_single_jet150 : std_logic;
    signal l1_single_jet160 : std_logic;
    signal l1_single_jet180 : std_logic;
    signal l1_single_jet200 : std_logic;
    signal l1_single_jet60_fwd : std_logic;
    signal l1_single_jet12_bptx_and : std_logic;
    signal l1_double_jet8er2p7 : std_logic;
    signal l1_double_jet40er2p7 : std_logic;
    signal l1_double_jet60er2p7 : std_logic;
    signal l1_double_jet112er2p7 : std_logic;
    signal l1_double_jet150er2p7 : std_logic;
    signal l1_double_jet16_and8er2p7 : std_logic;
    signal l1_double_jet20_and8er2p7 : std_logic;
    signal l1_single_mu_open_not_bptx_or : std_logic;
    signal l1_single_mu_open_not_bptx_or_3_bx : std_logic;
    signal l1_single_jet20er2p7_not_bptx_or : std_logic;
    signal l1_single_jet20er2p7_not_bptx_or_3_bx : std_logic;
    signal l1_single_jet43er2p7_not_bptx_or_3_bx : std_logic;
    signal l1_single_jet46er2p7_not_bptx_or_3_bx : std_logic;
    signal l1_double_mu_open_os : std_logic;
    signal l1_double_mu10 : std_logic;
    signal l1_double_mu_15_5_sq : std_logic;
    signal l1_double_mu0_sq : std_logic;
    signal l1_isolated_bunch : std_logic;
    signal l1_minimum_bias_hf0_and_bptx_and : std_logic;
    signal l1_minimum_bias_hf0_or_bptx_and : std_logic;
    signal l1_always_true : std_logic;
    signal l1_not_bptx_or : std_logic;
    signal l1_zero_bias_copy : std_logic;
    signal l1_zero_bias : std_logic;
    signal l1_bptx_or : std_logic;
    signal l1_unpaired_bunch_bptx_plus : std_logic;
    signal l1_first_bunch_in_train : std_logic;
    signal l1_first_bunch_after_train : std_logic;
    signal l1_ett40_bptx_and : std_logic;
    signal l1_ett50_bptx_and : std_logic;
    signal l1_ett60_bptx_and : std_logic;
    signal l1_ett70_bptx_and : std_logic;
    signal l1_ett75_bptx_and : std_logic;
    signal l1_ett80_bptx_and : std_logic;
    signal l1_ett85_bptx_and : std_logic;
    signal l1_ett90_bptx_and : std_logic;
    signal l1_ett95_bptx_and : std_logic;
    signal l1_ett100_bptx_and : std_logic;
    signal l1_ett110_bptx_and : std_logic;
    signal l1_totem2 : std_logic;
    signal l1_totem4 : std_logic;

-- ========================================================