-- Description:
-- Global Trigger Logic module.

-- ========================================================
-- from VHDL producer:
      
-- Unique ID of L1 Trigger Menu:
-- X"eb70e7477f4c57faa4cc197b89620bf1"
    
-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2016_v3
    
-- Scale set:
-- 2016-04-27
    
-- VHDL producer version
-- v0.0.1

-- ========================================================

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
-- ****************************************************************************************
-- HB 2016-01-08: renamed ext_cond after +/-2bx to ext_cond_bx_p2_int, etc., because ext_cond_bx_p2, etc. used in algos (names coming from TME grammar).
    signal ext_cond_bx_p2_int, ext_cond_bx_p1_int, ext_cond_bx_0_int, ext_cond_bx_m1_int, ext_cond_bx_m2_int : std_logic_vector(NR_EXTERNAL_CONDITIONS-1 downto 0);
    signal ext_cond_bx_p2, ext_cond_bx_p1, ext_cond_bx_0, ext_cond_bx_m1, ext_cond_bx_m2 : std_logic_vector(NR_EXTERNAL_CONDITIONS-1 downto 0);

--     signal ext_cond_bx_p2_pipe, ext_cond_bx_p1_pipe, ext_cond_bx_0_pipe, ext_cond_bx_m1_pipe, ext_cond_bx_m2_pipe : std_logic_vector(NR_EXTERNAL_CONDITIONS-1 downto 0);

    signal algo : std_logic_vector(NR_ALGOS-1 downto 0) := (others => '0');

-- ==== Inserted by TME - begin =============================================================================================================

-- Signal definition of pt, eta and phi for correlation conditions.
-- Insert "signal_correlation_conditions_pt_eta_phi.vhd.j2" as often as an ObjectType at a certain Bx is used in a correlation condition.
signal jet_pt_vector_bx_0: diff_inputs_array(0 to NR_JET_OBJECTS-1) := (others => (others => '0'));
signal jet_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
signal jet_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
signal jet_eta_conv_2_muon_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
signal jet_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
signal etm_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
signal etm_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
signal eg_pt_vector_bx_0: diff_inputs_array(0 to NR_EG_OBJECTS-1) := (others => (others => '0'));
signal eg_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
signal eg_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
signal eg_eta_conv_2_muon_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
signal eg_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
signal tau_pt_vector_bx_0: diff_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => (others => '0'));
signal tau_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
signal tau_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
signal tau_eta_conv_2_muon_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
signal tau_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
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
signal diff_jet_etm_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => 0));
signal diff_jet_etm_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => (others => '0')));
signal jet_etm_bx_0_bx_0_cosh_deta_vector : calo_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => (others => '0')));
signal jet_etm_bx_0_bx_0_cos_dphi_vector : calo_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => (others => '0')));
signal diff_jet_etm_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => 0));
signal diff_jet_etm_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => (others => '0')));
signal diff_jet_mu_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
signal diff_jet_mu_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
signal jet_mu_bx_0_bx_0_cosh_deta_vector : calo_muon_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
signal jet_mu_bx_0_bx_0_cos_dphi_vector : calo_muon_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
signal diff_jet_mu_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
signal diff_jet_mu_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
signal diff_eg_tau_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_TAU_OBJECTS-1) := (others => (others => 0));
signal diff_eg_tau_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_TAU_OBJECTS-1) := (others => (others => (others => '0')));
signal eg_tau_bx_0_bx_0_cosh_deta_vector : calo_cosh_cos_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_TAU_OBJECTS-1) := (others => (others => (others => '0')));
signal eg_tau_bx_0_bx_0_cos_dphi_vector : calo_cosh_cos_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_TAU_OBJECTS-1) := (others => (others => (others => '0')));
signal diff_eg_tau_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_TAU_OBJECTS-1) := (others => (others => 0));
signal diff_eg_tau_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_TAU_OBJECTS-1) := (others => (others => (others => '0')));
signal diff_eg_mu_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
signal diff_eg_mu_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
signal eg_mu_bx_0_bx_0_cosh_deta_vector : calo_muon_cosh_cos_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
signal eg_mu_bx_0_bx_0_cos_dphi_vector : calo_muon_cosh_cos_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
signal diff_eg_mu_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
signal diff_eg_mu_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));


-- Signal definition for muon charge correlations.
-- Insert "signal_muon_charge_correlations.vhd.j2" only once for a certain Bx combination,
-- if there is at least one muon condition or one muon-muon correlation condition.
  signal ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0 : muon_charcorr_double_array;
  signal ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0 : muon_charcorr_triple_array;
  signal ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0 : muon_charcorr_quad_array;


-- Signal definition for conditions names
    signal singlemu_14769293139955716549 : std_logic;
    signal singlemu_17545683093852819909 : std_logic;
    signal singlemu_17545683128212558277 : std_logic;
    signal singlemu_17545683162572296645 : std_logic;
    signal singlemu_17545685258516337093 : std_logic;
    signal singlemu_17545685310055944645 : std_logic;
    signal singlemu_17545687423179854277 : std_logic;
    signal singlemu_17545683021081726533 : std_logic;
    signal singlemu_7109620049583097248 : std_logic;
    signal singlemu_7145648846602061216 : std_logic;
    signal singlemu_9379434261777827232 : std_logic;
    signal singlemu_9433477457306273184 : std_logic;
    signal singlemu_11649248473972557216 : std_logic;
    signal doublemu_14585778097856672575 : std_logic;
    signal doublemu_14585777620730815295 : std_logic;
    signal doublemu_16961145543694661636 : std_logic;
    signal doublemu_18206240164090448142 : std_logic;
    signal doublemu_16961154507842811908 : std_logic;
    signal doublemu_16961157256621881348 : std_logic;
    signal doublemu_16961160005400950788 : std_logic;
    signal doublemu_16961158905889323012 : std_logic;
    signal doublemu_16961163853691648004 : std_logic;
    signal muonmuoncorrelation_16040223250608453060 : std_logic;
    signal muonmuoncorrelation_8008405571232419574 : std_logic;
    signal muonmuoncorrelation_8772456668275224612 : std_logic;
    signal triplemu_3324682852515662879 : std_logic;
    signal triplemu_3324692885559266335 : std_logic;
    signal quadmu_509409160461874775 : std_logic;
    signal singleeg_1139637 : std_logic;
    signal singleeg_145873080 : std_logic;
    signal singleeg_145873204 : std_logic;
    signal singleeg_145873206 : std_logic;
    signal singleeg_145873208 : std_logic;
    signal singleeg_145873328 : std_logic;
    signal singleeg_145873332 : std_logic;
    signal singleeg_145873456 : std_logic;
    signal singleeg_145873461 : std_logic;
    signal singleeg_12507579852184458304 : std_logic;
    signal singleeg_12507579852186555456 : std_logic;
    signal singleeg_12507579852188652608 : std_logic;
    signal singleeg_12507579852190749760 : std_logic;
    signal singleeg_12507579852316578880 : std_logic;
    signal singleeg_12507579852320773184 : std_logic;
    signal singleeg_6872811427746276593 : std_logic;
    signal singleeg_6872943369141609713 : std_logic;
    signal singleeg_6872945568164865265 : std_logic;
    signal singleeg_6872947767188120817 : std_logic;
    signal singleeg_6872949966211376369 : std_logic;
    signal singleeg_6872952165234631921 : std_logic;
    signal singleeg_6873084106629965041 : std_logic;
    signal singleeg_6873088504676476145 : std_logic;
    signal doubleeg_14367282104050956127 : std_logic;
    signal doubleeg_14367295298190490335 : std_logic;
    signal doubleeg_14367823063771822943 : std_logic;
    signal doubleeg_14367831859864844127 : std_logic;
    signal doubleeg_14367836257911355231 : std_logic;
    signal doubleeg_14367840655957867231 : std_logic;
    signal tripleeg_4430569450691365292 : std_logic;
    signal tripleeg_4430569691209534124 : std_logic;
    signal singlejet_20010309814 : std_logic;
    signal singlejet_20010309936 : std_logic;
    signal singlejet_20010310069 : std_logic;
    signal singlejet_20010310448 : std_logic;
    signal singlejet_20010310832 : std_logic;
    signal singlejet_2561319655728 : std_logic;
    signal singlejet_2561319655984 : std_logic;
    signal singlejet_2561319656112 : std_logic;
    signal singlejet_2561319656240 : std_logic;
    signal singlejet_2561319656368 : std_logic;
    signal singlejet_2561319656496 : std_logic;
    signal singlejet_2561319671856 : std_logic;
    signal doublejet_8659156106098952915 : std_logic;
    signal doublejet_8659228673866386131 : std_logic;
    signal doublejet_8659301241633819347 : std_logic;
    signal doublejet_8659446377168685779 : std_logic;
    signal doublejet_15894421920862285922 : std_logic;
    signal doublejet_15903572090988376162 : std_logic;
    signal doublejet_15912440717418279010 : std_logic;
    signal doublejet_8659439917537872595 : std_logic;
    signal singlejet_5974147112830057980 : std_logic;
    signal triplejet_7930354149017105525 : std_logic;
    signal doublejet_8659301379072772819 : std_logic;
    signal doublejet_8659444315584383699 : std_logic;
    signal singlejet_5974006375341702652 : std_logic;
    signal singlejet_5974285651295157756 : std_logic;
    signal triplejet_7930493752634094709 : std_logic;
    signal doublejet_8659448610551679699 : std_logic;
    signal singlejet_5974075644574252540 : std_logic;
    signal doublejet_8659444281224645331 : std_logic;
    signal doublejet_8659370613945584339 : std_logic;
    signal singlejet_5974287850318413308 : std_logic;
    signal singlejet_5974214183039352316 : std_logic;
    signal singlejet_5974216382062607868 : std_logic;
    signal singlejet_5974354920527707644 : std_logic;
    signal singlejet_5974144913806802428 : std_logic;
    signal triplejet_7932644363018286197 : std_logic;
    signal doublejet_8659374977632357075 : std_logic;
    signal doublejet_8659513516097456851 : std_logic;
    signal doublejet_8659515749480450771 : std_logic;
    signal quadjet_2751081844007168180 : std_logic;
    signal quadjet_2825463805626214580 : std_logic;
    signal quadjet_2899845767245260980 : std_logic;
    signal singletau_16608844133906550600 : std_logic;
    signal singletau_3484211327656040900 : std_logic;
    signal singletau_3484215725702552004 : std_logic;
    signal doubletau_10196652208393370350 : std_logic;
    signal doubletau_14808338227894500078 : std_logic;
    signal doubletau_14808338292319009533 : std_logic;
    signal doubletau_973280238110587646 : std_logic;
    signal doubletau_12502495218143935214 : std_logic;
    signal doubletau_17114181237645064942 : std_logic;
    signal doubletau_15233202657361500387 : std_logic;
    signal singlehtt_2496626710832 : std_logic;
    signal singlehtt_2496626711344 : std_logic;
    signal singlehtt_2496626726960 : std_logic;
    signal singlehtt_2496626727472 : std_logic;
    signal singlehtt_2496626727605 : std_logic;
    signal singlehtt_2496626727856 : std_logic;
    signal singlehtt_2496626727984 : std_logic;
    signal singlehtt_2496626743344 : std_logic;
    signal singlehtt_2496626743600 : std_logic;
    signal singleetm_18699476016 : std_logic;
    signal singleetm_18699476144 : std_logic;
    signal singlehtm_19504782000 : std_logic;
    signal singlehtm_19504782256 : std_logic;
    signal singlehtm_2496612030512 : std_logic;
    signal singlehtm_2496612030768 : std_logic;
    signal singlehtm_2496612030896 : std_logic;
    signal singlehtm_2496612031024 : std_logic;
    signal singlehtm_2496612031152 : std_logic;
    signal singleett_18699589941 : std_logic;
    signal singleetm_18699475504 : std_logic;
    signal singleetm_18699475632 : std_logic;
    signal singleetm_18699475760 : std_logic;
    signal singleetm_18699475888 : std_logic;
    signal singleetm_2393532815408 : std_logic;
    signal singleetm_2393532815664 : std_logic;
    signal singleeg_145873200 : std_logic;
    signal singleeg_145873203 : std_logic;
    signal singleeg_12507579852056532032 : std_logic;
    signal singleeg_12507579852182361152 : std_logic;
    signal singlemu_14769293105595978181 : std_logic;
    signal singleeg_145873072 : std_logic;
    signal singlemu_17545683059493081541 : std_logic;
    signal singleeg_145873079 : std_logic;
    signal singlemu_17545685275696206277 : std_logic;
    signal singleeg_12507579852048143424 : std_logic;
    signal singletau_16608830939767017288 : std_logic;
    signal singletau_16608831008486494024 : std_logic;
    signal singlemu_7181677643621025184 : std_logic;
    signal singletau_218368042610145022 : std_logic;
    signal singlemu_9343405464758863264 : std_logic;
    signal singleeg_145873076 : std_logic;
    signal doublemu_14585796862184301375 : std_logic;
    signal singleeg_1139639 : std_logic;
    signal singlemu_14769293122775847365 : std_logic;
    signal doubleeg_14367290900143979231 : std_logic;
    signal doubleeg_14367260113818400607 : std_logic;
    signal calomuoncorrelation_16240387826857744385 : std_logic;
    signal calomuoncorrelation_16240389188362377217 : std_logic;
    signal singlemu_14769293157135585733 : std_logic;
    signal singlehtt_2496626711216 : std_logic;
    signal singleeg_14262501742930627507 : std_logic;
    signal singleeg_14262501742662192051 : std_logic;
    signal singlehtt_2496626710837 : std_logic;
    signal doubleeg_8902241742241126126 : std_logic;
    signal quadjet_2680186536839014580 : std_logic;
    signal singletau_22686292658 : std_logic;
    signal muonmuoncorrelation_16683739788801056592 : std_logic;
    signal calomuoncorrelation_1318858389454035588 : std_logic;
    signal calomuoncorrelation_1201630304223198732 : std_logic;
    signal singlemu_16260934492399787300 : std_logic;
    signal singleetm_18699475637 : std_logic;
    signal singlemu_7037562455545169312 : std_logic;
    signal singleetm_18699475376 : std_logic;
    signal singlehtt_2496626727216 : std_logic;
    signal singlehtm_19504782384 : std_logic;
    signal singlehtt_2496626727728 : std_logic;
    signal singlehtm_19504782128 : std_logic;
    signal singlejet_5967545327155853511 : std_logic;
    signal singleeg_1139634 : std_logic;
    signal singleett_18699590069 : std_logic;
    signal singlejet_156330552 : std_logic;
    signal singlejet_20010309810 : std_logic;
    signal doubleeg_14367831859864844383 : std_logic;
    signal doubleeg_14367831859864844767 : std_logic;
    signal singlemu_17545685224156598725 : std_logic;
    signal singleeg_145873077 : std_logic;
    signal calocalocorrelation_2085349615869404806 : std_logic;
    signal singlemu_14769293018627052229 : std_logic;
    signal singlejet_5967545309707548871 : std_logic;
    signal singlejet_5967545327692724423 : std_logic;
    signal caloesumcorrelation_16768129600163955985 : std_logic;
    signal calomuoncorrelation_15993852978349077723 : std_logic;
    signal doublejet_5010010172296896555 : std_logic;
    signal doublejet_8281320341886584868 : std_logic;
    signal doublejet_8281320350476519461 : std_logic;
    signal singlejet_5967545293332986055 : std_logic;
    signal singlemu_14769293071236239813 : std_logic;
    signal singlejet_5967545378427025607 : std_logic;
    signal singlejet_15014918520304220377 : std_logic;
    signal singlemu_1272496 : std_logic;
    signal singleett_18699590320 : std_logic;
    signal singleett_18699590448 : std_logic;
    signal singlembt0hfp_43640316738250801 : std_logic;
    signal singlembt0hfm_43640316738250417 : std_logic;
    signal singlembt1hfm_43640317006685873 : std_logic;
    signal singlembt1hfp_43640317006686257 : std_logic;


