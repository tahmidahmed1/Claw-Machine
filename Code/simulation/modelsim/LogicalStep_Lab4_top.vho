-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Standard Edition"

-- DATE "07/20/2022 12:21:33"

-- 
-- Device: Altera 10M08SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LogicalStep_Lab4_top IS
    PORT (
	Clkin_50 : IN std_logic;
	pb_n : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : OUT std_logic_vector(7 DOWNTO 0);
	seg7_data : OUT std_logic_vector(6 DOWNTO 0);
	seg7_char1 : OUT std_logic;
	seg7_char2 : OUT std_logic
	);
END LogicalStep_Lab4_top;

-- Design Ports Information
-- leds[0]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[1]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[2]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[3]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[4]	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[5]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[6]	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[7]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[0]	=>  Location: PIN_123,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[1]	=>  Location: PIN_138,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[2]	=>  Location: PIN_140,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[3]	=>  Location: PIN_105,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[4]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[5]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[6]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char1	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char2	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- Clkin_50	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[3]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[0]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[1]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF LogicalStep_Lab4_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clkin_50 : std_logic;
SIGNAL ww_pb_n : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_seg7_data : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_char1 : std_logic;
SIGNAL ww_seg7_char2 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Clkin_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock_Selector|clk_divider:counter[23]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \seg7_data[1]~output_o\ : std_logic;
SIGNAL \seg7_data[5]~output_o\ : std_logic;
SIGNAL \seg7_data[6]~output_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \seg7_data[0]~output_o\ : std_logic;
SIGNAL \seg7_data[2]~output_o\ : std_logic;
SIGNAL \seg7_data[3]~output_o\ : std_logic;
SIGNAL \seg7_data[4]~output_o\ : std_logic;
SIGNAL \seg7_char1~output_o\ : std_logic;
SIGNAL \seg7_char2~output_o\ : std_logic;
SIGNAL \Clkin_50~input_o\ : std_logic;
SIGNAL \Clkin_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst14|clk_proc:COUNT[0]~0_combout\ : std_logic;
SIGNAL \inst14|clk_proc:COUNT[0]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[1]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[1]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[1]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[2]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[2]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[2]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[3]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[3]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[3]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[4]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[4]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[4]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[5]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[5]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[5]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[6]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[6]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[6]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[7]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[7]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[7]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[8]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[8]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[8]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[9]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[9]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[9]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[10]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[10]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[10]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[11]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[11]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[11]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[12]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[12]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[12]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[13]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[13]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[13]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[14]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[14]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[14]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[15]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[15]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[15]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[16]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[16]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[16]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[17]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[17]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[17]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[18]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[18]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[18]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[19]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[19]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[19]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[20]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[20]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[20]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[21]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[21]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[21]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[22]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[22]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[22]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[23]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[23]~q\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \inst6|reg[0]~feeder_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\ : std_logic;
SIGNAL \pb_n[3]~input_o\ : std_logic;
SIGNAL \inst1|stages_pb3[0]~0_combout\ : std_logic;
SIGNAL \inst1|stages_pb3[1]~feeder_combout\ : std_logic;
SIGNAL \pb_n[2]~input_o\ : std_logic;
SIGNAL \inst1|stages_pb2[0]~0_combout\ : std_logic;
SIGNAL \inst9|current_state.original_state~0_combout\ : std_logic;
SIGNAL \inst9|current_state.original_state~q\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \inst6|reg[2]~feeder_combout\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \inst6|reg[3]~feeder_combout\ : std_logic;
SIGNAL \inst9|clk_en_Y~4_combout\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \inst8|AEQB~0_combout\ : std_logic;
SIGNAL \inst8|AEQB~combout\ : std_logic;
SIGNAL \inst4|ud_bin_counter[0]~3_combout\ : std_logic;
SIGNAL \inst4|ud_bin_counter[1]~5_cout\ : std_logic;
SIGNAL \inst4|ud_bin_counter[1]~6_combout\ : std_logic;
SIGNAL \inst9|clk_en_Y~5_combout\ : std_logic;
SIGNAL \inst4|ud_bin_counter[1]~7\ : std_logic;
SIGNAL \inst4|ud_bin_counter[2]~8_combout\ : std_logic;
SIGNAL \inst8|AGTB~0_combout\ : std_logic;
SIGNAL \inst8|ALTB~0_combout\ : std_logic;
SIGNAL \inst8|ALTB~1_combout\ : std_logic;
SIGNAL \inst9|extender_en~0_combout\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \inst5|reg[3]~feeder_combout\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \inst7|AGTB~2_combout\ : std_logic;
SIGNAL \inst7|AGTB~1_combout\ : std_logic;
SIGNAL \inst7|AGTB~3_combout\ : std_logic;
SIGNAL \inst3|ud_bin_counter[0]~3_combout\ : std_logic;
SIGNAL \inst3|ud_bin_counter[1]~5_cout\ : std_logic;
SIGNAL \inst3|ud_bin_counter[1]~6_combout\ : std_logic;
SIGNAL \inst9|clk_en_X~4_combout\ : std_logic;
SIGNAL \inst3|ud_bin_counter[1]~7\ : std_logic;
SIGNAL \inst3|ud_bin_counter[2]~8_combout\ : std_logic;
SIGNAL \inst7|AGTB~0_combout\ : std_logic;
SIGNAL \inst7|AEQB~0_combout\ : std_logic;
SIGNAL \inst7|AEQB~combout\ : std_logic;
SIGNAL \inst9|Decoder_Section~1_combout\ : std_logic;
SIGNAL \inst9|up_down_X~0_combout\ : std_logic;
SIGNAL \inst9|up_down_X~combout\ : std_logic;
SIGNAL \inst3|process_0~0_combout\ : std_logic;
SIGNAL \inst3|ud_bin_counter[2]~9\ : std_logic;
SIGNAL \inst3|ud_bin_counter[3]~10_combout\ : std_logic;
SIGNAL \inst7|ALTB~0_combout\ : std_logic;
SIGNAL \inst7|ALTB~1_combout\ : std_logic;
SIGNAL \inst9|extender_en~1_combout\ : std_logic;
SIGNAL \inst9|Selector4~0_combout\ : std_logic;
SIGNAL \inst9|Selector4~1_combout\ : std_logic;
SIGNAL \inst9|extender_en~combout\ : std_logic;
SIGNAL \pb_n[1]~input_o\ : std_logic;
SIGNAL \inst1|stages_pb1[0]~0_combout\ : std_logic;
SIGNAL \inst10|Selector4~0_combout\ : std_logic;
SIGNAL \inst10|Selector1~0_combout\ : std_logic;
SIGNAL \inst10|Selector1~1_combout\ : std_logic;
SIGNAL \inst10|Selector0~1_combout\ : std_logic;
SIGNAL \inst10|current_state.extend_state~q\ : std_logic;
SIGNAL \inst2|sreg~3_combout\ : std_logic;
SIGNAL \inst10|Selector2~0_combout\ : std_logic;
SIGNAL \inst10|Selector3~1_combout\ : std_logic;
SIGNAL \inst10|Selector1~2_combout\ : std_logic;
SIGNAL \inst10|current_state.full_extend_state~q\ : std_logic;
SIGNAL \inst10|Selector5~0_combout\ : std_logic;
SIGNAL \inst10|current_state.push_retraction_state~q\ : std_logic;
SIGNAL \inst10|Selector2~1_combout\ : std_logic;
SIGNAL \inst10|current_state.retract_state~q\ : std_logic;
SIGNAL \inst10|clk_en~combout\ : std_logic;
SIGNAL \inst2|sreg~2_combout\ : std_logic;
SIGNAL \inst2|sreg~1_combout\ : std_logic;
SIGNAL \inst2|sreg~0_combout\ : std_logic;
SIGNAL \inst10|Selector3~0_combout\ : std_logic;
SIGNAL \inst10|Selector0~0_combout\ : std_logic;
SIGNAL \inst10|Selector3~2_combout\ : std_logic;
SIGNAL \inst10|current_state.full_retract_state~q\ : std_logic;
SIGNAL \inst10|Selector4~1_combout\ : std_logic;
SIGNAL \inst10|current_state.push_extension_state~q\ : std_logic;
SIGNAL \inst10|extender_out~0_combout\ : std_logic;
SIGNAL \inst9|next_state.flashing_error_state~0_combout\ : std_logic;
SIGNAL \inst9|current_state.flashing_error_state~q\ : std_logic;
SIGNAL \inst9|Selector0~0_combout\ : std_logic;
SIGNAL \inst9|Selector1~0_combout\ : std_logic;
SIGNAL \inst9|Selector0~1_combout\ : std_logic;
SIGNAL \inst9|current_state.press_state~q\ : std_logic;
SIGNAL \inst9|Selector2~2_combout\ : std_logic;
SIGNAL \inst9|Selector2~3_combout\ : std_logic;
SIGNAL \inst9|Selector2~4_combout\ : std_logic;
SIGNAL \inst9|current_state.error_state~q\ : std_logic;
SIGNAL \inst9|Capture_XY~0_combout\ : std_logic;
SIGNAL \inst9|Selector1~1_combout\ : std_logic;
SIGNAL \inst9|current_state.release_state~q\ : std_logic;
SIGNAL \inst9|Selector3~0_combout\ : std_logic;
SIGNAL \inst9|Selector3~1_combout\ : std_logic;
SIGNAL \inst8|AGTB~2_combout\ : std_logic;
SIGNAL \inst8|AGTB~1_combout\ : std_logic;
SIGNAL \inst8|AGTB~3_combout\ : std_logic;
SIGNAL \inst9|Decoder_Section~0_combout\ : std_logic;
SIGNAL \inst9|up_down_Y~0_combout\ : std_logic;
SIGNAL \inst9|up_down_Y~combout\ : std_logic;
SIGNAL \inst4|process_0~0_combout\ : std_logic;
SIGNAL \inst4|ud_bin_counter[2]~9\ : std_logic;
SIGNAL \inst4|ud_bin_counter[3]~10_combout\ : std_logic;
SIGNAL \inst13|Mux5~0_combout\ : std_logic;
SIGNAL \inst12|Mux5~0_combout\ : std_logic;
SIGNAL \inst14|clk_proc:COUNT[1]~1_combout\ : std_logic;
SIGNAL \inst14|clk_proc:COUNT[1]~q\ : std_logic;
SIGNAL \inst14|clk_proc:COUNT[1]~2\ : std_logic;
SIGNAL \inst14|clk_proc:COUNT[2]~1_combout\ : std_logic;
SIGNAL \inst14|clk_proc:COUNT[2]~q\ : std_logic;
SIGNAL \inst14|clk_proc:COUNT[2]~2\ : std_logic;
SIGNAL \inst14|clk_proc:COUNT[3]~1_combout\ : std_logic;
SIGNAL \inst14|clk_proc:COUNT[3]~q\ : std_logic;
SIGNAL \inst14|clk_proc:COUNT[3]~2\ : std_logic;
SIGNAL \inst14|clk_proc:COUNT[4]~1_combout\ : std_logic;
SIGNAL \inst14|clk_proc:COUNT[4]~q\ : std_logic;
SIGNAL \inst14|clk_proc:COUNT[4]~2\ : std_logic;
SIGNAL \inst14|clk_proc:COUNT[5]~1_combout\ : std_logic;
SIGNAL \inst14|clk_proc:COUNT[5]~q\ : std_logic;
SIGNAL \inst14|clk_proc:COUNT[5]~2\ : std_logic;
SIGNAL \inst14|clk_proc:COUNT[6]~1_combout\ : std_logic;
SIGNAL \inst14|clk_proc:COUNT[6]~q\ : std_logic;
SIGNAL \inst14|clk_proc:COUNT[6]~2\ : std_logic;
SIGNAL \inst14|clk_proc:COUNT[7]~1_combout\ : std_logic;
SIGNAL \inst14|clk_proc:COUNT[7]~q\ : std_logic;
SIGNAL \inst14|clk_proc:COUNT[7]~2\ : std_logic;
SIGNAL \inst14|clk_proc:COUNT[8]~1_combout\ : std_logic;
SIGNAL \inst14|clk_proc:COUNT[8]~q\ : std_logic;
SIGNAL \inst14|clk_proc:COUNT[8]~2\ : std_logic;
SIGNAL \inst14|clk_proc:COUNT[9]~1_combout\ : std_logic;
SIGNAL \inst14|clk_proc:COUNT[9]~q\ : std_logic;
SIGNAL \inst14|clk_proc:COUNT[9]~2\ : std_logic;
SIGNAL \inst14|clk_proc:COUNT[10]~1_combout\ : std_logic;
SIGNAL \inst14|clk_proc:COUNT[10]~q\ : std_logic;
SIGNAL \inst14|DOUT_TEMP[1]~0_combout\ : std_logic;
SIGNAL \inst12|Mux1~0_combout\ : std_logic;
SIGNAL \inst13|Mux1~0_combout\ : std_logic;
SIGNAL \inst14|DOUT_TEMP[5]~1_combout\ : std_logic;
SIGNAL \inst12|Mux0~0_combout\ : std_logic;
SIGNAL \inst13|Mux0~0_combout\ : std_logic;
SIGNAL \inst14|DOUT_TEMP[6]~2_combout\ : std_logic;
SIGNAL \pb_n[0]~input_o\ : std_logic;
SIGNAL \inst1|stages_pb0[0]~0_combout\ : std_logic;
SIGNAL \inst11|Transition_Section~0_combout\ : std_logic;
SIGNAL \inst11|Transition_Section~1_combout\ : std_logic;
SIGNAL \inst11|Selector0~0_combout\ : std_logic;
SIGNAL \inst11|current_state.press_open_state~q\ : std_logic;
SIGNAL \inst11|Selector2~0_combout\ : std_logic;
SIGNAL \inst11|current_state.release_open_state~q\ : std_logic;
SIGNAL \inst11|Selector1~0_combout\ : std_logic;
SIGNAL \inst11|current_state.press_close_state~q\ : std_logic;
SIGNAL \inst11|Selector3~0_combout\ : std_logic;
SIGNAL \inst11|current_state.release_close_state~q\ : std_logic;
SIGNAL \inst11|grappler_on~combout\ : std_logic;
SIGNAL \inst13|Mux6~0_combout\ : std_logic;
SIGNAL \inst12|Mux6~0_combout\ : std_logic;
SIGNAL \inst14|DOUT[0]~0_combout\ : std_logic;
SIGNAL \inst13|Mux4~0_combout\ : std_logic;
SIGNAL \inst12|Mux4~0_combout\ : std_logic;
SIGNAL \inst14|DOUT[2]~2_combout\ : std_logic;
SIGNAL \inst12|Mux3~0_combout\ : std_logic;
SIGNAL \inst13|Mux3~0_combout\ : std_logic;
SIGNAL \inst14|DOUT[3]~3_combout\ : std_logic;
SIGNAL \inst12|Mux2~0_combout\ : std_logic;
SIGNAL \inst13|Mux2~0_combout\ : std_logic;
SIGNAL \inst14|DOUT[4]~4_combout\ : std_logic;
SIGNAL \inst1|stages_pb2\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst4|ud_bin_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|ud_bin_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|stages_pb3\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|sreg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|stages_pb0\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst5|reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|stages_pb1\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|ALT_INV_stages_pb3\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \inst14|ALT_INV_DOUT[4]~4_combout\ : std_logic;
SIGNAL \inst14|ALT_INV_DOUT[3]~3_combout\ : std_logic;
SIGNAL \inst14|ALT_INV_DOUT[2]~2_combout\ : std_logic;
SIGNAL \inst14|ALT_INV_DOUT[0]~0_combout\ : std_logic;
SIGNAL \inst14|ALT_INV_clk_proc:COUNT[10]~q\ : std_logic;

