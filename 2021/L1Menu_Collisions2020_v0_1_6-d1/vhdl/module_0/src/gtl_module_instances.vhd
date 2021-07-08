-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2020_v0_1_6

-- Unique ID of L1 Trigger Menu:
-- 272a3710-a984-42d5-a8e6-2d4ffb8b7a2e

-- Unique ID of firmware implementation:
-- f344731e-51dc-4ff8-a41c-a33671803224

-- Scale set:
-- scales_2021_03_02

-- VHDL producer version
-- v2.11.0

-- tmEventSetup version
-- v0.8.2

-- ========================================================
-- Instantiations of conditions
--
cond_double_eg_i193_i: entity work.comb_conditions
    generic map(
-- setting slice high value(s) instead of default value(s) ("NR_MU_OBJECTS-1" => 7)
        slice_1_high_obj1 => 11,
        slice_2_high_obj1 => 11,
-- object cuts
        pt_thresholds_obj1 => (X"0010", X"0010", X"0000", X"0000"),
        nr_eta_windows_obj1 => (1, 1, 0, 0),
        eta_w1_upper_limits_obj1 => (X"0039", X"0039", X"0000", X"0000"),
        eta_w1_lower_limits_obj1 => (X"00C6", X"00C6", X"0000", X"0000"),
-- number of objects and type
        nr_obj1 => NR_EG_OBJECTS,
        type_obj1 => EG_TYPE,
        nr_templates => 2
    )
    port map(
        lhc_clk,
        obj1_calo => bx_data.eg(2),
        condition_o => double_eg_i193
    );

cond_double_eg_i85_i: entity work.comb_conditions
    generic map(
-- setting slice high value(s) instead of default value(s) ("NR_MU_OBJECTS-1" => 7)
        slice_1_high_obj1 => 11,
        slice_2_high_obj1 => 11,
-- object cuts
        pt_thresholds_obj1 => (X"0014", X"0014", X"0000", X"0000"),
        nr_eta_windows_obj1 => (1, 1, 0, 0),
        eta_w1_upper_limits_obj1 => (X"0039", X"0039", X"0000", X"0000"),
        eta_w1_lower_limits_obj1 => (X"00C6", X"00C6", X"0000", X"0000"),
-- number of objects and type
        nr_obj1 => NR_EG_OBJECTS,
        type_obj1 => EG_TYPE,
        nr_templates => 2
    )
    port map(
        lhc_clk,
        obj1_calo => bx_data.eg(2),
        condition_o => double_eg_i85
    );

cond_double_eg_i86_i: entity work.comb_conditions
    generic map(
-- setting slice high value(s) instead of default value(s) ("NR_MU_OBJECTS-1" => 7)
        slice_1_high_obj1 => 11,
        slice_2_high_obj1 => 11,
-- object cuts
        pt_thresholds_obj1 => (X"0018", X"0018", X"0000", X"0000"),
        nr_eta_windows_obj1 => (1, 1, 0, 0),
        eta_w1_upper_limits_obj1 => (X"0039", X"0039", X"0000", X"0000"),
        eta_w1_lower_limits_obj1 => (X"00C6", X"00C6", X"0000", X"0000"),
-- number of objects and type
        nr_obj1 => NR_EG_OBJECTS,
        type_obj1 => EG_TYPE,
        nr_templates => 2
    )
    port map(
        lhc_clk,
        obj1_calo => bx_data.eg(2),
        condition_o => double_eg_i86
    );

cond_double_eg_i87_i: entity work.comb_conditions
    generic map(
-- setting slice high value(s) instead of default value(s) ("NR_MU_OBJECTS-1" => 7)
        slice_1_high_obj1 => 11,
        slice_2_high_obj1 => 11,
-- object cuts
        pt_thresholds_obj1 => (X"001E", X"001E", X"0000", X"0000"),
        nr_eta_windows_obj1 => (1, 1, 0, 0),
        eta_w1_upper_limits_obj1 => (X"0039", X"0039", X"0000", X"0000"),
        eta_w1_lower_limits_obj1 => (X"00C6", X"00C6", X"0000", X"0000"),
-- number of objects and type
        nr_obj1 => NR_EG_OBJECTS,
        type_obj1 => EG_TYPE,
        nr_templates => 2
    )
    port map(
        lhc_clk,
        obj1_calo => bx_data.eg(2),
        condition_o => double_eg_i87
    );

cond_double_eg_i88_i: entity work.comb_conditions
    generic map(
-- setting slice high value(s) instead of default value(s) ("NR_MU_OBJECTS-1" => 7)
        slice_1_high_obj1 => 11,
        slice_2_high_obj1 => 11,
-- object cuts
        pt_thresholds_obj1 => (X"0022", X"0022", X"0000", X"0000"),
        nr_eta_windows_obj1 => (1, 1, 0, 0),
        eta_w1_upper_limits_obj1 => (X"0039", X"0039", X"0000", X"0000"),
        eta_w1_lower_limits_obj1 => (X"00C6", X"00C6", X"0000", X"0000"),
-- number of objects and type
        nr_obj1 => NR_EG_OBJECTS,
        type_obj1 => EG_TYPE,
        nr_templates => 2
    )
    port map(
        lhc_clk,
        obj1_calo => bx_data.eg(2),
        condition_o => double_eg_i88
    );

cond_double_jet_i122_i: entity work.comb_conditions
    generic map(
-- setting slice high value(s) instead of default value(s) ("NR_MU_OBJECTS-1" => 7)
        slice_1_high_obj1 => 11,
        slice_2_high_obj1 => 11,
-- object cuts
        pt_thresholds_obj1 => (X"0050", X"0050", X"0000", X"0000"),
        nr_eta_windows_obj1 => (1, 1, 0, 0),
        eta_w1_upper_limits_obj1 => (X"0039", X"0039", X"0000", X"0000"),
        eta_w1_lower_limits_obj1 => (X"00C6", X"00C6", X"0000", X"0000"),
-- number of objects and type
        nr_obj1 => NR_JET_OBJECTS,
        type_obj1 => JET_TYPE,
        nr_templates => 2
    )
    port map(
        lhc_clk,
        obj1_calo => bx_data.jet(2),
        condition_o => double_jet_i122
    );

cond_quad_jet_i309_i: entity work.comb_conditions
    generic map(
-- setting slice high value(s) instead of default value(s) ("NR_MU_OBJECTS-1" => 7)
        slice_1_high_obj1 => 11,
        slice_2_high_obj1 => 11,
        slice_3_high_obj1 => 11,
        slice_4_high_obj1 => 11,
-- object cuts
        pt_thresholds_obj1 => (X"008C", X"006E", X"0050", X"0046"),
        nr_eta_windows_obj1 => (1, 1, 1, 1),
        eta_w1_upper_limits_obj1 => (X"0036", X"0036", X"0036", X"0036"),
        eta_w1_lower_limits_obj1 => (X"00C9", X"00C9", X"00C9", X"00C9"),
-- number of objects and type
        nr_obj1 => NR_JET_OBJECTS,
        type_obj1 => JET_TYPE,
        nr_templates => 4
    )
    port map(
        lhc_clk,
        obj1_calo => bx_data.jet(2),
        condition_o => quad_jet_i309
    );

cond_quad_jet_i310_i: entity work.comb_conditions
    generic map(
-- setting slice high value(s) instead of default value(s) ("NR_MU_OBJECTS-1" => 7)
        slice_1_high_obj1 => 11,
        slice_2_high_obj1 => 11,
        slice_3_high_obj1 => 11,
        slice_4_high_obj1 => 11,
-- object cuts
        pt_thresholds_obj1 => (X"008C", X"006E", X"0050", X"0050"),
        nr_eta_windows_obj1 => (1, 1, 1, 1),
        eta_w1_upper_limits_obj1 => (X"0036", X"0036", X"0036", X"0036"),
        eta_w1_lower_limits_obj1 => (X"00C9", X"00C9", X"00C9", X"00C9"),
-- number of objects and type
        nr_obj1 => NR_JET_OBJECTS,
        type_obj1 => JET_TYPE,
        nr_templates => 4
    )
    port map(
        lhc_clk,
        obj1_calo => bx_data.jet(2),
        condition_o => quad_jet_i310
    );

cond_quad_jet_i311_i: entity work.comb_conditions
    generic map(
-- setting slice high value(s) instead of default value(s) ("NR_MU_OBJECTS-1" => 7)
        slice_1_high_obj1 => 11,
        slice_2_high_obj1 => 11,
        slice_3_high_obj1 => 11,
        slice_4_high_obj1 => 11,
-- object cuts
        pt_thresholds_obj1 => (X"00A0", X"0078", X"005A", X"0050"),
        nr_eta_windows_obj1 => (1, 1, 1, 1),
        eta_w1_upper_limits_obj1 => (X"0030", X"0030", X"0034", X"0034"),
        eta_w1_lower_limits_obj1 => (X"00CF", X"00CF", X"00CB", X"00CB"),
-- number of objects and type
        nr_obj1 => NR_JET_OBJECTS,
        type_obj1 => JET_TYPE,
        nr_templates => 4
    )
    port map(
        lhc_clk,
        obj1_calo => bx_data.jet(2),
        condition_o => quad_jet_i311
    );

cond_quad_jet_i312_i: entity work.comb_conditions
    generic map(
-- setting slice high value(s) instead of default value(s) ("NR_MU_OBJECTS-1" => 7)
        slice_1_high_obj1 => 11,
        slice_2_high_obj1 => 11,
        slice_3_high_obj1 => 11,
        slice_4_high_obj1 => 11,
-- object cuts
        pt_thresholds_obj1 => (X"00A0", X"0078", X"0064", X"005A"),
        nr_eta_windows_obj1 => (1, 1, 1, 1),
        eta_w1_upper_limits_obj1 => (X"0030", X"0030", X"0034", X"0034"),
        eta_w1_lower_limits_obj1 => (X"00CF", X"00CF", X"00CB", X"00CB"),
-- number of objects and type
        nr_obj1 => NR_JET_OBJECTS,
        type_obj1 => JET_TYPE,
        nr_templates => 4
    )
    port map(
        lhc_clk,
        obj1_calo => bx_data.jet(2),
        condition_o => quad_jet_i312
    );

