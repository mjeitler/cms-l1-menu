-- Description:
-- Global Trigger Logic module.

-- ========================================================
-- from TME:
      
-- Unique ID of L1 Trigger Menu:
-- X"34419dfbf65d598ebdbfe739576fc4e9"
    
-- Name of L1 Trigger Menu:
-- L1Menu_CollisionsHeavyIons2015_v4_uGT_v2
    
-- Scale set:
-- None
    
-- Version of L1 Trigger Menu Compiler:
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
        muon_data : in muon_objects_array(0 to NR_MUON_OBJECTS-1);
        external_conditions : in std_logic_vector(NR_EXTERNAL_CONDITIONS-1 downto 0);
        algo_o : out std_logic_vector(NR_ALGOS-1 downto 0));
end gtl_module;

architecture rtl of gtl_module is
    constant external_conditions_pipeline_stages: natural := 2; -- pipeline stages for "External conditions" to get same pipeline to algos as conditions

    signal muon_bx_p2, muon_bx_p1, muon_bx_0, muon_bx_m1, muon_bx_m2 : muon_objects_array(0 to NR_MUON_OBJECTS-1);
    signal eg_bx_p2, eg_bx_p1, eg_bx_0, eg_bx_m1, eg_bx_m2 : calo_objects_array(0 to NR_EG_OBJECTS-1);
    signal jet_bx_p2, jet_bx_p1, jet_bx_0, jet_bx_m1, jet_bx_m2 : calo_objects_array(0 to NR_JET_OBJECTS-1);
    signal tau_bx_p2, tau_bx_p1, tau_bx_0, tau_bx_m1, tau_bx_m2 : calo_objects_array(0 to NR_TAU_OBJECTS-1);
    signal ett_bx_p2, ett_bx_p1, ett_bx_0, ett_bx_m1, ett_bx_m2 : std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
-- HB 2015-04-28: changed for "htt" - object type from TME [string(1 to 3)] in esums_conditions.vhd
    signal htt_bx_p2, htt_bx_p1, htt_bx_0, htt_bx_m1, htt_bx_m2 : std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
    signal etm_bx_p2, etm_bx_p1, etm_bx_0, etm_bx_m1, etm_bx_m2 : std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
    signal htm_bx_p2, htm_bx_p1, htm_bx_0, htm_bx_m1, htm_bx_m2 : std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
    signal ext_cond_bx_p2, ext_cond_bx_p1, ext_cond_bx_0, ext_cond_bx_m1, ext_cond_bx_m2 : std_logic_vector(NR_EXTERNAL_CONDITIONS-1 downto 0);

    signal ext_cond_bx_p2_pipe, ext_cond_bx_p1_pipe, ext_cond_bx_0_pipe, ext_cond_bx_m1_pipe, ext_cond_bx_m2_pipe : std_logic_vector(NR_EXTERNAL_CONDITIONS-1 downto 0);

    signal algo : std_logic_vector(NR_ALGOS-1 downto 0) := (others => '0');

-- ==== Inserted by TME - begin =============================================================================================================

-- Signal definition of pt, eta and phi for correlation conditions.
-- Insert "signal_correlation_conditions_pt_eta_phi.vhd.j2" as often as an ObjectType at a certain Bx is used in a correlation condition.


-- Signal definition of differences for correlation conditions.
-- Insert "signal_correlation_conditions_differences.vhd.j2" once for correlation conditions of different ObjectTypes and Bx combinations.


-- Signal definition for muon charge correlations (only once for all muon conditions, except SingleMuon conditions)
-- Insert "signal_muon_charge_correlations.vhd.j2" only once in a certain Bx, if there is at least one DoubleMuon, TripleMuon or QuadMuon condition.

    signal ls_charcorr_double_bx_0, os_charcorr_double_bx_0 : muon_charcorr_double_array;
    signal ls_charcorr_triple_bx_0, os_charcorr_triple_bx_0 : muon_charcorr_triple_array;
    signal ls_charcorr_quad_bx_0, os_charcorr_quad_bx_0 : muon_charcorr_quad_array;