BEGIN

ww_Clkin_50 <= Clkin_50;
ww_pb_n <= pb_n;
ww_sw <= sw;
leds <= ww_leds;
seg7_data <= ww_seg7_data;
seg7_char1 <= ww_seg7_char1;
seg7_char2 <= ww_seg7_char2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Clkin_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clkin_50~input_o\);

\Clock_Selector|clk_divider:counter[23]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock_Selector|clk_divider:counter[23]~q\);
\inst1|ALT_INV_stages_pb3\(1) <= NOT \inst1|stages_pb3\(1);
\inst14|ALT_INV_DOUT[4]~4_combout\ <= NOT \inst14|DOUT[4]~4_combout\;
\inst14|ALT_INV_DOUT[3]~3_combout\ <= NOT \inst14|DOUT[3]~3_combout\;
\inst14|ALT_INV_DOUT[2]~2_combout\ <= NOT \inst14|DOUT[2]~2_combout\;
\inst14|ALT_INV_DOUT[0]~0_combout\ <= NOT \inst14|DOUT[0]~0_combout\;
\inst14|ALT_INV_clk_proc:COUNT[10]~q\ <= NOT \inst14|clk_proc:COUNT[10]~q\;

-- Location: LCCOMB_X11_Y20_N20
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X3_Y10_N23
\seg7_data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst14|DOUT_TEMP[1]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[1]~output_o\);

-- Location: IOOBUF_X6_Y10_N30
\seg7_data[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst14|DOUT_TEMP[5]~1_combout\,
	devoe => ww_devoe,
	o => \seg7_data[5]~output_o\);

-- Location: IOOBUF_X3_Y10_N16
\seg7_data[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst14|DOUT_TEMP[6]~2_combout\,
	devoe => ww_devoe,
	o => \seg7_data[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|current_state.error_state~q\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|grappler_on~combout\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X10_Y17_N2
\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|sreg\(0),
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X10_Y20_N23
\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|sreg\(1),
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOOBUF_X10_Y21_N23
\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|sreg\(2),
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

-- Location: IOOBUF_X10_Y22_N23
\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|sreg\(3),
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

-- Location: IOOBUF_X6_Y0_N23
\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

-- Location: IOOBUF_X13_Y25_N30
\seg7_data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|ALT_INV_DOUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[0]~output_o\);

-- Location: IOOBUF_X1_Y10_N9
\seg7_data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|ALT_INV_DOUT[2]~2_combout\,
	devoe => ww_devoe,
	o => \seg7_data[2]~output_o\);

-- Location: IOOBUF_X31_Y22_N23
\seg7_data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|ALT_INV_DOUT[3]~3_combout\,
	devoe => ww_devoe,
	o => \seg7_data[3]~output_o\);

-- Location: IOOBUF_X15_Y25_N23
\seg7_data[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|ALT_INV_DOUT[4]~4_combout\,
	devoe => ww_devoe,
	o => \seg7_data[4]~output_o\);

-- Location: IOOBUF_X13_Y25_N9
\seg7_char1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|ALT_INV_clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char1~output_o\);

-- Location: IOOBUF_X15_Y25_N16
\seg7_char2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char2~output_o\);

-- Location: IOIBUF_X0_Y6_N22
\Clkin_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clkin_50,
	o => \Clkin_50~input_o\);

-- Location: CLKCTRL_G4
\Clkin_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clkin_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clkin_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X16_Y20_N8
\inst14|clk_proc:COUNT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|clk_proc:COUNT[0]~0_combout\ = !\inst14|clk_proc:COUNT[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|clk_proc:COUNT[0]~q\,
	combout => \inst14|clk_proc:COUNT[0]~0_combout\);

-- Location: FF_X16_Y20_N9
\inst14|clk_proc:COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \inst14|clk_proc:COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|clk_proc:COUNT[0]~q\);

-- Location: LCCOMB_X16_Y20_N10
\Clock_Selector|clk_divider:counter[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[1]~1_combout\ = (\Clock_Selector|clk_divider:counter[1]~q\ & (\inst14|clk_proc:COUNT[0]~q\ $ (VCC))) # (!\Clock_Selector|clk_divider:counter[1]~q\ & (\inst14|clk_proc:COUNT[0]~q\ & VCC))
-- \Clock_Selector|clk_divider:counter[1]~2\ = CARRY((\Clock_Selector|clk_divider:counter[1]~q\ & \inst14|clk_proc:COUNT[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[1]~q\,
	datab => \inst14|clk_proc:COUNT[0]~q\,
	datad => VCC,
	combout => \Clock_Selector|clk_divider:counter[1]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[1]~2\);

-- Location: FF_X16_Y20_N11
\Clock_Selector|clk_divider:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[1]~q\);

-- Location: LCCOMB_X16_Y20_N12
\Clock_Selector|clk_divider:counter[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[2]~1_combout\ = (\Clock_Selector|clk_divider:counter[2]~q\ & (!\Clock_Selector|clk_divider:counter[1]~2\)) # (!\Clock_Selector|clk_divider:counter[2]~q\ & ((\Clock_Selector|clk_divider:counter[1]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[2]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[1]~2\) # (!\Clock_Selector|clk_divider:counter[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[2]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[1]~2\,
	combout => \Clock_Selector|clk_divider:counter[2]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[2]~2\);

-- Location: FF_X16_Y20_N13
\Clock_Selector|clk_divider:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[2]~q\);

-- Location: LCCOMB_X16_Y20_N14
\Clock_Selector|clk_divider:counter[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[3]~1_combout\ = (\Clock_Selector|clk_divider:counter[3]~q\ & (\Clock_Selector|clk_divider:counter[2]~2\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[3]~q\ & (!\Clock_Selector|clk_divider:counter[2]~2\ & VCC))
-- \Clock_Selector|clk_divider:counter[3]~2\ = CARRY((\Clock_Selector|clk_divider:counter[3]~q\ & !\Clock_Selector|clk_divider:counter[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[3]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[2]~2\,
	combout => \Clock_Selector|clk_divider:counter[3]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[3]~2\);

-- Location: FF_X16_Y20_N15
\Clock_Selector|clk_divider:counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[3]~q\);

-- Location: LCCOMB_X16_Y20_N16
\Clock_Selector|clk_divider:counter[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[4]~1_combout\ = (\Clock_Selector|clk_divider:counter[4]~q\ & (!\Clock_Selector|clk_divider:counter[3]~2\)) # (!\Clock_Selector|clk_divider:counter[4]~q\ & ((\Clock_Selector|clk_divider:counter[3]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[4]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[3]~2\) # (!\Clock_Selector|clk_divider:counter[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[4]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[3]~2\,
	combout => \Clock_Selector|clk_divider:counter[4]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[4]~2\);

-- Location: FF_X16_Y20_N17
\Clock_Selector|clk_divider:counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[4]~q\);

-- Location: LCCOMB_X16_Y20_N18
\Clock_Selector|clk_divider:counter[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[5]~1_combout\ = (\Clock_Selector|clk_divider:counter[5]~q\ & (\Clock_Selector|clk_divider:counter[4]~2\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[5]~q\ & (!\Clock_Selector|clk_divider:counter[4]~2\ & VCC))
-- \Clock_Selector|clk_divider:counter[5]~2\ = CARRY((\Clock_Selector|clk_divider:counter[5]~q\ & !\Clock_Selector|clk_divider:counter[4]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[5]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[4]~2\,
	combout => \Clock_Selector|clk_divider:counter[5]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[5]~2\);

-- Location: FF_X16_Y20_N19
\Clock_Selector|clk_divider:counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[5]~q\);

-- Location: LCCOMB_X16_Y20_N20
\Clock_Selector|clk_divider:counter[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[6]~1_combout\ = (\Clock_Selector|clk_divider:counter[6]~q\ & (!\Clock_Selector|clk_divider:counter[5]~2\)) # (!\Clock_Selector|clk_divider:counter[6]~q\ & ((\Clock_Selector|clk_divider:counter[5]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[6]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[5]~2\) # (!\Clock_Selector|clk_divider:counter[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[6]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[5]~2\,
	combout => \Clock_Selector|clk_divider:counter[6]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[6]~2\);

-- Location: FF_X16_Y20_N21
\Clock_Selector|clk_divider:counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[6]~q\);

-- Location: LCCOMB_X16_Y20_N22
\Clock_Selector|clk_divider:counter[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[7]~1_combout\ = (\Clock_Selector|clk_divider:counter[7]~q\ & (\Clock_Selector|clk_divider:counter[6]~2\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[7]~q\ & (!\Clock_Selector|clk_divider:counter[6]~2\ & VCC))
-- \Clock_Selector|clk_divider:counter[7]~2\ = CARRY((\Clock_Selector|clk_divider:counter[7]~q\ & !\Clock_Selector|clk_divider:counter[6]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[7]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[6]~2\,
	combout => \Clock_Selector|clk_divider:counter[7]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[7]~2\);

-- Location: FF_X16_Y20_N23
\Clock_Selector|clk_divider:counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[7]~q\);

-- Location: LCCOMB_X16_Y20_N24
\Clock_Selector|clk_divider:counter[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[8]~1_combout\ = (\Clock_Selector|clk_divider:counter[8]~q\ & (!\Clock_Selector|clk_divider:counter[7]~2\)) # (!\Clock_Selector|clk_divider:counter[8]~q\ & ((\Clock_Selector|clk_divider:counter[7]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[8]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[7]~2\) # (!\Clock_Selector|clk_divider:counter[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[8]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[7]~2\,
	combout => \Clock_Selector|clk_divider:counter[8]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[8]~2\);

-- Location: FF_X16_Y20_N25
\Clock_Selector|clk_divider:counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[8]~q\);

-- Location: LCCOMB_X16_Y20_N26
\Clock_Selector|clk_divider:counter[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[9]~1_combout\ = (\Clock_Selector|clk_divider:counter[9]~q\ & (\Clock_Selector|clk_divider:counter[8]~2\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[9]~q\ & (!\Clock_Selector|clk_divider:counter[8]~2\ & VCC))
-- \Clock_Selector|clk_divider:counter[9]~2\ = CARRY((\Clock_Selector|clk_divider:counter[9]~q\ & !\Clock_Selector|clk_divider:counter[8]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[9]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[8]~2\,
	combout => \Clock_Selector|clk_divider:counter[9]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[9]~2\);

-- Location: FF_X16_Y20_N27
\Clock_Selector|clk_divider:counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[9]~q\);

-- Location: LCCOMB_X16_Y20_N28
\Clock_Selector|clk_divider:counter[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[10]~1_combout\ = (\Clock_Selector|clk_divider:counter[10]~q\ & (!\Clock_Selector|clk_divider:counter[9]~2\)) # (!\Clock_Selector|clk_divider:counter[10]~q\ & ((\Clock_Selector|clk_divider:counter[9]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[10]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[9]~2\) # (!\Clock_Selector|clk_divider:counter[10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[10]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[9]~2\,
	combout => \Clock_Selector|clk_divider:counter[10]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[10]~2\);

-- Location: FF_X16_Y20_N29
\Clock_Selector|clk_divider:counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[10]~q\);

-- Location: LCCOMB_X16_Y20_N30
\Clock_Selector|clk_divider:counter[11]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[11]~1_combout\ = (\Clock_Selector|clk_divider:counter[11]~q\ & (\Clock_Selector|clk_divider:counter[10]~2\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[11]~q\ & (!\Clock_Selector|clk_divider:counter[10]~2\ & VCC))
-- \Clock_Selector|clk_divider:counter[11]~2\ = CARRY((\Clock_Selector|clk_divider:counter[11]~q\ & !\Clock_Selector|clk_divider:counter[10]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[11]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[10]~2\,
	combout => \Clock_Selector|clk_divider:counter[11]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[11]~2\);

-- Location: FF_X16_Y20_N31
\Clock_Selector|clk_divider:counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[11]~q\);

-- Location: LCCOMB_X16_Y19_N0
\Clock_Selector|clk_divider:counter[12]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[12]~1_combout\ = (\Clock_Selector|clk_divider:counter[12]~q\ & (!\Clock_Selector|clk_divider:counter[11]~2\)) # (!\Clock_Selector|clk_divider:counter[12]~q\ & ((\Clock_Selector|clk_divider:counter[11]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[12]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[11]~2\) # (!\Clock_Selector|clk_divider:counter[12]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[12]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[11]~2\,
	combout => \Clock_Selector|clk_divider:counter[12]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[12]~2\);

-- Location: FF_X16_Y19_N1
\Clock_Selector|clk_divider:counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[12]~q\);

-- Location: LCCOMB_X16_Y19_N2
\Clock_Selector|clk_divider:counter[13]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[13]~1_combout\ = (\Clock_Selector|clk_divider:counter[13]~q\ & (\Clock_Selector|clk_divider:counter[12]~2\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[13]~q\ & (!\Clock_Selector|clk_divider:counter[12]~2\ & VCC))
-- \Clock_Selector|clk_divider:counter[13]~2\ = CARRY((\Clock_Selector|clk_divider:counter[13]~q\ & !\Clock_Selector|clk_divider:counter[12]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[13]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[12]~2\,
	combout => \Clock_Selector|clk_divider:counter[13]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[13]~2\);

-- Location: FF_X16_Y19_N3
\Clock_Selector|clk_divider:counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[13]~q\);

-- Location: LCCOMB_X16_Y19_N4
\Clock_Selector|clk_divider:counter[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[14]~1_combout\ = (\Clock_Selector|clk_divider:counter[14]~q\ & (!\Clock_Selector|clk_divider:counter[13]~2\)) # (!\Clock_Selector|clk_divider:counter[14]~q\ & ((\Clock_Selector|clk_divider:counter[13]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[14]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[13]~2\) # (!\Clock_Selector|clk_divider:counter[14]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[14]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[13]~2\,
	combout => \Clock_Selector|clk_divider:counter[14]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[14]~2\);

-- Location: FF_X16_Y19_N5
\Clock_Selector|clk_divider:counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[14]~q\);

-- Location: LCCOMB_X16_Y19_N6
\Clock_Selector|clk_divider:counter[15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[15]~1_combout\ = (\Clock_Selector|clk_divider:counter[15]~q\ & (\Clock_Selector|clk_divider:counter[14]~2\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[15]~q\ & (!\Clock_Selector|clk_divider:counter[14]~2\ & VCC))
-- \Clock_Selector|clk_divider:counter[15]~2\ = CARRY((\Clock_Selector|clk_divider:counter[15]~q\ & !\Clock_Selector|clk_divider:counter[14]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[15]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[14]~2\,
	combout => \Clock_Selector|clk_divider:counter[15]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[15]~2\);

-- Location: FF_X16_Y19_N7
\Clock_Selector|clk_divider:counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[15]~q\);

-- Location: LCCOMB_X16_Y19_N8
\Clock_Selector|clk_divider:counter[16]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[16]~1_combout\ = (\Clock_Selector|clk_divider:counter[16]~q\ & (!\Clock_Selector|clk_divider:counter[15]~2\)) # (!\Clock_Selector|clk_divider:counter[16]~q\ & ((\Clock_Selector|clk_divider:counter[15]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[16]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[15]~2\) # (!\Clock_Selector|clk_divider:counter[16]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[16]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[15]~2\,
	combout => \Clock_Selector|clk_divider:counter[16]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[16]~2\);

-- Location: FF_X16_Y19_N9
\Clock_Selector|clk_divider:counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[16]~q\);

-- Location: LCCOMB_X16_Y19_N10
\Clock_Selector|clk_divider:counter[17]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[17]~1_combout\ = (\Clock_Selector|clk_divider:counter[17]~q\ & (\Clock_Selector|clk_divider:counter[16]~2\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[17]~q\ & (!\Clock_Selector|clk_divider:counter[16]~2\ & VCC))
-- \Clock_Selector|clk_divider:counter[17]~2\ = CARRY((\Clock_Selector|clk_divider:counter[17]~q\ & !\Clock_Selector|clk_divider:counter[16]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[17]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[16]~2\,
	combout => \Clock_Selector|clk_divider:counter[17]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[17]~2\);

-- Location: FF_X16_Y19_N11
\Clock_Selector|clk_divider:counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[17]~q\);

-- Location: LCCOMB_X16_Y19_N12
\Clock_Selector|clk_divider:counter[18]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[18]~1_combout\ = (\Clock_Selector|clk_divider:counter[18]~q\ & (!\Clock_Selector|clk_divider:counter[17]~2\)) # (!\Clock_Selector|clk_divider:counter[18]~q\ & ((\Clock_Selector|clk_divider:counter[17]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[18]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[17]~2\) # (!\Clock_Selector|clk_divider:counter[18]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[18]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[17]~2\,
	combout => \Clock_Selector|clk_divider:counter[18]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[18]~2\);

-- Location: FF_X16_Y19_N13
\Clock_Selector|clk_divider:counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[18]~q\);

-- Location: LCCOMB_X16_Y19_N14
\Clock_Selector|clk_divider:counter[19]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[19]~1_combout\ = (\Clock_Selector|clk_divider:counter[19]~q\ & (\Clock_Selector|clk_divider:counter[18]~2\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[19]~q\ & (!\Clock_Selector|clk_divider:counter[18]~2\ & VCC))
-- \Clock_Selector|clk_divider:counter[19]~2\ = CARRY((\Clock_Selector|clk_divider:counter[19]~q\ & !\Clock_Selector|clk_divider:counter[18]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[19]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[18]~2\,
	combout => \Clock_Selector|clk_divider:counter[19]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[19]~2\);

-- Location: FF_X16_Y19_N15
\Clock_Selector|clk_divider:counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[19]~q\);

-- Location: LCCOMB_X16_Y19_N16
\Clock_Selector|clk_divider:counter[20]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[20]~1_combout\ = (\Clock_Selector|clk_divider:counter[20]~q\ & (!\Clock_Selector|clk_divider:counter[19]~2\)) # (!\Clock_Selector|clk_divider:counter[20]~q\ & ((\Clock_Selector|clk_divider:counter[19]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[20]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[19]~2\) # (!\Clock_Selector|clk_divider:counter[20]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[20]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[19]~2\,
	combout => \Clock_Selector|clk_divider:counter[20]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[20]~2\);

-- Location: FF_X16_Y19_N17
\Clock_Selector|clk_divider:counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[20]~q\);

-- Location: LCCOMB_X16_Y19_N18
\Clock_Selector|clk_divider:counter[21]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[21]~1_combout\ = (\Clock_Selector|clk_divider:counter[21]~q\ & (\Clock_Selector|clk_divider:counter[20]~2\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[21]~q\ & (!\Clock_Selector|clk_divider:counter[20]~2\ & VCC))
-- \Clock_Selector|clk_divider:counter[21]~2\ = CARRY((\Clock_Selector|clk_divider:counter[21]~q\ & !\Clock_Selector|clk_divider:counter[20]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[21]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[20]~2\,
	combout => \Clock_Selector|clk_divider:counter[21]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[21]~2\);

-- Location: FF_X16_Y19_N19
\Clock_Selector|clk_divider:counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[21]~q\);

-- Location: LCCOMB_X16_Y19_N20
\Clock_Selector|clk_divider:counter[22]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[22]~1_combout\ = (\Clock_Selector|clk_divider:counter[22]~q\ & (!\Clock_Selector|clk_divider:counter[21]~2\)) # (!\Clock_Selector|clk_divider:counter[22]~q\ & ((\Clock_Selector|clk_divider:counter[21]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[22]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[21]~2\) # (!\Clock_Selector|clk_divider:counter[22]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[22]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[21]~2\,
	combout => \Clock_Selector|clk_divider:counter[22]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[22]~2\);

-- Location: FF_X16_Y19_N21
\Clock_Selector|clk_divider:counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[22]~q\);

-- Location: LCCOMB_X16_Y19_N22
\Clock_Selector|clk_divider:counter[23]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[23]~1_combout\ = \Clock_Selector|clk_divider:counter[22]~2\ $ (!\Clock_Selector|clk_divider:counter[23]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Clock_Selector|clk_divider:counter[23]~q\,
	cin => \Clock_Selector|clk_divider:counter[22]~2\,
	combout => \Clock_Selector|clk_divider:counter[23]~1_combout\);

-- Location: FF_X16_Y19_N23
\Clock_Selector|clk_divider:counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[23]~q\);

-- Location: IOIBUF_X0_Y5_N1
\sw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: LCCOMB_X15_Y20_N26
\inst6|reg[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|reg[0]~feeder_combout\ = \sw[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw[0]~input_o\,
	combout => \inst6|reg[0]~feeder_combout\);

-- Location: CLKCTRL_G7
\Clock_Selector|clk_divider:counter[23]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock_Selector|clk_divider:counter[23]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\);

-- Location: IOIBUF_X6_Y0_N15
\pb_n[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(3),
	o => \pb_n[3]~input_o\);

-- Location: LCCOMB_X14_Y20_N18
\inst1|stages_pb3[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|stages_pb3[0]~0_combout\ = !\pb_n[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pb_n[3]~input_o\,
	combout => \inst1|stages_pb3[0]~0_combout\);

-- Location: FF_X14_Y20_N19
\inst1|stages_pb3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst1|stages_pb3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|stages_pb3\(0));

-- Location: LCCOMB_X14_Y20_N30
\inst1|stages_pb3[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|stages_pb3[1]~feeder_combout\ = \inst1|stages_pb3\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|stages_pb3\(0),
	combout => \inst1|stages_pb3[1]~feeder_combout\);

-- Location: FF_X14_Y20_N31
\inst1|stages_pb3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst1|stages_pb3[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|stages_pb3\(1));

-- Location: IOIBUF_X9_Y0_N29
\pb_n[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(2),
	o => \pb_n[2]~input_o\);

-- Location: LCCOMB_X13_Y20_N4
\inst1|stages_pb2[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|stages_pb2[0]~0_combout\ = !\pb_n[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pb_n[2]~input_o\,
	combout => \inst1|stages_pb2[0]~0_combout\);

-- Location: FF_X14_Y20_N9
\inst1|stages_pb2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	asdata => \inst1|stages_pb2[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|stages_pb2\(0));

-- Location: FF_X14_Y20_N15
\inst1|stages_pb2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	asdata => \inst1|stages_pb2\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|stages_pb2\(1));

-- Location: LCCOMB_X12_Y19_N28
\inst9|current_state.original_state~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|current_state.original_state~0_combout\ = (\inst9|current_state.original_state~q\) # (\inst1|stages_pb2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|current_state.original_state~q\,
	datad => \inst1|stages_pb2\(1),
	combout => \inst9|current_state.original_state~0_combout\);

