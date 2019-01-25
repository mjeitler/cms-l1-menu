-- Description:
-- Mapping of algo indexes for ROP

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

use work.gtl_pkg.ALL;
use work.gt_mp7_core_pkg.all;

entity algo_mapping_rop is
    port(
        lhc_clk : in std_logic;
        algo_bx_masks_global :  in std_logic_vector(MAX_NR_ALGOS-1 downto 0);
        algo_bx_masks_local :  out std_logic_vector(NR_ALGOS-1 downto 0);
        rate_cnt_before_prescaler_local :  in rate_counter_array;
        rate_cnt_before_prescaler_global :  out rate_counter_global_array; -- to be defined in gt_mp7_core_pkg
        prescale_factor_global :  in prescale_factor_global_array; -- to be defined in gt_mp7_core_pkg
        prescale_factor_local :  out prescale_factor_array;
        rate_cnt_after_prescaler_local :  in rate_counter_array;
        rate_cnt_after_prescaler_global :  out rate_counter_global_array; -- to be defined in gt_mp7_core_pkg
        rate_cnt_post_dead_time_local :  in rate_counter_array;
        rate_cnt_post_dead_time_global :  out rate_counter_global_array; -- to be defined in gt_mp7_core_pkg
        finor_masks_global :  in std_logic_vector(MAX_NR_ALGOS-1 downto 0);
        finor_masks_local :  out std_logic_vector(NR_ALGOS-1 downto 0);
        veto_masks_global :  in std_logic_vector(MAX_NR_ALGOS-1 downto 0);
        veto_masks_local :  out std_logic_vector(NR_ALGOS-1 downto 0);
        algo_after_gtLogic : in std_logic_vector(NR_ALGOS-1 downto 0);
        algo_after_bxomask : in std_logic_vector(NR_ALGOS-1 downto 0);
        algo_after_prescaler : in std_logic_vector(NR_ALGOS-1 downto 0);
        algo_after_gtLogic_rop : out std_logic_vector(MAX_NR_ALGOS-1 downto 0);
        algo_after_bxomask_rop : out std_logic_vector(MAX_NR_ALGOS-1 downto 0);
        algo_after_prescaler_rop : out std_logic_vector(MAX_NR_ALGOS-1 downto 0)
    );
end algo_mapping_rop;

architecture rtl of algo_mapping_rop is
    type global_index_array is array (0 to NR_ALGOS-1) of integer;

-- HB 2016-03-02: inserted for global index
    constant global_index: global_index_array := (
-- ==== Inserted by TME - begin
         35, -- module_index: 0, name: L1_DoubleMu_10_0_dEta_Max1p8
         71, -- module_index: 1, name: L1_DoubleEG_15_10
        218, -- module_index: 2, name: L1_SingleMuCosmics
        151, -- module_index: 3, name: L1_ETT100
        131, -- module_index: 4, name: L1_HTM50
        130, -- module_index: 5, name: L1_HTT160
        225, -- module_index: 6, name: L1_BPTX_LUT1_AND
        226, -- module_index: 7, name: L1_BPTX_LUT1_B1
        227, -- module_index: 8, name: L1_BPTX_LUT1_B2
        228, -- module_index: 9, name: L1_BPTX_LUT1_OR
        229, -- module_index: 10, name: L1_BPTX_LUT2_AND
        230, -- module_index: 11, name: L1_BPTX_LUT2_B1NotB2
        231, -- module_index: 12, name: L1_BPTX_LUT2_B2NotB1
        232, -- module_index: 13, name: L1_BPTX_LUT2_NotOR
        233, -- module_index: 14, name: L1_BPTX_TRIG2_AND
        234, -- module_index: 15, name: L1_BPTX_TRIG2_B1NotB2
        235, -- module_index: 16, name: L1_BPTX_TRIG2_B2NotB1
        236, -- module_index: 17, name: L1_BPTX_TRIG2_NotOR
        240, -- module_index: 18, name: L1_BRIL_TRIG0_AND
        243, -- module_index: 19, name: L1_BRIL_TRIG0_FstBunchInTrain
        242, -- module_index: 20, name: L1_BRIL_TRIG0_OR
        241, -- module_index: 21, name: L1_BRIL_TRIG0_delayedAND
        237, -- module_index: 22, name: L1_BRIL_TRIG3_AND
        238, -- module_index: 23, name: L1_BRIL_TRIG3_delayedAND
        239, -- module_index: 24, name: L1_BRIL_TRIG3_ref
        223, -- module_index: 25, name: L1_BeamGasB1
        224, -- module_index: 26, name: L1_BeamGasB2
        222, -- module_index: 27, name: L1_BeamGasMinus
        221, -- module_index: 28, name: L1_BeamGasPlus
         11, -- module_index: 29, name: L1_BptxMinus
          2, -- module_index: 30, name: L1_BptxMinus_NotBptxPlus
        220, -- module_index: 31, name: L1_BptxXOR
          1, -- module_index: 32, name: L1_BptxPlus_NotBptxMinus
         10, -- module_index: 33, name: L1_BptxPlus
        244, -- module_index: 34, name: L1_ZeroBias_FirstCollidingBunch
-- ==== Inserted by TME - end
        others => 0
    );

