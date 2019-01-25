-- Description:
-- Global Trigger Logic module.

-- ========================================================
-- from VHDL producer:

-- Module ID: 1

-- Name of L1 Trigger Menu:
-- L1Menu_HeavyIons2016_v3

-- Unique ID of L1 Trigger Menu:
-- 0a8aa40d-582c-4418-86a2-c35603804afc

-- Unique ID of firmware implementation:
-- d657cb37-e079-4148-92d8-ec377e08677a

-- Scale set:
-- 2016-04-27

-- VHDL producer version
-- v1.0.0

-- ========================================================

-- Version-history:
-- HB 2016-09-16: v1.1.0: Implemented new esums with ETTEM, "TOWERCNT" (ECAL sum), ETMHF and HTMHF.
-- HB 2016-08-31: v1.0.0: Same version as v0.0.10
-- HB 2016-04-22: v0.0.10: Implemented min_bias_hf_conditions.vhd for minimum bias trigger conditions for low-pileup-run in May 2016.
--                         Updated gtl_fdl_wrapper.vhd and p_m_2_bx_pipeline.vhd for minimum bias trigger objects.
-- HB 2016-04-07: v0.0.9: Cleaned-up typing in muon_muon_correlation_condition.vhd (D_S_I_MUON_V2 instead of D_S_I_MUON in some lines).

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

use work.gtl_pkg.all;

entity gtl_module is
    port(
        lhc_clk : in std_logic;
        eg_data : in calo_objects_array(0 to NR_EG_OBJECTS-1);
        jet_data : in calo_objects_array(0 to NR_JET_OBJECTS-1);
        tau_data : in calo_objects_array(0 to NR_TAU_OBJECTS-1);
        ett_data : in std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
        ht_data : in std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
        etm_data : in std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
        htm_data : in std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
-- ****************************************************************************************
-- HB 2016-04-18: updates for "min bias trigger" objects (quantities) for Low-pileup-run May 2016
        mbt1hfp_data : in std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
        mbt1hfm_data : in std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
        mbt0hfp_data : in std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
        mbt0hfm_data : in std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
-- HB 2016-06-07: inserted new esums quantities (ETTEM and ETMHF).
        ettem_data : in std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
        etmhf_data : in std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
-- HB 2016-09-16: inserted HTMHF and TOWERCNT
        htmhf_data : in std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
        towercount_data : in std_logic_vector(MAX_TOWERCOUNT_BITS-1 downto 0);
-- ****************************************************************************************
        muon_data : in muon_objects_array(0 to NR_MUON_OBJECTS-1);
        external_conditions : in std_logic_vector(NR_EXTERNAL_CONDITIONS-1 downto 0);
        algo_o : out std_logic_vector(NR_ALGOS-1 downto 0));
end gtl_module;

architecture rtl of gtl_module is
    constant external_conditions_pipeline_stages: natural := 2; -- pipeline stages for "External conditions" to get same pipeline to algos as conditions

-- HB 2016-03-08: "workaraound" for VHDL-Producer output
    constant NR_MU_OBJECTS: positive := NR_MUON_OBJECTS;

--     signal muon_bx_p2, muon_bx_p1, muon_bx_0, muon_bx_m1, muon_bx_m2 : muon_objects_array(0 to NR_MUON_OBJECTS-1);
    signal mu_bx_p2, mu_bx_p1, mu_bx_0, mu_bx_m1, mu_bx_m2 : muon_objects_array(0 to NR_MUON_OBJECTS-1);
    signal eg_bx_p2, eg_bx_p1, eg_bx_0, eg_bx_m1, eg_bx_m2 : calo_objects_array(0 to NR_EG_OBJECTS-1);
    signal jet_bx_p2, jet_bx_p1, jet_bx_0, jet_bx_m1, jet_bx_m2 : calo_objects_array(0 to NR_JET_OBJECTS-1);
    signal tau_bx_p2, tau_bx_p1, tau_bx_0, tau_bx_m1, tau_bx_m2 : calo_objects_array(0 to NR_TAU_OBJECTS-1);
    signal ett_bx_p2, ett_bx_p1, ett_bx_0, ett_bx_m1, ett_bx_m2 : std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
-- HB 2015-04-28: changed for "htt" - object type from TME [string(1 to 3)] in esums_conditions.vhd
    signal htt_bx_p2, htt_bx_p1, htt_bx_0, htt_bx_m1, htt_bx_m2 : std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
    signal etm_bx_p2, etm_bx_p1, etm_bx_0, etm_bx_m1, etm_bx_m2 : std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
    signal htm_bx_p2, htm_bx_p1, htm_bx_0, htm_bx_m1, htm_bx_m2 : std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
