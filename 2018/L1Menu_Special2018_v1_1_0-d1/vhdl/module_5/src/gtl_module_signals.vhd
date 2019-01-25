-- ========================================================
-- from VHDL producer:

-- Module ID: 5

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
    signal single_ext_6102798787913291629 : std_logic;
    signal single_ext_6102798788181727085 : std_logic;
    signal single_ext_866206785869629780 : std_logic;
    signal single_etm_2393532815664 : std_logic;
    signal single_ett_306374079453232 : std_logic;
    signal single_htt_2496626711344 : std_logic;
    signal single_htt_2496626743600 : std_logic;
    signal double_eg_7286147403649300475 : std_logic;
    signal double_eg_7286148030714525691 : std_logic;
    signal double_jet_7222390773192019523 : std_logic;
    signal double_mu_14585778268989477695 : std_logic;
    signal double_mu_16961163303935834116 : std_logic;
    signal single_eg_14262501724811299635 : std_logic;
    signal single_eg_14262501759707908915 : std_logic;
    signal single_eg_14262501777021995827 : std_logic;
    signal single_eg_9244738805910375166 : std_logic;
    signal single_eg_9244743203956886270 : std_logic;
    signal single_eg_9244877344911297278 : std_logic;
    signal single_jet_11235106006895834903 : std_logic;
    signal single_jet_11401653256131327767 : std_logic;
    signal single_jet_15945345172520893889 : std_logic;
    signal single_jet_15945345172525253569 : std_logic;
    signal single_jet_2561319671856 : std_logic;
    signal single_mu_1272496 : std_logic;
    signal single_mu_17545683128212558277 : std_logic;
    signal single_mu_6225176159725710459 : std_logic;
    signal single_mu_6945763095867696771 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu_cosmics : std_logic;
    signal l1_single_mu0_emtf : std_logic;
    signal l1_single_mu16 : std_logic;
    signal l1_single_mu22_omtf : std_logic;
    signal l1_double_mu0_sq : std_logic;
    signal l1_double_mu_15_7 : std_logic;
    signal l1_single_eg10er2p5 : std_logic;
    signal l1_single_eg34er2p5 : std_logic;
    signal l1_single_eg45er2p5 : std_logic;
    signal l1_single_iso_eg24er2p1 : std_logic;
    signal l1_single_iso_eg28er2p1 : std_logic;
    signal l1_single_iso_eg32er2p5 : std_logic;
    signal l1_double_eg_15_10_er2p5 : std_logic;
    signal l1_double_eg_27_14_er2p5 : std_logic;
    signal l1_single_jet200 : std_logic;
    signal l1_single_jet35_fwd3p0 : std_logic;
    signal l1_single_jet8er_he : std_logic;
    signal l1_single_jet12er_he : std_logic;
    signal l1_double_jet100er2p5 : std_logic;
    signal l1_htt160er : std_logic;
    signal l1_htt320er : std_logic;
    signal l1_ett1200 : std_logic;
    signal l1_etm120 : std_logic;
    signal l1_bptx_xor : std_logic;
    signal l1_bptx_plus : std_logic;
    signal l1_bptx_minus : std_logic;
    signal l1_bptx_beam_gas_ref1_vme : std_logic;

-- ========================================================