-- Location: FF_X13_Y19_N27
\inst9|current_state.original_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	asdata => \inst9|current_state.original_state~0_combout\,
	clrn => \inst1|ALT_INV_stages_pb3\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|current_state.original_state~q\);

-- Location: IOIBUF_X10_Y19_N22
\sw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: LCCOMB_X15_Y20_N6
\inst6|reg[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|reg[2]~feeder_combout\ = \sw[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw[2]~input_o\,
	combout => \inst6|reg[2]~feeder_combout\);

-- Location: FF_X15_Y20_N7
\inst6|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	d => \inst6|reg[2]~feeder_combout\,
	clrn => \inst1|ALT_INV_stages_pb3\(1),
	ena => \inst9|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|reg\(2));

-- Location: IOIBUF_X10_Y20_N15
\sw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: LCCOMB_X15_Y20_N14
\inst6|reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|reg[3]~feeder_combout\ = \sw[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw[3]~input_o\,
	combout => \inst6|reg[3]~feeder_combout\);

-- Location: FF_X15_Y20_N15
\inst6|reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	d => \inst6|reg[3]~feeder_combout\,
	clrn => \inst1|ALT_INV_stages_pb3\(1),
	ena => \inst9|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|reg\(3));

-- Location: LCCOMB_X14_Y20_N6
\inst9|clk_en_Y~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|clk_en_Y~4_combout\ = (!\inst1|stages_pb2\(1) & \inst9|current_state.release_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|stages_pb2\(1),
	datad => \inst9|current_state.release_state~q\,
	combout => \inst9|clk_en_Y~4_combout\);

-- Location: IOIBUF_X10_Y19_N15
\sw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: FF_X15_Y20_N9
\inst6|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	asdata => \sw[1]~input_o\,
	clrn => \inst1|ALT_INV_stages_pb3\(1),
	sload => VCC,
	ena => \inst9|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|reg\(1));

-- Location: LCCOMB_X15_Y20_N10
\inst8|AEQB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|AEQB~0_combout\ = (\inst6|reg\(0) & ((\inst4|ud_bin_counter\(1) $ (\inst6|reg\(1))) # (!\inst4|ud_bin_counter\(0)))) # (!\inst6|reg\(0) & ((\inst4|ud_bin_counter\(0)) # (\inst4|ud_bin_counter\(1) $ (\inst6|reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|reg\(0),
	datab => \inst4|ud_bin_counter\(1),
	datac => \inst6|reg\(1),
	datad => \inst4|ud_bin_counter\(0),
	combout => \inst8|AEQB~0_combout\);

-- Location: LCCOMB_X14_Y20_N8
\inst8|AEQB\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|AEQB~combout\ = (\inst8|AEQB~0_combout\) # (!\inst8|AGTB~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|AEQB~0_combout\,
	datad => \inst8|AGTB~0_combout\,
	combout => \inst8|AEQB~combout\);

