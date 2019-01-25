-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v0_2_0

-- Unique ID of L1 Trigger Menu:
-- 2eb60aa6-04d5-4c65-83d7-c3d1765d0009

-- Unique ID of firmware implementation:
-- f13b8808-493b-4e3f-bce1-f3afb77b8cfc

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
    signal diff_jet_jet_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_jet_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_jet_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_jet_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_jet_bx_0_bx_0_cosh_deta_vector : calo_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_jet_bx_0_bx_0_cos_dphi_vector : calo_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_mu_mu_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_mu_mu_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_mu_mu_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_mu_mu_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal mu_mu_bx_0_bx_0_cosh_deta_vector : muon_cosh_cos_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal mu_mu_bx_0_bx_0_cos_dphi_vector : muon_cosh_cos_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_eg_jet_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => 0));
    signal diff_eg_jet_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_eg_jet_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => 0));
    signal diff_eg_jet_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_jet_bx_0_bx_0_cosh_deta_vector : calo_cosh_cos_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_jet_bx_0_bx_0_cos_dphi_vector : calo_cosh_cos_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));

-- Signal definition for muon charge correlations.
-- Insert "signal_muon_charge_correlations.vhd.j2" only once for a certain Bx combination,
-- if there is at least one muon condition or one muon-muon correlation condition.
    signal ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0 : muon_charcorr_double_array;
    signal ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0 : muon_charcorr_triple_array;
    signal ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0 : muon_charcorr_quad_array;