-- Signal definition for conditions names

    signal singlejet_20010309814 : std_logic;
    signal singlejet_20010309944 : std_logic;
    signal singlejet_20010310066 : std_logic;
    signal singlejet_20010310070 : std_logic;
    signal singlejet_20010310192 : std_logic;
    signal singlejet_20010310196 : std_logic;
    signal singlejet_20010310200 : std_logic;
    signal singlejet_20010310322 : std_logic;
    signal singlejet_20010310326 : std_logic;
    signal singlejet_20010310452 : std_logic;
    signal singleeg_1139635 : std_logic;
    signal singleeg_1139637 : std_logic;
    signal singleeg_145873074 : std_logic;
    signal singleeg_145873077 : std_logic;
    signal singleeg_145873201 : std_logic;
    signal singleeg_145873328 : std_logic;
    signal singleeg_12507428088039707712 : std_logic;
    signal singleeg_12507428088043902016 : std_logic;
    signal doubleeg_8902241604802172142 : std_logic;
    signal doubleeg_8902241707881387630 : std_logic;
    signal doubleeg_8902241810960603118 : std_logic;
    signal doubleeg_14367260113818400607 : std_logic;
    signal doubleeg_14235532754152297658 : std_logic;
    signal singlemu_14769293018694689477 : std_logic;
    signal doublemu_14585778108678632255 : std_logic;
    signal doublemu_14585777805687231295 : std_logic;
    signal doublemu_12394169293918581806 : std_logic;
    signal singlemu_17545683125316919237 : std_logic;
    signal singlejet_5967545310781290695 : std_logic;
    signal singlemu_14769293068340600773 : std_logic;
    signal singlejet_5967545327155853511 : std_logic;
    signal singlejet_5967545344067287239 : std_logic;
    signal singleeg_145873200 : std_logic;
    signal singlemu_14769293102700339141 : std_logic;
    signal singlemu_14769293137060077509 : std_logic;
    signal singlemu_17545683056597442501 : std_logic;
    signal singleeg_1139639 : std_logic;
    signal singleett_18699590320 : std_logic;
    signal singleett_2393547495472 : std_logic;
    signal singleett_306374079420464 : std_logic;
    signal singlehtt_19504896688 : std_logic;
    signal singlehtt_2496626710576 : std_logic;
    signal singlehtt_319568218953776 : std_logic;
    signal singleetm_18699475253 : std_logic;
    signal singleetm_18699475632 : std_logic;
    signal singleetm_2393532880944 : std_logic;
    signal singlehtm_19504781621 : std_logic;
    signal singlehtm_19504782000 : std_logic;
    signal singlehtm_2496612096048 : std_logic;
    signal singlejet_5967545293332986055 : std_logic;
    signal singlejet_5973794169597541884 : std_logic;
    signal singlejet_4233212932292267790 : std_logic;
    signal singleeg_7735743180685595845 : std_logic;
    signal singleeg_12505331969283643584 : std_logic;
    signal singleeg_3733585987865352039 : std_logic;
    signal singlemu_9710674836726225207 : std_logic;
    signal singlemu_6538278253893723714 : std_logic;
    signal singlemu_4892074307050015507 : std_logic;
    signal singlemu_622335412934669142 : std_logic;
    signal singlemu_623456365039186774 : std_logic;
    signal singlemu_1967534744807668232 : std_logic;
    signal singlejet_4234333884396785422 : std_logic;
    signal singlejet_12557613539394991200 : std_logic;
    signal singlejet_12558185431126389856 : std_logic;
    signal doublejet_4720683404941953350 : std_logic;
    signal doublejet_4647482318778927430 : std_logic;
    signal doublejet_4647482318811138374 : std_logic;
    signal doublejet_4573172924927314246 : std_logic;
    signal doublejet_4720683404909742406 : std_logic;
    signal doublejet_4720683404976556358 : std_logic;

