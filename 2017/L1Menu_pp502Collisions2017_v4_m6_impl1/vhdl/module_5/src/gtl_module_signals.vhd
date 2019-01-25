-- ========================================================
-- from VHDL producer:

-- Module ID: 5

-- Name of L1 Trigger Menu:
-- L1Menu_pp502Collisions2017_v4

-- Unique ID of L1 Trigger Menu:
-- eb47f458-5cf5-408d-a5bf-004dffe6cd1b

-- Unique ID of firmware implementation:
-- 19c85715-3234-40e0-a608-952f97944368

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
    signal single_ext_17960169865075597331 : std_logic;
    signal single_ext_6102798787913291629 : std_logic;
    signal single_ext_6102798788181727085 : std_logic;
    signal single_ext_866206785869629780 : std_logic;
    signal double_eg_14367282104050956127 : std_logic;
    signal double_eg_14367831859864844767 : std_logic;
    signal double_jet_15894403592514695266 : std_logic;
    signal double_jet_8659008658271701715 : std_logic;
    signal double_jet_8659446229539818195 : std_logic;
    signal double_mu_14585778268989477695 : std_logic;
    signal double_mu_16961159554147985412 : std_logic;
    signal single_eg_12507579852184457792 : std_logic;
    signal single_eg_12507579852318675520 : std_logic;
    signal single_eg_12507579852324966976 : std_logic;
    signal single_eg_145873204 : std_logic;
    signal single_eg_145873332 : std_logic;
    signal single_eg_145873461 : std_logic;
    signal single_jet_15873314001121770945 : std_logic;
    signal single_jet_15873314001126130625 : std_logic;
    signal single_jet_20010309814 : std_logic;
    signal single_jet_20010310192 : std_logic;
    signal single_jet_20010310448 : std_logic;
    signal single_jet_2561319671856 : std_logic;
    signal single_mu_1272496 : std_logic;
    signal single_mu_17545683021081726533 : std_logic;
    signal single_mu_17545685258516337093 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu_cosmics : std_logic;
    signal l1_single_mu10_low_q : std_logic;
    signal l1_single_mu22 : std_logic;
    signal l1_single_eg24 : std_logic;
    signal l1_single_eg34 : std_logic;
    signal l1_single_eg45 : std_logic;
    signal l1_single_iso_eg22 : std_logic;
    signal l1_single_iso_eg32 : std_logic;
    signal l1_single_iso_eg38 : std_logic;
    signal l1_double_eg_15_10 : std_logic;
    signal l1_double_eg_22_15 : std_logic;
    signal l1_single_jet40 : std_logic;
    signal l1_single_jet16 : std_logic;
    signal l1_single_jet60 : std_logic;
    signal l1_single_jet200 : std_logic;
    signal l1_single_jet35_fwd : std_logic;
    signal l1_double_jet80er2p7 : std_logic;
    signal l1_double_jet100er2p7 : std_logic;
    signal l1_double_jet20_and12er2p7 : std_logic;
    signal l1_double_mu_15_5_sq : std_logic;
    signal l1_double_mu0_sq : std_logic;
    signal l1_bptx_xor : std_logic;
    signal l1_bptx_beam_gas_ref1_vme : std_logic;
    signal l1_bptx_plus : std_logic;
    signal l1_bptx_minus : std_logic;
    signal l1_unpaired_bunch_bptx_plus : std_logic;

-- ========================================================