-- ****************************************************************************************
-- HB 2016-04-18: updates for "min bias trigger" objects (quantities) for Low-pileup-run May 2016
    signal mbt1hfp_bx_p2, mbt1hfp_bx_p1, mbt1hfp_bx_0, mbt1hfp_bx_m1, mbt1hfp_bx_m2 : std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
    signal mbt1hfm_bx_p2, mbt1hfm_bx_p1, mbt1hfm_bx_0, mbt1hfm_bx_m1, mbt1hfm_bx_m2 : std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
    signal mbt0hfp_bx_p2, mbt0hfp_bx_p1, mbt0hfp_bx_0, mbt0hfp_bx_m1, mbt0hfp_bx_m2 : std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
    signal mbt0hfm_bx_p2, mbt0hfm_bx_p1, mbt0hfm_bx_0, mbt0hfm_bx_m1, mbt0hfm_bx_m2 : std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
-- HB 2016-06-07: inserted new esums quantities (ETTEM and ETMHF).
    signal ettem_bx_p2, ettem_bx_p1, ettem_bx_0, ettem_bx_m1, ettem_bx_m2 : std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
    signal etmhf_bx_p2, etmhf_bx_p1, etmhf_bx_0, etmhf_bx_m1, etmhf_bx_m2 : std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
-- HB 2016-09-16: inserted HTMHF and TOWERCNT
    signal htmhf_bx_p2, htmhf_bx_p1, htmhf_bx_0, htmhf_bx_m1, htmhf_bx_m2 : std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
    signal towercount_bx_p2, towercount_bx_p1, towercount_bx_0, towercount_bx_m1, towercount_bx_m2 : std_logic_vector(MAX_TOWERCOUNT_BITS-1 downto 0);
-- ****************************************************************************************
-- HB 2016-01-08: renamed ext_cond after +/-2bx to ext_cond_bx_p2_int, etc., because ext_cond_bx_p2, etc. used in algos (names coming from TME grammar).
    signal ext_cond_bx_p2_int, ext_cond_bx_p1_int, ext_cond_bx_0_int, ext_cond_bx_m1_int, ext_cond_bx_m2_int : std_logic_vector(NR_EXTERNAL_CONDITIONS-1 downto 0);
    signal ext_cond_bx_p2, ext_cond_bx_p1, ext_cond_bx_0, ext_cond_bx_m1, ext_cond_bx_m2 : std_logic_vector(NR_EXTERNAL_CONDITIONS-1 downto 0);

    signal algo : std_logic_vector(NR_ALGOS-1 downto 0) := (others => '0');

-- ==== Inserted by TME - begin =============================================================================================================

-- Signal definition of pt, eta and phi for correlation conditions.
-- Insert "signal_correlation_conditions_pt_eta_phi.vhd.j2" as often as an ObjectType at a certain Bx is used in a correlation condition.
    signal mu_pt_vector_bx_0: diff_inputs_array(0 to NR_MU_OBJECTS-1) := (others => (others => '0'));
    signal mu_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal mu_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_MU_OBJECTS-1) := (others => 0);


-- Signal definition of differences for correlation conditions.
-- Insert "signal_correlation_conditions_differences.vhd.j2" once for correlation conditions of different ObjectTypes and Bx combinations.
    signal diff_mu_mu_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_mu_mu_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal mu_mu_bx_0_bx_0_cosh_deta_vector : muon_cosh_cos_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal mu_mu_bx_0_bx_0_cos_dphi_vector : muon_cosh_cos_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_mu_mu_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_mu_mu_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));


-- Signal definition for muon charge correlations.
-- Insert "signal_muon_charge_correlations.vhd.j2" only once for a certain Bx combination,
-- if there is at least one muon condition or one muon-muon correlation condition.
    signal ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0 : muon_charcorr_double_array;
    signal ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0 : muon_charcorr_triple_array;
    signal ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0 : muon_charcorr_quad_array;