-- Signal definition for algorithms names
    signal L1_SingleJet16 : std_logic;
    signal L1_SingleJet28 : std_logic;
    signal L1_SingleJet32 : std_logic;
    signal L1_SingleJet36 : std_logic;
    signal L1_SingleJet40 : std_logic;
    signal L1_SingleJet44 : std_logic;
    signal L1_SingleJet48 : std_logic;
    signal L1_SingleJet52 : std_logic;
    signal L1_SingleJet56 : std_logic;
    signal L1_SingleJet64 : std_logic;
    signal L1_SingleEG3 : std_logic;
    signal L1_SingleEG5 : std_logic;
    signal L1_SingleEG7 : std_logic;
    signal L1_SingleEG12 : std_logic;
    signal L1_SingleEG15 : std_logic;
    signal L1_SingleEG21 : std_logic;
    signal L1_SingleEG30 : std_logic;
    signal L1_SingleIsoEG3 : std_logic;
    signal L1_SingleIsoEG7 : std_logic;
    signal L1_DoubleEG2 : std_logic;
    signal L1_DoubleEG5 : std_logic;
    signal L1_DoubleEG8 : std_logic;
    signal L1_DoubleEG10 : std_logic;
    signal L1_DoubleEG_13_7 : std_logic;
    signal L1_SingleMuOpen : std_logic;
    signal L1_DoubleMuOpen : std_logic;
    signal L1_DoubleMu0 : std_logic;
    signal L1_DoubleMu10 : std_logic;
    signal L1_SingleMu12 : std_logic;
    signal L1_SingleMu16 : std_logic;
    signal L1_SingleMu3_SingleCenJet28 : std_logic;
    signal L1_SingleMu3_SingleCenJet32 : std_logic;
    signal L1_SingleMu3_SingleCenJet40 : std_logic;
    signal L1_SingleMu3_SingleEG20 : std_logic;
    signal L1_SingleMu3_SingleEG12 : std_logic;
    signal L1_SingleMu5_SingleEG20 : std_logic;
    signal L1_SingleMu7_SingleEG12 : std_logic;
    signal L1_SingleMu12_SingleEG7 : std_logic;
    signal L1_ETT50 : std_logic;
    signal L1_ETT100 : std_logic;
    signal L1_ETT1000 : std_logic;
    signal L1_HTT50 : std_logic;
    signal L1_HTT100 : std_logic;
    signal L1_HTT1000 : std_logic;
    signal L1_ETM25 : std_logic;
    signal L1_ETM50 : std_logic;
    signal L1_ETM500 : std_logic;
    signal L1_HTM25 : std_logic;
    signal L1_HTM50 : std_logic;
    signal L1_HTM500 : std_logic;
    signal L1_JET16_CEN : std_logic;
    signal L1_JET16_FWD : std_logic;
    signal L1_JET16_Phi_1stQuad : std_logic;
    signal L1_EG10_Phi_Upper : std_logic;
    signal L1_EG10_CEN : std_logic;
    signal L1_EG10_FWD : std_logic;
    signal L1_MU10_CEN : std_logic;
    signal L1_MU10_FWD : std_logic;
    signal L1_MU10_Upper : std_logic;
    signal L1_MU10_Phi_1stQUAD : std_logic;
    signal L1_MU10_Phi_3rdQUAD : std_logic;
    signal L1_MU10_Phi_1stQUAD_3rdQUAD : std_logic;
    signal L1_JET16_Phi_3rdQUAD : std_logic;
    signal L1_JET16_Phi_1stQUAD_3rdQUAD : std_logic;
    signal L1_JET16_Phi_2ndQUAD_4thQUAD : std_logic;
    signal L1_DoubleJet16_B2B : std_logic;
    signal L1_DoubleJet16_nonB2B : std_logic;



-- ==== Inserted by TME - end ===============================================================================================================

begin

p_m_2_bx_pipeline_i: entity work.p_m_2_bx_pipeline
    port map(
        lhc_clk,
        muon_data, muon_bx_p2, muon_bx_p1, muon_bx_0, muon_bx_m1, muon_bx_m2,
        eg_data, eg_bx_p2, eg_bx_p1, eg_bx_0, eg_bx_m1, eg_bx_m2,
        jet_data, jet_bx_p2, jet_bx_p1, jet_bx_0, jet_bx_m1, jet_bx_m2,
        tau_data, tau_bx_p2, tau_bx_p1, tau_bx_0, tau_bx_m1, tau_bx_m2,
        ett_data, ett_bx_p2, ett_bx_p1, ett_bx_0, ett_bx_m1, ett_bx_m2,
        ht_data, htt_bx_p2, htt_bx_p1, htt_bx_0, htt_bx_m1, htt_bx_m2,
        etm_data, etm_bx_p2, etm_bx_p1, etm_bx_0, etm_bx_m1, etm_bx_m2,
        htm_data, htm_bx_p2, htm_bx_p1, htm_bx_0, htm_bx_m1, htm_bx_m2,
        external_conditions, ext_cond_bx_p2, ext_cond_bx_p1, ext_cond_bx_0, ext_cond_bx_m1, ext_cond_bx_m2
    );