cond_single_jet_i104_i: entity work.comb_conditions
    generic map(
-- setting slice high value(s) instead of default value(s) ("NR_MU_OBJECTS-1" => 7)
        slice_1_high_obj1 => 11,
-- object cuts
        pt_thresholds_obj1 => (X"00C8", X"0000", X"0000", X"0000"),
        nr_eta_windows_obj1 => (1, 0, 0, 0),
        eta_w1_upper_limits_obj1 => (X"0039", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits_obj1 => (X"00C6", X"0000", X"0000", X"0000"),
-- number of objects and type
        nr_obj1 => NR_JET_OBJECTS,
        type_obj1 => JET_TYPE,
        nr_templates => 1
    )
    port map(
        lhc_clk,
        obj1_calo => bx_data.jet(2),
        condition_o => single_jet_i104
    );

cond_single_jet_i121_i: entity work.comb_conditions
    generic map(
-- setting slice high value(s) instead of default value(s) ("NR_MU_OBJECTS-1" => 7)
        slice_1_high_obj1 => 11,
-- object cuts
        pt_thresholds_obj1 => (X"0078", X"0000", X"0000", X"0000"),
        nr_eta_windows_obj1 => (1, 0, 0, 0),
        eta_w1_upper_limits_obj1 => (X"0039", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits_obj1 => (X"00C6", X"0000", X"0000", X"0000"),
-- number of objects and type
        nr_obj1 => NR_JET_OBJECTS,
        type_obj1 => JET_TYPE,
        nr_templates => 1
    )
    port map(
        lhc_clk,
        obj1_calo => bx_data.jet(2),
        condition_o => single_jet_i121
    );

cond_single_jet_i242_i: entity work.comb_conditions
    generic map(
-- setting slice high value(s) instead of default value(s) ("NR_MU_OBJECTS-1" => 7)
        slice_1_high_obj1 => 11,
-- object cuts
        pt_thresholds_obj1 => (X"00F0", X"0000", X"0000", X"0000"),
-- number of objects and type
        nr_obj1 => NR_JET_OBJECTS,
        type_obj1 => JET_TYPE,
        nr_templates => 1
    )
    port map(
        lhc_clk,
        obj1_calo => bx_data.jet(2),
        condition_o => single_jet_i242
    );

cond_single_jet_i248_i: entity work.comb_conditions
    generic map(
-- setting slice high value(s) instead of default value(s) ("NR_MU_OBJECTS-1" => 7)
        slice_1_high_obj1 => 11,
-- object cuts
        pt_thresholds_obj1 => (X"0118", X"0000", X"0000", X"0000"),
        nr_eta_windows_obj1 => (1, 0, 0, 0),
        eta_w1_upper_limits_obj1 => (X"0039", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits_obj1 => (X"00C6", X"0000", X"0000", X"0000"),
-- number of objects and type
        nr_obj1 => NR_JET_OBJECTS,
        type_obj1 => JET_TYPE,
        nr_templates => 1
    )
    port map(
        lhc_clk,
        obj1_calo => bx_data.jet(2),
        condition_o => single_jet_i248
    );

cond_single_jet_i283_i: entity work.comb_conditions
    generic map(
-- setting slice high value(s) instead of default value(s) ("NR_MU_OBJECTS-1" => 7)
        slice_1_high_obj1 => 11,
-- object cuts
        pt_thresholds_obj1 => (X"00E6", X"0000", X"0000", X"0000"),
-- number of objects and type
        nr_obj1 => NR_JET_OBJECTS,
        type_obj1 => JET_TYPE,
        nr_templates => 1
    )
    port map(
        lhc_clk,
        obj1_calo => bx_data.jet(2),
        condition_o => single_jet_i283
    );

cond_single_jet_i339_i: entity work.comb_conditions
    generic map(
-- setting slice high value(s) instead of default value(s) ("NR_MU_OBJECTS-1" => 7)
        slice_1_high_obj1 => 11,
-- object cuts
        pt_thresholds_obj1 => (X"0028", X"0000", X"0000", X"0000"),
        nr_eta_windows_obj1 => (1, 0, 0, 0),
        eta_w1_upper_limits_obj1 => (X"0039", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits_obj1 => (X"00C6", X"0000", X"0000", X"0000"),
-- number of objects and type
        nr_obj1 => NR_JET_OBJECTS,
        type_obj1 => JET_TYPE,
        nr_templates => 1
    )
    port map(
        lhc_clk,
        obj1_calo => bx_data.jet(2),
        condition_o => single_jet_i339
    );

cond_single_jet_i340_i: entity work.comb_conditions
    generic map(
-- setting slice high value(s) instead of default value(s) ("NR_MU_OBJECTS-1" => 7)
        slice_1_high_obj1 => 11,
-- object cuts
        pt_thresholds_obj1 => (X"0056", X"0000", X"0000", X"0000"),
        nr_eta_windows_obj1 => (1, 0, 0, 0),
        eta_w1_upper_limits_obj1 => (X"0039", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits_obj1 => (X"00C6", X"0000", X"0000", X"0000"),
-- number of objects and type
        nr_obj1 => NR_JET_OBJECTS,
        type_obj1 => JET_TYPE,
        nr_templates => 1
    )
    port map(
        lhc_clk,
        obj1_calo => bx_data.jet(2),
        condition_o => single_jet_i340
    );

cond_single_jet_i341_i: entity work.comb_conditions
    generic map(
-- setting slice high value(s) instead of default value(s) ("NR_MU_OBJECTS-1" => 7)
        slice_1_high_obj1 => 11,
-- object cuts
        pt_thresholds_obj1 => (X"005C", X"0000", X"0000", X"0000"),
        nr_eta_windows_obj1 => (1, 0, 0, 0),
        eta_w1_upper_limits_obj1 => (X"0039", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits_obj1 => (X"00C6", X"0000", X"0000", X"0000"),
-- number of objects and type
        nr_obj1 => NR_JET_OBJECTS,
        type_obj1 => JET_TYPE,
        nr_templates => 1
    )
    port map(
        lhc_clk,
        obj1_calo => bx_data.jet(2),
        condition_o => single_jet_i341
    );

cond_single_tau_i217_i: entity work.comb_conditions
    generic map(
-- setting slice high value(s) instead of default value(s) ("NR_MU_OBJECTS-1" => 7)
        slice_1_high_obj1 => 11,
-- object cuts
        pt_thresholds_obj1 => (X"0038", X"0000", X"0000", X"0000"),
        nr_eta_windows_obj1 => (1, 0, 0, 0),
        eta_w1_upper_limits_obj1 => (X"0030", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits_obj1 => (X"00CF", X"0000", X"0000", X"0000"),
        iso_luts_obj1 => (X"E", X"F", X"F", X"F"),
-- number of objects and type
        nr_obj1 => NR_TAU_OBJECTS,
        type_obj1 => TAU_TYPE,
        nr_templates => 1
    )
    port map(
        lhc_clk,
        obj1_calo => bx_data.tau(2),
        condition_o => single_tau_i217
    );

cond_single_tau_i218_i: entity work.comb_conditions
    generic map(
-- setting slice high value(s) instead of default value(s) ("NR_MU_OBJECTS-1" => 7)
        slice_1_high_obj1 => 11,
-- object cuts
        pt_thresholds_obj1 => (X"003C", X"0000", X"0000", X"0000"),
        nr_eta_windows_obj1 => (1, 0, 0, 0),
        eta_w1_upper_limits_obj1 => (X"0030", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits_obj1 => (X"00CF", X"0000", X"0000", X"0000"),
        iso_luts_obj1 => (X"E", X"F", X"F", X"F"),
-- number of objects and type
        nr_obj1 => NR_TAU_OBJECTS,
        type_obj1 => TAU_TYPE,
        nr_templates => 1
    )
    port map(
        lhc_clk,
        obj1_calo => bx_data.tau(2),
        condition_o => single_tau_i218
    );

cond_single_tau_i219_i: entity work.comb_conditions
    generic map(
-- setting slice high value(s) instead of default value(s) ("NR_MU_OBJECTS-1" => 7)
        slice_1_high_obj1 => 11,
-- object cuts
        pt_thresholds_obj1 => (X"0040", X"0000", X"0000", X"0000"),
        nr_eta_windows_obj1 => (1, 0, 0, 0),
        eta_w1_upper_limits_obj1 => (X"0030", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits_obj1 => (X"00CF", X"0000", X"0000", X"0000"),
        iso_luts_obj1 => (X"E", X"F", X"F", X"F"),
-- number of objects and type
        nr_obj1 => NR_TAU_OBJECTS,
        type_obj1 => TAU_TYPE,
        nr_templates => 1
    )
    port map(
        lhc_clk,
        obj1_calo => bx_data.tau(2),
        condition_o => single_tau_i219
    );

cond_single_tau_i220_i: entity work.comb_conditions
    generic map(
-- setting slice high value(s) instead of default value(s) ("NR_MU_OBJECTS-1" => 7)
        slice_1_high_obj1 => 11,
-- object cuts
        pt_thresholds_obj1 => (X"0044", X"0000", X"0000", X"0000"),
        nr_eta_windows_obj1 => (1, 0, 0, 0),
        eta_w1_upper_limits_obj1 => (X"0030", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits_obj1 => (X"00CF", X"0000", X"0000", X"0000"),
        iso_luts_obj1 => (X"E", X"F", X"F", X"F"),
-- number of objects and type
        nr_obj1 => NR_TAU_OBJECTS,
        type_obj1 => TAU_TYPE,
        nr_templates => 1
    )
    port map(
        lhc_clk,
        obj1_calo => bx_data.tau(2),
        condition_o => single_tau_i220
    );

cond_single_tau_i221_i: entity work.comb_conditions
    generic map(
-- setting slice high value(s) instead of default value(s) ("NR_MU_OBJECTS-1" => 7)
        slice_1_high_obj1 => 11,
-- object cuts
        pt_thresholds_obj1 => (X"0048", X"0000", X"0000", X"0000"),
        nr_eta_windows_obj1 => (1, 0, 0, 0),
        eta_w1_upper_limits_obj1 => (X"0030", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits_obj1 => (X"00CF", X"0000", X"0000", X"0000"),
        iso_luts_obj1 => (X"E", X"F", X"F", X"F"),
-- number of objects and type
        nr_obj1 => NR_TAU_OBJECTS,
        type_obj1 => TAU_TYPE,
        nr_templates => 1
    )
    port map(
        lhc_clk,
        obj1_calo => bx_data.tau(2),
        condition_o => single_tau_i221
    );

cond_single_tau_i222_i: entity work.comb_conditions
    generic map(
-- setting slice high value(s) instead of default value(s) ("NR_MU_OBJECTS-1" => 7)
        slice_1_high_obj1 => 11,
-- object cuts
        pt_thresholds_obj1 => (X"0050", X"0000", X"0000", X"0000"),
        nr_eta_windows_obj1 => (1, 0, 0, 0),
        eta_w1_upper_limits_obj1 => (X"0030", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits_obj1 => (X"00CF", X"0000", X"0000", X"0000"),
        iso_luts_obj1 => (X"E", X"F", X"F", X"F"),
-- number of objects and type
        nr_obj1 => NR_TAU_OBJECTS,
        type_obj1 => TAU_TYPE,
        nr_templates => 1
    )
    port map(
        lhc_clk,
        obj1_calo => bx_data.tau(2),
        condition_o => single_tau_i222
    );

cond_single_tau_i223_i: entity work.comb_conditions
    generic map(
-- setting slice high value(s) instead of default value(s) ("NR_MU_OBJECTS-1" => 7)
        slice_1_high_obj1 => 11,
-- object cuts
        pt_thresholds_obj1 => (X"008C", X"0000", X"0000", X"0000"),
        nr_eta_windows_obj1 => (1, 0, 0, 0),
        eta_w1_upper_limits_obj1 => (X"0030", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits_obj1 => (X"00CF", X"0000", X"0000", X"0000"),
-- number of objects and type
        nr_obj1 => NR_TAU_OBJECTS,
        type_obj1 => TAU_TYPE,
        nr_templates => 1
    )
    port map(
        lhc_clk,
        obj1_calo => bx_data.tau(2),
        condition_o => single_tau_i223
    );

cond_double_mu_i119_i: entity work.comb_conditions
    generic map(
-- no slice requirements
-- object cuts
        pt_thresholds_obj1 => (X"0007", X"0007", X"0000", X"0000"),
        qual_luts_obj1 => (X"F000", X"F000", X"FFFF", X"FFFF"),
-- number of objects and type
        nr_obj1 => NR_MU_OBJECTS,
        type_obj1 => MU_TYPE,
        nr_templates => 2
    )
    port map(
        lhc_clk,
        obj1_muon =>bx_data. mu(2),
        condition_o => double_mu_i119
    );

cond_single_mu_i103_i: entity work.comb_conditions
    generic map(
-- no slice requirements
-- object cuts
        pt_thresholds_obj1 => (X"0007", X"0000", X"0000", X"0000"),
        nr_eta_windows_obj1 => (1, 0, 0, 0),
        eta_w1_upper_limits_obj1 => (X"008A", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits_obj1 => (X"0176", X"0000", X"0000", X"0000"),
        qual_luts_obj1 => (X"F000", X"FFFF", X"FFFF", X"FFFF"),
-- number of objects and type
        nr_obj1 => NR_MU_OBJECTS,
        type_obj1 => MU_TYPE,
        nr_templates => 1
    )
    port map(
        lhc_clk,
        obj1_muon =>bx_data. mu(2),
        condition_o => single_mu_i103
    );

cond_single_mu_i216_i: entity work.comb_conditions
    generic map(
-- no slice requirements
-- object cuts
        pt_thresholds_obj1 => (X"002D", X"0000", X"0000", X"0000"),
        nr_eta_windows_obj1 => (1, 0, 0, 0),
        eta_w1_upper_limits_obj1 => (X"00C1", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits_obj1 => (X"013F", X"0000", X"0000", X"0000"),
        qual_luts_obj1 => (X"F000", X"FFFF", X"FFFF", X"FFFF"),
-- number of objects and type
        nr_obj1 => NR_MU_OBJECTS,
        type_obj1 => MU_TYPE,
        nr_templates => 1
    )
    port map(
        lhc_clk,
        obj1_muon =>bx_data. mu(2),
        condition_o => single_mu_i216
    );

cond_single_mu_i335_i: entity work.comb_conditions
    generic map(
-- no slice requirements
-- object cuts
        pt_thresholds_obj1 => (X"0001", X"0000", X"0000", X"0000"),
        nr_eta_windows_obj1 => (1, 0, 0, 0),
        eta_w1_upper_limits_obj1 => (X"0081", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits_obj1 => (X"017F", X"0000", X"0000", X"0000"),
        qual_luts_obj1 => (X"FFF0", X"FFFF", X"FFFF", X"FFFF"),
-- number of objects and type
        nr_obj1 => NR_MU_OBJECTS,
        type_obj1 => MU_TYPE,
        nr_templates => 1
    )
    port map(
        lhc_clk,
        obj1_muon =>bx_data. mu(2),
        condition_o => single_mu_i335
    );

cond_single_mu_i338_i: entity work.comb_conditions
    generic map(
-- no slice requirements
-- object cuts
        pt_thresholds_obj1 => (X"0001", X"0000", X"0000", X"0000"),
        nr_eta_windows_obj1 => (1, 0, 0, 0),
        eta_w1_upper_limits_obj1 => (X"0065", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits_obj1 => (X"019B", X"0000", X"0000", X"0000"),
        qual_luts_obj1 => (X"FFF0", X"FFFF", X"FFFF", X"FFFF"),
-- number of objects and type
        nr_obj1 => NR_MU_OBJECTS,
        type_obj1 => MU_TYPE,
        nr_templates => 1
    )
    port map(
        lhc_clk,
        obj1_muon =>bx_data. mu(2),
        condition_o => single_mu_i338
    );

cond_single_mu_i4_i: entity work.comb_conditions
    generic map(
-- no slice requirements
-- object cuts
        pt_thresholds_obj1 => (X"0001", X"0000", X"0000", X"0000"),
        qual_luts_obj1 => (X"FFF0", X"FFFF", X"FFFF", X"FFFF"),
-- number of objects and type
        nr_obj1 => NR_MU_OBJECTS,
        type_obj1 => MU_TYPE,
        nr_templates => 1
    )
    port map(
        lhc_clk,
        obj1_muon =>bx_data. mu(2),
        condition_o => single_mu_i4
    );

cond_single_mu_i84_i: entity work.comb_conditions
    generic map(
-- no slice requirements
-- object cuts
        pt_thresholds_obj1 => (X"000D", X"0000", X"0000", X"0000"),
        qual_luts_obj1 => (X"F000", X"FFFF", X"FFFF", X"FFFF"),
-- number of objects and type
        nr_obj1 => NR_MU_OBJECTS,
        type_obj1 => MU_TYPE,
        nr_templates => 1
    )
    port map(
        lhc_clk,
        obj1_muon =>bx_data. mu(2),
        condition_o => single_mu_i84
    );

cond_triple_mu_i66_i: entity work.comb_conditions
    generic map(
-- no slice requirements
-- object cuts
        pt_thresholds_obj1 => (X"000B", X"0008", X"0006", X"0000"),
        qual_luts_obj1 => (X"FF00", X"FF00", X"FF00", X"FFFF"),
-- number of objects and type
        nr_obj1 => NR_MU_OBJECTS,
        type_obj1 => MU_TYPE,
        nr_templates => 3
    )
    port map(
        lhc_clk,
        obj1_muon =>bx_data. mu(2),
        condition_o => triple_mu_i66
    );

cond_triple_mu_i73_i: entity work.comb_conditions
    generic map(
-- no slice requirements
-- object cuts
        pt_thresholds_obj1 => (X"000B", X"0009", X"0006", X"0000"),
        qual_luts_obj1 => (X"FF00", X"FF00", X"FF00", X"FFFF"),
-- number of objects and type
        nr_obj1 => NR_MU_OBJECTS,
        type_obj1 => MU_TYPE,
        nr_templates => 3
    )
    port map(
        lhc_clk,
        obj1_muon =>bx_data. mu(2),
        condition_o => triple_mu_i73
    );

cond_single_etmhf_i105_i: entity work.esums_conditions
    generic map(
        et_threshold => X"0050",
        obj_type => ETMHF_TYPE
    )
    port map(
        lhc_clk,
        bx_data.etmhf(2),
        condition_o => single_etmhf_i105
    );

cond_single_etmhf_i106_i: entity work.esums_conditions
    generic map(
        et_threshold => X"0064",
        obj_type => ETMHF_TYPE
    )
    port map(
        lhc_clk,
        bx_data.etmhf(2),
        condition_o => single_etmhf_i106
    );

cond_single_etmhf_i123_i: entity work.esums_conditions
    generic map(
        et_threshold => X"0078",
        obj_type => ETMHF_TYPE
    )
    port map(
        lhc_clk,
        bx_data.etmhf(2),
        condition_o => single_etmhf_i123
    );

cond_single_etmhf_i224_i: entity work.esums_conditions
    generic map(
        et_threshold => X"00A0",
        obj_type => ETMHF_TYPE
    )
    port map(
        lhc_clk,
        bx_data.etmhf(2),
        condition_o => single_etmhf_i224
    );

cond_single_etmhf_i225_i: entity work.esums_conditions
    generic map(
        et_threshold => X"00B4",
        obj_type => ETMHF_TYPE
    )
    port map(
        lhc_clk,
        bx_data.etmhf(2),
        condition_o => single_etmhf_i225
    );

cond_single_etmhf_i226_i: entity work.esums_conditions
    generic map(
        et_threshold => X"00C8",
        obj_type => ETMHF_TYPE
    )
    port map(
        lhc_clk,
        bx_data.etmhf(2),
        condition_o => single_etmhf_i226
    );

cond_single_etmhf_i227_i: entity work.esums_conditions
    generic map(
        et_threshold => X"00DC",
        obj_type => ETMHF_TYPE
    )
    port map(
        lhc_clk,
        bx_data.etmhf(2),
        condition_o => single_etmhf_i227
    );

cond_single_etmhf_i262_i: entity work.esums_conditions
    generic map(
        et_threshold => X"008C",
        obj_type => ETMHF_TYPE
    )
    port map(
        lhc_clk,
        bx_data.etmhf(2),
        condition_o => single_etmhf_i262
    );

cond_single_etmhf_i325_i: entity work.esums_conditions
    generic map(
        et_threshold => X"00F0",
        obj_type => ETMHF_TYPE
    )
    port map(
        lhc_clk,
        bx_data.etmhf(2),
        condition_o => single_etmhf_i325
    );

cond_single_etmhf_i326_i: entity work.esums_conditions
    generic map(
        et_threshold => X"0104",
        obj_type => ETMHF_TYPE
    )
    port map(
        lhc_clk,
        bx_data.etmhf(2),
        condition_o => single_etmhf_i326
    );

cond_single_htt_i107_i: entity work.esums_conditions
    generic map(
        et_threshold => X"01E0",
        obj_type => HTT_TYPE
    )
    port map(
        lhc_clk,
        bx_data.htt(2),
        condition_o => single_htt_i107
    );

cond_single_htt_i108_i: entity work.esums_conditions
    generic map(
        et_threshold => X"01F4",
        obj_type => HTT_TYPE
    )
    port map(
        lhc_clk,
        bx_data.htt(2),
        condition_o => single_htt_i108
    );

cond_single_htt_i120_i: entity work.esums_conditions
    generic map(
        et_threshold => X"0078",
        obj_type => HTT_TYPE
    )
    port map(
        lhc_clk,
        bx_data.htt(2),
        condition_o => single_htt_i120
    );

cond_single_htt_i124_i: entity work.esums_conditions
    generic map(
        et_threshold => X"01B8",
        obj_type => HTT_TYPE
    )
    port map(
        lhc_clk,
        bx_data.htt(2),
        condition_o => single_htt_i124
    );

cond_single_htt_i125_i: entity work.esums_conditions
    generic map(
        et_threshold => X"0208",
        obj_type => HTT_TYPE
    )
    port map(
        lhc_clk,
        bx_data.htt(2),
        condition_o => single_htt_i125
    );

cond_single_htt_i194_i: entity work.esums_conditions
    generic map(
        et_threshold => X"0230",
        obj_type => HTT_TYPE
    )
    port map(
        lhc_clk,
        bx_data.htt(2),
        condition_o => single_htt_i194
    );

cond_single_htt_i195_i: entity work.esums_conditions
    generic map(
        et_threshold => X"0258",
        obj_type => HTT_TYPE
    )
    port map(
        lhc_clk,
        bx_data.htt(2),
        condition_o => single_htt_i195
    );

cond_single_htt_i196_i: entity work.esums_conditions
    generic map(
        et_threshold => X"0280",
        obj_type => HTT_TYPE
    )
    port map(
        lhc_clk,
        bx_data.htt(2),
        condition_o => single_htt_i196
    );

cond_single_htt_i197_i: entity work.esums_conditions
    generic map(
        et_threshold => X"02A8",
        obj_type => HTT_TYPE
    )
    port map(
        lhc_clk,
        bx_data.htt(2),
        condition_o => single_htt_i197
    );

cond_invariant_mass_i210_i: entity work.correlation_conditions
    generic map(
-- obj cuts
        pt_threshold_obj1 => X"0038",
        nr_eta_windows_obj1 => 1,
        eta_w1_upper_limit_obj1 => X"0030",
        eta_w1_lower_limit_obj1 => X"00CF",
        iso_lut_obj1 => X"E",
        pt_threshold_obj2 => X"0038",
        nr_eta_windows_obj2 => 1,
        eta_w1_upper_limit_obj2 => X"0030",
        eta_w1_lower_limit_obj2 => X"00CF",
        iso_lut_obj2 => X"E",
-- correlation cuts
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        mass_vector_width => TAU_PT_VECTOR_WIDTH+TAU_PT_VECTOR_WIDTH+CALO_CALO_COSH_COS_VECTOR_WIDTH,
        mass_upper_limit_vector => X"000000001312D000",
        mass_lower_limit_vector => X"0000000000000000",
-- number of objects and type
        nr_obj1 => NR_TAU_OBJECTS,
        type_obj1 => TAU_TYPE,
        nr_obj2 => NR_TAU_OBJECTS,
        type_obj2 => TAU_TYPE,
-- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        calo_obj1 => bx_data.tau(2),
        calo_obj2 => bx_data.tau(2),
        mass_inv_pt => tau_tau_bx_0_bx_0_mass_inv_pt,
        condition_o => invariant_mass_i210
    );

cond_invariant_mass_i273_i: entity work.correlation_conditions
    generic map(
-- obj cuts
        pt_threshold_obj1 => X"003C",
        nr_eta_windows_obj1 => 1,
        eta_w1_upper_limit_obj1 => X"0039",
        eta_w1_lower_limit_obj1 => X"00C6",
        pt_threshold_obj2 => X"003C",
        nr_eta_windows_obj2 => 1,
        eta_w1_upper_limit_obj2 => X"0039",
        eta_w1_lower_limit_obj2 => X"00C6",
-- correlation cuts
        deta_cut => true,
        deta_upper_limit_vector => X"000005DC",
        deta_lower_limit_vector => X"00000000",
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        mass_vector_width => JET_PT_VECTOR_WIDTH+JET_PT_VECTOR_WIDTH+CALO_CALO_COSH_COS_VECTOR_WIDTH,
        mass_upper_limit_vector => X"00041A6642C78140",
        mass_lower_limit_vector => X"00000001823CF400",
-- number of objects and type
        nr_obj1 => NR_JET_OBJECTS,
        type_obj1 => JET_TYPE,
        nr_obj2 => NR_JET_OBJECTS,
        type_obj2 => JET_TYPE,
-- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        calo_obj1 => bx_data.jet(2),
        calo_obj2 => bx_data.jet(2),
        deta => jet_jet_bx_0_bx_0_deta,
        mass_inv_pt => jet_jet_bx_0_bx_0_mass_inv_pt,
        condition_o => invariant_mass_i273
    );

cond_invariant_mass_i284_i: entity work.correlation_conditions
    generic map(
-- obj cuts
        pt_threshold_obj1 => X"0050",
        nr_eta_windows_obj1 => 1,
        eta_w1_upper_limit_obj1 => X"003D",
        eta_w1_lower_limit_obj1 => X"00C2",
        pt_threshold_obj2 => X"0050",
        nr_eta_windows_obj2 => 1,
        eta_w1_upper_limit_obj2 => X"003D",
        eta_w1_lower_limit_obj2 => X"00C2",
-- correlation cuts
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        mass_vector_width => JET_PT_VECTOR_WIDTH+JET_PT_VECTOR_WIDTH+CALO_CALO_COSH_COS_VECTOR_WIDTH,
        mass_upper_limit_vector => X"00041A6642C78140",
        mass_lower_limit_vector => X"000000047999ED00",
-- number of objects and type
        nr_obj1 => NR_JET_OBJECTS,
        type_obj1 => JET_TYPE,
        nr_obj2 => NR_JET_OBJECTS,
        type_obj2 => JET_TYPE,
-- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        calo_obj1 => bx_data.jet(2),
        calo_obj2 => bx_data.jet(2),
        mass_inv_pt => jet_jet_bx_0_bx_0_mass_inv_pt,
        condition_o => invariant_mass_i284
    );

cond_invariant_mass_i285_i: entity work.correlation_conditions
    generic map(
-- obj cuts
        pt_threshold_obj1 => X"0078",
        pt_threshold_obj2 => X"0078",
-- correlation cuts
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        mass_vector_width => JET_PT_VECTOR_WIDTH+JET_PT_VECTOR_WIDTH+CALO_CALO_COSH_COS_VECTOR_WIDTH,
        mass_upper_limit_vector => X"00041A6642C78140",
        mass_lower_limit_vector => X"000000047999ED00",
-- number of objects and type
        nr_obj1 => NR_JET_OBJECTS,
        type_obj1 => JET_TYPE,
        nr_obj2 => NR_JET_OBJECTS,
        type_obj2 => JET_TYPE,
-- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        calo_obj1 => bx_data.jet(2),
        calo_obj2 => bx_data.jet(2),
        mass_inv_pt => jet_jet_bx_0_bx_0_mass_inv_pt,
        condition_o => invariant_mass_i285
    );

cond_invariant_mass_i286_i: entity work.correlation_conditions
    generic map(
-- obj cuts
        pt_threshold_obj1 => X"0078",
        pt_threshold_obj2 => X"0050",
        nr_eta_windows_obj2 => 2,
        eta_w1_upper_limit_obj2 => X"00BA",
        eta_w1_lower_limit_obj2 => X"008D",
        eta_w2_upper_limit_obj2 => X"0072",
        eta_w2_lower_limit_obj2 => X"0045",
-- correlation cuts
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        mass_vector_width => JET_PT_VECTOR_WIDTH+JET_PT_VECTOR_WIDTH+CALO_CALO_COSH_COS_VECTOR_WIDTH,
        mass_upper_limit_vector => X"00041A6642C78140",
        mass_lower_limit_vector => X"000000047999ED00",
-- number of objects and type
        nr_obj1 => NR_JET_OBJECTS,
        type_obj1 => JET_TYPE,
        nr_obj2 => NR_JET_OBJECTS,
        type_obj2 => JET_TYPE,
-- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        calo_obj1 => bx_data.jet(2),
        calo_obj2 => bx_data.jet(2),
        mass_inv_pt => jet_jet_bx_0_bx_0_mass_inv_pt,
        condition_o => invariant_mass_i286
    );

cond_invariant_mass_i287_i: entity work.correlation_conditions
    generic map(
-- obj cuts
        pt_threshold_obj1 => X"0078",
        pt_threshold_obj2 => X"0050",
        nr_eta_windows_obj2 => 1,
        eta_w1_upper_limit_obj2 => X"003D",
        eta_w1_lower_limit_obj2 => X"00C2",
-- correlation cuts
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        mass_vector_width => JET_PT_VECTOR_WIDTH+JET_PT_VECTOR_WIDTH+CALO_CALO_COSH_COS_VECTOR_WIDTH,
        mass_upper_limit_vector => X"00041A6642C78140",
        mass_lower_limit_vector => X"000000047999ED00",
-- number of objects and type
        nr_obj1 => NR_JET_OBJECTS,
        type_obj1 => JET_TYPE,
        nr_obj2 => NR_JET_OBJECTS,
        type_obj2 => JET_TYPE,
-- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        calo_obj1 => bx_data.jet(2),
        calo_obj2 => bx_data.jet(2),
        mass_inv_pt => jet_jet_bx_0_bx_0_mass_inv_pt,
        condition_o => invariant_mass_i287
    );

cond_invariant_mass_i288_i: entity work.correlation_conditions
    generic map(
-- obj cuts
        pt_threshold_obj1 => X"0050",
        nr_eta_windows_obj1 => 2,
        eta_w1_upper_limit_obj1 => X"00BA",
        eta_w1_lower_limit_obj1 => X"008D",
        eta_w2_upper_limit_obj1 => X"0072",
        eta_w2_lower_limit_obj1 => X"0045",
        pt_threshold_obj2 => X"0050",
        nr_eta_windows_obj2 => 1,
        eta_w1_upper_limit_obj2 => X"003D",
        eta_w1_lower_limit_obj2 => X"00C2",
-- correlation cuts
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        mass_vector_width => JET_PT_VECTOR_WIDTH+JET_PT_VECTOR_WIDTH+CALO_CALO_COSH_COS_VECTOR_WIDTH,
        mass_upper_limit_vector => X"00041A6642C78140",
        mass_lower_limit_vector => X"000000047999ED00",
-- number of objects and type
        nr_obj1 => NR_JET_OBJECTS,
        type_obj1 => JET_TYPE,
        nr_obj2 => NR_JET_OBJECTS,
        type_obj2 => JET_TYPE,
-- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        calo_obj1 => bx_data.jet(2),
        calo_obj2 => bx_data.jet(2),
        mass_inv_pt => jet_jet_bx_0_bx_0_mass_inv_pt,
        condition_o => invariant_mass_i288
    );

cond_invariant_mass_i289_i: entity work.correlation_conditions
    generic map(
-- obj cuts
        pt_threshold_obj1 => X"0050",
        nr_eta_windows_obj1 => 2,
        eta_w1_upper_limit_obj1 => X"00BA",
        eta_w1_lower_limit_obj1 => X"008D",
        eta_w2_upper_limit_obj1 => X"0072",
        eta_w2_lower_limit_obj1 => X"0045",
        pt_threshold_obj2 => X"0050",
        nr_eta_windows_obj2 => 2,
        eta_w1_upper_limit_obj2 => X"00BA",
        eta_w1_lower_limit_obj2 => X"008D",
        eta_w2_upper_limit_obj2 => X"0072",
        eta_w2_lower_limit_obj2 => X"0045",
-- correlation cuts
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        mass_vector_width => JET_PT_VECTOR_WIDTH+JET_PT_VECTOR_WIDTH+CALO_CALO_COSH_COS_VECTOR_WIDTH,
        mass_upper_limit_vector => X"00041A6642C78140",
        mass_lower_limit_vector => X"000000047999ED00",
-- number of objects and type
        nr_obj1 => NR_JET_OBJECTS,
        type_obj1 => JET_TYPE,
        nr_obj2 => NR_JET_OBJECTS,
        type_obj2 => JET_TYPE,
-- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        calo_obj1 => bx_data.jet(2),
        calo_obj2 => bx_data.jet(2),
        mass_inv_pt => jet_jet_bx_0_bx_0_mass_inv_pt,
        condition_o => invariant_mass_i289
    );

cond_invariant_mass_i290_i: entity work.correlation_conditions
    generic map(
-- obj cuts
        pt_threshold_obj1 => X"005A",
        nr_eta_windows_obj1 => 1,
        eta_w1_upper_limit_obj1 => X"003D",
        eta_w1_lower_limit_obj1 => X"00C2",
        pt_threshold_obj2 => X"005A",
        nr_eta_windows_obj2 => 1,
        eta_w1_upper_limit_obj2 => X"003D",
        eta_w1_lower_limit_obj2 => X"00C2",
-- correlation cuts
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        mass_vector_width => JET_PT_VECTOR_WIDTH+JET_PT_VECTOR_WIDTH+CALO_CALO_COSH_COS_VECTOR_WIDTH,
        mass_upper_limit_vector => X"00041A6642C78140",
        mass_lower_limit_vector => X"000000047999ED00",
-- number of objects and type
        nr_obj1 => NR_JET_OBJECTS,
        type_obj1 => JET_TYPE,
        nr_obj2 => NR_JET_OBJECTS,
        type_obj2 => JET_TYPE,
-- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        calo_obj1 => bx_data.jet(2),
        calo_obj2 => bx_data.jet(2),
        mass_inv_pt => jet_jet_bx_0_bx_0_mass_inv_pt,
        condition_o => invariant_mass_i290
    );

cond_invariant_mass_i291_i: entity work.correlation_conditions
    generic map(
-- obj cuts
        pt_threshold_obj1 => X"0078",
        pt_threshold_obj2 => X"005A",
        nr_eta_windows_obj2 => 2,
        eta_w1_upper_limit_obj2 => X"00BA",
        eta_w1_lower_limit_obj2 => X"008D",
        eta_w2_upper_limit_obj2 => X"0072",
        eta_w2_lower_limit_obj2 => X"0045",
-- correlation cuts
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        mass_vector_width => JET_PT_VECTOR_WIDTH+JET_PT_VECTOR_WIDTH+CALO_CALO_COSH_COS_VECTOR_WIDTH,
        mass_upper_limit_vector => X"00041A6642C78140",
        mass_lower_limit_vector => X"000000047999ED00",
-- number of objects and type
        nr_obj1 => NR_JET_OBJECTS,
        type_obj1 => JET_TYPE,
        nr_obj2 => NR_JET_OBJECTS,
        type_obj2 => JET_TYPE,
-- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        calo_obj1 => bx_data.jet(2),
        calo_obj2 => bx_data.jet(2),
        mass_inv_pt => jet_jet_bx_0_bx_0_mass_inv_pt,
        condition_o => invariant_mass_i291
    );

cond_invariant_mass_i292_i: entity work.correlation_conditions
    generic map(
-- obj cuts
        pt_threshold_obj1 => X"0078",
        pt_threshold_obj2 => X"005A",
        nr_eta_windows_obj2 => 1,
        eta_w1_upper_limit_obj2 => X"003D",
        eta_w1_lower_limit_obj2 => X"00C2",
-- correlation cuts
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        mass_vector_width => JET_PT_VECTOR_WIDTH+JET_PT_VECTOR_WIDTH+CALO_CALO_COSH_COS_VECTOR_WIDTH,
        mass_upper_limit_vector => X"00041A6642C78140",
        mass_lower_limit_vector => X"000000047999ED00",
-- number of objects and type
        nr_obj1 => NR_JET_OBJECTS,
        type_obj1 => JET_TYPE,
        nr_obj2 => NR_JET_OBJECTS,
        type_obj2 => JET_TYPE,
-- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        calo_obj1 => bx_data.jet(2),
        calo_obj2 => bx_data.jet(2),
        mass_inv_pt => jet_jet_bx_0_bx_0_mass_inv_pt,
        condition_o => invariant_mass_i292
    );

cond_invariant_mass_i293_i: entity work.correlation_conditions
    generic map(
-- obj cuts
        pt_threshold_obj1 => X"005A",
        nr_eta_windows_obj1 => 2,
        eta_w1_upper_limit_obj1 => X"00BA",
        eta_w1_lower_limit_obj1 => X"008D",
        eta_w2_upper_limit_obj1 => X"0072",
        eta_w2_lower_limit_obj1 => X"0045",
        pt_threshold_obj2 => X"005A",
        nr_eta_windows_obj2 => 1,
        eta_w1_upper_limit_obj2 => X"003D",
        eta_w1_lower_limit_obj2 => X"00C2",
-- correlation cuts
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        mass_vector_width => JET_PT_VECTOR_WIDTH+JET_PT_VECTOR_WIDTH+CALO_CALO_COSH_COS_VECTOR_WIDTH,
        mass_upper_limit_vector => X"00041A6642C78140",
        mass_lower_limit_vector => X"000000047999ED00",
-- number of objects and type
        nr_obj1 => NR_JET_OBJECTS,
        type_obj1 => JET_TYPE,
        nr_obj2 => NR_JET_OBJECTS,
        type_obj2 => JET_TYPE,
-- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        calo_obj1 => bx_data.jet(2),
        calo_obj2 => bx_data.jet(2),
        mass_inv_pt => jet_jet_bx_0_bx_0_mass_inv_pt,
        condition_o => invariant_mass_i293
    );

cond_invariant_mass_i294_i: entity work.correlation_conditions
    generic map(
-- obj cuts
        pt_threshold_obj1 => X"005A",
        nr_eta_windows_obj1 => 2,
        eta_w1_upper_limit_obj1 => X"00BA",
        eta_w1_lower_limit_obj1 => X"008D",
        eta_w2_upper_limit_obj1 => X"0072",
        eta_w2_lower_limit_obj1 => X"0045",
        pt_threshold_obj2 => X"005A",
        nr_eta_windows_obj2 => 2,
        eta_w1_upper_limit_obj2 => X"00BA",
        eta_w1_lower_limit_obj2 => X"008D",
        eta_w2_upper_limit_obj2 => X"0072",
        eta_w2_lower_limit_obj2 => X"0045",
-- correlation cuts
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        mass_vector_width => JET_PT_VECTOR_WIDTH+JET_PT_VECTOR_WIDTH+CALO_CALO_COSH_COS_VECTOR_WIDTH,
        mass_upper_limit_vector => X"00041A6642C78140",
        mass_lower_limit_vector => X"000000047999ED00",
-- number of objects and type
        nr_obj1 => NR_JET_OBJECTS,
        type_obj1 => JET_TYPE,
        nr_obj2 => NR_JET_OBJECTS,
        type_obj2 => JET_TYPE,
-- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        calo_obj1 => bx_data.jet(2),
        calo_obj2 => bx_data.jet(2),
        mass_inv_pt => jet_jet_bx_0_bx_0_mass_inv_pt,
        condition_o => invariant_mass_i294
    );

cond_calo_muon_correlation_i118_i: entity work.correlation_conditions
    generic map(
-- slices for muon
        slice_low_obj2 => 0,
        slice_high_obj2 => 7,
-- obj cuts
        pt_threshold_obj1 => X"00B4",
        nr_eta_windows_obj1 => 1,
        eta_w1_upper_limit_obj1 => X"0039",
        eta_w1_lower_limit_obj1 => X"00C6",
        pt_threshold_obj2 => X"0007",
        qual_lut_obj2 => X"FF00",
-- correlation cuts
        dr_cut => true,
        dr_upper_limit_vector => X"000000000009C7E8",
        dr_lower_limit_vector => X"0000000000000000",
-- number of objects and type
        nr_obj1 => NR_JET_OBJECTS,
        type_obj1 => JET_TYPE,
        nr_obj2 => NR_MU_OBJECTS,
        type_obj2 => MU_TYPE,
-- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        calo_obj1 => bx_data.jet(2),
        muon_obj2 => bx_data.mu(2),
        dr => jet_mu_bx_0_bx_0_dr,
        condition_o => calo_muon_correlation_i118
    );

cond_calo_muon_correlation_i97_i: entity work.correlation_conditions
    generic map(
-- slices for muon
        slice_low_obj2 => 0,
        slice_high_obj2 => 7,
-- obj cuts
        pt_threshold_obj1 => X"0020",
        nr_eta_windows_obj1 => 1,
        eta_w1_upper_limit_obj1 => X"0039",
        eta_w1_lower_limit_obj1 => X"00C6",
        pt_threshold_obj2 => X"0007",
        qual_lut_obj2 => X"F000",
-- correlation cuts
        dr_cut => true,
        dr_upper_limit_vector => X"00000000000274E8",
        dr_lower_limit_vector => X"0000000000000000",
-- number of objects and type
        nr_obj1 => NR_JET_OBJECTS,
        type_obj1 => JET_TYPE,
        nr_obj2 => NR_MU_OBJECTS,
        type_obj2 => MU_TYPE,
-- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        calo_obj1 => bx_data.jet(2),
        muon_obj2 => bx_data.mu(2),
        dr => jet_mu_bx_0_bx_0_dr,
        condition_o => calo_muon_correlation_i97
    );

cond_invariant_mass_i72_i: entity work.correlation_conditions
    generic map(
-- slices for muon
        slice_low_obj1 => 0,
        slice_high_obj1 => 7,
        slice_low_obj2 => 0,
        slice_high_obj2 => 7,
-- obj cuts
        pt_threshold_obj1 => X"000B",
        qual_lut_obj1 => X"FF00",
        pt_threshold_obj2 => X"0006",
        qual_lut_obj2 => X"FF00",
-- charge correlation cut
        requested_charge_correlation => "os",
-- correlation cuts
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        mass_vector_width => MU_PT_VECTOR_WIDTH+MU_PT_VECTOR_WIDTH+CALO_MUON_COSH_COS_VECTOR_WIDTH,
        mass_upper_limit_vector => X"00000000089CE520",
        mass_lower_limit_vector => X"0000000000BEBC20",
-- number of objects and type
        nr_obj1 => NR_MU_OBJECTS,
        type_obj1 => MU_TYPE,
        nr_obj2 => NR_MU_OBJECTS,
        type_obj2 => MU_TYPE,
-- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        muon_obj1 => bx_data.mu(2),
        muon_obj2 => bx_data.mu(2),
        ls_charcorr_double => ls_charcorr_double_bx_0_bx_0,
        os_charcorr_double => os_charcorr_double_bx_0_bx_0,
        mass_inv_pt => mu_mu_bx_0_bx_0_mass_inv_pt,
        condition_o => invariant_mass_i72
    );

cond_muon_muon_correlation_i117_i: entity work.correlation_conditions
    generic map(
-- slices for muon
        slice_low_obj1 => 0,
        slice_high_obj1 => 7,
        slice_low_obj2 => 0,
        slice_high_obj2 => 7,
-- obj cuts
        pt_threshold_obj1 => X"0007",
        qual_lut_obj1 => X"FF00",
        pt_threshold_obj2 => X"0007",
        qual_lut_obj2 => X"FF00",
-- correlation cuts
        dr_cut => true,
        dr_upper_limit_vector => X"00000000002713E8",
        dr_lower_limit_vector => X"0000000000000000",
-- number of objects and type
        nr_obj1 => NR_MU_OBJECTS,
        type_obj1 => MU_TYPE,
        nr_obj2 => NR_MU_OBJECTS,
        type_obj2 => MU_TYPE,
-- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        muon_obj1 => bx_data.mu(2),
        muon_obj2 => bx_data.mu(2),
        dr => mu_mu_bx_0_bx_0_dr,
        condition_o => muon_muon_correlation_i117
    );

cond_single_mbt0_hfm_i343_i: entity work.min_bias_hf_conditions
    generic map(
        obj_type => MBT0HFM_TYPE,
        count_threshold => X"1"
    )
    port map(
        lhc_clk,
        bx_data.mbt0hfm(2),
        condition_o => single_mbt0_hfm_i343
    );

cond_single_mbt0_hfp_i342_i: entity work.min_bias_hf_conditions
    generic map(
        obj_type => MBT0HFP_TYPE,
        count_threshold => X"1"
    )
    port map(
        lhc_clk,
        bx_data.mbt0hfp(2),
        condition_o => single_mbt0_hfp_i342
    );

-- External condition assignment

single_ext_i329 <= bx_data.ext_cond(4)(7); -- EXT_BPTX_OR_VME-2
single_ext_i330 <= bx_data.ext_cond(3)(4); -- EXT_ZeroBias_BPTX_AND_VME-1
single_ext_i331 <= bx_data.ext_cond(2)(4); -- EXT_ZeroBias_BPTX_AND_VME
single_ext_i332 <= bx_data.ext_cond(1)(4); -- EXT_ZeroBias_BPTX_AND_VME+1
single_ext_i333 <= bx_data.ext_cond(0)(4); -- EXT_ZeroBias_BPTX_AND_VME+2
single_ext_i334 <= bx_data.ext_cond(2)(7); -- EXT_BPTX_OR_VME
single_ext_i336 <= bx_data.ext_cond(3)(7); -- EXT_BPTX_OR_VME-1
single_ext_i337 <= bx_data.ext_cond(1)(7); -- EXT_BPTX_OR_VME+1
single_ext_i348 <= bx_data.ext_cond(0)(7); -- EXT_BPTX_OR_VME+2
single_ext_i349 <= bx_data.ext_cond(4)(4); -- EXT_ZeroBias_BPTX_AND_VME-2

-- ========================================================
-- Instantiations of algorithms

-- 4 L1_SingleMuOpen : MU0[MU-QLTY_OPEN]
l1_single_mu_open <= single_mu_i4;
algo(53) <= l1_single_mu_open;

-- 77 L1_TripleMu_5_3p5_2p5 : comb{MU5[MU-QLTY_DBLE],MU3p5[MU-QLTY_DBLE],MU2p5[MU-QLTY_DBLE]}
l1_triple_mu_5_3p5_2p5 <= triple_mu_i66;
algo(8) <= l1_triple_mu_5_3p5_2p5;

-- 83 L1_TripleMu_5_3p5_2p5_DoubleMu_5_2p5_OS_Mass_5to17 : comb{MU5[MU-QLTY_DBLE],MU3p5[MU-QLTY_DBLE],MU2p5[MU-QLTY_DBLE]} AND mass_inv{MU5[MU-QLTY_DBLE],MU2p5[MU-QLTY_DBLE]}[MASS_MASS_5to17,CHGCOR_OS]
l1_triple_mu_5_3p5_2p5_double_mu_5_2p5_os_mass_5to17 <= triple_mu_i66 and invariant_mass_i72;
algo(7) <= l1_triple_mu_5_3p5_2p5_double_mu_5_2p5_os_mass_5to17;

-- 84 L1_TripleMu_5_4_2p5_DoubleMu_5_2p5_OS_Mass_5to17 : comb{MU5[MU-QLTY_DBLE],MU4[MU-QLTY_DBLE],MU2p5[MU-QLTY_DBLE]} AND mass_inv{MU5[MU-QLTY_DBLE],MU2p5[MU-QLTY_DBLE]}[MASS_MASS_5to17,CHGCOR_OS]
l1_triple_mu_5_4_2p5_double_mu_5_2p5_os_mass_5to17 <= triple_mu_i73 and invariant_mass_i72;
algo(9) <= l1_triple_mu_5_4_2p5_double_mu_5_2p5_os_mass_5to17;

-- 104 L1_Mu6_DoubleEG10er2p5 : MU6[MU-QLTY_SNGL] AND comb{EG10[EG-ETA_2p52],EG10[EG-ETA_2p52]}
l1_mu6_double_eg10er2p5 <= single_mu_i84 and double_eg_i85;
algo(15) <= l1_mu6_double_eg10er2p5;

-- 105 L1_Mu6_DoubleEG12er2p5 : MU6[MU-QLTY_SNGL] AND comb{EG12[EG-ETA_2p52],EG12[EG-ETA_2p52]}
l1_mu6_double_eg12er2p5 <= single_mu_i84 and double_eg_i86;
algo(28) <= l1_mu6_double_eg12er2p5;

-- 106 L1_Mu6_DoubleEG15er2p5 : MU6[MU-QLTY_SNGL] AND comb{EG15[EG-ETA_2p52],EG15[EG-ETA_2p52]}
l1_mu6_double_eg15er2p5 <= single_mu_i84 and double_eg_i87;
algo(30) <= l1_mu6_double_eg15er2p5;

-- 107 L1_Mu6_DoubleEG17er2p5 : MU6[MU-QLTY_SNGL] AND comb{EG17[EG-ETA_2p52],EG17[EG-ETA_2p52]}
l1_mu6_double_eg17er2p5 <= single_mu_i84 and double_eg_i88;
algo(38) <= l1_mu6_double_eg17er2p5;

-- 121 L1_Mu3_Jet16er2p5_dR_Max0p4 : dist{MU3[MU-QLTY_SNGL],JET16[JET-ETA_2p52]}[DR_MAX_0p4]
l1_mu3_jet16er2p5_d_r_max0p4 <= calo_muon_correlation_i97;
algo(6) <= l1_mu3_jet16er2p5_d_r_max0p4;

-- 128 L1_Mu3er1p5_Jet100er2p5_ETMHF40 : MU3[MU-QLTY_SNGL,MU-ETA_1p5] AND JET100[JET-ETA_2p52] AND ETMHF40
l1_mu3er1p5_jet100er2p5_etmhf40 <= single_mu_i103 and single_jet_i104 and single_etmhf_i105;
algo(72) <= l1_mu3er1p5_jet100er2p5_etmhf40;

-- 129 L1_Mu3er1p5_Jet100er2p5_ETMHF50 : MU3[MU-QLTY_SNGL,MU-ETA_1p5] AND JET100[JET-ETA_2p52] AND ETMHF50
l1_mu3er1p5_jet100er2p5_etmhf50 <= single_mu_i103 and single_jet_i104 and single_etmhf_i106;
algo(78) <= l1_mu3er1p5_jet100er2p5_etmhf50;

-- 131 L1_Mu6_HTT240er : MU6[MU-QLTY_SNGL] AND HTT240
l1_mu6_htt240er <= single_mu_i84 and single_htt_i107;
algo(45) <= l1_mu6_htt240er;

-- 132 L1_Mu6_HTT250er : MU6[MU-QLTY_SNGL] AND HTT250
l1_mu6_htt250er <= single_mu_i84 and single_htt_i108;
algo(50) <= l1_mu6_htt250er;

-- 143 L1_DoubleMu3_dR_Max1p6_Jet90er2p5_dR_Max0p8 : dist{MU3[MU-QLTY_DBLE],MU3[MU-QLTY_DBLE]}[DR_MAX_1p6] AND dist{MU3[MU-QLTY_DBLE],JET90[JET-ETA_2p52]}[DR_MAX_0p8]
l1_double_mu3_d_r_max1p6_jet90er2p5_d_r_max0p8 <= muon_muon_correlation_i117 and calo_muon_correlation_i118;
algo(5) <= l1_double_mu3_d_r_max1p6_jet90er2p5_d_r_max0p8;

-- 145 L1_DoubleMu3_SQ_ETMHF50_HTT60er : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND ETMHF50 AND HTT60
l1_double_mu3_sq_etmhf50_htt60er <= double_mu_i119 and single_etmhf_i106 and single_htt_i120;
algo(61) <= l1_double_mu3_sq_etmhf50_htt60er;

-- 146 L1_DoubleMu3_SQ_ETMHF50_Jet60er2p5_OR_DoubleJet40er2p5 : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND ETMHF50 AND (JET60[JET-ETA_2p52] OR comb{JET40[JET-ETA_2p52],JET40[JET-ETA_2p52]})
l1_double_mu3_sq_etmhf50_jet60er2p5_or_double_jet40er2p5 <= double_mu_i119 and single_etmhf_i106 and ( single_jet_i121 or double_jet_i122 );
algo(16) <= l1_double_mu3_sq_etmhf50_jet60er2p5_or_double_jet40er2p5;

-- 147 L1_DoubleMu3_SQ_ETMHF50_Jet60er2p5 : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND ETMHF50 AND JET60[JET-ETA_2p52]
l1_double_mu3_sq_etmhf50_jet60er2p5 <= double_mu_i119 and single_etmhf_i106 and single_jet_i121;
algo(84) <= l1_double_mu3_sq_etmhf50_jet60er2p5;

-- 148 L1_DoubleMu3_SQ_ETMHF60_Jet60er2p5 : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND ETMHF60 AND JET60[JET-ETA_2p52]
l1_double_mu3_sq_etmhf60_jet60er2p5 <= double_mu_i119 and single_etmhf_i123 and single_jet_i121;
algo(27) <= l1_double_mu3_sq_etmhf60_jet60er2p5;

-- 150 L1_DoubleMu3_SQ_HTT220er : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND HTT220
l1_double_mu3_sq_htt220er <= double_mu_i119 and single_htt_i124;
algo(32) <= l1_double_mu3_sq_htt220er;

-- 151 L1_DoubleMu3_SQ_HTT240er : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND HTT240
l1_double_mu3_sq_htt240er <= double_mu_i119 and single_htt_i107;
algo(41) <= l1_double_mu3_sq_htt240er;

-- 152 L1_DoubleMu3_SQ_HTT260er : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND HTT260
l1_double_mu3_sq_htt260er <= double_mu_i119 and single_htt_i125;
algo(46) <= l1_double_mu3_sq_htt260er;

-- 247 L1_DoubleEG8er2p5_HTT260er : comb{EG8[EG-ETA_2p52],EG8[EG-ETA_2p52]} AND HTT260
l1_double_eg8er2p5_htt260er <= double_eg_i193 and single_htt_i125;
algo(44) <= l1_double_eg8er2p5_htt260er;

-- 248 L1_DoubleEG8er2p5_HTT280er : comb{EG8[EG-ETA_2p52],EG8[EG-ETA_2p52]} AND HTT280
l1_double_eg8er2p5_htt280er <= double_eg_i193 and single_htt_i194;
algo(49) <= l1_double_eg8er2p5_htt280er;

-- 249 L1_DoubleEG8er2p5_HTT300er : comb{EG8[EG-ETA_2p52],EG8[EG-ETA_2p52]} AND HTT300
l1_double_eg8er2p5_htt300er <= double_eg_i193 and single_htt_i195;
algo(54) <= l1_double_eg8er2p5_htt300er;

-- 250 L1_DoubleEG8er2p5_HTT320er : comb{EG8[EG-ETA_2p52],EG8[EG-ETA_2p52]} AND HTT320
l1_double_eg8er2p5_htt320er <= double_eg_i193 and single_htt_i196;
algo(59) <= l1_double_eg8er2p5_htt320er;

-- 251 L1_DoubleEG8er2p5_HTT340er : comb{EG8[EG-ETA_2p52],EG8[EG-ETA_2p52]} AND HTT340
l1_double_eg8er2p5_htt340er <= double_eg_i193 and single_htt_i197;
algo(63) <= l1_double_eg8er2p5_htt340er;

-- 275 L1_DoubleIsoTau28er2p1_Mass_Max80 : mass_inv{TAU28[TAU-ETA_2p13,TAU-ISO_0xE],TAU28[TAU-ETA_2p13,TAU-ISO_0xE]}[MASS_MAX_80]
l1_double_iso_tau28er2p1_mass_max80 <= invariant_mass_i210;
algo(4) <= l1_double_iso_tau28er2p1_mass_max80;

-- 282 L1_Mu22er2p1_IsoTau28er2p1 : MU22[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU28[TAU-ETA_2p13,TAU-ISO_0xE]
l1_mu22er2p1_iso_tau28er2p1 <= single_mu_i216 and single_tau_i217;
algo(71) <= l1_mu22er2p1_iso_tau28er2p1;

-- 283 L1_Mu22er2p1_IsoTau30er2p1 : MU22[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU30[TAU-ETA_2p13,TAU-ISO_0xE]
l1_mu22er2p1_iso_tau30er2p1 <= single_mu_i216 and single_tau_i218;
algo(77) <= l1_mu22er2p1_iso_tau30er2p1;

-- 284 L1_Mu22er2p1_IsoTau32er2p1 : MU22[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU32[TAU-ETA_2p13,TAU-ISO_0xE]
l1_mu22er2p1_iso_tau32er2p1 <= single_mu_i216 and single_tau_i219;
algo(68) <= l1_mu22er2p1_iso_tau32er2p1;

-- 285 L1_Mu22er2p1_IsoTau34er2p1 : MU22[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU34[TAU-ETA_2p13,TAU-ISO_0xE]
l1_mu22er2p1_iso_tau34er2p1 <= single_mu_i216 and single_tau_i220;
algo(12) <= l1_mu22er2p1_iso_tau34er2p1;

-- 286 L1_Mu22er2p1_IsoTau36er2p1 : MU22[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU36[TAU-ETA_2p13,TAU-ISO_0xE]
l1_mu22er2p1_iso_tau36er2p1 <= single_mu_i216 and single_tau_i221;
algo(19) <= l1_mu22er2p1_iso_tau36er2p1;

-- 287 L1_Mu22er2p1_IsoTau40er2p1 : MU22[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU40[TAU-ETA_2p13,TAU-ISO_0xE]
l1_mu22er2p1_iso_tau40er2p1 <= single_mu_i216 and single_tau_i222;
algo(29) <= l1_mu22er2p1_iso_tau40er2p1;

-- 289 L1_Mu22er2p1_Tau70er2p1 : MU22[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU70[TAU-ETA_2p13]
l1_mu22er2p1_tau70er2p1 <= single_mu_i216 and single_tau_i223;
algo(36) <= l1_mu22er2p1_tau70er2p1;

-- 291 L1_IsoTau40er2p1_ETMHF80 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETMHF80
l1_iso_tau40er2p1_etmhf80 <= single_tau_i222 and single_etmhf_i224;
algo(79) <= l1_iso_tau40er2p1_etmhf80;

-- 292 L1_IsoTau40er2p1_ETMHF90 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETMHF90
l1_iso_tau40er2p1_etmhf90 <= single_tau_i222 and single_etmhf_i225;
algo(83) <= l1_iso_tau40er2p1_etmhf90;

-- 293 L1_IsoTau40er2p1_ETMHF100 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETMHF100
l1_iso_tau40er2p1_etmhf100 <= single_tau_i222 and single_etmhf_i226;
algo(67) <= l1_iso_tau40er2p1_etmhf100;

-- 294 L1_IsoTau40er2p1_ETMHF110 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETMHF110
l1_iso_tau40er2p1_etmhf110 <= single_tau_i222 and single_etmhf_i227;
algo(73) <= l1_iso_tau40er2p1_etmhf110;

-- 312 L1_SingleJet120 : JET120
l1_single_jet120 <= single_jet_i242;
algo(1) <= l1_single_jet120;

-- 317 L1_SingleJet60er2p5 : JET60[JET-ETA_2p52]
l1_single_jet60er2p5 <= single_jet_i121;
algo(40) <= l1_single_jet60er2p5;

-- 320 L1_SingleJet140er2p5 : JET140[JET-ETA_2p52]
l1_single_jet140er2p5 <= single_jet_i248;
algo(17) <= l1_single_jet140er2p5;

-- 332 L1_SingleJet140er2p5_ETMHF70 : JET140[JET-ETA_2p52] AND ETMHF70
l1_single_jet140er2p5_etmhf70 <= single_jet_i248 and single_etmhf_i262;
algo(24) <= l1_single_jet140er2p5_etmhf70;

-- 333 L1_SingleJet140er2p5_ETMHF80 : JET140[JET-ETA_2p52] AND ETMHF80
l1_single_jet140er2p5_etmhf80 <= single_jet_i248 and single_etmhf_i224;
algo(33) <= l1_single_jet140er2p5_etmhf80;

-- 334 L1_SingleJet140er2p5_ETMHF90 : JET140[JET-ETA_2p52] AND ETMHF90
l1_single_jet140er2p5_etmhf90 <= single_jet_i248 and single_etmhf_i225;
algo(39) <= l1_single_jet140er2p5_etmhf90;

-- 340 L1_DoubleJet40er2p5 : comb{JET40[JET-ETA_2p52],JET40[JET-ETA_2p52]}
l1_double_jet40er2p5 <= double_jet_i122;
algo(81) <= l1_double_jet40er2p5;

-- 353 L1_DoubleJet30er2p5_Mass_Min360_dEta_Max1p5 : mass_inv{JET30[JET-ETA_2p52],JET30[JET-ETA_2p52]}[MASS_MIN_360,DETA_MAX_1p5]
l1_double_jet30er2p5_mass_min360_d_eta_max1p5 <= invariant_mass_i273;
algo(3) <= l1_double_jet30er2p5_mass_min360_d_eta_max1p5;

-- 360 L1_DoubleJet_115_40_DoubleJet40_Mass_Min620_Jet60TT28 : JET115 AND (mass_inv{JET40[JET-ETA_CEN_2p70],JET40[JET-ETA_CEN_2p70]}[MASS_MIN_620] OR mass_inv{JET60,JET60}[MASS_MIN_620] OR mass_inv{JET60,JET40[JET-ETA_FWD_3p00_NEG,JET-ETA_FWD_3p00_POS]}[MASS_MIN_620] OR mass_inv{JET60,JET40[JET-ETA_CEN_2p70]}[MASS_MIN_620] OR mass_inv{JET40[JET-ETA_FWD_3p00_NEG,JET-ETA_FWD_3p00_POS],JET40[JET-ETA_CEN_2p70]}[MASS_MIN_620] OR mass_inv{JET40[JET-ETA_FWD_3p00_NEG,JET-ETA_FWD_3p00_POS],JET40[JET-ETA_FWD_3p00_NEG,JET-ETA_FWD_3p00_POS]}[MASS_MIN_620])
l1_double_jet_115_40_double_jet40_mass_min620_jet60_tt28 <= single_jet_i283 and ( invariant_mass_i284 or invariant_mass_i285 or invariant_mass_i286 or invariant_mass_i287 or invariant_mass_i288 or invariant_mass_i289 );
algo(0) <= l1_double_jet_115_40_double_jet40_mass_min620_jet60_tt28;

-- 361 L1_DoubleJet_120_45_DoubleJet45_Mass_Min620_Jet60TT28 : JET120 AND (mass_inv{JET45[JET-ETA_CEN_2p70],JET45[JET-ETA_CEN_2p70]}[MASS_MIN_620] OR mass_inv{JET60,JET60}[MASS_MIN_620] OR mass_inv{JET60,JET45[JET-ETA_FWD_3p00_NEG,JET-ETA_FWD_3p00_POS]}[MASS_MIN_620] OR mass_inv{JET60,JET45[JET-ETA_CEN_2p70]}[MASS_MIN_620] OR mass_inv{JET45[JET-ETA_FWD_3p00_NEG,JET-ETA_FWD_3p00_POS],JET45[JET-ETA_CEN_2p70]}[MASS_MIN_620] OR mass_inv{JET45[JET-ETA_FWD_3p00_NEG,JET-ETA_FWD_3p00_POS],JET45[JET-ETA_FWD_3p00_NEG,JET-ETA_FWD_3p00_POS]}[MASS_MIN_620])
l1_double_jet_120_45_double_jet45_mass_min620_jet60_tt28 <= single_jet_i242 and ( invariant_mass_i290 or invariant_mass_i285 or invariant_mass_i291 or invariant_mass_i292 or invariant_mass_i293 or invariant_mass_i294 );
algo(2) <= l1_double_jet_120_45_double_jet45_mass_min620_jet60_tt28;

-- 384 L1_HTT280er_QuadJet_70_55_40_35_er2p4 : HTT280 AND comb{JET70[JET-ETA_2p4],JET55[JET-ETA_2p4],JET40[JET-ETA_2p4],JET35[JET-ETA_2p4]}
l1_htt280er_quad_jet_70_55_40_35_er2p4 <= single_htt_i194 and quad_jet_i309;
algo(10) <= l1_htt280er_quad_jet_70_55_40_35_er2p4;

-- 385 L1_HTT320er_QuadJet_70_55_40_40_er2p4 : HTT320 AND comb{JET70[JET-ETA_2p4],JET55[JET-ETA_2p4],JET40[JET-ETA_2p4],JET40[JET-ETA_2p4]}
l1_htt320er_quad_jet_70_55_40_40_er2p4 <= single_htt_i196 and quad_jet_i310;
algo(21) <= l1_htt320er_quad_jet_70_55_40_40_er2p4;

-- 386 L1_HTT320er_QuadJet_80_60_er2p1_45_40_er2p3 : HTT320 AND comb{JET80[JET-ETA_2p13],JET60[JET-ETA_2p13],JET45[JET-ETA_2p3],JET40[JET-ETA_2p3]}
l1_htt320er_quad_jet_80_60_er2p1_45_40_er2p3 <= single_htt_i196 and quad_jet_i311;
algo(26) <= l1_htt320er_quad_jet_80_60_er2p1_45_40_er2p3;

-- 387 L1_HTT320er_QuadJet_80_60_er2p1_50_45_er2p3 : HTT320 AND comb{JET80[JET-ETA_2p13],JET60[JET-ETA_2p13],JET50[JET-ETA_2p3],JET45[JET-ETA_2p3]}
l1_htt320er_quad_jet_80_60_er2p1_50_45_er2p3 <= single_htt_i196 and quad_jet_i312;
algo(37) <= l1_htt320er_quad_jet_80_60_er2p1_50_45_er2p3;

-- 402 L1_HTT280er : HTT280
l1_htt280er <= single_htt_i194;
algo(76) <= l1_htt280er;

-- 403 L1_HTT320er : HTT320
l1_htt320er <= single_htt_i196;
algo(13) <= l1_htt320er;

-- 421 L1_ETMHF100 : ETMHF100
l1_etmhf100 <= single_etmhf_i226;
algo(75) <= l1_etmhf100;

-- 422 L1_ETMHF110 : ETMHF110
l1_etmhf110 <= single_etmhf_i227;
algo(18) <= l1_etmhf110;

-- 423 L1_ETMHF120 : ETMHF120
l1_etmhf120 <= single_etmhf_i325;
algo(43) <= l1_etmhf120;

-- 424 L1_ETMHF130 : ETMHF130
l1_etmhf130 <= single_etmhf_i326;
algo(56) <= l1_etmhf130;

-- 428 L1_ETMHF90_HTT60er : ETMHF90 AND HTT60
l1_etmhf90_htt60er <= single_etmhf_i225 and single_htt_i120;
algo(74) <= l1_etmhf90_htt60er;

-- 429 L1_ETMHF100_HTT60er : ETMHF100 AND HTT60
l1_etmhf100_htt60er <= single_etmhf_i226 and single_htt_i120;
algo(35) <= l1_etmhf100_htt60er;

-- 430 L1_ETMHF110_HTT60er : ETMHF110 AND HTT60
l1_etmhf110_htt60er <= single_etmhf_i227 and single_htt_i120;
algo(25) <= l1_etmhf110_htt60er;

-- 431 L1_ETMHF120_HTT60er : ETMHF120 AND HTT60
l1_etmhf120_htt60er <= single_etmhf_i325 and single_htt_i120;
algo(48) <= l1_etmhf120_htt60er;

-- 432 L1_ETMHF130_HTT60er : ETMHF130 AND HTT60
l1_etmhf130_htt60er <= single_etmhf_i326 and single_htt_i120;
algo(60) <= l1_etmhf130_htt60er;

-- 443 L1_ETMHF120_NotSecondBunchInTrain : ETMHF120 AND ((EXT_BPTX_OR_VME-2) OR ( NOT EXT_ZeroBias_BPTX_AND_VME-1) OR ( NOT EXT_ZeroBias_BPTX_AND_VME) OR ( NOT EXT_ZeroBias_BPTX_AND_VME+1) OR ( NOT EXT_ZeroBias_BPTX_AND_VME+2))
l1_etmhf120_not_second_bunch_in_train <= single_etmhf_i325 and ( ( single_ext_i329 ) or ( not single_ext_i330 ) or ( not single_ext_i331 ) or ( not single_ext_i332 ) or ( not single_ext_i333 ) );
algo(52) <= l1_etmhf120_not_second_bunch_in_train;

-- 444 L1_ETMHF110_HTT60er_NotSecondBunchInTrain : ETMHF110 AND HTT60 AND ((EXT_BPTX_OR_VME-2) OR ( NOT EXT_ZeroBias_BPTX_AND_VME-1) OR ( NOT EXT_ZeroBias_BPTX_AND_VME) OR ( NOT EXT_ZeroBias_BPTX_AND_VME+1) OR ( NOT EXT_ZeroBias_BPTX_AND_VME+2))
l1_etmhf110_htt60er_not_second_bunch_in_train <= single_etmhf_i227 and single_htt_i120 and ( ( single_ext_i329 ) or ( not single_ext_i330 ) or ( not single_ext_i331 ) or ( not single_ext_i332 ) or ( not single_ext_i333 ) );
algo(34) <= l1_etmhf110_htt60er_not_second_bunch_in_train;

-- 446 L1_SingleMuOpen_NotBptxOR : MU0[MU-QLTY_OPEN] AND ( NOT EXT_BPTX_OR_VME)
l1_single_mu_open_not_bptx_or <= single_mu_i4 and ( not single_ext_i334 );
algo(58) <= l1_single_mu_open_not_bptx_or;

-- 447 L1_SingleMuOpen_er1p4_NotBptxOR_3BX : MU0[MU-QLTY_OPEN,MU-ETA_1p4] AND ( NOT EXT_BPTX_OR_VME-1) AND ( NOT EXT_BPTX_OR_VME) AND ( NOT EXT_BPTX_OR_VME+1)
l1_single_mu_open_er1p4_not_bptx_or_3_bx <= single_mu_i335 and ( not single_ext_i336 ) and ( not single_ext_i334 ) and ( not single_ext_i337 );
algo(65) <= l1_single_mu_open_er1p4_not_bptx_or_3_bx;

-- 448 L1_SingleMuOpen_er1p1_NotBptxOR_3BX : MU0[MU-QLTY_OPEN,MU-ETA_1p1] AND ( NOT EXT_BPTX_OR_VME-1) AND ( NOT EXT_BPTX_OR_VME) AND ( NOT EXT_BPTX_OR_VME+1)
l1_single_mu_open_er1p1_not_bptx_or_3_bx <= single_mu_i338 and ( not single_ext_i336 ) and ( not single_ext_i334 ) and ( not single_ext_i337 );
algo(62) <= l1_single_mu_open_er1p1_not_bptx_or_3_bx;

-- 450 L1_SingleJet20er2p5_NotBptxOR : JET20[JET-ETA_2p52] AND ( NOT EXT_BPTX_OR_VME)
l1_single_jet20er2p5_not_bptx_or <= single_jet_i339 and ( not single_ext_i334 );
algo(64) <= l1_single_jet20er2p5_not_bptx_or;

-- 451 L1_SingleJet20er2p5_NotBptxOR_3BX : JET20[JET-ETA_2p52] AND ( NOT EXT_BPTX_OR_VME-1) AND ( NOT EXT_BPTX_OR_VME) AND ( NOT EXT_BPTX_OR_VME+1)
l1_single_jet20er2p5_not_bptx_or_3_bx <= single_jet_i339 and ( not single_ext_i336 ) and ( not single_ext_i334 ) and ( not single_ext_i337 );
algo(66) <= l1_single_jet20er2p5_not_bptx_or_3_bx;

-- 452 L1_SingleJet43er2p5_NotBptxOR_3BX : JET43[JET-ETA_2p52] AND ( NOT EXT_BPTX_OR_VME-1) AND ( NOT EXT_BPTX_OR_VME) AND ( NOT EXT_BPTX_OR_VME+1)
l1_single_jet43er2p5_not_bptx_or_3_bx <= single_jet_i340 and ( not single_ext_i336 ) and ( not single_ext_i334 ) and ( not single_ext_i337 );
algo(80) <= l1_single_jet43er2p5_not_bptx_or_3_bx;

-- 453 L1_SingleJet46er2p5_NotBptxOR_3BX : JET46[JET-ETA_2p52] AND ( NOT EXT_BPTX_OR_VME-1) AND ( NOT EXT_BPTX_OR_VME) AND ( NOT EXT_BPTX_OR_VME+1)
l1_single_jet46er2p5_not_bptx_or_3_bx <= single_jet_i341 and ( not single_ext_i336 ) and ( not single_ext_i334 ) and ( not single_ext_i337 );
algo(20) <= l1_single_jet46er2p5_not_bptx_or_3_bx;

-- 458 L1_AlwaysTrue : EXT_ZeroBias_BPTX_AND_VME OR ( NOT EXT_ZeroBias_BPTX_AND_VME)
l1_always_true <= single_ext_i331 or ( not single_ext_i331 );
algo(69) <= l1_always_true;

-- 459 L1_ZeroBias : EXT_ZeroBias_BPTX_AND_VME
l1_zero_bias <= single_ext_i331;
algo(42) <= l1_zero_bias;

-- 460 L1_ZeroBias_copy : EXT_ZeroBias_BPTX_AND_VME
l1_zero_bias_copy <= single_ext_i331;
algo(47) <= l1_zero_bias_copy;

-- 461 L1_MinimumBiasHF0_AND_BptxAND : (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf0_and_bptx_and <= ( single_mbt0_hfp_i342 and single_mbt0_hfm_i343 ) and single_ext_i331;
algo(57) <= l1_minimum_bias_hf0_and_bptx_and;

-- 463 L1_NotBptxOR :  NOT EXT_BPTX_OR_VME
l1_not_bptx_or <= not single_ext_i334;
algo(70) <= l1_not_bptx_or;

-- 464 L1_BptxOR : EXT_BPTX_OR_VME
l1_bptx_or <= single_ext_i334;
algo(22) <= l1_bptx_or;

-- 471 L1_IsolatedBunch : ( NOT EXT_BPTX_OR_VME-2) AND ( NOT EXT_BPTX_OR_VME-1) AND EXT_ZeroBias_BPTX_AND_VME AND ( NOT EXT_BPTX_OR_VME+1) AND ( NOT EXT_BPTX_OR_VME+2)
l1_isolated_bunch <= ( not single_ext_i329 ) and ( not single_ext_i336 ) and single_ext_i331 and ( not single_ext_i337 ) and ( not single_ext_i348 );
algo(11) <= l1_isolated_bunch;

-- 472 L1_FirstBunchBeforeTrain : ( NOT EXT_BPTX_OR_VME-2) AND ( NOT EXT_BPTX_OR_VME-1) AND ( NOT EXT_BPTX_OR_VME) AND EXT_ZeroBias_BPTX_AND_VME+1 AND EXT_ZeroBias_BPTX_AND_VME+2
l1_first_bunch_before_train <= ( not single_ext_i329 ) and ( not single_ext_i336 ) and ( not single_ext_i334 ) and single_ext_i332 and single_ext_i333;
algo(23) <= l1_first_bunch_before_train;

-- 473 L1_FirstBunchInTrain : ( NOT EXT_BPTX_OR_VME-2) AND ( NOT EXT_BPTX_OR_VME-1) AND EXT_ZeroBias_BPTX_AND_VME AND EXT_ZeroBias_BPTX_AND_VME+1 AND EXT_ZeroBias_BPTX_AND_VME+2
l1_first_bunch_in_train <= ( not single_ext_i329 ) and ( not single_ext_i336 ) and single_ext_i331 and single_ext_i332 and single_ext_i333;
algo(31) <= l1_first_bunch_in_train;

-- 474 L1_SecondBunchInTrain : ( NOT EXT_BPTX_OR_VME-2) AND EXT_ZeroBias_BPTX_AND_VME-1 AND EXT_ZeroBias_BPTX_AND_VME AND EXT_ZeroBias_BPTX_AND_VME+1 AND EXT_ZeroBias_BPTX_AND_VME+2
l1_second_bunch_in_train <= ( not single_ext_i329 ) and single_ext_i330 and single_ext_i331 and single_ext_i332 and single_ext_i333;
algo(51) <= l1_second_bunch_in_train;

-- 475 L1_SecondLastBunchInTrain : EXT_ZeroBias_BPTX_AND_VME-2 AND EXT_ZeroBias_BPTX_AND_VME-1 AND EXT_ZeroBias_BPTX_AND_VME AND EXT_ZeroBias_BPTX_AND_VME+1 AND ( NOT EXT_BPTX_OR_VME+2)
l1_second_last_bunch_in_train <= single_ext_i349 and single_ext_i330 and single_ext_i331 and single_ext_i332 and ( not single_ext_i348 );
algo(55) <= l1_second_last_bunch_in_train;

-- 476 L1_LastBunchInTrain : EXT_ZeroBias_BPTX_AND_VME-2 AND EXT_ZeroBias_BPTX_AND_VME-1 AND EXT_ZeroBias_BPTX_AND_VME AND ( NOT EXT_BPTX_OR_VME+1) AND ( NOT EXT_BPTX_OR_VME+2)
l1_last_bunch_in_train <= single_ext_i349 and single_ext_i330 and single_ext_i331 and ( not single_ext_i337 ) and ( not single_ext_i348 );
algo(14) <= l1_last_bunch_in_train;

-- 477 L1_FirstBunchAfterTrain : EXT_ZeroBias_BPTX_AND_VME-2 AND EXT_ZeroBias_BPTX_AND_VME-1 AND ( NOT EXT_BPTX_OR_VME) AND ( NOT EXT_BPTX_OR_VME+1) AND ( NOT EXT_BPTX_OR_VME+2)
l1_first_bunch_after_train <= single_ext_i349 and single_ext_i330 and ( not single_ext_i334 ) and ( not single_ext_i337 ) and ( not single_ext_i348 );
algo(82) <= l1_first_bunch_after_train;

-- ========================================================
-- Instantiations conversions, calculations, etc.
-- eta and phi conversion to muon scale for calo-muon and muon-esums correlation conditions (used for DETA, DPHI, DR and mass)

conv_eta_phi_jet_bx_0_i: entity work.conv_eta_phi
    generic map(
        nr_obj => NR_JET_OBJECTS,
        type_obj => JET_TYPE
    )
    port map(
        calo => bx_data.jet(2),
        eta_conv => jet_bx_0_eta_conv_2_muon_eta_integer,
        phi_conv => jet_bx_0_phi_conv_2_muon_phi_integer
    );
--
-- pt, eta, phi, cosine phi and sine phi for correlation conditions (used for DETA, DPHI, DR, mass, overlap_remover and two-body pt)

calc_obj_parameter_jet_bx_0_i: entity work.obj_parameter
    generic map(
        nr_obj => NR_JET_OBJECTS,
        type_obj => JET_TYPE
    )
    port map(
        calo => bx_data.jet(2),
        phi_conv_2_muon_phi_integer => jet_bx_0_phi_conv_2_muon_phi_integer,
        pt_vector => jet_bx_0_pt_vector,
        eta_integer => jet_bx_0_eta_integer,
        phi_integer => jet_bx_0_phi_integer,
        cos_phi => jet_bx_0_cos_phi,
        sin_phi => jet_bx_0_sin_phi,
        conv_cos_phi => jet_bx_0_conv_cos_phi,
        conv_sin_phi => jet_bx_0_conv_sin_phi
    );
--
calc_obj_parameter_mu_bx_0_i: entity work.obj_parameter
    generic map(
        nr_obj => NR_MU_OBJECTS,
        type_obj => MU_TYPE
    )
    port map(
        muon => bx_data.mu(2),
        pt_vector => mu_bx_0_pt_vector,
        upt_vector => mu_bx_0_upt_vector,
        eta_integer => mu_bx_0_eta_integer,
        phi_integer => mu_bx_0_phi_integer,
        cos_phi => mu_bx_0_cos_phi,
        sin_phi => mu_bx_0_sin_phi
    );
--
calc_obj_parameter_tau_bx_0_i: entity work.obj_parameter
    generic map(
        nr_obj => NR_TAU_OBJECTS,
        type_obj => TAU_TYPE
    )
    port map(
        calo => bx_data.tau(2),
        phi_conv_2_muon_phi_integer => tau_bx_0_phi_conv_2_muon_phi_integer,
        pt_vector => tau_bx_0_pt_vector,
        eta_integer => tau_bx_0_eta_integer,
        phi_integer => tau_bx_0_phi_integer,
        cos_phi => tau_bx_0_cos_phi,
        sin_phi => tau_bx_0_sin_phi,
        conv_cos_phi => tau_bx_0_conv_cos_phi,
        conv_sin_phi => tau_bx_0_conv_sin_phi
    );
--
-- deta and dphi calculations for correlation conditions (used for DETA, DPHI)

calc_deta_dphi_integer_jet_mu_bx_0_bx_0_i: entity work.deta_dphi_calculations
    generic map(
        phi_half_range => MUON_PHI_HALF_RANGE_BINS,
        nr_obj1 => NR_JET_OBJECTS,
        type_obj1 => JET_TYPE,
        nr_obj2 => NR_MU_OBJECTS,
        type_obj2 => MU_TYPE
    )
    port map(
        eta_integer_obj1 => jet_bx_0_eta_conv_2_muon_eta_integer,
        phi_integer_obj1 => jet_bx_0_phi_conv_2_muon_phi_integer,
        eta_integer_obj2 => mu_bx_0_eta_integer,
        phi_integer_obj2 => mu_bx_0_phi_integer,
        deta_integer => jet_mu_bx_0_bx_0_deta_integer,
        dphi_integer => jet_mu_bx_0_bx_0_dphi_integer
    );
--
calc_deta_dphi_integer_tau_tau_bx_0_bx_0_i: entity work.deta_dphi_calculations
    generic map(
        nr_obj1 => NR_TAU_OBJECTS,
        type_obj1 => TAU_TYPE,
        nr_obj2 => NR_TAU_OBJECTS,
        type_obj2 => TAU_TYPE
    )
    port map(
        eta_integer_obj1 => tau_bx_0_eta_integer,
        phi_integer_obj1 => tau_bx_0_phi_integer,
        eta_integer_obj2 => tau_bx_0_eta_integer,
        phi_integer_obj2 => tau_bx_0_phi_integer,
        deta_integer => tau_tau_bx_0_bx_0_deta_integer,
        dphi_integer => tau_tau_bx_0_bx_0_dphi_integer
    );
--
calc_deta_dphi_integer_jet_jet_bx_0_bx_0_i: entity work.deta_dphi_calculations
    generic map(
        nr_obj1 => NR_JET_OBJECTS,
        type_obj1 => JET_TYPE,
        nr_obj2 => NR_JET_OBJECTS,
        type_obj2 => JET_TYPE
    )
    port map(
        eta_integer_obj1 => jet_bx_0_eta_integer,
        phi_integer_obj1 => jet_bx_0_phi_integer,
        eta_integer_obj2 => jet_bx_0_eta_integer,
        phi_integer_obj2 => jet_bx_0_phi_integer,
        deta_integer => jet_jet_bx_0_bx_0_deta_integer,
        dphi_integer => jet_jet_bx_0_bx_0_dphi_integer
    );
--
calc_deta_dphi_integer_mu_mu_bx_0_bx_0_i: entity work.deta_dphi_calculations
    generic map(
        phi_half_range => MUON_PHI_HALF_RANGE_BINS,
        nr_obj1 => NR_MU_OBJECTS,
        type_obj1 => MU_TYPE,
        nr_obj2 => NR_MU_OBJECTS,
        type_obj2 => MU_TYPE
    )
    port map(
        eta_integer_obj1 => mu_bx_0_eta_integer,
        phi_integer_obj1 => mu_bx_0_phi_integer,
        eta_integer_obj2 => mu_bx_0_eta_integer,
        phi_integer_obj2 => mu_bx_0_phi_integer,
        deta_integer => mu_mu_bx_0_bx_0_deta_integer,
        dphi_integer => mu_mu_bx_0_bx_0_dphi_integer
    );
--
-- eta, dphi, cosh deta and cos dphi LUTs for correlation conditions (used for DR and mass)
--
-- Instantiations of correlation cuts calculations
--
-- Instantiations of DeltaEta LUTs

calc_deta_jet_jet_bx_0_bx_0_i: entity work.correlation_cuts_calculation
    generic map(
        nr_obj1 => NR_JET_OBJECTS,
        type_obj1 => JET_TYPE,
        nr_obj2 => NR_JET_OBJECTS,
        type_obj2 => JET_TYPE,
        deta_cut => true
    )
    port map(
        deta_integer => jet_jet_bx_0_bx_0_deta_integer,
        deta => jet_jet_bx_0_bx_0_deta
    );

-- Instantiations of DeltaPhi LUTs

-- Instantiations of DeltaR calculation

calc_deltaR_jet_mu_bx_0_bx_0_i: entity work.correlation_cuts_calculation
    generic map(
        nr_obj1 => NR_JET_OBJECTS,
        type_obj1 => JET_TYPE,
        nr_obj2 => NR_MU_OBJECTS,
        type_obj2 => MU_TYPE,
        dr_cut => true
    )
    port map(
        deta_integer => jet_mu_bx_0_bx_0_deta_integer,
        dphi_integer => jet_mu_bx_0_bx_0_dphi_integer,
        dr => jet_mu_bx_0_bx_0_dr
    );

calc_deltaR_mu_mu_bx_0_bx_0_i: entity work.correlation_cuts_calculation
    generic map(
        nr_obj1 => NR_MU_OBJECTS,
        type_obj1 => MU_TYPE,
        nr_obj2 => NR_MU_OBJECTS,
        type_obj2 => MU_TYPE,
        dr_cut => true
    )
    port map(
        deta_integer => mu_mu_bx_0_bx_0_deta_integer,
        dphi_integer => mu_mu_bx_0_bx_0_dphi_integer,
        dr => mu_mu_bx_0_bx_0_dr
    );

-- Instantiations of Invariant mass calculation

calc_mass_inv_pt_tau_tau_bx_0_bx_0_i: entity work.correlation_cuts_calculation
    generic map(
        nr_obj1 => NR_TAU_OBJECTS,
        type_obj1 => TAU_TYPE,
        nr_obj2 => NR_TAU_OBJECTS,
        type_obj2 => TAU_TYPE,
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        pt1_width => TAU_PT_VECTOR_WIDTH,
        pt2_width => TAU_PT_VECTOR_WIDTH,
        cosh_cos_width => CALO_CALO_COSH_COS_VECTOR_WIDTH
    )
    port map(
        deta_integer => tau_tau_bx_0_bx_0_deta_integer,
        dphi_integer => tau_tau_bx_0_bx_0_dphi_integer,
        pt1 => tau_bx_0_pt_vector,
        pt2 => tau_bx_0_pt_vector,
        inv_mass_pt => tau_tau_bx_0_bx_0_mass_inv_pt
    );

calc_mass_inv_pt_jet_jet_bx_0_bx_0_i: entity work.correlation_cuts_calculation
    generic map(
        nr_obj1 => NR_JET_OBJECTS,
        type_obj1 => JET_TYPE,
        nr_obj2 => NR_JET_OBJECTS,
        type_obj2 => JET_TYPE,
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        pt1_width => JET_PT_VECTOR_WIDTH,
        pt2_width => JET_PT_VECTOR_WIDTH,
        cosh_cos_width => CALO_CALO_COSH_COS_VECTOR_WIDTH
    )
    port map(
        deta_integer => jet_jet_bx_0_bx_0_deta_integer,
        dphi_integer => jet_jet_bx_0_bx_0_dphi_integer,
        pt1 => jet_bx_0_pt_vector,
        pt2 => jet_bx_0_pt_vector,
        inv_mass_pt => jet_jet_bx_0_bx_0_mass_inv_pt
    );

calc_mass_inv_pt_mu_mu_bx_0_bx_0_i: entity work.correlation_cuts_calculation
    generic map(
        nr_obj1 => NR_MU_OBJECTS,
        type_obj1 => MU_TYPE,
        nr_obj2 => NR_MU_OBJECTS,
        type_obj2 => MU_TYPE,
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        pt1_width => MU_PT_VECTOR_WIDTH,
        pt2_width => MU_PT_VECTOR_WIDTH,
        cosh_cos_width => MUON_MUON_COSH_COS_VECTOR_WIDTH
    )
    port map(
        deta_integer => mu_mu_bx_0_bx_0_deta_integer,
        dphi_integer => mu_mu_bx_0_bx_0_dphi_integer,
        pt1 => mu_bx_0_pt_vector,
        pt2 => mu_bx_0_pt_vector,
        inv_mass_pt => mu_mu_bx_0_bx_0_mass_inv_pt
    );

-- Instantiations of Invariant mass divided DeltaR calculation

-- Instantiations of Invariant mass unconstrained pt calculation

-- Instantiations of Transverse mass calculation

-- Instantiations of Two-body pt calculation

-- muon charge correlations

calc_muon_charge_correlations_bx_0_bx_0_i: entity work.muon_charge_correlations
    port map(bx_data.mu(2), bx_data.mu(2),
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);
--

-- ========================================================