-- Signal definition for algorithms names
    signal L1_ZeroBias : std_logic;
    signal L1_SingleMuOpen : std_logic;
    signal L1_SingleMu3 : std_logic;
    signal L1_SingleMu5 : std_logic;
    signal L1_SingleMu7 : std_logic;
    signal L1_SingleMu12 : std_logic;
    signal L1_SingleMu14 : std_logic;
    signal L1_SingleMu16 : std_logic;
    signal L1_SingleMu18 : std_logic;
    signal L1_SingleMu20 : std_logic;
    signal L1_SingleMu22 : std_logic;
    signal L1_SingleMu25 : std_logic;
    signal L1_SingleMu30 : std_logic;
    signal L1_SingleMu10_LowQ : std_logic;
    signal L1_SingleMu14er : std_logic;
    signal L1_SingleMu16er : std_logic;
    signal L1_SingleMu18er : std_logic;
    signal L1_SingleMu20er : std_logic;
    signal L1_SingleMu22er : std_logic;
    signal L1_SingleMu25er : std_logic;
    signal L1_SingleMu30er : std_logic;
    signal L1_DoubleMuOpen : std_logic;
    signal L1_DoubleMu0 : std_logic;
    signal L1_DoubleMu_10_Open : std_logic;
    signal L1_DoubleMu_10_3p5 : std_logic;
    signal L1_DoubleMu_11_4 : std_logic;
    signal L1_DoubleMu_12_5 : std_logic;
    signal L1_DoubleMu_13_6 : std_logic;
    signal L1_DoubleMu_15_5 : std_logic;
    signal L1_DoubleMu_12_8 : std_logic;
    signal L1_DoubleMu0er1p6_dEta_Max1p8 : std_logic;
    signal L1_DoubleMu0er1p6_dEta_Max1p8_OS : std_logic;
    signal L1_DoubleMu_10_0_dEta_Max1p8 : std_logic;
    signal L1_TripleMu0 : std_logic;
    signal L1_TripleMu_5_5_3 : std_logic;
    signal L1_QuadMu0 : std_logic;
    signal L1_SingleEG5 : std_logic;
    signal L1_SingleEG10 : std_logic;
    signal L1_SingleEG15 : std_logic;
    signal L1_SingleEG18 : std_logic;
    signal L1_SingleEG24 : std_logic;
    signal L1_SingleEG26 : std_logic;
    signal L1_SingleEG28 : std_logic;
    signal L1_SingleEG30 : std_logic;
    signal L1_SingleEG34 : std_logic;
    signal L1_SingleEG40 : std_logic;
    signal L1_SingleEG45 : std_logic;
    signal L1_SingleIsoEG18 : std_logic;
    signal L1_SingleIsoEG20 : std_logic;
    signal L1_SingleIsoEG22 : std_logic;
    signal L1_SingleIsoEG24 : std_logic;
    signal L1_SingleIsoEG26 : std_logic;
    signal L1_SingleIsoEG28 : std_logic;
    signal L1_SingleIsoEG30 : std_logic;
    signal L1_SingleIsoEG34 : std_logic;
    signal L1_SingleIsoEG18er : std_logic;
    signal L1_SingleIsoEG20er : std_logic;
    signal L1_SingleIsoEG22er : std_logic;
    signal L1_SingleIsoEG24er : std_logic;
    signal L1_SingleIsoEG26er : std_logic;
    signal L1_SingleIsoEG28er : std_logic;
    signal L1_SingleIsoEG30er : std_logic;
    signal L1_SingleIsoEG34er : std_logic;
    signal L1_DoubleEG_15_10 : std_logic;
    signal L1_DoubleEG_18_17 : std_logic;
    signal L1_DoubleEG_20_18 : std_logic;
    signal L1_DoubleEG_22_10 : std_logic;
    signal L1_DoubleEG_23_10 : std_logic;
    signal L1_DoubleEG_24_17 : std_logic;
    signal L1_TripleEG_14_10_8 : std_logic;
    signal L1_TripleEG_18_17_8 : std_logic;
    signal L1_SingleJet16 : std_logic;
    signal L1_SingleJet20 : std_logic;
    signal L1_SingleJet35 : std_logic;
    signal L1_SingleJet60 : std_logic;
    signal L1_SingleJet90 : std_logic;
    signal L1_SingleJet120 : std_logic;
    signal L1_SingleJet140 : std_logic;
    signal L1_SingleJet150 : std_logic;
    signal L1_SingleJet160 : std_logic;
    signal L1_SingleJet170 : std_logic;
    signal L1_SingleJet180 : std_logic;
    signal L1_SingleJet200 : std_logic;
    signal L1_DoubleJetC40 : std_logic;
    signal L1_DoubleJetC50 : std_logic;
    signal L1_DoubleJetC60 : std_logic;
    signal L1_DoubleJetC80 : std_logic;
    signal L1_DoubleJetC100 : std_logic;
    signal L1_DoubleJetC112 : std_logic;
    signal L1_DoubleJetC120 : std_logic;
    signal L1_TripleJet_84_68_48_VBF : std_logic;
    signal L1_TripleJet_88_72_56_VBF : std_logic;
    signal L1_TripleJet_92_76_64_VBF : std_logic;
    signal L1_QuadJetC40 : std_logic;
    signal L1_QuadJetC50 : std_logic;
    signal L1_QuadJetC60 : std_logic;
    signal L1_SingleTau80er : std_logic;
    signal L1_SingleTau100er : std_logic;
    signal L1_SingleTau120er : std_logic;
    signal L1_DoubleIsoTau26er : std_logic;
    signal L1_DoubleIsoTau28er : std_logic;
    signal L1_DoubleIsoTau30er : std_logic;
    signal L1_DoubleIsoTau32er : std_logic;
    signal L1_DoubleIsoTau27er : std_logic;
    signal L1_DoubleIsoTau29er : std_logic;
    signal L1_DoubleTau50er : std_logic;
    signal L1_HTT120 : std_logic;
    signal L1_HTT160 : std_logic;
    signal L1_HTT200 : std_logic;
    signal L1_HTT220 : std_logic;
    signal L1_HTT240 : std_logic;
    signal L1_HTT255 : std_logic;
    signal L1_HTT270 : std_logic;
    signal L1_HTT280 : std_logic;
    signal L1_HTT300 : std_logic;
    signal L1_HTT320 : std_logic;
    signal L1_ETM80 : std_logic;
    signal L1_ETM90 : std_logic;
    signal L1_HTM50 : std_logic;
    signal L1_HTM70 : std_logic;
    signal L1_HTM80 : std_logic;
    signal L1_HTM100 : std_logic;
    signal L1_HTM120 : std_logic;
    signal L1_HTM130 : std_logic;
    signal L1_HTM140 : std_logic;
    signal L1_HTM150 : std_logic;
    signal L1_ETT25 : std_logic;
    signal L1_ETT25_BptxAND : std_logic;
    signal L1_ETM30 : std_logic;
    signal L1_ETM40 : std_logic;
    signal L1_ETM50 : std_logic;
    signal L1_ETM60 : std_logic;
    signal L1_ETM70 : std_logic;
    signal L1_ETM100 : std_logic;
    signal L1_ETM120 : std_logic;
    signal L1_Mu5_EG15 : std_logic;
    signal L1_Mu5_EG20 : std_logic;
    signal L1_Mu5_EG23 : std_logic;
    signal L1_Mu5_IsoEG18 : std_logic;
    signal L1_Mu5_IsoEG20 : std_logic;
    signal L1_Mu12_EG10 : std_logic;
    signal L1_Mu20_EG10 : std_logic;
    signal L1_Mu20_EG17 : std_logic;
    signal L1_Mu23_IsoEG10 : std_logic;
    signal L1_Mu23_EG10 : std_logic;
    signal L1_Mu16er_Tau20er : std_logic;
    signal L1_Mu16er_Tau24er : std_logic;
    signal L1_Mu18er_Tau20er : std_logic;
    signal L1_Mu18er_Tau24er : std_logic;
    signal L1_Mu18er_IsoTau26er : std_logic;
    signal L1_Mu20er_IsoTau26er : std_logic;
    signal L1_DoubleMu7_EG14 : std_logic;
    signal L1_DoubleMu7_EG7 : std_logic;
    signal L1_Mu6_DoubleEG17 : std_logic;
    signal L1_Mu6_DoubleEG10 : std_logic;
    signal L1_Mu3_JetC16_dEta_Max0p4_dPhi_Max0p4 : std_logic;
    signal L1_Mu3_JetC60_dEta_Max0p4_dPhi_Max0p4 : std_logic;
    signal L1_Mu6_HTT200 : std_logic;
    signal L1_Mu8_HTT150 : std_logic;
    signal L1_EG27er_HTT200 : std_logic;
    signal L1_EG25er_HTT125 : std_logic;
    signal L1_DoubleEG6_HTT255 : std_logic;
    signal L1_QuadJetC36_Tau52 : std_logic;
    signal L1_Jet32_DoubleMuOpen_Mu10_dPhi_Jet_Mu0_Max0p4_dPhi_Mu_Mu_Min1p0 : std_logic;
    signal L1_Jet32_MuOpen_EG10_dPhi_Jet_Mu_Max0p4_dPhi_Mu_EG_Min1p0 : std_logic;
    signal L1_DoubleJetC60_ETM60 : std_logic;
    signal L1_Mu0er_ETM40 : std_logic;
    signal L1_Mu0er_ETM55 : std_logic;
    signal L1_Mu10er_ETM30 : std_logic;
    signal L1_Mu10er_ETM50 : std_logic;
    signal L1_Mu14er_ETM30 : std_logic;
    signal L1_HTM80_HTT220 : std_logic;
    signal L1_HTM60_HTT260 : std_logic;
    signal L1_SingleMuOpen_NotBptxOR : std_logic;
    signal L1_SingleJetC32_NotBptxOR : std_logic;
    signal L1_SingleJetC20_NotBptxOR : std_logic;
    signal L1_SingleEG2_BptxAND : std_logic;
    signal L1_ETT35_BptxAND : std_logic;
    signal L1_SingleJet8_BptxAND : std_logic;
    signal L1_SingleJet12_BptxAND : std_logic;
    signal L1_DoubleEG_22_12 : std_logic;
    signal L1_DoubleEG_22_15 : std_logic;
    signal L1_MU20_EG15 : std_logic;
    signal L1_IsoEG22er_Tau20er_dEta_Min0p2 : std_logic;
    signal L1_SingleMuOpen_NotBptxOR_3BX : std_logic;
    signal L1_SingleJetC20_NotBptxOR_3BX : std_logic;
    signal L1_SingleJetC32_NotBptxOR_3BX : std_logic;
    signal L1_SingleJetC36_NotBptxOR_3BX : std_logic;
    signal L1_ETM60_Jet60_dPhi_Min0p4 : std_logic;
    signal L1_AlwaysTrue : std_logic;
    signal L1_BptxPlus : std_logic;
    signal L1_BptxMinus : std_logic;
    signal L1_BptxOR : std_logic;
    signal L1_Mu3_JetC120_dEta_Max0p4_dPhi_Max0p4 : std_logic;
    signal L1_ZeroBias_FirstCollidingBunch : std_logic;
    signal L1_DoubleJet8_ForwardBackward : std_logic;
    signal L1_DoubleJet12_ForwardBackward : std_logic;
    signal L1_DoubleJet16_ForwardBackward : std_logic;
    signal L1_Mu3_JetC16 : std_logic;
    signal L1_Mu3_JetC60 : std_logic;
    signal L1_Mu3_JetC120 : std_logic;
    signal L1_SingleMuCosmics : std_logic;
    signal L1_IsolatedBunch : std_logic;
    signal L1_BptxXOR : std_logic;
    signal L1_BeamGasPlus : std_logic;
    signal L1_BeamGasMinus : std_logic;
    signal L1_BeamGasB1 : std_logic;
    signal L1_BeamGasB2 : std_logic;
    signal L1_BPTX_LUT1_AND : std_logic;
    signal L1_BPTX_LUT1_B1 : std_logic;
    signal L1_BPTX_LUT1_B2 : std_logic;
    signal L1_BPTX_LUT1_OR : std_logic;
    signal L1_BPTX_LUT2_AND : std_logic;
    signal L1_BPTX_LUT2_B1NotB2 : std_logic;
    signal L1_BPTX_LUT2_B2NotB1 : std_logic;
    signal L1_BPTX_LUT2_NotOR : std_logic;
    signal L1_BPTX_TRIG2_AND : std_logic;
    signal L1_BPTX_TRIG2_B1NotB2 : std_logic;
    signal L1_BPTX_TRIG2_B2NotB1 : std_logic;
    signal L1_BPTX_TRIG2_NotOR : std_logic;
    signal L1_BRIL_TRIG3_AND : std_logic;
    signal L1_BRIL_TRIG3_delayedAND : std_logic;
    signal L1_BRIL_TRIG3_ref : std_logic;
    signal L1_BRIL_TRIG0_AND : std_logic;
    signal L1_BRIL_TRIG0_delayedAND : std_logic;
    signal L1_BRIL_TRIG0_OR : std_logic;
    signal L1_BRIL_TRIG0_FstBunchInTrain : std_logic;
    signal L1_ETT50_BptxAND : std_logic;
    signal L1_ETT60_BptxAND : std_logic;
    signal L1_MinimumBiasHF0_OR_BptxAND : std_logic;
    signal L1_MinimumBiasHF0_AND_BptxAND : std_logic;
    signal L1_MinimumBiasHF1_OR_BptxAND : std_logic;
    signal L1_MinimumBiasHF1_AND_BptxAND : std_logic;
    signal L1_MinimumBiasHF0_OR : std_logic;
    signal L1_MinimumBiasHF0_AND : std_logic;
    signal L1_MinimumBiasHF1_OR : std_logic;
    signal L1_MinimumBiasHF1_AND : std_logic;
    signal L1_NotBptxOR : std_logic;
    signal L1_ZeroBias_copy : std_logic;


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