-- Parameterized pipeline stages for External conditions, actually 2 stages (fixed) in conditions, see "constant external_conditions_pipeline_stages ..."
ext_cond_pipe_p: process(lhc_clk, ext_cond_bx_p2, ext_cond_bx_p1, ext_cond_bx_0, ext_cond_bx_m1, ext_cond_bx_m2)
    type ext_cond_pipe_array is array (0 to external_conditions_pipeline_stages+1) of std_logic_vector(NR_EXTERNAL_CONDITIONS-1 downto 0);
    variable ext_cond_bx_p2_pipe_temp : ext_cond_pipe_array := (others => (others => '0'));
    variable ext_cond_bx_p1_pipe_temp : ext_cond_pipe_array := (others => (others => '0'));
    variable ext_cond_bx_0_pipe_temp : ext_cond_pipe_array := (others => (others => '0'));
    variable ext_cond_bx_m1_pipe_temp : ext_cond_pipe_array := (others => (others => '0'));
    variable ext_cond_bx_m2_pipe_temp : ext_cond_pipe_array := (others => (others => '0'));
    begin
        ext_cond_bx_p2_pipe_temp(external_conditions_pipeline_stages+1) := ext_cond_bx_p2;
        ext_cond_bx_p1_pipe_temp(external_conditions_pipeline_stages+1) := ext_cond_bx_p1;
        ext_cond_bx_0_pipe_temp(external_conditions_pipeline_stages+1) := ext_cond_bx_0;
        ext_cond_bx_m1_pipe_temp(external_conditions_pipeline_stages+1) := ext_cond_bx_m1;
        ext_cond_bx_m2_pipe_temp(external_conditions_pipeline_stages+1) := ext_cond_bx_m2;
        if (external_conditions_pipeline_stages > 0) then 
            if (lhc_clk'event and (lhc_clk = '1') ) then
                ext_cond_bx_p2_pipe_temp(0 to external_conditions_pipeline_stages) := ext_cond_bx_p2_pipe_temp(1 to external_conditions_pipeline_stages+1);
                ext_cond_bx_p1_pipe_temp(0 to external_conditions_pipeline_stages) := ext_cond_bx_p1_pipe_temp(1 to external_conditions_pipeline_stages+1);
                ext_cond_bx_0_pipe_temp(0 to external_conditions_pipeline_stages) := ext_cond_bx_0_pipe_temp(1 to external_conditions_pipeline_stages+1);
                ext_cond_bx_m1_pipe_temp(0 to external_conditions_pipeline_stages) := ext_cond_bx_m1_pipe_temp(1 to external_conditions_pipeline_stages+1);
                ext_cond_bx_m2_pipe_temp(0 to external_conditions_pipeline_stages) := ext_cond_bx_m2_pipe_temp(1 to external_conditions_pipeline_stages+1);
            end if;
        end if;
        ext_cond_bx_p2_pipe <= ext_cond_bx_p2_pipe_temp(1); -- used pipe_temp(1) instead of pipe_temp(0), to prevent warnings in compilation
        ext_cond_bx_p1_pipe <= ext_cond_bx_p1_pipe_temp(1);
        ext_cond_bx_0_pipe <= ext_cond_bx_0_pipe_temp(1);
        ext_cond_bx_m1_pipe <= ext_cond_bx_m1_pipe_temp(1);
        ext_cond_bx_m2_pipe <= ext_cond_bx_m2_pipe_temp(1);
end process;

-- ==== Inserted by TME - begin =============================================================================================================

-- Instantiations of muon charge correlations - only once in a certain Bx, if there is at least one DoubleMuon, TripleMuon or QuadMuon condition

muon_charge_correlations_bx_0_i: entity work.muon_charge_correlations
    port map(muon_bx_0,muon_bx_0,
        ls_charcorr_double_bx_0, os_charcorr_double_bx_0,
        ls_charcorr_triple_bx_0, os_charcorr_triple_bx_0,
        ls_charcorr_quad_bx_0, os_charcorr_quad_bx_0);

-- Instantiations of pt, eta and phi for correlation conditions (used for DETA, DPHI and DR) - once for every ObjectType in certain Bx used in correlation conditions


-- Instantiations of eta and phi conversion to muon scale for calo-muon correlation conditions (used for DETA, DPHI and DR) - once for every calo ObjectType in certain Bx used in correlation conditions


-- Instantiations of differences for correlation conditions (used for DETA, DPHI and DR) - once for correlation conditions with two ObjectTypes in certain Bxs


-- Instantiations of cosh-deta and cos-dphi LUTs for correlation conditions (used for invariant mass) - once for correlation conditions with two ObjectTypes in certain Bxs


-- Instantiations of conditions
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
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, jet_bx_0, singlejet_20010309814);

singlejet_20010309944_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0038", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, jet_bx_0, singlejet_20010309944);

singlejet_20010310066_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0040", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, jet_bx_0, singlejet_20010310066);

singlejet_20010310070_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0048", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, jet_bx_0, singlejet_20010310070);

singlejet_20010310192_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0050", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, jet_bx_0, singlejet_20010310192);

singlejet_20010310196_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0058", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, jet_bx_0, singlejet_20010310196);

singlejet_20010310200_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0060", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, jet_bx_0, singlejet_20010310200);

singlejet_20010310322_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0068", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, jet_bx_0, singlejet_20010310322);

singlejet_20010310326_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0070", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, jet_bx_0, singlejet_20010310326);

singlejet_20010310452_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0080", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, jet_bx_0, singlejet_20010310452);

singleeg_1139635_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0006", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, eg_bx_0, singleeg_1139635);

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
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, eg_bx_0, singleeg_1139637);

singleeg_145873074_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0018", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, eg_bx_0, singleeg_145873074);

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
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, eg_bx_0, singleeg_145873077);

singleeg_145873201_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"002A", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, eg_bx_0, singleeg_145873201);

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
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, eg_bx_0, singleeg_145873328);

singleeg_12507428088039707712_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0006", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"E", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, eg_bx_0, singleeg_12507428088039707712);

singleeg_12507428088043902016_i: entity work.calo_conditions_v3
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
        (X"E", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, eg_bx_0, singleeg_12507428088043902016);

doubleeg_8902241604802172142_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"0004", X"0004", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, eg_bx_0, doubleeg_8902241604802172142);