-- Signal definition for conditions names
    signal single_ext_10668942785814789677 : std_logic;
    signal single_ext_10668942820174528044 : std_logic;
    signal single_ext_13978480583031406537 : std_logic;
    signal single_ext_14414193171404190569 : std_logic;
    signal single_ext_14715923867298343304 : std_logic;
    signal single_ext_14715923867298367880 : std_logic;
    signal single_ext_17118203077108929635 : std_logic;
    signal single_ext_17833638493488257651 : std_logic;
    signal single_ext_17833638494023122291 : std_logic;
    signal single_ext_17833638494293564019 : std_logic;
    signal single_ext_17833638494294369813 : std_logic;
    signal single_ext_2629888000553438421 : std_logic;
    signal single_ext_6395038971485762907 : std_logic;
    signal single_ext_6395038971485762908 : std_logic;
    signal single_ext_6395038971485764604 : std_logic;
    signal single_ext_6395198100430131034 : std_logic;
    signal single_ext_6873400283626490434 : std_logic;
    signal single_ext_6908249106957368432 : std_logic;
    signal single_ext_6908249107225803888 : std_logic;
    signal single_ext_6912739140295604792 : std_logic;
    signal single_ext_6926915327998939228 : std_logic;
    signal single_ext_7098142365486617009 : std_logic;
    signal single_ext_7098142399846355376 : std_logic;
    signal single_ext_7332905005558692114 : std_logic;
    signal single_ext_7332905005558692115 : std_logic;
    signal single_ext_8353702592807249329 : std_logic;
    signal single_htm_19504782000 : std_logic;
    signal single_htt_2496626711344 : std_logic;
    signal muon_muon_correlation_8772456668275224612 : std_logic;
    signal double_eg_14367282104050956127 : std_logic;
    signal single_mu_1272496 : std_logic;

-- Signal definition for algorithms names
    signal l1_bptx_plus_not_bptx_minus : std_logic;
    signal l1_bptx_minus_not_bptx_plus : std_logic;
    signal l1_bptx_plus : std_logic;
    signal l1_bptx_minus : std_logic;
    signal l1_double_mu_10_0_d_eta_max1p8 : std_logic;
    signal l1_double_eg_15_10 : std_logic;
    signal l1_htt160 : std_logic;
    signal l1_htm50 : std_logic;
    signal l1_single_mu_cosmics : std_logic;
    signal l1_bptx_xor : std_logic;
    signal l1_beam_gas_plus : std_logic;
    signal l1_beam_gas_minus : std_logic;
    signal l1_beam_gas_b1 : std_logic;
    signal l1_beam_gas_b2 : std_logic;
    signal l1_bptx_lut1_and : std_logic;
    signal l1_bptx_lut1_b1 : std_logic;
    signal l1_bptx_lut1_b2 : std_logic;
    signal l1_bptx_lut1_or : std_logic;
    signal l1_bptx_lut2_and : std_logic;
    signal l1_bptx_lut2_b1_not_b2 : std_logic;
    signal l1_bptx_lut2_b2_not_b1 : std_logic;
    signal l1_bptx_lut2_not_or : std_logic;
    signal l1_bptx_trig2_and : std_logic;
    signal l1_bptx_trig2_b1_not_b2 : std_logic;
    signal l1_bptx_trig2_b2_not_b1 : std_logic;
    signal l1_bptx_trig2_not_or : std_logic;
    signal l1_bril_trig3_and : std_logic;
    signal l1_bril_trig3_delayed_and : std_logic;
    signal l1_bril_trig3_ref : std_logic;
    signal l1_bril_trig0_and : std_logic;
    signal l1_bril_trig0_delayed_and : std_logic;
    signal l1_bril_trig0_or : std_logic;
    signal l1_bril_trig0_fst_bunch_in_train : std_logic;
    signal l1_zero_bias_first_colliding_bunch : std_logic;

-- ==== Inserted by TME - end ===============================================================================================================

begin