-- Instantiations of muon charge correlations - only once for a certain Bx combination, if there is at least one DoubleMuon, TripleMuon, QuadMuon condition
-- or muon-muon correlation condition.
muon_charge_correlations_bx_0_bx_0_i: entity work.muon_charge_correlations
  port map(mu_bx_0, mu_bx_0,
    ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
    ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
    ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


-- Instantiations of pt, eta and phi for correlation conditions (used for DETA, DPHI and DR) - once for every ObjectType in certain Bx used in correlation conditions
jet_data_bx_0_l: for i in 0 to NR_JET_OBJECTS-1 generate
  jet_pt_vector_bx_0(i)(JET_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(JET_PT_LUT(CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.et_high downto D_S_I_JET_V2.et_low))), JET_PT_VECTOR_WIDTH);
  jet_eta_integer_bx_0(i) <= CONV_INTEGER(signed(jet_bx_0(i)(D_S_I_JET_V2.eta_high downto D_S_I_JET_V2.eta_low)));
  jet_phi_integer_bx_0(i) <= CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.phi_high downto D_S_I_JET_V2.phi_low));
end generate;
etm_data_bx_0_l: for i in 0 to NR_ETM_OBJECTS-1 generate
  etm_phi_integer_bx_0(i) <= CONV_INTEGER(etm_bx_0(D_S_I_ETM_V2.phi_high downto D_S_I_ETM_V2.phi_low));
end generate;
eg_data_bx_0_l: for i in 0 to NR_EG_OBJECTS-1 generate
  eg_pt_vector_bx_0(i)(EG_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(EG_PT_LUT(CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.et_high downto D_S_I_EG_V2.et_low))), EG_PT_VECTOR_WIDTH);
  eg_eta_integer_bx_0(i) <= CONV_INTEGER(signed(eg_bx_0(i)(D_S_I_EG_V2.eta_high downto D_S_I_EG_V2.eta_low)));
  eg_phi_integer_bx_0(i) <= CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.phi_high downto D_S_I_EG_V2.phi_low));
end generate;
tau_data_bx_0_l: for i in 0 to NR_TAU_OBJECTS-1 generate
  tau_pt_vector_bx_0(i)(TAU_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(TAU_PT_LUT(CONV_INTEGER(tau_bx_0(i)(D_S_I_TAU_V2.et_high downto D_S_I_TAU_V2.et_low))), TAU_PT_VECTOR_WIDTH);
  tau_eta_integer_bx_0(i) <= CONV_INTEGER(signed(tau_bx_0(i)(D_S_I_TAU_V2.eta_high downto D_S_I_TAU_V2.eta_low)));
  tau_phi_integer_bx_0(i) <= CONV_INTEGER(tau_bx_0(i)(D_S_I_TAU_V2.phi_high downto D_S_I_TAU_V2.phi_low));
end generate;
mu_data_bx_0_l: for i in 0 to NR_MU_OBJECTS-1 generate
  mu_pt_vector_bx_0(i)(MU_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(MU_PT_LUT(CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.pt_high downto D_S_I_MU_V2.pt_low))), MU_PT_VECTOR_WIDTH);
  mu_eta_integer_bx_0(i) <= CONV_INTEGER(signed(mu_bx_0(i)(D_S_I_MU_V2.eta_high downto D_S_I_MU_V2.eta_low)));
  mu_phi_integer_bx_0(i) <= CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low));
end generate;


-- Instantiations of eta and phi conversion to muon scale for calo-muon and muon-esums correlation conditions (used for DETA, DPHI and DR) - once for every calo ObjectType in certain Bx used in correlation conditions
jet_conv_2_muon_bx_0_l: for i in 0 to NR_JET_OBJECTS-1 generate
  jet_eta_conv_2_muon_eta_integer_bx_0(i) <= JET_ETA_CONV_2_MUON_ETA_LUT(CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.eta_high downto D_S_I_JET_V2.eta_low)));
  jet_phi_conv_2_muon_phi_integer_bx_0(i) <= JET_PHI_CONV_2_MUON_PHI_LUT(CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.phi_high downto D_S_I_JET_V2.phi_low)));
end generate;
eg_conv_2_muon_bx_0_l: for i in 0 to NR_EG_OBJECTS-1 generate
  eg_eta_conv_2_muon_eta_integer_bx_0(i) <= EG_ETA_CONV_2_MUON_ETA_LUT(CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.eta_high downto D_S_I_EG_V2.eta_low)));
  eg_phi_conv_2_muon_phi_integer_bx_0(i) <= EG_PHI_CONV_2_MUON_PHI_LUT(CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.phi_high downto D_S_I_EG_V2.phi_low)));
end generate;


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
diff_jet_etm_phi_bx_0_bx_0_i: entity work.sub_phi_integer_obj_vs_obj
  generic map(NR_JET_OBJECTS, NR_ETM_OBJECTS, CALO_PHI_HALF_RANGE_BINS)
  port map(jet_phi_integer_bx_0, etm_phi_integer_bx_0, diff_jet_etm_bx_0_bx_0_phi_integer);      
jet_etm_bx_0_bx_0_l1: for i in 0 to NR_JET_OBJECTS-1 generate
  jet_etm_bx_0_bx_0_l2: for j in 0 to NR_ETM_OBJECTS-1 generate
    diff_jet_etm_bx_0_bx_0_phi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_ETM_DIFF_PHI_LUT(diff_jet_etm_bx_0_bx_0_phi_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
  end generate jet_etm_bx_0_bx_0_l2;
end generate jet_etm_bx_0_bx_0_l1;
diff_jet_mu_eta_bx_0_bx_0_i: entity work.sub_eta_integer_obj_vs_obj
  generic map(NR_JET_OBJECTS, NR_MU_OBJECTS)
  port map(jet_eta_conv_2_muon_eta_integer_bx_0, mu_eta_integer_bx_0, diff_jet_mu_bx_0_bx_0_eta_integer);      
diff_jet_mu_phi_bx_0_bx_0_i: entity work.sub_phi_integer_obj_vs_obj
  generic map(NR_JET_OBJECTS, NR_MU_OBJECTS, MUON_PHI_HALF_RANGE_BINS)
  port map(jet_phi_conv_2_muon_phi_integer_bx_0, mu_phi_integer_bx_0, diff_jet_mu_bx_0_bx_0_phi_integer);      
jet_mu_bx_0_bx_0_l1: for i in 0 to NR_JET_OBJECTS-1 generate
  jet_mu_bx_0_bx_0_l2: for j in 0 to NR_MU_OBJECTS-1 generate
    diff_jet_mu_bx_0_bx_0_eta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_MU_DIFF_ETA_LUT(diff_jet_mu_bx_0_bx_0_eta_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
    diff_jet_mu_bx_0_bx_0_phi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_MU_DIFF_PHI_LUT(diff_jet_mu_bx_0_bx_0_phi_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
  end generate jet_mu_bx_0_bx_0_l2;
end generate jet_mu_bx_0_bx_0_l1;
diff_eg_tau_eta_bx_0_bx_0_i: entity work.sub_eta_integer_obj_vs_obj
  generic map(NR_EG_OBJECTS, NR_TAU_OBJECTS)
  port map(eg_eta_integer_bx_0, tau_eta_integer_bx_0, diff_eg_tau_bx_0_bx_0_eta_integer);      
diff_eg_tau_phi_bx_0_bx_0_i: entity work.sub_phi_integer_obj_vs_obj
  generic map(NR_EG_OBJECTS, NR_TAU_OBJECTS, CALO_PHI_HALF_RANGE_BINS)
  port map(eg_phi_integer_bx_0, tau_phi_integer_bx_0, diff_eg_tau_bx_0_bx_0_phi_integer);      
eg_tau_bx_0_bx_0_l1: for i in 0 to NR_EG_OBJECTS-1 generate
  eg_tau_bx_0_bx_0_l2: for j in 0 to NR_TAU_OBJECTS-1 generate
    diff_eg_tau_bx_0_bx_0_eta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_TAU_DIFF_ETA_LUT(diff_eg_tau_bx_0_bx_0_eta_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
    diff_eg_tau_bx_0_bx_0_phi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_TAU_DIFF_PHI_LUT(diff_eg_tau_bx_0_bx_0_phi_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
  end generate eg_tau_bx_0_bx_0_l2;
end generate eg_tau_bx_0_bx_0_l1;
diff_eg_mu_eta_bx_0_bx_0_i: entity work.sub_eta_integer_obj_vs_obj
  generic map(NR_EG_OBJECTS, NR_MU_OBJECTS)
  port map(eg_eta_conv_2_muon_eta_integer_bx_0, mu_eta_integer_bx_0, diff_eg_mu_bx_0_bx_0_eta_integer);      
diff_eg_mu_phi_bx_0_bx_0_i: entity work.sub_phi_integer_obj_vs_obj
  generic map(NR_EG_OBJECTS, NR_MU_OBJECTS, MUON_PHI_HALF_RANGE_BINS)
  port map(eg_phi_conv_2_muon_phi_integer_bx_0, mu_phi_integer_bx_0, diff_eg_mu_bx_0_bx_0_phi_integer);      
eg_mu_bx_0_bx_0_l1: for i in 0 to NR_EG_OBJECTS-1 generate
  eg_mu_bx_0_bx_0_l2: for j in 0 to NR_MU_OBJECTS-1 generate
    diff_eg_mu_bx_0_bx_0_eta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_MU_DIFF_ETA_LUT(diff_eg_mu_bx_0_bx_0_eta_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
    diff_eg_mu_bx_0_bx_0_phi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_MU_DIFF_PHI_LUT(diff_eg_mu_bx_0_bx_0_phi_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
  end generate eg_mu_bx_0_bx_0_l2;
end generate eg_mu_bx_0_bx_0_l1;


-- Instantiations of cosh-deta and cos-dphi LUTs for correlation conditions (used for invariant mass) - once for correlation conditions with two ObjectTypes in certain Bxs
mu_mu_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_MU_OBJECTS-1 generate
  mu_mu_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_MU_OBJECTS-1 generate
    mu_mu_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_COSH_DETA_LUT(diff_mu_mu_bx_0_bx_0_eta_integer(i,j)), MU_MU_COSH_COS_VECTOR_WIDTH);
    mu_mu_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_COS_DPHI_LUT(diff_mu_mu_bx_0_bx_0_phi_integer(i,j)), MU_MU_COSH_COS_VECTOR_WIDTH);
  end generate mu_mu_bx_0_bx_0_cosh_cos_l2;
end generate mu_mu_bx_0_bx_0_cosh_cos_l1;
jet_mu_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_JET_OBJECTS-1 generate
  jet_mu_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_MU_OBJECTS-1 generate
    jet_mu_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_MU_COSH_DETA_LUT(diff_jet_mu_bx_0_bx_0_eta_integer(i,j)), JET_MU_COSH_COS_VECTOR_WIDTH);
    jet_mu_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_MU_COS_DPHI_LUT(diff_jet_mu_bx_0_bx_0_phi_integer(i,j)), JET_MU_COSH_COS_VECTOR_WIDTH);
  end generate jet_mu_bx_0_bx_0_cosh_cos_l2;
end generate jet_mu_bx_0_bx_0_cosh_cos_l1;
eg_tau_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_EG_OBJECTS-1 generate
  eg_tau_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_TAU_OBJECTS-1 generate
    eg_tau_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_TAU_COSH_DETA_LUT(diff_eg_tau_bx_0_bx_0_eta_integer(i,j)), EG_TAU_COSH_COS_VECTOR_WIDTH);
    eg_tau_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_TAU_COS_DPHI_LUT(diff_eg_tau_bx_0_bx_0_phi_integer(i,j)), EG_TAU_COSH_COS_VECTOR_WIDTH);
  end generate eg_tau_bx_0_bx_0_cosh_cos_l2;
end generate eg_tau_bx_0_bx_0_cosh_cos_l1;
eg_mu_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_EG_OBJECTS-1 generate
  eg_mu_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_MU_OBJECTS-1 generate
    eg_mu_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_MU_COSH_DETA_LUT(diff_eg_mu_bx_0_bx_0_eta_integer(i,j)), EG_MU_COSH_COS_VECTOR_WIDTH);
    eg_mu_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_MU_COS_DPHI_LUT(diff_eg_mu_bx_0_bx_0_phi_integer(i,j)), EG_MU_COSH_COS_VECTOR_WIDTH);
  end generate eg_mu_bx_0_bx_0_cosh_cos_l2;