-- Location: LCCOMB_X15_Y20_N20
\inst4|ud_bin_counter[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|ud_bin_counter[0]~3_combout\ = \inst4|ud_bin_counter\(0) $ (((\inst9|clk_en_Y~4_combout\ & ((\inst8|AEQB~combout\) # (\inst8|AGTB~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|clk_en_Y~4_combout\,
	datab => \inst8|AEQB~combout\,
	datac => \inst4|ud_bin_counter\(0),
	datad => \inst8|AGTB~3_combout\,
	combout => \inst4|ud_bin_counter[0]~3_combout\);

-- Location: FF_X15_Y20_N21
\inst4|ud_bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	d => \inst4|ud_bin_counter[0]~3_combout\,
	clrn => \inst1|ALT_INV_stages_pb3\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ud_bin_counter\(0));

-- Location: LCCOMB_X14_Y20_N20
\inst4|ud_bin_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|ud_bin_counter[1]~5_cout\ = CARRY(\inst4|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ud_bin_counter\(0),
	datad => VCC,
	cout => \inst4|ud_bin_counter[1]~5_cout\);

-- Location: LCCOMB_X14_Y20_N22
\inst4|ud_bin_counter[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|ud_bin_counter[1]~6_combout\ = (\inst4|ud_bin_counter\(1) & ((\inst4|process_0~0_combout\ & (!\inst4|ud_bin_counter[1]~5_cout\)) # (!\inst4|process_0~0_combout\ & (\inst4|ud_bin_counter[1]~5_cout\ & VCC)))) # (!\inst4|ud_bin_counter\(1) & 
-- ((\inst4|process_0~0_combout\ & ((\inst4|ud_bin_counter[1]~5_cout\) # (GND))) # (!\inst4|process_0~0_combout\ & (!\inst4|ud_bin_counter[1]~5_cout\))))
-- \inst4|ud_bin_counter[1]~7\ = CARRY((\inst4|ud_bin_counter\(1) & (\inst4|process_0~0_combout\ & !\inst4|ud_bin_counter[1]~5_cout\)) # (!\inst4|ud_bin_counter\(1) & ((\inst4|process_0~0_combout\) # (!\inst4|ud_bin_counter[1]~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ud_bin_counter\(1),
	datab => \inst4|process_0~0_combout\,
	datad => VCC,
	cin => \inst4|ud_bin_counter[1]~5_cout\,
	combout => \inst4|ud_bin_counter[1]~6_combout\,
	cout => \inst4|ud_bin_counter[1]~7\);

-- Location: LCCOMB_X14_Y20_N14
\inst9|clk_en_Y~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|clk_en_Y~5_combout\ = (\inst9|current_state.release_state~q\ & (!\inst1|stages_pb2\(1) & ((\inst8|AGTB~3_combout\) # (\inst8|AEQB~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|AGTB~3_combout\,
	datab => \inst9|current_state.release_state~q\,
	datac => \inst1|stages_pb2\(1),
	datad => \inst8|AEQB~combout\,
	combout => \inst9|clk_en_Y~5_combout\);

-- Location: FF_X14_Y20_N23
\inst4|ud_bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	d => \inst4|ud_bin_counter[1]~6_combout\,
	clrn => \inst1|ALT_INV_stages_pb3\(1),
	ena => \inst9|clk_en_Y~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ud_bin_counter\(1));

-- Location: LCCOMB_X14_Y20_N24
\inst4|ud_bin_counter[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|ud_bin_counter[2]~8_combout\ = ((\inst4|ud_bin_counter\(2) $ (\inst4|process_0~0_combout\ $ (\inst4|ud_bin_counter[1]~7\)))) # (GND)
-- \inst4|ud_bin_counter[2]~9\ = CARRY((\inst4|ud_bin_counter\(2) & ((!\inst4|ud_bin_counter[1]~7\) # (!\inst4|process_0~0_combout\))) # (!\inst4|ud_bin_counter\(2) & (!\inst4|process_0~0_combout\ & !\inst4|ud_bin_counter[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ud_bin_counter\(2),
	datab => \inst4|process_0~0_combout\,
	datad => VCC,
	cin => \inst4|ud_bin_counter[1]~7\,
	combout => \inst4|ud_bin_counter[2]~8_combout\,
	cout => \inst4|ud_bin_counter[2]~9\);

-- Location: FF_X14_Y20_N25
\inst4|ud_bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	d => \inst4|ud_bin_counter[2]~8_combout\,
	clrn => \inst1|ALT_INV_stages_pb3\(1),
	ena => \inst9|clk_en_Y~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ud_bin_counter\(2));

-- Location: LCCOMB_X15_Y20_N30
\inst8|AGTB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|AGTB~0_combout\ = (\inst6|reg\(2) & (\inst4|ud_bin_counter\(2) & (\inst6|reg\(3) $ (!\inst4|ud_bin_counter\(3))))) # (!\inst6|reg\(2) & (!\inst4|ud_bin_counter\(2) & (\inst6|reg\(3) $ (!\inst4|ud_bin_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|reg\(2),
	datab => \inst6|reg\(3),
	datac => \inst4|ud_bin_counter\(3),
	datad => \inst4|ud_bin_counter\(2),
	combout => \inst8|AGTB~0_combout\);

-- Location: LCCOMB_X15_Y20_N22
\inst8|ALTB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|ALTB~0_combout\ = (\inst4|ud_bin_counter\(3) & (!\inst4|ud_bin_counter\(2) & (\inst6|reg\(3) & \inst6|reg\(2)))) # (!\inst4|ud_bin_counter\(3) & ((\inst6|reg\(3)) # ((!\inst4|ud_bin_counter\(2) & \inst6|reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ud_bin_counter\(3),
	datab => \inst4|ud_bin_counter\(2),
	datac => \inst6|reg\(3),
	datad => \inst6|reg\(2),
	combout => \inst8|ALTB~0_combout\);

-- Location: LCCOMB_X15_Y20_N24
\inst8|ALTB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|ALTB~1_combout\ = (\inst4|ud_bin_counter\(1) & (\inst6|reg\(0) & (\inst6|reg\(1) & !\inst4|ud_bin_counter\(0)))) # (!\inst4|ud_bin_counter\(1) & ((\inst6|reg\(1)) # ((\inst6|reg\(0) & !\inst4|ud_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|reg\(0),
	datab => \inst4|ud_bin_counter\(1),
	datac => \inst6|reg\(1),
	datad => \inst4|ud_bin_counter\(0),
	combout => \inst8|ALTB~1_combout\);

-- Location: LCCOMB_X15_Y20_N16
\inst9|extender_en~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|extender_en~0_combout\ = (\inst8|AGTB~0_combout\ & (\inst8|AEQB~0_combout\ & ((\inst8|ALTB~0_combout\) # (\inst8|ALTB~1_combout\)))) # (!\inst8|AGTB~0_combout\ & (((\inst8|ALTB~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|AGTB~0_combout\,
	datab => \inst8|AEQB~0_combout\,
	datac => \inst8|ALTB~0_combout\,
	datad => \inst8|ALTB~1_combout\,
	combout => \inst9|extender_en~0_combout\);

-- Location: IOIBUF_X1_Y10_N15
\sw[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: LCCOMB_X14_Y19_N2
\inst5|reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|reg[3]~feeder_combout\ = \sw[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw[7]~input_o\,
	combout => \inst5|reg[3]~feeder_combout\);

-- Location: FF_X14_Y19_N3
\inst5|reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	d => \inst5|reg[3]~feeder_combout\,
	clrn => \inst1|ALT_INV_stages_pb3\(1),
	ena => \inst9|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|reg\(3));

-- Location: IOIBUF_X3_Y0_N8
\sw[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: FF_X14_Y19_N21
\inst5|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	asdata => \sw[6]~input_o\,
	clrn => \inst1|ALT_INV_stages_pb3\(1),
	sload => VCC,
	ena => \inst9|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|reg\(2));

-- Location: IOIBUF_X10_Y21_N15
\sw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: FF_X14_Y19_N9
\inst5|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	asdata => \sw[4]~input_o\,
	clrn => \inst1|ALT_INV_stages_pb3\(1),
	sload => VCC,
	ena => \inst9|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|reg\(0));

-- Location: IOIBUF_X10_Y22_N15
\sw[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: FF_X14_Y19_N29
\inst5|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	asdata => \sw[5]~input_o\,
	clrn => \inst1|ALT_INV_stages_pb3\(1),
	sload => VCC,
	ena => \inst9|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|reg\(1));

-- Location: LCCOMB_X14_Y19_N28
\inst7|AGTB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|AGTB~2_combout\ = (\inst5|reg\(1) & (\inst3|ud_bin_counter\(0) & (!\inst5|reg\(0) & \inst3|ud_bin_counter\(1)))) # (!\inst5|reg\(1) & ((\inst3|ud_bin_counter\(1)) # ((\inst3|ud_bin_counter\(0) & !\inst5|reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ud_bin_counter\(0),
	datab => \inst5|reg\(0),
	datac => \inst5|reg\(1),
	datad => \inst3|ud_bin_counter\(1),
	combout => \inst7|AGTB~2_combout\);

-- Location: LCCOMB_X14_Y19_N14
\inst7|AGTB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|AGTB~1_combout\ = (\inst5|reg\(3) & (\inst3|ud_bin_counter\(2) & (!\inst5|reg\(2) & \inst3|ud_bin_counter\(3)))) # (!\inst5|reg\(3) & ((\inst3|ud_bin_counter\(3)) # ((\inst3|ud_bin_counter\(2) & !\inst5|reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ud_bin_counter\(2),
	datab => \inst5|reg\(3),
	datac => \inst5|reg\(2),
	datad => \inst3|ud_bin_counter\(3),
	combout => \inst7|AGTB~1_combout\);

-- Location: LCCOMB_X14_Y19_N4
\inst7|AGTB~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|AGTB~3_combout\ = (\inst7|AGTB~1_combout\) # ((\inst7|AGTB~2_combout\ & \inst7|AGTB~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|AGTB~2_combout\,
	datac => \inst7|AGTB~1_combout\,
	datad => \inst7|AGTB~0_combout\,
	combout => \inst7|AGTB~3_combout\);

-- Location: LCCOMB_X14_Y19_N6
\inst3|ud_bin_counter[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ud_bin_counter[0]~3_combout\ = \inst3|ud_bin_counter\(0) $ (((\inst9|clk_en_Y~4_combout\ & ((\inst7|AGTB~3_combout\) # (\inst7|AEQB~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|AGTB~3_combout\,
	datab => \inst7|AEQB~combout\,
	datac => \inst3|ud_bin_counter\(0),
	datad => \inst9|clk_en_Y~4_combout\,
	combout => \inst3|ud_bin_counter[0]~3_combout\);

-- Location: FF_X14_Y19_N7
\inst3|ud_bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	d => \inst3|ud_bin_counter[0]~3_combout\,
	clrn => \inst1|ALT_INV_stages_pb3\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ud_bin_counter\(0));

-- Location: LCCOMB_X15_Y19_N12
\inst3|ud_bin_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ud_bin_counter[1]~5_cout\ = CARRY(\inst3|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ud_bin_counter\(0),
	datad => VCC,
	cout => \inst3|ud_bin_counter[1]~5_cout\);

-- Location: LCCOMB_X15_Y19_N14
\inst3|ud_bin_counter[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ud_bin_counter[1]~6_combout\ = (\inst3|process_0~0_combout\ & ((\inst3|ud_bin_counter\(1) & (!\inst3|ud_bin_counter[1]~5_cout\)) # (!\inst3|ud_bin_counter\(1) & ((\inst3|ud_bin_counter[1]~5_cout\) # (GND))))) # (!\inst3|process_0~0_combout\ & 
-- ((\inst3|ud_bin_counter\(1) & (\inst3|ud_bin_counter[1]~5_cout\ & VCC)) # (!\inst3|ud_bin_counter\(1) & (!\inst3|ud_bin_counter[1]~5_cout\))))
-- \inst3|ud_bin_counter[1]~7\ = CARRY((\inst3|process_0~0_combout\ & ((!\inst3|ud_bin_counter[1]~5_cout\) # (!\inst3|ud_bin_counter\(1)))) # (!\inst3|process_0~0_combout\ & (!\inst3|ud_bin_counter\(1) & !\inst3|ud_bin_counter[1]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|process_0~0_combout\,
	datab => \inst3|ud_bin_counter\(1),
	datad => VCC,
	cin => \inst3|ud_bin_counter[1]~5_cout\,
	combout => \inst3|ud_bin_counter[1]~6_combout\,
	cout => \inst3|ud_bin_counter[1]~7\);

-- Location: LCCOMB_X15_Y19_N8
\inst9|clk_en_X~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|clk_en_X~4_combout\ = (!\inst1|stages_pb2\(1) & (\inst9|current_state.release_state~q\ & ((\inst7|AEQB~combout\) # (\inst7|AGTB~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|stages_pb2\(1),
	datab => \inst7|AEQB~combout\,
	datac => \inst7|AGTB~3_combout\,
	datad => \inst9|current_state.release_state~q\,
	combout => \inst9|clk_en_X~4_combout\);

-- Location: FF_X15_Y19_N15
\inst3|ud_bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	d => \inst3|ud_bin_counter[1]~6_combout\,
	clrn => \inst1|ALT_INV_stages_pb3\(1),
	ena => \inst9|clk_en_X~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ud_bin_counter\(1));

-- Location: LCCOMB_X15_Y19_N16
\inst3|ud_bin_counter[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ud_bin_counter[2]~8_combout\ = ((\inst3|process_0~0_combout\ $ (\inst3|ud_bin_counter\(2) $ (\inst3|ud_bin_counter[1]~7\)))) # (GND)
-- \inst3|ud_bin_counter[2]~9\ = CARRY((\inst3|process_0~0_combout\ & (\inst3|ud_bin_counter\(2) & !\inst3|ud_bin_counter[1]~7\)) # (!\inst3|process_0~0_combout\ & ((\inst3|ud_bin_counter\(2)) # (!\inst3|ud_bin_counter[1]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|process_0~0_combout\,
	datab => \inst3|ud_bin_counter\(2),
	datad => VCC,
	cin => \inst3|ud_bin_counter[1]~7\,
	combout => \inst3|ud_bin_counter[2]~8_combout\,
	cout => \inst3|ud_bin_counter[2]~9\);

-- Location: FF_X15_Y19_N17
\inst3|ud_bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	d => \inst3|ud_bin_counter[2]~8_combout\,
	clrn => \inst1|ALT_INV_stages_pb3\(1),
	ena => \inst9|clk_en_X~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ud_bin_counter\(2));

-- Location: LCCOMB_X14_Y19_N0
\inst7|AGTB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|AGTB~0_combout\ = (\inst3|ud_bin_counter\(3) & (\inst5|reg\(3) & (\inst5|reg\(2) $ (!\inst3|ud_bin_counter\(2))))) # (!\inst3|ud_bin_counter\(3) & (!\inst5|reg\(3) & (\inst5|reg\(2) $ (!\inst3|ud_bin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ud_bin_counter\(3),
	datab => \inst5|reg\(3),
	datac => \inst5|reg\(2),
	datad => \inst3|ud_bin_counter\(2),
	combout => \inst7|AGTB~0_combout\);

-- Location: LCCOMB_X15_Y19_N4
\inst7|AEQB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|AEQB~0_combout\ = (\inst5|reg\(0) & ((\inst3|ud_bin_counter\(1) $ (\inst5|reg\(1))) # (!\inst3|ud_bin_counter\(0)))) # (!\inst5|reg\(0) & ((\inst3|ud_bin_counter\(0)) # (\inst3|ud_bin_counter\(1) $ (\inst5|reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|reg\(0),
	datab => \inst3|ud_bin_counter\(1),
	datac => \inst3|ud_bin_counter\(0),
	datad => \inst5|reg\(1),
	combout => \inst7|AEQB~0_combout\);

-- Location: LCCOMB_X15_Y19_N30
\inst7|AEQB\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|AEQB~combout\ = (\inst7|AEQB~0_combout\) # (!\inst7|AGTB~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|AGTB~0_combout\,
	datad => \inst7|AEQB~0_combout\,
	combout => \inst7|AEQB~combout\);

-- Location: LCCOMB_X14_Y19_N30
\inst9|Decoder_Section~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Decoder_Section~1_combout\ = (!\inst1|stages_pb2\(1) & ((\inst7|AGTB~1_combout\) # ((\inst7|AGTB~0_combout\ & \inst7|AGTB~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|stages_pb2\(1),
	datab => \inst7|AGTB~0_combout\,
	datac => \inst7|AGTB~1_combout\,
	datad => \inst7|AGTB~2_combout\,
	combout => \inst9|Decoder_Section~1_combout\);

-- Location: LCCOMB_X14_Y19_N18
\inst9|up_down_X~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|up_down_X~0_combout\ = (\inst9|current_state.release_state~q\ & (!\inst1|stages_pb2\(1) & ((\inst7|AGTB~3_combout\) # (\inst9|extender_en~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|current_state.release_state~q\,
	datab => \inst7|AGTB~3_combout\,
	datac => \inst1|stages_pb2\(1),
	datad => \inst9|extender_en~1_combout\,
	combout => \inst9|up_down_X~0_combout\);

-- Location: LCCOMB_X14_Y19_N10
\inst9|up_down_X\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|up_down_X~combout\ = (\inst9|up_down_X~0_combout\ & (!\inst9|Decoder_Section~1_combout\)) # (!\inst9|up_down_X~0_combout\ & ((\inst9|up_down_X~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Decoder_Section~1_combout\,
	datac => \inst9|up_down_X~combout\,
	datad => \inst9|up_down_X~0_combout\,
	combout => \inst9|up_down_X~combout\);

-- Location: LCCOMB_X15_Y19_N20
\inst3|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|process_0~0_combout\ = (\inst9|clk_en_Y~4_combout\ & (\inst9|up_down_X~combout\ & ((\inst7|AEQB~combout\) # (\inst7|AGTB~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|AEQB~combout\,
	datab => \inst7|AGTB~3_combout\,
	datac => \inst9|clk_en_Y~4_combout\,
	datad => \inst9|up_down_X~combout\,
	combout => \inst3|process_0~0_combout\);

-- Location: LCCOMB_X15_Y19_N18
\inst3|ud_bin_counter[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|ud_bin_counter[3]~10_combout\ = \inst3|process_0~0_combout\ $ (\inst3|ud_bin_counter\(3) $ (!\inst3|ud_bin_counter[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|process_0~0_combout\,
	datab => \inst3|ud_bin_counter\(3),
	cin => \inst3|ud_bin_counter[2]~9\,
	combout => \inst3|ud_bin_counter[3]~10_combout\);

-- Location: FF_X15_Y19_N19
\inst3|ud_bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	d => \inst3|ud_bin_counter[3]~10_combout\,
	clrn => \inst1|ALT_INV_stages_pb3\(1),
	ena => \inst9|clk_en_X~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|ud_bin_counter\(3));

-- Location: LCCOMB_X14_Y20_N10
\inst7|ALTB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|ALTB~0_combout\ = (\inst3|ud_bin_counter\(3) & (!\inst3|ud_bin_counter\(2) & (\inst5|reg\(2) & \inst5|reg\(3)))) # (!\inst3|ud_bin_counter\(3) & ((\inst5|reg\(3)) # ((!\inst3|ud_bin_counter\(2) & \inst5|reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ud_bin_counter\(3),
	datab => \inst3|ud_bin_counter\(2),
	datac => \inst5|reg\(2),
	datad => \inst5|reg\(3),
	combout => \inst7|ALTB~0_combout\);

-- Location: LCCOMB_X14_Y19_N12
\inst7|ALTB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|ALTB~1_combout\ = (\inst5|reg\(1) & (((!\inst3|ud_bin_counter\(0) & \inst5|reg\(0))) # (!\inst3|ud_bin_counter\(1)))) # (!\inst5|reg\(1) & (!\inst3|ud_bin_counter\(0) & (\inst5|reg\(0) & !\inst3|ud_bin_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ud_bin_counter\(0),
	datab => \inst5|reg\(0),
	datac => \inst5|reg\(1),
	datad => \inst3|ud_bin_counter\(1),
	combout => \inst7|ALTB~1_combout\);

-- Location: LCCOMB_X14_Y20_N16
\inst9|extender_en~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|extender_en~1_combout\ = (\inst7|AGTB~0_combout\ & (\inst7|AEQB~0_combout\ & ((\inst7|ALTB~0_combout\) # (\inst7|ALTB~1_combout\)))) # (!\inst7|AGTB~0_combout\ & (\inst7|ALTB~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ALTB~0_combout\,
	datab => \inst7|AGTB~0_combout\,
	datac => \inst7|ALTB~1_combout\,
	datad => \inst7|AEQB~0_combout\,
	combout => \inst9|extender_en~1_combout\);

-- Location: LCCOMB_X14_Y20_N0
\inst9|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Selector4~0_combout\ = (!\inst9|extender_en~1_combout\ & (!\inst7|AGTB~3_combout\ & !\inst8|AGTB~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|extender_en~1_combout\,
	datac => \inst7|AGTB~3_combout\,
	datad => \inst8|AGTB~3_combout\,
	combout => \inst9|Selector4~0_combout\);

-- Location: LCCOMB_X14_Y20_N2
\inst9|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Selector4~1_combout\ = ((\inst1|stages_pb2\(1)) # ((!\inst9|extender_en~0_combout\ & \inst9|Selector4~0_combout\))) # (!\inst9|current_state.release_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|current_state.release_state~q\,
	datab => \inst9|extender_en~0_combout\,
	datac => \inst1|stages_pb2\(1),
	datad => \inst9|Selector4~0_combout\,
	combout => \inst9|Selector4~1_combout\);

-- Location: LCCOMB_X14_Y20_N28
\inst9|extender_en\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|extender_en~combout\ = (\inst9|Capture_XY~0_combout\ & (\inst9|extender_en~combout\)) # (!\inst9|Capture_XY~0_combout\ & ((\inst9|Selector4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|extender_en~combout\,
	datac => \inst9|Selector4~1_combout\,
	datad => \inst9|Capture_XY~0_combout\,
	combout => \inst9|extender_en~combout\);

-- Location: IOIBUF_X9_Y0_N22
\pb_n[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(1),
	o => \pb_n[1]~input_o\);

-- Location: LCCOMB_X13_Y19_N22
\inst1|stages_pb1[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|stages_pb1[0]~0_combout\ = !\pb_n[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pb_n[1]~input_o\,
	combout => \inst1|stages_pb1[0]~0_combout\);

-- Location: FF_X13_Y19_N23
\inst1|stages_pb1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst1|stages_pb1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|stages_pb1\(0));

-- Location: FF_X13_Y19_N1
\inst1|stages_pb1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	asdata => \inst1|stages_pb1\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|stages_pb1\(1));

-- Location: LCCOMB_X13_Y19_N28
\inst10|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Selector4~0_combout\ = (\inst9|extender_en~combout\ & \inst1|stages_pb1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|extender_en~combout\,
	datad => \inst1|stages_pb1\(1),
	combout => \inst10|Selector4~0_combout\);

-- Location: LCCOMB_X11_Y19_N24
\inst10|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Selector1~0_combout\ = (\inst2|sreg\(0) & (\inst2|sreg\(1) & (\inst2|sreg\(3) & \inst2|sreg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sreg\(0),
	datab => \inst2|sreg\(1),
	datac => \inst2|sreg\(3),
	datad => \inst2|sreg\(2),
	combout => \inst10|Selector1~0_combout\);

-- Location: LCCOMB_X13_Y19_N4
\inst10|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Selector1~1_combout\ = (\inst10|Selector1~0_combout\ & \inst9|extender_en~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Selector1~0_combout\,
	datab => \inst9|extender_en~combout\,
	combout => \inst10|Selector1~1_combout\);

-- Location: LCCOMB_X13_Y19_N20
\inst10|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Selector0~1_combout\ = (\inst10|Selector1~1_combout\ & (\inst10|Selector0~0_combout\ & ((\inst10|current_state.push_extension_state~q\)))) # (!\inst10|Selector1~1_combout\ & ((\inst10|current_state.extend_state~q\) # ((\inst10|Selector0~0_combout\ 
-- & \inst10|current_state.push_extension_state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Selector1~1_combout\,
	datab => \inst10|Selector0~0_combout\,
	datac => \inst10|current_state.extend_state~q\,
	datad => \inst10|current_state.push_extension_state~q\,
	combout => \inst10|Selector0~1_combout\);

-- Location: FF_X13_Y19_N21
\inst10|current_state.extend_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst10|Selector0~1_combout\,
	clrn => \inst1|ALT_INV_stages_pb3\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|current_state.extend_state~q\);

-- Location: LCCOMB_X11_Y19_N4
\inst2|sreg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|sreg~3_combout\ = (\inst2|sreg\(2)) # (\inst10|current_state.extend_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sreg\(2),
	datad => \inst10|current_state.extend_state~q\,
	combout => \inst2|sreg~3_combout\);

-- Location: LCCOMB_X13_Y19_N24
\inst10|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Selector2~0_combout\ = (\inst10|Selector1~0_combout\ & (!\inst1|stages_pb1\(1) & \inst9|extender_en~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Selector1~0_combout\,
	datab => \inst1|stages_pb1\(1),
	datac => \inst9|extender_en~combout\,
	combout => \inst10|Selector2~0_combout\);

-- Location: LCCOMB_X13_Y19_N12
\inst10|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Selector3~1_combout\ = (\inst10|Selector3~0_combout\ & \inst9|extender_en~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Selector3~0_combout\,
	datab => \inst9|extender_en~combout\,
	combout => \inst10|Selector3~1_combout\);

-- Location: LCCOMB_X13_Y19_N30
\inst10|Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Selector1~2_combout\ = (\inst10|Selector1~1_combout\ & ((\inst10|current_state.extend_state~q\) # ((\inst10|current_state.full_extend_state~q\ & !\inst10|Selector4~0_combout\)))) # (!\inst10|Selector1~1_combout\ & 
-- (((\inst10|current_state.full_extend_state~q\ & !\inst10|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Selector1~1_combout\,
	datab => \inst10|current_state.extend_state~q\,
	datac => \inst10|current_state.full_extend_state~q\,
	datad => \inst10|Selector4~0_combout\,
	combout => \inst10|Selector1~2_combout\);

-- Location: FF_X13_Y19_N31
\inst10|current_state.full_extend_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst10|Selector1~2_combout\,
	clrn => \inst1|ALT_INV_stages_pb3\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|current_state.full_extend_state~q\);

-- Location: LCCOMB_X12_Y19_N16
\inst10|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Selector5~0_combout\ = (\inst10|current_state.full_extend_state~q\ & ((\inst10|Selector4~0_combout\) # ((!\inst10|Selector2~0_combout\ & \inst10|current_state.push_retraction_state~q\)))) # (!\inst10|current_state.full_extend_state~q\ & 
-- (!\inst10|Selector2~0_combout\ & (\inst10|current_state.push_retraction_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|current_state.full_extend_state~q\,
	datab => \inst10|Selector2~0_combout\,
	datac => \inst10|current_state.push_retraction_state~q\,
	datad => \inst10|Selector4~0_combout\,
	combout => \inst10|Selector5~0_combout\);

-- Location: FF_X12_Y19_N17
\inst10|current_state.push_retraction_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst10|Selector5~0_combout\,
	clrn => \inst1|ALT_INV_stages_pb3\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|current_state.push_retraction_state~q\);

-- Location: LCCOMB_X13_Y19_N16
\inst10|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Selector2~1_combout\ = (\inst10|Selector2~0_combout\ & ((\inst10|current_state.push_retraction_state~q\) # ((!\inst10|Selector3~1_combout\ & \inst10|current_state.retract_state~q\)))) # (!\inst10|Selector2~0_combout\ & 
-- (!\inst10|Selector3~1_combout\ & (\inst10|current_state.retract_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Selector2~0_combout\,
	datab => \inst10|Selector3~1_combout\,
	datac => \inst10|current_state.retract_state~q\,
	datad => \inst10|current_state.push_retraction_state~q\,
	combout => \inst10|Selector2~1_combout\);

-- Location: FF_X13_Y19_N17
\inst10|current_state.retract_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst10|Selector2~1_combout\,
	clrn => \inst1|ALT_INV_stages_pb3\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|current_state.retract_state~q\);

-- Location: LCCOMB_X12_Y19_N26
\inst10|clk_en\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|clk_en~combout\ = (\inst10|current_state.retract_state~q\) # (\inst10|current_state.extend_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|current_state.retract_state~q\,
	datac => \inst10|current_state.extend_state~q\,
	combout => \inst10|clk_en~combout\);

-- Location: FF_X11_Y19_N5
\inst2|sreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst2|sreg~3_combout\,
	clrn => \inst1|ALT_INV_stages_pb3\(1),
	ena => \inst10|clk_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sreg\(3));

-- Location: LCCOMB_X11_Y19_N10
\inst2|sreg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|sreg~2_combout\ = (\inst10|current_state.extend_state~q\ & (\inst2|sreg\(3))) # (!\inst10|current_state.extend_state~q\ & ((\inst2|sreg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|sreg\(3),
	datac => \inst2|sreg\(1),
	datad => \inst10|current_state.extend_state~q\,
	combout => \inst2|sreg~2_combout\);

-- Location: FF_X11_Y19_N11
\inst2|sreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst2|sreg~2_combout\,
	clrn => \inst1|ALT_INV_stages_pb3\(1),
	ena => \inst10|clk_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sreg\(2));

-- Location: LCCOMB_X11_Y19_N8
\inst2|sreg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|sreg~1_combout\ = (\inst10|current_state.extend_state~q\ & (\inst2|sreg\(2))) # (!\inst10|current_state.extend_state~q\ & ((\inst2|sreg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sreg\(2),
	datac => \inst2|sreg\(0),
	datad => \inst10|current_state.extend_state~q\,
	combout => \inst2|sreg~1_combout\);

-- Location: FF_X11_Y19_N9
\inst2|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst2|sreg~1_combout\,
	clrn => \inst1|ALT_INV_stages_pb3\(1),
	ena => \inst10|clk_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sreg\(1));

-- Location: LCCOMB_X11_Y19_N26
\inst2|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|sreg~0_combout\ = (\inst2|sreg\(1) & \inst10|current_state.extend_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|sreg\(1),
	datad => \inst10|current_state.extend_state~q\,
	combout => \inst2|sreg~0_combout\);

-- Location: FF_X11_Y19_N27
\inst2|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst2|sreg~0_combout\,
	clrn => \inst1|ALT_INV_stages_pb3\(1),
	ena => \inst10|clk_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sreg\(0));

-- Location: LCCOMB_X11_Y19_N16
\inst10|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Selector3~0_combout\ = (!\inst2|sreg\(0) & (!\inst2|sreg\(1) & (!\inst2|sreg\(3) & !\inst2|sreg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sreg\(0),
	datab => \inst2|sreg\(1),
	datac => \inst2|sreg\(3),
	datad => \inst2|sreg\(2),
	combout => \inst10|Selector3~0_combout\);

-- Location: LCCOMB_X13_Y19_N26
\inst10|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Selector0~0_combout\ = (\inst10|Selector3~0_combout\ & (\inst9|extender_en~combout\ & !\inst1|stages_pb1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Selector3~0_combout\,
	datab => \inst9|extender_en~combout\,
	datad => \inst1|stages_pb1\(1),
	combout => \inst10|Selector0~0_combout\);

-- Location: LCCOMB_X13_Y19_N2
\inst10|Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Selector3~2_combout\ = (\inst10|Selector4~0_combout\ & (((!\inst10|current_state.retract_state~q\)) # (!\inst10|Selector3~1_combout\))) # (!\inst10|Selector4~0_combout\ & (\inst10|current_state.full_retract_state~q\ & 
-- ((!\inst10|current_state.retract_state~q\) # (!\inst10|Selector3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Selector4~0_combout\,
	datab => \inst10|Selector3~1_combout\,
	datac => \inst10|current_state.full_retract_state~q\,
	datad => \inst10|current_state.retract_state~q\,
	combout => \inst10|Selector3~2_combout\);

-- Location: FF_X13_Y19_N3
\inst10|current_state.full_retract_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst10|Selector3~2_combout\,
	clrn => \inst1|ALT_INV_stages_pb3\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|current_state.full_retract_state~q\);

-- Location: LCCOMB_X13_Y19_N8
\inst10|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|Selector4~1_combout\ = (\inst10|Selector4~0_combout\ & (((!\inst10|Selector0~0_combout\ & \inst10|current_state.push_extension_state~q\)) # (!\inst10|current_state.full_retract_state~q\))) # (!\inst10|Selector4~0_combout\ & 
-- (!\inst10|Selector0~0_combout\ & (\inst10|current_state.push_extension_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Selector4~0_combout\,
	datab => \inst10|Selector0~0_combout\,
	datac => \inst10|current_state.push_extension_state~q\,
	datad => \inst10|current_state.full_retract_state~q\,
	combout => \inst10|Selector4~1_combout\);

-- Location: FF_X13_Y19_N9
\inst10|current_state.push_extension_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst10|Selector4~1_combout\,
	clrn => \inst1|ALT_INV_stages_pb3\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|current_state.push_extension_state~q\);

-- Location: LCCOMB_X13_Y19_N6
\inst10|extender_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|extender_out~0_combout\ = (\inst10|current_state.push_extension_state~q\) # (!\inst10|current_state.full_retract_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|current_state.push_extension_state~q\,
	datad => \inst10|current_state.full_retract_state~q\,
	combout => \inst10|extender_out~0_combout\);

-- Location: LCCOMB_X13_Y19_N18
\inst9|next_state.flashing_error_state~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|next_state.flashing_error_state~0_combout\ = (\inst10|current_state.full_retract_state~q\ & (\inst9|current_state.error_state~q\ & !\inst10|current_state.push_extension_state~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|current_state.full_retract_state~q\,
	datac => \inst9|current_state.error_state~q\,
	datad => \inst10|current_state.push_extension_state~q\,
	combout => \inst9|next_state.flashing_error_state~0_combout\);

-- Location: FF_X13_Y19_N19
\inst9|current_state.flashing_error_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	d => \inst9|next_state.flashing_error_state~0_combout\,
	clrn => \inst1|ALT_INV_stages_pb3\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|current_state.flashing_error_state~q\);

-- Location: LCCOMB_X15_Y19_N22
\inst9|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Selector0~0_combout\ = (\inst10|extender_out~0_combout\ & (\inst1|stages_pb2\(1) & ((\inst9|current_state.error_state~q\) # (\inst9|current_state.flashing_error_state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|extender_out~0_combout\,
	datab => \inst1|stages_pb2\(1),
	datac => \inst9|current_state.error_state~q\,
	datad => \inst9|current_state.flashing_error_state~q\,
	combout => \inst9|Selector0~0_combout\);

-- Location: LCCOMB_X14_Y19_N24
\inst9|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Selector1~0_combout\ = (\inst9|Selector2~2_combout\ & ((\inst10|extender_out~0_combout\) # ((!\inst7|AEQB~combout\ & !\inst8|AEQB~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|AEQB~combout\,
	datab => \inst8|AEQB~combout\,
	datac => \inst10|extender_out~0_combout\,
	datad => \inst9|Selector2~2_combout\,
	combout => \inst9|Selector1~0_combout\);

-- Location: LCCOMB_X13_Y19_N14
\inst9|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Selector0~1_combout\ = (\inst9|Selector0~0_combout\) # ((\inst1|stages_pb2\(1) & ((\inst9|Selector1~0_combout\) # (!\inst9|current_state.original_state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|current_state.original_state~q\,
	datab => \inst9|Selector0~0_combout\,
	datac => \inst1|stages_pb2\(1),
	datad => \inst9|Selector1~0_combout\,
	combout => \inst9|Selector0~1_combout\);

-- Location: FF_X13_Y19_N15
\inst9|current_state.press_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst9|Selector0~1_combout\,
	clrn => \inst1|ALT_INV_stages_pb3\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|current_state.press_state~q\);

-- Location: LCCOMB_X14_Y19_N8
\inst9|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Selector2~2_combout\ = (\inst9|current_state.release_state~q\) # (\inst9|current_state.press_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|current_state.release_state~q\,
	datad => \inst9|current_state.press_state~q\,
	combout => \inst9|Selector2~2_combout\);

-- Location: LCCOMB_X14_Y19_N16
\inst9|Selector2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Selector2~3_combout\ = (\inst9|Selector2~2_combout\ & (!\inst10|extender_out~0_combout\ & ((\inst7|AEQB~combout\) # (\inst8|AEQB~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Selector2~2_combout\,
	datab => \inst7|AEQB~combout\,
	datac => \inst10|extender_out~0_combout\,
	datad => \inst8|AEQB~combout\,
	combout => \inst9|Selector2~3_combout\);

-- Location: LCCOMB_X13_Y19_N10
\inst9|Selector2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Selector2~4_combout\ = (\inst9|Selector2~3_combout\) # ((\inst10|current_state.full_retract_state~q\ & (!\inst10|current_state.push_extension_state~q\ & \inst9|current_state.flashing_error_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Selector2~3_combout\,
	datab => \inst10|current_state.full_retract_state~q\,
	datac => \inst10|current_state.push_extension_state~q\,
	datad => \inst9|current_state.flashing_error_state~q\,
	combout => \inst9|Selector2~4_combout\);

-- Location: FF_X13_Y19_N11
\inst9|current_state.error_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst9|Selector2~4_combout\,
	clrn => \inst1|ALT_INV_stages_pb3\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|current_state.error_state~q\);

-- Location: LCCOMB_X13_Y19_N0
\inst9|Capture_XY~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Capture_XY~0_combout\ = (\inst9|current_state.error_state~q\) # (\inst9|current_state.flashing_error_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|current_state.error_state~q\,
	datad => \inst9|current_state.flashing_error_state~q\,
	combout => \inst9|Capture_XY~0_combout\);

-- Location: LCCOMB_X14_Y19_N22
\inst9|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Selector1~1_combout\ = (!\inst1|stages_pb2\(1) & ((\inst9|Selector1~0_combout\) # ((\inst9|Capture_XY~0_combout\ & \inst10|extender_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|stages_pb2\(1),
	datab => \inst9|Capture_XY~0_combout\,
	datac => \inst10|extender_out~0_combout\,
	datad => \inst9|Selector1~0_combout\,
	combout => \inst9|Selector1~1_combout\);

-- Location: FF_X14_Y19_N23
\inst9|current_state.release_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	d => \inst9|Selector1~1_combout\,
	clrn => \inst1|ALT_INV_stages_pb3\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|current_state.release_state~q\);

-- Location: LCCOMB_X14_Y19_N20
\inst9|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Selector3~0_combout\ = (\inst9|current_state.release_state~q\) # (\inst9|current_state.flashing_error_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|current_state.release_state~q\,
	datad => \inst9|current_state.flashing_error_state~q\,
	combout => \inst9|Selector3~0_combout\);

-- Location: LCCOMB_X14_Y19_N26
\inst9|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Selector3~1_combout\ = (\inst9|current_state.press_state~q\) # ((\inst1|stages_pb2\(1) & ((\inst9|Selector3~0_combout\) # (\inst9|current_state.error_state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|stages_pb2\(1),
	datab => \inst9|Selector3~0_combout\,
	datac => \inst9|current_state.error_state~q\,
	datad => \inst9|current_state.press_state~q\,
	combout => \inst9|Selector3~1_combout\);

-- Location: FF_X15_Y20_N27
\inst6|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	d => \inst6|reg[0]~feeder_combout\,
	clrn => \inst1|ALT_INV_stages_pb3\(1),
	ena => \inst9|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|reg\(0));

-- Location: LCCOMB_X15_Y20_N0
\inst8|AGTB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|AGTB~2_combout\ = (\inst6|reg\(1) & (!\inst6|reg\(0) & (\inst4|ud_bin_counter\(0) & \inst4|ud_bin_counter\(1)))) # (!\inst6|reg\(1) & ((\inst4|ud_bin_counter\(1)) # ((!\inst6|reg\(0) & \inst4|ud_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|reg\(0),
	datab => \inst4|ud_bin_counter\(0),
	datac => \inst6|reg\(1),
	datad => \inst4|ud_bin_counter\(1),
	combout => \inst8|AGTB~2_combout\);

-- Location: LCCOMB_X15_Y20_N18
\inst8|AGTB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|AGTB~1_combout\ = (\inst6|reg\(3) & (!\inst6|reg\(2) & (\inst4|ud_bin_counter\(3) & \inst4|ud_bin_counter\(2)))) # (!\inst6|reg\(3) & ((\inst4|ud_bin_counter\(3)) # ((!\inst6|reg\(2) & \inst4|ud_bin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|reg\(2),
	datab => \inst6|reg\(3),
	datac => \inst4|ud_bin_counter\(3),
	datad => \inst4|ud_bin_counter\(2),
	combout => \inst8|AGTB~1_combout\);

-- Location: LCCOMB_X14_Y20_N12
\inst8|AGTB~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|AGTB~3_combout\ = (\inst8|AGTB~1_combout\) # ((\inst8|AGTB~2_combout\ & \inst8|AGTB~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|AGTB~2_combout\,
	datac => \inst8|AGTB~0_combout\,
	datad => \inst8|AGTB~1_combout\,
	combout => \inst8|AGTB~3_combout\);

-- Location: LCCOMB_X15_Y20_N2
\inst9|Decoder_Section~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|Decoder_Section~0_combout\ = (!\inst1|stages_pb2\(1) & ((\inst8|AGTB~1_combout\) # ((\inst8|AGTB~2_combout\ & \inst8|AGTB~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|stages_pb2\(1),
	datab => \inst8|AGTB~2_combout\,
	datac => \inst8|AGTB~0_combout\,
	datad => \inst8|AGTB~1_combout\,
	combout => \inst9|Decoder_Section~0_combout\);

-- Location: LCCOMB_X15_Y20_N28
\inst9|up_down_Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|up_down_Y~0_combout\ = (!\inst1|stages_pb2\(1) & (\inst9|current_state.release_state~q\ & ((\inst9|extender_en~0_combout\) # (\inst8|AGTB~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|stages_pb2\(1),
	datab => \inst9|extender_en~0_combout\,
	datac => \inst9|current_state.release_state~q\,
	datad => \inst8|AGTB~3_combout\,
	combout => \inst9|up_down_Y~0_combout\);

-- Location: LCCOMB_X15_Y20_N12
\inst9|up_down_Y\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|up_down_Y~combout\ = (\inst9|up_down_Y~0_combout\ & (!\inst9|Decoder_Section~0_combout\)) # (!\inst9|up_down_Y~0_combout\ & ((\inst9|up_down_Y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Decoder_Section~0_combout\,
	datac => \inst9|up_down_Y~combout\,
	datad => \inst9|up_down_Y~0_combout\,
	combout => \inst9|up_down_Y~combout\);

-- Location: LCCOMB_X14_Y20_N4
\inst4|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|process_0~0_combout\ = (\inst9|up_down_Y~combout\ & (\inst9|clk_en_Y~4_combout\ & ((\inst8|AGTB~3_combout\) # (\inst8|AEQB~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|AGTB~3_combout\,
	datab => \inst9|up_down_Y~combout\,
	datac => \inst9|clk_en_Y~4_combout\,
	datad => \inst8|AEQB~combout\,
	combout => \inst4|process_0~0_combout\);

-- Location: LCCOMB_X14_Y20_N26
\inst4|ud_bin_counter[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|ud_bin_counter[3]~10_combout\ = \inst4|ud_bin_counter\(3) $ (\inst4|ud_bin_counter[2]~9\ $ (!\inst4|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ud_bin_counter\(3),
	datad => \inst4|process_0~0_combout\,
	cin => \inst4|ud_bin_counter[2]~9\,
	combout => \inst4|ud_bin_counter[3]~10_combout\);

-- Location: FF_X14_Y20_N27
\inst4|ud_bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~q\,
	d => \inst4|ud_bin_counter[3]~10_combout\,
	clrn => \inst1|ALT_INV_stages_pb3\(1),
	ena => \inst9|clk_en_Y~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|ud_bin_counter\(3));

-- Location: LCCOMB_X14_Y17_N12
\inst13|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|Mux5~0_combout\ = (\inst4|ud_bin_counter\(3) & ((\inst4|ud_bin_counter\(0) & (\inst4|ud_bin_counter\(1))) # (!\inst4|ud_bin_counter\(0) & ((\inst4|ud_bin_counter\(2)))))) # (!\inst4|ud_bin_counter\(3) & (\inst4|ud_bin_counter\(2) & 
-- (\inst4|ud_bin_counter\(1) $ (\inst4|ud_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ud_bin_counter\(3),
	datab => \inst4|ud_bin_counter\(1),
	datac => \inst4|ud_bin_counter\(0),
	datad => \inst4|ud_bin_counter\(2),
	combout => \inst13|Mux5~0_combout\);

-- Location: LCCOMB_X14_Y17_N26
\inst12|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|Mux5~0_combout\ = (\inst3|ud_bin_counter\(1) & ((\inst3|ud_bin_counter\(0) & ((\inst3|ud_bin_counter\(3)))) # (!\inst3|ud_bin_counter\(0) & (\inst3|ud_bin_counter\(2))))) # (!\inst3|ud_bin_counter\(1) & (\inst3|ud_bin_counter\(2) & 
-- (\inst3|ud_bin_counter\(0) $ (\inst3|ud_bin_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ud_bin_counter\(0),
	datab => \inst3|ud_bin_counter\(1),
	datac => \inst3|ud_bin_counter\(2),
	datad => \inst3|ud_bin_counter\(3),
	combout => \inst12|Mux5~0_combout\);

-- Location: LCCOMB_X17_Y20_N0
\inst14|clk_proc:COUNT[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|clk_proc:COUNT[1]~1_combout\ = (\inst14|clk_proc:COUNT[0]~q\ & (\inst14|clk_proc:COUNT[1]~q\ $ (VCC))) # (!\inst14|clk_proc:COUNT[0]~q\ & (\inst14|clk_proc:COUNT[1]~q\ & VCC))
-- \inst14|clk_proc:COUNT[1]~2\ = CARRY((\inst14|clk_proc:COUNT[0]~q\ & \inst14|clk_proc:COUNT[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|clk_proc:COUNT[0]~q\,
	datab => \inst14|clk_proc:COUNT[1]~q\,
	datad => VCC,
	combout => \inst14|clk_proc:COUNT[1]~1_combout\,
	cout => \inst14|clk_proc:COUNT[1]~2\);

-- Location: FF_X17_Y20_N1
\inst14|clk_proc:COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \inst14|clk_proc:COUNT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|clk_proc:COUNT[1]~q\);

-- Location: LCCOMB_X17_Y20_N2
\inst14|clk_proc:COUNT[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|clk_proc:COUNT[2]~1_combout\ = (\inst14|clk_proc:COUNT[2]~q\ & (!\inst14|clk_proc:COUNT[1]~2\)) # (!\inst14|clk_proc:COUNT[2]~q\ & ((\inst14|clk_proc:COUNT[1]~2\) # (GND)))
-- \inst14|clk_proc:COUNT[2]~2\ = CARRY((!\inst14|clk_proc:COUNT[1]~2\) # (!\inst14|clk_proc:COUNT[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|clk_proc:COUNT[2]~q\,
	datad => VCC,
	cin => \inst14|clk_proc:COUNT[1]~2\,
	combout => \inst14|clk_proc:COUNT[2]~1_combout\,
	cout => \inst14|clk_proc:COUNT[2]~2\);

-- Location: FF_X17_Y20_N3
\inst14|clk_proc:COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \inst14|clk_proc:COUNT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|clk_proc:COUNT[2]~q\);

-- Location: LCCOMB_X17_Y20_N4
\inst14|clk_proc:COUNT[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|clk_proc:COUNT[3]~1_combout\ = (\inst14|clk_proc:COUNT[3]~q\ & (\inst14|clk_proc:COUNT[2]~2\ $ (GND))) # (!\inst14|clk_proc:COUNT[3]~q\ & (!\inst14|clk_proc:COUNT[2]~2\ & VCC))
-- \inst14|clk_proc:COUNT[3]~2\ = CARRY((\inst14|clk_proc:COUNT[3]~q\ & !\inst14|clk_proc:COUNT[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|clk_proc:COUNT[3]~q\,
	datad => VCC,
	cin => \inst14|clk_proc:COUNT[2]~2\,
	combout => \inst14|clk_proc:COUNT[3]~1_combout\,
	cout => \inst14|clk_proc:COUNT[3]~2\);

-- Location: FF_X17_Y20_N5
\inst14|clk_proc:COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \inst14|clk_proc:COUNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|clk_proc:COUNT[3]~q\);

-- Location: LCCOMB_X17_Y20_N6
\inst14|clk_proc:COUNT[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|clk_proc:COUNT[4]~1_combout\ = (\inst14|clk_proc:COUNT[4]~q\ & (!\inst14|clk_proc:COUNT[3]~2\)) # (!\inst14|clk_proc:COUNT[4]~q\ & ((\inst14|clk_proc:COUNT[3]~2\) # (GND)))
-- \inst14|clk_proc:COUNT[4]~2\ = CARRY((!\inst14|clk_proc:COUNT[3]~2\) # (!\inst14|clk_proc:COUNT[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|clk_proc:COUNT[4]~q\,
	datad => VCC,
	cin => \inst14|clk_proc:COUNT[3]~2\,
	combout => \inst14|clk_proc:COUNT[4]~1_combout\,
	cout => \inst14|clk_proc:COUNT[4]~2\);

-- Location: FF_X17_Y20_N7
\inst14|clk_proc:COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \inst14|clk_proc:COUNT[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|clk_proc:COUNT[4]~q\);

-- Location: LCCOMB_X17_Y20_N8
\inst14|clk_proc:COUNT[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|clk_proc:COUNT[5]~1_combout\ = (\inst14|clk_proc:COUNT[5]~q\ & (\inst14|clk_proc:COUNT[4]~2\ $ (GND))) # (!\inst14|clk_proc:COUNT[5]~q\ & (!\inst14|clk_proc:COUNT[4]~2\ & VCC))
-- \inst14|clk_proc:COUNT[5]~2\ = CARRY((\inst14|clk_proc:COUNT[5]~q\ & !\inst14|clk_proc:COUNT[4]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|clk_proc:COUNT[5]~q\,
	datad => VCC,
	cin => \inst14|clk_proc:COUNT[4]~2\,
	combout => \inst14|clk_proc:COUNT[5]~1_combout\,
	cout => \inst14|clk_proc:COUNT[5]~2\);

-- Location: FF_X17_Y20_N9
\inst14|clk_proc:COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \inst14|clk_proc:COUNT[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|clk_proc:COUNT[5]~q\);

-- Location: LCCOMB_X17_Y20_N10
\inst14|clk_proc:COUNT[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|clk_proc:COUNT[6]~1_combout\ = (\inst14|clk_proc:COUNT[6]~q\ & (!\inst14|clk_proc:COUNT[5]~2\)) # (!\inst14|clk_proc:COUNT[6]~q\ & ((\inst14|clk_proc:COUNT[5]~2\) # (GND)))
-- \inst14|clk_proc:COUNT[6]~2\ = CARRY((!\inst14|clk_proc:COUNT[5]~2\) # (!\inst14|clk_proc:COUNT[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|clk_proc:COUNT[6]~q\,
	datad => VCC,
	cin => \inst14|clk_proc:COUNT[5]~2\,
	combout => \inst14|clk_proc:COUNT[6]~1_combout\,
	cout => \inst14|clk_proc:COUNT[6]~2\);

-- Location: FF_X17_Y20_N11
\inst14|clk_proc:COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \inst14|clk_proc:COUNT[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|clk_proc:COUNT[6]~q\);

-- Location: LCCOMB_X17_Y20_N12
\inst14|clk_proc:COUNT[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|clk_proc:COUNT[7]~1_combout\ = (\inst14|clk_proc:COUNT[7]~q\ & (\inst14|clk_proc:COUNT[6]~2\ $ (GND))) # (!\inst14|clk_proc:COUNT[7]~q\ & (!\inst14|clk_proc:COUNT[6]~2\ & VCC))
-- \inst14|clk_proc:COUNT[7]~2\ = CARRY((\inst14|clk_proc:COUNT[7]~q\ & !\inst14|clk_proc:COUNT[6]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|clk_proc:COUNT[7]~q\,
	datad => VCC,
	cin => \inst14|clk_proc:COUNT[6]~2\,
	combout => \inst14|clk_proc:COUNT[7]~1_combout\,
	cout => \inst14|clk_proc:COUNT[7]~2\);

-- Location: FF_X17_Y20_N13
\inst14|clk_proc:COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \inst14|clk_proc:COUNT[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|clk_proc:COUNT[7]~q\);

-- Location: LCCOMB_X17_Y20_N14
\inst14|clk_proc:COUNT[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|clk_proc:COUNT[8]~1_combout\ = (\inst14|clk_proc:COUNT[8]~q\ & (!\inst14|clk_proc:COUNT[7]~2\)) # (!\inst14|clk_proc:COUNT[8]~q\ & ((\inst14|clk_proc:COUNT[7]~2\) # (GND)))
-- \inst14|clk_proc:COUNT[8]~2\ = CARRY((!\inst14|clk_proc:COUNT[7]~2\) # (!\inst14|clk_proc:COUNT[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|clk_proc:COUNT[8]~q\,
	datad => VCC,
	cin => \inst14|clk_proc:COUNT[7]~2\,
	combout => \inst14|clk_proc:COUNT[8]~1_combout\,
	cout => \inst14|clk_proc:COUNT[8]~2\);

-- Location: FF_X17_Y20_N15
\inst14|clk_proc:COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \inst14|clk_proc:COUNT[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|clk_proc:COUNT[8]~q\);

-- Location: LCCOMB_X17_Y20_N16
\inst14|clk_proc:COUNT[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|clk_proc:COUNT[9]~1_combout\ = (\inst14|clk_proc:COUNT[9]~q\ & (\inst14|clk_proc:COUNT[8]~2\ $ (GND))) # (!\inst14|clk_proc:COUNT[9]~q\ & (!\inst14|clk_proc:COUNT[8]~2\ & VCC))
-- \inst14|clk_proc:COUNT[9]~2\ = CARRY((\inst14|clk_proc:COUNT[9]~q\ & !\inst14|clk_proc:COUNT[8]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|clk_proc:COUNT[9]~q\,
	datad => VCC,
	cin => \inst14|clk_proc:COUNT[8]~2\,
	combout => \inst14|clk_proc:COUNT[9]~1_combout\,
	cout => \inst14|clk_proc:COUNT[9]~2\);

-- Location: FF_X17_Y20_N17
\inst14|clk_proc:COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \inst14|clk_proc:COUNT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|clk_proc:COUNT[9]~q\);

-- Location: LCCOMB_X17_Y20_N18
\inst14|clk_proc:COUNT[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|clk_proc:COUNT[10]~1_combout\ = \inst14|clk_proc:COUNT[9]~2\ $ (\inst14|clk_proc:COUNT[10]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst14|clk_proc:COUNT[10]~q\,
	cin => \inst14|clk_proc:COUNT[9]~2\,
	combout => \inst14|clk_proc:COUNT[10]~1_combout\);

-- Location: FF_X17_Y20_N19
\inst14|clk_proc:COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clkin_50~inputclkctrl_outclk\,
	d => \inst14|clk_proc:COUNT[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|clk_proc:COUNT[10]~q\);

-- Location: LCCOMB_X14_Y17_N24
\inst14|DOUT_TEMP[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|DOUT_TEMP[1]~0_combout\ = (\inst14|clk_proc:COUNT[10]~q\ & (!\inst13|Mux5~0_combout\)) # (!\inst14|clk_proc:COUNT[10]~q\ & ((!\inst12|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mux5~0_combout\,
	datac => \inst12|Mux5~0_combout\,
	datad => \inst14|clk_proc:COUNT[10]~q\,
	combout => \inst14|DOUT_TEMP[1]~0_combout\);

-- Location: LCCOMB_X15_Y17_N2
\inst12|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|Mux1~0_combout\ = (\inst3|ud_bin_counter\(2) & ((\inst3|ud_bin_counter\(1) & (!\inst3|ud_bin_counter\(3) & \inst3|ud_bin_counter\(0))) # (!\inst3|ud_bin_counter\(1) & (\inst3|ud_bin_counter\(3))))) # (!\inst3|ud_bin_counter\(2) & 
-- (!\inst3|ud_bin_counter\(3) & ((\inst3|ud_bin_counter\(1)) # (\inst3|ud_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ud_bin_counter\(2),
	datab => \inst3|ud_bin_counter\(1),
	datac => \inst3|ud_bin_counter\(3),
	datad => \inst3|ud_bin_counter\(0),
	combout => \inst12|Mux1~0_combout\);

-- Location: LCCOMB_X14_Y17_N22
\inst13|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|Mux1~0_combout\ = (\inst4|ud_bin_counter\(3) & (!\inst4|ud_bin_counter\(1) & ((\inst4|ud_bin_counter\(2))))) # (!\inst4|ud_bin_counter\(3) & ((\inst4|ud_bin_counter\(1) & ((\inst4|ud_bin_counter\(0)) # (!\inst4|ud_bin_counter\(2)))) # 
-- (!\inst4|ud_bin_counter\(1) & (\inst4|ud_bin_counter\(0) & !\inst4|ud_bin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ud_bin_counter\(3),
	datab => \inst4|ud_bin_counter\(1),
	datac => \inst4|ud_bin_counter\(0),
	datad => \inst4|ud_bin_counter\(2),
	combout => \inst13|Mux1~0_combout\);

-- Location: LCCOMB_X14_Y17_N28
\inst14|DOUT_TEMP[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|DOUT_TEMP[5]~1_combout\ = (\inst14|clk_proc:COUNT[10]~q\ & ((!\inst13|Mux1~0_combout\))) # (!\inst14|clk_proc:COUNT[10]~q\ & (!\inst12|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Mux1~0_combout\,
	datac => \inst13|Mux1~0_combout\,
	datad => \inst14|clk_proc:COUNT[10]~q\,
	combout => \inst14|DOUT_TEMP[5]~1_combout\);

-- Location: LCCOMB_X15_Y19_N24
\inst12|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|Mux0~0_combout\ = (\inst3|ud_bin_counter\(3)) # ((\inst3|ud_bin_counter\(1) & ((!\inst3|ud_bin_counter\(2)) # (!\inst3|ud_bin_counter\(0)))) # (!\inst3|ud_bin_counter\(1) & ((\inst3|ud_bin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ud_bin_counter\(1),
	datab => \inst3|ud_bin_counter\(3),
	datac => \inst3|ud_bin_counter\(0),
	datad => \inst3|ud_bin_counter\(2),
	combout => \inst12|Mux0~0_combout\);

-- Location: LCCOMB_X14_Y17_N14
\inst13|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|Mux0~0_combout\ = (\inst4|ud_bin_counter\(3)) # ((\inst4|ud_bin_counter\(1) & ((!\inst4|ud_bin_counter\(2)) # (!\inst4|ud_bin_counter\(0)))) # (!\inst4|ud_bin_counter\(1) & ((\inst4|ud_bin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ud_bin_counter\(3),
	datab => \inst4|ud_bin_counter\(1),
	datac => \inst4|ud_bin_counter\(0),
	datad => \inst4|ud_bin_counter\(2),
	combout => \inst13|Mux0~0_combout\);

-- Location: LCCOMB_X14_Y17_N20
\inst14|DOUT_TEMP[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|DOUT_TEMP[6]~2_combout\ = (\inst14|clk_proc:COUNT[10]~q\ & ((\inst13|Mux0~0_combout\))) # (!\inst14|clk_proc:COUNT[10]~q\ & (\inst12|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Mux0~0_combout\,
	datac => \inst13|Mux0~0_combout\,
	datad => \inst14|clk_proc:COUNT[10]~q\,
	combout => \inst14|DOUT_TEMP[6]~2_combout\);

-- Location: IOIBUF_X9_Y0_N1
\pb_n[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(0),
	o => \pb_n[0]~input_o\);

-- Location: LCCOMB_X11_Y19_N18
\inst1|stages_pb0[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|stages_pb0[0]~0_combout\ = !\pb_n[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pb_n[0]~input_o\,
	combout => \inst1|stages_pb0[0]~0_combout\);

-- Location: FF_X11_Y19_N19
\inst1|stages_pb0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst1|stages_pb0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|stages_pb0\(0));

-- Location: FF_X11_Y19_N15
\inst1|stages_pb0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	asdata => \inst1|stages_pb0\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|stages_pb0\(1));

-- Location: LCCOMB_X11_Y19_N28
\inst11|Transition_Section~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Transition_Section~0_combout\ = (\inst1|stages_pb0\(1) & ((\inst10|current_state.push_retraction_state~q\) # (\inst10|current_state.full_extend_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|current_state.push_retraction_state~q\,
	datac => \inst1|stages_pb0\(1),
	datad => \inst10|current_state.full_extend_state~q\,
	combout => \inst11|Transition_Section~0_combout\);

-- Location: LCCOMB_X11_Y19_N14
\inst11|Transition_Section~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Transition_Section~1_combout\ = (!\inst1|stages_pb0\(1) & ((\inst10|current_state.push_retraction_state~q\) # (\inst10|current_state.full_extend_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|current_state.push_retraction_state~q\,
	datac => \inst1|stages_pb0\(1),
	datad => \inst10|current_state.full_extend_state~q\,
	combout => \inst11|Transition_Section~1_combout\);

-- Location: LCCOMB_X11_Y19_N12
\inst11|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Selector0~0_combout\ = (\inst11|current_state.release_close_state~q\ & ((\inst11|Transition_Section~0_combout\) # ((\inst11|current_state.press_open_state~q\ & !\inst11|Transition_Section~1_combout\)))) # 
-- (!\inst11|current_state.release_close_state~q\ & (((\inst11|current_state.press_open_state~q\ & !\inst11|Transition_Section~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|current_state.release_close_state~q\,
	datab => \inst11|Transition_Section~0_combout\,
	datac => \inst11|current_state.press_open_state~q\,
	datad => \inst11|Transition_Section~1_combout\,
	combout => \inst11|Selector0~0_combout\);

-- Location: FF_X11_Y19_N13
\inst11|current_state.press_open_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst11|Selector0~0_combout\,
	clrn => \inst1|ALT_INV_stages_pb3\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|current_state.press_open_state~q\);

-- Location: LCCOMB_X11_Y19_N6
\inst11|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Selector2~0_combout\ = (\inst11|current_state.press_open_state~q\ & (!\inst11|Transition_Section~1_combout\ & ((\inst11|Transition_Section~0_combout\) # (\inst11|current_state.release_open_state~q\)))) # (!\inst11|current_state.press_open_state~q\ 
-- & ((\inst11|Transition_Section~0_combout\) # ((\inst11|current_state.release_open_state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|current_state.press_open_state~q\,
	datab => \inst11|Transition_Section~0_combout\,
	datac => \inst11|current_state.release_open_state~q\,
	datad => \inst11|Transition_Section~1_combout\,
	combout => \inst11|Selector2~0_combout\);

-- Location: FF_X11_Y19_N7
\inst11|current_state.release_open_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst11|Selector2~0_combout\,
	clrn => \inst1|ALT_INV_stages_pb3\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|current_state.release_open_state~q\);

-- Location: LCCOMB_X11_Y19_N22
\inst11|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Selector1~0_combout\ = (\inst11|current_state.release_open_state~q\ & (((\inst11|current_state.press_close_state~q\ & !\inst11|Transition_Section~1_combout\)))) # (!\inst11|current_state.release_open_state~q\ & 
-- ((\inst11|Transition_Section~0_combout\) # ((\inst11|current_state.press_close_state~q\ & !\inst11|Transition_Section~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|current_state.release_open_state~q\,
	datab => \inst11|Transition_Section~0_combout\,
	datac => \inst11|current_state.press_close_state~q\,
	datad => \inst11|Transition_Section~1_combout\,
	combout => \inst11|Selector1~0_combout\);

-- Location: FF_X11_Y19_N23
\inst11|current_state.press_close_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst11|Selector1~0_combout\,
	clrn => \inst1|ALT_INV_stages_pb3\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|current_state.press_close_state~q\);

-- Location: LCCOMB_X11_Y19_N30
\inst11|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Selector3~0_combout\ = (\inst11|current_state.press_close_state~q\ & ((\inst11|Transition_Section~1_combout\) # ((!\inst11|Transition_Section~0_combout\ & \inst11|current_state.release_close_state~q\)))) # 
-- (!\inst11|current_state.press_close_state~q\ & (!\inst11|Transition_Section~0_combout\ & (\inst11|current_state.release_close_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|current_state.press_close_state~q\,
	datab => \inst11|Transition_Section~0_combout\,
	datac => \inst11|current_state.release_close_state~q\,
	datad => \inst11|Transition_Section~1_combout\,
	combout => \inst11|Selector3~0_combout\);

-- Location: FF_X11_Y19_N31
\inst11|current_state.release_close_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst11|Selector3~0_combout\,
	clrn => \inst1|ALT_INV_stages_pb3\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|current_state.release_close_state~q\);

-- Location: LCCOMB_X11_Y19_N20
\inst11|grappler_on\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|grappler_on~combout\ = (\inst11|current_state.release_close_state~q\) # (\inst11|current_state.press_open_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|current_state.release_close_state~q\,
	datad => \inst11|current_state.press_open_state~q\,
	combout => \inst11|grappler_on~combout\);

-- Location: LCCOMB_X14_Y17_N16
\inst13|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|Mux6~0_combout\ = (\inst4|ud_bin_counter\(1) & (\inst4|ud_bin_counter\(3) & (\inst4|ud_bin_counter\(0) & !\inst4|ud_bin_counter\(2)))) # (!\inst4|ud_bin_counter\(1) & (\inst4|ud_bin_counter\(2) $ (((!\inst4|ud_bin_counter\(3) & 
-- \inst4|ud_bin_counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ud_bin_counter\(3),
	datab => \inst4|ud_bin_counter\(1),
	datac => \inst4|ud_bin_counter\(0),
	datad => \inst4|ud_bin_counter\(2),
	combout => \inst13|Mux6~0_combout\);

-- Location: LCCOMB_X14_Y17_N30
\inst12|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|Mux6~0_combout\ = (\inst3|ud_bin_counter\(1) & (\inst3|ud_bin_counter\(0) & (!\inst3|ud_bin_counter\(2) & \inst3|ud_bin_counter\(3)))) # (!\inst3|ud_bin_counter\(1) & (\inst3|ud_bin_counter\(2) $ (((\inst3|ud_bin_counter\(0) & 
-- !\inst3|ud_bin_counter\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ud_bin_counter\(0),
	datab => \inst3|ud_bin_counter\(1),
	datac => \inst3|ud_bin_counter\(2),
	datad => \inst3|ud_bin_counter\(3),
	combout => \inst12|Mux6~0_combout\);

-- Location: LCCOMB_X14_Y17_N0
\inst14|DOUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|DOUT[0]~0_combout\ = (\inst14|clk_proc:COUNT[10]~q\ & (\inst13|Mux6~0_combout\)) # (!\inst14|clk_proc:COUNT[10]~q\ & ((\inst12|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Mux6~0_combout\,
	datac => \inst12|Mux6~0_combout\,
	datad => \inst14|clk_proc:COUNT[10]~q\,
	combout => \inst14|DOUT[0]~0_combout\);

-- Location: LCCOMB_X14_Y17_N10
\inst13|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|Mux4~0_combout\ = (\inst4|ud_bin_counter\(3) & (\inst4|ud_bin_counter\(2) & ((\inst4|ud_bin_counter\(1)) # (!\inst4|ud_bin_counter\(0))))) # (!\inst4|ud_bin_counter\(3) & (\inst4|ud_bin_counter\(1) & (!\inst4|ud_bin_counter\(0) & 
-- !\inst4|ud_bin_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ud_bin_counter\(3),
	datab => \inst4|ud_bin_counter\(1),
	datac => \inst4|ud_bin_counter\(0),
	datad => \inst4|ud_bin_counter\(2),
	combout => \inst13|Mux4~0_combout\);

-- Location: LCCOMB_X15_Y17_N24
\inst12|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|Mux4~0_combout\ = (\inst3|ud_bin_counter\(2) & (\inst3|ud_bin_counter\(3) & ((\inst3|ud_bin_counter\(1)) # (!\inst3|ud_bin_counter\(0))))) # (!\inst3|ud_bin_counter\(2) & (\inst3|ud_bin_counter\(1) & (!\inst3|ud_bin_counter\(3) & 
-- !\inst3|ud_bin_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ud_bin_counter\(2),
	datab => \inst3|ud_bin_counter\(1),
	datac => \inst3|ud_bin_counter\(3),
	datad => \inst3|ud_bin_counter\(0),
	combout => \inst12|Mux4~0_combout\);

-- Location: LCCOMB_X14_Y17_N4
\inst14|DOUT[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|DOUT[2]~2_combout\ = (\inst14|clk_proc:COUNT[10]~q\ & (\inst13|Mux4~0_combout\)) # (!\inst14|clk_proc:COUNT[10]~q\ & ((\inst12|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Mux4~0_combout\,
	datab => \inst12|Mux4~0_combout\,
	datad => \inst14|clk_proc:COUNT[10]~q\,
	combout => \inst14|DOUT[2]~2_combout\);

-- Location: LCCOMB_X15_Y19_N26
\inst12|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|Mux3~0_combout\ = (\inst3|ud_bin_counter\(1) & ((\inst3|ud_bin_counter\(0) & ((\inst3|ud_bin_counter\(2)))) # (!\inst3|ud_bin_counter\(0) & (\inst3|ud_bin_counter\(3) & !\inst3|ud_bin_counter\(2))))) # (!\inst3|ud_bin_counter\(1) & 
-- (!\inst3|ud_bin_counter\(3) & (\inst3|ud_bin_counter\(0) $ (\inst3|ud_bin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ud_bin_counter\(1),
	datab => \inst3|ud_bin_counter\(3),
	datac => \inst3|ud_bin_counter\(0),
	datad => \inst3|ud_bin_counter\(2),
	combout => \inst12|Mux3~0_combout\);

-- Location: LCCOMB_X14_Y17_N2
\inst13|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|Mux3~0_combout\ = (\inst4|ud_bin_counter\(1) & ((\inst4|ud_bin_counter\(0) & ((\inst4|ud_bin_counter\(2)))) # (!\inst4|ud_bin_counter\(0) & (\inst4|ud_bin_counter\(3) & !\inst4|ud_bin_counter\(2))))) # (!\inst4|ud_bin_counter\(1) & 
-- (!\inst4|ud_bin_counter\(3) & (\inst4|ud_bin_counter\(0) $ (\inst4|ud_bin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ud_bin_counter\(3),
	datab => \inst4|ud_bin_counter\(1),
	datac => \inst4|ud_bin_counter\(0),
	datad => \inst4|ud_bin_counter\(2),
	combout => \inst13|Mux3~0_combout\);

-- Location: LCCOMB_X15_Y22_N20
\inst14|DOUT[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|DOUT[3]~3_combout\ = (\inst14|clk_proc:COUNT[10]~q\ & ((\inst13|Mux3~0_combout\))) # (!\inst14|clk_proc:COUNT[10]~q\ & (\inst12|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Mux3~0_combout\,
	datac => \inst13|Mux3~0_combout\,
	datad => \inst14|clk_proc:COUNT[10]~q\,
	combout => \inst14|DOUT[3]~3_combout\);

-- Location: LCCOMB_X14_Y18_N12
\inst12|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|Mux2~0_combout\ = (\inst3|ud_bin_counter\(1) & (!\inst3|ud_bin_counter\(3) & ((\inst3|ud_bin_counter\(0))))) # (!\inst3|ud_bin_counter\(1) & ((\inst3|ud_bin_counter\(2) & (!\inst3|ud_bin_counter\(3))) # (!\inst3|ud_bin_counter\(2) & 
-- ((\inst3|ud_bin_counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ud_bin_counter\(3),
	datab => \inst3|ud_bin_counter\(1),
	datac => \inst3|ud_bin_counter\(2),
	datad => \inst3|ud_bin_counter\(0),
	combout => \inst12|Mux2~0_combout\);

-- Location: LCCOMB_X14_Y17_N8
\inst13|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|Mux2~0_combout\ = (\inst4|ud_bin_counter\(1) & (!\inst4|ud_bin_counter\(3) & (\inst4|ud_bin_counter\(0)))) # (!\inst4|ud_bin_counter\(1) & ((\inst4|ud_bin_counter\(2) & (!\inst4|ud_bin_counter\(3))) # (!\inst4|ud_bin_counter\(2) & 
-- ((\inst4|ud_bin_counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ud_bin_counter\(3),
	datab => \inst4|ud_bin_counter\(1),
	datac => \inst4|ud_bin_counter\(0),
	datad => \inst4|ud_bin_counter\(2),
	combout => \inst13|Mux2~0_combout\);

-- Location: LCCOMB_X14_Y17_N6
\inst14|DOUT[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|DOUT[4]~4_combout\ = (\inst14|clk_proc:COUNT[10]~q\ & ((\inst13|Mux2~0_combout\))) # (!\inst14|clk_proc:COUNT[10]~q\ & (\inst12|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Mux2~0_combout\,
	datac => \inst13|Mux2~0_combout\,
	datad => \inst14|clk_proc:COUNT[10]~q\,
	combout => \inst14|DOUT[4]~4_combout\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_seg7_data(0) <= \seg7_data[0]~output_o\;

ww_seg7_data(1) <= \seg7_data[1]~output_o\;

ww_seg7_data(2) <= \seg7_data[2]~output_o\;

ww_seg7_data(3) <= \seg7_data[3]~output_o\;

ww_seg7_data(4) <= \seg7_data[4]~output_o\;

ww_seg7_data(5) <= \seg7_data[5]~output_o\;

ww_seg7_data(6) <= \seg7_data[6]~output_o\;

ww_seg7_char1 <= \seg7_char1~output_o\;

ww_seg7_char2 <= \seg7_char2~output_o\;
END structure;