p_m_2_bx_pipeline_i: entity work.p_m_2_bx_pipeline
    port map(
        lhc_clk,
--         muon_data, muon_bx_p2, muon_bx_p1, muon_bx_0, muon_bx_m1, muon_bx_m2,
        muon_data, mu_bx_p2, mu_bx_p1, mu_bx_0, mu_bx_m1, mu_bx_m2,
        eg_data, eg_bx_p2, eg_bx_p1, eg_bx_0, eg_bx_m1, eg_bx_m2,
        jet_data, jet_bx_p2, jet_bx_p1, jet_bx_0, jet_bx_m1, jet_bx_m2,
        tau_data, tau_bx_p2, tau_bx_p1, tau_bx_0, tau_bx_m1, tau_bx_m2,
        ett_data, ett_bx_p2, ett_bx_p1, ett_bx_0, ett_bx_m1, ett_bx_m2,
        ht_data, htt_bx_p2, htt_bx_p1, htt_bx_0, htt_bx_m1, htt_bx_m2,
        etm_data, etm_bx_p2, etm_bx_p1, etm_bx_0, etm_bx_m1, etm_bx_m2,
        htm_data, htm_bx_p2, htm_bx_p1, htm_bx_0, htm_bx_m1, htm_bx_m2,
-- ****************************************************************************************
-- HB 2016-04-18: updates for "min bias trigger" objects (quantities) for Low-pileup-run May 2016
	mbt1hfp_data, mbt1hfp_bx_p2, mbt1hfp_bx_p1, mbt1hfp_bx_0, mbt1hfp_bx_m1, mbt1hfp_bx_m2,
	mbt1hfm_data, mbt1hfm_bx_p2, mbt1hfm_bx_p1, mbt1hfm_bx_0, mbt1hfm_bx_m1, mbt1hfm_bx_m2,
	mbt0hfp_data, mbt0hfp_bx_p2, mbt0hfp_bx_p1, mbt0hfp_bx_0, mbt0hfp_bx_m1, mbt0hfp_bx_m2,
	mbt0hfm_data, mbt0hfm_bx_p2, mbt0hfm_bx_p1, mbt0hfm_bx_0, mbt0hfm_bx_m1, mbt0hfm_bx_m2,
-- HB 2016-06-07: inserted new esums quantities (ETTEM and ETMHF).
        ettem_data, ettem_bx_p2, ettem_bx_p1, ettem_bx_0, ettem_bx_m1, ettem_bx_m2,
        etmhf_data, etmhf_bx_p2, etmhf_bx_p1, etmhf_bx_0, etmhf_bx_m1, etmhf_bx_m2,
-- HB 2016-09-16: inserted HTMHF and TOWERCNT
        htmhf_data, htmhf_bx_p2, htmhf_bx_p1, htmhf_bx_0, htmhf_bx_m1, htmhf_bx_m2,
        towercount_data, towercount_bx_p2, towercount_bx_p1, towercount_bx_0, towercount_bx_m1, towercount_bx_m2,
-- ****************************************************************************************
-- HB 2016-01-08: renamed ext_cond after +/-2bx to ext_cond_bx_p2_int, etc., because ext_cond_bx_p2, etc. used in algos (names coming from TME grammar).
        external_conditions, ext_cond_bx_p2_int, ext_cond_bx_p1_int, ext_cond_bx_0_int, ext_cond_bx_m1_int, ext_cond_bx_m2_int
    );