doubleeg_8902241707881387630_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"000A", X"000A", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, eg_bx_0, doubleeg_8902241707881387630);

doubleeg_8902241810960603118_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"0010", X"0010", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, eg_bx_0, doubleeg_8902241810960603118);

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
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, eg_bx_0, doubleeg_14367260113818400607);

doubleeg_14235532754152297658_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"001A", X"000E", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, eg_bx_0, doubleeg_14235532754152297658);

singlejet_5967545310781290695_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0038", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0044", X"0000", X"0000", X"0000"), (X"00BB", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, jet_bx_0, singlejet_5967545310781290695);

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
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, jet_bx_0, singlejet_5967545327155853511);

singlejet_5967545344067287239_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0050", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0044", X"0000", X"0000", X"0000"), (X"00BB", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, jet_bx_0, singlejet_5967545344067287239);

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
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, eg_bx_0, singleeg_145873200);

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
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, eg_bx_0, singleeg_1139639);

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
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, jet_bx_0, singlejet_5967545293332986055);

singlejet_5973794169597541884_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0020", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00BA", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0072", X"0000", X"0000", X"0000"), (X"0045", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, jet_bx_0, singlejet_5973794169597541884);

singlejet_4233212932292267790_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0020", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0023", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, jet_bx_0, singlejet_4233212932292267790);

singleeg_7735743180685595845_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0014", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0047", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, eg_bx_0, singleeg_7735743180685595845);

singleeg_12505331969283643584_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0014", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0016", X"0000", X"0000", X"0000"), (X"00E9", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, eg_bx_0, singleeg_12505331969283643584);

singleeg_3733585987865352039_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0014", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00E8", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0072", X"0000", X"0000", X"0000"), (X"0017", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, eg_bx_0, singleeg_3733585987865352039);

singlejet_4234333884396785422_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0020", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"006B", X"0000", X"0000", X"0000"), (X"0048", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, jet_bx_0, singlejet_4234333884396785422);

singlejet_12557613539394991200_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0020", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0023", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"006B", X"0000", X"0000", X"0000"), (X"0048", X"0000", X"0000", X"0000"),   
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, jet_bx_0, singlejet_12557613539394991200);

singlejet_12558185431126389856_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0020", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0047", X"0000", X"0000", X"0000"), (X"0024", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"008F", X"0000", X"0000", X"0000"), (X"006C", X"0000", X"0000", X"0000"),   
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, jet_bx_0, singlejet_12558185431126389856);

doublejet_4720683404941953350_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"0020", X"0020", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0047", X"008F", X"0000", X"0000"), (X"0024", X"006C", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, jet_bx_0, doublejet_4720683404941953350);

doublejet_4647482318778927430_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"0020", X"0020", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0023", X"006B", X"0000", X"0000"), (X"0000", X"0048", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, jet_bx_0, doublejet_4647482318778927430);

doublejet_4647482318811138374_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"0020", X"0020", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0047", X"006B", X"0000", X"0000"), (X"0024", X"0048", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, jet_bx_0, doublejet_4647482318811138374);

doublejet_4573172924927314246_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"0020", X"0020", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0023", X"0047", X"0000", X"0000"), (X"0000", X"0024", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, jet_bx_0, doublejet_4573172924927314246);

doublejet_4720683404909742406_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"0020", X"0020", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0023", X"008F", X"0000", X"0000"), (X"0000", X"006C", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, jet_bx_0, doublejet_4720683404909742406);

doublejet_4720683404976556358_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"0020", X"0020", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"006B", X"008F", X"0000", X"0000"), (X"0048", X"006C", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF")
    )
    port map(lhc_clk, jet_bx_0, doublejet_4720683404976556358);



singlemu_14769293018694689477_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0000", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, muon_bx_0,
        ls_charcorr_double_bx_0, os_charcorr_double_bx_0,
        ls_charcorr_triple_bx_0, os_charcorr_triple_bx_0,
        ls_charcorr_quad_bx_0, os_charcorr_quad_bx_0,
        singlemu_14769293018694689477);