-- Signal definition for conditions names
    signal single_ext_10333571492674155900 : std_logic;
    signal single_ext_1189548080491112364 : std_logic;
    signal single_ext_6102799243448260461 : std_logic;
    signal single_ext_6909925150529645277 : std_logic;
    signal single_ext_6909925150529645278 : std_logic;
    signal single_ext_6909925150529645533 : std_logic;
    signal single_ext_6909925150529645534 : std_logic;
    signal single_ext_866206786138065236 : std_logic;
    signal single_ext_9794008929098471889 : std_logic;
    signal single_ext_9794008929098471890 : std_logic;
    signal single_ext_9794008929098472145 : std_logic;
    signal single_ext_9794008929098472146 : std_logic;
    signal single_mbt0_hfm_43640316738250417 : std_logic;
    signal single_mbt0_hfp_43640316738250801 : std_logic;
    signal calo_calo_correlation_9154320878437213226 : std_logic;
    signal invariant_mass_15191958030943548804 : std_logic;
    signal invariant_mass_15192153509407276420 : std_logic;
    signal invariant_mass_15192160106477018500 : std_logic;
    signal invariant_mass_2940638391876117895 : std_logic;
    signal invariant_mass_3324232561693118895 : std_logic;
    signal invariant_mass_3425483657594735263 : std_logic;
    signal invariant_mass_7551966572230413519 : std_logic;
    signal muon_muon_correlation_16784489743460462578 : std_logic;
    signal double_jet_15939450583904677986 : std_logic;
    signal double_jet_16307690244847013269 : std_logic;
    signal double_jet_4162612533456677351 : std_logic;
    signal double_mu_14585778268989477695 : std_logic;
    signal double_mu_14585789264105755455 : std_logic;
    signal double_mu_14585791364626162495 : std_logic;
    signal double_mu_14585792012884824895 : std_logic;
    signal double_mu_16961157256621881348 : std_logic;
    signal double_mu_2488845469206592112 : std_logic;
    signal double_mu_8906806708378227694 : std_logic;
    signal double_tau_5584966257611717374 : std_logic;
    signal single_eg_14243075932536834867 : std_logic;
    signal single_jet_1950256523785076171 : std_logic;
    signal single_jet_1950256523789435851 : std_logic;
    signal single_jet_7529292616000999046 : std_logic;
    signal single_jet_7529297065587117702 : std_logic;
    signal single_jet_7529297117126725254 : std_logic;
    signal single_mu_1272496 : std_logic;
    signal single_mu_14769293018627052229 : std_logic;
    signal single_mu_17416443806824820063 : std_logic;
    signal single_mu_17416443858364427615 : std_logic;
    signal single_mu_17545683162572296645 : std_logic;
    signal single_mu_6011484727103937211 : std_logic;
    signal single_mu_6945763095221267579 : std_logic;
    signal single_mu_6945763095867696771 : std_logic;
    signal triple_eg_12248554337275833787 : std_logic;
    signal triple_mu_15692838580664758508 : std_logic;
    signal triple_mu_3242368779441606101 : std_logic;
    signal triple_mu_3324692191841327135 : std_logic;
    signal triple_mu_6936497366859389375 : std_logic;
    signal triple_mu_9287399899537551596 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu_cosmics : std_logic;
    signal l1_single_mu_open : std_logic;
    signal l1_single_mu_cosmics_omtf : std_logic;
    signal l1_single_mu0_omtf : std_logic;
    signal l1_single_mu18 : std_logic;
    signal l1_single_mu22_omtf : std_logic;
    signal l1_double_mu_12_5 : std_logic;
    signal l1_double_mu22er2p1 : std_logic;
    signal l1_triple_eg_18_17_8_er2p5 : std_logic;
    signal l1_double_iso_tau34er2p1 : std_logic;
    signal l1_single_jet120_fwd : std_logic;
    signal l1_double_jet150er2p7 : std_logic;
    signal l1_single_mu_open_not_bptx_or : std_logic;
    signal l1_single_mu_open_er1p4_not_bptx_or_3_bx : std_logic;
    signal l1_single_mu_open_er1p1_not_bptx_or_3_bx : std_logic;
    signal l1_single_jet20er2p5_not_bptx_or : std_logic;
    signal l1_single_jet20er2p5_not_bptx_or_3_bx : std_logic;
    signal l1_single_jet43er2p5_not_bptx_or_3_bx : std_logic;
    signal l1_single_jet46er2p5_not_bptx_or_3_bx : std_logic;
    signal l1_double_jet30er2p5_mass_min360_d_eta_max1p5 : std_logic;
    signal l1_loose_iso_eg26er2p1_jet34er2p5_d_r_min0p3 : std_logic;
    signal l1_double_jet_90_30_double_jet30_mass_min620 : std_logic;
    signal l1_double_jet_100_30_double_jet30_mass_min620 : std_logic;
    signal l1_triple_mu3_sq : std_logic;
    signal l1_triple_mu0_mass_min1 : std_logic;
    signal l1_double_mu0_mass_min1 : std_logic;
    signal l1_double_mu5_sq_eg9er2p5 : std_logic;
    signal l1_double_mu4_sq_eg9er2p5 : std_logic;
    signal l1_double_mu4_sq_os_d_r_max1p2 : std_logic;
    signal l1_triple_mu_5_3p5_2p5_double_mu_5_2p5_os_mass_5to17 : std_logic;
    signal l1_triple_mu_5_4_2p5_double_mu_5_2p5_os_mass_5to17 : std_logic;
    signal l1_double_mu0_sq : std_logic;
    signal l1_triple_mu_5_3p5_2p5 : std_logic;
    signal l1_triple_mu_5_oq_3p5_oq_2p5_oq_double_mu_5_2p5_oq_os_mass_8to14 : std_logic;
    signal l1_triple_mu_5_oq_3p5_oq_2p5_oq_double_mu_5_2p5_oq_os_mass_5to17 : std_logic;
    signal l1_double_mu5_eg9er2p5 : std_logic;
    signal l1_isolated_bunch : std_logic;
    signal l1_first_bunch_in_train : std_logic;
    signal l1_first_bunch_after_train : std_logic;
    signal l1_minimum_bias_hf0_and_bptx_and : std_logic;
    signal l1_always_true : std_logic;
    signal l1_not_bptx_or : std_logic;
    signal l1_zero_bias_copy : std_logic;
    signal l1_bptx_beam_gas_ref2_vme : std_logic;
    signal l1_zero_bias : std_logic;
    signal l1_bptx_or : std_logic;
    signal l1_bptx_and_ref1_vme : std_logic;

-- ========================================================