-- Parameterized pipeline stages for External conditions, actually 2 stages (fixed) in conditions, see "constant external_conditions_pipeline_stages ..."
-- HB 2016-01-08: renamed ext_cond after +/-2bx to ext_cond_bx_p2_int, etc., because ext_cond_bx_p2, etc. used in algos (names coming from TME grammar).
ext_cond_pipe_p: process(lhc_clk, ext_cond_bx_p2_int, ext_cond_bx_p1_int, ext_cond_bx_0_int, ext_cond_bx_m1_int, ext_cond_bx_m2_int)
    type ext_cond_pipe_array is array (0 to external_conditions_pipeline_stages+1) of std_logic_vector(NR_EXTERNAL_CONDITIONS-1 downto 0);
    variable ext_cond_bx_p2_pipe_temp : ext_cond_pipe_array := (others => (others => '0'));
    variable ext_cond_bx_p1_pipe_temp : ext_cond_pipe_array := (others => (others => '0'));
    variable ext_cond_bx_0_pipe_temp : ext_cond_pipe_array := (others => (others => '0'));
    variable ext_cond_bx_m1_pipe_temp : ext_cond_pipe_array := (others => (others => '0'));
    variable ext_cond_bx_m2_pipe_temp : ext_cond_pipe_array := (others => (others => '0'));
    begin
        ext_cond_bx_p2_pipe_temp(external_conditions_pipeline_stages+1) := ext_cond_bx_p2_int;
        ext_cond_bx_p1_pipe_temp(external_conditions_pipeline_stages+1) := ext_cond_bx_p1_int;
        ext_cond_bx_0_pipe_temp(external_conditions_pipeline_stages+1) := ext_cond_bx_0_int;
        ext_cond_bx_m1_pipe_temp(external_conditions_pipeline_stages+1) := ext_cond_bx_m1_int;
        ext_cond_bx_m2_pipe_temp(external_conditions_pipeline_stages+1) := ext_cond_bx_m2_int;
        if (external_conditions_pipeline_stages > 0) then 
            if (lhc_clk'event and (lhc_clk = '1') ) then
                ext_cond_bx_p2_pipe_temp(0 to external_conditions_pipeline_stages) := ext_cond_bx_p2_pipe_temp(1 to external_conditions_pipeline_stages+1);
                ext_cond_bx_p1_pipe_temp(0 to external_conditions_pipeline_stages) := ext_cond_bx_p1_pipe_temp(1 to external_conditions_pipeline_stages+1);
                ext_cond_bx_0_pipe_temp(0 to external_conditions_pipeline_stages) := ext_cond_bx_0_pipe_temp(1 to external_conditions_pipeline_stages+1);
                ext_cond_bx_m1_pipe_temp(0 to external_conditions_pipeline_stages) := ext_cond_bx_m1_pipe_temp(1 to external_conditions_pipeline_stages+1);
                ext_cond_bx_m2_pipe_temp(0 to external_conditions_pipeline_stages) := ext_cond_bx_m2_pipe_temp(1 to external_conditions_pipeline_stages+1);
            end if;
        end if;
        ext_cond_bx_p2 <= ext_cond_bx_p2_pipe_temp(1); -- used pipe_temp(1) instead of pipe_temp(0), to prevent warnings in compilation
        ext_cond_bx_p1 <= ext_cond_bx_p1_pipe_temp(1);
        ext_cond_bx_0 <= ext_cond_bx_0_pipe_temp(1);
        ext_cond_bx_m1 <= ext_cond_bx_m1_pipe_temp(1);
        ext_cond_bx_m2 <= ext_cond_bx_m2_pipe_temp(1);
end process;

-- ==== Inserted by TME - begin =============================================================================================================

-- External condition assignment
    single_ext_10668942785814789677 <= ext_cond_bx_0(13); -- single_ext_10668942785814789677
    single_ext_10668942820174528044 <= ext_cond_bx_0(14); -- single_ext_10668942820174528044
    single_ext_13978480583031406537 <= ext_cond_bx_0(11); -- single_ext_13978480583031406537
    single_ext_14414193171404190569 <= ext_cond_bx_0(3); -- single_ext_14414193171404190569
    single_ext_14715923867298343304 <= ext_cond_bx_0(21); -- single_ext_14715923867298343304
    single_ext_14715923867298367880 <= ext_cond_bx_0(17); -- single_ext_14715923867298367880
    single_ext_17118203077108929635 <= ext_cond_bx_0(2); -- single_ext_17118203077108929635
    single_ext_17833638493488257651 <= ext_cond_bx_0(20); -- single_ext_17833638493488257651
    single_ext_17833638494023122291 <= ext_cond_bx_0(12); -- single_ext_17833638494023122291
    single_ext_17833638494293564019 <= ext_cond_bx_0(16); -- single_ext_17833638494293564019
    single_ext_17833638494294369813 <= ext_cond_bx_0(18); -- single_ext_17833638494294369813
    single_ext_2629888000553438421 <= ext_cond_bx_0(19); -- single_ext_2629888000553438421
    single_ext_6395038971485762907 <= ext_cond_bx_0(5); -- single_ext_6395038971485762907
    single_ext_6395038971485762908 <= ext_cond_bx_0(6); -- single_ext_6395038971485762908
    single_ext_6395038971485764604 <= ext_cond_bx_0(7); -- single_ext_6395038971485764604
    single_ext_6395198100430131034 <= ext_cond_bx_0(33); -- single_ext_6395198100430131034
    single_ext_6873400283626490434 <= ext_cond_bx_0(23); -- single_ext_6873400283626490434
    single_ext_6908249106957368432 <= ext_cond_bx_0(4); -- single_ext_6908249106957368432
    single_ext_6908249107225803888 <= ext_cond_bx_0(8); -- single_ext_6908249107225803888
    single_ext_6912739140295604792 <= ext_cond_bx_0(22); -- single_ext_6912739140295604792
    single_ext_6926915327998939228 <= ext_cond_bx_0(34); -- single_ext_6926915327998939228
    single_ext_7098142365486617009 <= ext_cond_bx_0(9); -- single_ext_7098142365486617009
    single_ext_7098142399846355376 <= ext_cond_bx_0(10); -- single_ext_7098142399846355376
    single_ext_7332905005558692114 <= ext_cond_bx_0(0); -- single_ext_7332905005558692114
    single_ext_7332905005558692115 <= ext_cond_bx_0(1); -- single_ext_7332905005558692115
    single_ext_8353702592807249329 <= ext_cond_bx_0(15); -- single_ext_8353702592807249329

-- Instantiations of muon charge correlations - only once for a certain Bx combination, if there is at least one DoubleMuon, TripleMuon, QuadMuon condition
-- or muon-muon correlation condition.
muon_charge_correlations_bx_0_bx_0_i: entity work.muon_charge_correlations
    port map(mu_bx_0, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


-- Instantiations of pt, eta and phi for correlation conditions (used for DETA, DPHI and DR) - once for every ObjectType in certain Bx used in correlation conditions
mu_data_bx_0_l: for i in 0 to NR_MU_OBJECTS-1 generate
    mu_pt_vector_bx_0(i)(MU_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(MU_PT_LUT(CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.pt_high downto D_S_I_MU_V2.pt_low))), MU_PT_VECTOR_WIDTH);
    mu_eta_integer_bx_0(i) <= CONV_INTEGER(signed(mu_bx_0(i)(D_S_I_MU_V2.eta_high downto D_S_I_MU_V2.eta_low)));
    mu_phi_integer_bx_0(i) <= CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low));