doublemu_14585778108678632255_i: entity work.muon_conditions_v3
    generic map(2 , true,
        (X"0000", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, muon_bx_0,
        ls_charcorr_double_bx_0, os_charcorr_double_bx_0,
        ls_charcorr_triple_bx_0, os_charcorr_triple_bx_0,
        ls_charcorr_quad_bx_0, os_charcorr_quad_bx_0,
        doublemu_14585778108678632255);

doublemu_14585777805687231295_i: entity work.muon_conditions_v3
    generic map(2 , true,
        (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"F000", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, muon_bx_0,
        ls_charcorr_double_bx_0, os_charcorr_double_bx_0,
        ls_charcorr_triple_bx_0, os_charcorr_triple_bx_0,
        ls_charcorr_quad_bx_0, os_charcorr_quad_bx_0,
        doublemu_14585777805687231295);

doublemu_12394169293918581806_i: entity work.muon_conditions_v3
    generic map(2 , true,
        (X"0014", X"0014", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"F000", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, muon_bx_0,
        ls_charcorr_double_bx_0, os_charcorr_double_bx_0,
        ls_charcorr_triple_bx_0, os_charcorr_triple_bx_0,
        ls_charcorr_quad_bx_0, os_charcorr_quad_bx_0,
        doublemu_12394169293918581806);

singlemu_17545683125316919237_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0020", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, muon_bx_0,
        ls_charcorr_double_bx_0, os_charcorr_double_bx_0,
        ls_charcorr_triple_bx_0, os_charcorr_triple_bx_0,
        ls_charcorr_quad_bx_0, os_charcorr_quad_bx_0,
        singlemu_17545683125316919237);

singlemu_14769293068340600773_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0006", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, muon_bx_0,
        ls_charcorr_double_bx_0, os_charcorr_double_bx_0,
        ls_charcorr_triple_bx_0, os_charcorr_triple_bx_0,
        ls_charcorr_quad_bx_0, os_charcorr_quad_bx_0,
        singlemu_14769293068340600773);

singlemu_14769293102700339141_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"000A", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, muon_bx_0,
        ls_charcorr_double_bx_0, os_charcorr_double_bx_0,
        ls_charcorr_triple_bx_0, os_charcorr_triple_bx_0,
        ls_charcorr_quad_bx_0, os_charcorr_quad_bx_0,
        singlemu_14769293102700339141);

singlemu_14769293137060077509_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"000E", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, muon_bx_0,
        ls_charcorr_double_bx_0, os_charcorr_double_bx_0,
        ls_charcorr_triple_bx_0, os_charcorr_triple_bx_0,
        ls_charcorr_quad_bx_0, os_charcorr_quad_bx_0,
        singlemu_14769293137060077509);

singlemu_17545683056597442501_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0018", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, muon_bx_0,
        ls_charcorr_double_bx_0, os_charcorr_double_bx_0,
        ls_charcorr_triple_bx_0, os_charcorr_triple_bx_0,
        ls_charcorr_quad_bx_0, os_charcorr_quad_bx_0,
        singlemu_17545683056597442501);

singlemu_9710674836726225207_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0014", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"005C", X"0000", X"0000", X"0000"), (X"01A4", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, muon_bx_0,
        ls_charcorr_double_bx_0, os_charcorr_double_bx_0,
        ls_charcorr_triple_bx_0, os_charcorr_triple_bx_0,
        ls_charcorr_quad_bx_0, os_charcorr_quad_bx_0,
        singlemu_9710674836726225207);

singlemu_6538278253893723714_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0014", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00E1", X"0000", X"0000", X"0000"), (X"005D", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"01A3", X"0000", X"0000", X"0000"), (X"011F", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, muon_bx_0,
        ls_charcorr_double_bx_0, os_charcorr_double_bx_0,
        ls_charcorr_triple_bx_0, os_charcorr_triple_bx_0,
        ls_charcorr_quad_bx_0, os_charcorr_quad_bx_0,
        singlemu_6538278253893723714);

singlemu_4892074307050015507_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0014", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"011F", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, muon_bx_0,
        ls_charcorr_double_bx_0, os_charcorr_double_bx_0,
        ls_charcorr_triple_bx_0, os_charcorr_triple_bx_0,
        ls_charcorr_quad_bx_0, os_charcorr_quad_bx_0,
        singlemu_4892074307050015507);

singlemu_622335412934669142_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0014", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"008F", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, muon_bx_0,
        ls_charcorr_double_bx_0, os_charcorr_double_bx_0,
        ls_charcorr_triple_bx_0, os_charcorr_triple_bx_0,
        ls_charcorr_quad_bx_0, os_charcorr_quad_bx_0,
        singlemu_622335412934669142);

singlemu_623456365039186774_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0014", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"01AF", X"0000", X"0000", X"0000"), (X"0120", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, muon_bx_0,
        ls_charcorr_double_bx_0, os_charcorr_double_bx_0,
        ls_charcorr_triple_bx_0, os_charcorr_triple_bx_0,
        ls_charcorr_quad_bx_0, os_charcorr_quad_bx_0,
        singlemu_623456365039186774);

singlemu_1967534744807668232_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0014", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"008F", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"01AF", X"0000", X"0000", X"0000"), (X"0120", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, muon_bx_0,
        ls_charcorr_double_bx_0, os_charcorr_double_bx_0,
        ls_charcorr_triple_bx_0, os_charcorr_triple_bx_0,
        ls_charcorr_quad_bx_0, os_charcorr_quad_bx_0,
        singlemu_1967534744807668232);



        