-- HB 2016-03-02: inserted for global index
    signal rate_cnt_before_prescaler_global_int: rate_counter_global_array := (others => (others => '0'));
    signal rate_cnt_after_prescaler_global_int: rate_counter_global_array := (others => (others => '0'));
    signal rate_cnt_post_dead_time_global_int: rate_counter_global_array := (others => (others => '0'));

    signal algo_after_gtLogic_rop_int: std_logic_vector(MAX_NR_ALGOS-1 downto 0) := (others => '0');
    signal algo_after_bxomask_rop_int: std_logic_vector(MAX_NR_ALGOS-1 downto 0) := (others => '0');
    signal algo_after_prescaler_rop_int: std_logic_vector(MAX_NR_ALGOS-1 downto 0) := (others => '0');

begin

nr_algos_l: for i in 0 to NR_ALGOS-1 generate
-- HB 2016-03-02: inserted for global index
    algo_bx_masks_local(i) <= algo_bx_masks_global(global_index(i));
    rate_cnt_before_prescaler_global_int(global_index(i)) <= rate_cnt_before_prescaler_local(i);
    prescale_factor_local(i) <= prescale_factor_global(global_index(i));
    rate_cnt_after_prescaler_global_int(global_index(i)) <= rate_cnt_after_prescaler_local(i);
    rate_cnt_post_dead_time_global_int(global_index(i)) <= rate_cnt_post_dead_time_local(i);
    finor_masks_local(i) <= finor_masks_global(global_index(i));
    veto_masks_local(i) <= veto_masks_global(global_index(i));
    algo_after_gtLogic_rop_int(global_index(i)) <= algo_after_gtLogic(i);
    algo_after_bxomask_rop_int(global_index(i)) <= algo_after_bxomask(i);
    algo_after_prescaler_rop_int(global_index(i)) <= algo_after_prescaler(i);
end generate;

-- HB 2016-03-02: inserted for global index
rate_cnt_before_prescaler_global <= rate_cnt_before_prescaler_global_int;
rate_cnt_after_prescaler_global <= rate_cnt_after_prescaler_global_int;
rate_cnt_post_dead_time_global <= rate_cnt_post_dead_time_global_int;

-- algo_2_rop_p: process(lhc_clk, algo_after_gtLogic_rop_int, algo_after_bxomask_rop_int, algo_after_prescaler_rop_int, algo_after_finor_mask_rop_int)
algo_2_rop_p: process(lhc_clk, algo_after_gtLogic_rop_int, algo_after_bxomask_rop_int, algo_after_prescaler_rop_int)
    begin
    if lhc_clk'event and lhc_clk = '1' then
        algo_after_gtLogic_rop <= algo_after_gtLogic_rop_int;
        algo_after_bxomask_rop <= algo_after_bxomask_rop_int;
        algo_after_prescaler_rop <= algo_after_prescaler_rop_int;
    end if;
end process;

end architecture rtl;