end generate;


-- Instantiations of eta and phi conversion to muon scale for calo-muon and muon-esums correlation conditions (used for DETA, DPHI and DR) - once for every calo ObjectType in certain Bx used in correlation conditions


-- Instantiations of differences for correlation conditions (used for DETA, DPHI and DR) - once for correlation conditions with two ObjectTypes in certain Bxs
diff_mu_mu_eta_bx_0_bx_0_i: entity work.sub_eta_integer_obj_vs_obj
    generic map(NR_MU_OBJECTS, NR_MU_OBJECTS)
    port map(mu_eta_integer_bx_0, mu_eta_integer_bx_0, diff_mu_mu_bx_0_bx_0_eta_integer);
diff_mu_mu_phi_bx_0_bx_0_i: entity work.sub_phi_integer_obj_vs_obj
    generic map(NR_MU_OBJECTS, NR_MU_OBJECTS, MUON_PHI_HALF_RANGE_BINS)
    port map(mu_phi_integer_bx_0, mu_phi_integer_bx_0, diff_mu_mu_bx_0_bx_0_phi_integer);
mu_mu_bx_0_bx_0_l1: for i in 0 to NR_MU_OBJECTS-1 generate
    mu_mu_bx_0_bx_0_l2: for j in 0 to NR_MU_OBJECTS-1 generate
        diff_mu_mu_bx_0_bx_0_eta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_DIFF_ETA_LUT(diff_mu_mu_bx_0_bx_0_eta_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
        diff_mu_mu_bx_0_bx_0_phi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_DIFF_PHI_LUT(diff_mu_mu_bx_0_bx_0_phi_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
    end generate mu_mu_bx_0_bx_0_l2;
end generate mu_mu_bx_0_bx_0_l1;


-- Instantiations of cosh-deta and cos-dphi LUTs for correlation conditions (used for invariant mass) - once for correlation conditions with two ObjectTypes in certain Bxs
mu_mu_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_MU_OBJECTS-1 generate
    mu_mu_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_MU_OBJECTS-1 generate
        mu_mu_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_COSH_DETA_LUT(diff_mu_mu_bx_0_bx_0_eta_integer(i,j)), MU_MU_COSH_COS_VECTOR_WIDTH);
        mu_mu_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_COS_DPHI_LUT(diff_mu_mu_bx_0_bx_0_phi_integer(i,j)), MU_MU_COSH_COS_VECTOR_WIDTH);
    end generate mu_mu_bx_0_bx_0_cosh_cos_l2;
end generate mu_mu_bx_0_bx_0_cosh_cos_l1;


-- Instantiations of conditions
double_eg_14367282104050956127_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"001E", X"0014", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, double_eg_14367282104050956127);