singleett_18699590320_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0064",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, singleett_18699590320);

        
singleett_2393547495472_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"00C8",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, singleett_2393547495472);

        
singleett_306374079420464_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"07D0",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, singleett_306374079420464);

        
singlehtt_19504896688_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0064",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, singlehtt_19504896688);

        
singlehtt_2496626710576_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"00C8",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, singlehtt_2496626710576);

        
singlehtt_319568218953776_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"07D0",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, singlehtt_319568218953776);

        
singleetm_18699475253_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"0032",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, singleetm_18699475253);

        
singleetm_18699475632_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"0064",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, singleetm_18699475632);

        
singleetm_2393532880944_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"03E8",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, singleetm_2393532880944);

        
singlehtm_19504781621_i: entity work.esums_conditions
    generic map(true, HTM_TYPE,
        X"0032",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htm_bx_0, singlehtm_19504781621);

        
singlehtm_19504782000_i: entity work.esums_conditions
    generic map(true, HTM_TYPE,
        X"0064",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htm_bx_0, singlehtm_19504782000);

        
singlehtm_2496612096048_i: entity work.esums_conditions
    generic map(true, HTM_TYPE,
        X"03E8",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htm_bx_0, singlehtm_2496612096048);







-- Instantiations of algorithms
L1_SingleJet16 <= singlejet_20010309814;
algo(0) <= L1_SingleJet16;
L1_SingleJet28 <= singlejet_20010309944;
algo(1) <= L1_SingleJet28;
L1_SingleJet32 <= singlejet_20010310066;
algo(2) <= L1_SingleJet32;
L1_SingleJet36 <= singlejet_20010310070;
algo(3) <= L1_SingleJet36;
L1_SingleJet40 <= singlejet_20010310192;
algo(4) <= L1_SingleJet40;
L1_SingleJet44 <= singlejet_20010310196;
algo(5) <= L1_SingleJet44;
L1_SingleJet48 <= singlejet_20010310200;
algo(6) <= L1_SingleJet48;
L1_SingleJet52 <= singlejet_20010310322;
algo(7) <= L1_SingleJet52;
L1_SingleJet56 <= singlejet_20010310326;
algo(8) <= L1_SingleJet56;
L1_SingleJet64 <= singlejet_20010310452;
algo(9) <= L1_SingleJet64;
L1_SingleEG3 <= singleeg_1139635;
algo(10) <= L1_SingleEG3;
L1_SingleEG5 <= singleeg_1139637;
algo(11) <= L1_SingleEG5;
L1_SingleEG7 <= singleeg_1139639;
algo(12) <= L1_SingleEG7;
L1_SingleEG12 <= singleeg_145873074;
algo(13) <= L1_SingleEG12;
L1_SingleEG15 <= singleeg_145873077;
algo(14) <= L1_SingleEG15;
L1_SingleEG21 <= singleeg_145873201;
algo(15) <= L1_SingleEG21;
L1_SingleEG30 <= singleeg_145873328;
algo(16) <= L1_SingleEG30;
L1_SingleIsoEG3 <= singleeg_12507428088039707712;
algo(17) <= L1_SingleIsoEG3;
L1_SingleIsoEG7 <= singleeg_12507428088043902016;
algo(18) <= L1_SingleIsoEG7;
L1_DoubleEG2 <= doubleeg_8902241604802172142;
algo(19) <= L1_DoubleEG2;
L1_DoubleEG5 <= doubleeg_8902241707881387630;
algo(20) <= L1_DoubleEG5;
L1_DoubleEG8 <= doubleeg_8902241810960603118;
algo(21) <= L1_DoubleEG8;
L1_DoubleEG10 <= doubleeg_14367260113818400607;
algo(22) <= L1_DoubleEG10;
L1_DoubleEG_13_7 <= doubleeg_14235532754152297658;
algo(23) <= L1_DoubleEG_13_7;
L1_SingleMuOpen <= singlemu_14769293018694689477;
algo(24) <= L1_SingleMuOpen;
L1_DoubleMuOpen <= doublemu_14585778108678632255;
algo(25) <= L1_DoubleMuOpen;
L1_DoubleMu0 <= doublemu_14585777805687231295;
algo(26) <= L1_DoubleMu0;
L1_DoubleMu10 <= doublemu_12394169293918581806;
algo(27) <= L1_DoubleMu10;
L1_SingleMu12 <= singlemu_17545683056597442501;
algo(28) <= L1_SingleMu12;
L1_SingleMu16 <= singlemu_17545683125316919237;
algo(29) <= L1_SingleMu16;
L1_SingleMu3_SingleCenJet28 <= singlemu_14769293068340600773 and singlejet_5967545310781290695;
algo(30) <= L1_SingleMu3_SingleCenJet28;
L1_SingleMu3_SingleCenJet32 <= singlemu_14769293068340600773 and singlejet_5967545327155853511;
algo(31) <= L1_SingleMu3_SingleCenJet32;
L1_SingleMu3_SingleCenJet40 <= singlemu_14769293068340600773 and singlejet_5967545344067287239;
algo(32) <= L1_SingleMu3_SingleCenJet40;
L1_SingleMu3_SingleEG20 <= singlemu_14769293068340600773 and singleeg_145873200;
algo(33) <= L1_SingleMu3_SingleEG20;
L1_SingleMu3_SingleEG12 <= singlemu_14769293068340600773 and singleeg_145873074;
algo(34) <= L1_SingleMu3_SingleEG12;
L1_SingleMu5_SingleEG20 <= singlemu_14769293102700339141 and singleeg_145873200;
algo(35) <= L1_SingleMu5_SingleEG20;
L1_SingleMu7_SingleEG12 <= singlemu_14769293137060077509 and singleeg_145873074;
algo(36) <= L1_SingleMu7_SingleEG12;
L1_SingleMu12_SingleEG7 <= singlemu_17545683056597442501 and singleeg_1139639;
algo(37) <= L1_SingleMu12_SingleEG7;
L1_ETT50 <= singleett_18699590320;
algo(38) <= L1_ETT50;
L1_ETT100 <= singleett_2393547495472;
algo(39) <= L1_ETT100;
L1_ETT1000 <= singleett_306374079420464;
algo(40) <= L1_ETT1000;
L1_HTT50 <= singlehtt_19504896688;
algo(41) <= L1_HTT50;
L1_HTT100 <= singlehtt_2496626710576;
algo(42) <= L1_HTT100;
L1_HTT1000 <= singlehtt_319568218953776;
algo(43) <= L1_HTT1000;
L1_ETM25 <= singleetm_18699475253;
algo(44) <= L1_ETM25;
L1_ETM50 <= singleetm_18699475632;
algo(45) <= L1_ETM50;
L1_ETM500 <= singleetm_2393532880944;
algo(46) <= L1_ETM500;
L1_HTM25 <= singlehtm_19504781621;
algo(47) <= L1_HTM25;
L1_HTM50 <= singlehtm_19504782000;
algo(48) <= L1_HTM50;
L1_HTM500 <= singlehtm_2496612096048;
algo(49) <= L1_HTM500;
L1_JET16_CEN <= singlejet_5967545293332986055;
algo(50) <= L1_JET16_CEN;
L1_JET16_FWD <= singlejet_5973794169597541884;
algo(51) <= L1_JET16_FWD;
L1_JET16_Phi_1stQuad <= singlejet_4233212932292267790;
algo(52) <= L1_JET16_Phi_1stQuad;
L1_EG10_Phi_Upper <= singleeg_7735743180685595845;
algo(53) <= L1_EG10_Phi_Upper;
L1_EG10_CEN <= singleeg_12505331969283643584;
algo(54) <= L1_EG10_CEN;
L1_EG10_FWD <= singleeg_3733585987865352039;
algo(55) <= L1_EG10_FWD;
L1_MU10_CEN <= singlemu_9710674836726225207;
algo(56) <= L1_MU10_CEN;
L1_MU10_FWD <= singlemu_6538278253893723714;
algo(57) <= L1_MU10_FWD;
L1_MU10_Upper <= singlemu_4892074307050015507;
algo(58) <= L1_MU10_Upper;
L1_MU10_Phi_1stQUAD <= singlemu_622335412934669142;
algo(59) <= L1_MU10_Phi_1stQUAD;
L1_MU10_Phi_3rdQUAD <= singlemu_623456365039186774;
algo(60) <= L1_MU10_Phi_3rdQUAD;
L1_MU10_Phi_1stQUAD_3rdQUAD <= singlemu_1967534744807668232;
algo(61) <= L1_MU10_Phi_1stQUAD_3rdQUAD;
L1_JET16_Phi_3rdQUAD <= singlejet_4234333884396785422;
algo(62) <= L1_JET16_Phi_3rdQUAD;
L1_JET16_Phi_1stQUAD_3rdQUAD <= singlejet_12557613539394991200;
algo(63) <= L1_JET16_Phi_1stQUAD_3rdQUAD;
L1_JET16_Phi_2ndQUAD_4thQUAD <= singlejet_12558185431126389856;
algo(64) <= L1_JET16_Phi_2ndQUAD_4thQUAD;
L1_DoubleJet16_B2B <= doublejet_4647482318778927430 or doublejet_4720683404941953350 ;
algo(65) <= L1_DoubleJet16_B2B;
L1_DoubleJet16_nonB2B <= doublejet_4573172924927314246 or doublejet_4720683404909742406  or doublejet_4647482318811138374 or doublejet_4720683404976556358;
algo(66) <= L1_DoubleJet16_nonB2B;



-- ==== Inserted by TME - end ===============================================================================================================

-- One pipeline stages for algorithms
algo_pipeline_p: process(lhc_clk, algo)
    begin
    if (lhc_clk'event and lhc_clk = '1') then
        algo_o <= algo;
    end if;
end process;

end architecture rtl;