end generate eg_mu_bx_0_bx_0_cosh_cos_l1;


-- Instantiations of conditions
singleeg_1139637_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"000A", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_1139637);

singleeg_145873080_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0024", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_145873080);

singleeg_145873204_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0030", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_145873204);

singleeg_145873206_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0034", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_145873206);

singleeg_145873208_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0038", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_145873208);

singleeg_145873328_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"003C", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_145873328);

singleeg_145873332_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0044", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_145873332);

singleeg_145873456_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0050", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_145873456);

singleeg_145873461_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"005A", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_145873461);

singleeg_12507579852184458304_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"002C", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_12507579852184458304);

singleeg_12507579852186555456_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0030", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_12507579852186555456);

singleeg_12507579852188652608_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0034", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_12507579852188652608);

singleeg_12507579852190749760_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0038", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_12507579852190749760);

singleeg_12507579852316578880_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"003C", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_12507579852316578880);

singleeg_12507579852320773184_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0044", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_12507579852320773184);

singleeg_6872811427746276593_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0024", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_6872811427746276593);

singleeg_6872943369141609713_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0028", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_6872943369141609713);

singleeg_6872945568164865265_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"002C", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_6872945568164865265);

singleeg_6872947767188120817_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0030", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_6872947767188120817);

singleeg_6872949966211376369_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0034", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_6872949966211376369);

singleeg_6872952165234631921_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0038", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_6872952165234631921);

singleeg_6873084106629965041_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"003C", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_6873084106629965041);

singleeg_6873088504676476145_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0044", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_6873088504676476145);

doubleeg_14367282104050956127_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"001E", X"0014", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, doubleeg_14367282104050956127);

doubleeg_14367295298190490335_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"0024", X"0022", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, doubleeg_14367295298190490335);

doubleeg_14367823063771822943_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"0028", X"0024", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, doubleeg_14367823063771822943);

doubleeg_14367831859864844127_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"002C", X"0014", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, doubleeg_14367831859864844127);

doubleeg_14367836257911355231_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"002E", X"0014", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, doubleeg_14367836257911355231);

doubleeg_14367840655957867231_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"0030", X"0022", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, doubleeg_14367840655957867231);

tripleeg_4430569450691365292_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 3, true, EG_TYPE,
        (X"001C", X"0014", X"0010", X"0000"),
        (true, true, true, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, tripleeg_4430569450691365292);

tripleeg_4430569691209534124_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 3, true, EG_TYPE,
        (X"0024", X"0022", X"0010", X"0000"),
        (true, true, true, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, tripleeg_4430569691209534124);

singlejet_20010309814_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0020", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_20010309814);

singlejet_20010309936_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0028", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_20010309936);

singlejet_20010310069_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0046", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_20010310069);

singlejet_20010310448_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0078", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_20010310448);

singlejet_20010310832_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"00B4", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_20010310832);

singlejet_2561319655728_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"00F0", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_2561319655728);

singlejet_2561319655984_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0118", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_2561319655984);

singlejet_2561319656112_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"012C", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_2561319656112);

singlejet_2561319656240_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0140", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_2561319656240);

singlejet_2561319656368_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0154", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_2561319656368);

singlejet_2561319656496_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0168", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_2561319656496);

singlejet_2561319671856_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0190", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_2561319671856);

doublejet_8659156106098952915_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"0050", X"0050", X"0000", X"0000"),
        (false, false, false, false),
        (X"0044", X"0044", X"0000", X"0000"), (X"00BB", X"00BB", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, doublejet_8659156106098952915);

doublejet_8659228673866386131_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"0064", X"0064", X"0000", X"0000"),
        (false, false, false, false),
        (X"0044", X"0044", X"0000", X"0000"), (X"00BB", X"00BB", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, doublejet_8659228673866386131);

doublejet_8659301241633819347_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"0078", X"0078", X"0000", X"0000"),
        (false, false, false, false),
        (X"0044", X"0044", X"0000", X"0000"), (X"00BB", X"00BB", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, doublejet_8659301241633819347);

doublejet_8659446377168685779_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"00A0", X"00A0", X"0000", X"0000"),
        (false, false, false, false),
        (X"0044", X"0044", X"0000", X"0000"), (X"00BB", X"00BB", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, doublejet_8659446377168685779);

doublejet_15894421920862285922_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"00C8", X"00C8", X"0000", X"0000"),
        (false, false, false, false),
        (X"0044", X"0044", X"0000", X"0000"), (X"00BB", X"00BB", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, doublejet_15894421920862285922);

doublejet_15903572090988376162_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"00E0", X"00E0", X"0000", X"0000"),
        (false, false, false, false),
        (X"0044", X"0044", X"0000", X"0000"), (X"00BB", X"00BB", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, doublejet_15903572090988376162);

doublejet_15912440717418279010_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"00F0", X"00F0", X"0000", X"0000"),
        (false, false, false, false),
        (X"0044", X"0044", X"0000", X"0000"), (X"00BB", X"00BB", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, doublejet_15912440717418279010);

doublejet_8659439917537872595_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"00A8", X"0060", X"0000", X"0000"),
        (false, false, false, false),
        (X"0044", X"0044", X"0000", X"0000"), (X"00BB", X"00BB", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, doublejet_8659439917537872595);

singlejet_5974147112830057980_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0088", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0072", X"0000", X"0000", X"0000"), (X"0045", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00BA", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_5974147112830057980);

triplejet_7930354149017105525_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 3, true, JET_TYPE,
        (X"00A8", X"0088", X"0060", X"0000"),
        (false, false, false, false),
        (X"0044", X"0044", X"0044", X"0000"), (X"00BB", X"00BB", X"00BB", X"0000"),
        (true, true, true, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, triplejet_7930354149017105525);

doublejet_8659301379072772819_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"0088", X"0060", X"0000", X"0000"),
        (false, false, false, false),
        (X"0044", X"0044", X"0000", X"0000"), (X"00BB", X"00BB", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, doublejet_8659301379072772819);

doublejet_8659444315584383699_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"00A8", X"0088", X"0000", X"0000"),
        (false, false, false, false),
        (X"0044", X"0044", X"0000", X"0000"), (X"00BB", X"00BB", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, doublejet_8659444315584383699);

singlejet_5974006375341702652_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0060", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0072", X"0000", X"0000", X"0000"), (X"0045", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00BA", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_5974006375341702652);

singlejet_5974285651295157756_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"00A8", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0072", X"0000", X"0000", X"0000"), (X"0045", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00BA", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_5974285651295157756);

triplejet_7930493752634094709_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 3, true, JET_TYPE,
        (X"00B0", X"0090", X"0070", X"0000"),
        (false, false, false, false),
        (X"0044", X"0044", X"0044", X"0000"), (X"00BB", X"00BB", X"00BB", X"0000"),
        (true, true, true, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, triplejet_7930493752634094709);

doublejet_8659448610551679699_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"00B0", X"0090", X"0000", X"0000"),
        (false, false, false, false),
        (X"0044", X"0044", X"0000", X"0000"), (X"00BB", X"00BB", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, doublejet_8659448610551679699);

singlejet_5974075644574252540_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0070", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0072", X"0000", X"0000", X"0000"), (X"0045", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00BA", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_5974075644574252540);

doublejet_8659444281224645331_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"00B0", X"0070", X"0000", X"0000"),
        (false, false, false, false),
        (X"0044", X"0044", X"0000", X"0000"), (X"00BB", X"00BB", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, doublejet_8659444281224645331);

doublejet_8659370613945584339_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"0090", X"0070", X"0000", X"0000"),
        (false, false, false, false),
        (X"0044", X"0044", X"0000", X"0000"), (X"00BB", X"00BB", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, doublejet_8659370613945584339);

singlejet_5974287850318413308_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"00B0", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00BA", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0072", X"0000", X"0000", X"0000"), (X"0045", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_5974287850318413308);

singlejet_5974214183039352316_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0090", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0072", X"0000", X"0000", X"0000"), (X"0045", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00BA", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_5974214183039352316);

singlejet_5974216382062607868_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0098", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0072", X"0000", X"0000", X"0000"), (X"0045", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00BA", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_5974216382062607868);

singlejet_5974354920527707644_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"00B8", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0072", X"0000", X"0000", X"0000"), (X"0045", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00BA", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_5974354920527707644);

singlejet_5974144913806802428_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0080", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0072", X"0000", X"0000", X"0000"), (X"0045", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00BA", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_5974144913806802428);

triplejet_7932644363018286197_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 3, true, JET_TYPE,
        (X"00B8", X"0098", X"0080", X"0000"),
        (false, false, false, false),
        (X"0044", X"0044", X"0044", X"0000"), (X"00BB", X"00BB", X"00BB", X"0000"),
        (true, true, true, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, triplejet_7932644363018286197);

doublejet_8659374977632357075_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"0098", X"0080", X"0000", X"0000"),
        (false, false, false, false),
        (X"0044", X"0044", X"0000", X"0000"), (X"00BB", X"00BB", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, doublejet_8659374977632357075);

doublejet_8659513516097456851_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"00B8", X"0080", X"0000", X"0000"),
        (false, false, false, false),
        (X"0044", X"0044", X"0000", X"0000"), (X"00BB", X"00BB", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, doublejet_8659513516097456851);

doublejet_8659515749480450771_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"00B8", X"0098", X"0000", X"0000"),
        (false, false, false, false),
        (X"0044", X"0044", X"0000", X"0000"), (X"00BB", X"00BB", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, doublejet_8659515749480450771);

quadjet_2751081844007168180_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 4, true, JET_TYPE,
        (X"0050", X"0050", X"0050", X"0050"),
        (false, false, false, false),
        (X"0044", X"0044", X"0044", X"0044"), (X"00BB", X"00BB", X"00BB", X"00BB"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, quadjet_2751081844007168180);

quadjet_2825463805626214580_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 4, true, JET_TYPE,
        (X"0064", X"0064", X"0064", X"0064"),
        (false, false, false, false),
        (X"0044", X"0044", X"0044", X"0044"), (X"00BB", X"00BB", X"00BB", X"00BB"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, quadjet_2825463805626214580);

quadjet_2899845767245260980_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 4, true, JET_TYPE,
        (X"0078", X"0078", X"0078", X"0078"),
        (false, false, false, false),
        (X"0044", X"0044", X"0044", X"0044"), (X"00BB", X"00BB", X"00BB", X"00BB"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, quadjet_2899845767245260980);

singletau_16608844133906550600_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 1, true, TAU_TYPE,
        (X"00A0", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, singletau_16608844133906550600);

singletau_3484211327656040900_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 1, true, TAU_TYPE,
        (X"00C8", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, singletau_3484211327656040900);

singletau_3484215725702552004_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 1, true, TAU_TYPE,
        (X"00F0", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, singletau_3484215725702552004);

doubletau_10196652208393370350_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 2, true, TAU_TYPE,
        (X"0034", X"0034", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0030", X"0000", X"0000"), (X"00CF", X"00CF", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"E", X"E", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, doubletau_10196652208393370350);

doubletau_14808338227894500078_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 2, true, TAU_TYPE,
        (X"0038", X"0038", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0030", X"0000", X"0000"), (X"00CF", X"00CF", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"E", X"E", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, doubletau_14808338227894500078);

doubletau_14808338292319009533_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 2, true, TAU_TYPE,
        (X"003C", X"003C", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0030", X"0000", X"0000"), (X"00CF", X"00CF", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"E", X"E", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, doubletau_14808338292319009533);

doubletau_973280238110587646_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 2, true, TAU_TYPE,
        (X"0040", X"0040", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0030", X"0000", X"0000"), (X"00CF", X"00CF", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"E", X"E", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, doubletau_973280238110587646);

doubletau_12502495218143935214_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 2, true, TAU_TYPE,
        (X"0036", X"0036", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0030", X"0000", X"0000"), (X"00CF", X"00CF", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"E", X"E", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, doubletau_12502495218143935214);

doubletau_17114181237645064942_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 2, true, TAU_TYPE,
        (X"003A", X"003A", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0030", X"0000", X"0000"), (X"00CF", X"00CF", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"E", X"E", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, doubletau_17114181237645064942);

doubletau_15233202657361500387_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 2, true, TAU_TYPE,
        (X"0064", X"0064", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0030", X"0000", X"0000"), (X"00CF", X"00CF", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, doubletau_15233202657361500387);

singleeg_145873200_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0028", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_145873200);

singleeg_145873203_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"002E", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_145873203);

singleeg_12507579852056532032_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0024", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_12507579852056532032);

singleeg_12507579852182361152_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0028", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_12507579852182361152);

singleeg_145873072_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0014", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_145873072);

singleeg_145873079_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0022", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_145873079);

singleeg_12507579852048143424_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0014", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_12507579852048143424);

singletau_16608830939767017288_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 1, true, TAU_TYPE,
        (X"0028", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, singletau_16608830939767017288);

singletau_16608831008486494024_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 1, true, TAU_TYPE,
        (X"0030", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, singletau_16608831008486494024);

singletau_218368042610145022_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 1, true, TAU_TYPE,
        (X"0034", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, singletau_218368042610145022);

singleeg_145873076_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"001C", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_145873076);

singleeg_1139639_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"000E", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_1139639);

doubleeg_14367290900143979231_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"0022", X"0022", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, doubleeg_14367290900143979231);

doubleeg_14367260113818400607_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"0014", X"0014", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, doubleeg_14367260113818400607);

singleeg_14262501742930627507_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0036", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_14262501742930627507);

singleeg_14262501742662192051_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0032", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_14262501742662192051);

doubleeg_8902241742241126126_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"000C", X"000C", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, doubleeg_8902241742241126126);

quadjet_2680186536839014580_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 4, true, JET_TYPE,
        (X"0048", X"0048", X"0048", X"0048"),
        (false, false, false, false),
        (X"0044", X"0044", X"0044", X"0044"), (X"00BB", X"00BB", X"00BB", X"00BB"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, quadjet_2680186536839014580);

singletau_22686292658_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 1, true, TAU_TYPE,
        (X"0068", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, singletau_22686292658);

singlejet_5967545327155853511_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0040", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0044", X"0000", X"0000", X"0000"), (X"00BB", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_5967545327155853511);