single_mu_1272496_i: entity work.muon_conditions_v3
    generic map(1, true,
        (X"0001", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        single_mu_1272496);


single_htm_19504782000_i: entity work.esums_conditions
    generic map(true, HTM_TYPE,
        X"0064",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htm_bx_0, single_htm_19504782000);


single_htt_2496626711344_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0140",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626711344);


muon_muon_correlation_8772456668275224612_i: entity work.muon_muon_correlation_condition
    generic map(
        true,
        true, false, false, false,
        true,
        X"0015",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FF00", X"F",
        true,
        X"0001",
        true, X"0000",X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FF00", X"F",
        "ig",
        1.8, 0.0,
        0.0, 0.0,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, MUON_MUON_DETA_DPHI_PRECISION,
        0.0, 0.0, MUON_MUON_INV_MASS_PRECISION, MUON_PT_VECTOR_WIDTH, MUON_MUON_COSH_COS_PRECISION, MUON_MUON_COSH_COS_VECTOR_WIDTH
    )
    port map(lhc_clk, mu_bx_0, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        diff_mu_mu_bx_0_bx_0_eta_vector, diff_mu_mu_bx_0_bx_0_phi_vector,
        mu_pt_vector_bx_0, mu_pt_vector_bx_0,
        mu_mu_bx_0_bx_0_cosh_deta_vector, mu_mu_bx_0_bx_0_cos_dphi_vector,
        muon_muon_correlation_8772456668275224612);


-- Instantiations of algorithms

-- 1 L1_BptxPlus_NotBptxMinus : EXT_BPTX_plus.v0 AND  NOT EXT_BPTX_minus.v0
l1_bptx_plus_not_bptx_minus <= single_ext_6395198100430131034 and not single_ext_6926915327998939228;
algo(30) <= l1_bptx_plus_not_bptx_minus;

-- 2 L1_BptxMinus_NotBptxPlus : EXT_BPTX_minus.v0 AND  NOT EXT_BPTX_plus.v0
l1_bptx_minus_not_bptx_plus <= single_ext_6926915327998939228 and not single_ext_6395198100430131034;
algo(31) <= l1_bptx_minus_not_bptx_plus;

-- 10 L1_BptxPlus : EXT_BPTX_plus.v0
l1_bptx_plus <= single_ext_6395198100430131034;
algo(32) <= l1_bptx_plus;

-- 11 L1_BptxMinus : EXT_BPTX_minus.v0
l1_bptx_minus <= single_ext_6926915327998939228;
algo(28) <= l1_bptx_minus;

-- 35 L1_DoubleMu_10_0_dEta_Max1p8 : dist{MU10[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]}[DETA_MAX_1p8]
l1_double_mu_10_0_d_eta_max1p8 <= muon_muon_correlation_8772456668275224612;
algo(0) <= l1_double_mu_10_0_d_eta_max1p8;

-- 71 L1_DoubleEG_15_10 : comb{EG15,EG10}
l1_double_eg_15_10 <= double_eg_14367282104050956127;
algo(1) <= l1_double_eg_15_10;

-- 130 L1_HTT160 : HTT160
l1_htt160 <= single_htt_2496626711344;
algo(4) <= l1_htt160;

-- 131 L1_HTM50 : HTM50
l1_htm50 <= single_htm_19504782000;
algo(3) <= l1_htm50;

-- 218 L1_SingleMuCosmics : MU0
l1_single_mu_cosmics <= single_mu_1272496;
algo(2) <= l1_single_mu_cosmics;

-- 220 L1_BptxXOR : (EXT_BPTX_plus.v0 AND (NOT EXT_BPTX_minus.v0)) OR (EXT_BPTX_minus.v0 AND (NOT EXT_BPTX_plus.v0))
l1_bptx_xor <= ( single_ext_6395198100430131034 and ( not single_ext_6926915327998939228 ) ) or ( single_ext_6926915327998939228 and ( not single_ext_6395198100430131034 ) );
algo(29) <= l1_bptx_xor;

-- 221 L1_BeamGasPlus : EXT_BeamGas_plus
l1_beam_gas_plus <= single_ext_17118203077108929635;
algo(27) <= l1_beam_gas_plus;

-- 222 L1_BeamGasMinus : EXT_BeamGas_minus
l1_beam_gas_minus <= single_ext_14414193171404190569;
algo(26) <= l1_beam_gas_minus;

-- 223 L1_BeamGasB1 : EXT_BeamGas_B1
l1_beam_gas_b1 <= single_ext_7332905005558692114;
algo(24) <= l1_beam_gas_b1;

-- 224 L1_BeamGasB2 : EXT_BeamGas_B2
l1_beam_gas_b2 <= single_ext_7332905005558692115;
algo(25) <= l1_beam_gas_b2;

-- 225 L1_BPTX_LUT1_AND : EXT_BPTX_LUT1_AND
l1_bptx_lut1_and <= single_ext_6908249106957368432;
algo(5) <= l1_bptx_lut1_and;

-- 226 L1_BPTX_LUT1_B1 : EXT_BPTX_LUT1_B1
l1_bptx_lut1_b1 <= single_ext_6395038971485762907;
algo(6) <= l1_bptx_lut1_b1;

-- 227 L1_BPTX_LUT1_B2 : EXT_BPTX_LUT1_B2
l1_bptx_lut1_b2 <= single_ext_6395038971485762908;
algo(7) <= l1_bptx_lut1_b2;

-- 228 L1_BPTX_LUT1_OR : EXT_BPTX_LUT1_OR
l1_bptx_lut1_or <= single_ext_6395038971485764604;
algo(8) <= l1_bptx_lut1_or;

-- 229 L1_BPTX_LUT2_AND : EXT_BPTX_LUT2_AND
l1_bptx_lut2_and <= single_ext_6908249107225803888;
algo(9) <= l1_bptx_lut2_and;

-- 230 L1_BPTX_LUT2_B1NotB2 : EXT_BPTX_LUT2_B1NotB2
l1_bptx_lut2_b1_not_b2 <= single_ext_7098142365486617009;
algo(10) <= l1_bptx_lut2_b1_not_b2;

-- 231 L1_BPTX_LUT2_B2NotB1 : EXT_BPTX_LUT2_B2NotB1
l1_bptx_lut2_b2_not_b1 <= single_ext_7098142399846355376;
algo(11) <= l1_bptx_lut2_b2_not_b1;

-- 232 L1_BPTX_LUT2_NotOR : EXT_BPTX_LUT2_NotOR
l1_bptx_lut2_not_or <= single_ext_13978480583031406537;
algo(12) <= l1_bptx_lut2_not_or;

-- 233 L1_BPTX_TRIG2_AND : EXT_BPTX_TRIG2_AND
l1_bptx_trig2_and <= single_ext_17833638494023122291;
algo(13) <= l1_bptx_trig2_and;

-- 234 L1_BPTX_TRIG2_B1NotB2 : EXT_BPTX_TRIG2_B1NotB2
l1_bptx_trig2_b1_not_b2 <= single_ext_10668942785814789677;
algo(14) <= l1_bptx_trig2_b1_not_b2;

-- 235 L1_BPTX_TRIG2_B2NotB1 : EXT_BPTX_TRIG2_B2NotB1
l1_bptx_trig2_b2_not_b1 <= single_ext_10668942820174528044;
algo(15) <= l1_bptx_trig2_b2_not_b1;

-- 236 L1_BPTX_TRIG2_NotOR : EXT_BPTX_TRIG2_NotOR
l1_bptx_trig2_not_or <= single_ext_8353702592807249329;
algo(16) <= l1_bptx_trig2_not_or;

-- 237 L1_BRIL_TRIG3_AND : EXT_BRIL_TRIG3_AND
l1_bril_trig3_and <= single_ext_17833638494293564019;
algo(21) <= l1_bril_trig3_and;

-- 238 L1_BRIL_TRIG3_delayedAND : EXT_BRIL_TRIG3_delayedAND
l1_bril_trig3_delayed_and <= single_ext_14715923867298367880;
algo(22) <= l1_bril_trig3_delayed_and;

-- 239 L1_BRIL_TRIG3_ref : EXT_BRIL_TRIG3_ref
l1_bril_trig3_ref <= single_ext_17833638494294369813;
algo(23) <= l1_bril_trig3_ref;

-- 240 L1_BRIL_TRIG0_AND : EXT_BRIL_TRIG0_AND
l1_bril_trig0_and <= single_ext_17833638493488257651;
algo(17) <= l1_bril_trig0_and;

-- 241 L1_BRIL_TRIG0_delayedAND : EXT_BRIL_TRIG0_delayedAND
l1_bril_trig0_delayed_and <= single_ext_14715923867298343304;
algo(20) <= l1_bril_trig0_delayed_and;

-- 242 L1_BRIL_TRIG0_OR : EXT_BRIL_TRIG0_OR
l1_bril_trig0_or <= single_ext_6912739140295604792;
algo(19) <= l1_bril_trig0_or;

-- 243 L1_BRIL_TRIG0_FstBunchInTrain : EXT_BRIL_TRIG0_FstBunchInTrain
l1_bril_trig0_fst_bunch_in_train <= single_ext_6873400283626490434;
algo(18) <= l1_bril_trig0_fst_bunch_in_train;

-- 244 L1_ZeroBias_FirstCollidingBunch : EXT_BRIL_TRIG3_FstColBunch
l1_zero_bias_first_colliding_bunch <= single_ext_2629888000553438421;
algo(33) <= l1_zero_bias_first_colliding_bunch;


-- ==== Inserted by TME - end ===============================================================================================================

-- One pipeline stages for algorithms
algo_pipeline_p: process(lhc_clk, algo)
    begin
    if (lhc_clk'event and lhc_clk = '1') then
        algo_o <= algo;
    end if;
end process;

end architecture rtl;