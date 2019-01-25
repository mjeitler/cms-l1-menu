-- ========================================================
-- from VHDL producer:

-- Module ID: 1

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
    signal single_etm_2393532816048 : std_logic;
    signal single_ett_306374079518768 : std_logic;
    signal single_htt_2496626726960 : std_logic;
    signal single_htt_2496626744112 : std_logic;
    signal double_eg_56167094600470587 : std_logic;
    signal double_eg_7286147931930277883 : std_logic;
    signal double_jet_7222953723145440851 : std_logic;
    signal double_mu_16961163952194496516 : std_logic;
    signal double_mu_3139255731352238604 : std_logic;
    signal single_eg_10104274582658947339 : std_logic;
    signal single_eg_14262501725482388275 : std_logic;
    signal single_eg_14262501759976344371 : std_logic;
    signal single_eg_145873584 : std_logic;
    signal single_eg_9244743204492708606 : std_logic;
    signal single_eg_9244879543934552830 : std_logic;
    signal single_jet_15945345197955153345 : std_logic;
    signal single_jet_15945345197959513025 : std_logic;
    signal single_jet_20010310069 : std_logic;
    signal single_jet_20010310832 : std_logic;
    signal single_jet_3448191326719711173 : std_logic;
    signal single_mu_14243093768255232179 : std_logic;
    signal single_mu_17545683162572296645 : std_logic;
    signal single_mu_17545685310055944645 : std_logic;
    signal single_mu_6945763095221267579 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu_cosmics_bmtf : std_logic;
    signal l1_single_mu0_omtf : std_logic;
    signal l1_single_mu18 : std_logic;
    signal l1_single_mu25 : std_logic;
    signal l1_double_mu0_sq_os : std_logic;
    signal l1_double_mu_15_7_sq : std_logic;
    signal l1_single_eg15er2p5 : std_logic;
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
    signal l1_htt200er : std_logic;
    signal l1_htt360er : std_logic;
    signal l1_ett1600 : std_logic;
    signal l1_etm150 : std_logic;
    signal l1_last_collision_in_train : std_logic;
    signal l1_first_collision_in_orbit : std_logic;
    signal l1_bptx_not_or_vme : std_logic;
    signal l1_bptx_and_ref3_vme : std_logic;

-- ========================================================