singleeg_1139634_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0004", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_1139634);

singlejet_156330552_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0010", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_156330552);

singlejet_20010309810_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0018", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_20010309810);

doubleeg_14367831859864844383_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"002C", X"0018", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, doubleeg_14367831859864844383);

doubleeg_14367831859864844767_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"002C", X"001E", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, doubleeg_14367831859864844767);

singleeg_145873077_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"001E", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_145873077);

singlejet_5967545309707548871_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0028", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0044", X"0000", X"0000", X"0000"), (X"00BB", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_5967545309707548871);

singlejet_5967545327692724423_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0048", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0044", X"0000", X"0000", X"0000"), (X"00BB", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_5967545327692724423);

doublejet_5010010172296896555_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"0010", X"0010", X"0000", X"0000"),
        (false, false, false, false),
        (X"00BA", X"0072", X"0000", X"0000"), (X"008D", X"0045", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, doublejet_5010010172296896555);

doublejet_8281320341886584868_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"0018", X"0018", X"0000", X"0000"),
        (false, false, false, false),
        (X"00BA", X"0072", X"0000", X"0000"), (X"008D", X"0045", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, doublejet_8281320341886584868);

doublejet_8281320350476519461_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"0020", X"0020", X"0000", X"0000"),
        (false, false, false, false),
        (X"00BA", X"0072", X"0000", X"0000"), (X"008D", X"0045", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, doublejet_8281320350476519461);

singlejet_5967545293332986055_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0020", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0044", X"0000", X"0000", X"0000"), (X"00BB", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_5967545293332986055);

singlejet_5967545378427025607_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0078", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0044", X"0000", X"0000", X"0000"), (X"00BB", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_5967545378427025607);

singlejet_15014918520304220377_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"00F0", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0044", X"0000", X"0000", X"0000"), (X"00BB", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_15014918520304220377);


singlemu_14769293139955716549_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"000F", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        singlemu_14769293139955716549);

singlemu_17545683093852819909_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"001D", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        singlemu_17545683093852819909);

singlemu_17545683128212558277_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0021", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        singlemu_17545683128212558277);

singlemu_17545683162572296645_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0025", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        singlemu_17545683162572296645);

singlemu_17545685258516337093_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"002D", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        singlemu_17545685258516337093);

singlemu_17545685310055944645_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0033", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        singlemu_17545685310055944645);

singlemu_17545687423179854277_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"003D", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        singlemu_17545687423179854277);

singlemu_17545683021081726533_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0015", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FF00", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        singlemu_17545683021081726533);

singlemu_7109620049583097248_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"001D", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00C1", X"0000", X"0000", X"0000"), (X"013F", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        singlemu_7109620049583097248);

singlemu_7145648846602061216_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0021", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00C1", X"0000", X"0000", X"0000"), (X"013F", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        singlemu_7145648846602061216);

singlemu_9379434261777827232_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"002D", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00C1", X"0000", X"0000", X"0000"), (X"013F", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        singlemu_9379434261777827232);

singlemu_9433477457306273184_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0033", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00C1", X"0000", X"0000", X"0000"), (X"013F", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        singlemu_9433477457306273184);

singlemu_11649248473972557216_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"003D", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00C1", X"0000", X"0000", X"0000"), (X"013F", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        singlemu_11649248473972557216);

doublemu_14585778097856672575_i: entity work.muon_conditions_v3
    generic map(2 , true,
        (X"0001", X"0001", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FFF0", X"FFF0", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        doublemu_14585778097856672575);

doublemu_14585777620730815295_i: entity work.muon_conditions_v3
    generic map(2 , true,
        (X"0001", X"0001", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FF00", X"FF00", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        doublemu_14585777620730815295);

doublemu_16961145543694661636_i: entity work.muon_conditions_v3
    generic map(2 , true,
        (X"0015", X"0001", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FF00", X"FFF0", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        doublemu_16961145543694661636);

doublemu_18206240164090448142_i: entity work.muon_conditions_v3
    generic map(2 , true,
        (X"0015", X"0008", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FF00", X"FF00", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        doublemu_18206240164090448142);

doublemu_16961154507842811908_i: entity work.muon_conditions_v3
    generic map(2 , true,
        (X"0017", X"0009", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FF00", X"FF00", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        doublemu_16961154507842811908);

doublemu_16961157256621881348_i: entity work.muon_conditions_v3
    generic map(2 , true,
        (X"0019", X"000B", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FF00", X"FF00", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        doublemu_16961157256621881348);

doublemu_16961160005400950788_i: entity work.muon_conditions_v3
    generic map(2 , true,
        (X"001B", X"000D", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FF00", X"FF00", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        doublemu_16961160005400950788);

doublemu_16961158905889323012_i: entity work.muon_conditions_v3
    generic map(2 , true,
        (X"001F", X"000B", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FF00", X"FF00", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        doublemu_16961158905889323012);

doublemu_16961163853691648004_i: entity work.muon_conditions_v3
    generic map(2 , true,
        (X"0019", X"0011", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FF00", X"FF00", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        doublemu_16961163853691648004);

triplemu_3324682852515662879_i: entity work.muon_conditions_v3
    generic map(3 , true,
        (X"0001", X"0001", X"0001", X"0000"),
        (true, true, true, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FF00", X"FF00", X"FF00", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        triplemu_3324682852515662879);

triplemu_3324692885559266335_i: entity work.muon_conditions_v3
    generic map(3 , true,
        (X"000B", X"000B", X"0007", X"0000"),
        (true, true, true, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FF00", X"FF00", X"FF00", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        triplemu_3324692885559266335);

quadmu_509409160461874775_i: entity work.muon_conditions_v3
    generic map(4 , true,
        (X"0001", X"0001", X"0001", X"0001"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FF00", X"FF00", X"FF00", X"FF00"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        quadmu_509409160461874775);

singlemu_14769293105595978181_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"000B", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        singlemu_14769293105595978181);

singlemu_17545683059493081541_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0019", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        singlemu_17545683059493081541);

singlemu_17545685275696206277_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"002F", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        singlemu_17545685275696206277);

singlemu_7181677643621025184_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0025", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00C1", X"0000", X"0000", X"0000"), (X"013F", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        singlemu_7181677643621025184);

singlemu_9343405464758863264_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0029", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00C1", X"0000", X"0000", X"0000"), (X"013F", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        singlemu_9343405464758863264);

doublemu_14585796862184301375_i: entity work.muon_conditions_v3
    generic map(2 , true,
        (X"000F", X"000F", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FF00", X"FF00", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        doublemu_14585796862184301375);

singlemu_14769293122775847365_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"000D", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        singlemu_14769293122775847365);

singlemu_14769293157135585733_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0011", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        singlemu_14769293157135585733);

singlemu_16260934492399787300_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0001", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00C1", X"0000", X"0000", X"0000"), (X"013F", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        singlemu_16260934492399787300);

singlemu_7037562455545169312_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0015", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00C1", X"0000", X"0000", X"0000"), (X"013F", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        singlemu_7037562455545169312);

singlemu_17545685224156598725_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0029", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        singlemu_17545685224156598725);

singlemu_14769293018627052229_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0001", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FFF0", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        singlemu_14769293018627052229);

singlemu_14769293071236239813_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0007", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        singlemu_14769293071236239813);

singlemu_1272496_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0001", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
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
        singlemu_1272496);


singlehtt_2496626710832_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"00F0",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, singlehtt_2496626710832);

singlehtt_2496626711344_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0140",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, singlehtt_2496626711344);

singlehtt_2496626726960_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0190",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, singlehtt_2496626726960);

singlehtt_2496626727472_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"01E0",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, singlehtt_2496626727472);

singlehtt_2496626727605_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"01FE",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, singlehtt_2496626727605);

singlehtt_2496626727856_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"021C",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, singlehtt_2496626727856);

singlehtt_2496626727984_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0230",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, singlehtt_2496626727984);

singlehtt_2496626743344_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0258",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, singlehtt_2496626743344);

singlehtt_2496626743600_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0280",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, singlehtt_2496626743600);

singleetm_18699476016_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00A0",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, singleetm_18699476016);

singleetm_18699476144_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00B4",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, singleetm_18699476144);

singlehtm_19504782000_i: entity work.esums_conditions
    generic map(true, HTM_TYPE,
        X"0064",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htm_bx_0, singlehtm_19504782000);

singlehtm_19504782256_i: entity work.esums_conditions
    generic map(true, HTM_TYPE,
        X"008C",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htm_bx_0, singlehtm_19504782256);

singlehtm_2496612030512_i: entity work.esums_conditions
    generic map(true, HTM_TYPE,
        X"00C8",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htm_bx_0, singlehtm_2496612030512);

singlehtm_2496612030768_i: entity work.esums_conditions
    generic map(true, HTM_TYPE,
        X"00F0",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htm_bx_0, singlehtm_2496612030768);

singlehtm_2496612030896_i: entity work.esums_conditions
    generic map(true, HTM_TYPE,
        X"0104",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htm_bx_0, singlehtm_2496612030896);

singlehtm_2496612031024_i: entity work.esums_conditions
    generic map(true, HTM_TYPE,
        X"0118",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htm_bx_0, singlehtm_2496612031024);

singlehtm_2496612031152_i: entity work.esums_conditions
    generic map(true, HTM_TYPE,
        X"012C",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htm_bx_0, singlehtm_2496612031152);

singleett_18699589941_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0032",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, singleett_18699589941);

singleetm_18699475504_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"0050",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, singleetm_18699475504);

singleetm_18699475632_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"0064",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, singleetm_18699475632);

singleetm_18699475760_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"0078",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, singleetm_18699475760);

singleetm_18699475888_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"008C",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, singleetm_18699475888);

singleetm_2393532815408_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00C8",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, singleetm_2393532815408);

singleetm_2393532815664_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00F0",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, singleetm_2393532815664);

singlehtt_2496626711216_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"012C",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, singlehtt_2496626711216);

singlehtt_2496626710837_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"00FA",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, singlehtt_2496626710837);

singleetm_18699475637_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"006E",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, singleetm_18699475637);

singleetm_18699475376_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"003C",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, singleetm_18699475376);

singlehtt_2496626727216_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"01B8",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, singlehtt_2496626727216);

singlehtm_19504782384_i: entity work.esums_conditions
    generic map(true, HTM_TYPE,
        X"00A0",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htm_bx_0, singlehtm_19504782384);

singlehtt_2496626727728_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0208",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, singlehtt_2496626727728);

singlehtm_19504782128_i: entity work.esums_conditions
    generic map(true, HTM_TYPE,
        X"0078",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htm_bx_0, singlehtm_19504782128);

singleett_18699590069_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0046",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, singleett_18699590069);

singleett_18699590320_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0064",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, singleett_18699590320);

singleett_18699590448_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0078",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, singleett_18699590448);


calocalocorrelation_2085349615869404806_i: entity work.calo_calo_correlation_condition
  generic map(
    true,
	  true, false, false, false,
	  NR_EG_OBJECTS, true, EG_TYPE,
    X"002C",
    false, X"0030", X"00CF",
    true, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
	  X"E",
	  NR_TAU_OBJECTS, true, TAU_TYPE,
    X"0028",
    false, X"0030", X"00CF",
    true, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
	  X"F",
    10.0, 0.2,
    0.0, 0.0,
    0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, EG_TAU_DETA_DPHI_PRECISION,
    0.0, 0.0, EG_TAU_INV_MASS_PRECISION,
    EG_PT_VECTOR_WIDTH, TAU_PT_VECTOR_WIDTH, EG_TAU_COSH_COS_PRECISION, EG_TAU_COSH_COS_VECTOR_WIDTH
  )
  port map(lhc_clk, eg_bx_0, tau_bx_0,
	         diff_eg_tau_bx_0_bx_0_eta_vector, diff_eg_tau_bx_0_bx_0_phi_vector,
           eg_pt_vector_bx_0, tau_pt_vector_bx_0, 
           eg_tau_bx_0_bx_0_cosh_deta_vector, eg_tau_bx_0_bx_0_cos_dphi_vector,
	         calocalocorrelation_2085349615869404806);

calomuoncorrelation_16240387826857744385_i: entity work.calo_muon_correlation_condition
  generic map(
    true, true, false, false,
    NR_JET_OBJECTS, true, JET_TYPE,
	  X"0020",
    false, X"0044",X"00BB",
    true, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
    X"F",	
	  true,
    X"0007",
    true, X"0000",X"0000",
    false, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
	  "ign", X"F000", X"F",
    0.4, 0.0,
    0.4, 0.0,
    0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, JET_MUON_DETA_DPHI_PRECISION,
    0.0, 0.0, JET_MUON_INV_MASS_PRECISION,
    JET_PT_VECTOR_WIDTH, MUON_PT_VECTOR_WIDTH, JET_MUON_COSH_COS_PRECISION, JET_MUON_COSH_COS_VECTOR_WIDTH
    )
  port map(lhc_clk, jet_bx_0, mu_bx_0,
	         diff_jet_mu_bx_0_bx_0_eta_vector, diff_jet_mu_bx_0_bx_0_phi_vector, 
           jet_pt_vector_bx_0, mu_pt_vector_bx_0, jet_mu_bx_0_bx_0_cosh_deta_vector, jet_mu_bx_0_bx_0_cos_dphi_vector,
	         calomuoncorrelation_16240387826857744385);
calomuoncorrelation_16240389188362377217_i: entity work.calo_muon_correlation_condition
  generic map(
    true, true, false, false,
    NR_JET_OBJECTS, true, JET_TYPE,
	  X"0078",
    false, X"0044",X"00BB",
    true, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
    X"F",	
	  true,
    X"0007",
    true, X"0000",X"0000",
    false, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
	  "ign", X"F000", X"F",
    0.4, 0.0,
    0.4, 0.0,
    0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, JET_MUON_DETA_DPHI_PRECISION,
    0.0, 0.0, JET_MUON_INV_MASS_PRECISION,
    JET_PT_VECTOR_WIDTH, MUON_PT_VECTOR_WIDTH, JET_MUON_COSH_COS_PRECISION, JET_MUON_COSH_COS_VECTOR_WIDTH
    )
  port map(lhc_clk, jet_bx_0, mu_bx_0,
	         diff_jet_mu_bx_0_bx_0_eta_vector, diff_jet_mu_bx_0_bx_0_phi_vector, 
           jet_pt_vector_bx_0, mu_pt_vector_bx_0, jet_mu_bx_0_bx_0_cosh_deta_vector, jet_mu_bx_0_bx_0_cos_dphi_vector,
	         calomuoncorrelation_16240389188362377217);
calomuoncorrelation_1318858389454035588_i: entity work.calo_muon_correlation_condition
  generic map(
    false, true, false, false,
    NR_JET_OBJECTS, true, JET_TYPE,
	  X"0040",
    true, X"0000",X"0000",
    false, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
    X"F",	
	  true,
    X"0001",
    true, X"0000",X"0000",
    false, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
	  "ign", X"FFF0", X"F",
    0.0, 0.0,
    0.4, 0.0,
    0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, JET_MUON_DETA_DPHI_PRECISION,
    0.0, 0.0, JET_MUON_INV_MASS_PRECISION,
    JET_PT_VECTOR_WIDTH, MUON_PT_VECTOR_WIDTH, JET_MUON_COSH_COS_PRECISION, JET_MUON_COSH_COS_VECTOR_WIDTH
    )
  port map(lhc_clk, jet_bx_0, mu_bx_0,
	         diff_jet_mu_bx_0_bx_0_eta_vector, diff_jet_mu_bx_0_bx_0_phi_vector, 
           jet_pt_vector_bx_0, mu_pt_vector_bx_0, jet_mu_bx_0_bx_0_cosh_deta_vector, jet_mu_bx_0_bx_0_cos_dphi_vector,
	         calomuoncorrelation_1318858389454035588);
calomuoncorrelation_1201630304223198732_i: entity work.calo_muon_correlation_condition
  generic map(
    false, true, false, false,
    NR_EG_OBJECTS, true, EG_TYPE,
	  X"0014",
    true, X"0000",X"0000",
    false, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
    X"F",	
	  true,
    X"0001",
    true, X"0000",X"0000",
    false, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
	  "ign", X"FFF0", X"F",
    0.0, 0.0,
    3.15, 1.0,
    0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, EG_MUON_DETA_DPHI_PRECISION,
    0.0, 0.0, EG_MUON_INV_MASS_PRECISION,
    EG_PT_VECTOR_WIDTH, MUON_PT_VECTOR_WIDTH, EG_MUON_COSH_COS_PRECISION, EG_MUON_COSH_COS_VECTOR_WIDTH
    )
  port map(lhc_clk, eg_bx_0, mu_bx_0,
	         diff_eg_mu_bx_0_bx_0_eta_vector, diff_eg_mu_bx_0_bx_0_phi_vector, 
           eg_pt_vector_bx_0, mu_pt_vector_bx_0, eg_mu_bx_0_bx_0_cosh_deta_vector, eg_mu_bx_0_bx_0_cos_dphi_vector,
	         calomuoncorrelation_1201630304223198732);
calomuoncorrelation_15993852978349077723_i: entity work.calo_muon_correlation_condition
  generic map(
    true, true, false, false,
    NR_JET_OBJECTS, true, JET_TYPE,
	  X"00F0",
    false, X"0044",X"00BB",
    true, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
    X"F",	
	  true,
    X"0007",
    true, X"0000",X"0000",
    false, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
	  "ign", X"F000", X"F",
    0.4, 0.0,
    0.4, 0.0,
    0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, JET_MUON_DETA_DPHI_PRECISION,
    0.0, 0.0, JET_MUON_INV_MASS_PRECISION,
    JET_PT_VECTOR_WIDTH, MUON_PT_VECTOR_WIDTH, JET_MUON_COSH_COS_PRECISION, JET_MUON_COSH_COS_VECTOR_WIDTH
    )
  port map(lhc_clk, jet_bx_0, mu_bx_0,
	         diff_jet_mu_bx_0_bx_0_eta_vector, diff_jet_mu_bx_0_bx_0_phi_vector, 
           jet_pt_vector_bx_0, mu_pt_vector_bx_0, jet_mu_bx_0_bx_0_cosh_deta_vector, jet_mu_bx_0_bx_0_cos_dphi_vector,
	         calomuoncorrelation_15993852978349077723);

muonmuoncorrelation_16040223250608453060_i: entity work.muon_muon_correlation_condition
  generic map(
    true,
	  true, false, false, false,
	  true,
    X"0001",
    false, X"0093", X"016D",
    true, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",  
	  "ign", X"FF00", X"F",	
	  true,
    X"0001",
    false, X"0093",X"016D",
    true, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",  
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
	         muonmuoncorrelation_16040223250608453060);
muonmuoncorrelation_8008405571232419574_i: entity work.muon_muon_correlation_condition
  generic map(
    true,
	  true, false, false, false,
	  true,
    X"0001",
    false, X"0093", X"016D",
    true, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",  
	  "ign", X"FF00", X"F",	
	  true,
    X"0001",
    false, X"0093",X"016D",
    true, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",  
	  "ign", X"FF00", X"F",
	  "os",
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
	         muonmuoncorrelation_8008405571232419574);
muonmuoncorrelation_8772456668275224612_i: entity work.muon_muon_correlation_condition
  generic map(
    true,
	  true, false, false, false,
	  true,
    X"0015",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",  
	  "ign", X"FF00", X"F",	
	  true,
    X"0001",
    true, X"0000",X"0000",
    false, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",  
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
	         muonmuoncorrelation_8772456668275224612);
muonmuoncorrelation_16683739788801056592_i: entity work.muon_muon_correlation_condition
  generic map(
    true,
	  false, true, false, false,
	  true,
    X"0001",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",  
	  "ign", X"FFF0", X"F",	
	  true,
    X"0015",
    true, X"0000",X"0000",
    false, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",  
	  "ign", X"FF00", X"F",
	  "ig",
    0.0, 0.0,
    3.15, 1.0,
    0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, MUON_MUON_DETA_DPHI_PRECISION,
    0.0, 0.0, MUON_MUON_INV_MASS_PRECISION, MUON_PT_VECTOR_WIDTH, MUON_MUON_COSH_COS_PRECISION, MUON_MUON_COSH_COS_VECTOR_WIDTH
  )
  port map(lhc_clk, mu_bx_0, mu_bx_0,
           ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
	         diff_mu_mu_bx_0_bx_0_eta_vector, diff_mu_mu_bx_0_bx_0_phi_vector, 
           mu_pt_vector_bx_0, mu_pt_vector_bx_0,
           mu_mu_bx_0_bx_0_cosh_deta_vector, mu_mu_bx_0_bx_0_cos_dphi_vector,
	         muonmuoncorrelation_16683739788801056592);

caloesumcorrelation_16768129600163955985_i: entity work.calo_esums_correlation_condition
  generic map(
	  NR_JET_OBJECTS, true, JET_TYPE,
    X"0078",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
	  X"F",
    true, ETM_TYPE,
    X"0078",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
    3.15, 0.4, DETA_DPHI_VECTOR_WIDTH_ALL, JET_ETM_DPHI_PRECISION
  )
  port map(lhc_clk, jet_bx_0, etm_bx_0,
	         diff_jet_etm_bx_0_bx_0_phi_vector,
	         caloesumcorrelation_16768129600163955985);


singlembt0hfp_43640316738250801_i: entity work.min_bias_hf_conditions
    generic map(true, MBT0HFP_TYPE, X"1")
    port map(lhc_clk, mbt0hfp_bx_0, singlembt0hfp_43640316738250801);

singlembt0hfm_43640316738250417_i: entity work.min_bias_hf_conditions
    generic map(true, MBT0HFM_TYPE, X"1")
    port map(lhc_clk, mbt0hfm_bx_0, singlembt0hfm_43640316738250417);

singlembt1hfm_43640317006685873_i: entity work.min_bias_hf_conditions
    generic map(true, MBT1HFM_TYPE, X"1")
    port map(lhc_clk, mbt1hfm_bx_0, singlembt1hfm_43640317006685873);

singlembt1hfp_43640317006686257_i: entity work.min_bias_hf_conditions
    generic map(true, MBT1HFP_TYPE, X"1")
    port map(lhc_clk, mbt1hfp_bx_0, singlembt1hfp_43640317006686257);



-- Instantiations of algorithms
L1_ZeroBias <= ext_cond_bx_0(32);
algo(0) <= L1_ZeroBias;
L1_SingleMuOpen <= singlemu_14769293018627052229;
algo(1) <= L1_SingleMuOpen;
L1_SingleMu3 <= singlemu_14769293071236239813;
algo(2) <= L1_SingleMu3;
L1_SingleMu5 <= singlemu_14769293105595978181;
algo(3) <= L1_SingleMu5;
L1_SingleMu7 <= singlemu_14769293139955716549;
algo(4) <= L1_SingleMu7;
L1_SingleMu12 <= singlemu_17545683059493081541;
algo(5) <= L1_SingleMu12;
L1_SingleMu14 <= singlemu_17545683093852819909;
algo(6) <= L1_SingleMu14;
L1_SingleMu16 <= singlemu_17545683128212558277;
algo(7) <= L1_SingleMu16;
L1_SingleMu18 <= singlemu_17545683162572296645;
algo(8) <= L1_SingleMu18;
L1_SingleMu20 <= singlemu_17545685224156598725;
algo(9) <= L1_SingleMu20;
L1_SingleMu22 <= singlemu_17545685258516337093;
algo(10) <= L1_SingleMu22;
L1_SingleMu25 <= singlemu_17545685310055944645;
algo(11) <= L1_SingleMu25;
L1_SingleMu30 <= singlemu_17545687423179854277;
algo(12) <= L1_SingleMu30;
L1_SingleMu10_LowQ <= singlemu_17545683021081726533;
algo(13) <= L1_SingleMu10_LowQ;
L1_SingleMu14er <= singlemu_7109620049583097248;
algo(14) <= L1_SingleMu14er;
L1_SingleMu16er <= singlemu_7145648846602061216;
algo(15) <= L1_SingleMu16er;
L1_SingleMu18er <= singlemu_7181677643621025184;
algo(16) <= L1_SingleMu18er;
L1_SingleMu20er <= singlemu_9343405464758863264;
algo(17) <= L1_SingleMu20er;
L1_SingleMu22er <= singlemu_9379434261777827232;
algo(18) <= L1_SingleMu22er;
L1_SingleMu25er <= singlemu_9433477457306273184;
algo(19) <= L1_SingleMu25er;
L1_SingleMu30er <= singlemu_11649248473972557216;
algo(20) <= L1_SingleMu30er;
L1_DoubleMuOpen <= doublemu_14585778097856672575;
algo(21) <= L1_DoubleMuOpen;
L1_DoubleMu0 <= doublemu_14585777620730815295;
algo(22) <= L1_DoubleMu0;
L1_DoubleMu_10_Open <= doublemu_16961145543694661636;
algo(23) <= L1_DoubleMu_10_Open;
L1_DoubleMu_10_3p5 <= doublemu_18206240164090448142;
algo(24) <= L1_DoubleMu_10_3p5;
L1_DoubleMu_11_4 <= doublemu_16961154507842811908;
algo(25) <= L1_DoubleMu_11_4;
L1_DoubleMu_12_5 <= doublemu_16961157256621881348;
algo(26) <= L1_DoubleMu_12_5;
L1_DoubleMu_13_6 <= doublemu_16961160005400950788;
algo(27) <= L1_DoubleMu_13_6;
L1_DoubleMu_15_5 <= doublemu_16961158905889323012;
algo(28) <= L1_DoubleMu_15_5;
L1_DoubleMu_12_8 <= doublemu_16961163853691648004;
algo(29) <= L1_DoubleMu_12_8;
L1_DoubleMu0er1p6_dEta_Max1p8 <= muonmuoncorrelation_16040223250608453060;
algo(30) <= L1_DoubleMu0er1p6_dEta_Max1p8;
L1_DoubleMu0er1p6_dEta_Max1p8_OS <= muonmuoncorrelation_8008405571232419574;
algo(31) <= L1_DoubleMu0er1p6_dEta_Max1p8_OS;
L1_DoubleMu_10_0_dEta_Max1p8 <= muonmuoncorrelation_8772456668275224612;
algo(32) <= L1_DoubleMu_10_0_dEta_Max1p8;
L1_TripleMu0 <= triplemu_3324682852515662879;
algo(33) <= L1_TripleMu0;
L1_TripleMu_5_5_3 <= triplemu_3324692885559266335;
algo(34) <= L1_TripleMu_5_5_3;
L1_QuadMu0 <= quadmu_509409160461874775;
algo(35) <= L1_QuadMu0;
L1_SingleEG5 <= singleeg_1139637;
algo(36) <= L1_SingleEG5;
L1_SingleEG10 <= singleeg_145873072;
algo(37) <= L1_SingleEG10;
L1_SingleEG15 <= singleeg_145873077;
algo(38) <= L1_SingleEG15;
L1_SingleEG18 <= singleeg_145873080;
algo(39) <= L1_SingleEG18;
L1_SingleEG24 <= singleeg_145873204;
algo(40) <= L1_SingleEG24;
L1_SingleEG26 <= singleeg_145873206;
algo(41) <= L1_SingleEG26;
L1_SingleEG28 <= singleeg_145873208;
algo(42) <= L1_SingleEG28;
L1_SingleEG30 <= singleeg_145873328;
algo(43) <= L1_SingleEG30;
L1_SingleEG34 <= singleeg_145873332;
algo(44) <= L1_SingleEG34;
L1_SingleEG40 <= singleeg_145873456;
algo(45) <= L1_SingleEG40;
L1_SingleEG45 <= singleeg_145873461;
algo(46) <= L1_SingleEG45;
L1_SingleIsoEG18 <= singleeg_12507579852056532032;
algo(47) <= L1_SingleIsoEG18;
L1_SingleIsoEG20 <= singleeg_12507579852182361152;
algo(48) <= L1_SingleIsoEG20;
L1_SingleIsoEG22 <= singleeg_12507579852184458304;
algo(49) <= L1_SingleIsoEG22;
L1_SingleIsoEG24 <= singleeg_12507579852186555456;
algo(50) <= L1_SingleIsoEG24;
L1_SingleIsoEG26 <= singleeg_12507579852188652608;
algo(51) <= L1_SingleIsoEG26;
L1_SingleIsoEG28 <= singleeg_12507579852190749760;
algo(52) <= L1_SingleIsoEG28;
L1_SingleIsoEG30 <= singleeg_12507579852316578880;
algo(53) <= L1_SingleIsoEG30;
L1_SingleIsoEG34 <= singleeg_12507579852320773184;
algo(54) <= L1_SingleIsoEG34;
L1_SingleIsoEG18er <= singleeg_6872811427746276593;
algo(55) <= L1_SingleIsoEG18er;
L1_SingleIsoEG20er <= singleeg_6872943369141609713;
algo(56) <= L1_SingleIsoEG20er;
L1_SingleIsoEG22er <= singleeg_6872945568164865265;
algo(57) <= L1_SingleIsoEG22er;
L1_SingleIsoEG24er <= singleeg_6872947767188120817;
algo(58) <= L1_SingleIsoEG24er;
L1_SingleIsoEG26er <= singleeg_6872949966211376369;
algo(59) <= L1_SingleIsoEG26er;
L1_SingleIsoEG28er <= singleeg_6872952165234631921;
algo(60) <= L1_SingleIsoEG28er;
L1_SingleIsoEG30er <= singleeg_6873084106629965041;
algo(61) <= L1_SingleIsoEG30er;
L1_SingleIsoEG34er <= singleeg_6873088504676476145;
algo(62) <= L1_SingleIsoEG34er;
L1_DoubleEG_15_10 <= doubleeg_14367282104050956127;
algo(63) <= L1_DoubleEG_15_10;
L1_DoubleEG_18_17 <= doubleeg_14367295298190490335;
algo(64) <= L1_DoubleEG_18_17;
L1_DoubleEG_20_18 <= doubleeg_14367823063771822943;
algo(65) <= L1_DoubleEG_20_18;
L1_DoubleEG_22_10 <= doubleeg_14367831859864844127;
algo(66) <= L1_DoubleEG_22_10;
L1_DoubleEG_23_10 <= doubleeg_14367836257911355231;
algo(67) <= L1_DoubleEG_23_10;
L1_DoubleEG_24_17 <= doubleeg_14367840655957867231;
algo(68) <= L1_DoubleEG_24_17;
L1_TripleEG_14_10_8 <= tripleeg_4430569450691365292;
algo(69) <= L1_TripleEG_14_10_8;
L1_TripleEG_18_17_8 <= tripleeg_4430569691209534124;
algo(70) <= L1_TripleEG_18_17_8;
L1_SingleJet16 <= singlejet_20010309814;
algo(71) <= L1_SingleJet16;
L1_SingleJet20 <= singlejet_20010309936;
algo(72) <= L1_SingleJet20;
L1_SingleJet35 <= singlejet_20010310069;
algo(73) <= L1_SingleJet35;
L1_SingleJet60 <= singlejet_20010310448;
algo(74) <= L1_SingleJet60;
L1_SingleJet90 <= singlejet_20010310832;
algo(75) <= L1_SingleJet90;
L1_SingleJet120 <= singlejet_2561319655728;
algo(76) <= L1_SingleJet120;
L1_SingleJet140 <= singlejet_2561319655984;
algo(77) <= L1_SingleJet140;
L1_SingleJet150 <= singlejet_2561319656112;
algo(78) <= L1_SingleJet150;
L1_SingleJet160 <= singlejet_2561319656240;
algo(79) <= L1_SingleJet160;
L1_SingleJet170 <= singlejet_2561319656368;
algo(80) <= L1_SingleJet170;
L1_SingleJet180 <= singlejet_2561319656496;
algo(81) <= L1_SingleJet180;
L1_SingleJet200 <= singlejet_2561319671856;
algo(82) <= L1_SingleJet200;
L1_DoubleJetC40 <= doublejet_8659156106098952915;
algo(83) <= L1_DoubleJetC40;
L1_DoubleJetC50 <= doublejet_8659228673866386131;
algo(84) <= L1_DoubleJetC50;
L1_DoubleJetC60 <= doublejet_8659301241633819347;
algo(85) <= L1_DoubleJetC60;
L1_DoubleJetC80 <= doublejet_8659446377168685779;
algo(86) <= L1_DoubleJetC80;
L1_DoubleJetC100 <= doublejet_15894421920862285922;
algo(87) <= L1_DoubleJetC100;
L1_DoubleJetC112 <= doublejet_15903572090988376162;
algo(88) <= L1_DoubleJetC112;
L1_DoubleJetC120 <= doublejet_15912440717418279010;
algo(89) <= L1_DoubleJetC120;
L1_TripleJet_84_68_48_VBF <= triplejet_7930354149017105525 or (doublejet_8659444315584383699 and singlejet_5974006375341702652) or (doublejet_8659439917537872595 and singlejet_5974147112830057980) or (doublejet_8659301379072772819 and singlejet_5974285651295157756);
algo(90) <= L1_TripleJet_84_68_48_VBF;
L1_TripleJet_88_72_56_VBF <= triplejet_7930493752634094709 or (doublejet_8659448610551679699 and singlejet_5974075644574252540) or (doublejet_8659444281224645331 and singlejet_5974214183039352316) or (doublejet_8659370613945584339 and singlejet_5974287850318413308);
algo(91) <= L1_TripleJet_88_72_56_VBF;
L1_TripleJet_92_76_64_VBF <= triplejet_7932644363018286197 or (doublejet_8659515749480450771 and singlejet_5974144913806802428) or (doublejet_8659513516097456851 and singlejet_5974216382062607868) or (doublejet_8659374977632357075 and singlejet_5974354920527707644);
algo(92) <= L1_TripleJet_92_76_64_VBF;
L1_QuadJetC40 <= quadjet_2751081844007168180;
algo(93) <= L1_QuadJetC40;
L1_QuadJetC50 <= quadjet_2825463805626214580;
algo(94) <= L1_QuadJetC50;
L1_QuadJetC60 <= quadjet_2899845767245260980;
algo(95) <= L1_QuadJetC60;
L1_SingleTau80er <= singletau_16608844133906550600;
algo(96) <= L1_SingleTau80er;
L1_SingleTau100er <= singletau_3484211327656040900;
algo(97) <= L1_SingleTau100er;
L1_SingleTau120er <= singletau_3484215725702552004;
algo(98) <= L1_SingleTau120er;
L1_DoubleIsoTau26er <= doubletau_10196652208393370350;
algo(99) <= L1_DoubleIsoTau26er;
L1_DoubleIsoTau28er <= doubletau_14808338227894500078;
algo(100) <= L1_DoubleIsoTau28er;
L1_DoubleIsoTau30er <= doubletau_14808338292319009533;
algo(101) <= L1_DoubleIsoTau30er;
L1_DoubleIsoTau32er <= doubletau_973280238110587646;
algo(102) <= L1_DoubleIsoTau32er;
L1_DoubleIsoTau27er <= doubletau_12502495218143935214;
algo(103) <= L1_DoubleIsoTau27er;
L1_DoubleIsoTau29er <= doubletau_17114181237645064942;
algo(104) <= L1_DoubleIsoTau29er;
L1_DoubleTau50er <= doubletau_15233202657361500387;
algo(105) <= L1_DoubleTau50er;
L1_HTT120 <= singlehtt_2496626710832;
algo(106) <= L1_HTT120;
L1_HTT160 <= singlehtt_2496626711344;
algo(107) <= L1_HTT160;
L1_HTT200 <= singlehtt_2496626726960;
algo(108) <= L1_HTT200;
L1_HTT220 <= singlehtt_2496626727216;
algo(109) <= L1_HTT220;
L1_HTT240 <= singlehtt_2496626727472;
algo(110) <= L1_HTT240;
L1_HTT255 <= singlehtt_2496626727605;
algo(111) <= L1_HTT255;
L1_HTT270 <= singlehtt_2496626727856;
algo(112) <= L1_HTT270;
L1_HTT280 <= singlehtt_2496626727984;
algo(113) <= L1_HTT280;
L1_HTT300 <= singlehtt_2496626743344;
algo(114) <= L1_HTT300;
L1_HTT320 <= singlehtt_2496626743600;
algo(115) <= L1_HTT320;
L1_ETM80 <= singleetm_18699476016;
algo(116) <= L1_ETM80;
L1_ETM90 <= singleetm_18699476144;
algo(117) <= L1_ETM90;
L1_HTM50 <= singlehtm_19504782000;
algo(118) <= L1_HTM50;
L1_HTM70 <= singlehtm_19504782256;
algo(119) <= L1_HTM70;
L1_HTM80 <= singlehtm_19504782384;
algo(120) <= L1_HTM80;
L1_HTM100 <= singlehtm_2496612030512;
algo(121) <= L1_HTM100;
L1_HTM120 <= singlehtm_2496612030768;
algo(122) <= L1_HTM120;
L1_HTM130 <= singlehtm_2496612030896;
algo(123) <= L1_HTM130;
L1_HTM140 <= singlehtm_2496612031024;
algo(124) <= L1_HTM140;
L1_HTM150 <= singlehtm_2496612031152;
algo(125) <= L1_HTM150;
L1_ETT25 <= singleett_18699589941;
algo(126) <= L1_ETT25;
L1_ETT25_BptxAND <= singleett_18699589941 and ext_cond_bx_0(32);
algo(127) <= L1_ETT25_BptxAND;
L1_ETM30 <= singleetm_18699475376;
algo(128) <= L1_ETM30;
L1_ETM40 <= singleetm_18699475504;
algo(129) <= L1_ETM40;
L1_ETM50 <= singleetm_18699475632;
algo(130) <= L1_ETM50;
L1_ETM60 <= singleetm_18699475760;
algo(131) <= L1_ETM60;
L1_ETM70 <= singleetm_18699475888;
algo(132) <= L1_ETM70;
L1_ETM100 <= singleetm_2393532815408;
algo(133) <= L1_ETM100;
L1_ETM120 <= singleetm_2393532815664;
algo(134) <= L1_ETM120;
L1_Mu5_EG15 <= singlemu_14769293105595978181 and singleeg_145873077;
algo(135) <= L1_Mu5_EG15;
L1_Mu5_EG20 <= singlemu_14769293105595978181 and singleeg_145873200;
algo(136) <= L1_Mu5_EG20;
L1_Mu5_EG23 <= singlemu_14769293105595978181 and singleeg_145873203;
algo(137) <= L1_Mu5_EG23;
L1_Mu5_IsoEG18 <= singlemu_14769293105595978181 and singleeg_12507579852056532032;
algo(138) <= L1_Mu5_IsoEG18;
L1_Mu5_IsoEG20 <= singlemu_14769293105595978181 and singleeg_12507579852182361152;
algo(139) <= L1_Mu5_IsoEG20;
L1_Mu12_EG10 <= singlemu_17545683059493081541 and singleeg_145873072;
algo(140) <= L1_Mu12_EG10;
L1_Mu20_EG10 <= singlemu_17545685224156598725 and singleeg_145873072;
algo(141) <= L1_Mu20_EG10;
L1_Mu20_EG17 <= singlemu_17545685224156598725 and singleeg_145873079;
algo(142) <= L1_Mu20_EG17;
L1_Mu23_IsoEG10 <= singlemu_17545685275696206277 and singleeg_12507579852048143424;
algo(143) <= L1_Mu23_IsoEG10;
L1_Mu23_EG10 <= singlemu_17545685275696206277 and singleeg_145873072;
algo(144) <= L1_Mu23_EG10;
L1_Mu16er_Tau20er <= singlemu_7145648846602061216 and singletau_16608830939767017288;
algo(145) <= L1_Mu16er_Tau20er;
L1_Mu16er_Tau24er <= singlemu_7145648846602061216 and singletau_16608831008486494024;
algo(146) <= L1_Mu16er_Tau24er;
L1_Mu18er_Tau20er <= singlemu_7181677643621025184 and singletau_16608830939767017288;
algo(147) <= L1_Mu18er_Tau20er;
L1_Mu18er_Tau24er <= singlemu_7181677643621025184 and singletau_16608831008486494024;
algo(148) <= L1_Mu18er_Tau24er;
L1_Mu18er_IsoTau26er <= singlemu_7181677643621025184 and singletau_218368042610145022;
algo(149) <= L1_Mu18er_IsoTau26er;
L1_Mu20er_IsoTau26er <= singlemu_9343405464758863264 and singletau_218368042610145022;
algo(150) <= L1_Mu20er_IsoTau26er;
L1_DoubleMu7_EG14 <= doublemu_14585796862184301375 and singleeg_145873076;
algo(151) <= L1_DoubleMu7_EG14;
L1_DoubleMu7_EG7 <= doublemu_14585796862184301375 and singleeg_1139639;
algo(152) <= L1_DoubleMu7_EG7;
L1_Mu6_DoubleEG17 <= singlemu_14769293122775847365 and doubleeg_14367290900143979231;
algo(153) <= L1_Mu6_DoubleEG17;
L1_Mu6_DoubleEG10 <= singlemu_14769293122775847365 and doubleeg_14367260113818400607;
algo(154) <= L1_Mu6_DoubleEG10;
L1_Mu3_JetC16_dEta_Max0p4_dPhi_Max0p4 <= calomuoncorrelation_16240387826857744385;
algo(155) <= L1_Mu3_JetC16_dEta_Max0p4_dPhi_Max0p4;
L1_Mu3_JetC60_dEta_Max0p4_dPhi_Max0p4 <= calomuoncorrelation_16240389188362377217;
algo(156) <= L1_Mu3_JetC60_dEta_Max0p4_dPhi_Max0p4;
L1_Mu6_HTT200 <= singlemu_14769293122775847365 and singlehtt_2496626726960;
algo(157) <= L1_Mu6_HTT200;
L1_Mu8_HTT150 <= singlemu_14769293157135585733 and singlehtt_2496626711216;
algo(158) <= L1_Mu8_HTT150;
L1_EG27er_HTT200 <= singleeg_14262501742930627507 and singlehtt_2496626726960;
algo(159) <= L1_EG27er_HTT200;
L1_EG25er_HTT125 <= singleeg_14262501742662192051 and singlehtt_2496626710837;
algo(160) <= L1_EG25er_HTT125;
L1_DoubleEG6_HTT255 <= doubleeg_8902241742241126126 and singlehtt_2496626727605;
algo(161) <= L1_DoubleEG6_HTT255;
L1_QuadJetC36_Tau52 <= quadjet_2680186536839014580 and singletau_22686292658;
algo(162) <= L1_QuadJetC36_Tau52;
L1_Jet32_DoubleMuOpen_Mu10_dPhi_Jet_Mu0_Max0p4_dPhi_Mu_Mu_Min1p0 <= calomuoncorrelation_1318858389454035588 and muonmuoncorrelation_16683739788801056592;
algo(163) <= L1_Jet32_DoubleMuOpen_Mu10_dPhi_Jet_Mu0_Max0p4_dPhi_Mu_Mu_Min1p0;
L1_Jet32_MuOpen_EG10_dPhi_Jet_Mu_Max0p4_dPhi_Mu_EG_Min1p0 <= calomuoncorrelation_1318858389454035588 and calomuoncorrelation_1201630304223198732;
algo(164) <= L1_Jet32_MuOpen_EG10_dPhi_Jet_Mu_Max0p4_dPhi_Mu_EG_Min1p0;
L1_DoubleJetC60_ETM60 <= doublejet_8659301241633819347 and singleetm_18699475760;
algo(165) <= L1_DoubleJetC60_ETM60;
L1_Mu0er_ETM40 <= singlemu_16260934492399787300 and singleetm_18699475504;
algo(166) <= L1_Mu0er_ETM40;
L1_Mu0er_ETM55 <= singlemu_16260934492399787300 and singleetm_18699475637;
algo(167) <= L1_Mu0er_ETM55;
L1_Mu10er_ETM30 <= singlemu_7037562455545169312 and singleetm_18699475376;
algo(168) <= L1_Mu10er_ETM30;
L1_Mu10er_ETM50 <= singlemu_7037562455545169312 and singleetm_18699475632;
algo(169) <= L1_Mu10er_ETM50;
L1_Mu14er_ETM30 <= singlemu_7109620049583097248 and singleetm_18699475376;
algo(170) <= L1_Mu14er_ETM30;
L1_HTM80_HTT220 <= singlehtm_19504782384 and singlehtt_2496626727216;
algo(171) <= L1_HTM80_HTT220;
L1_HTM60_HTT260 <= singlehtm_19504782128 and singlehtt_2496626727728;
algo(172) <= L1_HTM60_HTT260;
L1_SingleMuOpen_NotBptxOR <= singlemu_14769293018627052229 and (not ext_cond_bx_0(35));
algo(173) <= L1_SingleMuOpen_NotBptxOR;
L1_SingleJetC32_NotBptxOR <= singlejet_5967545327155853511 and (not ext_cond_bx_0(35));
algo(174) <= L1_SingleJetC32_NotBptxOR;
L1_SingleJetC20_NotBptxOR <= singlejet_5967545309707548871 and (not ext_cond_bx_0(35));
algo(175) <= L1_SingleJetC20_NotBptxOR;
L1_SingleEG2_BptxAND <= singleeg_1139634 and ext_cond_bx_0(32);
algo(176) <= L1_SingleEG2_BptxAND;
L1_ETT35_BptxAND <= singleett_18699590069 and ext_cond_bx_0(32);
algo(177) <= L1_ETT35_BptxAND;
L1_SingleJet8_BptxAND <= singlejet_156330552 and ext_cond_bx_0(32);
algo(178) <= L1_SingleJet8_BptxAND;
L1_SingleJet12_BptxAND <= singlejet_20010309810 and ext_cond_bx_0(32);
algo(179) <= L1_SingleJet12_BptxAND;
L1_DoubleEG_22_12 <= doubleeg_14367831859864844383;
algo(180) <= L1_DoubleEG_22_12;
L1_DoubleEG_22_15 <= doubleeg_14367831859864844767;
algo(181) <= L1_DoubleEG_22_15;
L1_MU20_EG15 <= singlemu_17545685224156598725 and singleeg_145873077;
algo(182) <= L1_MU20_EG15;
L1_IsoEG22er_Tau20er_dEta_Min0p2 <= calocalocorrelation_2085349615869404806;
algo(183) <= L1_IsoEG22er_Tau20er_dEta_Min0p2;
L1_SingleMuOpen_NotBptxOR_3BX <= singlemu_14769293018627052229 and (not ext_cond_bx_m1(35)) and (not ext_cond_bx_0(35)) and (not ext_cond_bx_p1(35));
algo(184) <= L1_SingleMuOpen_NotBptxOR_3BX;
L1_SingleJetC20_NotBptxOR_3BX <= singlejet_5967545309707548871 and (not ext_cond_bx_m1(35)) and (not ext_cond_bx_0(35)) and (not ext_cond_bx_p1(35));
algo(185) <= L1_SingleJetC20_NotBptxOR_3BX;
L1_SingleJetC32_NotBptxOR_3BX <= singlejet_5967545327155853511 and (not ext_cond_bx_m1(35)) and (not ext_cond_bx_0(35)) and (not ext_cond_bx_p1(35));
algo(186) <= L1_SingleJetC32_NotBptxOR_3BX;
L1_SingleJetC36_NotBptxOR_3BX <= singlejet_5967545327692724423 and (not ext_cond_bx_m1(35)) and (not ext_cond_bx_0(35)) and (not ext_cond_bx_p1(35));
algo(187) <= L1_SingleJetC36_NotBptxOR_3BX;
L1_ETM60_Jet60_dPhi_Min0p4 <= caloesumcorrelation_16768129600163955985;
algo(188) <= L1_ETM60_Jet60_dPhi_Min0p4;
L1_AlwaysTrue <= ext_cond_bx_0(32) or (not ext_cond_bx_0(32));
algo(189) <= L1_AlwaysTrue;
L1_BptxPlus <= ext_cond_bx_0(33);
algo(190) <= L1_BptxPlus;
L1_BptxMinus <= ext_cond_bx_0(34);
algo(191) <= L1_BptxMinus;
L1_BptxOR <= ext_cond_bx_0(35);
algo(192) <= L1_BptxOR;
L1_Mu3_JetC120_dEta_Max0p4_dPhi_Max0p4 <= calomuoncorrelation_15993852978349077723;
algo(193) <= L1_Mu3_JetC120_dEta_Max0p4_dPhi_Max0p4;
L1_ZeroBias_FirstCollidingBunch <= ext_cond_bx_0(19);
algo(194) <= L1_ZeroBias_FirstCollidingBunch;
L1_DoubleJet8_ForwardBackward <= doublejet_5010010172296896555;
algo(195) <= L1_DoubleJet8_ForwardBackward;
L1_DoubleJet12_ForwardBackward <= doublejet_8281320341886584868;
algo(196) <= L1_DoubleJet12_ForwardBackward;
L1_DoubleJet16_ForwardBackward <= doublejet_8281320350476519461;
algo(197) <= L1_DoubleJet16_ForwardBackward;
L1_Mu3_JetC16 <= singlemu_14769293071236239813 and singlejet_5967545293332986055;
algo(198) <= L1_Mu3_JetC16;
L1_Mu3_JetC60 <= singlemu_14769293071236239813 and singlejet_5967545378427025607;
algo(199) <= L1_Mu3_JetC60;
L1_Mu3_JetC120 <= singlemu_14769293071236239813 and singlejet_15014918520304220377;
algo(200) <= L1_Mu3_JetC120;
L1_SingleMuCosmics <= singlemu_1272496;
algo(201) <= L1_SingleMuCosmics;
L1_IsolatedBunch <= (not ext_cond_bx_m2(35)) and (not ext_cond_bx_m1(35)) and ext_cond_bx_0(32) and (not ext_cond_bx_p1(35)) and (not ext_cond_bx_p2(35));
algo(202) <= L1_IsolatedBunch;
L1_BptxXOR <= (ext_cond_bx_0(33) and (not ext_cond_bx_0(34))) or (ext_cond_bx_0(34) and (not ext_cond_bx_0(33)));
algo(203) <= L1_BptxXOR;
L1_BeamGasPlus <= ext_cond_bx_0(2);
algo(204) <= L1_BeamGasPlus;
L1_BeamGasMinus <= ext_cond_bx_0(3);
algo(205) <= L1_BeamGasMinus;
L1_BeamGasB1 <= ext_cond_bx_0(0);
algo(206) <= L1_BeamGasB1;
L1_BeamGasB2 <= ext_cond_bx_0(1);
algo(207) <= L1_BeamGasB2;
L1_BPTX_LUT1_AND <= ext_cond_bx_0(4);
algo(208) <= L1_BPTX_LUT1_AND;
L1_BPTX_LUT1_B1 <= ext_cond_bx_0(5);
algo(209) <= L1_BPTX_LUT1_B1;
L1_BPTX_LUT1_B2 <= ext_cond_bx_0(6);
algo(210) <= L1_BPTX_LUT1_B2;
L1_BPTX_LUT1_OR <= ext_cond_bx_0(7);
algo(211) <= L1_BPTX_LUT1_OR;
L1_BPTX_LUT2_AND <= ext_cond_bx_0(8);
algo(212) <= L1_BPTX_LUT2_AND;
L1_BPTX_LUT2_B1NotB2 <= ext_cond_bx_0(9);
algo(213) <= L1_BPTX_LUT2_B1NotB2;
L1_BPTX_LUT2_B2NotB1 <= ext_cond_bx_0(10);
algo(214) <= L1_BPTX_LUT2_B2NotB1;
L1_BPTX_LUT2_NotOR <= ext_cond_bx_0(11);
algo(215) <= L1_BPTX_LUT2_NotOR;
L1_BPTX_TRIG2_AND <= ext_cond_bx_0(12);
algo(216) <= L1_BPTX_TRIG2_AND;
L1_BPTX_TRIG2_B1NotB2 <= ext_cond_bx_0(13);
algo(217) <= L1_BPTX_TRIG2_B1NotB2;
L1_BPTX_TRIG2_B2NotB1 <= ext_cond_bx_0(14);
algo(218) <= L1_BPTX_TRIG2_B2NotB1;
L1_BPTX_TRIG2_NotOR <= ext_cond_bx_0(15);
algo(219) <= L1_BPTX_TRIG2_NotOR;
L1_BRIL_TRIG3_AND <= ext_cond_bx_0(16);
algo(220) <= L1_BRIL_TRIG3_AND;
L1_BRIL_TRIG3_delayedAND <= ext_cond_bx_0(17);
algo(221) <= L1_BRIL_TRIG3_delayedAND;
L1_BRIL_TRIG3_ref <= ext_cond_bx_0(18);
algo(222) <= L1_BRIL_TRIG3_ref;
L1_BRIL_TRIG0_AND <= ext_cond_bx_0(20);
algo(223) <= L1_BRIL_TRIG0_AND;
L1_BRIL_TRIG0_delayedAND <= ext_cond_bx_0(21);
algo(224) <= L1_BRIL_TRIG0_delayedAND;
L1_BRIL_TRIG0_OR <= ext_cond_bx_0(22);
algo(225) <= L1_BRIL_TRIG0_OR;
L1_BRIL_TRIG0_FstBunchInTrain <= ext_cond_bx_0(23);
algo(226) <= L1_BRIL_TRIG0_FstBunchInTrain;
L1_ETT50_BptxAND <= singleett_18699590320 and ext_cond_bx_0(32);
algo(227) <= L1_ETT50_BptxAND;
L1_ETT60_BptxAND <= singleett_18699590448 and ext_cond_bx_0(32);
algo(228) <= L1_ETT60_BptxAND;
L1_MinimumBiasHF0_OR_BptxAND <= (singlembt0hfp_43640316738250801 or singlembt0hfm_43640316738250417) and ext_cond_bx_0(32);
algo(229) <= L1_MinimumBiasHF0_OR_BptxAND;
L1_MinimumBiasHF0_AND_BptxAND <= (singlembt0hfp_43640316738250801 and singlembt0hfm_43640316738250417) and ext_cond_bx_0(32);
algo(230) <= L1_MinimumBiasHF0_AND_BptxAND;
L1_MinimumBiasHF1_OR_BptxAND <= (singlembt1hfp_43640317006686257 or singlembt1hfm_43640317006685873) and ext_cond_bx_0(32);
algo(231) <= L1_MinimumBiasHF1_OR_BptxAND;
L1_MinimumBiasHF1_AND_BptxAND <= (singlembt1hfp_43640317006686257 and singlembt1hfm_43640317006685873) and ext_cond_bx_0(32);
algo(232) <= L1_MinimumBiasHF1_AND_BptxAND;
L1_MinimumBiasHF0_OR <= singlembt0hfp_43640316738250801 or singlembt0hfm_43640316738250417;
algo(233) <= L1_MinimumBiasHF0_OR;
L1_MinimumBiasHF0_AND <= singlembt0hfp_43640316738250801 and singlembt0hfm_43640316738250417;
algo(234) <= L1_MinimumBiasHF0_AND;
L1_MinimumBiasHF1_OR <= singlembt1hfp_43640317006686257 or singlembt1hfm_43640317006685873;
algo(235) <= L1_MinimumBiasHF1_OR;
L1_MinimumBiasHF1_AND <= singlembt1hfp_43640317006686257 and singlembt1hfm_43640317006685873;
algo(236) <= L1_MinimumBiasHF1_AND;
L1_NotBptxOR <= not ext_cond_bx_0(35);
algo(237) <= L1_NotBptxOR;
L1_ZeroBias_copy <= ext_cond_bx_0(32);
algo(238) <= L1_ZeroBias_copy;


-- ==== Inserted by TME - end ===============================================================================================================

-- One pipeline stages for algorithms
algo_pipeline_p: process(lhc_clk, algo)
    begin
    if (lhc_clk'event and lhc_clk = '1') then
        algo_o <= algo;
    end if;
end process;

end architecture rtl;