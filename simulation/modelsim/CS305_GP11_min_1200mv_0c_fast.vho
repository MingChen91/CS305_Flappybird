-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Full Version"

-- DATE "05/24/2019 16:21:57"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	part1_Demo IS
    PORT (
	horiz_sync_out : OUT std_logic;
	clk : IN std_logic;
	mouse_data : INOUT std_logic;
	mouse_clk : INOUT std_logic;
	sw0 : IN std_logic;
	bt1 : IN std_logic;
	vert_sync_out : OUT std_logic;
	seg0_dec : OUT std_logic;
	seg2_dec : OUT std_logic;
	r3 : OUT std_logic;
	r2 : OUT std_logic;
	r1 : OUT std_logic;
	g3 : OUT std_logic;
	g2 : OUT std_logic;
	g1 : OUT std_logic;
	b3 : OUT std_logic;
	b2 : OUT std_logic;
	seg0 : OUT std_logic_vector(6 DOWNTO 0);
	seg1 : OUT std_logic_vector(6 DOWNTO 0);
	seg2 : OUT std_logic_vector(6 DOWNTO 0);
	seg3 : OUT std_logic_vector(6 DOWNTO 0)
	);
END part1_Demo;

-- Design Ports Information
-- horiz_sync_out	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt1	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vert_sync_out	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0_dec	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2_dec	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r3	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g3	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g2	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g1	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b3	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg3[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_data	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_clk	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw0	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF part1_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_horiz_sync_out : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_sw0 : std_logic;
SIGNAL ww_bt1 : std_logic;
SIGNAL ww_vert_sync_out : std_logic;
SIGNAL ww_seg0_dec : std_logic;
SIGNAL ww_seg2_dec : std_logic;
SIGNAL ww_r3 : std_logic;
SIGNAL ww_r2 : std_logic;
SIGNAL ww_r1 : std_logic;
SIGNAL ww_g3 : std_logic;
SIGNAL ww_g2 : std_logic;
SIGNAL ww_g1 : std_logic;
SIGNAL ww_b3 : std_logic;
SIGNAL ww_b2 : std_logic;
SIGNAL ww_seg0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \PLL1|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \PLL1|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst7|bird_colour|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst7|bird_colour|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \text_controller|char_data|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \text_controller|char_data|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst4|cursor|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|cursor|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst5|vert_sync_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mouse1|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|Add2~0_combout\ : std_logic;
SIGNAL \inst2|Add2~6_combout\ : std_logic;
SIGNAL \inst7|Add1~0_combout\ : std_logic;
SIGNAL \inst7|Add1~7\ : std_logic;
SIGNAL \inst7|Add1~8_combout\ : std_logic;
SIGNAL \inst|Add2~0_combout\ : std_logic;
SIGNAL \inst|Add2~2_combout\ : std_logic;
SIGNAL \inst|Add2~8_combout\ : std_logic;
SIGNAL \inst|Add2~10_combout\ : std_logic;
SIGNAL \inst|LessThan9~1_cout\ : std_logic;
SIGNAL \inst|LessThan9~3_cout\ : std_logic;
SIGNAL \inst|LessThan9~5_cout\ : std_logic;
SIGNAL \inst|LessThan9~7_cout\ : std_logic;
SIGNAL \inst|LessThan9~9_cout\ : std_logic;
SIGNAL \inst|LessThan9~11_cout\ : std_logic;
SIGNAL \inst|LessThan9~13_cout\ : std_logic;
SIGNAL \inst|LessThan9~15_cout\ : std_logic;
SIGNAL \inst|LessThan9~16_combout\ : std_logic;
SIGNAL \inst|Add3~1\ : std_logic;
SIGNAL \inst|Add3~0_combout\ : std_logic;
SIGNAL \inst|Add3~3\ : std_logic;
SIGNAL \inst|Add3~2_combout\ : std_logic;
SIGNAL \inst|Add3~5\ : std_logic;
SIGNAL \inst|Add3~4_combout\ : std_logic;
SIGNAL \inst|Add3~7\ : std_logic;
SIGNAL \inst|Add3~6_combout\ : std_logic;
SIGNAL \inst|Add3~9\ : std_logic;
SIGNAL \inst|Add3~8_combout\ : std_logic;
SIGNAL \inst|Add3~11\ : std_logic;
SIGNAL \inst|Add3~10_combout\ : std_logic;
SIGNAL \inst|Add3~12_combout\ : std_logic;
SIGNAL \inst|LessThan10~1_cout\ : std_logic;
SIGNAL \inst|LessThan10~3_cout\ : std_logic;
SIGNAL \inst|LessThan10~5_cout\ : std_logic;
SIGNAL \inst|LessThan10~7_cout\ : std_logic;
SIGNAL \inst|LessThan10~9_cout\ : std_logic;
SIGNAL \inst|LessThan10~11_cout\ : std_logic;
SIGNAL \inst|LessThan10~13_cout\ : std_logic;
SIGNAL \inst|LessThan10~15_cout\ : std_logic;
SIGNAL \inst|LessThan10~17_cout\ : std_logic;
SIGNAL \inst|LessThan10~18_combout\ : std_logic;
SIGNAL \inst4|LessThan2~1_cout\ : std_logic;
SIGNAL \inst4|LessThan2~3_cout\ : std_logic;
SIGNAL \inst4|LessThan2~5_cout\ : std_logic;
SIGNAL \inst4|LessThan2~7_cout\ : std_logic;
SIGNAL \inst4|LessThan2~9_cout\ : std_logic;
SIGNAL \inst4|LessThan2~11_cout\ : std_logic;
SIGNAL \inst4|LessThan2~13_cout\ : std_logic;
SIGNAL \inst4|LessThan2~15_cout\ : std_logic;
SIGNAL \inst4|LessThan2~16_combout\ : std_logic;
SIGNAL \inst4|Add3~0_combout\ : std_logic;
SIGNAL \inst4|Add3~4_combout\ : std_logic;
SIGNAL \inst4|Add3~7\ : std_logic;
SIGNAL \inst4|Add3~8_combout\ : std_logic;
SIGNAL \inst4|Add4~4_combout\ : std_logic;
SIGNAL \inst5|Add0~15\ : std_logic;
SIGNAL \inst5|Add0~17\ : std_logic;
SIGNAL \inst5|Add0~16_combout\ : std_logic;
SIGNAL \inst5|Add0~18_combout\ : std_logic;
SIGNAL \inst|Add6~14_combout\ : std_logic;
SIGNAL \inst|Add5~2_combout\ : std_logic;
SIGNAL \inst|Add5~4_combout\ : std_logic;
SIGNAL \inst|Add5~6_combout\ : std_logic;
SIGNAL \inst|Add7~1\ : std_logic;
SIGNAL \inst|Add7~0_combout\ : std_logic;
SIGNAL \inst|Add7~3\ : std_logic;
SIGNAL \inst|Add7~2_combout\ : std_logic;
SIGNAL \inst|Add7~5\ : std_logic;
SIGNAL \inst|Add7~4_combout\ : std_logic;
SIGNAL \inst|Add7~7\ : std_logic;
SIGNAL \inst|Add7~6_combout\ : std_logic;
SIGNAL \inst|Add7~9\ : std_logic;
SIGNAL \inst|Add7~8_combout\ : std_logic;
SIGNAL \inst|Add7~11\ : std_logic;
SIGNAL \inst|Add7~10_combout\ : std_logic;
SIGNAL \inst|Add7~13\ : std_logic;
SIGNAL \inst|Add7~12_combout\ : std_logic;
SIGNAL \inst|Add7~15\ : std_logic;
SIGNAL \inst|Add7~14_combout\ : std_logic;
SIGNAL \inst|Add7~16_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[1]~12_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[1]~13_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[8]~28\ : std_logic;
SIGNAL \mouse1|new_cursor_column[9]~29_combout\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[3]~14_combout\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[4]~16_combout\ : std_logic;
SIGNAL \inst5|process_0~0_combout\ : std_logic;
SIGNAL \mouse1|MOUSE_CLK_FILTER~0_combout\ : std_logic;
SIGNAL \mouse1|INCNT~2_combout\ : std_logic;
SIGNAL \inst7|LessThan2~1_combout\ : std_logic;
SIGNAL \inst7|LessThan2~2_combout\ : std_logic;
SIGNAL \inst7|LessThan2~3_combout\ : std_logic;
SIGNAL \inst7|LessThan3~0_combout\ : std_logic;
SIGNAL \inst|pipe2_on~0_combout\ : std_logic;
SIGNAL \inst|pipe3_on~0_combout\ : std_logic;
SIGNAL \inst|pipe3_on~1_combout\ : std_logic;
SIGNAL \inst|pipe3_on~2_combout\ : std_logic;
SIGNAL \inst|pipe3_on~3_combout\ : std_logic;
SIGNAL \inst|pipe3_on~4_combout\ : std_logic;
SIGNAL \text_controller|LessThan11~0_combout\ : std_logic;
SIGNAL \text_controller|char_data|Mux0~0_combout\ : std_logic;
SIGNAL \text_controller|LessThan3~0_combout\ : std_logic;
SIGNAL \text_controller|char_data|Mux0~4_combout\ : std_logic;
SIGNAL \text_controller|char_data|Mux0~5_combout\ : std_logic;
SIGNAL \inst5|red_current[2]~3_combout\ : std_logic;
SIGNAL \inst5|green_current[2]~3_combout\ : std_logic;
SIGNAL \inst2|LessThan8~1_combout\ : std_logic;
SIGNAL \inst2|LessThan8~2_combout\ : std_logic;
SIGNAL \inst5|process_0~6_combout\ : std_logic;
SIGNAL \inst5|process_0~7_combout\ : std_logic;
SIGNAL \inst5|process_0~8_combout\ : std_logic;
SIGNAL \inst7|bird_y[9]~24_combout\ : std_logic;
SIGNAL \inst|LessThan14~1_combout\ : std_logic;
SIGNAL \inst|Add6~19_combout\ : std_logic;
SIGNAL \inst|LessThan15~0_combout\ : std_logic;
SIGNAL \inst|LessThan15~1_combout\ : std_logic;
SIGNAL \inst|Add7~18_combout\ : std_logic;
SIGNAL \inst|Add7~19_combout\ : std_logic;
SIGNAL \inst|Add7~20_combout\ : std_logic;
SIGNAL \inst|Add7~21_combout\ : std_logic;
SIGNAL \inst|Add7~22_combout\ : std_logic;
SIGNAL \inst|Add7~23_combout\ : std_logic;
SIGNAL \inst|Add7~24_combout\ : std_logic;
SIGNAL \inst|Add7~25_combout\ : std_logic;
SIGNAL \inst|Add7~26_combout\ : std_logic;
SIGNAL \inst2|bird_hit~4_combout\ : std_logic;
SIGNAL \inst2|bird_hit~7_combout\ : std_logic;
SIGNAL \mouse1|LessThan5~0_combout\ : std_logic;
SIGNAL \mouse1|cursor_row~3_combout\ : std_logic;
SIGNAL \mouse1|mouse_state.INPUT_PACKETS~q\ : std_logic;
SIGNAL \mouse1|Selector6~0_combout\ : std_logic;
SIGNAL \text_controller|character_address[0]~9_combout\ : std_logic;
SIGNAL \text_controller|character_address[0]~10_combout\ : std_logic;
SIGNAL \text_controller|character_address[4]~16_combout\ : std_logic;
SIGNAL \text_controller|character_address[0]~21_combout\ : std_logic;
SIGNAL \text_controller|comb~1_combout\ : std_logic;
SIGNAL \text_controller|character_address[1]~28_combout\ : std_logic;
SIGNAL \text_controller|character_address[1]~29_combout\ : std_logic;
SIGNAL \text_controller|comb~3_combout\ : std_logic;
SIGNAL \text_controller|character_address[5]~30_combout\ : std_logic;
SIGNAL \text_controller|LessThan6~0_combout\ : std_logic;
SIGNAL \text_controller|character_address[2]~36_combout\ : std_logic;
SIGNAL \text_controller|character_address[2]~37_combout\ : std_logic;
SIGNAL \text_controller|comb~5_combout\ : std_logic;
SIGNAL \text_controller|character_address[3]~38_combout\ : std_logic;
SIGNAL \text_controller|character_address[4]~43_combout\ : std_logic;
SIGNAL \text_controller|comb~9_combout\ : std_logic;
SIGNAL \text_controller|character_address[5]~45_combout\ : std_logic;
SIGNAL \mouse1|iready_set~q\ : std_logic;
SIGNAL \mouse1|mouse_state.WAIT_CMD_ACK~q\ : std_logic;
SIGNAL \mouse1|mouse_state.INPUT_PACKETS~0_combout\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[0]~30_combout\ : std_logic;
SIGNAL \mouse1|iready_set~0_combout\ : std_logic;
SIGNAL \mouse1|Selector4~0_combout\ : std_logic;
SIGNAL \text_controller|character_address[0]~48_combout\ : std_logic;
SIGNAL \inst7|bird_on~7_combout\ : std_logic;
SIGNAL \inst7|bird_on~8_combout\ : std_logic;
SIGNAL \inst|pipe_Location[17]~3_combout\ : std_logic;
SIGNAL \bt1~input_o\ : std_logic;
SIGNAL \inst5|vert_sync_out~clkctrl_outclk\ : std_logic;
SIGNAL \inst7|bird_Location[5]~feeder_combout\ : std_logic;
SIGNAL \inst7|bird_Location[3]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR3[1]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[0]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR3[0]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR3[3]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[7]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR3[5]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[5]~feeder_combout\ : std_logic;
SIGNAL \mouse_clk~input_o\ : std_logic;
SIGNAL \mouse1|filter[0]~feeder_combout\ : std_logic;
SIGNAL \mouse1|filter[1]~feeder_combout\ : std_logic;
SIGNAL \mouse1|filter[2]~feeder_combout\ : std_logic;
SIGNAL \mouse1|filter[3]~feeder_combout\ : std_logic;
SIGNAL \mouse1|MOUSE_CLK_FILTER~1_combout\ : std_logic;
SIGNAL \mouse1|filter[6]~feeder_combout\ : std_logic;
SIGNAL \mouse1|MOUSE_CLK_FILTER~2_combout\ : std_logic;
SIGNAL \mouse1|MOUSE_CLK_FILTER~3_combout\ : std_logic;
SIGNAL \mouse1|MOUSE_CLK_FILTER~q\ : std_logic;
SIGNAL \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \mouse1|SHIFTOUT[9]~feeder_combout\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[1]~10_combout\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[1]~11\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[2]~12_combout\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[2]~13\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[3]~15\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[4]~17\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[5]~18_combout\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[5]~19\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[6]~20_combout\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[6]~21\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[7]~22_combout\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[7]~23\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[8]~24_combout\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[8]~25\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[9]~27\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[10]~28_combout\ : std_logic;
SIGNAL \mouse1|Selector0~0_combout\ : std_logic;
SIGNAL \mouse1|mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[9]~26_combout\ : std_logic;
SIGNAL \mouse1|Selector1~0_combout\ : std_logic;
SIGNAL \mouse1|mouse_state.LOAD_COMMAND~q\ : std_logic;
SIGNAL \mouse1|mouse_state.LOAD_COMMAND2~q\ : std_logic;
SIGNAL \mouse1|Selector6~1_combout\ : std_logic;
SIGNAL \mouse1|send_data~q\ : std_logic;
SIGNAL \mouse1|OUTCNT~0_combout\ : std_logic;
SIGNAL \mouse1|send_char~0_combout\ : std_logic;
SIGNAL \mouse1|send_char~q\ : std_logic;
SIGNAL \mouse1|output_ready~0_combout\ : std_logic;
SIGNAL \mouse1|OUTCNT~3_combout\ : std_logic;
SIGNAL \mouse1|OUTCNT~1_combout\ : std_logic;
SIGNAL \mouse1|OUTCNT~2_combout\ : std_logic;
SIGNAL \mouse1|LessThan0~0_combout\ : std_logic;
SIGNAL \mouse1|output_ready~feeder_combout\ : std_logic;
SIGNAL \mouse1|output_ready~q\ : std_logic;
SIGNAL \mouse1|Selector3~0_combout\ : std_logic;
SIGNAL \mouse1|mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;
SIGNAL \mouse1|MOUSE_DATA_BUF~0_combout\ : std_logic;
SIGNAL \mouse1|MOUSE_DATA_BUF~1_combout\ : std_logic;
SIGNAL \mouse1|SHIFTOUT[8]~3_combout\ : std_logic;
SIGNAL \mouse1|SHIFTOUT[7]~feeder_combout\ : std_logic;
SIGNAL \mouse1|SHIFTOUT[6]~feeder_combout\ : std_logic;
SIGNAL \mouse1|SHIFTOUT[5]~feeder_combout\ : std_logic;
SIGNAL \mouse1|SHIFTOUT[4]~2_combout\ : std_logic;
SIGNAL \mouse1|SHIFTOUT[3]~1_combout\ : std_logic;
SIGNAL \mouse1|SHIFTOUT[2]~0_combout\ : std_logic;
SIGNAL \mouse1|SHIFTOUT[1]~feeder_combout\ : std_logic;
SIGNAL \mouse1|MOUSE_DATA_BUF~feeder_combout\ : std_logic;
SIGNAL \mouse1|MOUSE_DATA_BUF~q\ : std_logic;
SIGNAL \mouse1|WideOr4~combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \PLL1|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst5|Add0~0_combout\ : std_logic;
SIGNAL \inst5|Add0~1\ : std_logic;
SIGNAL \inst5|Add0~2_combout\ : std_logic;
SIGNAL \inst5|Add0~3\ : std_logic;
SIGNAL \inst5|Add0~4_combout\ : std_logic;
SIGNAL \inst5|Add0~5\ : std_logic;
SIGNAL \inst5|Add0~6_combout\ : std_logic;
SIGNAL \inst5|Add0~7\ : std_logic;
SIGNAL \inst5|Add0~8_combout\ : std_logic;
SIGNAL \inst5|process_0~1_combout\ : std_logic;
SIGNAL \inst5|process_0~2_combout\ : std_logic;
SIGNAL \inst5|Add0~9\ : std_logic;
SIGNAL \inst5|Add0~11\ : std_logic;
SIGNAL \inst5|Add0~12_combout\ : std_logic;
SIGNAL \inst5|Add0~10_combout\ : std_logic;
SIGNAL \inst5|Add0~13\ : std_logic;
SIGNAL \inst5|Add0~14_combout\ : std_logic;
SIGNAL \inst5|Equal0~2_combout\ : std_logic;
SIGNAL \inst5|Equal0~0_combout\ : std_logic;
SIGNAL \inst5|h_count~2_combout\ : std_logic;
SIGNAL \inst5|process_0~3_combout\ : std_logic;
SIGNAL \inst5|horiz_sync~q\ : std_logic;
SIGNAL \inst5|horiz_sync_out~q\ : std_logic;
SIGNAL \inst5|h_count~1_combout\ : std_logic;
SIGNAL \inst5|Equal0~1_combout\ : std_logic;
SIGNAL \inst5|Equal1~0_combout\ : std_logic;
SIGNAL \inst5|v_count[1]~1_combout\ : std_logic;
SIGNAL \inst5|v_count[7]~3_combout\ : std_logic;
SIGNAL \inst5|process_0~9_combout\ : std_logic;
SIGNAL \inst5|process_0~10_combout\ : std_logic;
SIGNAL \inst5|h_count~0_combout\ : std_logic;
SIGNAL \inst5|process_0~11_combout\ : std_logic;
SIGNAL \inst5|Add1~1\ : std_logic;
SIGNAL \inst5|Add1~2_combout\ : std_logic;
SIGNAL \inst5|v_count~2_combout\ : std_logic;
SIGNAL \inst5|Add1~3\ : std_logic;
SIGNAL \inst5|Add1~5\ : std_logic;
SIGNAL \inst5|Add1~7\ : std_logic;
SIGNAL \inst5|Add1~9\ : std_logic;
SIGNAL \inst5|Add1~10_combout\ : std_logic;
SIGNAL \inst5|v_count[5]~8_combout\ : std_logic;
SIGNAL \inst5|Add1~11\ : std_logic;
SIGNAL \inst5|Add1~12_combout\ : std_logic;
SIGNAL \inst5|v_count[6]~9_combout\ : std_logic;
SIGNAL \inst5|Add1~13\ : std_logic;
SIGNAL \inst5|Add1~14_combout\ : std_logic;
SIGNAL \inst5|v_count[7]~10_combout\ : std_logic;
SIGNAL \inst5|Add1~15\ : std_logic;
SIGNAL \inst5|Add1~16_combout\ : std_logic;
SIGNAL \inst5|v_count[8]~11_combout\ : std_logic;
SIGNAL \inst5|LessThan7~0_combout\ : std_logic;
SIGNAL \inst5|Add1~4_combout\ : std_logic;
SIGNAL \inst5|v_count[2]~4_combout\ : std_logic;
SIGNAL \inst5|Add1~6_combout\ : std_logic;
SIGNAL \inst5|v_count[3]~5_combout\ : std_logic;
SIGNAL \inst5|process_0~4_combout\ : std_logic;
SIGNAL \inst5|Add1~8_combout\ : std_logic;
SIGNAL \inst5|v_count[4]~6_combout\ : std_logic;
SIGNAL \inst5|process_0~5_combout\ : std_logic;
SIGNAL \inst5|vert_sync~q\ : std_logic;
SIGNAL \inst5|vert_sync_out~q\ : std_logic;
SIGNAL \mouse_data~input_o\ : std_logic;
SIGNAL \mouse1|INCNT~4_combout\ : std_logic;
SIGNAL \mouse1|INCNT[3]~1_combout\ : std_logic;
SIGNAL \mouse1|INCNT~3_combout\ : std_logic;
SIGNAL \mouse1|INCNT~0_combout\ : std_logic;
SIGNAL \mouse1|LessThan1~0_combout\ : std_logic;
SIGNAL \mouse1|SHIFTIN[1]~0_combout\ : std_logic;
SIGNAL \mouse1|SHIFTIN[6]~feeder_combout\ : std_logic;
SIGNAL \mouse1|SHIFTIN[5]~feeder_combout\ : std_logic;
SIGNAL \mouse1|SHIFTIN[4]~feeder_combout\ : std_logic;
SIGNAL \mouse1|SHIFTIN[3]~feeder_combout\ : std_logic;
SIGNAL \mouse1|SHIFTIN[2]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR1[1]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_COUNT[0]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[7]~0_combout\ : std_logic;
SIGNAL \mouse1|Add3~0_combout\ : std_logic;
SIGNAL \mouse1|PACKET_COUNT[1]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR1[1]~0_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR1[1]~1_combout\ : std_logic;
SIGNAL \mouse1|right_button~feeder_combout\ : std_logic;
SIGNAL \mouse1|Equal4~0_combout\ : std_logic;
SIGNAL \mouse1|right_button~0_combout\ : std_logic;
SIGNAL \mouse1|right_button~q\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR1[0]~feeder_combout\ : std_logic;
SIGNAL \mouse1|left_button~q\ : std_logic;
SIGNAL \inst5|LessThan6~0_combout\ : std_logic;
SIGNAL \inst5|pixel_column[1]~_wirecell_combout\ : std_logic;
SIGNAL \inst7|Add3~0_combout\ : std_logic;
SIGNAL \inst7|Add3~1_combout\ : std_logic;
SIGNAL \inst7|Add3~2_combout\ : std_logic;
SIGNAL \inst5|Add1~0_combout\ : std_logic;
SIGNAL \inst5|v_count~0_combout\ : std_logic;
SIGNAL \inst5|pixel_row[0]~feeder_combout\ : std_logic;
SIGNAL \inst5|Add1~17\ : std_logic;
SIGNAL \inst5|Add1~18_combout\ : std_logic;
SIGNAL \inst5|v_count[9]~7_combout\ : std_logic;
SIGNAL \inst5|LessThan7~1_combout\ : std_logic;
SIGNAL \inst7|bird_y[1]~9_combout\ : std_logic;
SIGNAL \inst7|Add6~0_combout\ : std_logic;
SIGNAL \inst|LessThan13~1_combout\ : std_logic;
SIGNAL \inst|Add5~25_combout\ : std_logic;
SIGNAL \sw0~input_o\ : std_logic;
SIGNAL \inst|Add5~1\ : std_logic;
SIGNAL \inst|Add5~3\ : std_logic;
SIGNAL \inst|Add5~5\ : std_logic;
SIGNAL \inst|Add5~7\ : std_logic;
SIGNAL \inst|Add5~8_combout\ : std_logic;
SIGNAL \inst|Add5~22_combout\ : std_logic;
SIGNAL \inst|Add5~9\ : std_logic;
SIGNAL \inst|Add5~11\ : std_logic;
SIGNAL \inst|Add5~12_combout\ : std_logic;
SIGNAL \inst|Add5~20_combout\ : std_logic;
SIGNAL \inst|Add5~13\ : std_logic;
SIGNAL \inst|Add5~14_combout\ : std_logic;
SIGNAL \inst|Add5~19_combout\ : std_logic;
SIGNAL \inst|Add5~15\ : std_logic;
SIGNAL \inst|Add5~16_combout\ : std_logic;
SIGNAL \inst|Add5~18_combout\ : std_logic;
SIGNAL \inst|Add5~0_combout\ : std_logic;
SIGNAL \inst|Add5~26_combout\ : std_logic;
SIGNAL \inst|Add5~24_combout\ : std_logic;
SIGNAL \inst|LessThan13~0_combout\ : std_logic;
SIGNAL \inst|Add5~10_combout\ : std_logic;
SIGNAL \inst|Add5~21_combout\ : std_logic;
SIGNAL \inst|pipe_Location[16]~2_combout\ : std_logic;
SIGNAL \inst2|bird_hit~0_combout\ : std_logic;
SIGNAL \inst|Add5~23_combout\ : std_logic;
SIGNAL \inst|pipe_Location[14]~1_combout\ : std_logic;
SIGNAL \inst|pipe_Location[12]~0_combout\ : std_logic;
SIGNAL \inst2|Add2~1\ : std_logic;
SIGNAL \inst2|Add2~3\ : std_logic;
SIGNAL \inst2|Add2~4_combout\ : std_logic;
SIGNAL \inst2|Add2~2_combout\ : std_logic;
SIGNAL \inst2|bird_hit~8_combout\ : std_logic;
SIGNAL \inst2|bird_hit~1_combout\ : std_logic;
SIGNAL \inst2|bird_hit~2_combout\ : std_logic;
SIGNAL \inst7|bird_y[1]~10\ : std_logic;
SIGNAL \inst7|bird_y[2]~12\ : std_logic;
SIGNAL \inst7|bird_y[3]~13_combout\ : std_logic;
SIGNAL \inst7|bird_y[2]~11_combout\ : std_logic;
SIGNAL \inst7|Add6~1\ : std_logic;
SIGNAL \inst7|Add6~2_combout\ : std_logic;
SIGNAL \inst7|Add6~3\ : std_logic;
SIGNAL \inst7|Add6~4_combout\ : std_logic;
SIGNAL \inst7|bird_y[3]~14\ : std_logic;
SIGNAL \inst7|bird_y[4]~15_combout\ : std_logic;
SIGNAL \inst7|Add6~5\ : std_logic;
SIGNAL \inst7|Add6~6_combout\ : std_logic;
SIGNAL \inst7|bird_y[4]~16\ : std_logic;
SIGNAL \inst7|bird_y[5]~17_combout\ : std_logic;
SIGNAL \inst7|Add6~7\ : std_logic;
SIGNAL \inst7|Add6~8_combout\ : std_logic;
SIGNAL \inst7|bird_y[5]~18\ : std_logic;
SIGNAL \inst7|bird_y[6]~20\ : std_logic;
SIGNAL \inst7|bird_y[7]~21_combout\ : std_logic;
SIGNAL \inst7|bird_y[6]~19_combout\ : std_logic;
SIGNAL \inst7|Add6~9\ : std_logic;
SIGNAL \inst7|Add6~10_combout\ : std_logic;
SIGNAL \inst7|Add6~11\ : std_logic;
SIGNAL \inst7|Add6~12_combout\ : std_logic;
SIGNAL \inst7|bird_y[7]~22\ : std_logic;
SIGNAL \inst7|bird_y[8]~29\ : std_logic;
SIGNAL \inst7|bird_y[9]~30_combout\ : std_logic;
SIGNAL \inst7|bird_y[8]~28_combout\ : std_logic;
SIGNAL \inst7|Add6~13\ : std_logic;
SIGNAL \inst7|Add6~14_combout\ : std_logic;
SIGNAL \inst7|Add6~15\ : std_logic;
SIGNAL \inst7|Add6~16_combout\ : std_logic;
SIGNAL \inst7|bird_Location[7]~feeder_combout\ : std_logic;
SIGNAL \inst7|bird_Location[4]~feeder_combout\ : std_logic;
SIGNAL \inst7|bird_Location[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|bird_hit~3_combout\ : std_logic;
SIGNAL \inst2|bird_hit~5_combout\ : std_logic;
SIGNAL \inst2|bird_hit~6_combout\ : std_logic;
SIGNAL \inst2|Add2~5\ : std_logic;
SIGNAL \inst2|Add2~7\ : std_logic;
SIGNAL \inst2|Add2~9\ : std_logic;
SIGNAL \inst2|Add2~11\ : std_logic;
SIGNAL \inst2|Add2~13\ : std_logic;
SIGNAL \inst2|Add2~14_combout\ : std_logic;
SIGNAL \inst2|Add2~10_combout\ : std_logic;
SIGNAL \inst2|LessThan8~0_combout\ : std_logic;
SIGNAL \inst2|bird_hit~9_combout\ : std_logic;
SIGNAL \inst7|Add1~1\ : std_logic;
SIGNAL \inst7|Add1~2_combout\ : std_logic;
SIGNAL \inst7|Add1~3\ : std_logic;
SIGNAL \inst7|Add1~4_combout\ : std_logic;
SIGNAL \inst7|bird_y[9]~26_combout\ : std_logic;
SIGNAL \inst7|bird_y[9]~23_combout\ : std_logic;
SIGNAL \inst7|bird_y[9]~25_combout\ : std_logic;
SIGNAL \inst7|bird_y[9]~27_combout\ : std_logic;
SIGNAL \inst7|rom_y[1]~0_combout\ : std_logic;
SIGNAL \inst5|pixel_row[2]~feeder_combout\ : std_logic;
SIGNAL \inst7|rom_y[1]~1\ : std_logic;
SIGNAL \inst7|rom_y[2]~2_combout\ : std_logic;
SIGNAL \inst5|pixel_row[3]~feeder_combout\ : std_logic;
SIGNAL \inst7|rom_y[2]~3\ : std_logic;
SIGNAL \inst7|rom_y[3]~4_combout\ : std_logic;
SIGNAL \inst7|rom_y[3]~5\ : std_logic;
SIGNAL \inst7|rom_y[4]~6_combout\ : std_logic;
SIGNAL \inst5|pixel_row[6]~feeder_combout\ : std_logic;
SIGNAL \inst5|pixel_row[8]~feeder_combout\ : std_logic;
SIGNAL \inst7|Add1~5\ : std_logic;
SIGNAL \inst7|Add1~6_combout\ : std_logic;
SIGNAL \inst7|LessThan3~1_combout\ : std_logic;
SIGNAL \inst7|LessThan3~2_combout\ : std_logic;
SIGNAL \inst7|LessThan3~3_combout\ : std_logic;
SIGNAL \text_controller|LessThan0~0_combout\ : std_logic;
SIGNAL \inst7|bird_on~3_combout\ : std_logic;
SIGNAL \inst7|bird_on~4_combout\ : std_logic;
SIGNAL \inst7|LessThan2~0_combout\ : std_logic;
SIGNAL \inst7|Equal0~0_combout\ : std_logic;
SIGNAL \inst7|Equal0~1_combout\ : std_logic;
SIGNAL \inst7|bird_on~1_combout\ : std_logic;
SIGNAL \inst7|bird_on~2_combout\ : std_logic;
SIGNAL \inst7|bird_on~5_combout\ : std_logic;
SIGNAL \inst7|bird_on~6_combout\ : std_logic;
SIGNAL \inst6|r~0_combout\ : std_logic;
SIGNAL \inst|pipe1_on~0_combout\ : std_logic;
SIGNAL \text_controller|LessThan8~0_combout\ : std_logic;
SIGNAL \inst|pipe1_on~1_combout\ : std_logic;
SIGNAL \inst|pipe1_on~2_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|LessThan1~1_cout\ : std_logic;
SIGNAL \inst|LessThan1~3_cout\ : std_logic;
SIGNAL \inst|LessThan1~5_cout\ : std_logic;
SIGNAL \inst|LessThan1~7_cout\ : std_logic;
SIGNAL \inst|LessThan1~9_cout\ : std_logic;
SIGNAL \inst|LessThan1~11_cout\ : std_logic;
SIGNAL \inst|LessThan1~13_cout\ : std_logic;
SIGNAL \inst|LessThan1~15_cout\ : std_logic;
SIGNAL \inst|LessThan1~17_cout\ : std_logic;
SIGNAL \inst|LessThan1~18_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_cout\ : std_logic;
SIGNAL \inst|LessThan0~3_cout\ : std_logic;
SIGNAL \inst|LessThan0~5_cout\ : std_logic;
SIGNAL \inst|LessThan0~7_cout\ : std_logic;
SIGNAL \inst|LessThan0~9_cout\ : std_logic;
SIGNAL \inst|LessThan0~11_cout\ : std_logic;
SIGNAL \inst|LessThan0~13_cout\ : std_logic;
SIGNAL \inst|LessThan0~15_cout\ : std_logic;
SIGNAL \inst|LessThan0~16_combout\ : std_logic;
SIGNAL \inst|pipe1_on~3_combout\ : std_logic;
SIGNAL \inst|pipe2_on~1_combout\ : std_logic;
SIGNAL \inst|pipe2_on~2_combout\ : std_logic;
SIGNAL \inst|pipe2_on~3_combout\ : std_logic;
SIGNAL \inst|Add6~0_combout\ : std_logic;
SIGNAL \inst|Add6~26_combout\ : std_logic;
SIGNAL \inst|Add6~1\ : std_logic;
SIGNAL \inst|Add6~2_combout\ : std_logic;
SIGNAL \inst|Add6~25_combout\ : std_logic;
SIGNAL \inst|Add6~3\ : std_logic;
SIGNAL \inst|Add6~4_combout\ : std_logic;
SIGNAL \inst|Add6~24_combout\ : std_logic;
SIGNAL \inst|LessThan14~0_combout\ : std_logic;
SIGNAL \inst|Add6~5\ : std_logic;
SIGNAL \inst|Add6~6_combout\ : std_logic;
SIGNAL \inst|Add6~23_combout\ : std_logic;
SIGNAL \inst|Add6~7\ : std_logic;
SIGNAL \inst|Add6~9\ : std_logic;
SIGNAL \inst|Add6~10_combout\ : std_logic;
SIGNAL \inst|Add6~21_combout\ : std_logic;
SIGNAL \inst|Add6~11\ : std_logic;
SIGNAL \inst|Add6~12_combout\ : std_logic;
SIGNAL \inst|Add6~20_combout\ : std_logic;
SIGNAL \inst|Add6~13\ : std_logic;
SIGNAL \inst|Add6~15\ : std_logic;
SIGNAL \inst|Add6~16_combout\ : std_logic;
SIGNAL \inst|Add6~18_combout\ : std_logic;
SIGNAL \inst5|pixel_column[8]~feeder_combout\ : std_logic;
SIGNAL \inst|Add6~8_combout\ : std_logic;
SIGNAL \inst|Add6~22_combout\ : std_logic;
SIGNAL \inst|LessThan5~1_cout\ : std_logic;
SIGNAL \inst|LessThan5~3_cout\ : std_logic;
SIGNAL \inst|LessThan5~5_cout\ : std_logic;
SIGNAL \inst|LessThan5~7_cout\ : std_logic;
SIGNAL \inst|LessThan5~9_cout\ : std_logic;
SIGNAL \inst|LessThan5~11_cout\ : std_logic;
SIGNAL \inst|LessThan5~13_cout\ : std_logic;
SIGNAL \inst|LessThan5~15_cout\ : std_logic;
SIGNAL \inst|LessThan5~16_combout\ : std_logic;
SIGNAL \inst|Add2~1\ : std_logic;
SIGNAL \inst|Add2~3\ : std_logic;
SIGNAL \inst|Add2~5\ : std_logic;
SIGNAL \inst|Add2~7\ : std_logic;
SIGNAL \inst|Add2~9\ : std_logic;
SIGNAL \inst|Add2~11\ : std_logic;
SIGNAL \inst|Add2~12_combout\ : std_logic;
SIGNAL \inst|Add2~6_combout\ : std_logic;
SIGNAL \inst|Add2~4_combout\ : std_logic;
SIGNAL \inst|LessThan6~1_cout\ : std_logic;
SIGNAL \inst|LessThan6~3_cout\ : std_logic;
SIGNAL \inst|LessThan6~5_cout\ : std_logic;
SIGNAL \inst|LessThan6~7_cout\ : std_logic;
SIGNAL \inst|LessThan6~9_cout\ : std_logic;
SIGNAL \inst|LessThan6~11_cout\ : std_logic;
SIGNAL \inst|LessThan6~13_cout\ : std_logic;
SIGNAL \inst|LessThan6~15_cout\ : std_logic;
SIGNAL \inst|LessThan6~17_cout\ : std_logic;
SIGNAL \inst|LessThan6~18_combout\ : std_logic;
SIGNAL \inst|pipe2_on~4_combout\ : std_logic;
SIGNAL \inst6|b~0_combout\ : std_logic;
SIGNAL \inst5|red_current[2]~0_combout\ : std_logic;
SIGNAL \inst5|red_current[2]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[6]~feeder_combout\ : std_logic;
SIGNAL \mouse1|READ_CHAR~0_combout\ : std_logic;
SIGNAL \mouse1|READ_CHAR~q\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[7]~1_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[7]~2_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[4]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[3]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[2]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[1]~feeder_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[0]~12\ : std_logic;
SIGNAL \mouse1|new_cursor_column[1]~14\ : std_logic;
SIGNAL \mouse1|new_cursor_column[2]~16\ : std_logic;
SIGNAL \mouse1|new_cursor_column[3]~18\ : std_logic;
SIGNAL \mouse1|new_cursor_column[4]~20\ : std_logic;
SIGNAL \mouse1|new_cursor_column[5]~21_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[9]~10_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~9_combout\ : std_logic;
SIGNAL \mouse1|cursor_column[9]~0_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[5]~22\ : std_logic;
SIGNAL \mouse1|new_cursor_column[6]~24\ : std_logic;
SIGNAL \mouse1|new_cursor_column[7]~25_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~6_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~4_combout\ : std_logic;
SIGNAL \mouse1|RECV_UART~4_combout\ : std_logic;
SIGNAL \mouse1|Equal3~0_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[0]~11_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[6]~23_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[4]~19_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[3]~17_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[2]~15_combout\ : std_logic;
SIGNAL \mouse1|RECV_UART~5_combout\ : std_logic;
SIGNAL \mouse1|RECV_UART~6_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~1_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~2_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~5_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[7]~26\ : std_logic;
SIGNAL \mouse1|new_cursor_column[8]~27_combout\ : std_logic;
SIGNAL \mouse1|LessThan9~0_combout\ : std_logic;
SIGNAL \mouse1|cursor_column[1]~3_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~13_combout\ : std_logic;
SIGNAL \inst4|rom_x[0]~0_combout\ : std_logic;
SIGNAL \inst4|rom_x[0]~1\ : std_logic;
SIGNAL \inst4|Add0~0_combout\ : std_logic;
SIGNAL \inst4|Add0~0_wirecell_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~11_combout\ : std_logic;
SIGNAL \inst4|Add0~1\ : std_logic;
SIGNAL \inst4|Add0~2_combout\ : std_logic;
SIGNAL \inst4|Add1~0_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~10_combout\ : std_logic;
SIGNAL \inst4|Add0~3\ : std_logic;
SIGNAL \inst4|Add0~4_combout\ : std_logic;
SIGNAL \inst4|Add1~1_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[0]~10_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR3[4]~feeder_combout\ : std_logic;
SIGNAL \mouse1|cursor_row~6_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR3[2]~feeder_combout\ : std_logic;
SIGNAL \mouse1|cursor_row~8_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[0]~11\ : std_logic;
SIGNAL \mouse1|new_cursor_row[1]~13\ : std_logic;
SIGNAL \mouse1|new_cursor_row[2]~15\ : std_logic;
SIGNAL \mouse1|new_cursor_row[3]~17\ : std_logic;
SIGNAL \mouse1|new_cursor_row[4]~18_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[2]~14_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[3]~16_combout\ : std_logic;
SIGNAL \mouse1|RECV_UART~0_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR3[7]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR3[6]~feeder_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[4]~19\ : std_logic;
SIGNAL \mouse1|new_cursor_row[5]~20_combout\ : std_logic;
SIGNAL \mouse1|cursor_row~4_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[5]~21\ : std_logic;
SIGNAL \mouse1|new_cursor_row[6]~23\ : std_logic;
SIGNAL \mouse1|new_cursor_row[7]~25\ : std_logic;
SIGNAL \mouse1|new_cursor_row[8]~26_combout\ : std_logic;
SIGNAL \mouse1|cursor_row~1_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[8]~27\ : std_logic;
SIGNAL \mouse1|new_cursor_row[9]~28_combout\ : std_logic;
SIGNAL \mouse1|cursor_row~0_combout\ : std_logic;
SIGNAL \mouse1|cursor_row~2_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[6]~22_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[7]~24_combout\ : std_logic;
SIGNAL \mouse1|RECV_UART~1_combout\ : std_logic;
SIGNAL \mouse1|RECV_UART~2_combout\ : std_logic;
SIGNAL \mouse1|RECV_UART~3_combout\ : std_logic;
SIGNAL \mouse1|cursor_row~9_combout\ : std_logic;
SIGNAL \inst4|rom_y[0]~0_combout\ : std_logic;
SIGNAL \inst5|pixel_row[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|rom_y[0]~1\ : std_logic;
SIGNAL \inst4|rom_y[1]~2_combout\ : std_logic;
SIGNAL \inst4|rom_y[1]~3\ : std_logic;
SIGNAL \inst4|rom_y[2]~4_combout\ : std_logic;
SIGNAL \inst4|rom_y[2]~5\ : std_logic;
SIGNAL \inst4|rom_y[3]~6_combout\ : std_logic;
SIGNAL \inst5|video_on_v~q\ : std_logic;
SIGNAL \inst5|video_on_h~feeder_combout\ : std_logic;
SIGNAL \inst5|video_on_h~q\ : std_logic;
SIGNAL \inst5|video_on~combout\ : std_logic;
SIGNAL \mouse1|cursor_column~8_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~12_combout\ : std_logic;
SIGNAL \inst4|LessThan0~1_cout\ : std_logic;
SIGNAL \inst4|LessThan0~3_cout\ : std_logic;
SIGNAL \inst4|LessThan0~5_cout\ : std_logic;
SIGNAL \inst4|LessThan0~7_cout\ : std_logic;
SIGNAL \inst4|LessThan0~9_cout\ : std_logic;
SIGNAL \inst4|LessThan0~11_cout\ : std_logic;
SIGNAL \inst4|LessThan0~13_cout\ : std_logic;
SIGNAL \inst4|LessThan0~15_cout\ : std_logic;
SIGNAL \inst4|LessThan0~17_cout\ : std_logic;
SIGNAL \inst4|LessThan0~18_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~7_combout\ : std_logic;
SIGNAL \inst4|Add3~1\ : std_logic;
SIGNAL \inst4|Add3~3\ : std_logic;
SIGNAL \inst4|Add3~5\ : std_logic;
SIGNAL \inst4|Add3~6_combout\ : std_logic;
SIGNAL \inst4|Add3~2_combout\ : std_logic;
SIGNAL \inst4|LessThan1~1_cout\ : std_logic;
SIGNAL \inst4|LessThan1~3_cout\ : std_logic;
SIGNAL \inst4|LessThan1~5_cout\ : std_logic;
SIGNAL \inst4|LessThan1~7_cout\ : std_logic;
SIGNAL \inst4|LessThan1~9_cout\ : std_logic;
SIGNAL \inst4|LessThan1~11_cout\ : std_logic;
SIGNAL \inst4|LessThan1~13_cout\ : std_logic;
SIGNAL \inst4|LessThan1~15_cout\ : std_logic;
SIGNAL \inst4|LessThan1~17_cout\ : std_logic;
SIGNAL \inst4|LessThan1~18_combout\ : std_logic;
SIGNAL \mouse1|cursor_row~5_combout\ : std_logic;
SIGNAL \inst4|Add4~1\ : std_logic;
SIGNAL \inst4|Add4~3\ : std_logic;
SIGNAL \inst4|Add4~5\ : std_logic;
SIGNAL \inst4|Add4~7\ : std_logic;
SIGNAL \inst4|Add4~8_combout\ : std_logic;
SIGNAL \inst4|Add4~6_combout\ : std_logic;
SIGNAL \inst4|Add4~2_combout\ : std_logic;
SIGNAL \inst4|Add4~0_combout\ : std_logic;
SIGNAL \mouse1|cursor_row~7_combout\ : std_logic;
SIGNAL \inst4|LessThan3~1_cout\ : std_logic;
SIGNAL \inst4|LessThan3~3_cout\ : std_logic;
SIGNAL \inst4|LessThan3~5_cout\ : std_logic;
SIGNAL \inst4|LessThan3~7_cout\ : std_logic;
SIGNAL \inst4|LessThan3~9_cout\ : std_logic;
SIGNAL \inst4|LessThan3~11_cout\ : std_logic;
SIGNAL \inst4|LessThan3~13_cout\ : std_logic;
SIGNAL \inst4|LessThan3~15_cout\ : std_logic;
SIGNAL \inst4|LessThan3~16_combout\ : std_logic;
SIGNAL \inst4|mouse_on~0_combout\ : std_logic;
SIGNAL \inst4|mouse_on~1_combout\ : std_logic;
SIGNAL \inst4|mouse_on~2_combout\ : std_logic;
SIGNAL \inst4|mouse_on~3_combout\ : std_logic;
SIGNAL \inst5|red_out[2]~feeder_combout\ : std_logic;
SIGNAL \inst6|r~1_combout\ : std_logic;
SIGNAL \inst6|r~2_combout\ : std_logic;
SIGNAL \inst5|red_current[1]~1_combout\ : std_logic;
SIGNAL \inst5|red_current[0]~2_combout\ : std_logic;
SIGNAL \inst5|red_out[0]~feeder_combout\ : std_logic;
SIGNAL \inst5|green_current[2]~0_combout\ : std_logic;
SIGNAL \inst5|green_current[2]~feeder_combout\ : std_logic;
SIGNAL \text_controller|char_data|Mux0~1_combout\ : std_logic;
SIGNAL \text_controller|char_data_out~0_combout\ : std_logic;
SIGNAL \text_controller|LessThan8~1_combout\ : std_logic;
SIGNAL \text_controller|character_address[0]~22_combout\ : std_logic;
SIGNAL \text_controller|LessThan0~1_combout\ : std_logic;
SIGNAL \text_controller|LessThan2~0_combout\ : std_logic;
SIGNAL \text_controller|character_address[0]~23_combout\ : std_logic;
SIGNAL \inst7|bird_on~0_combout\ : std_logic;
SIGNAL \text_controller|LessThan8~2_combout\ : std_logic;
SIGNAL \text_controller|character_address[4]~17_combout\ : std_logic;
SIGNAL \text_controller|character_address[5]~7_combout\ : std_logic;
SIGNAL \text_controller|LessThan0~2_combout\ : std_logic;
SIGNAL \text_controller|LessThan5~1_combout\ : std_logic;
SIGNAL \text_controller|LessThan7~0_combout\ : std_logic;
SIGNAL \inst7|LessThan0~0_combout\ : std_logic;
SIGNAL \text_controller|LessThan0~3_combout\ : std_logic;
SIGNAL \text_controller|character_address[4]~18_combout\ : std_logic;
SIGNAL \text_controller|character_address[4]~19_combout\ : std_logic;
SIGNAL \text_controller|character_address[4]~20_combout\ : std_logic;
SIGNAL \text_controller|LessThan5~0_combout\ : std_logic;
SIGNAL \text_controller|character_address[0]~26_combout\ : std_logic;
SIGNAL \text_controller|character_address[0]~27_combout\ : std_logic;
SIGNAL \text_controller|comb~0_combout\ : std_logic;
SIGNAL \text_controller|character_address~47_combout\ : std_logic;
SIGNAL \text_controller|character_address[0]~11_combout\ : std_logic;
SIGNAL \text_controller|character_address[0]~13_combout\ : std_logic;
SIGNAL \text_controller|character_address[4]~12_combout\ : std_logic;
SIGNAL \text_controller|character_address[0]~14_combout\ : std_logic;
SIGNAL \text_controller|character_address[0]~15_combout\ : std_logic;
SIGNAL \text_controller|comb~2_combout\ : std_logic;
SIGNAL \text_controller|character_address[2]~49_combout\ : std_logic;
SIGNAL \text_controller|character_address~8_combout\ : std_logic;
SIGNAL \text_controller|character_address[5]~31_combout\ : std_logic;
SIGNAL \text_controller|character_address[5]~6_combout\ : std_logic;
SIGNAL \text_controller|character_address[5]~32_combout\ : std_logic;
SIGNAL \text_controller|character_address[2]~33_combout\ : std_logic;
SIGNAL \text_controller|comb~4_combout\ : std_logic;
SIGNAL \text_controller|LessThan7~1_combout\ : std_logic;
SIGNAL \text_controller|character_address[3]~39_combout\ : std_logic;
SIGNAL \text_controller|character_address[3]~40_combout\ : std_logic;
SIGNAL \text_controller|comb~6_combout\ : std_logic;
SIGNAL \text_controller|comb~7_combout\ : std_logic;
SIGNAL \text_controller|LessThan4~0_combout\ : std_logic;
SIGNAL \text_controller|character_address[2]~35_combout\ : std_logic;
SIGNAL \text_controller|LessThan1~0_combout\ : std_logic;
SIGNAL \text_controller|LessThan1~1_combout\ : std_logic;
SIGNAL \text_controller|character_address[4]~25_combout\ : std_logic;
SIGNAL \text_controller|character_address[4]~41_combout\ : std_logic;
SIGNAL \text_controller|character_address[4]~42_combout\ : std_logic;
SIGNAL \text_controller|character_address[0]~34_combout\ : std_logic;
SIGNAL \text_controller|character_address[4]~44_combout\ : std_logic;
SIGNAL \text_controller|character_address[0]~24_combout\ : std_logic;
SIGNAL \text_controller|comb~8_combout\ : std_logic;
SIGNAL \text_controller|character_address[5]~46_combout\ : std_logic;
SIGNAL \text_controller|comb~10_combout\ : std_logic;
SIGNAL \text_controller|comb~11_combout\ : std_logic;
SIGNAL \text_controller|char_data|Mux0~2_combout\ : std_logic;
SIGNAL \text_controller|char_data|Mux0~3_combout\ : std_logic;
SIGNAL \text_controller|char_data|Mux0~6_combout\ : std_logic;
SIGNAL \text_controller|char_data|Mux0~7_combout\ : std_logic;
SIGNAL \inst6|g~0_combout\ : std_logic;
SIGNAL \inst5|green_current[1]~1_combout\ : std_logic;
SIGNAL \inst5|green_out[1]~feeder_combout\ : std_logic;
SIGNAL \inst5|green_current[0]~2_combout\ : std_logic;
SIGNAL \inst5|green_out[0]~feeder_combout\ : std_logic;
SIGNAL \inst6|b~1_combout\ : std_logic;
SIGNAL \inst5|blue_current[1]~0_combout\ : std_logic;
SIGNAL \inst5|blue_out[1]~feeder_combout\ : std_logic;
SIGNAL \inst5|blue_current[0]~1_combout\ : std_logic;
SIGNAL \inst5|blue_out[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|scoreCounterOnes[0]~4_combout\ : std_logic;
SIGNAL \inst2|check_collision~0_combout\ : std_logic;
SIGNAL \inst2|LessThan6~0_combout\ : std_logic;
SIGNAL \inst2|Add2~8_combout\ : std_logic;
SIGNAL \inst2|LessThan7~0_combout\ : std_logic;
SIGNAL \inst2|LessThan7~1_combout\ : std_logic;
SIGNAL \inst2|check_collision~1_combout\ : std_logic;
SIGNAL \inst2|BirdPassed~0_combout\ : std_logic;
SIGNAL \inst2|BirdPassed~q\ : std_logic;
SIGNAL \inst2|Add2~12_combout\ : std_logic;
SIGNAL \inst2|LessThan7~2_combout\ : std_logic;
SIGNAL \inst2|scoreCounterOnes[3]~0_combout\ : std_logic;
SIGNAL \inst2|scoreCounterOnes~3_combout\ : std_logic;
SIGNAL \inst2|scoreCounterOnes~1_combout\ : std_logic;
SIGNAL \inst2|scoreCounterOnes[2]~2_combout\ : std_logic;
SIGNAL \mouseX2_7seg|Mux0~0_combout\ : std_logic;
SIGNAL \mouseX2_7seg|Mux1~0_combout\ : std_logic;
SIGNAL \mouseX2_7seg|Mux2~0_combout\ : std_logic;
SIGNAL \mouseX2_7seg|Mux3~0_combout\ : std_logic;
SIGNAL \mouseX2_7seg|Mux4~0_combout\ : std_logic;
SIGNAL \mouseX2_7seg|Mux5~0_combout\ : std_logic;
SIGNAL \mouseX2_7seg|Mux6~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|scoreCounterTens[1]~1_combout\ : std_logic;
SIGNAL \inst2|scoreCounterTens[0]~0_combout\ : std_logic;
SIGNAL \inst2|scoreCounterTens[1]~2_combout\ : std_logic;
SIGNAL \inst2|scoreCounterTens[2]~3_combout\ : std_logic;
SIGNAL \inst2|scoreCounterTens[3]~4_combout\ : std_logic;
SIGNAL \mouseX1_7seg|Mux0~0_combout\ : std_logic;
SIGNAL \mouseX1_7seg|Mux1~0_combout\ : std_logic;
SIGNAL \mouseX1_7seg|Mux2~0_combout\ : std_logic;
SIGNAL \mouseX1_7seg|Mux3~0_combout\ : std_logic;
SIGNAL \mouseX1_7seg|Mux4~0_combout\ : std_logic;
SIGNAL \mouseX1_7seg|Mux5~0_combout\ : std_logic;
SIGNAL \mouseX1_7seg|Mux6~0_combout\ : std_logic;
SIGNAL \inst2|bird_hit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mouse1|SHIFTIN\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst7|bird_Location\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst|pipe2_x\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mouse1|INCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mouse1|PACKET_COUNT\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \mouse1|PACKET_CHAR3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|pipe1_x\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mouse1|new_cursor_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mouse1|inhibit_wait_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst7|bird_y\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|scoreCounterOnes\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mouse1|SHIFTOUT\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \text_controller|char_data|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mouse1|OUTCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|scoreCounterTens\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mouse1|cursor_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst7|bird_colour|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mouse1|cursor_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mouse1|filter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|pipe3_x\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mouse1|PACKET_CHAR1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mouse1|PACKET_CHAR2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|pipe_Location\ : std_logic_vector(59 DOWNTO 0);
SIGNAL \text_controller|character_address\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \mouse1|new_cursor_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst5|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst5|red_out\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst5|red_current\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst5|pixel_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst5|pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst5|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst5|green_out\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst5|green_current\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst5|blue_out\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst5|blue_current\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \PLL1|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst4|cursor|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mouse1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \mouse1|ALT_INV_send_data~q\ : std_logic;
SIGNAL \mouse1|ALT_INV_mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \mouse1|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;
SIGNAL \mouseX1_7seg|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \mouseX2_7seg|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \mouse1|ALT_INV_left_button~q\ : std_logic;

BEGIN

horiz_sync_out <= ww_horiz_sync_out;
ww_clk <= clk;
ww_sw0 <= sw0;
ww_bt1 <= bt1;
vert_sync_out <= ww_vert_sync_out;
seg0_dec <= ww_seg0_dec;
seg2_dec <= ww_seg2_dec;
r3 <= ww_r3;
r2 <= ww_r2;
r1 <= ww_r1;
g3 <= ww_g3;
g2 <= ww_g2;
g1 <= ww_g1;
b3 <= ww_b3;
b2 <= ww_b2;
seg0 <= ww_seg0;
seg1 <= ww_seg1;
seg2 <= ww_seg2;
seg3 <= ww_seg3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\PLL1|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\PLL1|altpll_component|auto_generated|wire_pll1_clk\(0) <= \PLL1|altpll_component|auto_generated|pll1_CLK_bus\(0);
\PLL1|altpll_component|auto_generated|wire_pll1_clk\(1) <= \PLL1|altpll_component|auto_generated|pll1_CLK_bus\(1);
\PLL1|altpll_component|auto_generated|wire_pll1_clk\(2) <= \PLL1|altpll_component|auto_generated|pll1_CLK_bus\(2);
\PLL1|altpll_component|auto_generated|wire_pll1_clk\(3) <= \PLL1|altpll_component|auto_generated|pll1_CLK_bus\(3);
\PLL1|altpll_component|auto_generated|wire_pll1_clk\(4) <= \PLL1|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst7|bird_colour|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst7|rom_y[4]~6_combout\ & \inst7|rom_y[3]~4_combout\ & \inst7|rom_y[2]~2_combout\ & \inst7|rom_y[1]~0_combout\ & \inst5|pixel_row\(0) & \inst7|Add3~2_combout\ & 
\inst7|Add3~1_combout\ & \inst7|Add3~0_combout\ & \inst5|pixel_column[1]~_wirecell_combout\ & \inst5|pixel_column\(0));

\inst7|bird_colour|altsyncram_component|auto_generated|q_a\(0) <= \inst7|bird_colour|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst7|bird_colour|altsyncram_component|auto_generated|q_a\(1) <= \inst7|bird_colour|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst7|bird_colour|altsyncram_component|auto_generated|q_a\(2) <= \inst7|bird_colour|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst7|bird_colour|altsyncram_component|auto_generated|q_a\(3) <= \inst7|bird_colour|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst7|bird_colour|altsyncram_component|auto_generated|q_a\(4) <= \inst7|bird_colour|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst7|bird_colour|altsyncram_component|auto_generated|q_a\(5) <= \inst7|bird_colour|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst7|bird_colour|altsyncram_component|auto_generated|q_a\(6) <= \inst7|bird_colour|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst7|bird_colour|altsyncram_component|auto_generated|q_a\(7) <= \inst7|bird_colour|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\text_controller|char_data|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\text_controller|character_address\(5) & \text_controller|character_address\(4) & \text_controller|character_address\(3) & 
\text_controller|character_address\(2) & \text_controller|character_address\(1) & \text_controller|character_address\(0) & \inst5|pixel_row\(4) & \inst5|pixel_row\(3) & \inst5|pixel_row\(2));

\text_controller|char_data|altsyncram_component|auto_generated|q_a\(0) <= \text_controller|char_data|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\text_controller|char_data|altsyncram_component|auto_generated|q_a\(1) <= \text_controller|char_data|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\text_controller|char_data|altsyncram_component|auto_generated|q_a\(2) <= \text_controller|char_data|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\text_controller|char_data|altsyncram_component|auto_generated|q_a\(3) <= \text_controller|char_data|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\text_controller|char_data|altsyncram_component|auto_generated|q_a\(4) <= \text_controller|char_data|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\text_controller|char_data|altsyncram_component|auto_generated|q_a\(5) <= \text_controller|char_data|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\text_controller|char_data|altsyncram_component|auto_generated|q_a\(6) <= \text_controller|char_data|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\text_controller|char_data|altsyncram_component|auto_generated|q_a\(7) <= \text_controller|char_data|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\inst4|cursor|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst4|rom_y[3]~6_combout\ & \inst4|rom_y[2]~4_combout\ & \inst4|rom_y[1]~2_combout\ & \inst4|rom_y[0]~0_combout\ & \inst4|Add1~1_combout\ & \inst4|Add1~0_combout\ & 
\inst4|Add0~0_wirecell_combout\ & \inst4|rom_x[0]~0_combout\);

\inst4|cursor|altsyncram_component|auto_generated|q_a\(0) <= \inst4|cursor|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst4|cursor|altsyncram_component|auto_generated|q_a\(1) <= \inst4|cursor|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst4|cursor|altsyncram_component|auto_generated|q_a\(2) <= \inst4|cursor|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst4|cursor|altsyncram_component|auto_generated|q_a\(3) <= \inst4|cursor|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst4|cursor|altsyncram_component|auto_generated|q_a\(4) <= \inst4|cursor|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst4|cursor|altsyncram_component|auto_generated|q_a\(5) <= \inst4|cursor|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst4|cursor|altsyncram_component|auto_generated|q_a\(6) <= \inst4|cursor|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst4|cursor|altsyncram_component|auto_generated|q_a\(7) <= \inst4|cursor|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\inst5|vert_sync_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst5|vert_sync_out~q\);

\mouse1|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mouse1|MOUSE_CLK_FILTER~q\);

\PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \PLL1|altpll_component|auto_generated|wire_pll1_clk\(0));
\mouse1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ <= NOT \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\;
\mouse1|ALT_INV_send_data~q\ <= NOT \mouse1|send_data~q\;
\mouse1|ALT_INV_mouse_state.INHIBIT_TRANS~q\ <= NOT \mouse1|mouse_state.INHIBIT_TRANS~q\;
\mouse1|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\ <= NOT \mouse1|mouse_state.WAIT_OUTPUT_READY~q\;
\mouseX1_7seg|ALT_INV_Mux0~0_combout\ <= NOT \mouseX1_7seg|Mux0~0_combout\;
\mouseX2_7seg|ALT_INV_Mux0~0_combout\ <= NOT \mouseX2_7seg|Mux0~0_combout\;
\mouse1|ALT_INV_left_button~q\ <= NOT \mouse1|left_button~q\;

-- Location: LCCOMB_X31_Y25_N0
\inst2|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add2~0_combout\ = \inst|pipe_Location\(12) $ (VCC)
-- \inst2|Add2~1\ = CARRY(\inst|pipe_Location\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|pipe_Location\(12),
	datad => VCC,
	combout => \inst2|Add2~0_combout\,
	cout => \inst2|Add2~1\);

-- Location: LCCOMB_X31_Y25_N6
\inst2|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add2~6_combout\ = (\inst|pipe_Location\(15) & (!\inst2|Add2~5\)) # (!\inst|pipe_Location\(15) & ((\inst2|Add2~5\) # (GND)))
-- \inst2|Add2~7\ = CARRY((!\inst2|Add2~5\) # (!\inst|pipe_Location\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe_Location\(15),
	datad => VCC,
	cin => \inst2|Add2~5\,
	combout => \inst2|Add2~6_combout\,
	cout => \inst2|Add2~7\);

-- Location: M9K_X25_Y21_N0
\inst7|bird_colour|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"369B4DA6D369B4DAB66D36DAED76D2D9B4DA6D369B4DA6D369B4D76BB5D6E92369B4DA6D369B4DA6D369B524DA492451C9248A396AD96CB65B2D96CB65B2925B2496C92369B4DA6D369B4DA6D369B56C95472491C924723924D96CB65B2D96CB65B2D96CA396C6D369B4DA6D369B4DA6D369B574B5472396AB55AAD56AB55AB6",
	mem_init3 => X"5B2D96CB65B2D9492C96C6D369B4DA6D369B4DA6D369B5B4B548B55A4F279349E4D66AAD56AB96CB65B2B9472C96C6D369B4DA6D369B4DA6D36A49B4B57B3D9ECF669349ECF67B3D9ACB55CB65B2D95CAD96C6D369B4DA6D369B4DA6D36AD9ACF67B3D9ECF67B3D9ECF67B3D9ECF66B2D572D96CB69246D369B4DA6D369B4DA6D36AD9E4F67B3D9ECF67B3D9ECF67B3D9ECF67B3C96AB96CB69246D369B4DA6D369B4DA6D36AD9E4F67B3D9ECF67B3D9ECF67B3D9ECF67B3D9ECB56CB68DA6D369B4DA6D369B4DA6D36AD9E4F67B3D9ECF67B3D9ECF67B3D9ECF67B3D9ECD65AB68DA6D369B4DA6D369B4DA6D36A49ECF67B3D9ECF67B3D9ECF67B3D9ECF67B3",
	mem_init2 => X"D9ECF66AAD8DA6D369B4DA6D369B4DA6D5B3EDECF67B3D9ECF67B3D9ECF67B3D9ECF67B3D9ECF6692D8DA6D369B4DA6D369B56CFB7B3D9E4F67B3D9ECF67B3D9ECF67B3D9ECF67B3D9ECF67B248DA6D369B4DA6D36AD9ECF67B3D9ECF67B3D9ECF67B3D9ECF67B3D9ECF67B3D9ECF67D9B4DA6D369B4DA6D36BEDECF67B3D9ECF27B3D9ECF67B3D9ECF67B3D9ECF67B3C9ECF65B1B4DA6D369B4DA6D493D9ECF67B3D9ECF67B3D9ECF67B3D9ECF67B3D9ECF67B3D9E4FB491B4DA6D369B4DA6D493D9ECF67B3D9F6FB7B349A4D2793C9E4F67B3D9ECF67B3D9ECF67DA48DA6D369B4DA6D36B6DECF67B3D9ECF67B3D9ECF67B3D9ECF67B3D9ECF67B3D9ECF67B",
	mem_init1 => X"3D9246D369B4DA6D36A49B6F67B3D9ECF6793C9ECF67B3D9ECF67B3D9ECF67B3D9ECF67B3D9ECB6369B4DA6D369B4DAD67B3D9ECF67B3D9ECD27B3D9ECF67B3D9ECF67B3C9ECF67B3D9ECF65B1B4DA6D369B4DA6D49369F6F6793D9ECF67DBD9ECF67B3D9ECD67B3D9ECF67B3D9ECF67B2D8DA6D369B4DA6D369B5FEFF7FB6C00FF7FBD9ECF67B3D96C6D49359ECF67B3D9ECF67B3D9246D369B4DA6D369B5B6FF7FBFDFEFF7B3D9ECF67B2D8DA6D369B524DB7B3D9ECF67B3C9B66D369B4DA6D369B5F6F67B3EDFEFB7B3D9ECF66D9B4DA6D369B4DA6D5B36DECF67B3D9EC92369B4DA6D36A49ACD27B3D9ECF67B3D9ECDB369B4DA6D369B4DA6D369B524D67",
	mem_init0 => X"B3EDF692369B4DA6D36AD9E4F679001ECF67B3D9F692369B4DA6D369B4DA6D369B4DA6D369B4DA6D369B4DA6D36B59ECF67B349ECF67B3ED246D369B4DA6D369B4DA6D369B4DA6D369B4DA6D369B4DA6D493D9ECF67B3D9ECF66DA48DA6D369B4DA6D369B4DA6D369B4DA6D369B4DA6D369B4DA6D6B3D9ECF67B3D9ECDB491B4DA6D369B4DA6D369B4DA6D369B4DA6D369B4DA6D369B4DAB67B3D9ECF67B3ED6C6D369B4DA6D369B4DA6D369B4DA6D369B4DA6D369B4DA6D369B4DAB67B3D9ECFA6B248DA6D369B4DA6D369B4DA6D369B4DA6D369B4DA6D369B4DA6D369B4DA926B3596C92369B4DA6D369B4DA6D369B4DA6D369B4DA6D369B4DA6D369B4DA6D",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../sprites/patrick.mif",
	init_file_layout => "port_a",
	logical_ram_name => "bird:inst7|patrick_rom:bird_colour|altsyncram:altsyncram_component|altsyncram_saa1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \inst7|bird_colour|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst7|bird_colour|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X23_Y20_N2
\inst7|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add1~0_combout\ = \inst7|bird_y\(5) $ (VCC)
-- \inst7|Add1~1\ = CARRY(\inst7|bird_y\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|bird_y\(5),
	datad => VCC,
	combout => \inst7|Add1~0_combout\,
	cout => \inst7|Add1~1\);

-- Location: LCCOMB_X23_Y20_N8
\inst7|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add1~6_combout\ = (\inst7|bird_y\(8) & (!\inst7|Add1~5\)) # (!\inst7|bird_y\(8) & ((\inst7|Add1~5\) # (GND)))
-- \inst7|Add1~7\ = CARRY((!\inst7|Add1~5\) # (!\inst7|bird_y\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bird_y\(8),
	datad => VCC,
	cin => \inst7|Add1~5\,
	combout => \inst7|Add1~6_combout\,
	cout => \inst7|Add1~7\);

-- Location: LCCOMB_X23_Y20_N10
\inst7|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add1~8_combout\ = \inst7|Add1~7\ $ (!\inst7|bird_y\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|bird_y\(9),
	cin => \inst7|Add1~7\,
	combout => \inst7|Add1~8_combout\);

-- Location: LCCOMB_X10_Y24_N0
\inst|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~0_combout\ = (\inst|pipe2_x\(2) & (\inst|pipe2_x\(3) $ (GND))) # (!\inst|pipe2_x\(2) & (!\inst|pipe2_x\(3) & VCC))
-- \inst|Add2~1\ = CARRY((\inst|pipe2_x\(2) & !\inst|pipe2_x\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe2_x\(2),
	datab => \inst|pipe2_x\(3),
	datad => VCC,
	combout => \inst|Add2~0_combout\,
	cout => \inst|Add2~1\);

-- Location: LCCOMB_X10_Y24_N2
\inst|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~2_combout\ = (\inst|pipe2_x\(4) & (\inst|Add2~1\ & VCC)) # (!\inst|pipe2_x\(4) & (!\inst|Add2~1\))
-- \inst|Add2~3\ = CARRY((!\inst|pipe2_x\(4) & !\inst|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pipe2_x\(4),
	datad => VCC,
	cin => \inst|Add2~1\,
	combout => \inst|Add2~2_combout\,
	cout => \inst|Add2~3\);

-- Location: LCCOMB_X10_Y24_N8
\inst|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~8_combout\ = (\inst|pipe2_x\(7) & (!\inst|Add2~7\ & VCC)) # (!\inst|pipe2_x\(7) & (\inst|Add2~7\ $ (GND)))
-- \inst|Add2~9\ = CARRY((!\inst|pipe2_x\(7) & !\inst|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe2_x\(7),
	datad => VCC,
	cin => \inst|Add2~7\,
	combout => \inst|Add2~8_combout\,
	cout => \inst|Add2~9\);

-- Location: LCCOMB_X10_Y24_N10
\inst|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~10_combout\ = (\inst|pipe2_x\(8) & ((\inst|Add2~9\) # (GND))) # (!\inst|pipe2_x\(8) & (!\inst|Add2~9\))
-- \inst|Add2~11\ = CARRY((\inst|pipe2_x\(8)) # (!\inst|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe2_x\(8),
	datad => VCC,
	cin => \inst|Add2~9\,
	combout => \inst|Add2~10_combout\,
	cout => \inst|Add2~11\);

-- Location: LCCOMB_X20_Y21_N8
\inst|LessThan9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan9~1_cout\ = CARRY((\inst|pipe3_x\(1) & !\inst5|pixel_column\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe3_x\(1),
	datab => \inst5|pixel_column\(1),
	datad => VCC,
	cout => \inst|LessThan9~1_cout\);

-- Location: LCCOMB_X20_Y21_N10
\inst|LessThan9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan9~3_cout\ = CARRY((\inst|pipe3_x\(2) & ((\inst5|pixel_column\(2)) # (!\inst|LessThan9~1_cout\))) # (!\inst|pipe3_x\(2) & (\inst5|pixel_column\(2) & !\inst|LessThan9~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe3_x\(2),
	datab => \inst5|pixel_column\(2),
	datad => VCC,
	cin => \inst|LessThan9~1_cout\,
	cout => \inst|LessThan9~3_cout\);

-- Location: LCCOMB_X20_Y21_N12
\inst|LessThan9~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan9~5_cout\ = CARRY((\inst|pipe3_x\(3) & (!\inst5|pixel_column\(3) & !\inst|LessThan9~3_cout\)) # (!\inst|pipe3_x\(3) & ((!\inst|LessThan9~3_cout\) # (!\inst5|pixel_column\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe3_x\(3),
	datab => \inst5|pixel_column\(3),
	datad => VCC,
	cin => \inst|LessThan9~3_cout\,
	cout => \inst|LessThan9~5_cout\);

-- Location: LCCOMB_X20_Y21_N14
\inst|LessThan9~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan9~7_cout\ = CARRY((\inst|pipe3_x\(4) & ((\inst5|pixel_column\(4)) # (!\inst|LessThan9~5_cout\))) # (!\inst|pipe3_x\(4) & (\inst5|pixel_column\(4) & !\inst|LessThan9~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe3_x\(4),
	datab => \inst5|pixel_column\(4),
	datad => VCC,
	cin => \inst|LessThan9~5_cout\,
	cout => \inst|LessThan9~7_cout\);

-- Location: LCCOMB_X20_Y21_N16
\inst|LessThan9~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan9~9_cout\ = CARRY((\inst|pipe3_x\(5) & (!\inst5|pixel_column\(5) & !\inst|LessThan9~7_cout\)) # (!\inst|pipe3_x\(5) & ((!\inst|LessThan9~7_cout\) # (!\inst5|pixel_column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe3_x\(5),
	datab => \inst5|pixel_column\(5),
	datad => VCC,
	cin => \inst|LessThan9~7_cout\,
	cout => \inst|LessThan9~9_cout\);

-- Location: LCCOMB_X20_Y21_N18
\inst|LessThan9~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan9~11_cout\ = CARRY((\inst|pipe3_x\(6) & ((\inst5|pixel_column\(6)) # (!\inst|LessThan9~9_cout\))) # (!\inst|pipe3_x\(6) & (\inst5|pixel_column\(6) & !\inst|LessThan9~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe3_x\(6),
	datab => \inst5|pixel_column\(6),
	datad => VCC,
	cin => \inst|LessThan9~9_cout\,
	cout => \inst|LessThan9~11_cout\);

-- Location: LCCOMB_X20_Y21_N20
\inst|LessThan9~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan9~13_cout\ = CARRY((\inst5|pixel_column\(7) & (\inst|pipe3_x\(7) & !\inst|LessThan9~11_cout\)) # (!\inst5|pixel_column\(7) & ((\inst|pipe3_x\(7)) # (!\inst|LessThan9~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(7),
	datab => \inst|pipe3_x\(7),
	datad => VCC,
	cin => \inst|LessThan9~11_cout\,
	cout => \inst|LessThan9~13_cout\);

-- Location: LCCOMB_X20_Y21_N22
\inst|LessThan9~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan9~15_cout\ = CARRY((\inst5|pixel_column\(8) & ((!\inst|LessThan9~13_cout\) # (!\inst|pipe3_x\(8)))) # (!\inst5|pixel_column\(8) & (!\inst|pipe3_x\(8) & !\inst|LessThan9~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(8),
	datab => \inst|pipe3_x\(8),
	datad => VCC,
	cin => \inst|LessThan9~13_cout\,
	cout => \inst|LessThan9~15_cout\);

-- Location: LCCOMB_X20_Y21_N24
\inst|LessThan9~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan9~16_combout\ = (\inst5|pixel_column\(9) & (!\inst|LessThan9~15_cout\ & !\inst|pipe3_x\(9))) # (!\inst5|pixel_column\(9) & ((!\inst|pipe3_x\(9)) # (!\inst|LessThan9~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pixel_column\(9),
	datad => \inst|pipe3_x\(9),
	cin => \inst|LessThan9~15_cout\,
	combout => \inst|LessThan9~16_combout\);

-- Location: LCCOMB_X22_Y21_N0
\inst|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~0_combout\ = (\inst|pipe3_x\(3) & (!\inst|pipe3_x\(2) & VCC)) # (!\inst|pipe3_x\(3) & (\inst|pipe3_x\(2) $ (GND)))
-- \inst|Add3~1\ = CARRY((!\inst|pipe3_x\(3) & !\inst|pipe3_x\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe3_x\(3),
	datab => \inst|pipe3_x\(2),
	datad => VCC,
	combout => \inst|Add3~0_combout\,
	cout => \inst|Add3~1\);

-- Location: LCCOMB_X22_Y21_N2
\inst|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~2_combout\ = (\inst|pipe3_x\(4) & (!\inst|Add3~1\)) # (!\inst|pipe3_x\(4) & (\inst|Add3~1\ & VCC))
-- \inst|Add3~3\ = CARRY((\inst|pipe3_x\(4) & !\inst|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe3_x\(4),
	datad => VCC,
	cin => \inst|Add3~1\,
	combout => \inst|Add3~2_combout\,
	cout => \inst|Add3~3\);

-- Location: LCCOMB_X22_Y21_N4
\inst|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~4_combout\ = (\inst|pipe3_x\(5) & (!\inst|Add3~3\ & VCC)) # (!\inst|pipe3_x\(5) & (\inst|Add3~3\ $ (GND)))
-- \inst|Add3~5\ = CARRY((!\inst|pipe3_x\(5) & !\inst|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pipe3_x\(5),
	datad => VCC,
	cin => \inst|Add3~3\,
	combout => \inst|Add3~4_combout\,
	cout => \inst|Add3~5\);

-- Location: LCCOMB_X22_Y21_N6
\inst|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~6_combout\ = (\inst|pipe3_x\(6) & ((\inst|Add3~5\) # (GND))) # (!\inst|pipe3_x\(6) & (!\inst|Add3~5\))
-- \inst|Add3~7\ = CARRY((\inst|pipe3_x\(6)) # (!\inst|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe3_x\(6),
	datad => VCC,
	cin => \inst|Add3~5\,
	combout => \inst|Add3~6_combout\,
	cout => \inst|Add3~7\);

-- Location: LCCOMB_X22_Y21_N8
\inst|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~8_combout\ = (\inst|pipe3_x\(7) & (\inst|Add3~7\ $ (GND))) # (!\inst|pipe3_x\(7) & (!\inst|Add3~7\ & VCC))
-- \inst|Add3~9\ = CARRY((\inst|pipe3_x\(7) & !\inst|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pipe3_x\(7),
	datad => VCC,
	cin => \inst|Add3~7\,
	combout => \inst|Add3~8_combout\,
	cout => \inst|Add3~9\);

-- Location: LCCOMB_X22_Y21_N10
\inst|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~10_combout\ = (\inst|pipe3_x\(8) & (!\inst|Add3~9\)) # (!\inst|pipe3_x\(8) & ((\inst|Add3~9\) # (GND)))
-- \inst|Add3~11\ = CARRY((!\inst|Add3~9\) # (!\inst|pipe3_x\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pipe3_x\(8),
	datad => VCC,
	cin => \inst|Add3~9\,
	combout => \inst|Add3~10_combout\,
	cout => \inst|Add3~11\);

-- Location: LCCOMB_X22_Y21_N12
\inst|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~12_combout\ = \inst|pipe3_x\(9) $ (\inst|Add3~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe3_x\(9),
	cin => \inst|Add3~11\,
	combout => \inst|Add3~12_combout\);

-- Location: LCCOMB_X23_Y21_N6
\inst|LessThan10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan10~1_cout\ = CARRY(\inst5|pixel_column\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(0),
	datad => VCC,
	cout => \inst|LessThan10~1_cout\);

-- Location: LCCOMB_X23_Y21_N8
\inst|LessThan10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan10~3_cout\ = CARRY((\inst|pipe3_x\(1) & ((!\inst|LessThan10~1_cout\) # (!\inst5|pixel_column\(1)))) # (!\inst|pipe3_x\(1) & (!\inst5|pixel_column\(1) & !\inst|LessThan10~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe3_x\(1),
	datab => \inst5|pixel_column\(1),
	datad => VCC,
	cin => \inst|LessThan10~1_cout\,
	cout => \inst|LessThan10~3_cout\);

-- Location: LCCOMB_X23_Y21_N10
\inst|LessThan10~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan10~5_cout\ = CARRY((\inst5|pixel_column\(2) & ((!\inst|LessThan10~3_cout\) # (!\inst|pipe3_x\(2)))) # (!\inst5|pixel_column\(2) & (!\inst|pipe3_x\(2) & !\inst|LessThan10~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(2),
	datab => \inst|pipe3_x\(2),
	datad => VCC,
	cin => \inst|LessThan10~3_cout\,
	cout => \inst|LessThan10~5_cout\);

-- Location: LCCOMB_X23_Y21_N12
\inst|LessThan10~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan10~7_cout\ = CARRY((\inst|Add3~0_combout\ & ((!\inst|LessThan10~5_cout\) # (!\inst5|pixel_column\(3)))) # (!\inst|Add3~0_combout\ & (!\inst5|pixel_column\(3) & !\inst|LessThan10~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~0_combout\,
	datab => \inst5|pixel_column\(3),
	datad => VCC,
	cin => \inst|LessThan10~5_cout\,
	cout => \inst|LessThan10~7_cout\);

-- Location: LCCOMB_X23_Y21_N14
\inst|LessThan10~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan10~9_cout\ = CARRY((\inst|Add3~2_combout\ & (\inst5|pixel_column\(4) & !\inst|LessThan10~7_cout\)) # (!\inst|Add3~2_combout\ & ((\inst5|pixel_column\(4)) # (!\inst|LessThan10~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~2_combout\,
	datab => \inst5|pixel_column\(4),
	datad => VCC,
	cin => \inst|LessThan10~7_cout\,
	cout => \inst|LessThan10~9_cout\);

-- Location: LCCOMB_X23_Y21_N16
\inst|LessThan10~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan10~11_cout\ = CARRY((\inst5|pixel_column\(5) & (\inst|Add3~4_combout\ & !\inst|LessThan10~9_cout\)) # (!\inst5|pixel_column\(5) & ((\inst|Add3~4_combout\) # (!\inst|LessThan10~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(5),
	datab => \inst|Add3~4_combout\,
	datad => VCC,
	cin => \inst|LessThan10~9_cout\,
	cout => \inst|LessThan10~11_cout\);

-- Location: LCCOMB_X23_Y21_N18
\inst|LessThan10~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan10~13_cout\ = CARRY((\inst5|pixel_column\(6) & ((!\inst|LessThan10~11_cout\) # (!\inst|Add3~6_combout\))) # (!\inst5|pixel_column\(6) & (!\inst|Add3~6_combout\ & !\inst|LessThan10~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(6),
	datab => \inst|Add3~6_combout\,
	datad => VCC,
	cin => \inst|LessThan10~11_cout\,
	cout => \inst|LessThan10~13_cout\);

-- Location: LCCOMB_X23_Y21_N20
\inst|LessThan10~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan10~15_cout\ = CARRY((\inst|Add3~8_combout\ & ((!\inst|LessThan10~13_cout\) # (!\inst5|pixel_column\(7)))) # (!\inst|Add3~8_combout\ & (!\inst5|pixel_column\(7) & !\inst|LessThan10~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~8_combout\,
	datab => \inst5|pixel_column\(7),
	datad => VCC,
	cin => \inst|LessThan10~13_cout\,
	cout => \inst|LessThan10~15_cout\);

-- Location: LCCOMB_X23_Y21_N22
\inst|LessThan10~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan10~17_cout\ = CARRY((\inst|Add3~10_combout\ & (\inst5|pixel_column\(8) & !\inst|LessThan10~15_cout\)) # (!\inst|Add3~10_combout\ & ((\inst5|pixel_column\(8)) # (!\inst|LessThan10~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~10_combout\,
	datab => \inst5|pixel_column\(8),
	datad => VCC,
	cin => \inst|LessThan10~15_cout\,
	cout => \inst|LessThan10~17_cout\);

-- Location: LCCOMB_X23_Y21_N24
\inst|LessThan10~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan10~18_combout\ = (\inst5|pixel_column\(9) & ((\inst|LessThan10~17_cout\) # (!\inst|Add3~12_combout\))) # (!\inst5|pixel_column\(9) & (\inst|LessThan10~17_cout\ & !\inst|Add3~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pixel_column\(9),
	datad => \inst|Add3~12_combout\,
	cin => \inst|LessThan10~17_cout\,
	combout => \inst|LessThan10~18_combout\);

-- Location: M9K_X25_Y24_N0
\text_controller|char_data|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"000000060001800060001E0006000180007E00000007E001800060001E0006000180007E000000078001B00066001980066001B0007800000003C00198006000180006000198003C00000007C001980066001F0006600198007C000000066001980066001F80066000F0001800000003C001980006000F8006600198003C0000",
	mem_init3 => X"0003C001980066000F0006600198003C00000001800060001800060000C00198007E00000003C001980066001F0006000198003C00000003C00198000600018007C00180007E00000000600018007F00198001E00038000600000003C00198000600070000600198003C00000007E00180003000030000600198003C00000007E00060001800060003800060001800000003C001980066001D8006E00198003C000000060000C000180003000060000C0000000000018000600000000000000000000000000000000000000000001F80000000000000000C00018000600000000000000000000000000000000000600018001F80018000600000000000000001",
	mem_init2 => X"98003C003FC003C00198000000000003000060000C00030000C00060003000000000C000600030000C0003000060000C00000000000000000000000001800030000600000003F001980067000E0003C00198003C00000004600198003000060000C001980062000000018001F00006000F00060000F800180000000660019800FF0019800FF001980066000000000000000000000000066001980066000000018000000000000600018000600018000000000000000000000000000000000000000000010000C0007F001FC0030000400000000600018000600018001F8003C00060000000000003C00030000C00030000C00030003C000000018000F0007E00",
	mem_init1 => X"060001800060001800000003C000C00030000C00030000C0003C00000007E00180003000060000C00018007E000000018000600018000F0006600198006600000006600198003C00060003C001980066000000063001DC007F001AC00630018C0063000000018000F0006600198006600198006600000003C00198006600198006600198006600000001800060001800060001800060007E00000003C001980006000F0006000198003C000000066001B00078001F0006600198007C00000000E000F0006600198006600198003C000000060001800060001F0006600198007C00000003C00198006600198006600198003C00000006600198006E001F8007E0",
	mem_init0 => X"01D800660000000630018C0063001AC007F001DC006300000007E001800060001800060001800060000000066001B00078001C00078001B00066000000038001B0000C00030000C00030001E00000003C00060001800060001800060003C000000066001980066001F8006600198006600000003C001980066001B8006000198003C000000060001800060001E0006000180007E00000007E001800060001E0006000180007E000000078001B00066001980066001B0007800000003C00198006000180006000198003C00000007C001980066001F0006600198007C000000066001980066001F80066000F0001800000003C001880060001B8006E00198003C",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "tcgrom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "text_controller:text_controller|char_rom:char_data|altsyncram:altsyncram_component|altsyncram_kt91:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 9,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \text_controller|char_data|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \text_controller|char_data|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y21_N2
\inst4|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan2~1_cout\ = CARRY((!\inst5|pixel_row\(0) & \mouse1|cursor_row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_row\(0),
	datab => \mouse1|cursor_row\(0),
	datad => VCC,
	cout => \inst4|LessThan2~1_cout\);

-- Location: LCCOMB_X24_Y21_N4
\inst4|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan2~3_cout\ = CARRY((\inst5|pixel_row\(1) & ((!\inst4|LessThan2~1_cout\) # (!\mouse1|cursor_row\(1)))) # (!\inst5|pixel_row\(1) & (!\mouse1|cursor_row\(1) & !\inst4|LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_row\(1),
	datab => \mouse1|cursor_row\(1),
	datad => VCC,
	cin => \inst4|LessThan2~1_cout\,
	cout => \inst4|LessThan2~3_cout\);

-- Location: LCCOMB_X24_Y21_N6
\inst4|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan2~5_cout\ = CARRY((\mouse1|cursor_row\(2) & ((!\inst4|LessThan2~3_cout\) # (!\inst5|pixel_row\(2)))) # (!\mouse1|cursor_row\(2) & (!\inst5|pixel_row\(2) & !\inst4|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(2),
	datab => \inst5|pixel_row\(2),
	datad => VCC,
	cin => \inst4|LessThan2~3_cout\,
	cout => \inst4|LessThan2~5_cout\);

-- Location: LCCOMB_X24_Y21_N8
\inst4|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan2~7_cout\ = CARRY((\inst5|pixel_row\(3) & ((!\inst4|LessThan2~5_cout\) # (!\mouse1|cursor_row\(3)))) # (!\inst5|pixel_row\(3) & (!\mouse1|cursor_row\(3) & !\inst4|LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_row\(3),
	datab => \mouse1|cursor_row\(3),
	datad => VCC,
	cin => \inst4|LessThan2~5_cout\,
	cout => \inst4|LessThan2~7_cout\);

-- Location: LCCOMB_X24_Y21_N10
\inst4|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan2~9_cout\ = CARRY((\mouse1|cursor_row\(4) & ((!\inst4|LessThan2~7_cout\) # (!\inst5|pixel_row\(4)))) # (!\mouse1|cursor_row\(4) & (!\inst5|pixel_row\(4) & !\inst4|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(4),
	datab => \inst5|pixel_row\(4),
	datad => VCC,
	cin => \inst4|LessThan2~7_cout\,
	cout => \inst4|LessThan2~9_cout\);

-- Location: LCCOMB_X24_Y21_N12
\inst4|LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan2~11_cout\ = CARRY((\mouse1|cursor_row\(5) & (\inst5|pixel_row\(5) & !\inst4|LessThan2~9_cout\)) # (!\mouse1|cursor_row\(5) & ((\inst5|pixel_row\(5)) # (!\inst4|LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(5),
	datab => \inst5|pixel_row\(5),
	datad => VCC,
	cin => \inst4|LessThan2~9_cout\,
	cout => \inst4|LessThan2~11_cout\);

-- Location: LCCOMB_X24_Y21_N14
\inst4|LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan2~13_cout\ = CARRY((\inst5|pixel_row\(6) & (\mouse1|cursor_row\(6) & !\inst4|LessThan2~11_cout\)) # (!\inst5|pixel_row\(6) & ((\mouse1|cursor_row\(6)) # (!\inst4|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_row\(6),
	datab => \mouse1|cursor_row\(6),
	datad => VCC,
	cin => \inst4|LessThan2~11_cout\,
	cout => \inst4|LessThan2~13_cout\);

-- Location: LCCOMB_X24_Y21_N16
\inst4|LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan2~15_cout\ = CARRY((\inst5|pixel_row\(7) & ((!\inst4|LessThan2~13_cout\) # (!\mouse1|cursor_row\(7)))) # (!\inst5|pixel_row\(7) & (!\mouse1|cursor_row\(7) & !\inst4|LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_row\(7),
	datab => \mouse1|cursor_row\(7),
	datad => VCC,
	cin => \inst4|LessThan2~13_cout\,
	cout => \inst4|LessThan2~15_cout\);

-- Location: LCCOMB_X24_Y21_N18
\inst4|LessThan2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan2~16_combout\ = (\inst5|pixel_row\(8) & (!\inst4|LessThan2~15_cout\ & \mouse1|cursor_row\(8))) # (!\inst5|pixel_row\(8) & ((\mouse1|cursor_row\(8)) # (!\inst4|LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pixel_row\(8),
	datad => \mouse1|cursor_row\(8),
	cin => \inst4|LessThan2~15_cout\,
	combout => \inst4|LessThan2~16_combout\);

-- Location: LCCOMB_X31_Y21_N22
\inst4|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add3~0_combout\ = (\mouse1|cursor_column\(4) & (\mouse1|cursor_column\(5) $ (VCC))) # (!\mouse1|cursor_column\(4) & (\mouse1|cursor_column\(5) & VCC))
-- \inst4|Add3~1\ = CARRY((\mouse1|cursor_column\(4) & \mouse1|cursor_column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(4),
	datab => \mouse1|cursor_column\(5),
	datad => VCC,
	combout => \inst4|Add3~0_combout\,
	cout => \inst4|Add3~1\);

-- Location: LCCOMB_X31_Y21_N26
\inst4|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add3~4_combout\ = (\mouse1|cursor_column\(7) & (\inst4|Add3~3\ $ (GND))) # (!\mouse1|cursor_column\(7) & (!\inst4|Add3~3\ & VCC))
-- \inst4|Add3~5\ = CARRY((\mouse1|cursor_column\(7) & !\inst4|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|cursor_column\(7),
	datad => VCC,
	cin => \inst4|Add3~3\,
	combout => \inst4|Add3~4_combout\,
	cout => \inst4|Add3~5\);

-- Location: LCCOMB_X31_Y21_N28
\inst4|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add3~6_combout\ = (\mouse1|cursor_column\(8) & (!\inst4|Add3~5\)) # (!\mouse1|cursor_column\(8) & ((\inst4|Add3~5\) # (GND)))
-- \inst4|Add3~7\ = CARRY((!\inst4|Add3~5\) # (!\mouse1|cursor_column\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(8),
	datad => VCC,
	cin => \inst4|Add3~5\,
	combout => \inst4|Add3~6_combout\,
	cout => \inst4|Add3~7\);

-- Location: LCCOMB_X31_Y21_N30
\inst4|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add3~8_combout\ = \inst4|Add3~7\ $ (!\mouse1|cursor_column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|cursor_column\(9),
	cin => \inst4|Add3~7\,
	combout => \inst4|Add3~8_combout\);

-- Location: LCCOMB_X28_Y21_N6
\inst4|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add4~4_combout\ = (\mouse1|cursor_row\(7) & (\inst4|Add4~3\ $ (GND))) # (!\mouse1|cursor_row\(7) & (!\inst4|Add4~3\ & VCC))
-- \inst4|Add4~5\ = CARRY((\mouse1|cursor_row\(7) & !\inst4|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(7),
	datad => VCC,
	cin => \inst4|Add4~3\,
	combout => \inst4|Add4~4_combout\,
	cout => \inst4|Add4~5\);

-- Location: LCCOMB_X30_Y23_N16
\inst5|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add0~14_combout\ = (\inst5|h_count\(7) & (!\inst5|Add0~13\)) # (!\inst5|h_count\(7) & ((\inst5|Add0~13\) # (GND)))
-- \inst5|Add0~15\ = CARRY((!\inst5|Add0~13\) # (!\inst5|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|h_count\(7),
	datad => VCC,
	cin => \inst5|Add0~13\,
	combout => \inst5|Add0~14_combout\,
	cout => \inst5|Add0~15\);

-- Location: LCCOMB_X30_Y23_N18
\inst5|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add0~16_combout\ = (\inst5|h_count\(8) & (\inst5|Add0~15\ $ (GND))) # (!\inst5|h_count\(8) & (!\inst5|Add0~15\ & VCC))
-- \inst5|Add0~17\ = CARRY((\inst5|h_count\(8) & !\inst5|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|h_count\(8),
	datad => VCC,
	cin => \inst5|Add0~15\,
	combout => \inst5|Add0~16_combout\,
	cout => \inst5|Add0~17\);

-- Location: LCCOMB_X30_Y23_N20
\inst5|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add0~18_combout\ = \inst5|Add0~17\ $ (\inst5|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst5|h_count\(9),
	cin => \inst5|Add0~17\,
	combout => \inst5|Add0~18_combout\);

-- Location: LCCOMB_X9_Y24_N18
\inst|Add6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~14_combout\ = (\inst|pipe2_x\(8) & (!\inst|Add6~13\)) # (!\inst|pipe2_x\(8) & (\inst|Add6~13\ & VCC))
-- \inst|Add6~15\ = CARRY((\inst|pipe2_x\(8) & !\inst|Add6~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe2_x\(8),
	datad => VCC,
	cin => \inst|Add6~13\,
	combout => \inst|Add6~14_combout\,
	cout => \inst|Add6~15\);

-- Location: LCCOMB_X28_Y23_N2
\inst|Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~2_combout\ = (\inst|pipe1_x\(2) & (!\inst|Add5~1\)) # (!\inst|pipe1_x\(2) & (\inst|Add5~1\ & VCC))
-- \inst|Add5~3\ = CARRY((\inst|pipe1_x\(2) & !\inst|Add5~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pipe1_x\(2),
	datad => VCC,
	cin => \inst|Add5~1\,
	combout => \inst|Add5~2_combout\,
	cout => \inst|Add5~3\);

-- Location: LCCOMB_X28_Y23_N4
\inst|Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~4_combout\ = (\inst|pipe1_x\(3) & ((GND) # (!\inst|Add5~3\))) # (!\inst|pipe1_x\(3) & (\inst|Add5~3\ $ (GND)))
-- \inst|Add5~5\ = CARRY((\inst|pipe1_x\(3)) # (!\inst|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe1_x\(3),
	datad => VCC,
	cin => \inst|Add5~3\,
	combout => \inst|Add5~4_combout\,
	cout => \inst|Add5~5\);

-- Location: LCCOMB_X28_Y23_N6
\inst|Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~6_combout\ = (\inst|pipe1_x\(4) & (!\inst|Add5~5\)) # (!\inst|pipe1_x\(4) & (\inst|Add5~5\ & VCC))
-- \inst|Add5~7\ = CARRY((\inst|pipe1_x\(4) & !\inst|Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe1_x\(4),
	datad => VCC,
	cin => \inst|Add5~5\,
	combout => \inst|Add5~6_combout\,
	cout => \inst|Add5~7\);

-- Location: LCCOMB_X21_Y21_N0
\inst|Add7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add7~0_combout\ = \inst|pipe3_x\(1) $ (VCC)
-- \inst|Add7~1\ = CARRY(\inst|pipe3_x\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe3_x\(1),
	datad => VCC,
	combout => \inst|Add7~0_combout\,
	cout => \inst|Add7~1\);

-- Location: LCCOMB_X21_Y21_N2
\inst|Add7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add7~2_combout\ = (\inst|pipe3_x\(2) & (!\inst|Add7~1\)) # (!\inst|pipe3_x\(2) & (\inst|Add7~1\ & VCC))
-- \inst|Add7~3\ = CARRY((\inst|pipe3_x\(2) & !\inst|Add7~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe3_x\(2),
	datad => VCC,
	cin => \inst|Add7~1\,
	combout => \inst|Add7~2_combout\,
	cout => \inst|Add7~3\);

-- Location: LCCOMB_X21_Y21_N4
\inst|Add7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add7~4_combout\ = (\inst|pipe3_x\(3) & (\inst|Add7~3\ $ (GND))) # (!\inst|pipe3_x\(3) & ((GND) # (!\inst|Add7~3\)))
-- \inst|Add7~5\ = CARRY((!\inst|Add7~3\) # (!\inst|pipe3_x\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pipe3_x\(3),
	datad => VCC,
	cin => \inst|Add7~3\,
	combout => \inst|Add7~4_combout\,
	cout => \inst|Add7~5\);

-- Location: LCCOMB_X21_Y21_N6
\inst|Add7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add7~6_combout\ = (\inst|pipe3_x\(4) & (!\inst|Add7~5\)) # (!\inst|pipe3_x\(4) & (\inst|Add7~5\ & VCC))
-- \inst|Add7~7\ = CARRY((\inst|pipe3_x\(4) & !\inst|Add7~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe3_x\(4),
	datad => VCC,
	cin => \inst|Add7~5\,
	combout => \inst|Add7~6_combout\,
	cout => \inst|Add7~7\);

-- Location: LCCOMB_X21_Y21_N8
\inst|Add7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add7~8_combout\ = (\inst|pipe3_x\(5) & (\inst|Add7~7\ $ (GND))) # (!\inst|pipe3_x\(5) & ((GND) # (!\inst|Add7~7\)))
-- \inst|Add7~9\ = CARRY((!\inst|Add7~7\) # (!\inst|pipe3_x\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pipe3_x\(5),
	datad => VCC,
	cin => \inst|Add7~7\,
	combout => \inst|Add7~8_combout\,
	cout => \inst|Add7~9\);

-- Location: LCCOMB_X21_Y21_N10
\inst|Add7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add7~10_combout\ = (\inst|pipe3_x\(6) & (!\inst|Add7~9\)) # (!\inst|pipe3_x\(6) & (\inst|Add7~9\ & VCC))
-- \inst|Add7~11\ = CARRY((\inst|pipe3_x\(6) & !\inst|Add7~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pipe3_x\(6),
	datad => VCC,
	cin => \inst|Add7~9\,
	combout => \inst|Add7~10_combout\,
	cout => \inst|Add7~11\);

-- Location: LCCOMB_X21_Y21_N12
\inst|Add7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add7~12_combout\ = (\inst|pipe3_x\(7) & ((GND) # (!\inst|Add7~11\))) # (!\inst|pipe3_x\(7) & (\inst|Add7~11\ $ (GND)))
-- \inst|Add7~13\ = CARRY((\inst|pipe3_x\(7)) # (!\inst|Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe3_x\(7),
	datad => VCC,
	cin => \inst|Add7~11\,
	combout => \inst|Add7~12_combout\,
	cout => \inst|Add7~13\);

-- Location: LCCOMB_X21_Y21_N14
\inst|Add7~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add7~14_combout\ = (\inst|pipe3_x\(8) & (\inst|Add7~13\ & VCC)) # (!\inst|pipe3_x\(8) & (!\inst|Add7~13\))
-- \inst|Add7~15\ = CARRY((!\inst|pipe3_x\(8) & !\inst|Add7~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pipe3_x\(8),
	datad => VCC,
	cin => \inst|Add7~13\,
	combout => \inst|Add7~14_combout\,
	cout => \inst|Add7~15\);

-- Location: LCCOMB_X21_Y21_N16
\inst|Add7~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add7~16_combout\ = \inst|pipe3_x\(9) $ (!\inst|Add7~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe3_x\(9),
	cin => \inst|Add7~15\,
	combout => \inst|Add7~16_combout\);

-- Location: FF_X30_Y21_N3
\mouse1|new_cursor_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|new_cursor_row[1]~12_combout\,
	asdata => \~GND~combout\,
	sload => \mouse1|Equal4~0_combout\,
	ena => \mouse1|new_cursor_column[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(1));

-- Location: FF_X32_Y20_N27
\mouse1|new_cursor_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|new_cursor_column[9]~29_combout\,
	asdata => \~GND~combout\,
	sload => \mouse1|Equal4~0_combout\,
	ena => \mouse1|new_cursor_column[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(9));

-- Location: FF_X32_Y20_N11
\mouse1|new_cursor_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|new_cursor_column[1]~13_combout\,
	asdata => \~GND~combout\,
	sload => \mouse1|Equal4~0_combout\,
	ena => \mouse1|new_cursor_column[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(1));

-- Location: LCCOMB_X30_Y21_N2
\mouse1|new_cursor_row[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_row[1]~12_combout\ = (\mouse1|PACKET_CHAR3\(1) & ((\mouse1|cursor_row\(1) & (!\mouse1|new_cursor_row[0]~11\)) # (!\mouse1|cursor_row\(1) & ((\mouse1|new_cursor_row[0]~11\) # (GND))))) # (!\mouse1|PACKET_CHAR3\(1) & 
-- ((\mouse1|cursor_row\(1) & (\mouse1|new_cursor_row[0]~11\ & VCC)) # (!\mouse1|cursor_row\(1) & (!\mouse1|new_cursor_row[0]~11\))))
-- \mouse1|new_cursor_row[1]~13\ = CARRY((\mouse1|PACKET_CHAR3\(1) & ((!\mouse1|new_cursor_row[0]~11\) # (!\mouse1|cursor_row\(1)))) # (!\mouse1|PACKET_CHAR3\(1) & (!\mouse1|cursor_row\(1) & !\mouse1|new_cursor_row[0]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|PACKET_CHAR3\(1),
	datab => \mouse1|cursor_row\(1),
	datad => VCC,
	cin => \mouse1|new_cursor_row[0]~11\,
	combout => \mouse1|new_cursor_row[1]~12_combout\,
	cout => \mouse1|new_cursor_row[1]~13\);

-- Location: LCCOMB_X32_Y20_N10
\mouse1|new_cursor_column[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_column[1]~13_combout\ = (\mouse1|cursor_column\(1) & ((\mouse1|PACKET_CHAR2\(1) & (\mouse1|new_cursor_column[0]~12\ & VCC)) # (!\mouse1|PACKET_CHAR2\(1) & (!\mouse1|new_cursor_column[0]~12\)))) # (!\mouse1|cursor_column\(1) & 
-- ((\mouse1|PACKET_CHAR2\(1) & (!\mouse1|new_cursor_column[0]~12\)) # (!\mouse1|PACKET_CHAR2\(1) & ((\mouse1|new_cursor_column[0]~12\) # (GND)))))
-- \mouse1|new_cursor_column[1]~14\ = CARRY((\mouse1|cursor_column\(1) & (!\mouse1|PACKET_CHAR2\(1) & !\mouse1|new_cursor_column[0]~12\)) # (!\mouse1|cursor_column\(1) & ((!\mouse1|new_cursor_column[0]~12\) # (!\mouse1|PACKET_CHAR2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(1),
	datab => \mouse1|PACKET_CHAR2\(1),
	datad => VCC,
	cin => \mouse1|new_cursor_column[0]~12\,
	combout => \mouse1|new_cursor_column[1]~13_combout\,
	cout => \mouse1|new_cursor_column[1]~14\);

-- Location: LCCOMB_X32_Y20_N24
\mouse1|new_cursor_column[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_column[8]~27_combout\ = ((\mouse1|PACKET_CHAR2\(7) $ (\mouse1|cursor_column\(8) $ (!\mouse1|new_cursor_column[7]~26\)))) # (GND)
-- \mouse1|new_cursor_column[8]~28\ = CARRY((\mouse1|PACKET_CHAR2\(7) & ((\mouse1|cursor_column\(8)) # (!\mouse1|new_cursor_column[7]~26\))) # (!\mouse1|PACKET_CHAR2\(7) & (\mouse1|cursor_column\(8) & !\mouse1|new_cursor_column[7]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|PACKET_CHAR2\(7),
	datab => \mouse1|cursor_column\(8),
	datad => VCC,
	cin => \mouse1|new_cursor_column[7]~26\,
	combout => \mouse1|new_cursor_column[8]~27_combout\,
	cout => \mouse1|new_cursor_column[8]~28\);

-- Location: LCCOMB_X32_Y20_N26
\mouse1|new_cursor_column[9]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_column[9]~29_combout\ = \mouse1|PACKET_CHAR2\(7) $ (\mouse1|new_cursor_column[8]~28\ $ (\mouse1|cursor_column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|PACKET_CHAR2\(7),
	datad => \mouse1|cursor_column\(9),
	cin => \mouse1|new_cursor_column[8]~28\,
	combout => \mouse1|new_cursor_column[9]~29_combout\);

-- Location: FF_X29_Y18_N13
\mouse1|inhibit_wait_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mouse1|inhibit_wait_count[4]~16_combout\,
	ena => \mouse1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|inhibit_wait_count\(4));

-- Location: FF_X29_Y18_N11
\mouse1|inhibit_wait_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mouse1|inhibit_wait_count[3]~14_combout\,
	ena => \mouse1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|inhibit_wait_count\(3));

-- Location: LCCOMB_X29_Y18_N10
\mouse1|inhibit_wait_count[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|inhibit_wait_count[3]~14_combout\ = (\mouse1|inhibit_wait_count\(3) & (\mouse1|inhibit_wait_count[2]~13\ $ (GND))) # (!\mouse1|inhibit_wait_count\(3) & (!\mouse1|inhibit_wait_count[2]~13\ & VCC))
-- \mouse1|inhibit_wait_count[3]~15\ = CARRY((\mouse1|inhibit_wait_count\(3) & !\mouse1|inhibit_wait_count[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|inhibit_wait_count\(3),
	datad => VCC,
	cin => \mouse1|inhibit_wait_count[2]~13\,
	combout => \mouse1|inhibit_wait_count[3]~14_combout\,
	cout => \mouse1|inhibit_wait_count[3]~15\);

-- Location: LCCOMB_X29_Y18_N12
\mouse1|inhibit_wait_count[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|inhibit_wait_count[4]~16_combout\ = (\mouse1|inhibit_wait_count\(4) & (!\mouse1|inhibit_wait_count[3]~15\)) # (!\mouse1|inhibit_wait_count\(4) & ((\mouse1|inhibit_wait_count[3]~15\) # (GND)))
-- \mouse1|inhibit_wait_count[4]~17\ = CARRY((!\mouse1|inhibit_wait_count[3]~15\) # (!\mouse1|inhibit_wait_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|inhibit_wait_count\(4),
	datad => VCC,
	cin => \mouse1|inhibit_wait_count[3]~15\,
	combout => \mouse1|inhibit_wait_count[4]~16_combout\,
	cout => \mouse1|inhibit_wait_count[4]~17\);

-- Location: FF_X31_Y20_N31
\mouse1|INCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|INCNT~2_combout\,
	ena => \mouse1|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|INCNT\(1));

-- Location: FF_X31_Y25_N31
\inst|pipe_Location[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	asdata => \inst|pipe1_x\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pipe_Location\(13));

-- Location: FF_X30_Y25_N3
\inst|pipe_Location[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst|pipe_Location[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pipe_Location\(17));

-- Location: LCCOMB_X29_Y23_N10
\inst5|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|process_0~0_combout\ = (!\inst5|h_count\(8) & (\inst5|h_count\(9) & \inst5|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|h_count\(8),
	datab => \inst5|h_count\(9),
	datad => \inst5|h_count\(7),
	combout => \inst5|process_0~0_combout\);

-- Location: FF_X40_Y14_N31
\mouse1|filter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mouse1|filter\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|filter\(7));

-- Location: LCCOMB_X40_Y14_N30
\mouse1|MOUSE_CLK_FILTER~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|MOUSE_CLK_FILTER~0_combout\ = (\mouse1|filter\(4) & ((\mouse1|filter\(7)) # (!\mouse1|filter\(2)))) # (!\mouse1|filter\(4) & (\mouse1|filter\(7) & !\mouse1|filter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|filter\(4),
	datac => \mouse1|filter\(7),
	datad => \mouse1|filter\(2),
	combout => \mouse1|MOUSE_CLK_FILTER~0_combout\);

-- Location: LCCOMB_X31_Y20_N30
\mouse1|INCNT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|INCNT~2_combout\ = (!\mouse1|INCNT\(3) & (\mouse1|INCNT\(0) $ (\mouse1|INCNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|INCNT\(0),
	datac => \mouse1|INCNT\(1),
	datad => \mouse1|INCNT\(3),
	combout => \mouse1|INCNT~2_combout\);

-- Location: LCCOMB_X24_Y20_N28
\inst7|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LessThan2~1_combout\ = (\inst7|bird_y\(2) & (((!\inst5|pixel_row\(1) & \inst7|bird_y\(1))) # (!\inst5|pixel_row\(2)))) # (!\inst7|bird_y\(2) & (!\inst5|pixel_row\(2) & (!\inst5|pixel_row\(1) & \inst7|bird_y\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bird_y\(2),
	datab => \inst5|pixel_row\(2),
	datac => \inst5|pixel_row\(1),
	datad => \inst7|bird_y\(1),
	combout => \inst7|LessThan2~1_combout\);

-- Location: LCCOMB_X24_Y20_N18
\inst7|LessThan2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LessThan2~2_combout\ = (\inst5|pixel_row\(3) & (\inst7|bird_y\(3) & \inst7|LessThan2~1_combout\)) # (!\inst5|pixel_row\(3) & ((\inst7|bird_y\(3)) # (\inst7|LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pixel_row\(3),
	datac => \inst7|bird_y\(3),
	datad => \inst7|LessThan2~1_combout\,
	combout => \inst7|LessThan2~2_combout\);

-- Location: LCCOMB_X24_Y20_N20
\inst7|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LessThan2~3_combout\ = (\inst7|bird_y\(4) & ((\inst7|LessThan2~2_combout\) # (!\inst5|pixel_row\(4)))) # (!\inst7|bird_y\(4) & (!\inst5|pixel_row\(4) & \inst7|LessThan2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|bird_y\(4),
	datac => \inst5|pixel_row\(4),
	datad => \inst7|LessThan2~2_combout\,
	combout => \inst7|LessThan2~3_combout\);

-- Location: LCCOMB_X24_Y20_N24
\inst7|LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LessThan3~0_combout\ = (\inst5|pixel_row\(5) & (\inst7|LessThan2~3_combout\ & \inst7|Add1~0_combout\)) # (!\inst5|pixel_row\(5) & ((\inst7|LessThan2~3_combout\) # (\inst7|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_row\(5),
	datab => \inst7|LessThan2~3_combout\,
	datad => \inst7|Add1~0_combout\,
	combout => \inst7|LessThan3~0_combout\);

-- Location: FF_X9_Y24_N27
\inst|pipe2_x[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add6~19_combout\,
	ena => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pipe2_x\(8));

-- Location: LCCOMB_X27_Y22_N20
\inst|pipe2_on~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|pipe2_on~0_combout\ = (\inst5|pixel_row\(6) & (!\inst5|pixel_row\(8))) # (!\inst5|pixel_row\(6) & ((!\inst5|pixel_row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_row\(8),
	datab => \inst5|pixel_row\(6),
	datac => \inst5|pixel_row\(7),
	combout => \inst|pipe2_on~0_combout\);

-- Location: FF_X21_Y21_N27
\inst|pipe3_x[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add7~18_combout\,
	ena => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pipe3_x\(9));

-- Location: FF_X21_Y21_N25
\inst|pipe3_x[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add7~19_combout\,
	ena => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pipe3_x\(8));

-- Location: FF_X21_Y21_N23
\inst|pipe3_x[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add7~20_combout\,
	ena => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pipe3_x\(7));

-- Location: FF_X22_Y21_N23
\inst|pipe3_x[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add7~21_combout\,
	ena => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pipe3_x\(6));

-- Location: FF_X22_Y21_N29
\inst|pipe3_x[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add7~22_combout\,
	ena => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pipe3_x\(5));

-- Location: FF_X22_Y21_N31
\inst|pipe3_x[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add7~23_combout\,
	ena => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pipe3_x\(4));

-- Location: FF_X21_Y21_N21
\inst|pipe3_x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add7~24_combout\,
	ena => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pipe3_x\(3));

-- Location: FF_X22_Y21_N21
\inst|pipe3_x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add7~25_combout\,
	ena => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pipe3_x\(2));

-- Location: FF_X21_Y21_N31
\inst|pipe3_x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add7~26_combout\,
	ena => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pipe3_x\(1));

-- Location: LCCOMB_X26_Y19_N4
\inst|pipe3_on~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|pipe3_on~0_combout\ = (\inst5|pixel_row\(4)) # ((\inst5|pixel_row\(3) & \inst5|pixel_row\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_row\(3),
	datac => \inst5|pixel_row\(4),
	datad => \inst5|pixel_row\(2),
	combout => \inst|pipe3_on~0_combout\);

-- Location: LCCOMB_X26_Y19_N2
\inst|pipe3_on~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|pipe3_on~1_combout\ = (\inst5|pixel_row\(5) & ((\inst5|pixel_row\(4)) # ((\inst5|pixel_row\(0)) # (\inst5|pixel_row\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_row\(4),
	datab => \inst5|pixel_row\(5),
	datac => \inst5|pixel_row\(0),
	datad => \inst5|pixel_row\(1),
	combout => \inst|pipe3_on~1_combout\);

-- Location: LCCOMB_X26_Y19_N12
\inst|pipe3_on~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|pipe3_on~2_combout\ = (\inst5|pixel_row\(6) & (((\inst|pipe3_on~0_combout\ & \inst|pipe3_on~1_combout\)))) # (!\inst5|pixel_row\(6) & (((!\inst|pipe3_on~0_combout\)) # (!\inst5|pixel_row\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_row\(6),
	datab => \inst5|pixel_row\(5),
	datac => \inst|pipe3_on~0_combout\,
	datad => \inst|pipe3_on~1_combout\,
	combout => \inst|pipe3_on~2_combout\);

-- Location: LCCOMB_X26_Y19_N22
\inst|pipe3_on~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|pipe3_on~3_combout\ = (\inst5|pixel_row\(7)) # (!\inst5|pixel_row\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|pixel_row\(7),
	datad => \inst5|pixel_row\(8),
	combout => \inst|pipe3_on~3_combout\);

-- Location: LCCOMB_X26_Y21_N12
\inst|pipe3_on~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|pipe3_on~4_combout\ = (!\inst|LessThan9~16_combout\ & (!\inst|LessThan10~18_combout\ & ((\inst|pipe3_on~2_combout\) # (\inst|pipe3_on~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe3_on~2_combout\,
	datab => \inst|pipe3_on~3_combout\,
	datac => \inst|LessThan9~16_combout\,
	datad => \inst|LessThan10~18_combout\,
	combout => \inst|pipe3_on~4_combout\);

-- Location: LCCOMB_X26_Y19_N24
\text_controller|LessThan11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|LessThan11~0_combout\ = (\inst5|pixel_row\(3)) # ((\inst5|pixel_row\(2)) # ((\inst5|pixel_row\(0)) # (\inst5|pixel_row\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_row\(3),
	datab => \inst5|pixel_row\(2),
	datac => \inst5|pixel_row\(0),
	datad => \inst5|pixel_row\(1),
	combout => \text_controller|LessThan11~0_combout\);

-- Location: LCCOMB_X27_Y22_N6
\text_controller|char_data|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|char_data|Mux0~0_combout\ = (\inst5|pixel_row\(8) & (((!\inst5|pixel_row\(7))) # (!\inst5|pixel_row\(6)))) # (!\inst5|pixel_row\(8) & ((\inst5|pixel_row\(6)) # ((\inst5|pixel_row\(7)) # (\inst5|pixel_row\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_row\(8),
	datab => \inst5|pixel_row\(6),
	datac => \inst5|pixel_row\(7),
	datad => \inst5|pixel_row\(5),
	combout => \text_controller|char_data|Mux0~0_combout\);

-- Location: LCCOMB_X26_Y23_N30
\text_controller|LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|LessThan3~0_combout\ = (\inst5|pixel_column\(6) & \inst5|pixel_column\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(6),
	datad => \inst5|pixel_column\(7),
	combout => \text_controller|LessThan3~0_combout\);

-- Location: LCCOMB_X28_Y24_N0
\text_controller|char_data|Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|char_data|Mux0~4_combout\ = (\inst5|pixel_column\(3) & (\inst5|pixel_column\(2))) # (!\inst5|pixel_column\(3) & ((\inst5|pixel_column\(2) & ((!\text_controller|char_data|altsyncram_component|auto_generated|q_a\(6)))) # 
-- (!\inst5|pixel_column\(2) & (!\text_controller|char_data|altsyncram_component|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(3),
	datab => \inst5|pixel_column\(2),
	datac => \text_controller|char_data|altsyncram_component|auto_generated|q_a\(7),
	datad => \text_controller|char_data|altsyncram_component|auto_generated|q_a\(6),
	combout => \text_controller|char_data|Mux0~4_combout\);

-- Location: LCCOMB_X28_Y24_N6
\text_controller|char_data|Mux0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|char_data|Mux0~5_combout\ = (\inst5|pixel_column\(3) & ((\text_controller|char_data|Mux0~4_combout\ & ((!\text_controller|char_data|altsyncram_component|auto_generated|q_a\(4)))) # (!\text_controller|char_data|Mux0~4_combout\ & 
-- (!\text_controller|char_data|altsyncram_component|auto_generated|q_a\(5))))) # (!\inst5|pixel_column\(3) & (((\text_controller|char_data|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|char_data|altsyncram_component|auto_generated|q_a\(5),
	datab => \text_controller|char_data|altsyncram_component|auto_generated|q_a\(4),
	datac => \inst5|pixel_column\(3),
	datad => \text_controller|char_data|Mux0~4_combout\,
	combout => \text_controller|char_data|Mux0~5_combout\);

-- Location: LCCOMB_X26_Y21_N4
\inst5|red_current[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|red_current[2]~3_combout\ = (\text_controller|char_data|Mux0~7_combout\ & !\inst2|bird_hit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \text_controller|char_data|Mux0~7_combout\,
	datad => \inst2|bird_hit\(0),
	combout => \inst5|red_current[2]~3_combout\);

-- Location: FF_X29_Y21_N31
\mouse1|cursor_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_row~3_combout\,
	ena => \mouse1|cursor_column[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_row\(6));

-- Location: LCCOMB_X26_Y21_N10
\inst5|green_current[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|green_current[2]~3_combout\ = (!\inst2|bird_hit\(0)) # (!\text_controller|char_data|Mux0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \text_controller|char_data|Mux0~7_combout\,
	datad => \inst2|bird_hit\(0),
	combout => \inst5|green_current[2]~3_combout\);

-- Location: LCCOMB_X31_Y25_N20
\inst2|LessThan8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan8~1_combout\ = (!\inst2|Add2~4_combout\ & (!\inst2|Add2~0_combout\ & !\inst2|Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add2~4_combout\,
	datab => \inst2|Add2~0_combout\,
	datad => \inst2|Add2~2_combout\,
	combout => \inst2|LessThan8~1_combout\);

-- Location: LCCOMB_X32_Y25_N12
\inst2|LessThan8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan8~2_combout\ = (\inst2|Add2~8_combout\ & (\inst2|Add2~6_combout\ & !\inst2|LessThan8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add2~8_combout\,
	datac => \inst2|Add2~6_combout\,
	datad => \inst2|LessThan8~1_combout\,
	combout => \inst2|LessThan8~2_combout\);

-- Location: LCCOMB_X24_Y19_N0
\inst5|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|process_0~6_combout\ = (!\inst5|v_count\(5) & (!\inst5|v_count\(4) & ((!\inst5|v_count\(2)) # (!\inst5|v_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|v_count\(3),
	datab => \inst5|v_count\(5),
	datac => \inst5|v_count\(4),
	datad => \inst5|v_count\(2),
	combout => \inst5|process_0~6_combout\);

-- Location: LCCOMB_X24_Y19_N22
\inst5|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|process_0~7_combout\ = (!\inst5|v_count\(7) & (!\inst5|v_count\(8) & !\inst5|v_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|v_count\(7),
	datab => \inst5|v_count\(8),
	datac => \inst5|v_count\(6),
	combout => \inst5|process_0~7_combout\);

-- Location: LCCOMB_X24_Y19_N12
\inst5|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|process_0~8_combout\ = (((\inst5|process_0~7_combout\ & \inst5|process_0~6_combout\)) # (!\inst5|v_count\(9))) # (!\inst5|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|process_0~7_combout\,
	datab => \inst5|process_0~6_combout\,
	datac => \inst5|h_count\(9),
	datad => \inst5|v_count\(9),
	combout => \inst5|process_0~8_combout\);

-- Location: LCCOMB_X22_Y20_N0
\inst7|bird_y[9]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|bird_y[9]~24_combout\ = (\inst7|bird_y\(5)) # ((\inst7|bird_y\(7)) # ((\inst7|bird_y\(8)) # (\inst7|bird_y\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bird_y\(5),
	datab => \inst7|bird_y\(7),
	datac => \inst7|bird_y\(8),
	datad => \inst7|bird_y\(6),
	combout => \inst7|bird_y[9]~24_combout\);

-- Location: LCCOMB_X8_Y24_N16
\inst|LessThan14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan14~1_combout\ = (((\inst|pipe2_x\(6)) # (!\inst|pipe2_x\(8))) # (!\inst|pipe2_x\(5))) # (!\inst|pipe2_x\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe2_x\(7),
	datab => \inst|pipe2_x\(5),
	datac => \inst|pipe2_x\(6),
	datad => \inst|pipe2_x\(8),
	combout => \inst|LessThan14~1_combout\);

-- Location: LCCOMB_X9_Y24_N26
\inst|Add6~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~19_combout\ = ((!\inst|LessThan14~1_combout\ & (!\inst|pipe2_x\(9) & !\inst|LessThan14~0_combout\))) # (!\inst|Add6~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan14~1_combout\,
	datab => \inst|pipe2_x\(9),
	datac => \inst|LessThan14~0_combout\,
	datad => \inst|Add6~14_combout\,
	combout => \inst|Add6~19_combout\);

-- Location: LCCOMB_X21_Y21_N28
\inst|LessThan15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan15~0_combout\ = ((\inst|pipe3_x\(1)) # ((!\inst|pipe3_x\(2)) # (!\inst|pipe3_x\(4)))) # (!\inst|pipe3_x\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe3_x\(3),
	datab => \inst|pipe3_x\(1),
	datac => \inst|pipe3_x\(4),
	datad => \inst|pipe3_x\(2),
	combout => \inst|LessThan15~0_combout\);

-- Location: LCCOMB_X22_Y21_N26
\inst|LessThan15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan15~1_combout\ = (((\inst|pipe3_x\(7)) # (\inst|pipe3_x\(8))) # (!\inst|pipe3_x\(5))) # (!\inst|pipe3_x\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe3_x\(6),
	datab => \inst|pipe3_x\(5),
	datac => \inst|pipe3_x\(7),
	datad => \inst|pipe3_x\(8),
	combout => \inst|LessThan15~1_combout\);

-- Location: LCCOMB_X21_Y21_N26
\inst|Add7~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add7~18_combout\ = (!\inst|Add7~16_combout\ & ((\inst|LessThan15~0_combout\) # ((\inst|LessThan15~1_combout\) # (!\inst|pipe3_x\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan15~0_combout\,
	datab => \inst|LessThan15~1_combout\,
	datac => \inst|pipe3_x\(9),
	datad => \inst|Add7~16_combout\,
	combout => \inst|Add7~18_combout\);

-- Location: LCCOMB_X21_Y21_N24
\inst|Add7~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add7~19_combout\ = (\inst|Add7~14_combout\ & (((\inst|LessThan15~0_combout\) # (\inst|LessThan15~1_combout\)) # (!\inst|pipe3_x\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe3_x\(9),
	datab => \inst|LessThan15~0_combout\,
	datac => \inst|Add7~14_combout\,
	datad => \inst|LessThan15~1_combout\,
	combout => \inst|Add7~19_combout\);

-- Location: LCCOMB_X21_Y21_N22
\inst|Add7~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add7~20_combout\ = (\inst|Add7~12_combout\) # ((!\inst|LessThan15~0_combout\ & (!\inst|LessThan15~1_combout\ & \inst|pipe3_x\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan15~0_combout\,
	datab => \inst|LessThan15~1_combout\,
	datac => \inst|pipe3_x\(9),
	datad => \inst|Add7~12_combout\,
	combout => \inst|Add7~20_combout\);

-- Location: LCCOMB_X22_Y21_N22
\inst|Add7~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add7~21_combout\ = ((\inst|pipe3_x\(9) & (!\inst|LessThan15~0_combout\ & !\inst|LessThan15~1_combout\))) # (!\inst|Add7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe3_x\(9),
	datab => \inst|LessThan15~0_combout\,
	datac => \inst|LessThan15~1_combout\,
	datad => \inst|Add7~10_combout\,
	combout => \inst|Add7~21_combout\);

-- Location: LCCOMB_X22_Y21_N28
\inst|Add7~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add7~22_combout\ = ((\inst|pipe3_x\(9) & (!\inst|LessThan15~0_combout\ & !\inst|LessThan15~1_combout\))) # (!\inst|Add7~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe3_x\(9),
	datab => \inst|LessThan15~0_combout\,
	datac => \inst|LessThan15~1_combout\,
	datad => \inst|Add7~8_combout\,
	combout => \inst|Add7~22_combout\);

-- Location: LCCOMB_X22_Y21_N30
\inst|Add7~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add7~23_combout\ = ((\inst|pipe3_x\(9) & (!\inst|LessThan15~1_combout\ & !\inst|LessThan15~0_combout\))) # (!\inst|Add7~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe3_x\(9),
	datab => \inst|LessThan15~1_combout\,
	datac => \inst|Add7~6_combout\,
	datad => \inst|LessThan15~0_combout\,
	combout => \inst|Add7~23_combout\);

-- Location: LCCOMB_X21_Y21_N20
\inst|Add7~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add7~24_combout\ = ((\inst|pipe3_x\(9) & (!\inst|LessThan15~0_combout\ & !\inst|LessThan15~1_combout\))) # (!\inst|Add7~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe3_x\(9),
	datab => \inst|LessThan15~0_combout\,
	datac => \inst|Add7~4_combout\,
	datad => \inst|LessThan15~1_combout\,
	combout => \inst|Add7~24_combout\);

-- Location: LCCOMB_X22_Y21_N20
\inst|Add7~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add7~25_combout\ = ((\inst|pipe3_x\(9) & (!\inst|LessThan15~0_combout\ & !\inst|LessThan15~1_combout\))) # (!\inst|Add7~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe3_x\(9),
	datab => \inst|LessThan15~0_combout\,
	datac => \inst|LessThan15~1_combout\,
	datad => \inst|Add7~2_combout\,
	combout => \inst|Add7~25_combout\);

-- Location: LCCOMB_X21_Y21_N30
\inst|Add7~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add7~26_combout\ = (\inst|Add7~0_combout\ & ((\inst|LessThan15~0_combout\) # ((\inst|LessThan15~1_combout\) # (!\inst|pipe3_x\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add7~0_combout\,
	datab => \inst|LessThan15~0_combout\,
	datac => \inst|pipe3_x\(9),
	datad => \inst|LessThan15~1_combout\,
	combout => \inst|Add7~26_combout\);

-- Location: FF_X21_Y20_N11
\inst7|bird_Location[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst7|bird_Location[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|bird_Location\(3));

-- Location: FF_X21_Y20_N13
\inst7|bird_Location[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	asdata => \inst7|bird_y\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|bird_Location\(6));

-- Location: FF_X21_Y20_N7
\inst7|bird_Location[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst7|bird_Location[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|bird_Location\(5));

-- Location: LCCOMB_X21_Y20_N12
\inst2|bird_hit~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|bird_hit~4_combout\ = (\inst7|bird_Location\(6)) # (\inst7|bird_Location\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|bird_Location\(6),
	datad => \inst7|bird_Location\(5),
	combout => \inst2|bird_hit~4_combout\);

-- Location: LCCOMB_X32_Y25_N4
\inst2|bird_hit~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|bird_hit~7_combout\ = (\inst|pipe_Location\(13)) # ((\inst|pipe_Location\(14)) # ((\inst|pipe_Location\(11) & \inst|pipe_Location\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe_Location\(13),
	datab => \inst|pipe_Location\(11),
	datac => \inst|pipe_Location\(12),
	datad => \inst|pipe_Location\(14),
	combout => \inst2|bird_hit~7_combout\);

-- Location: LCCOMB_X29_Y21_N6
\mouse1|LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|LessThan5~0_combout\ = (\mouse1|new_cursor_row\(7) & (\mouse1|new_cursor_row\(5) & (\mouse1|new_cursor_row\(6) & \mouse1|new_cursor_row\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_row\(7),
	datab => \mouse1|new_cursor_row\(5),
	datac => \mouse1|new_cursor_row\(6),
	datad => \mouse1|new_cursor_row\(8),
	combout => \mouse1|LessThan5~0_combout\);

-- Location: LCCOMB_X29_Y21_N30
\mouse1|cursor_row~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row~3_combout\ = ((!\mouse1|RECV_UART~3_combout\ & ((\mouse1|new_cursor_row\(6)) # (!\mouse1|cursor_row~0_combout\)))) # (!\mouse1|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|RECV_UART~3_combout\,
	datab => \mouse1|cursor_row~0_combout\,
	datac => \mouse1|new_cursor_row\(6),
	datad => \mouse1|Equal3~0_combout\,
	combout => \mouse1|cursor_row~3_combout\);

-- Location: FF_X28_Y20_N15
\mouse1|mouse_state.INPUT_PACKETS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mouse1|mouse_state.INPUT_PACKETS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|mouse_state.INPUT_PACKETS~q\);

-- Location: LCCOMB_X28_Y20_N24
\mouse1|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|Selector6~0_combout\ = (\mouse1|send_data~q\ & ((\mouse1|mouse_state.INPUT_PACKETS~q\) # (!\mouse1|mouse_state.INHIBIT_TRANS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|mouse_state.INHIBIT_TRANS~q\,
	datac => \mouse1|mouse_state.INPUT_PACKETS~q\,
	datad => \mouse1|send_data~q\,
	combout => \mouse1|Selector6~0_combout\);

-- Location: LCCOMB_X30_Y25_N24
\text_controller|character_address[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[0]~9_combout\ = (!\inst2|scoreCounterOnes\(2) & (!\inst2|scoreCounterOnes\(1) & (!\inst2|scoreCounterOnes\(3) & \inst2|scoreCounterOnes\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|scoreCounterOnes\(2),
	datab => \inst2|scoreCounterOnes\(1),
	datac => \inst2|scoreCounterOnes\(3),
	datad => \inst2|scoreCounterOnes\(0),
	combout => \text_controller|character_address[0]~9_combout\);

-- Location: LCCOMB_X23_Y24_N12
\text_controller|character_address[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[0]~10_combout\ = (\text_controller|LessThan1~1_combout\) # ((\text_controller|LessThan2~0_combout\ & (\text_controller|character_address~8_combout\ & \text_controller|character_address[0]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|LessThan2~0_combout\,
	datab => \text_controller|character_address~8_combout\,
	datac => \text_controller|LessThan1~1_combout\,
	datad => \text_controller|character_address[0]~48_combout\,
	combout => \text_controller|character_address[0]~10_combout\);

-- Location: LCCOMB_X24_Y24_N6
\text_controller|character_address[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[4]~16_combout\ = (\inst5|pixel_column\(5) & (\inst5|pixel_column\(6) & ((\inst5|pixel_column\(1)) # (\text_controller|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(1),
	datab => \inst5|pixel_column\(5),
	datac => \inst5|pixel_column\(6),
	datad => \text_controller|LessThan0~1_combout\,
	combout => \text_controller|character_address[4]~16_combout\);

-- Location: LCCOMB_X24_Y24_N28
\text_controller|character_address[0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[0]~21_combout\ = (\inst5|pixel_column\(6) $ (((!\inst5|pixel_column\(5) & !\text_controller|LessThan0~3_combout\)))) # (!\inst5|pixel_column\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(7),
	datab => \inst5|pixel_column\(5),
	datac => \inst5|pixel_column\(6),
	datad => \text_controller|LessThan0~3_combout\,
	combout => \text_controller|character_address[0]~21_combout\);

-- Location: LCCOMB_X21_Y24_N26
\text_controller|comb~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|comb~1_combout\ = (\text_controller|character_address[0]~15_combout\ & \text_controller|character_address[0]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|character_address[0]~15_combout\,
	datac => \text_controller|character_address[0]~27_combout\,
	combout => \text_controller|comb~1_combout\);

-- Location: LCCOMB_X26_Y24_N28
\text_controller|character_address[1]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[1]~28_combout\ = (!\text_controller|LessThan8~2_combout\ & (!\inst5|pixel_column\(7) & ((!\text_controller|LessThan0~2_combout\) # (!\inst5|pixel_column\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|LessThan8~2_combout\,
	datab => \inst5|pixel_column\(7),
	datac => \inst5|pixel_column\(6),
	datad => \text_controller|LessThan0~2_combout\,
	combout => \text_controller|character_address[1]~28_combout\);

-- Location: LCCOMB_X26_Y24_N22
\text_controller|character_address[1]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[1]~29_combout\ = (\inst7|bird_on~0_combout\ & ((\text_controller|character_address[1]~28_combout\) # ((!\text_controller|LessThan4~0_combout\ & !\text_controller|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|LessThan4~0_combout\,
	datab => \text_controller|character_address[1]~28_combout\,
	datac => \inst7|bird_on~0_combout\,
	datad => \text_controller|LessThan1~1_combout\,
	combout => \text_controller|character_address[1]~29_combout\);

-- Location: LCCOMB_X26_Y24_N26
\text_controller|comb~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|comb~3_combout\ = (\text_controller|character_address[1]~29_combout\ & \text_controller|character_address[0]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|character_address[1]~29_combout\,
	datac => \text_controller|character_address[0]~15_combout\,
	combout => \text_controller|comb~3_combout\);

-- Location: LCCOMB_X22_Y24_N16
\text_controller|character_address[5]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[5]~30_combout\ = (\inst5|pixel_column\(9)) # ((\inst5|pixel_column\(8)) # ((\text_controller|LessThan1~1_combout\) # (\text_controller|LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(9),
	datab => \inst5|pixel_column\(8),
	datac => \text_controller|LessThan1~1_combout\,
	datad => \text_controller|LessThan4~0_combout\,
	combout => \text_controller|character_address[5]~30_combout\);

-- Location: LCCOMB_X22_Y24_N18
\text_controller|LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|LessThan6~0_combout\ = (\inst5|pixel_column\(7)) # ((\inst5|pixel_column\(8)) # (\text_controller|LessThan2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(7),
	datac => \inst5|pixel_column\(8),
	datad => \text_controller|LessThan2~0_combout\,
	combout => \text_controller|LessThan6~0_combout\);

-- Location: LCCOMB_X21_Y24_N14
\text_controller|character_address[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[2]~36_combout\ = (!\text_controller|LessThan1~1_combout\ & (\text_controller|LessThan7~0_combout\ & (\text_controller|LessThan8~2_combout\ & !\text_controller|LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|LessThan1~1_combout\,
	datab => \text_controller|LessThan7~0_combout\,
	datac => \text_controller|LessThan8~2_combout\,
	datad => \text_controller|LessThan5~0_combout\,
	combout => \text_controller|character_address[2]~36_combout\);

-- Location: LCCOMB_X22_Y24_N22
\text_controller|character_address[2]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[2]~37_combout\ = (\text_controller|LessThan6~0_combout\ & (!\inst5|pixel_column\(9) & ((\text_controller|character_address[2]~36_combout\) # (\text_controller|character_address[2]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|character_address[2]~36_combout\,
	datab => \text_controller|LessThan6~0_combout\,
	datac => \inst5|pixel_column\(9),
	datad => \text_controller|character_address[2]~35_combout\,
	combout => \text_controller|character_address[2]~37_combout\);

-- Location: LCCOMB_X26_Y24_N6
\text_controller|comb~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|comb~5_combout\ = (\text_controller|character_address[0]~15_combout\ & (!\text_controller|character_address[2]~33_combout\ & ((\text_controller|character_address[2]~37_combout\) # (!\text_controller|character_address[2]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|character_address[2]~37_combout\,
	datab => \text_controller|character_address[2]~49_combout\,
	datac => \text_controller|character_address[0]~15_combout\,
	datad => \text_controller|character_address[2]~33_combout\,
	combout => \text_controller|comb~5_combout\);

-- Location: LCCOMB_X22_Y24_N12
\text_controller|character_address[3]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[3]~38_combout\ = (\text_controller|LessThan8~2_combout\ & (\text_controller|LessThan6~0_combout\ & (!\text_controller|LessThan1~1_combout\ & \text_controller|LessThan7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|LessThan8~2_combout\,
	datab => \text_controller|LessThan6~0_combout\,
	datac => \text_controller|LessThan1~1_combout\,
	datad => \text_controller|LessThan7~0_combout\,
	combout => \text_controller|character_address[3]~38_combout\);

-- Location: LCCOMB_X21_Y24_N12
\text_controller|character_address[4]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[4]~43_combout\ = (\text_controller|LessThan8~2_combout\ & (!\text_controller|LessThan1~1_combout\ & (!\text_controller|LessThan7~0_combout\))) # (!\text_controller|LessThan8~2_combout\ & 
-- (((\text_controller|character_address[4]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|LessThan1~1_combout\,
	datab => \text_controller|LessThan7~0_combout\,
	datac => \text_controller|LessThan8~2_combout\,
	datad => \text_controller|character_address[4]~12_combout\,
	combout => \text_controller|character_address[4]~43_combout\);

-- Location: LCCOMB_X21_Y24_N10
\text_controller|comb~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|comb~9_combout\ = (\text_controller|character_address[0]~15_combout\ & ((\text_controller|character_address[4]~44_combout\) # ((\text_controller|character_address[4]~20_combout\ & !\text_controller|character_address[0]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|character_address[0]~15_combout\,
	datab => \text_controller|character_address[4]~44_combout\,
	datac => \text_controller|character_address[4]~20_combout\,
	datad => \text_controller|character_address[0]~24_combout\,
	combout => \text_controller|comb~9_combout\);

-- Location: LCCOMB_X23_Y24_N26
\text_controller|character_address[5]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[5]~45_combout\ = (\text_controller|character_address~47_combout\ & (\text_controller|character_address[5]~7_combout\ & \text_controller|LessThan4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|character_address~47_combout\,
	datac => \text_controller|character_address[5]~7_combout\,
	datad => \text_controller|LessThan4~0_combout\,
	combout => \text_controller|character_address[5]~45_combout\);

-- Location: FF_X30_Y21_N31
\mouse1|PACKET_CHAR3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_CHAR3[5]~feeder_combout\,
	ena => \mouse1|right_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_CHAR3\(5));

-- Location: FF_X30_Y21_N23
\mouse1|PACKET_CHAR3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_CHAR3[3]~feeder_combout\,
	ena => \mouse1|right_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_CHAR3\(3));

-- Location: FF_X30_Y21_N27
\mouse1|PACKET_CHAR3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_CHAR3[1]~feeder_combout\,
	ena => \mouse1|right_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_CHAR3\(1));

-- Location: FF_X29_Y20_N1
\mouse1|PACKET_CHAR3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_CHAR3[0]~feeder_combout\,
	ena => \mouse1|right_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_CHAR3\(0));

-- Location: FF_X33_Y20_N21
\mouse1|PACKET_CHAR2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_CHAR2[7]~feeder_combout\,
	ena => \mouse1|PACKET_CHAR2[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_CHAR2\(7));

-- Location: FF_X33_Y20_N5
\mouse1|PACKET_CHAR2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_CHAR2[5]~feeder_combout\,
	ena => \mouse1|PACKET_CHAR2[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_CHAR2\(5));

-- Location: FF_X32_Y20_N31
\mouse1|PACKET_CHAR2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_CHAR2[0]~feeder_combout\,
	ena => \mouse1|PACKET_CHAR2[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_CHAR2\(0));

-- Location: FF_X29_Y18_N31
\mouse1|inhibit_wait_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mouse1|inhibit_wait_count[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|inhibit_wait_count\(0));

-- Location: FF_X30_Y20_N23
\mouse1|iready_set\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|iready_set~0_combout\,
	ena => \mouse1|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|iready_set~q\);

-- Location: FF_X28_Y20_N27
\mouse1|mouse_state.WAIT_CMD_ACK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mouse1|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|mouse_state.WAIT_CMD_ACK~q\);

-- Location: LCCOMB_X28_Y20_N14
\mouse1|mouse_state.INPUT_PACKETS~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|mouse_state.INPUT_PACKETS~0_combout\ = (\mouse1|mouse_state.INPUT_PACKETS~q\) # ((\mouse1|mouse_state.WAIT_CMD_ACK~q\ & \mouse1|iready_set~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|mouse_state.WAIT_CMD_ACK~q\,
	datac => \mouse1|mouse_state.INPUT_PACKETS~q\,
	datad => \mouse1|iready_set~q\,
	combout => \mouse1|mouse_state.INPUT_PACKETS~0_combout\);

-- Location: LCCOMB_X29_Y18_N30
\mouse1|inhibit_wait_count[0]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|inhibit_wait_count[0]~30_combout\ = \mouse1|inhibit_wait_count\(0) $ (!\mouse1|mouse_state.INHIBIT_TRANS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|inhibit_wait_count\(0),
	datad => \mouse1|mouse_state.INHIBIT_TRANS~q\,
	combout => \mouse1|inhibit_wait_count[0]~30_combout\);

-- Location: LCCOMB_X30_Y20_N22
\mouse1|iready_set~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|iready_set~0_combout\ = (\mouse1|READ_CHAR~q\ & (!\mouse1|LessThan1~0_combout\)) # (!\mouse1|READ_CHAR~q\ & (((\mouse1|iready_set~q\ & \mouse_data~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|LessThan1~0_combout\,
	datab => \mouse1|READ_CHAR~q\,
	datac => \mouse1|iready_set~q\,
	datad => \mouse_data~input_o\,
	combout => \mouse1|iready_set~0_combout\);

-- Location: LCCOMB_X28_Y20_N26
\mouse1|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|Selector4~0_combout\ = (\mouse1|mouse_state.WAIT_OUTPUT_READY~q\ & ((\mouse1|output_ready~q\) # ((!\mouse1|iready_set~q\ & \mouse1|mouse_state.WAIT_CMD_ACK~q\)))) # (!\mouse1|mouse_state.WAIT_OUTPUT_READY~q\ & (!\mouse1|iready_set~q\ & 
-- (\mouse1|mouse_state.WAIT_CMD_ACK~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \mouse1|iready_set~q\,
	datac => \mouse1|mouse_state.WAIT_CMD_ACK~q\,
	datad => \mouse1|output_ready~q\,
	combout => \mouse1|Selector4~0_combout\);

-- Location: LCCOMB_X30_Y25_N30
\text_controller|character_address[0]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[0]~48_combout\ = (\inst5|pixel_column\(7) & (((\inst5|pixel_column\(6) & \text_controller|LessThan0~2_combout\)) # (!\text_controller|character_address[0]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(6),
	datab => \text_controller|LessThan0~2_combout\,
	datac => \inst5|pixel_column\(7),
	datad => \text_controller|character_address[0]~9_combout\,
	combout => \text_controller|character_address[0]~48_combout\);

-- Location: LCCOMB_X24_Y20_N8
\inst7|bird_on~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|bird_on~7_combout\ = (\inst5|pixel_row\(5) & (\inst7|bird_y\(5) & \inst7|LessThan2~3_combout\)) # (!\inst5|pixel_row\(5) & ((\inst7|bird_y\(5)) # (\inst7|LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_row\(5),
	datab => \inst7|bird_y\(5),
	datad => \inst7|LessThan2~3_combout\,
	combout => \inst7|bird_on~7_combout\);

-- Location: LCCOMB_X24_Y20_N22
\inst7|bird_on~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|bird_on~8_combout\ = (\inst5|pixel_row\(6) & (\inst7|bird_y\(6) & \inst7|bird_on~7_combout\)) # (!\inst5|pixel_row\(6) & ((\inst7|bird_y\(6)) # (\inst7|bird_on~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_row\(6),
	datab => \inst7|bird_y\(6),
	datac => \inst7|bird_on~7_combout\,
	combout => \inst7|bird_on~8_combout\);

-- Location: LCCOMB_X30_Y25_N2
\inst|pipe_Location[17]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|pipe_Location[17]~3_combout\ = !\inst|pipe1_x\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|pipe1_x\(7),
	combout => \inst|pipe_Location[17]~3_combout\);

-- Location: CLKCTRL_G9
\inst5|vert_sync_out~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst5|vert_sync_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst5|vert_sync_out~clkctrl_outclk\);

-- Location: LCCOMB_X21_Y20_N6
\inst7|bird_Location[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|bird_Location[5]~feeder_combout\ = \inst7|bird_y\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|bird_y\(5),
	combout => \inst7|bird_Location[5]~feeder_combout\);

-- Location: LCCOMB_X21_Y20_N10
\inst7|bird_Location[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|bird_Location[3]~feeder_combout\ = \inst7|bird_y\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|bird_y\(3),
	combout => \inst7|bird_Location[3]~feeder_combout\);

-- Location: LCCOMB_X30_Y21_N26
\mouse1|PACKET_CHAR3[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR3[1]~feeder_combout\ = \mouse1|SHIFTIN\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|SHIFTIN\(1),
	combout => \mouse1|PACKET_CHAR3[1]~feeder_combout\);

-- Location: LCCOMB_X32_Y20_N30
\mouse1|PACKET_CHAR2[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR2[0]~feeder_combout\ = \mouse1|SHIFTIN\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|SHIFTIN\(0),
	combout => \mouse1|PACKET_CHAR2[0]~feeder_combout\);

-- Location: LCCOMB_X29_Y20_N0
\mouse1|PACKET_CHAR3[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR3[0]~feeder_combout\ = \mouse1|SHIFTIN\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|SHIFTIN\(0),
	combout => \mouse1|PACKET_CHAR3[0]~feeder_combout\);

-- Location: LCCOMB_X30_Y21_N22
\mouse1|PACKET_CHAR3[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR3[3]~feeder_combout\ = \mouse1|SHIFTIN\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|SHIFTIN\(3),
	combout => \mouse1|PACKET_CHAR3[3]~feeder_combout\);

-- Location: LCCOMB_X33_Y20_N20
\mouse1|PACKET_CHAR2[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR2[7]~feeder_combout\ = \mouse1|SHIFTIN\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|SHIFTIN\(7),
	combout => \mouse1|PACKET_CHAR2[7]~feeder_combout\);

-- Location: LCCOMB_X30_Y21_N30
\mouse1|PACKET_CHAR3[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR3[5]~feeder_combout\ = \mouse1|SHIFTIN\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|SHIFTIN\(5),
	combout => \mouse1|PACKET_CHAR3[5]~feeder_combout\);

-- Location: LCCOMB_X33_Y20_N4
\mouse1|PACKET_CHAR2[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR2[5]~feeder_combout\ = \mouse1|SHIFTIN\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|SHIFTIN\(5),
	combout => \mouse1|PACKET_CHAR2[5]~feeder_combout\);

-- Location: IOOBUF_X41_Y18_N16
\horiz_sync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|horiz_sync_out~q\,
	devoe => ww_devoe,
	o => ww_horiz_sync_out);

-- Location: IOOBUF_X41_Y18_N23
\vert_sync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|vert_sync_out~q\,
	devoe => ww_devoe,
	o => ww_vert_sync_out);

-- Location: IOOBUF_X23_Y29_N9
\seg0_dec~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mouse1|right_button~q\,
	devoe => ww_devoe,
	o => ww_seg0_dec);

-- Location: IOOBUF_X32_Y29_N16
\seg2_dec~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mouse1|left_button~q\,
	devoe => ww_devoe,
	o => ww_seg2_dec);

-- Location: IOOBUF_X41_Y21_N23
\r3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|red_out\(2),
	devoe => ww_devoe,
	o => ww_r3);

-- Location: IOOBUF_X41_Y22_N2
\r2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|red_out\(1),
	devoe => ww_devoe,
	o => ww_r2);

-- Location: IOOBUF_X41_Y25_N2
\r1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|red_out\(0),
	devoe => ww_devoe,
	o => ww_r1);

-- Location: IOOBUF_X41_Y20_N23
\g3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|green_out\(2),
	devoe => ww_devoe,
	o => ww_g3);

-- Location: IOOBUF_X41_Y21_N16
\g2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|green_out\(1),
	devoe => ww_devoe,
	o => ww_g2);

-- Location: IOOBUF_X41_Y24_N23
\g1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|green_out\(0),
	devoe => ww_devoe,
	o => ww_g1);

-- Location: IOOBUF_X41_Y21_N9
\b3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|blue_out\(1),
	devoe => ww_devoe,
	o => ww_b3);

-- Location: IOOBUF_X41_Y19_N2
\b2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|blue_out\(0),
	devoe => ww_devoe,
	o => ww_b2);

-- Location: IOOBUF_X26_Y29_N16
\seg0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_seg0(6));

-- Location: IOOBUF_X28_Y29_N23
\seg0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seg0(5));

-- Location: IOOBUF_X26_Y29_N9
\seg0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seg0(4));

-- Location: IOOBUF_X28_Y29_N30
\seg0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seg0(3));

-- Location: IOOBUF_X26_Y29_N2
\seg0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seg0(2));

-- Location: IOOBUF_X21_Y29_N30
\seg0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seg0(1));

-- Location: IOOBUF_X21_Y29_N23
\seg0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seg0(0));

-- Location: IOOBUF_X26_Y29_N23
\seg1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_seg1(6));

-- Location: IOOBUF_X28_Y29_N16
\seg1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seg1(5));

-- Location: IOOBUF_X23_Y29_N30
\seg1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seg1(4));

-- Location: IOOBUF_X23_Y29_N23
\seg1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seg1(3));

-- Location: IOOBUF_X23_Y29_N2
\seg1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seg1(2));

-- Location: IOOBUF_X21_Y29_N9
\seg1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seg1(1));

-- Location: IOOBUF_X21_Y29_N2
\seg1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_seg1(0));

-- Location: IOOBUF_X37_Y29_N2
\seg2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mouseX2_7seg|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_seg2(6));

-- Location: IOOBUF_X30_Y29_N23
\seg2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mouseX2_7seg|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_seg2(5));

-- Location: IOOBUF_X30_Y29_N16
\seg2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mouseX2_7seg|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_seg2(4));

-- Location: IOOBUF_X30_Y29_N2
\seg2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mouseX2_7seg|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_seg2(3));

-- Location: IOOBUF_X28_Y29_N2
\seg2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mouseX2_7seg|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_seg2(2));

-- Location: IOOBUF_X30_Y29_N30
\seg2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mouseX2_7seg|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_seg2(1));

-- Location: IOOBUF_X32_Y29_N30
\seg2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mouseX2_7seg|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_seg2(0));

-- Location: IOOBUF_X39_Y29_N30
\seg3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mouseX1_7seg|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_seg3(6));

-- Location: IOOBUF_X37_Y29_N30
\seg3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mouseX1_7seg|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_seg3(5));

-- Location: IOOBUF_X37_Y29_N23
\seg3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mouseX1_7seg|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_seg3(4));

-- Location: IOOBUF_X32_Y29_N2
\seg3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mouseX1_7seg|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_seg3(3));

-- Location: IOOBUF_X32_Y29_N9
\seg3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mouseX1_7seg|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_seg3(2));

-- Location: IOOBUF_X39_Y29_N16
\seg3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mouseX1_7seg|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_seg3(1));

-- Location: IOOBUF_X32_Y29_N23
\seg3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mouseX1_7seg|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_seg3(0));

-- Location: IOOBUF_X41_Y12_N23
\mouse_data~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mouse1|MOUSE_DATA_BUF~q\,
	oe => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	devoe => ww_devoe,
	o => mouse_data);

-- Location: IOOBUF_X41_Y11_N2
\mouse_clk~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mouse1|mouse_state.INHIBIT_TRANS~q\,
	oe => \mouse1|WideOr4~combout\,
	devoe => ww_devoe,
	o => mouse_clk);

-- Location: IOIBUF_X41_Y11_N1
\mouse_clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => mouse_clk,
	o => \mouse_clk~input_o\);

-- Location: LCCOMB_X40_Y12_N24
\mouse1|filter[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|filter[0]~feeder_combout\ = \mouse_clk~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse_clk~input_o\,
	combout => \mouse1|filter[0]~feeder_combout\);

-- Location: FF_X40_Y12_N25
\mouse1|filter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mouse1|filter[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|filter\(0));

-- Location: LCCOMB_X40_Y14_N14
\mouse1|filter[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|filter[1]~feeder_combout\ = \mouse1|filter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|filter\(0),
	combout => \mouse1|filter[1]~feeder_combout\);

-- Location: FF_X40_Y14_N15
\mouse1|filter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mouse1|filter[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|filter\(1));

-- Location: LCCOMB_X40_Y14_N28
\mouse1|filter[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|filter[2]~feeder_combout\ = \mouse1|filter\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|filter\(1),
	combout => \mouse1|filter[2]~feeder_combout\);

-- Location: FF_X40_Y14_N29
\mouse1|filter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mouse1|filter[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|filter\(2));

-- Location: LCCOMB_X40_Y14_N24
\mouse1|filter[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|filter[3]~feeder_combout\ = \mouse1|filter\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|filter\(2),
	combout => \mouse1|filter[3]~feeder_combout\);

-- Location: FF_X40_Y14_N25
\mouse1|filter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mouse1|filter[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|filter\(3));

-- Location: LCCOMB_X40_Y14_N18
\mouse1|MOUSE_CLK_FILTER~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|MOUSE_CLK_FILTER~1_combout\ = (\mouse1|filter\(5) & ((\mouse1|MOUSE_CLK_FILTER~q\) # ((\mouse1|filter\(2) & \mouse1|filter\(3))))) # (!\mouse1|filter\(5) & (\mouse1|MOUSE_CLK_FILTER~q\ & ((\mouse1|filter\(2)) # (\mouse1|filter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|filter\(5),
	datab => \mouse1|filter\(2),
	datac => \mouse1|filter\(3),
	datad => \mouse1|MOUSE_CLK_FILTER~q\,
	combout => \mouse1|MOUSE_CLK_FILTER~1_combout\);

-- Location: FF_X40_Y14_N23
\mouse1|filter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mouse1|filter\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|filter\(4));

-- Location: FF_X40_Y14_N17
\mouse1|filter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mouse1|filter\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|filter\(5));

-- Location: LCCOMB_X40_Y14_N26
\mouse1|filter[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|filter[6]~feeder_combout\ = \mouse1|filter\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|filter\(5),
	combout => \mouse1|filter[6]~feeder_combout\);

-- Location: FF_X40_Y14_N27
\mouse1|filter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mouse1|filter[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|filter\(6));

-- Location: LCCOMB_X40_Y14_N8
\mouse1|MOUSE_CLK_FILTER~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|MOUSE_CLK_FILTER~2_combout\ = (\mouse1|filter\(1) & ((\mouse1|MOUSE_CLK_FILTER~q\) # ((\mouse1|filter\(0) & \mouse1|filter\(6))))) # (!\mouse1|filter\(1) & (\mouse1|MOUSE_CLK_FILTER~q\ & ((\mouse1|filter\(0)) # (\mouse1|filter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|filter\(1),
	datab => \mouse1|filter\(0),
	datac => \mouse1|filter\(6),
	datad => \mouse1|MOUSE_CLK_FILTER~q\,
	combout => \mouse1|MOUSE_CLK_FILTER~2_combout\);

-- Location: LCCOMB_X40_Y14_N20
\mouse1|MOUSE_CLK_FILTER~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|MOUSE_CLK_FILTER~3_combout\ = (\mouse1|MOUSE_CLK_FILTER~0_combout\ & ((\mouse1|MOUSE_CLK_FILTER~q\) # ((\mouse1|MOUSE_CLK_FILTER~1_combout\ & \mouse1|MOUSE_CLK_FILTER~2_combout\)))) # (!\mouse1|MOUSE_CLK_FILTER~0_combout\ & 
-- (\mouse1|MOUSE_CLK_FILTER~q\ & ((\mouse1|MOUSE_CLK_FILTER~1_combout\) # (\mouse1|MOUSE_CLK_FILTER~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|MOUSE_CLK_FILTER~0_combout\,
	datab => \mouse1|MOUSE_CLK_FILTER~1_combout\,
	datac => \mouse1|MOUSE_CLK_FILTER~q\,
	datad => \mouse1|MOUSE_CLK_FILTER~2_combout\,
	combout => \mouse1|MOUSE_CLK_FILTER~3_combout\);

-- Location: FF_X40_Y14_N21
\mouse1|MOUSE_CLK_FILTER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mouse1|MOUSE_CLK_FILTER~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|MOUSE_CLK_FILTER~q\);

-- Location: CLKCTRL_G6
\mouse1|MOUSE_CLK_FILTER~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mouse1|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\);

-- Location: LCCOMB_X27_Y20_N20
\mouse1|SHIFTOUT[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|SHIFTOUT[9]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \mouse1|SHIFTOUT[9]~feeder_combout\);

-- Location: LCCOMB_X29_Y18_N6
\mouse1|inhibit_wait_count[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|inhibit_wait_count[1]~10_combout\ = (\mouse1|inhibit_wait_count\(0) & (\mouse1|inhibit_wait_count\(1) $ (VCC))) # (!\mouse1|inhibit_wait_count\(0) & (\mouse1|inhibit_wait_count\(1) & VCC))
-- \mouse1|inhibit_wait_count[1]~11\ = CARRY((\mouse1|inhibit_wait_count\(0) & \mouse1|inhibit_wait_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|inhibit_wait_count\(0),
	datab => \mouse1|inhibit_wait_count\(1),
	datad => VCC,
	combout => \mouse1|inhibit_wait_count[1]~10_combout\,
	cout => \mouse1|inhibit_wait_count[1]~11\);

-- Location: FF_X29_Y18_N7
\mouse1|inhibit_wait_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mouse1|inhibit_wait_count[1]~10_combout\,
	ena => \mouse1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|inhibit_wait_count\(1));

-- Location: LCCOMB_X29_Y18_N8
\mouse1|inhibit_wait_count[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|inhibit_wait_count[2]~12_combout\ = (\mouse1|inhibit_wait_count\(2) & (!\mouse1|inhibit_wait_count[1]~11\)) # (!\mouse1|inhibit_wait_count\(2) & ((\mouse1|inhibit_wait_count[1]~11\) # (GND)))
-- \mouse1|inhibit_wait_count[2]~13\ = CARRY((!\mouse1|inhibit_wait_count[1]~11\) # (!\mouse1|inhibit_wait_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|inhibit_wait_count\(2),
	datad => VCC,
	cin => \mouse1|inhibit_wait_count[1]~11\,
	combout => \mouse1|inhibit_wait_count[2]~12_combout\,
	cout => \mouse1|inhibit_wait_count[2]~13\);

-- Location: FF_X29_Y18_N9
\mouse1|inhibit_wait_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mouse1|inhibit_wait_count[2]~12_combout\,
	ena => \mouse1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|inhibit_wait_count\(2));

-- Location: LCCOMB_X29_Y18_N14
\mouse1|inhibit_wait_count[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|inhibit_wait_count[5]~18_combout\ = (\mouse1|inhibit_wait_count\(5) & (\mouse1|inhibit_wait_count[4]~17\ $ (GND))) # (!\mouse1|inhibit_wait_count\(5) & (!\mouse1|inhibit_wait_count[4]~17\ & VCC))
-- \mouse1|inhibit_wait_count[5]~19\ = CARRY((\mouse1|inhibit_wait_count\(5) & !\mouse1|inhibit_wait_count[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|inhibit_wait_count\(5),
	datad => VCC,
	cin => \mouse1|inhibit_wait_count[4]~17\,
	combout => \mouse1|inhibit_wait_count[5]~18_combout\,
	cout => \mouse1|inhibit_wait_count[5]~19\);

-- Location: FF_X29_Y18_N15
\mouse1|inhibit_wait_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mouse1|inhibit_wait_count[5]~18_combout\,
	ena => \mouse1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|inhibit_wait_count\(5));

-- Location: LCCOMB_X29_Y18_N16
\mouse1|inhibit_wait_count[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|inhibit_wait_count[6]~20_combout\ = (\mouse1|inhibit_wait_count\(6) & (!\mouse1|inhibit_wait_count[5]~19\)) # (!\mouse1|inhibit_wait_count\(6) & ((\mouse1|inhibit_wait_count[5]~19\) # (GND)))
-- \mouse1|inhibit_wait_count[6]~21\ = CARRY((!\mouse1|inhibit_wait_count[5]~19\) # (!\mouse1|inhibit_wait_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|inhibit_wait_count\(6),
	datad => VCC,
	cin => \mouse1|inhibit_wait_count[5]~19\,
	combout => \mouse1|inhibit_wait_count[6]~20_combout\,
	cout => \mouse1|inhibit_wait_count[6]~21\);

-- Location: FF_X29_Y18_N17
\mouse1|inhibit_wait_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mouse1|inhibit_wait_count[6]~20_combout\,
	ena => \mouse1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|inhibit_wait_count\(6));

-- Location: LCCOMB_X29_Y18_N18
\mouse1|inhibit_wait_count[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|inhibit_wait_count[7]~22_combout\ = (\mouse1|inhibit_wait_count\(7) & (\mouse1|inhibit_wait_count[6]~21\ $ (GND))) # (!\mouse1|inhibit_wait_count\(7) & (!\mouse1|inhibit_wait_count[6]~21\ & VCC))
-- \mouse1|inhibit_wait_count[7]~23\ = CARRY((\mouse1|inhibit_wait_count\(7) & !\mouse1|inhibit_wait_count[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|inhibit_wait_count\(7),
	datad => VCC,
	cin => \mouse1|inhibit_wait_count[6]~21\,
	combout => \mouse1|inhibit_wait_count[7]~22_combout\,
	cout => \mouse1|inhibit_wait_count[7]~23\);

-- Location: FF_X29_Y18_N19
\mouse1|inhibit_wait_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mouse1|inhibit_wait_count[7]~22_combout\,
	ena => \mouse1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|inhibit_wait_count\(7));

-- Location: LCCOMB_X29_Y18_N20
\mouse1|inhibit_wait_count[8]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|inhibit_wait_count[8]~24_combout\ = (\mouse1|inhibit_wait_count\(8) & (!\mouse1|inhibit_wait_count[7]~23\)) # (!\mouse1|inhibit_wait_count\(8) & ((\mouse1|inhibit_wait_count[7]~23\) # (GND)))
-- \mouse1|inhibit_wait_count[8]~25\ = CARRY((!\mouse1|inhibit_wait_count[7]~23\) # (!\mouse1|inhibit_wait_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|inhibit_wait_count\(8),
	datad => VCC,
	cin => \mouse1|inhibit_wait_count[7]~23\,
	combout => \mouse1|inhibit_wait_count[8]~24_combout\,
	cout => \mouse1|inhibit_wait_count[8]~25\);

-- Location: FF_X29_Y18_N21
\mouse1|inhibit_wait_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mouse1|inhibit_wait_count[8]~24_combout\,
	ena => \mouse1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|inhibit_wait_count\(8));

-- Location: LCCOMB_X29_Y18_N22
\mouse1|inhibit_wait_count[9]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|inhibit_wait_count[9]~26_combout\ = (\mouse1|inhibit_wait_count\(9) & (\mouse1|inhibit_wait_count[8]~25\ $ (GND))) # (!\mouse1|inhibit_wait_count\(9) & (!\mouse1|inhibit_wait_count[8]~25\ & VCC))
-- \mouse1|inhibit_wait_count[9]~27\ = CARRY((\mouse1|inhibit_wait_count\(9) & !\mouse1|inhibit_wait_count[8]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|inhibit_wait_count\(9),
	datad => VCC,
	cin => \mouse1|inhibit_wait_count[8]~25\,
	combout => \mouse1|inhibit_wait_count[9]~26_combout\,
	cout => \mouse1|inhibit_wait_count[9]~27\);

-- Location: LCCOMB_X29_Y18_N24
\mouse1|inhibit_wait_count[10]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|inhibit_wait_count[10]~28_combout\ = \mouse1|inhibit_wait_count[9]~27\ $ (\mouse1|inhibit_wait_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|inhibit_wait_count\(10),
	cin => \mouse1|inhibit_wait_count[9]~27\,
	combout => \mouse1|inhibit_wait_count[10]~28_combout\);

-- Location: FF_X29_Y18_N25
\mouse1|inhibit_wait_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mouse1|inhibit_wait_count[10]~28_combout\,
	ena => \mouse1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|inhibit_wait_count\(10));

-- Location: LCCOMB_X29_Y18_N28
\mouse1|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|Selector0~0_combout\ = (\mouse1|mouse_state.INHIBIT_TRANS~q\) # ((\mouse1|inhibit_wait_count\(9) & \mouse1|inhibit_wait_count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|inhibit_wait_count\(9),
	datab => \mouse1|inhibit_wait_count\(10),
	datac => \mouse1|mouse_state.INHIBIT_TRANS~q\,
	combout => \mouse1|Selector0~0_combout\);

-- Location: FF_X29_Y18_N29
\mouse1|mouse_state.INHIBIT_TRANS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mouse1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|mouse_state.INHIBIT_TRANS~q\);

-- Location: FF_X29_Y18_N23
\mouse1|inhibit_wait_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mouse1|inhibit_wait_count[9]~26_combout\,
	ena => \mouse1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|inhibit_wait_count\(9));

-- Location: LCCOMB_X29_Y18_N26
\mouse1|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|Selector1~0_combout\ = (!\mouse1|mouse_state.INHIBIT_TRANS~q\ & (\mouse1|inhibit_wait_count\(9) & \mouse1|inhibit_wait_count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|mouse_state.INHIBIT_TRANS~q\,
	datac => \mouse1|inhibit_wait_count\(9),
	datad => \mouse1|inhibit_wait_count\(10),
	combout => \mouse1|Selector1~0_combout\);

-- Location: FF_X29_Y18_N27
\mouse1|mouse_state.LOAD_COMMAND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mouse1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|mouse_state.LOAD_COMMAND~q\);

-- Location: FF_X28_Y20_N19
\mouse1|mouse_state.LOAD_COMMAND2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mouse1|mouse_state.LOAD_COMMAND~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|mouse_state.LOAD_COMMAND2~q\);

-- Location: LCCOMB_X28_Y20_N28
\mouse1|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|Selector6~1_combout\ = (\mouse1|Selector6~0_combout\) # ((\mouse1|mouse_state.LOAD_COMMAND~q\) # (\mouse1|mouse_state.LOAD_COMMAND2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|Selector6~0_combout\,
	datac => \mouse1|mouse_state.LOAD_COMMAND~q\,
	datad => \mouse1|mouse_state.LOAD_COMMAND2~q\,
	combout => \mouse1|Selector6~1_combout\);

-- Location: FF_X28_Y20_N29
\mouse1|send_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mouse1|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|send_data~q\);

-- Location: LCCOMB_X28_Y20_N30
\mouse1|OUTCNT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|OUTCNT~0_combout\ = (\mouse1|OUTCNT\(1) & (\mouse1|OUTCNT\(2) & (!\mouse1|OUTCNT\(3) & \mouse1|OUTCNT\(0)))) # (!\mouse1|OUTCNT\(1) & (!\mouse1|OUTCNT\(2) & (\mouse1|OUTCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|OUTCNT\(1),
	datab => \mouse1|OUTCNT\(2),
	datac => \mouse1|OUTCNT\(3),
	datad => \mouse1|OUTCNT\(0),
	combout => \mouse1|OUTCNT~0_combout\);

-- Location: LCCOMB_X27_Y20_N30
\mouse1|send_char~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|send_char~0_combout\ = (\mouse1|send_char~q\) # ((\mouse1|LessThan0~0_combout\ & \mouse1|mouse_state.WAIT_OUTPUT_READY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|LessThan0~0_combout\,
	datac => \mouse1|send_char~q\,
	datad => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \mouse1|send_char~0_combout\);

-- Location: FF_X27_Y20_N31
\mouse1|send_char\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|send_char~0_combout\,
	clrn => \mouse1|ALT_INV_send_data~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|send_char~q\);

-- Location: LCCOMB_X28_Y20_N22
\mouse1|output_ready~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|output_ready~0_combout\ = (\mouse1|mouse_state.WAIT_OUTPUT_READY~q\ & !\mouse1|send_char~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \mouse1|send_char~q\,
	combout => \mouse1|output_ready~0_combout\);

-- Location: FF_X28_Y20_N31
\mouse1|OUTCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|OUTCNT~0_combout\,
	clrn => \mouse1|ALT_INV_send_data~q\,
	ena => \mouse1|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|OUTCNT\(3));

-- Location: LCCOMB_X28_Y20_N8
\mouse1|OUTCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|OUTCNT~3_combout\ = (!\mouse1|OUTCNT\(0) & (((!\mouse1|OUTCNT\(1) & !\mouse1|OUTCNT\(2))) # (!\mouse1|OUTCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|OUTCNT\(1),
	datab => \mouse1|OUTCNT\(2),
	datac => \mouse1|OUTCNT\(0),
	datad => \mouse1|OUTCNT\(3),
	combout => \mouse1|OUTCNT~3_combout\);

-- Location: FF_X28_Y20_N9
\mouse1|OUTCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|OUTCNT~3_combout\,
	clrn => \mouse1|ALT_INV_send_data~q\,
	ena => \mouse1|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|OUTCNT\(0));

-- Location: LCCOMB_X28_Y20_N4
\mouse1|OUTCNT~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|OUTCNT~1_combout\ = (!\mouse1|OUTCNT\(3) & (\mouse1|OUTCNT\(2) $ (((\mouse1|OUTCNT\(1) & \mouse1|OUTCNT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|OUTCNT\(1),
	datab => \mouse1|OUTCNT\(0),
	datac => \mouse1|OUTCNT\(2),
	datad => \mouse1|OUTCNT\(3),
	combout => \mouse1|OUTCNT~1_combout\);

-- Location: FF_X28_Y20_N5
\mouse1|OUTCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|OUTCNT~1_combout\,
	clrn => \mouse1|ALT_INV_send_data~q\,
	ena => \mouse1|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|OUTCNT\(2));

-- Location: LCCOMB_X28_Y20_N10
\mouse1|OUTCNT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|OUTCNT~2_combout\ = (\mouse1|OUTCNT\(0) & (!\mouse1|OUTCNT\(1) & ((!\mouse1|OUTCNT\(3)) # (!\mouse1|OUTCNT\(2))))) # (!\mouse1|OUTCNT\(0) & (((\mouse1|OUTCNT\(1) & !\mouse1|OUTCNT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|OUTCNT\(0),
	datab => \mouse1|OUTCNT\(2),
	datac => \mouse1|OUTCNT\(1),
	datad => \mouse1|OUTCNT\(3),
	combout => \mouse1|OUTCNT~2_combout\);

-- Location: FF_X28_Y20_N11
\mouse1|OUTCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|OUTCNT~2_combout\,
	clrn => \mouse1|ALT_INV_send_data~q\,
	ena => \mouse1|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|OUTCNT\(1));

-- Location: LCCOMB_X28_Y20_N18
\mouse1|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|LessThan0~0_combout\ = (\mouse1|OUTCNT\(3) & ((\mouse1|OUTCNT\(2)) # (\mouse1|OUTCNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|OUTCNT\(3),
	datab => \mouse1|OUTCNT\(2),
	datad => \mouse1|OUTCNT\(1),
	combout => \mouse1|LessThan0~0_combout\);

-- Location: LCCOMB_X28_Y20_N16
\mouse1|output_ready~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|output_ready~feeder_combout\ = \mouse1|LessThan0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|LessThan0~0_combout\,
	combout => \mouse1|output_ready~feeder_combout\);

-- Location: FF_X28_Y20_N17
\mouse1|output_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|output_ready~feeder_combout\,
	clrn => \mouse1|ALT_INV_send_data~q\,
	ena => \mouse1|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|output_ready~q\);

-- Location: LCCOMB_X28_Y20_N20
\mouse1|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|Selector3~0_combout\ = (\mouse1|mouse_state.LOAD_COMMAND2~q\) # ((\mouse1|mouse_state.WAIT_OUTPUT_READY~q\ & !\mouse1|output_ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|mouse_state.LOAD_COMMAND2~q\,
	datac => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \mouse1|output_ready~q\,
	combout => \mouse1|Selector3~0_combout\);

-- Location: FF_X28_Y20_N21
\mouse1|mouse_state.WAIT_OUTPUT_READY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mouse1|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\);

-- Location: LCCOMB_X27_Y20_N18
\mouse1|MOUSE_DATA_BUF~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|MOUSE_DATA_BUF~0_combout\ = (!\mouse1|send_char~q\ & ((!\mouse1|OUTCNT\(2)) # (!\mouse1|OUTCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|send_char~q\,
	datac => \mouse1|OUTCNT\(3),
	datad => \mouse1|OUTCNT\(2),
	combout => \mouse1|MOUSE_DATA_BUF~0_combout\);

-- Location: LCCOMB_X27_Y20_N24
\mouse1|MOUSE_DATA_BUF~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|MOUSE_DATA_BUF~1_combout\ = (\mouse1|mouse_state.WAIT_OUTPUT_READY~q\ & (\mouse1|MOUSE_DATA_BUF~0_combout\ & ((!\mouse1|OUTCNT\(1)) # (!\mouse1|OUTCNT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|OUTCNT\(3),
	datab => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \mouse1|OUTCNT\(1),
	datad => \mouse1|MOUSE_DATA_BUF~0_combout\,
	combout => \mouse1|MOUSE_DATA_BUF~1_combout\);

-- Location: FF_X27_Y20_N21
\mouse1|SHIFTOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|SHIFTOUT[9]~feeder_combout\,
	clrn => \mouse1|ALT_INV_send_data~q\,
	ena => \mouse1|MOUSE_DATA_BUF~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTOUT\(9));

-- Location: LCCOMB_X27_Y20_N22
\mouse1|SHIFTOUT[8]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|SHIFTOUT[8]~3_combout\ = !\mouse1|SHIFTOUT\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|SHIFTOUT\(9),
	combout => \mouse1|SHIFTOUT[8]~3_combout\);

-- Location: FF_X27_Y20_N23
\mouse1|SHIFTOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|SHIFTOUT[8]~3_combout\,
	clrn => \mouse1|ALT_INV_send_data~q\,
	ena => \mouse1|MOUSE_DATA_BUF~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTOUT\(8));

-- Location: LCCOMB_X27_Y20_N28
\mouse1|SHIFTOUT[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|SHIFTOUT[7]~feeder_combout\ = \mouse1|SHIFTOUT\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|SHIFTOUT\(8),
	combout => \mouse1|SHIFTOUT[7]~feeder_combout\);

-- Location: FF_X27_Y20_N29
\mouse1|SHIFTOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|SHIFTOUT[7]~feeder_combout\,
	clrn => \mouse1|ALT_INV_send_data~q\,
	ena => \mouse1|MOUSE_DATA_BUF~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTOUT\(7));

-- Location: LCCOMB_X27_Y20_N10
\mouse1|SHIFTOUT[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|SHIFTOUT[6]~feeder_combout\ = \mouse1|SHIFTOUT\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|SHIFTOUT\(7),
	combout => \mouse1|SHIFTOUT[6]~feeder_combout\);

-- Location: FF_X27_Y20_N11
\mouse1|SHIFTOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|SHIFTOUT[6]~feeder_combout\,
	clrn => \mouse1|ALT_INV_send_data~q\,
	ena => \mouse1|MOUSE_DATA_BUF~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTOUT\(6));

-- Location: LCCOMB_X27_Y20_N16
\mouse1|SHIFTOUT[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|SHIFTOUT[5]~feeder_combout\ = \mouse1|SHIFTOUT\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|SHIFTOUT\(6),
	combout => \mouse1|SHIFTOUT[5]~feeder_combout\);

-- Location: FF_X27_Y20_N17
\mouse1|SHIFTOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|SHIFTOUT[5]~feeder_combout\,
	clrn => \mouse1|ALT_INV_send_data~q\,
	ena => \mouse1|MOUSE_DATA_BUF~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTOUT\(5));

-- Location: LCCOMB_X27_Y20_N14
\mouse1|SHIFTOUT[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|SHIFTOUT[4]~2_combout\ = !\mouse1|SHIFTOUT\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|SHIFTOUT\(5),
	combout => \mouse1|SHIFTOUT[4]~2_combout\);

-- Location: FF_X27_Y20_N15
\mouse1|SHIFTOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|SHIFTOUT[4]~2_combout\,
	clrn => \mouse1|ALT_INV_send_data~q\,
	ena => \mouse1|MOUSE_DATA_BUF~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTOUT\(4));

-- Location: LCCOMB_X27_Y20_N8
\mouse1|SHIFTOUT[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|SHIFTOUT[3]~1_combout\ = !\mouse1|SHIFTOUT\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|SHIFTOUT\(4),
	combout => \mouse1|SHIFTOUT[3]~1_combout\);

-- Location: FF_X27_Y20_N9
\mouse1|SHIFTOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|SHIFTOUT[3]~1_combout\,
	clrn => \mouse1|ALT_INV_send_data~q\,
	ena => \mouse1|MOUSE_DATA_BUF~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTOUT\(3));

-- Location: LCCOMB_X27_Y20_N26
\mouse1|SHIFTOUT[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|SHIFTOUT[2]~0_combout\ = !\mouse1|SHIFTOUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|SHIFTOUT\(3),
	combout => \mouse1|SHIFTOUT[2]~0_combout\);

-- Location: FF_X27_Y20_N27
\mouse1|SHIFTOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|SHIFTOUT[2]~0_combout\,
	clrn => \mouse1|ALT_INV_send_data~q\,
	ena => \mouse1|MOUSE_DATA_BUF~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTOUT\(2));

-- Location: LCCOMB_X27_Y20_N12
\mouse1|SHIFTOUT[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|SHIFTOUT[1]~feeder_combout\ = \mouse1|SHIFTOUT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|SHIFTOUT\(2),
	combout => \mouse1|SHIFTOUT[1]~feeder_combout\);

-- Location: FF_X27_Y20_N13
\mouse1|SHIFTOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|SHIFTOUT[1]~feeder_combout\,
	clrn => \mouse1|ALT_INV_send_data~q\,
	ena => \mouse1|MOUSE_DATA_BUF~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTOUT\(1));

-- Location: LCCOMB_X27_Y20_N4
\mouse1|MOUSE_DATA_BUF~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|MOUSE_DATA_BUF~feeder_combout\ = \mouse1|SHIFTOUT\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|SHIFTOUT\(1),
	combout => \mouse1|MOUSE_DATA_BUF~feeder_combout\);

-- Location: FF_X27_Y20_N5
\mouse1|MOUSE_DATA_BUF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|MOUSE_DATA_BUF~feeder_combout\,
	clrn => \mouse1|ALT_INV_send_data~q\,
	ena => \mouse1|MOUSE_DATA_BUF~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|MOUSE_DATA_BUF~q\);

-- Location: LCCOMB_X29_Y18_N4
\mouse1|WideOr4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|WideOr4~combout\ = ((\mouse1|mouse_state.LOAD_COMMAND~q\) # (\mouse1|mouse_state.LOAD_COMMAND2~q\)) # (!\mouse1|mouse_state.INHIBIT_TRANS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|mouse_state.INHIBIT_TRANS~q\,
	datac => \mouse1|mouse_state.LOAD_COMMAND~q\,
	datad => \mouse1|mouse_state.LOAD_COMMAND2~q\,
	combout => \mouse1|WideOr4~combout\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: PLL_2
\PLL1|altpll_component|auto_generated|pll1\ : cycloneiii_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 12,
	c0_initial => 1,
	c0_low => 12,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 2,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 3403,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \PLL1|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \PLL1|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \PLL1|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \PLL1|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G8
\PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X30_Y23_N2
\inst5|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add0~0_combout\ = \inst5|h_count\(0) $ (VCC)
-- \inst5|Add0~1\ = CARRY(\inst5|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|h_count\(0),
	datad => VCC,
	combout => \inst5|Add0~0_combout\,
	cout => \inst5|Add0~1\);

-- Location: FF_X30_Y23_N3
\inst5|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|h_count\(0));

-- Location: LCCOMB_X30_Y23_N4
\inst5|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add0~2_combout\ = (\inst5|h_count\(1) & (!\inst5|Add0~1\)) # (!\inst5|h_count\(1) & ((\inst5|Add0~1\) # (GND)))
-- \inst5|Add0~3\ = CARRY((!\inst5|Add0~1\) # (!\inst5|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|h_count\(1),
	datad => VCC,
	cin => \inst5|Add0~1\,
	combout => \inst5|Add0~2_combout\,
	cout => \inst5|Add0~3\);

-- Location: FF_X30_Y23_N5
\inst5|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|h_count\(1));

-- Location: LCCOMB_X30_Y23_N6
\inst5|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add0~4_combout\ = (\inst5|h_count\(2) & (\inst5|Add0~3\ $ (GND))) # (!\inst5|h_count\(2) & (!\inst5|Add0~3\ & VCC))
-- \inst5|Add0~5\ = CARRY((\inst5|h_count\(2) & !\inst5|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|h_count\(2),
	datad => VCC,
	cin => \inst5|Add0~3\,
	combout => \inst5|Add0~4_combout\,
	cout => \inst5|Add0~5\);

-- Location: FF_X30_Y23_N7
\inst5|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|h_count\(2));

-- Location: LCCOMB_X30_Y23_N8
\inst5|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add0~6_combout\ = (\inst5|h_count\(3) & (!\inst5|Add0~5\)) # (!\inst5|h_count\(3) & ((\inst5|Add0~5\) # (GND)))
-- \inst5|Add0~7\ = CARRY((!\inst5|Add0~5\) # (!\inst5|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|h_count\(3),
	datad => VCC,
	cin => \inst5|Add0~5\,
	combout => \inst5|Add0~6_combout\,
	cout => \inst5|Add0~7\);

-- Location: FF_X30_Y23_N9
\inst5|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|h_count\(3));

-- Location: LCCOMB_X30_Y23_N10
\inst5|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add0~8_combout\ = (\inst5|h_count\(4) & (\inst5|Add0~7\ $ (GND))) # (!\inst5|h_count\(4) & (!\inst5|Add0~7\ & VCC))
-- \inst5|Add0~9\ = CARRY((\inst5|h_count\(4) & !\inst5|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|h_count\(4),
	datad => VCC,
	cin => \inst5|Add0~7\,
	combout => \inst5|Add0~8_combout\,
	cout => \inst5|Add0~9\);

-- Location: FF_X30_Y23_N11
\inst5|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|h_count\(4));

-- Location: LCCOMB_X30_Y23_N24
\inst5|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|process_0~1_combout\ = (\inst5|h_count\(3)) # ((!\inst5|h_count\(5) & (\inst5|h_count\(1) & \inst5|h_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|h_count\(5),
	datab => \inst5|h_count\(3),
	datac => \inst5|h_count\(1),
	datad => \inst5|h_count\(0),
	combout => \inst5|process_0~1_combout\);

-- Location: LCCOMB_X29_Y23_N0
\inst5|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|process_0~2_combout\ = (\inst5|h_count\(4) & ((\inst5|h_count\(2)) # (\inst5|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|h_count\(2),
	datac => \inst5|h_count\(4),
	datad => \inst5|process_0~1_combout\,
	combout => \inst5|process_0~2_combout\);

-- Location: LCCOMB_X30_Y23_N12
\inst5|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add0~10_combout\ = (\inst5|h_count\(5) & (!\inst5|Add0~9\)) # (!\inst5|h_count\(5) & ((\inst5|Add0~9\) # (GND)))
-- \inst5|Add0~11\ = CARRY((!\inst5|Add0~9\) # (!\inst5|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|h_count\(5),
	datad => VCC,
	cin => \inst5|Add0~9\,
	combout => \inst5|Add0~10_combout\,
	cout => \inst5|Add0~11\);

-- Location: LCCOMB_X30_Y23_N14
\inst5|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add0~12_combout\ = (\inst5|h_count\(6) & (\inst5|Add0~11\ $ (GND))) # (!\inst5|h_count\(6) & (!\inst5|Add0~11\ & VCC))
-- \inst5|Add0~13\ = CARRY((\inst5|h_count\(6) & !\inst5|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|h_count\(6),
	datad => VCC,
	cin => \inst5|Add0~11\,
	combout => \inst5|Add0~12_combout\,
	cout => \inst5|Add0~13\);

-- Location: FF_X30_Y23_N15
\inst5|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|h_count\(6));

-- Location: FF_X30_Y23_N17
\inst5|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|h_count\(7));

-- Location: LCCOMB_X29_Y23_N14
\inst5|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Equal0~2_combout\ = (\inst5|h_count\(8) & (\inst5|h_count\(2) & (!\inst5|h_count\(7) & !\inst5|h_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|h_count\(8),
	datab => \inst5|h_count\(2),
	datac => \inst5|h_count\(7),
	datad => \inst5|h_count\(5),
	combout => \inst5|Equal0~2_combout\);

-- Location: LCCOMB_X30_Y23_N28
\inst5|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Equal0~0_combout\ = (\inst5|h_count\(4) & (\inst5|h_count\(3) & (\inst5|h_count\(1) & \inst5|h_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|h_count\(4),
	datab => \inst5|h_count\(3),
	datac => \inst5|h_count\(1),
	datad => \inst5|h_count\(0),
	combout => \inst5|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y23_N12
\inst5|h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|h_count~2_combout\ = (\inst5|Add0~10_combout\ & (((!\inst5|Equal0~0_combout\) # (!\inst5|Equal0~2_combout\)) # (!\inst5|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~1_combout\,
	datab => \inst5|Add0~10_combout\,
	datac => \inst5|Equal0~2_combout\,
	datad => \inst5|Equal0~0_combout\,
	combout => \inst5|h_count~2_combout\);

-- Location: FF_X29_Y23_N13
\inst5|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|h_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|h_count\(5));

-- Location: LCCOMB_X29_Y23_N26
\inst5|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|process_0~3_combout\ = ((\inst5|process_0~2_combout\ & (\inst5|h_count\(6) & \inst5|h_count\(5))) # (!\inst5|process_0~2_combout\ & (!\inst5|h_count\(6) & !\inst5|h_count\(5)))) # (!\inst5|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|process_0~0_combout\,
	datab => \inst5|process_0~2_combout\,
	datac => \inst5|h_count\(6),
	datad => \inst5|h_count\(5),
	combout => \inst5|process_0~3_combout\);

-- Location: FF_X29_Y23_N27
\inst5|horiz_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|horiz_sync~q\);

-- Location: FF_X29_Y23_N11
\inst5|horiz_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst5|horiz_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|horiz_sync_out~q\);

-- Location: LCCOMB_X29_Y23_N4
\inst5|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|h_count~1_combout\ = (\inst5|Add0~18_combout\ & (((!\inst5|Equal0~0_combout\) # (!\inst5|Equal0~2_combout\)) # (!\inst5|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~18_combout\,
	datab => \inst5|Equal0~1_combout\,
	datac => \inst5|Equal0~2_combout\,
	datad => \inst5|Equal0~0_combout\,
	combout => \inst5|h_count~1_combout\);

-- Location: FF_X29_Y23_N5
\inst5|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|h_count\(9));

-- Location: LCCOMB_X29_Y23_N2
\inst5|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Equal0~1_combout\ = (\inst5|h_count\(9) & !\inst5|h_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|h_count\(9),
	datac => \inst5|h_count\(6),
	combout => \inst5|Equal0~1_combout\);

-- Location: LCCOMB_X29_Y23_N30
\inst5|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Equal1~0_combout\ = (\inst5|h_count\(8)) # (((\inst5|h_count\(2)) # (!\inst5|h_count\(5))) # (!\inst5|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|h_count\(8),
	datab => \inst5|h_count\(7),
	datac => \inst5|h_count\(2),
	datad => \inst5|h_count\(5),
	combout => \inst5|Equal1~0_combout\);

-- Location: LCCOMB_X29_Y23_N24
\inst5|v_count[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|v_count[1]~1_combout\ = ((\inst5|Equal0~1_combout\ & (!\inst5|Equal1~0_combout\ & \inst5|Equal0~0_combout\))) # (!\inst5|process_0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|process_0~11_combout\,
	datab => \inst5|Equal0~1_combout\,
	datac => \inst5|Equal1~0_combout\,
	datad => \inst5|Equal0~0_combout\,
	combout => \inst5|v_count[1]~1_combout\);

-- Location: LCCOMB_X29_Y23_N22
\inst5|v_count[7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|v_count[7]~3_combout\ = (\inst5|process_0~11_combout\ & (\inst5|Equal0~1_combout\ & (!\inst5|Equal1~0_combout\ & \inst5|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|process_0~11_combout\,
	datab => \inst5|Equal0~1_combout\,
	datac => \inst5|Equal1~0_combout\,
	datad => \inst5|Equal0~0_combout\,
	combout => \inst5|v_count[7]~3_combout\);

-- Location: LCCOMB_X30_Y23_N22
\inst5|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|process_0~9_combout\ = ((!\inst5|h_count\(2) & ((!\inst5|h_count\(0)) # (!\inst5|h_count\(1))))) # (!\inst5|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|h_count\(2),
	datab => \inst5|h_count\(3),
	datac => \inst5|h_count\(1),
	datad => \inst5|h_count\(0),
	combout => \inst5|process_0~9_combout\);

-- Location: LCCOMB_X29_Y23_N16
\inst5|process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|process_0~10_combout\ = (!\inst5|h_count\(6) & (((\inst5|process_0~9_combout\) # (!\inst5|h_count\(4))) # (!\inst5|h_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|h_count\(5),
	datab => \inst5|h_count\(6),
	datac => \inst5|h_count\(4),
	datad => \inst5|process_0~9_combout\,
	combout => \inst5|process_0~10_combout\);

-- Location: LCCOMB_X29_Y23_N6
\inst5|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|h_count~0_combout\ = (\inst5|Add0~16_combout\ & (((!\inst5|Equal0~1_combout\) # (!\inst5|Equal0~2_combout\)) # (!\inst5|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~16_combout\,
	datab => \inst5|Equal0~0_combout\,
	datac => \inst5|Equal0~2_combout\,
	datad => \inst5|Equal0~1_combout\,
	combout => \inst5|h_count~0_combout\);

-- Location: FF_X29_Y23_N7
\inst5|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|h_count\(8));

-- Location: LCCOMB_X29_Y23_N28
\inst5|process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|process_0~11_combout\ = (\inst5|process_0~8_combout\) # ((!\inst5|h_count\(8) & ((\inst5|process_0~10_combout\) # (!\inst5|h_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|process_0~8_combout\,
	datab => \inst5|process_0~10_combout\,
	datac => \inst5|h_count\(7),
	datad => \inst5|h_count\(8),
	combout => \inst5|process_0~11_combout\);

-- Location: LCCOMB_X23_Y19_N0
\inst5|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add1~0_combout\ = \inst5|v_count\(0) $ (VCC)
-- \inst5|Add1~1\ = CARRY(\inst5|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|v_count\(0),
	datad => VCC,
	combout => \inst5|Add1~0_combout\,
	cout => \inst5|Add1~1\);

-- Location: LCCOMB_X23_Y19_N2
\inst5|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add1~2_combout\ = (\inst5|v_count\(1) & (!\inst5|Add1~1\)) # (!\inst5|v_count\(1) & ((\inst5|Add1~1\) # (GND)))
-- \inst5|Add1~3\ = CARRY((!\inst5|Add1~1\) # (!\inst5|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|v_count\(1),
	datad => VCC,
	cin => \inst5|Add1~1\,
	combout => \inst5|Add1~2_combout\,
	cout => \inst5|Add1~3\);

-- Location: LCCOMB_X23_Y19_N20
\inst5|v_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|v_count~2_combout\ = (\inst5|process_0~11_combout\ & \inst5|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|process_0~11_combout\,
	datad => \inst5|Add1~2_combout\,
	combout => \inst5|v_count~2_combout\);

-- Location: FF_X23_Y19_N21
\inst5|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|v_count~2_combout\,
	ena => \inst5|v_count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|v_count\(1));

-- Location: LCCOMB_X23_Y19_N4
\inst5|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add1~4_combout\ = (\inst5|v_count\(2) & (\inst5|Add1~3\ $ (GND))) # (!\inst5|v_count\(2) & (!\inst5|Add1~3\ & VCC))
-- \inst5|Add1~5\ = CARRY((\inst5|v_count\(2) & !\inst5|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|v_count\(2),
	datad => VCC,
	cin => \inst5|Add1~3\,
	combout => \inst5|Add1~4_combout\,
	cout => \inst5|Add1~5\);

-- Location: LCCOMB_X23_Y19_N6
\inst5|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add1~6_combout\ = (\inst5|v_count\(3) & (!\inst5|Add1~5\)) # (!\inst5|v_count\(3) & ((\inst5|Add1~5\) # (GND)))
-- \inst5|Add1~7\ = CARRY((!\inst5|Add1~5\) # (!\inst5|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|v_count\(3),
	datad => VCC,
	cin => \inst5|Add1~5\,
	combout => \inst5|Add1~6_combout\,
	cout => \inst5|Add1~7\);

-- Location: LCCOMB_X23_Y19_N8
\inst5|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add1~8_combout\ = (\inst5|v_count\(4) & (\inst5|Add1~7\ $ (GND))) # (!\inst5|v_count\(4) & (!\inst5|Add1~7\ & VCC))
-- \inst5|Add1~9\ = CARRY((\inst5|v_count\(4) & !\inst5|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|v_count\(4),
	datad => VCC,
	cin => \inst5|Add1~7\,
	combout => \inst5|Add1~8_combout\,
	cout => \inst5|Add1~9\);

-- Location: LCCOMB_X23_Y19_N10
\inst5|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add1~10_combout\ = (\inst5|v_count\(5) & (!\inst5|Add1~9\)) # (!\inst5|v_count\(5) & ((\inst5|Add1~9\) # (GND)))
-- \inst5|Add1~11\ = CARRY((!\inst5|Add1~9\) # (!\inst5|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|v_count\(5),
	datad => VCC,
	cin => \inst5|Add1~9\,
	combout => \inst5|Add1~10_combout\,
	cout => \inst5|Add1~11\);

-- Location: LCCOMB_X24_Y19_N28
\inst5|v_count[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|v_count[5]~8_combout\ = (\inst5|v_count[1]~1_combout\ & (\inst5|v_count[7]~3_combout\ & ((\inst5|Add1~10_combout\)))) # (!\inst5|v_count[1]~1_combout\ & ((\inst5|v_count\(5)) # ((\inst5|v_count[7]~3_combout\ & \inst5|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|v_count[1]~1_combout\,
	datab => \inst5|v_count[7]~3_combout\,
	datac => \inst5|v_count\(5),
	datad => \inst5|Add1~10_combout\,
	combout => \inst5|v_count[5]~8_combout\);

-- Location: FF_X24_Y19_N29
\inst5|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|v_count[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|v_count\(5));

-- Location: LCCOMB_X23_Y19_N12
\inst5|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add1~12_combout\ = (\inst5|v_count\(6) & (\inst5|Add1~11\ $ (GND))) # (!\inst5|v_count\(6) & (!\inst5|Add1~11\ & VCC))
-- \inst5|Add1~13\ = CARRY((\inst5|v_count\(6) & !\inst5|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|v_count\(6),
	datad => VCC,
	cin => \inst5|Add1~11\,
	combout => \inst5|Add1~12_combout\,
	cout => \inst5|Add1~13\);

-- Location: LCCOMB_X24_Y19_N14
\inst5|v_count[6]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|v_count[6]~9_combout\ = (\inst5|v_count[1]~1_combout\ & (\inst5|v_count[7]~3_combout\ & ((\inst5|Add1~12_combout\)))) # (!\inst5|v_count[1]~1_combout\ & ((\inst5|v_count\(6)) # ((\inst5|v_count[7]~3_combout\ & \inst5|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|v_count[1]~1_combout\,
	datab => \inst5|v_count[7]~3_combout\,
	datac => \inst5|v_count\(6),
	datad => \inst5|Add1~12_combout\,
	combout => \inst5|v_count[6]~9_combout\);

-- Location: FF_X24_Y19_N15
\inst5|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|v_count[6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|v_count\(6));

-- Location: LCCOMB_X23_Y19_N14
\inst5|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add1~14_combout\ = (\inst5|v_count\(7) & (!\inst5|Add1~13\)) # (!\inst5|v_count\(7) & ((\inst5|Add1~13\) # (GND)))
-- \inst5|Add1~15\ = CARRY((!\inst5|Add1~13\) # (!\inst5|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|v_count\(7),
	datad => VCC,
	cin => \inst5|Add1~13\,
	combout => \inst5|Add1~14_combout\,
	cout => \inst5|Add1~15\);

-- Location: LCCOMB_X23_Y19_N28
\inst5|v_count[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|v_count[7]~10_combout\ = (\inst5|v_count[7]~3_combout\ & ((\inst5|Add1~14_combout\) # ((\inst5|v_count\(7) & !\inst5|v_count[1]~1_combout\)))) # (!\inst5|v_count[7]~3_combout\ & (((\inst5|v_count\(7) & !\inst5|v_count[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|v_count[7]~3_combout\,
	datab => \inst5|Add1~14_combout\,
	datac => \inst5|v_count\(7),
	datad => \inst5|v_count[1]~1_combout\,
	combout => \inst5|v_count[7]~10_combout\);

-- Location: FF_X23_Y19_N29
\inst5|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|v_count[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|v_count\(7));

-- Location: LCCOMB_X23_Y19_N16
\inst5|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add1~16_combout\ = (\inst5|v_count\(8) & (\inst5|Add1~15\ $ (GND))) # (!\inst5|v_count\(8) & (!\inst5|Add1~15\ & VCC))
-- \inst5|Add1~17\ = CARRY((\inst5|v_count\(8) & !\inst5|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|v_count\(8),
	datad => VCC,
	cin => \inst5|Add1~15\,
	combout => \inst5|Add1~16_combout\,
	cout => \inst5|Add1~17\);

-- Location: LCCOMB_X23_Y19_N22
\inst5|v_count[8]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|v_count[8]~11_combout\ = (\inst5|v_count[7]~3_combout\ & ((\inst5|Add1~16_combout\) # ((!\inst5|v_count[1]~1_combout\ & \inst5|v_count\(8))))) # (!\inst5|v_count[7]~3_combout\ & (!\inst5|v_count[1]~1_combout\ & (\inst5|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|v_count[7]~3_combout\,
	datab => \inst5|v_count[1]~1_combout\,
	datac => \inst5|v_count\(8),
	datad => \inst5|Add1~16_combout\,
	combout => \inst5|v_count[8]~11_combout\);

-- Location: FF_X23_Y19_N23
\inst5|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|v_count[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|v_count\(8));

-- Location: LCCOMB_X24_Y19_N8
\inst5|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan7~0_combout\ = (\inst5|v_count\(7) & (\inst5|v_count\(8) & (\inst5|v_count\(6) & \inst5|v_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|v_count\(7),
	datab => \inst5|v_count\(8),
	datac => \inst5|v_count\(6),
	datad => \inst5|v_count\(5),
	combout => \inst5|LessThan7~0_combout\);

-- Location: LCCOMB_X24_Y19_N20
\inst5|v_count[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|v_count[2]~4_combout\ = (\inst5|v_count[1]~1_combout\ & (\inst5|Add1~4_combout\ & ((\inst5|v_count[7]~3_combout\)))) # (!\inst5|v_count[1]~1_combout\ & ((\inst5|v_count\(2)) # ((\inst5|Add1~4_combout\ & \inst5|v_count[7]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|v_count[1]~1_combout\,
	datab => \inst5|Add1~4_combout\,
	datac => \inst5|v_count\(2),
	datad => \inst5|v_count[7]~3_combout\,
	combout => \inst5|v_count[2]~4_combout\);

-- Location: FF_X24_Y19_N21
\inst5|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|v_count[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|v_count\(2));

-- Location: LCCOMB_X24_Y19_N6
\inst5|v_count[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|v_count[3]~5_combout\ = (\inst5|v_count[1]~1_combout\ & (\inst5|Add1~6_combout\ & ((\inst5|v_count[7]~3_combout\)))) # (!\inst5|v_count[1]~1_combout\ & ((\inst5|v_count\(3)) # ((\inst5|Add1~6_combout\ & \inst5|v_count[7]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|v_count[1]~1_combout\,
	datab => \inst5|Add1~6_combout\,
	datac => \inst5|v_count\(3),
	datad => \inst5|v_count[7]~3_combout\,
	combout => \inst5|v_count[3]~5_combout\);

-- Location: FF_X24_Y19_N7
\inst5|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|v_count[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|v_count\(3));

-- Location: LCCOMB_X23_Y19_N26
\inst5|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|process_0~4_combout\ = ((\inst5|v_count\(0) $ (!\inst5|v_count\(1))) # (!\inst5|v_count\(3))) # (!\inst5|v_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|v_count\(0),
	datab => \inst5|v_count\(1),
	datac => \inst5|v_count\(2),
	datad => \inst5|v_count\(3),
	combout => \inst5|process_0~4_combout\);

-- Location: LCCOMB_X24_Y19_N4
\inst5|v_count[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|v_count[4]~6_combout\ = (\inst5|v_count[1]~1_combout\ & (\inst5|v_count[7]~3_combout\ & ((\inst5|Add1~8_combout\)))) # (!\inst5|v_count[1]~1_combout\ & ((\inst5|v_count\(4)) # ((\inst5|v_count[7]~3_combout\ & \inst5|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|v_count[1]~1_combout\,
	datab => \inst5|v_count[7]~3_combout\,
	datac => \inst5|v_count\(4),
	datad => \inst5|Add1~8_combout\,
	combout => \inst5|v_count[4]~6_combout\);

-- Location: FF_X24_Y19_N5
\inst5|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|v_count[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|v_count\(4));

-- Location: LCCOMB_X23_Y19_N24
\inst5|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|process_0~5_combout\ = (\inst5|v_count\(9)) # (((\inst5|process_0~4_combout\) # (\inst5|v_count\(4))) # (!\inst5|LessThan7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|v_count\(9),
	datab => \inst5|LessThan7~0_combout\,
	datac => \inst5|process_0~4_combout\,
	datad => \inst5|v_count\(4),
	combout => \inst5|process_0~5_combout\);

-- Location: FF_X23_Y19_N25
\inst5|vert_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|vert_sync~q\);

-- Location: FF_X40_Y15_N17
\inst5|vert_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst5|vert_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|vert_sync_out~q\);

-- Location: IOIBUF_X41_Y12_N22
\mouse_data~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => mouse_data,
	o => \mouse_data~input_o\);

-- Location: LCCOMB_X31_Y20_N18
\mouse1|INCNT~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|INCNT~4_combout\ = (\mouse1|INCNT\(1) & (\mouse1|INCNT\(0) & (!\mouse1|INCNT\(3) & \mouse1|INCNT\(2)))) # (!\mouse1|INCNT\(1) & (!\mouse1|INCNT\(0) & (\mouse1|INCNT\(3) & !\mouse1|INCNT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|INCNT\(1),
	datab => \mouse1|INCNT\(0),
	datac => \mouse1|INCNT\(3),
	datad => \mouse1|INCNT\(2),
	combout => \mouse1|INCNT~4_combout\);

-- Location: LCCOMB_X31_Y20_N14
\mouse1|INCNT[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|INCNT[3]~1_combout\ = (\mouse1|READ_CHAR~q\ & !\mouse1|mouse_state.WAIT_OUTPUT_READY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|READ_CHAR~q\,
	datac => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \mouse1|INCNT[3]~1_combout\);

-- Location: FF_X31_Y20_N19
\mouse1|INCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|INCNT~4_combout\,
	ena => \mouse1|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|INCNT\(3));

-- Location: LCCOMB_X31_Y20_N8
\mouse1|INCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|INCNT~3_combout\ = (!\mouse1|INCNT\(0) & (((!\mouse1|INCNT\(1) & !\mouse1|INCNT\(2))) # (!\mouse1|INCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|INCNT\(1),
	datab => \mouse1|INCNT\(3),
	datac => \mouse1|INCNT\(0),
	datad => \mouse1|INCNT\(2),
	combout => \mouse1|INCNT~3_combout\);

-- Location: FF_X31_Y20_N9
\mouse1|INCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|INCNT~3_combout\,
	ena => \mouse1|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|INCNT\(0));

-- Location: LCCOMB_X31_Y20_N28
\mouse1|INCNT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|INCNT~0_combout\ = (!\mouse1|INCNT\(3) & (\mouse1|INCNT\(2) $ (((\mouse1|INCNT\(1) & \mouse1|INCNT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|INCNT\(1),
	datab => \mouse1|INCNT\(0),
	datac => \mouse1|INCNT\(2),
	datad => \mouse1|INCNT\(3),
	combout => \mouse1|INCNT~0_combout\);

-- Location: FF_X31_Y20_N29
\mouse1|INCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|INCNT~0_combout\,
	ena => \mouse1|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|INCNT\(2));

-- Location: LCCOMB_X31_Y20_N4
\mouse1|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|LessThan1~0_combout\ = ((!\mouse1|INCNT\(1) & (!\mouse1|INCNT\(2) & !\mouse1|INCNT\(0)))) # (!\mouse1|INCNT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|INCNT\(1),
	datab => \mouse1|INCNT\(2),
	datac => \mouse1|INCNT\(0),
	datad => \mouse1|INCNT\(3),
	combout => \mouse1|LessThan1~0_combout\);

-- Location: LCCOMB_X33_Y20_N14
\mouse1|SHIFTIN[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|SHIFTIN[1]~0_combout\ = (\mouse1|READ_CHAR~q\ & (!\mouse1|mouse_state.WAIT_OUTPUT_READY~q\ & \mouse1|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|READ_CHAR~q\,
	datab => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \mouse1|LessThan1~0_combout\,
	combout => \mouse1|SHIFTIN[1]~0_combout\);

-- Location: FF_X33_Y20_N31
\mouse1|SHIFTIN[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \mouse_data~input_o\,
	sload => VCC,
	ena => \mouse1|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTIN\(8));

-- Location: FF_X33_Y20_N19
\mouse1|SHIFTIN[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \mouse1|SHIFTIN\(8),
	sload => VCC,
	ena => \mouse1|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTIN\(7));

-- Location: LCCOMB_X33_Y20_N0
\mouse1|SHIFTIN[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|SHIFTIN[6]~feeder_combout\ = \mouse1|SHIFTIN\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|SHIFTIN\(7),
	combout => \mouse1|SHIFTIN[6]~feeder_combout\);

-- Location: FF_X33_Y20_N1
\mouse1|SHIFTIN[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|SHIFTIN[6]~feeder_combout\,
	ena => \mouse1|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTIN\(6));

-- Location: LCCOMB_X33_Y20_N6
\mouse1|SHIFTIN[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|SHIFTIN[5]~feeder_combout\ = \mouse1|SHIFTIN\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|SHIFTIN\(6),
	combout => \mouse1|SHIFTIN[5]~feeder_combout\);

-- Location: FF_X33_Y20_N7
\mouse1|SHIFTIN[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|SHIFTIN[5]~feeder_combout\,
	ena => \mouse1|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTIN\(5));

-- Location: LCCOMB_X33_Y20_N24
\mouse1|SHIFTIN[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|SHIFTIN[4]~feeder_combout\ = \mouse1|SHIFTIN\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|SHIFTIN\(5),
	combout => \mouse1|SHIFTIN[4]~feeder_combout\);

-- Location: FF_X33_Y20_N25
\mouse1|SHIFTIN[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|SHIFTIN[4]~feeder_combout\,
	ena => \mouse1|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTIN\(4));

-- Location: LCCOMB_X33_Y20_N16
\mouse1|SHIFTIN[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|SHIFTIN[3]~feeder_combout\ = \mouse1|SHIFTIN\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|SHIFTIN\(4),
	combout => \mouse1|SHIFTIN[3]~feeder_combout\);

-- Location: FF_X33_Y20_N17
\mouse1|SHIFTIN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|SHIFTIN[3]~feeder_combout\,
	ena => \mouse1|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTIN\(3));

-- Location: LCCOMB_X33_Y20_N2
\mouse1|SHIFTIN[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|SHIFTIN[2]~feeder_combout\ = \mouse1|SHIFTIN\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|SHIFTIN\(3),
	combout => \mouse1|SHIFTIN[2]~feeder_combout\);

-- Location: FF_X33_Y20_N3
\mouse1|SHIFTIN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|SHIFTIN[2]~feeder_combout\,
	ena => \mouse1|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTIN\(2));

-- Location: FF_X33_Y20_N15
\mouse1|SHIFTIN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \mouse1|SHIFTIN\(2),
	sload => VCC,
	ena => \mouse1|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTIN\(1));

-- Location: LCCOMB_X29_Y20_N2
\mouse1|PACKET_CHAR1[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR1[1]~feeder_combout\ = \mouse1|SHIFTIN\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|SHIFTIN\(1),
	combout => \mouse1|PACKET_CHAR1[1]~feeder_combout\);

-- Location: LCCOMB_X30_Y20_N18
\mouse1|PACKET_COUNT[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_COUNT[0]~feeder_combout\ = \mouse1|PACKET_CHAR1[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|PACKET_CHAR1[1]~0_combout\,
	combout => \mouse1|PACKET_COUNT[0]~feeder_combout\);

-- Location: LCCOMB_X30_Y20_N20
\mouse1|PACKET_CHAR2[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR2[7]~0_combout\ = (\mouse1|READ_CHAR~q\ & (!\mouse1|mouse_state.WAIT_OUTPUT_READY~q\ & !\mouse1|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|READ_CHAR~q\,
	datac => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \mouse1|LessThan1~0_combout\,
	combout => \mouse1|PACKET_CHAR2[7]~0_combout\);

-- Location: FF_X30_Y20_N19
\mouse1|PACKET_COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_COUNT[0]~feeder_combout\,
	ena => \mouse1|PACKET_CHAR2[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_COUNT\(0));

-- Location: LCCOMB_X30_Y20_N14
\mouse1|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|Add3~0_combout\ = \mouse1|PACKET_COUNT\(1) $ (\mouse1|PACKET_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|PACKET_COUNT\(1),
	datad => \mouse1|PACKET_COUNT\(0),
	combout => \mouse1|Add3~0_combout\);

-- Location: LCCOMB_X30_Y20_N4
\mouse1|PACKET_COUNT[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_COUNT[1]~feeder_combout\ = \mouse1|Add3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|Add3~0_combout\,
	combout => \mouse1|PACKET_COUNT[1]~feeder_combout\);

-- Location: FF_X30_Y20_N5
\mouse1|PACKET_COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_COUNT[1]~feeder_combout\,
	ena => \mouse1|PACKET_CHAR2[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_COUNT\(1));

-- Location: LCCOMB_X30_Y20_N30
\mouse1|PACKET_CHAR1[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR1[1]~0_combout\ = (\mouse1|PACKET_COUNT\(1)) # (!\mouse1|PACKET_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|PACKET_COUNT\(0),
	datac => \mouse1|PACKET_COUNT\(1),
	combout => \mouse1|PACKET_CHAR1[1]~0_combout\);

-- Location: LCCOMB_X30_Y20_N16
\mouse1|PACKET_CHAR1[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR1[1]~1_combout\ = (\mouse1|READ_CHAR~q\ & (!\mouse1|mouse_state.WAIT_OUTPUT_READY~q\ & (!\mouse1|PACKET_CHAR1[1]~0_combout\ & !\mouse1|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|READ_CHAR~q\,
	datab => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \mouse1|PACKET_CHAR1[1]~0_combout\,
	datad => \mouse1|LessThan1~0_combout\,
	combout => \mouse1|PACKET_CHAR1[1]~1_combout\);

-- Location: FF_X29_Y20_N3
\mouse1|PACKET_CHAR1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_CHAR1[1]~feeder_combout\,
	ena => \mouse1|PACKET_CHAR1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_CHAR1\(1));

-- Location: LCCOMB_X29_Y20_N12
\mouse1|right_button~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|right_button~feeder_combout\ = \mouse1|PACKET_CHAR1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|PACKET_CHAR1\(1),
	combout => \mouse1|right_button~feeder_combout\);

-- Location: LCCOMB_X30_Y20_N8
\mouse1|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|Equal4~0_combout\ = (!\mouse1|PACKET_COUNT\(0)) # (!\mouse1|PACKET_COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|PACKET_COUNT\(1),
	datad => \mouse1|PACKET_COUNT\(0),
	combout => \mouse1|Equal4~0_combout\);

-- Location: LCCOMB_X30_Y20_N0
\mouse1|right_button~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|right_button~0_combout\ = (\mouse1|READ_CHAR~q\ & (!\mouse1|mouse_state.WAIT_OUTPUT_READY~q\ & (!\mouse1|Equal4~0_combout\ & !\mouse1|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|READ_CHAR~q\,
	datab => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \mouse1|Equal4~0_combout\,
	datad => \mouse1|LessThan1~0_combout\,
	combout => \mouse1|right_button~0_combout\);

-- Location: FF_X29_Y20_N13
\mouse1|right_button\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|right_button~feeder_combout\,
	ena => \mouse1|right_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|right_button~q\);

-- Location: FF_X33_Y20_N29
\mouse1|SHIFTIN[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \mouse1|SHIFTIN\(1),
	sload => VCC,
	ena => \mouse1|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTIN\(0));

-- Location: LCCOMB_X29_Y20_N8
\mouse1|PACKET_CHAR1[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR1[0]~feeder_combout\ = \mouse1|SHIFTIN\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|SHIFTIN\(0),
	combout => \mouse1|PACKET_CHAR1[0]~feeder_combout\);

-- Location: FF_X29_Y20_N9
\mouse1|PACKET_CHAR1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_CHAR1[0]~feeder_combout\,
	ena => \mouse1|PACKET_CHAR1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_CHAR1\(0));

-- Location: FF_X24_Y20_N25
\mouse1|left_button\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \mouse1|PACKET_CHAR1\(0),
	sload => VCC,
	ena => \mouse1|right_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|left_button~q\);

-- Location: LCCOMB_X29_Y23_N8
\inst5|LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan6~0_combout\ = ((!\inst5|h_count\(8) & !\inst5|h_count\(7))) # (!\inst5|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|h_count\(8),
	datac => \inst5|h_count\(9),
	datad => \inst5|h_count\(7),
	combout => \inst5|LessThan6~0_combout\);

-- Location: FF_X30_Y23_N13
\inst5|pixel_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst5|h_count\(0),
	sload => VCC,
	ena => \inst5|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|pixel_column\(0));

-- Location: FF_X26_Y23_N13
\inst5|pixel_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst5|h_count\(1),
	sload => VCC,
	ena => \inst5|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|pixel_column\(1));

-- Location: LCCOMB_X24_Y21_N0
\inst5|pixel_column[1]~_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|pixel_column[1]~_wirecell_combout\ = !\inst5|pixel_column\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|pixel_column\(1),
	combout => \inst5|pixel_column[1]~_wirecell_combout\);

-- Location: LCCOMB_X29_Y22_N0
\inst7|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add3~0_combout\ = \inst5|pixel_column\(2) $ (!\inst5|pixel_column\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(2),
	datad => \inst5|pixel_column\(1),
	combout => \inst7|Add3~0_combout\);

-- Location: FF_X26_Y23_N29
\inst5|pixel_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst5|h_count\(2),
	sload => VCC,
	ena => \inst5|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|pixel_column\(2));

-- Location: FF_X30_Y23_N31
\inst5|pixel_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst5|h_count\(3),
	sload => VCC,
	ena => \inst5|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|pixel_column\(3));

-- Location: LCCOMB_X26_Y23_N2
\inst7|Add3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add3~1_combout\ = \inst5|pixel_column\(3) $ (((!\inst5|pixel_column\(1) & !\inst5|pixel_column\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(1),
	datab => \inst5|pixel_column\(2),
	datad => \inst5|pixel_column\(3),
	combout => \inst7|Add3~1_combout\);

-- Location: FF_X29_Y23_N1
\inst5|pixel_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst5|h_count\(4),
	sload => VCC,
	ena => \inst5|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|pixel_column\(4));

-- Location: LCCOMB_X23_Y21_N28
\inst7|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add3~2_combout\ = \inst5|pixel_column\(4) $ (((!\inst5|pixel_column\(2) & (!\inst5|pixel_column\(1) & !\inst5|pixel_column\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(2),
	datab => \inst5|pixel_column\(1),
	datac => \inst5|pixel_column\(3),
	datad => \inst5|pixel_column\(4),
	combout => \inst7|Add3~2_combout\);

-- Location: LCCOMB_X23_Y19_N30
\inst5|v_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|v_count~0_combout\ = (\inst5|process_0~11_combout\ & \inst5|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|process_0~11_combout\,
	datad => \inst5|Add1~0_combout\,
	combout => \inst5|v_count~0_combout\);

-- Location: FF_X23_Y19_N31
\inst5|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|v_count~0_combout\,
	ena => \inst5|v_count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|v_count\(0));

-- Location: LCCOMB_X27_Y19_N22
\inst5|pixel_row[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|pixel_row[0]~feeder_combout\ = \inst5|v_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|v_count\(0),
	combout => \inst5|pixel_row[0]~feeder_combout\);

-- Location: LCCOMB_X23_Y19_N18
\inst5|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Add1~18_combout\ = \inst5|Add1~17\ $ (\inst5|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst5|v_count\(9),
	cin => \inst5|Add1~17\,
	combout => \inst5|Add1~18_combout\);

-- Location: LCCOMB_X24_Y19_N2
\inst5|v_count[9]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|v_count[9]~7_combout\ = (\inst5|v_count[1]~1_combout\ & (\inst5|v_count[7]~3_combout\ & ((\inst5|Add1~18_combout\)))) # (!\inst5|v_count[1]~1_combout\ & ((\inst5|v_count\(9)) # ((\inst5|v_count[7]~3_combout\ & \inst5|Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|v_count[1]~1_combout\,
	datab => \inst5|v_count[7]~3_combout\,
	datac => \inst5|v_count\(9),
	datad => \inst5|Add1~18_combout\,
	combout => \inst5|v_count[9]~7_combout\);

-- Location: FF_X24_Y19_N3
\inst5|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|v_count[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|v_count\(9));

-- Location: LCCOMB_X24_Y19_N30
\inst5|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LessThan7~1_combout\ = (!\inst5|LessThan7~0_combout\ & !\inst5|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|LessThan7~0_combout\,
	datad => \inst5|v_count\(9),
	combout => \inst5|LessThan7~1_combout\);

-- Location: FF_X27_Y19_N23
\inst5|pixel_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|pixel_row[0]~feeder_combout\,
	ena => \inst5|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|pixel_row\(0));

-- Location: LCCOMB_X23_Y20_N12
\inst7|bird_y[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|bird_y[1]~9_combout\ = \inst7|bird_y\(1) $ (VCC)
-- \inst7|bird_y[1]~10\ = CARRY(\inst7|bird_y\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bird_y\(1),
	datad => VCC,
	combout => \inst7|bird_y[1]~9_combout\,
	cout => \inst7|bird_y[1]~10\);

-- Location: LCCOMB_X22_Y20_N14
\inst7|Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add6~0_combout\ = \inst7|bird_y\(1) $ (VCC)
-- \inst7|Add6~1\ = CARRY(\inst7|bird_y\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|bird_y\(1),
	datad => VCC,
	combout => \inst7|Add6~0_combout\,
	cout => \inst7|Add6~1\);

-- Location: LCCOMB_X27_Y23_N2
\inst|LessThan13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan13~1_combout\ = (((\inst|pipe1_x\(5)) # (\inst|pipe1_x\(8))) # (!\inst|pipe1_x\(6))) # (!\inst|pipe1_x\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe1_x\(7),
	datab => \inst|pipe1_x\(6),
	datac => \inst|pipe1_x\(5),
	datad => \inst|pipe1_x\(8),
	combout => \inst|LessThan13~1_combout\);

-- Location: LCCOMB_X27_Y23_N22
\inst|Add5~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~25_combout\ = ((!\inst|pipe1_x\(9) & (!\inst|LessThan13~0_combout\ & !\inst|LessThan13~1_combout\))) # (!\inst|Add5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add5~2_combout\,
	datab => \inst|pipe1_x\(9),
	datac => \inst|LessThan13~0_combout\,
	datad => \inst|LessThan13~1_combout\,
	combout => \inst|Add5~25_combout\);

-- Location: IOIBUF_X0_Y24_N1
\sw0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw0,
	o => \sw0~input_o\);

-- Location: FF_X27_Y23_N23
\inst|pipe1_x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add5~25_combout\,
	ena => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pipe1_x\(2));

-- Location: LCCOMB_X28_Y23_N0
\inst|Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~0_combout\ = \inst|pipe1_x\(1) $ (VCC)
-- \inst|Add5~1\ = CARRY(\inst|pipe1_x\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|pipe1_x\(1),
	datad => VCC,
	combout => \inst|Add5~0_combout\,
	cout => \inst|Add5~1\);

-- Location: LCCOMB_X28_Y23_N8
\inst|Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~8_combout\ = (\inst|pipe1_x\(5) & ((GND) # (!\inst|Add5~7\))) # (!\inst|pipe1_x\(5) & (\inst|Add5~7\ $ (GND)))
-- \inst|Add5~9\ = CARRY((\inst|pipe1_x\(5)) # (!\inst|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pipe1_x\(5),
	datad => VCC,
	cin => \inst|Add5~7\,
	combout => \inst|Add5~8_combout\,
	cout => \inst|Add5~9\);

-- Location: LCCOMB_X27_Y23_N30
\inst|Add5~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~22_combout\ = (\inst|Add5~8_combout\ & ((\inst|LessThan13~1_combout\) # ((\inst|LessThan13~0_combout\) # (\inst|pipe1_x\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan13~1_combout\,
	datab => \inst|LessThan13~0_combout\,
	datac => \inst|Add5~8_combout\,
	datad => \inst|pipe1_x\(9),
	combout => \inst|Add5~22_combout\);

-- Location: FF_X27_Y23_N31
\inst|pipe1_x[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add5~22_combout\,
	ena => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pipe1_x\(5));

-- Location: LCCOMB_X28_Y23_N10
\inst|Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~10_combout\ = (\inst|pipe1_x\(6) & (!\inst|Add5~9\)) # (!\inst|pipe1_x\(6) & (\inst|Add5~9\ & VCC))
-- \inst|Add5~11\ = CARRY((\inst|pipe1_x\(6) & !\inst|Add5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pipe1_x\(6),
	datad => VCC,
	cin => \inst|Add5~9\,
	combout => \inst|Add5~10_combout\,
	cout => \inst|Add5~11\);

-- Location: LCCOMB_X28_Y23_N12
\inst|Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~12_combout\ = (\inst|pipe1_x\(7) & (\inst|Add5~11\ $ (GND))) # (!\inst|pipe1_x\(7) & ((GND) # (!\inst|Add5~11\)))
-- \inst|Add5~13\ = CARRY((!\inst|Add5~11\) # (!\inst|pipe1_x\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pipe1_x\(7),
	datad => VCC,
	cin => \inst|Add5~11\,
	combout => \inst|Add5~12_combout\,
	cout => \inst|Add5~13\);

-- Location: LCCOMB_X27_Y23_N6
\inst|Add5~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~20_combout\ = (!\inst|Add5~12_combout\ & ((\inst|LessThan13~1_combout\) # ((\inst|LessThan13~0_combout\) # (\inst|pipe1_x\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan13~1_combout\,
	datab => \inst|LessThan13~0_combout\,
	datac => \inst|Add5~12_combout\,
	datad => \inst|pipe1_x\(9),
	combout => \inst|Add5~20_combout\);

-- Location: FF_X27_Y23_N7
\inst|pipe1_x[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add5~20_combout\,
	ena => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pipe1_x\(7));

-- Location: LCCOMB_X28_Y23_N14
\inst|Add5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~14_combout\ = (\inst|pipe1_x\(8) & (\inst|Add5~13\ & VCC)) # (!\inst|pipe1_x\(8) & (!\inst|Add5~13\))
-- \inst|Add5~15\ = CARRY((!\inst|pipe1_x\(8) & !\inst|Add5~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pipe1_x\(8),
	datad => VCC,
	cin => \inst|Add5~13\,
	combout => \inst|Add5~14_combout\,
	cout => \inst|Add5~15\);

-- Location: LCCOMB_X27_Y23_N28
\inst|Add5~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~19_combout\ = (\inst|Add5~14_combout\ & ((\inst|LessThan13~1_combout\) # ((\inst|LessThan13~0_combout\) # (\inst|pipe1_x\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan13~1_combout\,
	datab => \inst|LessThan13~0_combout\,
	datac => \inst|Add5~14_combout\,
	datad => \inst|pipe1_x\(9),
	combout => \inst|Add5~19_combout\);

-- Location: FF_X27_Y23_N29
\inst|pipe1_x[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add5~19_combout\,
	ena => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pipe1_x\(8));

-- Location: LCCOMB_X28_Y23_N16
\inst|Add5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~16_combout\ = \inst|pipe1_x\(9) $ (\inst|Add5~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe1_x\(9),
	cin => \inst|Add5~15\,
	combout => \inst|Add5~16_combout\);

-- Location: LCCOMB_X28_Y23_N26
\inst|Add5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~18_combout\ = (\inst|Add5~16_combout\) # ((!\inst|LessThan13~1_combout\ & (!\inst|LessThan13~0_combout\ & !\inst|pipe1_x\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan13~1_combout\,
	datab => \inst|LessThan13~0_combout\,
	datac => \inst|pipe1_x\(9),
	datad => \inst|Add5~16_combout\,
	combout => \inst|Add5~18_combout\);

-- Location: FF_X28_Y23_N27
\inst|pipe1_x[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add5~18_combout\,
	ena => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pipe1_x\(9));

-- Location: LCCOMB_X28_Y23_N28
\inst|Add5~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~26_combout\ = (\inst|Add5~0_combout\ & ((\inst|LessThan13~1_combout\) # ((\inst|LessThan13~0_combout\) # (\inst|pipe1_x\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan13~1_combout\,
	datab => \inst|LessThan13~0_combout\,
	datac => \inst|pipe1_x\(9),
	datad => \inst|Add5~0_combout\,
	combout => \inst|Add5~26_combout\);

-- Location: FF_X28_Y23_N29
\inst|pipe1_x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add5~26_combout\,
	ena => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pipe1_x\(1));

-- Location: LCCOMB_X27_Y23_N0
\inst|Add5~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~24_combout\ = (\inst|Add5~4_combout\ & ((\inst|pipe1_x\(9)) # ((\inst|LessThan13~0_combout\) # (\inst|LessThan13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add5~4_combout\,
	datab => \inst|pipe1_x\(9),
	datac => \inst|LessThan13~0_combout\,
	datad => \inst|LessThan13~1_combout\,
	combout => \inst|Add5~24_combout\);

-- Location: FF_X27_Y23_N1
\inst|pipe1_x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add5~24_combout\,
	ena => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pipe1_x\(3));

-- Location: LCCOMB_X27_Y23_N4
\inst|LessThan13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan13~0_combout\ = ((\inst|pipe1_x\(1)) # ((\inst|pipe1_x\(3)) # (!\inst|pipe1_x\(2)))) # (!\inst|pipe1_x\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe1_x\(4),
	datab => \inst|pipe1_x\(1),
	datac => \inst|pipe1_x\(2),
	datad => \inst|pipe1_x\(3),
	combout => \inst|LessThan13~0_combout\);

-- Location: LCCOMB_X27_Y23_N24
\inst|Add5~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~21_combout\ = ((!\inst|LessThan13~1_combout\ & (!\inst|LessThan13~0_combout\ & !\inst|pipe1_x\(9)))) # (!\inst|Add5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan13~1_combout\,
	datab => \inst|LessThan13~0_combout\,
	datac => \inst|Add5~10_combout\,
	datad => \inst|pipe1_x\(9),
	combout => \inst|Add5~21_combout\);

-- Location: FF_X27_Y23_N25
\inst|pipe1_x[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add5~21_combout\,
	ena => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pipe1_x\(6));

-- Location: LCCOMB_X28_Y25_N16
\inst|pipe_Location[16]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|pipe_Location[16]~2_combout\ = !\inst|pipe1_x\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|pipe1_x\(6),
	combout => \inst|pipe_Location[16]~2_combout\);

-- Location: FF_X31_Y25_N17
\inst|pipe_Location[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	asdata => \inst|pipe_Location[16]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pipe_Location\(16));

-- Location: FF_X31_Y25_N27
\inst|pipe_Location[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	asdata => \inst|pipe1_x\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pipe_Location\(15));

-- Location: LCCOMB_X32_Y25_N24
\inst2|bird_hit~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|bird_hit~0_combout\ = (\inst|pipe_Location\(16) & \inst|pipe_Location\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|pipe_Location\(16),
	datad => \inst|pipe_Location\(15),
	combout => \inst2|bird_hit~0_combout\);

-- Location: LCCOMB_X27_Y23_N26
\inst|Add5~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add5~23_combout\ = ((!\inst|pipe1_x\(9) & (!\inst|LessThan13~0_combout\ & !\inst|LessThan13~1_combout\))) # (!\inst|Add5~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add5~6_combout\,
	datab => \inst|pipe1_x\(9),
	datac => \inst|LessThan13~0_combout\,
	datad => \inst|LessThan13~1_combout\,
	combout => \inst|Add5~23_combout\);

-- Location: FF_X27_Y23_N27
\inst|pipe1_x[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add5~23_combout\,
	ena => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pipe1_x\(4));

-- Location: LCCOMB_X31_Y25_N24
\inst|pipe_Location[14]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|pipe_Location[14]~1_combout\ = !\inst|pipe1_x\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|pipe1_x\(4),
	combout => \inst|pipe_Location[14]~1_combout\);

-- Location: FF_X31_Y25_N25
\inst|pipe_Location[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst|pipe_Location[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pipe_Location\(14));

-- Location: LCCOMB_X30_Y24_N0
\inst|pipe_Location[12]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|pipe_Location[12]~0_combout\ = !\inst|pipe1_x\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|pipe1_x\(2),
	combout => \inst|pipe_Location[12]~0_combout\);

-- Location: FF_X31_Y25_N21
\inst|pipe_Location[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	asdata => \inst|pipe_Location[12]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pipe_Location\(12));

-- Location: LCCOMB_X31_Y25_N2
\inst2|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add2~2_combout\ = (\inst|pipe_Location\(13) & (!\inst2|Add2~1\)) # (!\inst|pipe_Location\(13) & ((\inst2|Add2~1\) # (GND)))
-- \inst2|Add2~3\ = CARRY((!\inst2|Add2~1\) # (!\inst|pipe_Location\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe_Location\(13),
	datad => VCC,
	cin => \inst2|Add2~1\,
	combout => \inst2|Add2~2_combout\,
	cout => \inst2|Add2~3\);

-- Location: LCCOMB_X31_Y25_N4
\inst2|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add2~4_combout\ = (\inst|pipe_Location\(14) & ((GND) # (!\inst2|Add2~3\))) # (!\inst|pipe_Location\(14) & (\inst2|Add2~3\ $ (GND)))
-- \inst2|Add2~5\ = CARRY((\inst|pipe_Location\(14)) # (!\inst2|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pipe_Location\(14),
	datad => VCC,
	cin => \inst2|Add2~3\,
	combout => \inst2|Add2~4_combout\,
	cout => \inst2|Add2~5\);

-- Location: LCCOMB_X32_Y25_N6
\inst2|bird_hit~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|bird_hit~8_combout\ = (\inst2|bird_hit~7_combout\ & (\inst2|bird_hit~0_combout\ & ((!\inst2|Add2~2_combout\) # (!\inst2|Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bird_hit~7_combout\,
	datab => \inst2|bird_hit~0_combout\,
	datac => \inst2|Add2~4_combout\,
	datad => \inst2|Add2~2_combout\,
	combout => \inst2|bird_hit~8_combout\);

-- Location: FF_X31_Y25_N19
\inst|pipe_Location[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	asdata => \inst|pipe1_x\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pipe_Location\(11));

-- Location: LCCOMB_X32_Y25_N26
\inst2|bird_hit~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|bird_hit~1_combout\ = (\inst|pipe_Location\(15) & (\inst|pipe_Location\(16) & ((\inst|pipe_Location\(12)) # (\inst|pipe_Location\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe_Location\(15),
	datab => \inst|pipe_Location\(12),
	datac => \inst|pipe_Location\(16),
	datad => \inst|pipe_Location\(11),
	combout => \inst2|bird_hit~1_combout\);

-- Location: LCCOMB_X32_Y25_N16
\inst2|bird_hit~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|bird_hit~2_combout\ = (\inst|pipe_Location\(13) & (\inst|pipe_Location\(14) & \inst2|bird_hit~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe_Location\(13),
	datab => \inst|pipe_Location\(14),
	datac => \inst2|bird_hit~1_combout\,
	combout => \inst2|bird_hit~2_combout\);

-- Location: LCCOMB_X23_Y20_N14
\inst7|bird_y[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|bird_y[2]~11_combout\ = (\inst7|bird_y\(2) & (\inst7|bird_y[1]~10\ & VCC)) # (!\inst7|bird_y\(2) & (!\inst7|bird_y[1]~10\))
-- \inst7|bird_y[2]~12\ = CARRY((!\inst7|bird_y\(2) & !\inst7|bird_y[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bird_y\(2),
	datad => VCC,
	cin => \inst7|bird_y[1]~10\,
	combout => \inst7|bird_y[2]~11_combout\,
	cout => \inst7|bird_y[2]~12\);

-- Location: LCCOMB_X23_Y20_N16
\inst7|bird_y[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|bird_y[3]~13_combout\ = (\inst7|bird_y\(3) & ((GND) # (!\inst7|bird_y[2]~12\))) # (!\inst7|bird_y\(3) & (\inst7|bird_y[2]~12\ $ (GND)))
-- \inst7|bird_y[3]~14\ = CARRY((\inst7|bird_y\(3)) # (!\inst7|bird_y[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|bird_y\(3),
	datad => VCC,
	cin => \inst7|bird_y[2]~12\,
	combout => \inst7|bird_y[3]~13_combout\,
	cout => \inst7|bird_y[3]~14\);

-- Location: LCCOMB_X22_Y20_N16
\inst7|Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add6~2_combout\ = (\inst7|bird_y\(2) & (!\inst7|Add6~1\)) # (!\inst7|bird_y\(2) & ((\inst7|Add6~1\) # (GND)))
-- \inst7|Add6~3\ = CARRY((!\inst7|Add6~1\) # (!\inst7|bird_y\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|bird_y\(2),
	datad => VCC,
	cin => \inst7|Add6~1\,
	combout => \inst7|Add6~2_combout\,
	cout => \inst7|Add6~3\);

-- Location: FF_X23_Y20_N15
\inst7|bird_y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst7|bird_y[2]~11_combout\,
	asdata => \inst7|Add6~2_combout\,
	sload => \mouse1|ALT_INV_left_button~q\,
	ena => \inst7|bird_y[9]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|bird_y\(2));

-- Location: LCCOMB_X22_Y20_N18
\inst7|Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add6~4_combout\ = (\inst7|bird_y\(3) & (\inst7|Add6~3\ $ (GND))) # (!\inst7|bird_y\(3) & (!\inst7|Add6~3\ & VCC))
-- \inst7|Add6~5\ = CARRY((\inst7|bird_y\(3) & !\inst7|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|bird_y\(3),
	datad => VCC,
	cin => \inst7|Add6~3\,
	combout => \inst7|Add6~4_combout\,
	cout => \inst7|Add6~5\);

-- Location: FF_X23_Y20_N17
\inst7|bird_y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst7|bird_y[3]~13_combout\,
	asdata => \inst7|Add6~4_combout\,
	sload => \mouse1|ALT_INV_left_button~q\,
	ena => \inst7|bird_y[9]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|bird_y\(3));

-- Location: LCCOMB_X23_Y20_N18
\inst7|bird_y[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|bird_y[4]~15_combout\ = (\inst7|bird_y\(4) & (\inst7|bird_y[3]~14\ & VCC)) # (!\inst7|bird_y\(4) & (!\inst7|bird_y[3]~14\))
-- \inst7|bird_y[4]~16\ = CARRY((!\inst7|bird_y\(4) & !\inst7|bird_y[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|bird_y\(4),
	datad => VCC,
	cin => \inst7|bird_y[3]~14\,
	combout => \inst7|bird_y[4]~15_combout\,
	cout => \inst7|bird_y[4]~16\);

-- Location: LCCOMB_X22_Y20_N20
\inst7|Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add6~6_combout\ = (\inst7|bird_y\(4) & (!\inst7|Add6~5\)) # (!\inst7|bird_y\(4) & ((\inst7|Add6~5\) # (GND)))
-- \inst7|Add6~7\ = CARRY((!\inst7|Add6~5\) # (!\inst7|bird_y\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|bird_y\(4),
	datad => VCC,
	cin => \inst7|Add6~5\,
	combout => \inst7|Add6~6_combout\,
	cout => \inst7|Add6~7\);

-- Location: FF_X23_Y20_N19
\inst7|bird_y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst7|bird_y[4]~15_combout\,
	asdata => \inst7|Add6~6_combout\,
	sload => \mouse1|ALT_INV_left_button~q\,
	ena => \inst7|bird_y[9]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|bird_y\(4));

-- Location: LCCOMB_X23_Y20_N20
\inst7|bird_y[5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|bird_y[5]~17_combout\ = (\inst7|bird_y\(5) & ((GND) # (!\inst7|bird_y[4]~16\))) # (!\inst7|bird_y\(5) & (\inst7|bird_y[4]~16\ $ (GND)))
-- \inst7|bird_y[5]~18\ = CARRY((\inst7|bird_y\(5)) # (!\inst7|bird_y[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|bird_y\(5),
	datad => VCC,
	cin => \inst7|bird_y[4]~16\,
	combout => \inst7|bird_y[5]~17_combout\,
	cout => \inst7|bird_y[5]~18\);

-- Location: LCCOMB_X22_Y20_N22
\inst7|Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add6~8_combout\ = (\inst7|bird_y\(5) & (\inst7|Add6~7\ $ (GND))) # (!\inst7|bird_y\(5) & (!\inst7|Add6~7\ & VCC))
-- \inst7|Add6~9\ = CARRY((\inst7|bird_y\(5) & !\inst7|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bird_y\(5),
	datad => VCC,
	cin => \inst7|Add6~7\,
	combout => \inst7|Add6~8_combout\,
	cout => \inst7|Add6~9\);

-- Location: FF_X23_Y20_N21
\inst7|bird_y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst7|bird_y[5]~17_combout\,
	asdata => \inst7|Add6~8_combout\,
	sload => \mouse1|ALT_INV_left_button~q\,
	ena => \inst7|bird_y[9]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|bird_y\(5));

-- Location: LCCOMB_X23_Y20_N22
\inst7|bird_y[6]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|bird_y[6]~19_combout\ = (\inst7|bird_y\(6) & (\inst7|bird_y[5]~18\ & VCC)) # (!\inst7|bird_y\(6) & (!\inst7|bird_y[5]~18\))
-- \inst7|bird_y[6]~20\ = CARRY((!\inst7|bird_y\(6) & !\inst7|bird_y[5]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bird_y\(6),
	datad => VCC,
	cin => \inst7|bird_y[5]~18\,
	combout => \inst7|bird_y[6]~19_combout\,
	cout => \inst7|bird_y[6]~20\);

-- Location: LCCOMB_X23_Y20_N24
\inst7|bird_y[7]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|bird_y[7]~21_combout\ = (\inst7|bird_y\(7) & ((GND) # (!\inst7|bird_y[6]~20\))) # (!\inst7|bird_y\(7) & (\inst7|bird_y[6]~20\ $ (GND)))
-- \inst7|bird_y[7]~22\ = CARRY((\inst7|bird_y\(7)) # (!\inst7|bird_y[6]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|bird_y\(7),
	datad => VCC,
	cin => \inst7|bird_y[6]~20\,
	combout => \inst7|bird_y[7]~21_combout\,
	cout => \inst7|bird_y[7]~22\);

-- Location: LCCOMB_X22_Y20_N24
\inst7|Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add6~10_combout\ = (\inst7|bird_y\(6) & (!\inst7|Add6~9\)) # (!\inst7|bird_y\(6) & ((\inst7|Add6~9\) # (GND)))
-- \inst7|Add6~11\ = CARRY((!\inst7|Add6~9\) # (!\inst7|bird_y\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|bird_y\(6),
	datad => VCC,
	cin => \inst7|Add6~9\,
	combout => \inst7|Add6~10_combout\,
	cout => \inst7|Add6~11\);

-- Location: FF_X23_Y20_N23
\inst7|bird_y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst7|bird_y[6]~19_combout\,
	asdata => \inst7|Add6~10_combout\,
	sload => \mouse1|ALT_INV_left_button~q\,
	ena => \inst7|bird_y[9]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|bird_y\(6));

-- Location: LCCOMB_X22_Y20_N26
\inst7|Add6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add6~12_combout\ = (\inst7|bird_y\(7) & (\inst7|Add6~11\ $ (GND))) # (!\inst7|bird_y\(7) & (!\inst7|Add6~11\ & VCC))
-- \inst7|Add6~13\ = CARRY((\inst7|bird_y\(7) & !\inst7|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|bird_y\(7),
	datad => VCC,
	cin => \inst7|Add6~11\,
	combout => \inst7|Add6~12_combout\,
	cout => \inst7|Add6~13\);

-- Location: FF_X23_Y20_N25
\inst7|bird_y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst7|bird_y[7]~21_combout\,
	asdata => \inst7|Add6~12_combout\,
	sload => \mouse1|ALT_INV_left_button~q\,
	ena => \inst7|bird_y[9]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|bird_y\(7));

-- Location: LCCOMB_X23_Y20_N26
\inst7|bird_y[8]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|bird_y[8]~28_combout\ = (\inst7|bird_y\(8) & (\inst7|bird_y[7]~22\ & VCC)) # (!\inst7|bird_y\(8) & (!\inst7|bird_y[7]~22\))
-- \inst7|bird_y[8]~29\ = CARRY((!\inst7|bird_y\(8) & !\inst7|bird_y[7]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bird_y\(8),
	datad => VCC,
	cin => \inst7|bird_y[7]~22\,
	combout => \inst7|bird_y[8]~28_combout\,
	cout => \inst7|bird_y[8]~29\);

-- Location: LCCOMB_X23_Y20_N28
\inst7|bird_y[9]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|bird_y[9]~30_combout\ = \inst7|bird_y[8]~29\ $ (\inst7|bird_y\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|bird_y\(9),
	cin => \inst7|bird_y[8]~29\,
	combout => \inst7|bird_y[9]~30_combout\);

-- Location: LCCOMB_X22_Y20_N28
\inst7|Add6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add6~14_combout\ = (\inst7|bird_y\(8) & (!\inst7|Add6~13\)) # (!\inst7|bird_y\(8) & ((\inst7|Add6~13\) # (GND)))
-- \inst7|Add6~15\ = CARRY((!\inst7|Add6~13\) # (!\inst7|bird_y\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|bird_y\(8),
	datad => VCC,
	cin => \inst7|Add6~13\,
	combout => \inst7|Add6~14_combout\,
	cout => \inst7|Add6~15\);

-- Location: FF_X23_Y20_N27
\inst7|bird_y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst7|bird_y[8]~28_combout\,
	asdata => \inst7|Add6~14_combout\,
	sload => \mouse1|ALT_INV_left_button~q\,
	ena => \inst7|bird_y[9]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|bird_y\(8));

-- Location: LCCOMB_X22_Y20_N30
\inst7|Add6~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add6~16_combout\ = \inst7|Add6~15\ $ (!\inst7|bird_y\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|bird_y\(9),
	cin => \inst7|Add6~15\,
	combout => \inst7|Add6~16_combout\);

-- Location: FF_X23_Y20_N29
\inst7|bird_y[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst7|bird_y[9]~30_combout\,
	asdata => \inst7|Add6~16_combout\,
	sload => \mouse1|ALT_INV_left_button~q\,
	ena => \inst7|bird_y[9]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|bird_y\(9));

-- Location: FF_X32_Y25_N23
\inst7|bird_Location[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	asdata => \inst7|bird_y\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|bird_Location\(9));

-- Location: LCCOMB_X21_Y20_N2
\inst7|bird_Location[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|bird_Location[7]~feeder_combout\ = \inst7|bird_y\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|bird_y\(7),
	combout => \inst7|bird_Location[7]~feeder_combout\);

-- Location: FF_X21_Y20_N3
\inst7|bird_Location[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst7|bird_Location[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|bird_Location\(7));

-- Location: FF_X21_Y20_N25
\inst7|bird_Location[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	asdata => \inst7|bird_y\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|bird_Location\(8));

-- Location: LCCOMB_X21_Y20_N0
\inst7|bird_Location[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|bird_Location[4]~feeder_combout\ = \inst7|bird_y\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|bird_y\(4),
	combout => \inst7|bird_Location[4]~feeder_combout\);

-- Location: FF_X21_Y20_N1
\inst7|bird_Location[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst7|bird_Location[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|bird_Location\(4));

-- Location: FF_X21_Y20_N19
\inst7|bird_Location[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	asdata => \inst7|bird_y\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|bird_Location\(1));

-- Location: LCCOMB_X21_Y20_N20
\inst7|bird_Location[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|bird_Location[2]~feeder_combout\ = \inst7|bird_y\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|bird_y\(2),
	combout => \inst7|bird_Location[2]~feeder_combout\);

-- Location: FF_X21_Y20_N21
\inst7|bird_Location[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst7|bird_Location[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|bird_Location\(2));

-- Location: LCCOMB_X21_Y20_N18
\inst2|bird_hit~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|bird_hit~3_combout\ = (\inst7|bird_Location\(4) & ((\inst7|bird_Location\(3)) # ((\inst7|bird_Location\(1)) # (\inst7|bird_Location\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bird_Location\(3),
	datab => \inst7|bird_Location\(4),
	datac => \inst7|bird_Location\(1),
	datad => \inst7|bird_Location\(2),
	combout => \inst2|bird_hit~3_combout\);

-- Location: LCCOMB_X21_Y20_N24
\inst2|bird_hit~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|bird_hit~5_combout\ = (\inst7|bird_Location\(7) & (\inst7|bird_Location\(8) & ((\inst2|bird_hit~4_combout\) # (\inst2|bird_hit~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bird_hit~4_combout\,
	datab => \inst7|bird_Location\(7),
	datac => \inst7|bird_Location\(8),
	datad => \inst2|bird_hit~3_combout\,
	combout => \inst2|bird_hit~5_combout\);

-- Location: LCCOMB_X32_Y25_N22
\inst2|bird_hit~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|bird_hit~6_combout\ = ((\inst2|bird_hit~2_combout\) # ((\inst7|bird_Location\(9)) # (\inst2|bird_hit~5_combout\))) # (!\inst2|check_collision~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|check_collision~0_combout\,
	datab => \inst2|bird_hit~2_combout\,
	datac => \inst7|bird_Location\(9),
	datad => \inst2|bird_hit~5_combout\,
	combout => \inst2|bird_hit~6_combout\);

-- Location: FF_X31_Y25_N15
\inst|pipe_Location[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	asdata => \inst|pipe1_x\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pipe_Location\(19));

-- Location: FF_X31_Y25_N7
\inst|pipe_Location[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	asdata => \inst|pipe1_x\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pipe_Location\(18));

-- Location: LCCOMB_X31_Y25_N8
\inst2|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add2~8_combout\ = (\inst|pipe_Location\(16) & (\inst2|Add2~7\ $ (GND))) # (!\inst|pipe_Location\(16) & (!\inst2|Add2~7\ & VCC))
-- \inst2|Add2~9\ = CARRY((\inst|pipe_Location\(16) & !\inst2|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe_Location\(16),
	datad => VCC,
	cin => \inst2|Add2~7\,
	combout => \inst2|Add2~8_combout\,
	cout => \inst2|Add2~9\);

-- Location: LCCOMB_X31_Y25_N10
\inst2|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add2~10_combout\ = (\inst|pipe_Location\(17) & (!\inst2|Add2~9\)) # (!\inst|pipe_Location\(17) & ((\inst2|Add2~9\) # (GND)))
-- \inst2|Add2~11\ = CARRY((!\inst2|Add2~9\) # (!\inst|pipe_Location\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe_Location\(17),
	datad => VCC,
	cin => \inst2|Add2~9\,
	combout => \inst2|Add2~10_combout\,
	cout => \inst2|Add2~11\);

-- Location: LCCOMB_X31_Y25_N12
\inst2|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add2~12_combout\ = (\inst|pipe_Location\(18) & (\inst2|Add2~11\ $ (GND))) # (!\inst|pipe_Location\(18) & (!\inst2|Add2~11\ & VCC))
-- \inst2|Add2~13\ = CARRY((\inst|pipe_Location\(18) & !\inst2|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pipe_Location\(18),
	datad => VCC,
	cin => \inst2|Add2~11\,
	combout => \inst2|Add2~12_combout\,
	cout => \inst2|Add2~13\);

-- Location: LCCOMB_X31_Y25_N14
\inst2|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add2~14_combout\ = \inst2|Add2~13\ $ (\inst|pipe_Location\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|pipe_Location\(19),
	cin => \inst2|Add2~13\,
	combout => \inst2|Add2~14_combout\);

-- Location: LCCOMB_X31_Y25_N30
\inst2|LessThan8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan8~0_combout\ = (!\inst2|Add2~12_combout\ & (!\inst2|Add2~14_combout\ & !\inst2|Add2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add2~12_combout\,
	datab => \inst2|Add2~14_combout\,
	datad => \inst2|Add2~10_combout\,
	combout => \inst2|LessThan8~0_combout\);

-- Location: LCCOMB_X32_Y25_N30
\inst2|bird_hit~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|bird_hit~9_combout\ = (\inst2|bird_hit~6_combout\) # ((\inst2|LessThan8~0_combout\ & ((\inst2|bird_hit~8_combout\) # (!\inst2|LessThan8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan8~2_combout\,
	datab => \inst2|bird_hit~8_combout\,
	datac => \inst2|bird_hit~6_combout\,
	datad => \inst2|LessThan8~0_combout\,
	combout => \inst2|bird_hit~9_combout\);

-- Location: FF_X32_Y25_N31
\inst2|bird_hit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst2|bird_hit~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|bird_hit\(0));

-- Location: LCCOMB_X23_Y20_N4
\inst7|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add1~2_combout\ = (\inst7|bird_y\(6) & (!\inst7|Add1~1\)) # (!\inst7|bird_y\(6) & ((\inst7|Add1~1\) # (GND)))
-- \inst7|Add1~3\ = CARRY((!\inst7|Add1~1\) # (!\inst7|bird_y\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bird_y\(6),
	datad => VCC,
	cin => \inst7|Add1~1\,
	combout => \inst7|Add1~2_combout\,
	cout => \inst7|Add1~3\);

-- Location: LCCOMB_X23_Y20_N6
\inst7|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Add1~4_combout\ = (\inst7|bird_y\(7) & (\inst7|Add1~3\ $ (GND))) # (!\inst7|bird_y\(7) & (!\inst7|Add1~3\ & VCC))
-- \inst7|Add1~5\ = CARRY((\inst7|bird_y\(7) & !\inst7|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|bird_y\(7),
	datad => VCC,
	cin => \inst7|Add1~3\,
	combout => \inst7|Add1~4_combout\,
	cout => \inst7|Add1~5\);

-- Location: LCCOMB_X24_Y20_N10
\inst7|bird_y[9]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|bird_y[9]~26_combout\ = (!\mouse1|left_button~q\ & (((!\inst7|Add1~4_combout\) # (!\inst7|Add1~2_combout\)) # (!\inst7|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add1~6_combout\,
	datab => \inst7|Add1~2_combout\,
	datac => \inst7|Add1~4_combout\,
	datad => \mouse1|left_button~q\,
	combout => \inst7|bird_y[9]~26_combout\);

-- Location: LCCOMB_X24_Y20_N0
\inst7|bird_y[9]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|bird_y[9]~23_combout\ = (\inst7|bird_y\(2)) # ((\inst7|bird_y\(4)) # ((\inst7|bird_y\(3)) # (\inst7|bird_y\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bird_y\(2),
	datab => \inst7|bird_y\(4),
	datac => \inst7|bird_y\(3),
	datad => \inst7|bird_y\(1),
	combout => \inst7|bird_y[9]~23_combout\);

-- Location: LCCOMB_X23_Y20_N0
\inst7|bird_y[9]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|bird_y[9]~25_combout\ = (\mouse1|left_button~q\ & ((\inst7|bird_y[9]~24_combout\) # ((\inst7|bird_y\(9)) # (\inst7|bird_y[9]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bird_y[9]~24_combout\,
	datab => \inst7|bird_y\(9),
	datac => \inst7|bird_y[9]~23_combout\,
	datad => \mouse1|left_button~q\,
	combout => \inst7|bird_y[9]~25_combout\);

-- Location: LCCOMB_X23_Y20_N30
\inst7|bird_y[9]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|bird_y[9]~27_combout\ = (\inst2|bird_hit\(0) & ((\inst7|bird_y[9]~25_combout\) # ((!\inst7|Add1~8_combout\ & \inst7|bird_y[9]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add1~8_combout\,
	datab => \inst2|bird_hit\(0),
	datac => \inst7|bird_y[9]~26_combout\,
	datad => \inst7|bird_y[9]~25_combout\,
	combout => \inst7|bird_y[9]~27_combout\);

-- Location: FF_X23_Y20_N13
\inst7|bird_y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst7|bird_y[1]~9_combout\,
	asdata => \inst7|Add6~0_combout\,
	sload => \mouse1|ALT_INV_left_button~q\,
	ena => \inst7|bird_y[9]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|bird_y\(1));

-- Location: LCCOMB_X24_Y21_N24
\inst7|rom_y[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|rom_y[1]~0_combout\ = (\inst5|pixel_row\(1) & ((GND) # (!\inst7|bird_y\(1)))) # (!\inst5|pixel_row\(1) & (\inst7|bird_y\(1) $ (GND)))
-- \inst7|rom_y[1]~1\ = CARRY((\inst5|pixel_row\(1)) # (!\inst7|bird_y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_row\(1),
	datab => \inst7|bird_y\(1),
	datad => VCC,
	combout => \inst7|rom_y[1]~0_combout\,
	cout => \inst7|rom_y[1]~1\);

-- Location: LCCOMB_X26_Y19_N0
\inst5|pixel_row[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|pixel_row[2]~feeder_combout\ = \inst5|v_count\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|v_count\(2),
	combout => \inst5|pixel_row[2]~feeder_combout\);

-- Location: FF_X26_Y19_N1
\inst5|pixel_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|pixel_row[2]~feeder_combout\,
	ena => \inst5|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|pixel_row\(2));

-- Location: LCCOMB_X24_Y21_N26
\inst7|rom_y[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|rom_y[2]~2_combout\ = (\inst7|bird_y\(2) & ((\inst5|pixel_row\(2) & (!\inst7|rom_y[1]~1\)) # (!\inst5|pixel_row\(2) & ((\inst7|rom_y[1]~1\) # (GND))))) # (!\inst7|bird_y\(2) & ((\inst5|pixel_row\(2) & (\inst7|rom_y[1]~1\ & VCC)) # 
-- (!\inst5|pixel_row\(2) & (!\inst7|rom_y[1]~1\))))
-- \inst7|rom_y[2]~3\ = CARRY((\inst7|bird_y\(2) & ((!\inst7|rom_y[1]~1\) # (!\inst5|pixel_row\(2)))) # (!\inst7|bird_y\(2) & (!\inst5|pixel_row\(2) & !\inst7|rom_y[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bird_y\(2),
	datab => \inst5|pixel_row\(2),
	datad => VCC,
	cin => \inst7|rom_y[1]~1\,
	combout => \inst7|rom_y[2]~2_combout\,
	cout => \inst7|rom_y[2]~3\);

-- Location: LCCOMB_X24_Y19_N26
\inst5|pixel_row[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|pixel_row[3]~feeder_combout\ = \inst5|v_count\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|v_count\(3),
	combout => \inst5|pixel_row[3]~feeder_combout\);

-- Location: FF_X24_Y19_N27
\inst5|pixel_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|pixel_row[3]~feeder_combout\,
	ena => \inst5|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|pixel_row\(3));

-- Location: LCCOMB_X24_Y21_N28
\inst7|rom_y[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|rom_y[3]~4_combout\ = ((\inst7|bird_y\(3) $ (\inst5|pixel_row\(3) $ (\inst7|rom_y[2]~3\)))) # (GND)
-- \inst7|rom_y[3]~5\ = CARRY((\inst7|bird_y\(3) & (\inst5|pixel_row\(3) & !\inst7|rom_y[2]~3\)) # (!\inst7|bird_y\(3) & ((\inst5|pixel_row\(3)) # (!\inst7|rom_y[2]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bird_y\(3),
	datab => \inst5|pixel_row\(3),
	datad => VCC,
	cin => \inst7|rom_y[2]~3\,
	combout => \inst7|rom_y[3]~4_combout\,
	cout => \inst7|rom_y[3]~5\);

-- Location: FF_X24_Y19_N25
\inst5|pixel_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst5|v_count\(4),
	sload => VCC,
	ena => \inst5|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|pixel_row\(4));

-- Location: LCCOMB_X24_Y21_N30
\inst7|rom_y[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|rom_y[4]~6_combout\ = \inst7|bird_y\(4) $ (\inst7|rom_y[3]~5\ $ (!\inst5|pixel_row\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bird_y\(4),
	datad => \inst5|pixel_row\(4),
	cin => \inst7|rom_y[3]~5\,
	combout => \inst7|rom_y[4]~6_combout\);

-- Location: LCCOMB_X27_Y19_N8
\inst5|pixel_row[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|pixel_row[6]~feeder_combout\ = \inst5|v_count\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|v_count\(6),
	combout => \inst5|pixel_row[6]~feeder_combout\);

-- Location: FF_X27_Y19_N9
\inst5|pixel_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|pixel_row[6]~feeder_combout\,
	ena => \inst5|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|pixel_row\(6));

-- Location: LCCOMB_X26_Y19_N28
\inst5|pixel_row[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|pixel_row[8]~feeder_combout\ = \inst5|v_count\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|v_count\(8),
	combout => \inst5|pixel_row[8]~feeder_combout\);

-- Location: FF_X26_Y19_N29
\inst5|pixel_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|pixel_row[8]~feeder_combout\,
	ena => \inst5|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|pixel_row\(8));

-- Location: LCCOMB_X24_Y20_N12
\inst7|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LessThan3~1_combout\ = (\inst5|pixel_row\(7) & ((\inst5|pixel_row\(8) $ (\inst7|Add1~6_combout\)) # (!\inst7|Add1~4_combout\))) # (!\inst5|pixel_row\(7) & ((\inst7|Add1~4_combout\) # (\inst5|pixel_row\(8) $ (\inst7|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_row\(7),
	datab => \inst5|pixel_row\(8),
	datac => \inst7|Add1~4_combout\,
	datad => \inst7|Add1~6_combout\,
	combout => \inst7|LessThan3~1_combout\);

-- Location: LCCOMB_X24_Y20_N2
\inst7|LessThan3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LessThan3~2_combout\ = (!\inst7|LessThan3~1_combout\ & ((\inst7|LessThan3~0_combout\ & ((\inst7|Add1~2_combout\) # (!\inst5|pixel_row\(6)))) # (!\inst7|LessThan3~0_combout\ & (!\inst5|pixel_row\(6) & \inst7|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan3~0_combout\,
	datab => \inst5|pixel_row\(6),
	datac => \inst7|Add1~2_combout\,
	datad => \inst7|LessThan3~1_combout\,
	combout => \inst7|LessThan3~2_combout\);

-- Location: LCCOMB_X24_Y20_N4
\inst7|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LessThan3~3_combout\ = (\inst5|pixel_row\(8) & (!\inst5|pixel_row\(7) & (\inst7|Add1~4_combout\ & \inst7|Add1~6_combout\))) # (!\inst5|pixel_row\(8) & ((\inst7|Add1~6_combout\) # ((!\inst5|pixel_row\(7) & \inst7|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_row\(7),
	datab => \inst5|pixel_row\(8),
	datac => \inst7|Add1~4_combout\,
	datad => \inst7|Add1~6_combout\,
	combout => \inst7|LessThan3~3_combout\);

-- Location: LCCOMB_X27_Y24_N28
\text_controller|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|LessThan0~0_combout\ = (!\inst5|pixel_column\(4) & (!\inst5|pixel_column\(2) & !\inst5|pixel_column\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pixel_column\(4),
	datac => \inst5|pixel_column\(2),
	datad => \inst5|pixel_column\(3),
	combout => \text_controller|LessThan0~0_combout\);

-- Location: FF_X29_Y23_N15
\inst5|pixel_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst5|h_count\(7),
	sload => VCC,
	ena => \inst5|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|pixel_column\(7));

-- Location: LCCOMB_X24_Y20_N16
\inst7|bird_on~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|bird_on~3_combout\ = (\inst5|pixel_row\(8) & ((\inst5|pixel_row\(7)) # ((!\inst7|bird_y\(7)) # (!\inst7|bird_y\(8))))) # (!\inst5|pixel_row\(8) & (!\inst7|bird_y\(8) & ((\inst5|pixel_row\(7)) # (!\inst7|bird_y\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_row\(7),
	datab => \inst5|pixel_row\(8),
	datac => \inst7|bird_y\(8),
	datad => \inst7|bird_y\(7),
	combout => \inst7|bird_on~3_combout\);

-- Location: LCCOMB_X24_Y20_N14
\inst7|bird_on~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|bird_on~4_combout\ = (\inst7|bird_on~3_combout\ & ((\text_controller|LessThan0~0_combout\ & (\inst7|LessThan0~0_combout\ & \inst5|pixel_column\(7))) # (!\text_controller|LessThan0~0_combout\ & ((!\inst5|pixel_column\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan0~0_combout\,
	datab => \text_controller|LessThan0~0_combout\,
	datac => \inst5|pixel_column\(7),
	datad => \inst7|bird_on~3_combout\,
	combout => \inst7|bird_on~4_combout\);

-- Location: LCCOMB_X24_Y20_N26
\inst7|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LessThan2~0_combout\ = (\inst5|pixel_row\(7) & (\inst7|bird_y\(7) & (\inst5|pixel_row\(8) $ (!\inst7|bird_y\(8))))) # (!\inst5|pixel_row\(7) & (!\inst7|bird_y\(7) & (\inst5|pixel_row\(8) $ (!\inst7|bird_y\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_row\(7),
	datab => \inst5|pixel_row\(8),
	datac => \inst7|bird_y\(8),
	datad => \inst7|bird_y\(7),
	combout => \inst7|LessThan2~0_combout\);

-- Location: LCCOMB_X27_Y21_N8
\inst7|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~0_combout\ = (\inst7|bird_colour|altsyncram_component|auto_generated|q_a\(0) & (!\inst7|bird_colour|altsyncram_component|auto_generated|q_a\(1) & (\inst7|bird_colour|altsyncram_component|auto_generated|q_a\(2) & 
-- \inst7|bird_colour|altsyncram_component|auto_generated|q_a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bird_colour|altsyncram_component|auto_generated|q_a\(0),
	datab => \inst7|bird_colour|altsyncram_component|auto_generated|q_a\(1),
	datac => \inst7|bird_colour|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst7|bird_colour|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst7|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y21_N2
\inst7|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~1_combout\ = (!\inst7|bird_colour|altsyncram_component|auto_generated|q_a\(4) & (\inst7|bird_colour|altsyncram_component|auto_generated|q_a\(5) & (!\inst7|bird_colour|altsyncram_component|auto_generated|q_a\(7) & 
-- \inst7|bird_colour|altsyncram_component|auto_generated|q_a\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bird_colour|altsyncram_component|auto_generated|q_a\(4),
	datab => \inst7|bird_colour|altsyncram_component|auto_generated|q_a\(5),
	datac => \inst7|bird_colour|altsyncram_component|auto_generated|q_a\(7),
	datad => \inst7|bird_colour|altsyncram_component|auto_generated|q_a\(6),
	combout => \inst7|Equal0~1_combout\);

-- Location: FF_X26_Y23_N5
\inst5|pixel_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst5|h_count\(6),
	sload => VCC,
	ena => \inst5|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|pixel_column\(6));

-- Location: FF_X26_Y23_N21
\inst5|pixel_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst5|h_count\(5),
	sload => VCC,
	ena => \inst5|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|pixel_column\(5));

-- Location: LCCOMB_X24_Y24_N0
\inst7|bird_on~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|bird_on~1_combout\ = (!\inst7|bird_y\(9) & ((\inst5|pixel_column\(7)) # ((\inst5|pixel_column\(6) & \inst5|pixel_column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bird_y\(9),
	datab => \inst5|pixel_column\(6),
	datac => \inst5|pixel_column\(5),
	datad => \inst5|pixel_column\(7),
	combout => \inst7|bird_on~1_combout\);

-- Location: LCCOMB_X24_Y24_N22
\inst7|bird_on~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|bird_on~2_combout\ = (\inst7|bird_on~0_combout\ & (\inst7|bird_on~1_combout\ & ((!\inst7|Equal0~1_combout\) # (!\inst7|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bird_on~0_combout\,
	datab => \inst7|Equal0~0_combout\,
	datac => \inst7|Equal0~1_combout\,
	datad => \inst7|bird_on~1_combout\,
	combout => \inst7|bird_on~2_combout\);

-- Location: LCCOMB_X24_Y20_N6
\inst7|bird_on~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|bird_on~5_combout\ = (\inst7|bird_on~4_combout\ & (\inst7|bird_on~2_combout\ & ((!\inst7|LessThan2~0_combout\) # (!\inst7|bird_on~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bird_on~8_combout\,
	datab => \inst7|bird_on~4_combout\,
	datac => \inst7|LessThan2~0_combout\,
	datad => \inst7|bird_on~2_combout\,
	combout => \inst7|bird_on~5_combout\);

-- Location: LCCOMB_X24_Y20_N30
\inst7|bird_on~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|bird_on~6_combout\ = (\inst7|bird_on~5_combout\ & ((\inst7|Add1~8_combout\) # ((\inst7|LessThan3~2_combout\) # (\inst7|LessThan3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add1~8_combout\,
	datab => \inst7|LessThan3~2_combout\,
	datac => \inst7|LessThan3~3_combout\,
	datad => \inst7|bird_on~5_combout\,
	combout => \inst7|bird_on~6_combout\);

-- Location: FF_X24_Y19_N19
\inst5|pixel_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst5|v_count\(7),
	sload => VCC,
	ena => \inst5|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|pixel_row\(7));

-- Location: LCCOMB_X29_Y21_N24
\inst6|r~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|r~0_combout\ = (\inst5|pixel_row\(8) & (\inst5|pixel_row\(6) & \inst5|pixel_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_row\(8),
	datab => \inst5|pixel_row\(6),
	datac => \inst5|pixel_row\(7),
	combout => \inst6|r~0_combout\);

-- Location: LCCOMB_X28_Y19_N2
\inst|pipe1_on~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|pipe1_on~0_combout\ = (\inst5|pixel_row\(3) & ((\inst5|pixel_row\(1)) # ((\inst5|pixel_row\(2)) # (\inst5|pixel_row\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_row\(1),
	datab => \inst5|pixel_row\(2),
	datac => \inst5|pixel_row\(3),
	datad => \inst5|pixel_row\(0),
	combout => \inst|pipe1_on~0_combout\);

-- Location: FF_X28_Y21_N9
\inst5|pixel_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst5|v_count\(5),
	sload => VCC,
	ena => \inst5|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|pixel_row\(5));

-- Location: LCCOMB_X28_Y19_N24
\text_controller|LessThan8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|LessThan8~0_combout\ = (!\inst5|pixel_row\(5) & !\inst5|pixel_row\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|pixel_row\(5),
	datad => \inst5|pixel_row\(4),
	combout => \text_controller|LessThan8~0_combout\);

-- Location: LCCOMB_X28_Y19_N22
\inst|pipe1_on~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|pipe1_on~1_combout\ = (!\inst5|pixel_row\(7) & (((\inst|pipe1_on~0_combout\) # (!\text_controller|LessThan8~0_combout\)) # (!\inst5|pixel_row\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_row\(8),
	datab => \inst|pipe1_on~0_combout\,
	datac => \inst5|pixel_row\(7),
	datad => \text_controller|LessThan8~0_combout\,
	combout => \inst|pipe1_on~1_combout\);

-- Location: LCCOMB_X26_Y19_N30
\inst|pipe1_on~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|pipe1_on~2_combout\ = (\inst|pipe1_on~1_combout\) # ((\text_controller|LessThan8~0_combout\ & (!\inst5|pixel_row\(8) & !\inst5|pixel_row\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|LessThan8~0_combout\,
	datab => \inst5|pixel_row\(8),
	datac => \inst5|pixel_row\(3),
	datad => \inst|pipe1_on~1_combout\,
	combout => \inst|pipe1_on~2_combout\);

-- Location: LCCOMB_X27_Y23_N8
\inst|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = (\inst|pipe1_x\(2) & (\inst|pipe1_x\(3) & VCC)) # (!\inst|pipe1_x\(2) & (\inst|pipe1_x\(3) $ (VCC)))
-- \inst|Add0~1\ = CARRY((!\inst|pipe1_x\(2) & \inst|pipe1_x\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe1_x\(2),
	datab => \inst|pipe1_x\(3),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X27_Y23_N10
\inst|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|pipe1_x\(4) & (!\inst|Add0~1\)) # (!\inst|pipe1_x\(4) & (\inst|Add0~1\ & VCC))
-- \inst|Add0~3\ = CARRY((\inst|pipe1_x\(4) & !\inst|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe1_x\(4),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X27_Y23_N12
\inst|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|pipe1_x\(5) & (\inst|Add0~3\ $ (GND))) # (!\inst|pipe1_x\(5) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|pipe1_x\(5) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe1_x\(5),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X27_Y23_N14
\inst|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|pipe1_x\(6) & ((\inst|Add0~5\) # (GND))) # (!\inst|pipe1_x\(6) & (!\inst|Add0~5\))
-- \inst|Add0~7\ = CARRY((\inst|pipe1_x\(6)) # (!\inst|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pipe1_x\(6),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X27_Y23_N16
\inst|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|pipe1_x\(7) & (!\inst|Add0~7\ & VCC)) # (!\inst|pipe1_x\(7) & (\inst|Add0~7\ $ (GND)))
-- \inst|Add0~9\ = CARRY((!\inst|pipe1_x\(7) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe1_x\(7),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X27_Y23_N18
\inst|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|pipe1_x\(8) & (!\inst|Add0~9\)) # (!\inst|pipe1_x\(8) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|pipe1_x\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pipe1_x\(8),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X27_Y23_N20
\inst|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = \inst|Add0~11\ $ (!\inst|pipe1_x\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|pipe1_x\(9),
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\);

-- Location: LCCOMB_X26_Y23_N10
\inst|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~1_cout\ = CARRY(\inst5|pixel_column\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(0),
	datad => VCC,
	cout => \inst|LessThan1~1_cout\);

-- Location: LCCOMB_X26_Y23_N12
\inst|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~3_cout\ = CARRY((\inst5|pixel_column\(1) & (\inst|pipe1_x\(1) & !\inst|LessThan1~1_cout\)) # (!\inst5|pixel_column\(1) & ((\inst|pipe1_x\(1)) # (!\inst|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(1),
	datab => \inst|pipe1_x\(1),
	datad => VCC,
	cin => \inst|LessThan1~1_cout\,
	cout => \inst|LessThan1~3_cout\);

-- Location: LCCOMB_X26_Y23_N14
\inst|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~5_cout\ = CARRY((\inst|pipe1_x\(2) & (\inst5|pixel_column\(2) & !\inst|LessThan1~3_cout\)) # (!\inst|pipe1_x\(2) & ((\inst5|pixel_column\(2)) # (!\inst|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe1_x\(2),
	datab => \inst5|pixel_column\(2),
	datad => VCC,
	cin => \inst|LessThan1~3_cout\,
	cout => \inst|LessThan1~5_cout\);

-- Location: LCCOMB_X26_Y23_N16
\inst|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~7_cout\ = CARRY((\inst5|pixel_column\(3) & (\inst|Add0~0_combout\ & !\inst|LessThan1~5_cout\)) # (!\inst5|pixel_column\(3) & ((\inst|Add0~0_combout\) # (!\inst|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(3),
	datab => \inst|Add0~0_combout\,
	datad => VCC,
	cin => \inst|LessThan1~5_cout\,
	cout => \inst|LessThan1~7_cout\);

-- Location: LCCOMB_X26_Y23_N18
\inst|LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~9_cout\ = CARRY((\inst5|pixel_column\(4) & ((!\inst|LessThan1~7_cout\) # (!\inst|Add0~2_combout\))) # (!\inst5|pixel_column\(4) & (!\inst|Add0~2_combout\ & !\inst|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(4),
	datab => \inst|Add0~2_combout\,
	datad => VCC,
	cin => \inst|LessThan1~7_cout\,
	cout => \inst|LessThan1~9_cout\);

-- Location: LCCOMB_X26_Y23_N20
\inst|LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~11_cout\ = CARRY((\inst5|pixel_column\(5) & (\inst|Add0~4_combout\ & !\inst|LessThan1~9_cout\)) # (!\inst5|pixel_column\(5) & ((\inst|Add0~4_combout\) # (!\inst|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(5),
	datab => \inst|Add0~4_combout\,
	datad => VCC,
	cin => \inst|LessThan1~9_cout\,
	cout => \inst|LessThan1~11_cout\);

-- Location: LCCOMB_X26_Y23_N22
\inst|LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~13_cout\ = CARRY((\inst5|pixel_column\(6) & ((!\inst|LessThan1~11_cout\) # (!\inst|Add0~6_combout\))) # (!\inst5|pixel_column\(6) & (!\inst|Add0~6_combout\ & !\inst|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(6),
	datab => \inst|Add0~6_combout\,
	datad => VCC,
	cin => \inst|LessThan1~11_cout\,
	cout => \inst|LessThan1~13_cout\);

-- Location: LCCOMB_X26_Y23_N24
\inst|LessThan1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~15_cout\ = CARRY((\inst5|pixel_column\(7) & (\inst|Add0~8_combout\ & !\inst|LessThan1~13_cout\)) # (!\inst5|pixel_column\(7) & ((\inst|Add0~8_combout\) # (!\inst|LessThan1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(7),
	datab => \inst|Add0~8_combout\,
	datad => VCC,
	cin => \inst|LessThan1~13_cout\,
	cout => \inst|LessThan1~15_cout\);

-- Location: LCCOMB_X26_Y23_N26
\inst|LessThan1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~17_cout\ = CARRY((\inst5|pixel_column\(8) & ((!\inst|LessThan1~15_cout\) # (!\inst|Add0~10_combout\))) # (!\inst5|pixel_column\(8) & (!\inst|Add0~10_combout\ & !\inst|LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(8),
	datab => \inst|Add0~10_combout\,
	datad => VCC,
	cin => \inst|LessThan1~15_cout\,
	cout => \inst|LessThan1~17_cout\);

-- Location: LCCOMB_X26_Y23_N28
\inst|LessThan1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~18_combout\ = (\inst5|pixel_column\(9) & ((\inst|LessThan1~17_cout\) # (!\inst|Add0~12_combout\))) # (!\inst5|pixel_column\(9) & (\inst|LessThan1~17_cout\ & !\inst|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(9),
	datad => \inst|Add0~12_combout\,
	cin => \inst|LessThan1~17_cout\,
	combout => \inst|LessThan1~18_combout\);

-- Location: LCCOMB_X27_Y24_N10
\inst|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_cout\ = CARRY((!\inst5|pixel_column\(1) & \inst|pipe1_x\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(1),
	datab => \inst|pipe1_x\(1),
	datad => VCC,
	cout => \inst|LessThan0~1_cout\);

-- Location: LCCOMB_X27_Y24_N12
\inst|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_cout\ = CARRY((\inst5|pixel_column\(2) & ((\inst|pipe1_x\(2)) # (!\inst|LessThan0~1_cout\))) # (!\inst5|pixel_column\(2) & (\inst|pipe1_x\(2) & !\inst|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(2),
	datab => \inst|pipe1_x\(2),
	datad => VCC,
	cin => \inst|LessThan0~1_cout\,
	cout => \inst|LessThan0~3_cout\);

-- Location: LCCOMB_X27_Y24_N14
\inst|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~5_cout\ = CARRY((\inst5|pixel_column\(3) & (\inst|pipe1_x\(3) & !\inst|LessThan0~3_cout\)) # (!\inst5|pixel_column\(3) & ((\inst|pipe1_x\(3)) # (!\inst|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(3),
	datab => \inst|pipe1_x\(3),
	datad => VCC,
	cin => \inst|LessThan0~3_cout\,
	cout => \inst|LessThan0~5_cout\);

-- Location: LCCOMB_X27_Y24_N16
\inst|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~7_cout\ = CARRY((\inst|pipe1_x\(4) & ((\inst5|pixel_column\(4)) # (!\inst|LessThan0~5_cout\))) # (!\inst|pipe1_x\(4) & (\inst5|pixel_column\(4) & !\inst|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe1_x\(4),
	datab => \inst5|pixel_column\(4),
	datad => VCC,
	cin => \inst|LessThan0~5_cout\,
	cout => \inst|LessThan0~7_cout\);

-- Location: LCCOMB_X27_Y24_N18
\inst|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~9_cout\ = CARRY((\inst5|pixel_column\(5) & (\inst|pipe1_x\(5) & !\inst|LessThan0~7_cout\)) # (!\inst5|pixel_column\(5) & ((\inst|pipe1_x\(5)) # (!\inst|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(5),
	datab => \inst|pipe1_x\(5),
	datad => VCC,
	cin => \inst|LessThan0~7_cout\,
	cout => \inst|LessThan0~9_cout\);

-- Location: LCCOMB_X27_Y24_N20
\inst|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~11_cout\ = CARRY((\inst5|pixel_column\(6) & ((\inst|pipe1_x\(6)) # (!\inst|LessThan0~9_cout\))) # (!\inst5|pixel_column\(6) & (\inst|pipe1_x\(6) & !\inst|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(6),
	datab => \inst|pipe1_x\(6),
	datad => VCC,
	cin => \inst|LessThan0~9_cout\,
	cout => \inst|LessThan0~11_cout\);

-- Location: LCCOMB_X27_Y24_N22
\inst|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~13_cout\ = CARRY((\inst5|pixel_column\(7) & (!\inst|pipe1_x\(7) & !\inst|LessThan0~11_cout\)) # (!\inst5|pixel_column\(7) & ((!\inst|LessThan0~11_cout\) # (!\inst|pipe1_x\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(7),
	datab => \inst|pipe1_x\(7),
	datad => VCC,
	cin => \inst|LessThan0~11_cout\,
	cout => \inst|LessThan0~13_cout\);

-- Location: LCCOMB_X27_Y24_N24
\inst|LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~15_cout\ = CARRY((\inst5|pixel_column\(8) & ((!\inst|LessThan0~13_cout\) # (!\inst|pipe1_x\(8)))) # (!\inst5|pixel_column\(8) & (!\inst|pipe1_x\(8) & !\inst|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(8),
	datab => \inst|pipe1_x\(8),
	datad => VCC,
	cin => \inst|LessThan0~13_cout\,
	cout => \inst|LessThan0~15_cout\);

-- Location: LCCOMB_X27_Y24_N26
\inst|LessThan0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~16_combout\ = (\inst5|pixel_column\(9) & (!\inst|LessThan0~15_cout\ & \inst|pipe1_x\(9))) # (!\inst5|pixel_column\(9) & ((\inst|pipe1_x\(9)) # (!\inst|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(9),
	datad => \inst|pipe1_x\(9),
	cin => \inst|LessThan0~15_cout\,
	combout => \inst|LessThan0~16_combout\);

-- Location: LCCOMB_X26_Y21_N14
\inst|pipe1_on~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|pipe1_on~3_combout\ = (!\inst|LessThan1~18_combout\ & (!\inst|LessThan0~16_combout\ & ((\inst|pipe1_on~2_combout\) # (!\inst|pipe2_on~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe2_on~0_combout\,
	datab => \inst|pipe1_on~2_combout\,
	datac => \inst|LessThan1~18_combout\,
	datad => \inst|LessThan0~16_combout\,
	combout => \inst|pipe1_on~3_combout\);

-- Location: LCCOMB_X28_Y19_N0
\inst|pipe2_on~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|pipe2_on~1_combout\ = (\inst5|pixel_row\(3) & (\inst5|pixel_row\(5) & \inst5|pixel_row\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_row\(3),
	datac => \inst5|pixel_row\(5),
	datad => \inst5|pixel_row\(4),
	combout => \inst|pipe2_on~1_combout\);

-- Location: LCCOMB_X28_Y19_N10
\inst|pipe2_on~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|pipe2_on~2_combout\ = (\inst5|pixel_row\(2)) # ((\inst5|pixel_row\(1) & ((\inst5|pixel_row\(0)) # (!\inst5|pixel_row\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_row\(1),
	datab => \inst5|pixel_row\(2),
	datac => \inst5|pixel_row\(8),
	datad => \inst5|pixel_row\(0),
	combout => \inst|pipe2_on~2_combout\);

-- Location: LCCOMB_X28_Y19_N12
\inst|pipe2_on~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|pipe2_on~3_combout\ = (\inst|pipe2_on~1_combout\ & ((\inst|pipe2_on~2_combout\ & ((!\inst5|pixel_row\(7)))) # (!\inst|pipe2_on~2_combout\ & (!\inst5|pixel_row\(8))))) # (!\inst|pipe2_on~1_combout\ & (!\inst5|pixel_row\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_row\(8),
	datab => \inst|pipe2_on~1_combout\,
	datac => \inst5|pixel_row\(7),
	datad => \inst|pipe2_on~2_combout\,
	combout => \inst|pipe2_on~3_combout\);

-- Location: LCCOMB_X9_Y24_N4
\inst|Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~0_combout\ = \inst|pipe2_x\(1) $ (VCC)
-- \inst|Add6~1\ = CARRY(\inst|pipe2_x\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|pipe2_x\(1),
	datad => VCC,
	combout => \inst|Add6~0_combout\,
	cout => \inst|Add6~1\);

-- Location: LCCOMB_X11_Y24_N2
\inst|Add6~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~26_combout\ = (\inst|Add6~0_combout\ & ((\inst|LessThan14~1_combout\) # ((\inst|pipe2_x\(9)) # (\inst|LessThan14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan14~1_combout\,
	datab => \inst|pipe2_x\(9),
	datac => \inst|LessThan14~0_combout\,
	datad => \inst|Add6~0_combout\,
	combout => \inst|Add6~26_combout\);

-- Location: FF_X11_Y24_N3
\inst|pipe2_x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add6~26_combout\,
	ena => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pipe2_x\(1));

-- Location: LCCOMB_X9_Y24_N6
\inst|Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~2_combout\ = (\inst|pipe2_x\(2) & (\inst|Add6~1\ & VCC)) # (!\inst|pipe2_x\(2) & (!\inst|Add6~1\))
-- \inst|Add6~3\ = CARRY((!\inst|pipe2_x\(2) & !\inst|Add6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pipe2_x\(2),
	datad => VCC,
	cin => \inst|Add6~1\,
	combout => \inst|Add6~2_combout\,
	cout => \inst|Add6~3\);

-- Location: LCCOMB_X11_Y24_N4
\inst|Add6~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~25_combout\ = (\inst|Add6~2_combout\ & ((\inst|LessThan14~1_combout\) # ((\inst|pipe2_x\(9)) # (\inst|LessThan14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan14~1_combout\,
	datab => \inst|pipe2_x\(9),
	datac => \inst|LessThan14~0_combout\,
	datad => \inst|Add6~2_combout\,
	combout => \inst|Add6~25_combout\);

-- Location: FF_X11_Y24_N5
\inst|pipe2_x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add6~25_combout\,
	ena => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pipe2_x\(2));

-- Location: LCCOMB_X9_Y24_N8
\inst|Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~4_combout\ = (\inst|pipe2_x\(3) & (\inst|Add6~3\ $ (GND))) # (!\inst|pipe2_x\(3) & ((GND) # (!\inst|Add6~3\)))
-- \inst|Add6~5\ = CARRY((!\inst|Add6~3\) # (!\inst|pipe2_x\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe2_x\(3),
	datad => VCC,
	cin => \inst|Add6~3\,
	combout => \inst|Add6~4_combout\,
	cout => \inst|Add6~5\);

-- Location: LCCOMB_X9_Y24_N30
\inst|Add6~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~24_combout\ = ((!\inst|LessThan14~1_combout\ & (!\inst|pipe2_x\(9) & !\inst|LessThan14~0_combout\))) # (!\inst|Add6~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan14~1_combout\,
	datab => \inst|pipe2_x\(9),
	datac => \inst|Add6~4_combout\,
	datad => \inst|LessThan14~0_combout\,
	combout => \inst|Add6~24_combout\);

-- Location: FF_X9_Y24_N31
\inst|pipe2_x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add6~24_combout\,
	ena => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pipe2_x\(3));

-- Location: LCCOMB_X11_Y24_N8
\inst|LessThan14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan14~0_combout\ = (\inst|pipe2_x\(4)) # ((\inst|pipe2_x\(1)) # ((\inst|pipe2_x\(2)) # (!\inst|pipe2_x\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe2_x\(4),
	datab => \inst|pipe2_x\(1),
	datac => \inst|pipe2_x\(2),
	datad => \inst|pipe2_x\(3),
	combout => \inst|LessThan14~0_combout\);

-- Location: LCCOMB_X9_Y24_N10
\inst|Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~6_combout\ = (\inst|pipe2_x\(4) & (\inst|Add6~5\ & VCC)) # (!\inst|pipe2_x\(4) & (!\inst|Add6~5\))
-- \inst|Add6~7\ = CARRY((!\inst|pipe2_x\(4) & !\inst|Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pipe2_x\(4),
	datad => VCC,
	cin => \inst|Add6~5\,
	combout => \inst|Add6~6_combout\,
	cout => \inst|Add6~7\);

-- Location: LCCOMB_X9_Y24_N28
\inst|Add6~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~23_combout\ = (\inst|Add6~6_combout\ & ((\inst|LessThan14~1_combout\) # ((\inst|pipe2_x\(9)) # (\inst|LessThan14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan14~1_combout\,
	datab => \inst|pipe2_x\(9),
	datac => \inst|LessThan14~0_combout\,
	datad => \inst|Add6~6_combout\,
	combout => \inst|Add6~23_combout\);

-- Location: FF_X9_Y24_N29
\inst|pipe2_x[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add6~23_combout\,
	ena => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pipe2_x\(4));

-- Location: LCCOMB_X9_Y24_N12
\inst|Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~8_combout\ = (\inst|pipe2_x\(5) & (\inst|Add6~7\ $ (GND))) # (!\inst|pipe2_x\(5) & ((GND) # (!\inst|Add6~7\)))
-- \inst|Add6~9\ = CARRY((!\inst|Add6~7\) # (!\inst|pipe2_x\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe2_x\(5),
	datad => VCC,
	cin => \inst|Add6~7\,
	combout => \inst|Add6~8_combout\,
	cout => \inst|Add6~9\);

-- Location: LCCOMB_X9_Y24_N14
\inst|Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~10_combout\ = (\inst|pipe2_x\(6) & (\inst|Add6~9\ & VCC)) # (!\inst|pipe2_x\(6) & (!\inst|Add6~9\))
-- \inst|Add6~11\ = CARRY((!\inst|pipe2_x\(6) & !\inst|Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pipe2_x\(6),
	datad => VCC,
	cin => \inst|Add6~9\,
	combout => \inst|Add6~10_combout\,
	cout => \inst|Add6~11\);

-- Location: LCCOMB_X9_Y24_N0
\inst|Add6~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~21_combout\ = (\inst|Add6~10_combout\ & ((\inst|LessThan14~1_combout\) # ((\inst|pipe2_x\(9)) # (\inst|LessThan14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan14~1_combout\,
	datab => \inst|pipe2_x\(9),
	datac => \inst|Add6~10_combout\,
	datad => \inst|LessThan14~0_combout\,
	combout => \inst|Add6~21_combout\);

-- Location: FF_X9_Y24_N1
\inst|pipe2_x[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add6~21_combout\,
	ena => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pipe2_x\(6));

-- Location: LCCOMB_X9_Y24_N16
\inst|Add6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~12_combout\ = (\inst|pipe2_x\(7) & (\inst|Add6~11\ $ (GND))) # (!\inst|pipe2_x\(7) & ((GND) # (!\inst|Add6~11\)))
-- \inst|Add6~13\ = CARRY((!\inst|Add6~11\) # (!\inst|pipe2_x\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pipe2_x\(7),
	datad => VCC,
	cin => \inst|Add6~11\,
	combout => \inst|Add6~12_combout\,
	cout => \inst|Add6~13\);

-- Location: LCCOMB_X9_Y24_N2
\inst|Add6~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~20_combout\ = (!\inst|Add6~12_combout\ & ((\inst|LessThan14~1_combout\) # ((\inst|pipe2_x\(9)) # (\inst|LessThan14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan14~1_combout\,
	datab => \inst|pipe2_x\(9),
	datac => \inst|LessThan14~0_combout\,
	datad => \inst|Add6~12_combout\,
	combout => \inst|Add6~20_combout\);

-- Location: FF_X9_Y24_N3
\inst|pipe2_x[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add6~20_combout\,
	ena => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pipe2_x\(7));

-- Location: LCCOMB_X9_Y24_N20
\inst|Add6~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~16_combout\ = \inst|Add6~15\ $ (\inst|pipe2_x\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|pipe2_x\(9),
	cin => \inst|Add6~15\,
	combout => \inst|Add6~16_combout\);

-- Location: LCCOMB_X9_Y24_N24
\inst|Add6~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~18_combout\ = (\inst|Add6~16_combout\) # ((!\inst|LessThan14~1_combout\ & (!\inst|LessThan14~0_combout\ & !\inst|pipe2_x\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan14~1_combout\,
	datab => \inst|LessThan14~0_combout\,
	datac => \inst|pipe2_x\(9),
	datad => \inst|Add6~16_combout\,
	combout => \inst|Add6~18_combout\);

-- Location: FF_X9_Y24_N25
\inst|pipe2_x[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add6~18_combout\,
	ena => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pipe2_x\(9));

-- Location: LCCOMB_X29_Y23_N20
\inst5|pixel_column[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|pixel_column[8]~feeder_combout\ = \inst5|h_count\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|h_count\(8),
	combout => \inst5|pixel_column[8]~feeder_combout\);

-- Location: FF_X29_Y23_N21
\inst5|pixel_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|pixel_column[8]~feeder_combout\,
	ena => \inst5|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|pixel_column\(8));

-- Location: LCCOMB_X9_Y24_N22
\inst|Add6~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add6~22_combout\ = ((!\inst|LessThan14~1_combout\ & (!\inst|pipe2_x\(9) & !\inst|LessThan14~0_combout\))) # (!\inst|Add6~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan14~1_combout\,
	datab => \inst|pipe2_x\(9),
	datac => \inst|LessThan14~0_combout\,
	datad => \inst|Add6~8_combout\,
	combout => \inst|Add6~22_combout\);

-- Location: FF_X9_Y24_N23
\inst|pipe2_x[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst|Add6~22_combout\,
	ena => \sw0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pipe2_x\(5));

-- Location: LCCOMB_X10_Y24_N14
\inst|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan5~1_cout\ = CARRY((\inst|pipe2_x\(1) & !\inst5|pixel_column\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe2_x\(1),
	datab => \inst5|pixel_column\(1),
	datad => VCC,
	cout => \inst|LessThan5~1_cout\);

-- Location: LCCOMB_X10_Y24_N16
\inst|LessThan5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan5~3_cout\ = CARRY((\inst|pipe2_x\(2) & (\inst5|pixel_column\(2) & !\inst|LessThan5~1_cout\)) # (!\inst|pipe2_x\(2) & ((\inst5|pixel_column\(2)) # (!\inst|LessThan5~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe2_x\(2),
	datab => \inst5|pixel_column\(2),
	datad => VCC,
	cin => \inst|LessThan5~1_cout\,
	cout => \inst|LessThan5~3_cout\);

-- Location: LCCOMB_X10_Y24_N18
\inst|LessThan5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan5~5_cout\ = CARRY((\inst5|pixel_column\(3) & (!\inst|pipe2_x\(3) & !\inst|LessThan5~3_cout\)) # (!\inst5|pixel_column\(3) & ((!\inst|LessThan5~3_cout\) # (!\inst|pipe2_x\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(3),
	datab => \inst|pipe2_x\(3),
	datad => VCC,
	cin => \inst|LessThan5~3_cout\,
	cout => \inst|LessThan5~5_cout\);

-- Location: LCCOMB_X10_Y24_N20
\inst|LessThan5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan5~7_cout\ = CARRY((\inst5|pixel_column\(4) & ((!\inst|LessThan5~5_cout\) # (!\inst|pipe2_x\(4)))) # (!\inst5|pixel_column\(4) & (!\inst|pipe2_x\(4) & !\inst|LessThan5~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(4),
	datab => \inst|pipe2_x\(4),
	datad => VCC,
	cin => \inst|LessThan5~5_cout\,
	cout => \inst|LessThan5~7_cout\);

-- Location: LCCOMB_X10_Y24_N22
\inst|LessThan5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan5~9_cout\ = CARRY((\inst5|pixel_column\(5) & (!\inst|pipe2_x\(5) & !\inst|LessThan5~7_cout\)) # (!\inst5|pixel_column\(5) & ((!\inst|LessThan5~7_cout\) # (!\inst|pipe2_x\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(5),
	datab => \inst|pipe2_x\(5),
	datad => VCC,
	cin => \inst|LessThan5~7_cout\,
	cout => \inst|LessThan5~9_cout\);

-- Location: LCCOMB_X10_Y24_N24
\inst|LessThan5~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan5~11_cout\ = CARRY((\inst|pipe2_x\(6) & (\inst5|pixel_column\(6) & !\inst|LessThan5~9_cout\)) # (!\inst|pipe2_x\(6) & ((\inst5|pixel_column\(6)) # (!\inst|LessThan5~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe2_x\(6),
	datab => \inst5|pixel_column\(6),
	datad => VCC,
	cin => \inst|LessThan5~9_cout\,
	cout => \inst|LessThan5~11_cout\);

-- Location: LCCOMB_X10_Y24_N26
\inst|LessThan5~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan5~13_cout\ = CARRY((\inst|pipe2_x\(7) & (!\inst5|pixel_column\(7) & !\inst|LessThan5~11_cout\)) # (!\inst|pipe2_x\(7) & ((!\inst|LessThan5~11_cout\) # (!\inst5|pixel_column\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe2_x\(7),
	datab => \inst5|pixel_column\(7),
	datad => VCC,
	cin => \inst|LessThan5~11_cout\,
	cout => \inst|LessThan5~13_cout\);

-- Location: LCCOMB_X10_Y24_N28
\inst|LessThan5~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan5~15_cout\ = CARRY((\inst|pipe2_x\(8) & ((\inst5|pixel_column\(8)) # (!\inst|LessThan5~13_cout\))) # (!\inst|pipe2_x\(8) & (\inst5|pixel_column\(8) & !\inst|LessThan5~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe2_x\(8),
	datab => \inst5|pixel_column\(8),
	datad => VCC,
	cin => \inst|LessThan5~13_cout\,
	cout => \inst|LessThan5~15_cout\);

-- Location: LCCOMB_X10_Y24_N30
\inst|LessThan5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan5~16_combout\ = (\inst5|pixel_column\(9) & (!\inst|LessThan5~15_cout\ & \inst|pipe2_x\(9))) # (!\inst5|pixel_column\(9) & ((\inst|pipe2_x\(9)) # (!\inst|LessThan5~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(9),
	datad => \inst|pipe2_x\(9),
	cin => \inst|LessThan5~15_cout\,
	combout => \inst|LessThan5~16_combout\);

-- Location: FF_X26_Y23_N27
\inst5|pixel_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst5|h_count\(9),
	sload => VCC,
	ena => \inst5|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|pixel_column\(9));

-- Location: LCCOMB_X10_Y24_N4
\inst|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~4_combout\ = (\inst|pipe2_x\(5) & (!\inst|Add2~3\ & VCC)) # (!\inst|pipe2_x\(5) & (\inst|Add2~3\ $ (GND)))
-- \inst|Add2~5\ = CARRY((!\inst|pipe2_x\(5) & !\inst|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pipe2_x\(5),
	datad => VCC,
	cin => \inst|Add2~3\,
	combout => \inst|Add2~4_combout\,
	cout => \inst|Add2~5\);

-- Location: LCCOMB_X10_Y24_N6
\inst|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~6_combout\ = (\inst|pipe2_x\(6) & (!\inst|Add2~5\)) # (!\inst|pipe2_x\(6) & ((\inst|Add2~5\) # (GND)))
-- \inst|Add2~7\ = CARRY((!\inst|Add2~5\) # (!\inst|pipe2_x\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe2_x\(6),
	datad => VCC,
	cin => \inst|Add2~5\,
	combout => \inst|Add2~6_combout\,
	cout => \inst|Add2~7\);

-- Location: LCCOMB_X10_Y24_N12
\inst|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~12_combout\ = \inst|Add2~11\ $ (!\inst|pipe2_x\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|pipe2_x\(9),
	cin => \inst|Add2~11\,
	combout => \inst|Add2~12_combout\);

-- Location: LCCOMB_X11_Y24_N12
\inst|LessThan6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan6~1_cout\ = CARRY(\inst5|pixel_column\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pixel_column\(0),
	datad => VCC,
	cout => \inst|LessThan6~1_cout\);

-- Location: LCCOMB_X11_Y24_N14
\inst|LessThan6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan6~3_cout\ = CARRY((\inst5|pixel_column\(1) & (\inst|pipe2_x\(1) & !\inst|LessThan6~1_cout\)) # (!\inst5|pixel_column\(1) & ((\inst|pipe2_x\(1)) # (!\inst|LessThan6~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(1),
	datab => \inst|pipe2_x\(1),
	datad => VCC,
	cin => \inst|LessThan6~1_cout\,
	cout => \inst|LessThan6~3_cout\);

-- Location: LCCOMB_X11_Y24_N16
\inst|LessThan6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan6~5_cout\ = CARRY((\inst5|pixel_column\(2) & ((\inst|pipe2_x\(2)) # (!\inst|LessThan6~3_cout\))) # (!\inst5|pixel_column\(2) & (\inst|pipe2_x\(2) & !\inst|LessThan6~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(2),
	datab => \inst|pipe2_x\(2),
	datad => VCC,
	cin => \inst|LessThan6~3_cout\,
	cout => \inst|LessThan6~5_cout\);

-- Location: LCCOMB_X11_Y24_N18
\inst|LessThan6~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan6~7_cout\ = CARRY((\inst|Add2~0_combout\ & ((!\inst|LessThan6~5_cout\) # (!\inst5|pixel_column\(3)))) # (!\inst|Add2~0_combout\ & (!\inst5|pixel_column\(3) & !\inst|LessThan6~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~0_combout\,
	datab => \inst5|pixel_column\(3),
	datad => VCC,
	cin => \inst|LessThan6~5_cout\,
	cout => \inst|LessThan6~7_cout\);

-- Location: LCCOMB_X11_Y24_N20
\inst|LessThan6~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan6~9_cout\ = CARRY((\inst|Add2~2_combout\ & (\inst5|pixel_column\(4) & !\inst|LessThan6~7_cout\)) # (!\inst|Add2~2_combout\ & ((\inst5|pixel_column\(4)) # (!\inst|LessThan6~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~2_combout\,
	datab => \inst5|pixel_column\(4),
	datad => VCC,
	cin => \inst|LessThan6~7_cout\,
	cout => \inst|LessThan6~9_cout\);

-- Location: LCCOMB_X11_Y24_N22
\inst|LessThan6~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan6~11_cout\ = CARRY((\inst5|pixel_column\(5) & (\inst|Add2~4_combout\ & !\inst|LessThan6~9_cout\)) # (!\inst5|pixel_column\(5) & ((\inst|Add2~4_combout\) # (!\inst|LessThan6~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(5),
	datab => \inst|Add2~4_combout\,
	datad => VCC,
	cin => \inst|LessThan6~9_cout\,
	cout => \inst|LessThan6~11_cout\);

-- Location: LCCOMB_X11_Y24_N24
\inst|LessThan6~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan6~13_cout\ = CARRY((\inst5|pixel_column\(6) & ((!\inst|LessThan6~11_cout\) # (!\inst|Add2~6_combout\))) # (!\inst5|pixel_column\(6) & (!\inst|Add2~6_combout\ & !\inst|LessThan6~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(6),
	datab => \inst|Add2~6_combout\,
	datad => VCC,
	cin => \inst|LessThan6~11_cout\,
	cout => \inst|LessThan6~13_cout\);

-- Location: LCCOMB_X11_Y24_N26
\inst|LessThan6~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan6~15_cout\ = CARRY((\inst|Add2~8_combout\ & ((!\inst|LessThan6~13_cout\) # (!\inst5|pixel_column\(7)))) # (!\inst|Add2~8_combout\ & (!\inst5|pixel_column\(7) & !\inst|LessThan6~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~8_combout\,
	datab => \inst5|pixel_column\(7),
	datad => VCC,
	cin => \inst|LessThan6~13_cout\,
	cout => \inst|LessThan6~15_cout\);

-- Location: LCCOMB_X11_Y24_N28
\inst|LessThan6~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan6~17_cout\ = CARRY((\inst|Add2~10_combout\ & (\inst5|pixel_column\(8) & !\inst|LessThan6~15_cout\)) # (!\inst|Add2~10_combout\ & ((\inst5|pixel_column\(8)) # (!\inst|LessThan6~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~10_combout\,
	datab => \inst5|pixel_column\(8),
	datad => VCC,
	cin => \inst|LessThan6~15_cout\,
	cout => \inst|LessThan6~17_cout\);

-- Location: LCCOMB_X11_Y24_N30
\inst|LessThan6~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan6~18_combout\ = (\inst5|pixel_column\(9) & ((\inst|LessThan6~17_cout\) # (!\inst|Add2~12_combout\))) # (!\inst5|pixel_column\(9) & (\inst|LessThan6~17_cout\ & !\inst|Add2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pixel_column\(9),
	datad => \inst|Add2~12_combout\,
	cin => \inst|LessThan6~17_cout\,
	combout => \inst|LessThan6~18_combout\);

-- Location: LCCOMB_X26_Y21_N16
\inst|pipe2_on~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|pipe2_on~4_combout\ = (!\inst|LessThan5~16_combout\ & (!\inst|LessThan6~18_combout\ & ((\inst|pipe2_on~3_combout\) # (!\inst|pipe2_on~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe2_on~0_combout\,
	datab => \inst|pipe2_on~3_combout\,
	datac => \inst|LessThan5~16_combout\,
	datad => \inst|LessThan6~18_combout\,
	combout => \inst|pipe2_on~4_combout\);

-- Location: LCCOMB_X26_Y21_N6
\inst6|b~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|b~0_combout\ = (\inst6|r~0_combout\) # ((!\inst|pipe3_on~4_combout\ & (!\inst|pipe1_on~3_combout\ & !\inst|pipe2_on~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe3_on~4_combout\,
	datab => \inst6|r~0_combout\,
	datac => \inst|pipe1_on~3_combout\,
	datad => \inst|pipe2_on~4_combout\,
	combout => \inst6|b~0_combout\);

-- Location: LCCOMB_X26_Y21_N28
\inst5|red_current[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|red_current[2]~0_combout\ = (\inst7|bird_on~6_combout\ & (((\inst7|bird_colour|altsyncram_component|auto_generated|q_a\(7))))) # (!\inst7|bird_on~6_combout\ & (\inst5|red_current[2]~3_combout\ & ((\inst6|b~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|red_current[2]~3_combout\,
	datab => \inst7|bird_colour|altsyncram_component|auto_generated|q_a\(7),
	datac => \inst7|bird_on~6_combout\,
	datad => \inst6|b~0_combout\,
	combout => \inst5|red_current[2]~0_combout\);

-- Location: LCCOMB_X26_Y21_N24
\inst5|red_current[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|red_current[2]~feeder_combout\ = \inst5|red_current[2]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|red_current[2]~0_combout\,
	combout => \inst5|red_current[2]~feeder_combout\);

-- Location: LCCOMB_X33_Y20_N26
\mouse1|PACKET_CHAR2[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR2[6]~feeder_combout\ = \mouse1|SHIFTIN\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|SHIFTIN\(6),
	combout => \mouse1|PACKET_CHAR2[6]~feeder_combout\);

-- Location: LCCOMB_X30_Y20_N26
\mouse1|READ_CHAR~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|READ_CHAR~0_combout\ = (\mouse1|READ_CHAR~q\ & ((\mouse1|LessThan1~0_combout\))) # (!\mouse1|READ_CHAR~q\ & (!\mouse_data~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse_data~input_o\,
	datac => \mouse1|READ_CHAR~q\,
	datad => \mouse1|LessThan1~0_combout\,
	combout => \mouse1|READ_CHAR~0_combout\);

-- Location: FF_X30_Y20_N27
\mouse1|READ_CHAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|READ_CHAR~0_combout\,
	ena => \mouse1|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|READ_CHAR~q\);

-- Location: LCCOMB_X30_Y20_N12
\mouse1|PACKET_CHAR2[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR2[7]~1_combout\ = (\mouse1|PACKET_COUNT\(1) & \mouse1|READ_CHAR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|PACKET_COUNT\(1),
	datad => \mouse1|READ_CHAR~q\,
	combout => \mouse1|PACKET_CHAR2[7]~1_combout\);

-- Location: LCCOMB_X31_Y20_N12
\mouse1|PACKET_CHAR2[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR2[7]~2_combout\ = (!\mouse1|mouse_state.WAIT_OUTPUT_READY~q\ & (!\mouse1|PACKET_COUNT\(0) & (!\mouse1|LessThan1~0_combout\ & \mouse1|PACKET_CHAR2[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \mouse1|PACKET_COUNT\(0),
	datac => \mouse1|LessThan1~0_combout\,
	datad => \mouse1|PACKET_CHAR2[7]~1_combout\,
	combout => \mouse1|PACKET_CHAR2[7]~2_combout\);

-- Location: FF_X33_Y20_N27
\mouse1|PACKET_CHAR2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_CHAR2[6]~feeder_combout\,
	ena => \mouse1|PACKET_CHAR2[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_CHAR2\(6));

-- Location: LCCOMB_X33_Y20_N22
\mouse1|PACKET_CHAR2[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR2[4]~feeder_combout\ = \mouse1|SHIFTIN\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|SHIFTIN\(4),
	combout => \mouse1|PACKET_CHAR2[4]~feeder_combout\);

-- Location: FF_X33_Y20_N23
\mouse1|PACKET_CHAR2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_CHAR2[4]~feeder_combout\,
	ena => \mouse1|PACKET_CHAR2[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_CHAR2\(4));

-- Location: LCCOMB_X33_Y20_N12
\mouse1|PACKET_CHAR2[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR2[3]~feeder_combout\ = \mouse1|SHIFTIN\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|SHIFTIN\(3),
	combout => \mouse1|PACKET_CHAR2[3]~feeder_combout\);

-- Location: FF_X33_Y20_N13
\mouse1|PACKET_CHAR2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_CHAR2[3]~feeder_combout\,
	ena => \mouse1|PACKET_CHAR2[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_CHAR2\(3));

-- Location: LCCOMB_X33_Y20_N8
\mouse1|PACKET_CHAR2[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR2[2]~feeder_combout\ = \mouse1|SHIFTIN\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|SHIFTIN\(2),
	combout => \mouse1|PACKET_CHAR2[2]~feeder_combout\);

-- Location: FF_X33_Y20_N9
\mouse1|PACKET_CHAR2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_CHAR2[2]~feeder_combout\,
	ena => \mouse1|PACKET_CHAR2[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_CHAR2\(2));

-- Location: LCCOMB_X33_Y20_N10
\mouse1|PACKET_CHAR2[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR2[1]~feeder_combout\ = \mouse1|SHIFTIN\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|SHIFTIN\(1),
	combout => \mouse1|PACKET_CHAR2[1]~feeder_combout\);

-- Location: FF_X33_Y20_N11
\mouse1|PACKET_CHAR2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_CHAR2[1]~feeder_combout\,
	ena => \mouse1|PACKET_CHAR2[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_CHAR2\(1));

-- Location: LCCOMB_X32_Y20_N8
\mouse1|new_cursor_column[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_column[0]~11_combout\ = (\mouse1|PACKET_CHAR2\(0) & (\mouse1|cursor_column\(0) $ (VCC))) # (!\mouse1|PACKET_CHAR2\(0) & (\mouse1|cursor_column\(0) & VCC))
-- \mouse1|new_cursor_column[0]~12\ = CARRY((\mouse1|PACKET_CHAR2\(0) & \mouse1|cursor_column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|PACKET_CHAR2\(0),
	datab => \mouse1|cursor_column\(0),
	datad => VCC,
	combout => \mouse1|new_cursor_column[0]~11_combout\,
	cout => \mouse1|new_cursor_column[0]~12\);

-- Location: LCCOMB_X32_Y20_N12
\mouse1|new_cursor_column[2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_column[2]~15_combout\ = ((\mouse1|cursor_column\(2) $ (\mouse1|PACKET_CHAR2\(2) $ (!\mouse1|new_cursor_column[1]~14\)))) # (GND)
-- \mouse1|new_cursor_column[2]~16\ = CARRY((\mouse1|cursor_column\(2) & ((\mouse1|PACKET_CHAR2\(2)) # (!\mouse1|new_cursor_column[1]~14\))) # (!\mouse1|cursor_column\(2) & (\mouse1|PACKET_CHAR2\(2) & !\mouse1|new_cursor_column[1]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(2),
	datab => \mouse1|PACKET_CHAR2\(2),
	datad => VCC,
	cin => \mouse1|new_cursor_column[1]~14\,
	combout => \mouse1|new_cursor_column[2]~15_combout\,
	cout => \mouse1|new_cursor_column[2]~16\);

-- Location: LCCOMB_X32_Y20_N14
\mouse1|new_cursor_column[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_column[3]~17_combout\ = (\mouse1|cursor_column\(3) & ((\mouse1|PACKET_CHAR2\(3) & (\mouse1|new_cursor_column[2]~16\ & VCC)) # (!\mouse1|PACKET_CHAR2\(3) & (!\mouse1|new_cursor_column[2]~16\)))) # (!\mouse1|cursor_column\(3) & 
-- ((\mouse1|PACKET_CHAR2\(3) & (!\mouse1|new_cursor_column[2]~16\)) # (!\mouse1|PACKET_CHAR2\(3) & ((\mouse1|new_cursor_column[2]~16\) # (GND)))))
-- \mouse1|new_cursor_column[3]~18\ = CARRY((\mouse1|cursor_column\(3) & (!\mouse1|PACKET_CHAR2\(3) & !\mouse1|new_cursor_column[2]~16\)) # (!\mouse1|cursor_column\(3) & ((!\mouse1|new_cursor_column[2]~16\) # (!\mouse1|PACKET_CHAR2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(3),
	datab => \mouse1|PACKET_CHAR2\(3),
	datad => VCC,
	cin => \mouse1|new_cursor_column[2]~16\,
	combout => \mouse1|new_cursor_column[3]~17_combout\,
	cout => \mouse1|new_cursor_column[3]~18\);

-- Location: LCCOMB_X32_Y20_N16
\mouse1|new_cursor_column[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_column[4]~19_combout\ = ((\mouse1|cursor_column\(4) $ (\mouse1|PACKET_CHAR2\(4) $ (!\mouse1|new_cursor_column[3]~18\)))) # (GND)
-- \mouse1|new_cursor_column[4]~20\ = CARRY((\mouse1|cursor_column\(4) & ((\mouse1|PACKET_CHAR2\(4)) # (!\mouse1|new_cursor_column[3]~18\))) # (!\mouse1|cursor_column\(4) & (\mouse1|PACKET_CHAR2\(4) & !\mouse1|new_cursor_column[3]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(4),
	datab => \mouse1|PACKET_CHAR2\(4),
	datad => VCC,
	cin => \mouse1|new_cursor_column[3]~18\,
	combout => \mouse1|new_cursor_column[4]~19_combout\,
	cout => \mouse1|new_cursor_column[4]~20\);

-- Location: LCCOMB_X32_Y20_N18
\mouse1|new_cursor_column[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_column[5]~21_combout\ = (\mouse1|PACKET_CHAR2\(5) & ((\mouse1|cursor_column\(5) & (\mouse1|new_cursor_column[4]~20\ & VCC)) # (!\mouse1|cursor_column\(5) & (!\mouse1|new_cursor_column[4]~20\)))) # (!\mouse1|PACKET_CHAR2\(5) & 
-- ((\mouse1|cursor_column\(5) & (!\mouse1|new_cursor_column[4]~20\)) # (!\mouse1|cursor_column\(5) & ((\mouse1|new_cursor_column[4]~20\) # (GND)))))
-- \mouse1|new_cursor_column[5]~22\ = CARRY((\mouse1|PACKET_CHAR2\(5) & (!\mouse1|cursor_column\(5) & !\mouse1|new_cursor_column[4]~20\)) # (!\mouse1|PACKET_CHAR2\(5) & ((!\mouse1|new_cursor_column[4]~20\) # (!\mouse1|cursor_column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|PACKET_CHAR2\(5),
	datab => \mouse1|cursor_column\(5),
	datad => VCC,
	cin => \mouse1|new_cursor_column[4]~20\,
	combout => \mouse1|new_cursor_column[5]~21_combout\,
	cout => \mouse1|new_cursor_column[5]~22\);

-- Location: LCCOMB_X27_Y19_N0
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X30_Y20_N24
\mouse1|new_cursor_column[9]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_column[9]~10_combout\ = (\mouse1|READ_CHAR~q\ & (!\mouse1|mouse_state.WAIT_OUTPUT_READY~q\ & (!\mouse1|Add3~0_combout\ & !\mouse1|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|READ_CHAR~q\,
	datab => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \mouse1|Add3~0_combout\,
	datad => \mouse1|LessThan1~0_combout\,
	combout => \mouse1|new_cursor_column[9]~10_combout\);

-- Location: FF_X32_Y20_N19
\mouse1|new_cursor_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|new_cursor_column[5]~21_combout\,
	asdata => \~GND~combout\,
	sload => \mouse1|Equal4~0_combout\,
	ena => \mouse1|new_cursor_column[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(5));

-- Location: LCCOMB_X31_Y21_N20
\mouse1|cursor_column~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~9_combout\ = (\mouse1|new_cursor_column\(5) & (\mouse1|cursor_column[1]~3_combout\ & \mouse1|cursor_column~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|new_cursor_column\(5),
	datac => \mouse1|cursor_column[1]~3_combout\,
	datad => \mouse1|cursor_column~2_combout\,
	combout => \mouse1|cursor_column~9_combout\);

-- Location: LCCOMB_X31_Y20_N22
\mouse1|cursor_column[9]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column[9]~0_combout\ = (\mouse1|READ_CHAR~q\ & (!\mouse1|PACKET_COUNT\(1) & (!\mouse1|LessThan1~0_combout\ & !\mouse1|mouse_state.WAIT_OUTPUT_READY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|READ_CHAR~q\,
	datab => \mouse1|PACKET_COUNT\(1),
	datac => \mouse1|LessThan1~0_combout\,
	datad => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \mouse1|cursor_column[9]~0_combout\);

-- Location: FF_X31_Y21_N21
\mouse1|cursor_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_column~9_combout\,
	ena => \mouse1|cursor_column[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_column\(5));

-- Location: LCCOMB_X32_Y20_N20
\mouse1|new_cursor_column[6]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_column[6]~23_combout\ = ((\mouse1|cursor_column\(6) $ (\mouse1|PACKET_CHAR2\(6) $ (!\mouse1|new_cursor_column[5]~22\)))) # (GND)
-- \mouse1|new_cursor_column[6]~24\ = CARRY((\mouse1|cursor_column\(6) & ((\mouse1|PACKET_CHAR2\(6)) # (!\mouse1|new_cursor_column[5]~22\))) # (!\mouse1|cursor_column\(6) & (\mouse1|PACKET_CHAR2\(6) & !\mouse1|new_cursor_column[5]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(6),
	datab => \mouse1|PACKET_CHAR2\(6),
	datad => VCC,
	cin => \mouse1|new_cursor_column[5]~22\,
	combout => \mouse1|new_cursor_column[6]~23_combout\,
	cout => \mouse1|new_cursor_column[6]~24\);

-- Location: LCCOMB_X32_Y20_N22
\mouse1|new_cursor_column[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_column[7]~25_combout\ = (\mouse1|PACKET_CHAR2\(7) & ((\mouse1|cursor_column\(7) & (\mouse1|new_cursor_column[6]~24\ & VCC)) # (!\mouse1|cursor_column\(7) & (!\mouse1|new_cursor_column[6]~24\)))) # (!\mouse1|PACKET_CHAR2\(7) & 
-- ((\mouse1|cursor_column\(7) & (!\mouse1|new_cursor_column[6]~24\)) # (!\mouse1|cursor_column\(7) & ((\mouse1|new_cursor_column[6]~24\) # (GND)))))
-- \mouse1|new_cursor_column[7]~26\ = CARRY((\mouse1|PACKET_CHAR2\(7) & (!\mouse1|cursor_column\(7) & !\mouse1|new_cursor_column[6]~24\)) # (!\mouse1|PACKET_CHAR2\(7) & ((!\mouse1|new_cursor_column[6]~24\) # (!\mouse1|cursor_column\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|PACKET_CHAR2\(7),
	datab => \mouse1|cursor_column\(7),
	datad => VCC,
	cin => \mouse1|new_cursor_column[6]~24\,
	combout => \mouse1|new_cursor_column[7]~25_combout\,
	cout => \mouse1|new_cursor_column[7]~26\);

-- Location: FF_X32_Y20_N23
\mouse1|new_cursor_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|new_cursor_column[7]~25_combout\,
	asdata => \~GND~combout\,
	sload => \mouse1|Equal4~0_combout\,
	ena => \mouse1|new_cursor_column[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(7));

-- Location: LCCOMB_X31_Y20_N0
\mouse1|cursor_column~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~6_combout\ = (\mouse1|cursor_column~2_combout\ & ((\mouse1|new_cursor_column\(7)) # (!\mouse1|cursor_column[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|new_cursor_column\(7),
	datac => \mouse1|cursor_column[1]~3_combout\,
	datad => \mouse1|cursor_column~2_combout\,
	combout => \mouse1|cursor_column~6_combout\);

-- Location: FF_X31_Y20_N1
\mouse1|cursor_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_column~6_combout\,
	ena => \mouse1|cursor_column[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_column\(7));

-- Location: LCCOMB_X31_Y20_N20
\mouse1|cursor_column~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~4_combout\ = (\mouse1|cursor_column~2_combout\ & ((\mouse1|new_cursor_column\(9)) # (!\mouse1|cursor_column[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_column\(9),
	datac => \mouse1|cursor_column[1]~3_combout\,
	datad => \mouse1|cursor_column~2_combout\,
	combout => \mouse1|cursor_column~4_combout\);

-- Location: FF_X31_Y20_N21
\mouse1|cursor_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_column~4_combout\,
	ena => \mouse1|cursor_column[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_column\(9));

-- Location: LCCOMB_X31_Y20_N24
\mouse1|RECV_UART~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|RECV_UART~4_combout\ = (!\mouse1|cursor_column\(7) & (!\mouse1|cursor_column\(8) & !\mouse1|cursor_column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|cursor_column\(7),
	datac => \mouse1|cursor_column\(8),
	datad => \mouse1|cursor_column\(9),
	combout => \mouse1|RECV_UART~4_combout\);

-- Location: LCCOMB_X30_Y20_N6
\mouse1|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|Equal3~0_combout\ = (\mouse1|PACKET_COUNT\(1)) # (\mouse1|PACKET_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|PACKET_COUNT\(1),
	datad => \mouse1|PACKET_COUNT\(0),
	combout => \mouse1|Equal3~0_combout\);

-- Location: FF_X32_Y20_N9
\mouse1|new_cursor_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|new_cursor_column[0]~11_combout\,
	asdata => \~GND~combout\,
	sload => \mouse1|Equal4~0_combout\,
	ena => \mouse1|new_cursor_column[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(0));

-- Location: FF_X32_Y20_N21
\mouse1|new_cursor_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|new_cursor_column[6]~23_combout\,
	asdata => VCC,
	sload => \mouse1|Equal4~0_combout\,
	ena => \mouse1|new_cursor_column[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(6));

-- Location: FF_X32_Y20_N17
\mouse1|new_cursor_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|new_cursor_column[4]~19_combout\,
	asdata => \~GND~combout\,
	sload => \mouse1|Equal4~0_combout\,
	ena => \mouse1|new_cursor_column[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(4));

-- Location: FF_X32_Y20_N15
\mouse1|new_cursor_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|new_cursor_column[3]~17_combout\,
	asdata => \~GND~combout\,
	sload => \mouse1|Equal4~0_combout\,
	ena => \mouse1|new_cursor_column[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(3));

-- Location: FF_X32_Y20_N13
\mouse1|new_cursor_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|new_cursor_column[2]~15_combout\,
	asdata => \~GND~combout\,
	sload => \mouse1|Equal4~0_combout\,
	ena => \mouse1|new_cursor_column[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(2));

-- Location: LCCOMB_X32_Y20_N28
\mouse1|RECV_UART~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|RECV_UART~5_combout\ = (!\mouse1|new_cursor_column\(1) & (!\mouse1|new_cursor_column\(4) & (!\mouse1|new_cursor_column\(3) & !\mouse1|new_cursor_column\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_column\(1),
	datab => \mouse1|new_cursor_column\(4),
	datac => \mouse1|new_cursor_column\(3),
	datad => \mouse1|new_cursor_column\(2),
	combout => \mouse1|RECV_UART~5_combout\);

-- Location: LCCOMB_X32_Y20_N6
\mouse1|RECV_UART~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|RECV_UART~6_combout\ = (!\mouse1|new_cursor_column\(5) & (!\mouse1|new_cursor_column\(6) & \mouse1|RECV_UART~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|new_cursor_column\(5),
	datac => \mouse1|new_cursor_column\(6),
	datad => \mouse1|RECV_UART~5_combout\,
	combout => \mouse1|RECV_UART~6_combout\);

-- Location: LCCOMB_X32_Y20_N4
\mouse1|cursor_column~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~1_combout\ = (\mouse1|new_cursor_column\(7) & (\mouse1|new_cursor_column\(8))) # (!\mouse1|new_cursor_column\(7) & ((\mouse1|new_cursor_column\(8) & ((\mouse1|new_cursor_column\(0)) # (!\mouse1|RECV_UART~6_combout\))) # 
-- (!\mouse1|new_cursor_column\(8) & ((\mouse1|RECV_UART~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_column\(7),
	datab => \mouse1|new_cursor_column\(8),
	datac => \mouse1|new_cursor_column\(0),
	datad => \mouse1|RECV_UART~6_combout\,
	combout => \mouse1|cursor_column~1_combout\);

-- Location: LCCOMB_X31_Y20_N6
\mouse1|cursor_column~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~2_combout\ = (\mouse1|Equal3~0_combout\ & (((!\mouse1|new_cursor_column\(9) & !\mouse1|cursor_column~1_combout\)) # (!\mouse1|RECV_UART~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_column\(9),
	datab => \mouse1|RECV_UART~4_combout\,
	datac => \mouse1|Equal3~0_combout\,
	datad => \mouse1|cursor_column~1_combout\,
	combout => \mouse1|cursor_column~2_combout\);

-- Location: LCCOMB_X31_Y20_N2
\mouse1|cursor_column~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~5_combout\ = ((\mouse1|new_cursor_column\(8) & (\mouse1|cursor_column[1]~3_combout\ & \mouse1|cursor_column~2_combout\))) # (!\mouse1|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|Equal3~0_combout\,
	datab => \mouse1|new_cursor_column\(8),
	datac => \mouse1|cursor_column[1]~3_combout\,
	datad => \mouse1|cursor_column~2_combout\,
	combout => \mouse1|cursor_column~5_combout\);

-- Location: FF_X31_Y20_N3
\mouse1|cursor_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_column~5_combout\,
	ena => \mouse1|cursor_column[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_column\(8));

-- Location: FF_X32_Y20_N25
\mouse1|new_cursor_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|new_cursor_column[8]~27_combout\,
	asdata => VCC,
	sload => \mouse1|Equal4~0_combout\,
	ena => \mouse1|new_cursor_column[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(8));

-- Location: LCCOMB_X32_Y20_N2
\mouse1|LessThan9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|LessThan9~0_combout\ = (\mouse1|new_cursor_column\(6)) # ((\mouse1|new_cursor_column\(0)) # ((\mouse1|new_cursor_column\(5)) # (!\mouse1|RECV_UART~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_column\(6),
	datab => \mouse1|new_cursor_column\(0),
	datac => \mouse1|RECV_UART~5_combout\,
	datad => \mouse1|new_cursor_column\(5),
	combout => \mouse1|LessThan9~0_combout\);

-- Location: LCCOMB_X32_Y20_N0
\mouse1|cursor_column[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column[1]~3_combout\ = ((!\mouse1|new_cursor_column\(8) & ((!\mouse1|LessThan9~0_combout\) # (!\mouse1|new_cursor_column\(7))))) # (!\mouse1|new_cursor_column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_column\(9),
	datab => \mouse1|new_cursor_column\(8),
	datac => \mouse1|new_cursor_column\(7),
	datad => \mouse1|LessThan9~0_combout\,
	combout => \mouse1|cursor_column[1]~3_combout\);

-- Location: LCCOMB_X32_Y21_N6
\mouse1|cursor_column~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~13_combout\ = (\mouse1|cursor_column[1]~3_combout\ & (\mouse1|new_cursor_column\(0) & \mouse1|cursor_column~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|cursor_column[1]~3_combout\,
	datac => \mouse1|new_cursor_column\(0),
	datad => \mouse1|cursor_column~2_combout\,
	combout => \mouse1|cursor_column~13_combout\);

-- Location: FF_X32_Y21_N7
\mouse1|cursor_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_column~13_combout\,
	ena => \mouse1|cursor_column[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_column\(0));

-- Location: LCCOMB_X29_Y22_N12
\inst4|rom_x[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|rom_x[0]~0_combout\ = (\inst5|pixel_column\(0) & ((GND) # (!\mouse1|cursor_column\(0)))) # (!\inst5|pixel_column\(0) & (\mouse1|cursor_column\(0) $ (GND)))
-- \inst4|rom_x[0]~1\ = CARRY((\inst5|pixel_column\(0)) # (!\mouse1|cursor_column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(0),
	datab => \mouse1|cursor_column\(0),
	datad => VCC,
	combout => \inst4|rom_x[0]~0_combout\,
	cout => \inst4|rom_x[0]~1\);

-- Location: LCCOMB_X29_Y22_N14
\inst4|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add0~0_combout\ = (\mouse1|cursor_column\(1) & ((\inst5|pixel_column\(1) & (!\inst4|rom_x[0]~1\)) # (!\inst5|pixel_column\(1) & ((\inst4|rom_x[0]~1\) # (GND))))) # (!\mouse1|cursor_column\(1) & ((\inst5|pixel_column\(1) & (\inst4|rom_x[0]~1\ & 
-- VCC)) # (!\inst5|pixel_column\(1) & (!\inst4|rom_x[0]~1\))))
-- \inst4|Add0~1\ = CARRY((\mouse1|cursor_column\(1) & ((!\inst4|rom_x[0]~1\) # (!\inst5|pixel_column\(1)))) # (!\mouse1|cursor_column\(1) & (!\inst5|pixel_column\(1) & !\inst4|rom_x[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(1),
	datab => \inst5|pixel_column\(1),
	datad => VCC,
	cin => \inst4|rom_x[0]~1\,
	combout => \inst4|Add0~0_combout\,
	cout => \inst4|Add0~1\);

-- Location: LCCOMB_X29_Y22_N26
\inst4|Add0~0_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add0~0_wirecell_combout\ = !\inst4|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add0~0_combout\,
	combout => \inst4|Add0~0_wirecell_combout\);

-- Location: LCCOMB_X31_Y20_N16
\mouse1|cursor_column~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~11_combout\ = (\mouse1|new_cursor_column\(2) & (\mouse1|cursor_column[1]~3_combout\ & \mouse1|cursor_column~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|new_cursor_column\(2),
	datac => \mouse1|cursor_column[1]~3_combout\,
	datad => \mouse1|cursor_column~2_combout\,
	combout => \mouse1|cursor_column~11_combout\);

-- Location: FF_X31_Y20_N17
\mouse1|cursor_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_column~11_combout\,
	ena => \mouse1|cursor_column[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_column\(2));

-- Location: LCCOMB_X29_Y22_N16
\inst4|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add0~2_combout\ = ((\inst5|pixel_column\(2) $ (\mouse1|cursor_column\(2) $ (\inst4|Add0~1\)))) # (GND)
-- \inst4|Add0~3\ = CARRY((\inst5|pixel_column\(2) & ((!\inst4|Add0~1\) # (!\mouse1|cursor_column\(2)))) # (!\inst5|pixel_column\(2) & (!\mouse1|cursor_column\(2) & !\inst4|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(2),
	datab => \mouse1|cursor_column\(2),
	datad => VCC,
	cin => \inst4|Add0~1\,
	combout => \inst4|Add0~2_combout\,
	cout => \inst4|Add0~3\);

-- Location: LCCOMB_X29_Y22_N6
\inst4|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add1~0_combout\ = \inst4|Add0~0_combout\ $ (\inst4|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add0~0_combout\,
	datad => \inst4|Add0~2_combout\,
	combout => \inst4|Add1~0_combout\);

-- Location: LCCOMB_X32_Y21_N30
\mouse1|cursor_column~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~10_combout\ = (\mouse1|new_cursor_column\(3) & (\mouse1|cursor_column[1]~3_combout\ & \mouse1|cursor_column~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_column\(3),
	datab => \mouse1|cursor_column[1]~3_combout\,
	datad => \mouse1|cursor_column~2_combout\,
	combout => \mouse1|cursor_column~10_combout\);

-- Location: FF_X32_Y21_N31
\mouse1|cursor_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_column~10_combout\,
	ena => \mouse1|cursor_column[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_column\(3));

-- Location: LCCOMB_X29_Y22_N18
\inst4|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add0~4_combout\ = \inst5|pixel_column\(3) $ (\inst4|Add0~3\ $ (!\mouse1|cursor_column\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pixel_column\(3),
	datad => \mouse1|cursor_column\(3),
	cin => \inst4|Add0~3\,
	combout => \inst4|Add0~4_combout\);

-- Location: LCCOMB_X29_Y22_N4
\inst4|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add1~1_combout\ = \inst4|Add0~4_combout\ $ (((\inst4|Add0~0_combout\ & \inst4|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Add0~4_combout\,
	datac => \inst4|Add0~0_combout\,
	datad => \inst4|Add0~2_combout\,
	combout => \inst4|Add1~1_combout\);

-- Location: LCCOMB_X30_Y21_N0
\mouse1|new_cursor_row[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_row[0]~10_combout\ = (\mouse1|PACKET_CHAR3\(0) & (\mouse1|cursor_row\(0) $ (VCC))) # (!\mouse1|PACKET_CHAR3\(0) & ((\mouse1|cursor_row\(0)) # (GND)))
-- \mouse1|new_cursor_row[0]~11\ = CARRY((\mouse1|cursor_row\(0)) # (!\mouse1|PACKET_CHAR3\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|PACKET_CHAR3\(0),
	datab => \mouse1|cursor_row\(0),
	datad => VCC,
	combout => \mouse1|new_cursor_row[0]~10_combout\,
	cout => \mouse1|new_cursor_row[0]~11\);

-- Location: FF_X30_Y21_N1
\mouse1|new_cursor_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|new_cursor_row[0]~10_combout\,
	asdata => \~GND~combout\,
	sload => \mouse1|Equal4~0_combout\,
	ena => \mouse1|new_cursor_column[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(0));

-- Location: LCCOMB_X30_Y21_N24
\mouse1|PACKET_CHAR3[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR3[4]~feeder_combout\ = \mouse1|SHIFTIN\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|SHIFTIN\(4),
	combout => \mouse1|PACKET_CHAR3[4]~feeder_combout\);

-- Location: FF_X30_Y21_N25
\mouse1|PACKET_CHAR3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_CHAR3[4]~feeder_combout\,
	ena => \mouse1|right_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_CHAR3\(4));

-- Location: LCCOMB_X29_Y21_N12
\mouse1|cursor_row~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row~6_combout\ = (\mouse1|new_cursor_row\(3) & (\mouse1|cursor_row~0_combout\ & (!\mouse1|RECV_UART~3_combout\ & \mouse1|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_row\(3),
	datab => \mouse1|cursor_row~0_combout\,
	datac => \mouse1|RECV_UART~3_combout\,
	datad => \mouse1|Equal3~0_combout\,
	combout => \mouse1|cursor_row~6_combout\);

-- Location: FF_X29_Y21_N13
\mouse1|cursor_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_row~6_combout\,
	ena => \mouse1|cursor_column[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_row\(3));

-- Location: LCCOMB_X30_Y21_N20
\mouse1|PACKET_CHAR3[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR3[2]~feeder_combout\ = \mouse1|SHIFTIN\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|SHIFTIN\(2),
	combout => \mouse1|PACKET_CHAR3[2]~feeder_combout\);

-- Location: FF_X30_Y21_N21
\mouse1|PACKET_CHAR3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_CHAR3[2]~feeder_combout\,
	ena => \mouse1|right_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_CHAR3\(2));

-- Location: LCCOMB_X29_Y21_N28
\mouse1|cursor_row~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row~8_combout\ = (\mouse1|new_cursor_row\(1) & (\mouse1|cursor_row~0_combout\ & (!\mouse1|RECV_UART~3_combout\ & \mouse1|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_row\(1),
	datab => \mouse1|cursor_row~0_combout\,
	datac => \mouse1|RECV_UART~3_combout\,
	datad => \mouse1|Equal3~0_combout\,
	combout => \mouse1|cursor_row~8_combout\);

-- Location: FF_X29_Y21_N29
\mouse1|cursor_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_row~8_combout\,
	ena => \mouse1|cursor_column[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_row\(1));

-- Location: LCCOMB_X30_Y21_N4
\mouse1|new_cursor_row[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_row[2]~14_combout\ = ((\mouse1|cursor_row\(2) $ (\mouse1|PACKET_CHAR3\(2) $ (\mouse1|new_cursor_row[1]~13\)))) # (GND)
-- \mouse1|new_cursor_row[2]~15\ = CARRY((\mouse1|cursor_row\(2) & ((!\mouse1|new_cursor_row[1]~13\) # (!\mouse1|PACKET_CHAR3\(2)))) # (!\mouse1|cursor_row\(2) & (!\mouse1|PACKET_CHAR3\(2) & !\mouse1|new_cursor_row[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(2),
	datab => \mouse1|PACKET_CHAR3\(2),
	datad => VCC,
	cin => \mouse1|new_cursor_row[1]~13\,
	combout => \mouse1|new_cursor_row[2]~14_combout\,
	cout => \mouse1|new_cursor_row[2]~15\);

-- Location: LCCOMB_X30_Y21_N6
\mouse1|new_cursor_row[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_row[3]~16_combout\ = (\mouse1|PACKET_CHAR3\(3) & ((\mouse1|cursor_row\(3) & (!\mouse1|new_cursor_row[2]~15\)) # (!\mouse1|cursor_row\(3) & ((\mouse1|new_cursor_row[2]~15\) # (GND))))) # (!\mouse1|PACKET_CHAR3\(3) & 
-- ((\mouse1|cursor_row\(3) & (\mouse1|new_cursor_row[2]~15\ & VCC)) # (!\mouse1|cursor_row\(3) & (!\mouse1|new_cursor_row[2]~15\))))
-- \mouse1|new_cursor_row[3]~17\ = CARRY((\mouse1|PACKET_CHAR3\(3) & ((!\mouse1|new_cursor_row[2]~15\) # (!\mouse1|cursor_row\(3)))) # (!\mouse1|PACKET_CHAR3\(3) & (!\mouse1|cursor_row\(3) & !\mouse1|new_cursor_row[2]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|PACKET_CHAR3\(3),
	datab => \mouse1|cursor_row\(3),
	datad => VCC,
	cin => \mouse1|new_cursor_row[2]~15\,
	combout => \mouse1|new_cursor_row[3]~16_combout\,
	cout => \mouse1|new_cursor_row[3]~17\);

-- Location: LCCOMB_X30_Y21_N8
\mouse1|new_cursor_row[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_row[4]~18_combout\ = ((\mouse1|cursor_row\(4) $ (\mouse1|PACKET_CHAR3\(4) $ (\mouse1|new_cursor_row[3]~17\)))) # (GND)
-- \mouse1|new_cursor_row[4]~19\ = CARRY((\mouse1|cursor_row\(4) & ((!\mouse1|new_cursor_row[3]~17\) # (!\mouse1|PACKET_CHAR3\(4)))) # (!\mouse1|cursor_row\(4) & (!\mouse1|PACKET_CHAR3\(4) & !\mouse1|new_cursor_row[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(4),
	datab => \mouse1|PACKET_CHAR3\(4),
	datad => VCC,
	cin => \mouse1|new_cursor_row[3]~17\,
	combout => \mouse1|new_cursor_row[4]~18_combout\,
	cout => \mouse1|new_cursor_row[4]~19\);

-- Location: FF_X30_Y21_N9
\mouse1|new_cursor_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|new_cursor_row[4]~18_combout\,
	asdata => VCC,
	sload => \mouse1|Equal4~0_combout\,
	ena => \mouse1|new_cursor_column[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(4));

-- Location: FF_X30_Y21_N5
\mouse1|new_cursor_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|new_cursor_row[2]~14_combout\,
	asdata => \~GND~combout\,
	sload => \mouse1|Equal4~0_combout\,
	ena => \mouse1|new_cursor_column[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(2));

-- Location: FF_X30_Y21_N7
\mouse1|new_cursor_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|new_cursor_row[3]~16_combout\,
	asdata => \~GND~combout\,
	sload => \mouse1|Equal4~0_combout\,
	ena => \mouse1|new_cursor_column[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(3));

-- Location: LCCOMB_X29_Y21_N8
\mouse1|RECV_UART~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|RECV_UART~0_combout\ = (!\mouse1|new_cursor_row\(1) & (!\mouse1|new_cursor_row\(4) & (!\mouse1|new_cursor_row\(2) & !\mouse1|new_cursor_row\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_row\(1),
	datab => \mouse1|new_cursor_row\(4),
	datac => \mouse1|new_cursor_row\(2),
	datad => \mouse1|new_cursor_row\(3),
	combout => \mouse1|RECV_UART~0_combout\);

-- Location: LCCOMB_X29_Y20_N14
\mouse1|PACKET_CHAR3[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR3[7]~feeder_combout\ = \mouse1|SHIFTIN\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|SHIFTIN\(7),
	combout => \mouse1|PACKET_CHAR3[7]~feeder_combout\);

-- Location: FF_X29_Y20_N15
\mouse1|PACKET_CHAR3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_CHAR3[7]~feeder_combout\,
	ena => \mouse1|right_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_CHAR3\(7));

-- Location: LCCOMB_X30_Y21_N28
\mouse1|PACKET_CHAR3[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR3[6]~feeder_combout\ = \mouse1|SHIFTIN\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|SHIFTIN\(6),
	combout => \mouse1|PACKET_CHAR3[6]~feeder_combout\);

-- Location: FF_X30_Y21_N29
\mouse1|PACKET_CHAR3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_CHAR3[6]~feeder_combout\,
	ena => \mouse1|right_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_CHAR3\(6));

-- Location: LCCOMB_X30_Y21_N10
\mouse1|new_cursor_row[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_row[5]~20_combout\ = (\mouse1|PACKET_CHAR3\(5) & ((\mouse1|cursor_row\(5) & (!\mouse1|new_cursor_row[4]~19\)) # (!\mouse1|cursor_row\(5) & ((\mouse1|new_cursor_row[4]~19\) # (GND))))) # (!\mouse1|PACKET_CHAR3\(5) & 
-- ((\mouse1|cursor_row\(5) & (\mouse1|new_cursor_row[4]~19\ & VCC)) # (!\mouse1|cursor_row\(5) & (!\mouse1|new_cursor_row[4]~19\))))
-- \mouse1|new_cursor_row[5]~21\ = CARRY((\mouse1|PACKET_CHAR3\(5) & ((!\mouse1|new_cursor_row[4]~19\) # (!\mouse1|cursor_row\(5)))) # (!\mouse1|PACKET_CHAR3\(5) & (!\mouse1|cursor_row\(5) & !\mouse1|new_cursor_row[4]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|PACKET_CHAR3\(5),
	datab => \mouse1|cursor_row\(5),
	datad => VCC,
	cin => \mouse1|new_cursor_row[4]~19\,
	combout => \mouse1|new_cursor_row[5]~20_combout\,
	cout => \mouse1|new_cursor_row[5]~21\);

-- Location: FF_X30_Y21_N11
\mouse1|new_cursor_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|new_cursor_row[5]~20_combout\,
	asdata => VCC,
	sload => \mouse1|Equal4~0_combout\,
	ena => \mouse1|new_cursor_column[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(5));

-- Location: LCCOMB_X28_Y21_N12
\mouse1|cursor_row~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row~4_combout\ = ((!\mouse1|RECV_UART~3_combout\ & ((\mouse1|new_cursor_row\(5)) # (!\mouse1|cursor_row~0_combout\)))) # (!\mouse1|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row~0_combout\,
	datab => \mouse1|new_cursor_row\(5),
	datac => \mouse1|Equal3~0_combout\,
	datad => \mouse1|RECV_UART~3_combout\,
	combout => \mouse1|cursor_row~4_combout\);

-- Location: FF_X28_Y21_N13
\mouse1|cursor_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_row~4_combout\,
	ena => \mouse1|cursor_column[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_row\(5));

-- Location: LCCOMB_X30_Y21_N12
\mouse1|new_cursor_row[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_row[6]~22_combout\ = ((\mouse1|cursor_row\(6) $ (\mouse1|PACKET_CHAR3\(6) $ (\mouse1|new_cursor_row[5]~21\)))) # (GND)
-- \mouse1|new_cursor_row[6]~23\ = CARRY((\mouse1|cursor_row\(6) & ((!\mouse1|new_cursor_row[5]~21\) # (!\mouse1|PACKET_CHAR3\(6)))) # (!\mouse1|cursor_row\(6) & (!\mouse1|PACKET_CHAR3\(6) & !\mouse1|new_cursor_row[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(6),
	datab => \mouse1|PACKET_CHAR3\(6),
	datad => VCC,
	cin => \mouse1|new_cursor_row[5]~21\,
	combout => \mouse1|new_cursor_row[6]~22_combout\,
	cout => \mouse1|new_cursor_row[6]~23\);

-- Location: LCCOMB_X30_Y21_N14
\mouse1|new_cursor_row[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_row[7]~24_combout\ = (\mouse1|PACKET_CHAR3\(7) & ((\mouse1|cursor_row\(7) & (!\mouse1|new_cursor_row[6]~23\)) # (!\mouse1|cursor_row\(7) & ((\mouse1|new_cursor_row[6]~23\) # (GND))))) # (!\mouse1|PACKET_CHAR3\(7) & 
-- ((\mouse1|cursor_row\(7) & (\mouse1|new_cursor_row[6]~23\ & VCC)) # (!\mouse1|cursor_row\(7) & (!\mouse1|new_cursor_row[6]~23\))))
-- \mouse1|new_cursor_row[7]~25\ = CARRY((\mouse1|PACKET_CHAR3\(7) & ((!\mouse1|new_cursor_row[6]~23\) # (!\mouse1|cursor_row\(7)))) # (!\mouse1|PACKET_CHAR3\(7) & (!\mouse1|cursor_row\(7) & !\mouse1|new_cursor_row[6]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|PACKET_CHAR3\(7),
	datab => \mouse1|cursor_row\(7),
	datad => VCC,
	cin => \mouse1|new_cursor_row[6]~23\,
	combout => \mouse1|new_cursor_row[7]~24_combout\,
	cout => \mouse1|new_cursor_row[7]~25\);

-- Location: LCCOMB_X30_Y21_N16
\mouse1|new_cursor_row[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_row[8]~26_combout\ = ((\mouse1|PACKET_CHAR3\(7) $ (\mouse1|cursor_row\(8) $ (\mouse1|new_cursor_row[7]~25\)))) # (GND)
-- \mouse1|new_cursor_row[8]~27\ = CARRY((\mouse1|PACKET_CHAR3\(7) & (\mouse1|cursor_row\(8) & !\mouse1|new_cursor_row[7]~25\)) # (!\mouse1|PACKET_CHAR3\(7) & ((\mouse1|cursor_row\(8)) # (!\mouse1|new_cursor_row[7]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|PACKET_CHAR3\(7),
	datab => \mouse1|cursor_row\(8),
	datad => VCC,
	cin => \mouse1|new_cursor_row[7]~25\,
	combout => \mouse1|new_cursor_row[8]~26_combout\,
	cout => \mouse1|new_cursor_row[8]~27\);

-- Location: FF_X30_Y21_N17
\mouse1|new_cursor_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|new_cursor_row[8]~26_combout\,
	asdata => \~GND~combout\,
	sload => \mouse1|Equal4~0_combout\,
	ena => \mouse1|new_cursor_column[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(8));

-- Location: LCCOMB_X29_Y21_N14
\mouse1|cursor_row~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row~1_combout\ = (\mouse1|Equal3~0_combout\ & (!\mouse1|RECV_UART~3_combout\ & ((\mouse1|new_cursor_row\(8)) # (!\mouse1|cursor_row~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|Equal3~0_combout\,
	datab => \mouse1|cursor_row~0_combout\,
	datac => \mouse1|RECV_UART~3_combout\,
	datad => \mouse1|new_cursor_row\(8),
	combout => \mouse1|cursor_row~1_combout\);

-- Location: FF_X29_Y21_N15
\mouse1|cursor_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_row~1_combout\,
	ena => \mouse1|cursor_column[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_row\(8));

-- Location: LCCOMB_X30_Y21_N18
\mouse1|new_cursor_row[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_row[9]~28_combout\ = \mouse1|new_cursor_row[8]~27\ $ (!\mouse1|PACKET_CHAR3\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|PACKET_CHAR3\(7),
	cin => \mouse1|new_cursor_row[8]~27\,
	combout => \mouse1|new_cursor_row[9]~28_combout\);

-- Location: FF_X30_Y21_N19
\mouse1|new_cursor_row[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|new_cursor_row[9]~28_combout\,
	asdata => \~GND~combout\,
	sload => \mouse1|Equal4~0_combout\,
	ena => \mouse1|new_cursor_column[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(9));

-- Location: LCCOMB_X29_Y21_N20
\mouse1|cursor_row~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row~0_combout\ = (!\mouse1|new_cursor_row\(9) & (((!\mouse1|new_cursor_row\(0) & \mouse1|RECV_UART~0_combout\)) # (!\mouse1|LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|LessThan5~0_combout\,
	datab => \mouse1|new_cursor_row\(0),
	datac => \mouse1|RECV_UART~0_combout\,
	datad => \mouse1|new_cursor_row\(9),
	combout => \mouse1|cursor_row~0_combout\);

-- Location: LCCOMB_X29_Y21_N4
\mouse1|cursor_row~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row~2_combout\ = ((!\mouse1|RECV_UART~3_combout\ & ((\mouse1|new_cursor_row\(7)) # (!\mouse1|cursor_row~0_combout\)))) # (!\mouse1|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_row\(7),
	datab => \mouse1|cursor_row~0_combout\,
	datac => \mouse1|RECV_UART~3_combout\,
	datad => \mouse1|Equal3~0_combout\,
	combout => \mouse1|cursor_row~2_combout\);

-- Location: FF_X29_Y21_N5
\mouse1|cursor_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_row~2_combout\,
	ena => \mouse1|cursor_column[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_row\(7));

-- Location: FF_X30_Y21_N13
\mouse1|new_cursor_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|new_cursor_row[6]~22_combout\,
	asdata => VCC,
	sload => \mouse1|Equal4~0_combout\,
	ena => \mouse1|new_cursor_column[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(6));

-- Location: FF_X30_Y21_N15
\mouse1|new_cursor_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|new_cursor_row[7]~24_combout\,
	asdata => VCC,
	sload => \mouse1|Equal4~0_combout\,
	ena => \mouse1|new_cursor_column[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(7));

-- Location: LCCOMB_X29_Y21_N18
\mouse1|RECV_UART~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|RECV_UART~1_combout\ = (\mouse1|new_cursor_row\(5)) # ((\mouse1|new_cursor_row\(6)) # (\mouse1|new_cursor_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|new_cursor_row\(5),
	datac => \mouse1|new_cursor_row\(6),
	datad => \mouse1|new_cursor_row\(7),
	combout => \mouse1|RECV_UART~1_combout\);

-- Location: LCCOMB_X29_Y21_N16
\mouse1|RECV_UART~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|RECV_UART~2_combout\ = (\mouse1|new_cursor_row\(8) & ((\mouse1|new_cursor_row\(0)) # ((\mouse1|RECV_UART~1_combout\) # (!\mouse1|RECV_UART~0_combout\)))) # (!\mouse1|new_cursor_row\(8) & (((\mouse1|RECV_UART~0_combout\ & 
-- !\mouse1|RECV_UART~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_row\(8),
	datab => \mouse1|new_cursor_row\(0),
	datac => \mouse1|RECV_UART~0_combout\,
	datad => \mouse1|RECV_UART~1_combout\,
	combout => \mouse1|RECV_UART~2_combout\);

-- Location: LCCOMB_X29_Y21_N22
\mouse1|RECV_UART~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|RECV_UART~3_combout\ = (!\mouse1|cursor_row\(7) & (!\mouse1|cursor_row\(8) & ((\mouse1|new_cursor_row\(9)) # (\mouse1|RECV_UART~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_row\(9),
	datab => \mouse1|cursor_row\(7),
	datac => \mouse1|cursor_row\(8),
	datad => \mouse1|RECV_UART~2_combout\,
	combout => \mouse1|RECV_UART~3_combout\);

-- Location: LCCOMB_X29_Y21_N10
\mouse1|cursor_row~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row~9_combout\ = (\mouse1|Equal3~0_combout\ & (\mouse1|new_cursor_row\(0) & (!\mouse1|RECV_UART~3_combout\ & \mouse1|cursor_row~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|Equal3~0_combout\,
	datab => \mouse1|new_cursor_row\(0),
	datac => \mouse1|RECV_UART~3_combout\,
	datad => \mouse1|cursor_row~0_combout\,
	combout => \mouse1|cursor_row~9_combout\);

-- Location: FF_X29_Y21_N11
\mouse1|cursor_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_row~9_combout\,
	ena => \mouse1|cursor_column[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_row\(0));

-- Location: LCCOMB_X26_Y22_N0
\inst4|rom_y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|rom_y[0]~0_combout\ = (\inst5|pixel_row\(0) & ((GND) # (!\mouse1|cursor_row\(0)))) # (!\inst5|pixel_row\(0) & (\mouse1|cursor_row\(0) $ (GND)))
-- \inst4|rom_y[0]~1\ = CARRY((\inst5|pixel_row\(0)) # (!\mouse1|cursor_row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_row\(0),
	datab => \mouse1|cursor_row\(0),
	datad => VCC,
	combout => \inst4|rom_y[0]~0_combout\,
	cout => \inst4|rom_y[0]~1\);

-- Location: LCCOMB_X26_Y19_N10
\inst5|pixel_row[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|pixel_row[1]~feeder_combout\ = \inst5|v_count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|v_count\(1),
	combout => \inst5|pixel_row[1]~feeder_combout\);

-- Location: FF_X26_Y19_N11
\inst5|pixel_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|pixel_row[1]~feeder_combout\,
	ena => \inst5|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|pixel_row\(1));

-- Location: LCCOMB_X26_Y22_N2
\inst4|rom_y[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|rom_y[1]~2_combout\ = (\mouse1|cursor_row\(1) & ((\inst5|pixel_row\(1) & (!\inst4|rom_y[0]~1\)) # (!\inst5|pixel_row\(1) & ((\inst4|rom_y[0]~1\) # (GND))))) # (!\mouse1|cursor_row\(1) & ((\inst5|pixel_row\(1) & (\inst4|rom_y[0]~1\ & VCC)) # 
-- (!\inst5|pixel_row\(1) & (!\inst4|rom_y[0]~1\))))
-- \inst4|rom_y[1]~3\ = CARRY((\mouse1|cursor_row\(1) & ((!\inst4|rom_y[0]~1\) # (!\inst5|pixel_row\(1)))) # (!\mouse1|cursor_row\(1) & (!\inst5|pixel_row\(1) & !\inst4|rom_y[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(1),
	datab => \inst5|pixel_row\(1),
	datad => VCC,
	cin => \inst4|rom_y[0]~1\,
	combout => \inst4|rom_y[1]~2_combout\,
	cout => \inst4|rom_y[1]~3\);

-- Location: LCCOMB_X26_Y22_N4
\inst4|rom_y[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|rom_y[2]~4_combout\ = ((\mouse1|cursor_row\(2) $ (\inst5|pixel_row\(2) $ (\inst4|rom_y[1]~3\)))) # (GND)
-- \inst4|rom_y[2]~5\ = CARRY((\mouse1|cursor_row\(2) & (\inst5|pixel_row\(2) & !\inst4|rom_y[1]~3\)) # (!\mouse1|cursor_row\(2) & ((\inst5|pixel_row\(2)) # (!\inst4|rom_y[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(2),
	datab => \inst5|pixel_row\(2),
	datad => VCC,
	cin => \inst4|rom_y[1]~3\,
	combout => \inst4|rom_y[2]~4_combout\,
	cout => \inst4|rom_y[2]~5\);

-- Location: LCCOMB_X26_Y22_N6
\inst4|rom_y[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|rom_y[3]~6_combout\ = \inst5|pixel_row\(3) $ (\inst4|rom_y[2]~5\ $ (!\mouse1|cursor_row\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_row\(3),
	datad => \mouse1|cursor_row\(3),
	cin => \inst4|rom_y[2]~5\,
	combout => \inst4|rom_y[3]~6_combout\);

-- Location: M9K_X25_Y22_N0
\inst4|cursor|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"003FC00FF003FC00FF0007000E00038000E000380001C003FC00FF003FC00FF003FC00FF003FC00FF003FC00FF0007000E00038000E000380001C003FC00FF00",
	mem_init1 => X"3FC00FF003FC00FF003FC00FF003FC001C0007000E00038000E000380001C0007000FF003FC00FF003FC00FF003FC00FF003FC001C0038000E00038000E00038000E000070001C003FC00FF003FC00FF003FC00FF0007000E00038000E00038000E00038000E000380001C0007000FF003FC00FF003FC00FF0007000E00038000E00038000E00038000E00038000E000070001C003FC00FF003FC00FF0007000E00007000E00007000E00007000E00007000E000380001C003FC00FF003FC00FF0007000E00007000E00007000E00007000E000070001C00070001C003FC00FF003FC00FF003FC001C00070001C00070001C0007000E00007000FF003FC00FF0",
	mem_init0 => X"03FC00FF003FC00FF003FC00FF003FC00FF003FC00FF0007000E00007000FF003FC00FF003FC00FF003FC00FF003FC00FF003FC00FF003FC00FF0007000E00007000FF003FC00FF003FC00FF003FC00FF003FC00FF003FC00FF003FC00FF0007000E00007000FF003FC00FF003FC00FF003FC00FF003FC00FF003FC00FF003FC00FF00070001C0007000FF003FC00FF003FC00FF003FC00FF003FC00FF003FC00FF003FC00FF003FC00FF003FC00FF003FC00FF003FC00FF003FC00FF003FC00FF003FC00FF003FC00FF003FC00FF003FC00FF003FC00FF003FC00FF003FC00FF003FC00FF003FC00FF003FC00FF003FC00FF003FC00FF003FC00FF003FC00FF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../sprites/cursor.mif",
	init_file_layout => "port_a",
	logical_ram_name => "cursor:inst4|cursor_rom:cursor|altsyncram:altsyncram_component|altsyncram_p5a1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \inst4|cursor|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst4|cursor|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: FF_X26_Y20_N5
\inst5|video_on_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst5|LessThan7~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|video_on_v~q\);

-- Location: LCCOMB_X29_Y23_N18
\inst5|video_on_h~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|video_on_h~feeder_combout\ = \inst5|LessThan6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|LessThan6~0_combout\,
	combout => \inst5|video_on_h~feeder_combout\);

-- Location: FF_X29_Y23_N19
\inst5|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|video_on_h~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|video_on_h~q\);

-- Location: LCCOMB_X26_Y20_N4
\inst5|video_on\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|video_on~combout\ = (!\inst5|video_on_h~q\) # (!\inst5|video_on_v~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|video_on_v~q\,
	datad => \inst5|video_on_h~q\,
	combout => \inst5|video_on~combout\);

-- Location: LCCOMB_X32_Y21_N4
\mouse1|cursor_column~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~8_combout\ = (\mouse1|cursor_column[1]~3_combout\ & (\mouse1|new_cursor_column\(4) & \mouse1|cursor_column~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|cursor_column[1]~3_combout\,
	datac => \mouse1|new_cursor_column\(4),
	datad => \mouse1|cursor_column~2_combout\,
	combout => \mouse1|cursor_column~8_combout\);

-- Location: FF_X32_Y21_N5
\mouse1|cursor_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_column~8_combout\,
	ena => \mouse1|cursor_column[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_column\(4));

-- Location: LCCOMB_X32_Y21_N8
\mouse1|cursor_column~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~12_combout\ = (\mouse1|new_cursor_column\(1) & (\mouse1|cursor_column[1]~3_combout\ & \mouse1|cursor_column~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_column\(1),
	datab => \mouse1|cursor_column[1]~3_combout\,
	datad => \mouse1|cursor_column~2_combout\,
	combout => \mouse1|cursor_column~12_combout\);

-- Location: FF_X32_Y21_N9
\mouse1|cursor_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_column~12_combout\,
	ena => \mouse1|cursor_column[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_column\(1));

-- Location: LCCOMB_X32_Y21_N10
\inst4|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~1_cout\ = CARRY((\mouse1|cursor_column\(0) & !\inst5|pixel_column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(0),
	datab => \inst5|pixel_column\(0),
	datad => VCC,
	cout => \inst4|LessThan0~1_cout\);

-- Location: LCCOMB_X32_Y21_N12
\inst4|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~3_cout\ = CARRY((\inst5|pixel_column\(1) & ((!\inst4|LessThan0~1_cout\) # (!\mouse1|cursor_column\(1)))) # (!\inst5|pixel_column\(1) & (!\mouse1|cursor_column\(1) & !\inst4|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(1),
	datab => \mouse1|cursor_column\(1),
	datad => VCC,
	cin => \inst4|LessThan0~1_cout\,
	cout => \inst4|LessThan0~3_cout\);

-- Location: LCCOMB_X32_Y21_N14
\inst4|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~5_cout\ = CARRY((\inst5|pixel_column\(2) & (\mouse1|cursor_column\(2) & !\inst4|LessThan0~3_cout\)) # (!\inst5|pixel_column\(2) & ((\mouse1|cursor_column\(2)) # (!\inst4|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(2),
	datab => \mouse1|cursor_column\(2),
	datad => VCC,
	cin => \inst4|LessThan0~3_cout\,
	cout => \inst4|LessThan0~5_cout\);

-- Location: LCCOMB_X32_Y21_N16
\inst4|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~7_cout\ = CARRY((\mouse1|cursor_column\(3) & (\inst5|pixel_column\(3) & !\inst4|LessThan0~5_cout\)) # (!\mouse1|cursor_column\(3) & ((\inst5|pixel_column\(3)) # (!\inst4|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(3),
	datab => \inst5|pixel_column\(3),
	datad => VCC,
	cin => \inst4|LessThan0~5_cout\,
	cout => \inst4|LessThan0~7_cout\);

-- Location: LCCOMB_X32_Y21_N18
\inst4|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~9_cout\ = CARRY((\inst5|pixel_column\(4) & (\mouse1|cursor_column\(4) & !\inst4|LessThan0~7_cout\)) # (!\inst5|pixel_column\(4) & ((\mouse1|cursor_column\(4)) # (!\inst4|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(4),
	datab => \mouse1|cursor_column\(4),
	datad => VCC,
	cin => \inst4|LessThan0~7_cout\,
	cout => \inst4|LessThan0~9_cout\);

-- Location: LCCOMB_X32_Y21_N20
\inst4|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~11_cout\ = CARRY((\inst5|pixel_column\(5) & ((!\inst4|LessThan0~9_cout\) # (!\mouse1|cursor_column\(5)))) # (!\inst5|pixel_column\(5) & (!\mouse1|cursor_column\(5) & !\inst4|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(5),
	datab => \mouse1|cursor_column\(5),
	datad => VCC,
	cin => \inst4|LessThan0~9_cout\,
	cout => \inst4|LessThan0~11_cout\);

-- Location: LCCOMB_X32_Y21_N22
\inst4|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~13_cout\ = CARRY((\mouse1|cursor_column\(6) & ((!\inst4|LessThan0~11_cout\) # (!\inst5|pixel_column\(6)))) # (!\mouse1|cursor_column\(6) & (!\inst5|pixel_column\(6) & !\inst4|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(6),
	datab => \inst5|pixel_column\(6),
	datad => VCC,
	cin => \inst4|LessThan0~11_cout\,
	cout => \inst4|LessThan0~13_cout\);

-- Location: LCCOMB_X32_Y21_N24
\inst4|LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~15_cout\ = CARRY((\inst5|pixel_column\(7) & ((!\inst4|LessThan0~13_cout\) # (!\mouse1|cursor_column\(7)))) # (!\inst5|pixel_column\(7) & (!\mouse1|cursor_column\(7) & !\inst4|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(7),
	datab => \mouse1|cursor_column\(7),
	datad => VCC,
	cin => \inst4|LessThan0~13_cout\,
	cout => \inst4|LessThan0~15_cout\);

-- Location: LCCOMB_X32_Y21_N26
\inst4|LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~17_cout\ = CARRY((\mouse1|cursor_column\(8) & ((!\inst4|LessThan0~15_cout\) # (!\inst5|pixel_column\(8)))) # (!\mouse1|cursor_column\(8) & (!\inst5|pixel_column\(8) & !\inst4|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(8),
	datab => \inst5|pixel_column\(8),
	datad => VCC,
	cin => \inst4|LessThan0~15_cout\,
	cout => \inst4|LessThan0~17_cout\);

-- Location: LCCOMB_X32_Y21_N28
\inst4|LessThan0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~18_combout\ = (\inst5|pixel_column\(9) & (\inst4|LessThan0~17_cout\ & \mouse1|cursor_column\(9))) # (!\inst5|pixel_column\(9) & ((\inst4|LessThan0~17_cout\) # (\mouse1|cursor_column\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pixel_column\(9),
	datad => \mouse1|cursor_column\(9),
	cin => \inst4|LessThan0~17_cout\,
	combout => \inst4|LessThan0~18_combout\);

-- Location: LCCOMB_X31_Y20_N26
\mouse1|cursor_column~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~7_combout\ = ((\mouse1|cursor_column[1]~3_combout\ & (\mouse1|new_cursor_column\(6) & \mouse1|cursor_column~2_combout\))) # (!\mouse1|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|Equal3~0_combout\,
	datab => \mouse1|cursor_column[1]~3_combout\,
	datac => \mouse1|new_cursor_column\(6),
	datad => \mouse1|cursor_column~2_combout\,
	combout => \mouse1|cursor_column~7_combout\);

-- Location: FF_X31_Y20_N27
\mouse1|cursor_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_column~7_combout\,
	ena => \mouse1|cursor_column[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_column\(6));

-- Location: LCCOMB_X31_Y21_N24
\inst4|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add3~2_combout\ = (\mouse1|cursor_column\(6) & (!\inst4|Add3~1\)) # (!\mouse1|cursor_column\(6) & ((\inst4|Add3~1\) # (GND)))
-- \inst4|Add3~3\ = CARRY((!\inst4|Add3~1\) # (!\mouse1|cursor_column\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|cursor_column\(6),
	datad => VCC,
	cin => \inst4|Add3~1\,
	combout => \inst4|Add3~2_combout\,
	cout => \inst4|Add3~3\);

-- Location: LCCOMB_X31_Y21_N0
\inst4|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~1_cout\ = CARRY((\mouse1|cursor_column\(0) & !\inst5|pixel_column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(0),
	datab => \inst5|pixel_column\(0),
	datad => VCC,
	cout => \inst4|LessThan1~1_cout\);

-- Location: LCCOMB_X31_Y21_N2
\inst4|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~3_cout\ = CARRY((\inst5|pixel_column\(1) & ((!\inst4|LessThan1~1_cout\) # (!\mouse1|cursor_column\(1)))) # (!\inst5|pixel_column\(1) & (!\mouse1|cursor_column\(1) & !\inst4|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(1),
	datab => \mouse1|cursor_column\(1),
	datad => VCC,
	cin => \inst4|LessThan1~1_cout\,
	cout => \inst4|LessThan1~3_cout\);

-- Location: LCCOMB_X31_Y21_N4
\inst4|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~5_cout\ = CARRY((\inst5|pixel_column\(2) & (\mouse1|cursor_column\(2) & !\inst4|LessThan1~3_cout\)) # (!\inst5|pixel_column\(2) & ((\mouse1|cursor_column\(2)) # (!\inst4|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(2),
	datab => \mouse1|cursor_column\(2),
	datad => VCC,
	cin => \inst4|LessThan1~3_cout\,
	cout => \inst4|LessThan1~5_cout\);

-- Location: LCCOMB_X31_Y21_N6
\inst4|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~7_cout\ = CARRY((\mouse1|cursor_column\(3) & (\inst5|pixel_column\(3) & !\inst4|LessThan1~5_cout\)) # (!\mouse1|cursor_column\(3) & ((\inst5|pixel_column\(3)) # (!\inst4|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(3),
	datab => \inst5|pixel_column\(3),
	datad => VCC,
	cin => \inst4|LessThan1~5_cout\,
	cout => \inst4|LessThan1~7_cout\);

-- Location: LCCOMB_X31_Y21_N8
\inst4|LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~9_cout\ = CARRY((\mouse1|cursor_column\(4) & (!\inst5|pixel_column\(4) & !\inst4|LessThan1~7_cout\)) # (!\mouse1|cursor_column\(4) & ((!\inst4|LessThan1~7_cout\) # (!\inst5|pixel_column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(4),
	datab => \inst5|pixel_column\(4),
	datad => VCC,
	cin => \inst4|LessThan1~7_cout\,
	cout => \inst4|LessThan1~9_cout\);

-- Location: LCCOMB_X31_Y21_N10
\inst4|LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~11_cout\ = CARRY((\inst4|Add3~0_combout\ & (\inst5|pixel_column\(5) & !\inst4|LessThan1~9_cout\)) # (!\inst4|Add3~0_combout\ & ((\inst5|pixel_column\(5)) # (!\inst4|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add3~0_combout\,
	datab => \inst5|pixel_column\(5),
	datad => VCC,
	cin => \inst4|LessThan1~9_cout\,
	cout => \inst4|LessThan1~11_cout\);

-- Location: LCCOMB_X31_Y21_N12
\inst4|LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~13_cout\ = CARRY((\inst5|pixel_column\(6) & (\inst4|Add3~2_combout\ & !\inst4|LessThan1~11_cout\)) # (!\inst5|pixel_column\(6) & ((\inst4|Add3~2_combout\) # (!\inst4|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(6),
	datab => \inst4|Add3~2_combout\,
	datad => VCC,
	cin => \inst4|LessThan1~11_cout\,
	cout => \inst4|LessThan1~13_cout\);

-- Location: LCCOMB_X31_Y21_N14
\inst4|LessThan1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~15_cout\ = CARRY((\inst4|Add3~4_combout\ & (\inst5|pixel_column\(7) & !\inst4|LessThan1~13_cout\)) # (!\inst4|Add3~4_combout\ & ((\inst5|pixel_column\(7)) # (!\inst4|LessThan1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add3~4_combout\,
	datab => \inst5|pixel_column\(7),
	datad => VCC,
	cin => \inst4|LessThan1~13_cout\,
	cout => \inst4|LessThan1~15_cout\);

-- Location: LCCOMB_X31_Y21_N16
\inst4|LessThan1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~17_cout\ = CARRY((\inst5|pixel_column\(8) & (\inst4|Add3~6_combout\ & !\inst4|LessThan1~15_cout\)) # (!\inst5|pixel_column\(8) & ((\inst4|Add3~6_combout\) # (!\inst4|LessThan1~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(8),
	datab => \inst4|Add3~6_combout\,
	datad => VCC,
	cin => \inst4|LessThan1~15_cout\,
	cout => \inst4|LessThan1~17_cout\);

-- Location: LCCOMB_X31_Y21_N18
\inst4|LessThan1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~18_combout\ = (\inst4|Add3~8_combout\ & ((\inst4|LessThan1~17_cout\) # (!\inst5|pixel_column\(9)))) # (!\inst4|Add3~8_combout\ & (\inst4|LessThan1~17_cout\ & !\inst5|pixel_column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add3~8_combout\,
	datad => \inst5|pixel_column\(9),
	cin => \inst4|LessThan1~17_cout\,
	combout => \inst4|LessThan1~18_combout\);

-- Location: LCCOMB_X28_Y21_N0
\mouse1|cursor_row~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row~5_combout\ = ((\mouse1|cursor_row~0_combout\ & (\mouse1|new_cursor_row\(4) & !\mouse1|RECV_UART~3_combout\))) # (!\mouse1|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row~0_combout\,
	datab => \mouse1|new_cursor_row\(4),
	datac => \mouse1|Equal3~0_combout\,
	datad => \mouse1|RECV_UART~3_combout\,
	combout => \mouse1|cursor_row~5_combout\);

-- Location: FF_X28_Y21_N1
\mouse1|cursor_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_row~5_combout\,
	ena => \mouse1|cursor_column[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_row\(4));

-- Location: LCCOMB_X28_Y21_N2
\inst4|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add4~0_combout\ = (\mouse1|cursor_row\(5) & (\mouse1|cursor_row\(4) $ (VCC))) # (!\mouse1|cursor_row\(5) & (\mouse1|cursor_row\(4) & VCC))
-- \inst4|Add4~1\ = CARRY((\mouse1|cursor_row\(5) & \mouse1|cursor_row\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(5),
	datab => \mouse1|cursor_row\(4),
	datad => VCC,
	combout => \inst4|Add4~0_combout\,
	cout => \inst4|Add4~1\);

-- Location: LCCOMB_X28_Y21_N4
\inst4|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add4~2_combout\ = (\mouse1|cursor_row\(6) & (!\inst4|Add4~1\)) # (!\mouse1|cursor_row\(6) & ((\inst4|Add4~1\) # (GND)))
-- \inst4|Add4~3\ = CARRY((!\inst4|Add4~1\) # (!\mouse1|cursor_row\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(6),
	datad => VCC,
	cin => \inst4|Add4~1\,
	combout => \inst4|Add4~2_combout\,
	cout => \inst4|Add4~3\);

-- Location: LCCOMB_X28_Y21_N8
\inst4|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add4~6_combout\ = (\mouse1|cursor_row\(8) & (!\inst4|Add4~5\)) # (!\mouse1|cursor_row\(8) & ((\inst4|Add4~5\) # (GND)))
-- \inst4|Add4~7\ = CARRY((!\inst4|Add4~5\) # (!\mouse1|cursor_row\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|cursor_row\(8),
	datad => VCC,
	cin => \inst4|Add4~5\,
	combout => \inst4|Add4~6_combout\,
	cout => \inst4|Add4~7\);

-- Location: LCCOMB_X28_Y21_N10
\inst4|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add4~8_combout\ = !\inst4|Add4~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst4|Add4~7\,
	combout => \inst4|Add4~8_combout\);

-- Location: LCCOMB_X29_Y21_N26
\mouse1|cursor_row~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row~7_combout\ = (\mouse1|new_cursor_row\(2) & (\mouse1|cursor_row~0_combout\ & (!\mouse1|RECV_UART~3_combout\ & \mouse1|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_row\(2),
	datab => \mouse1|cursor_row~0_combout\,
	datac => \mouse1|RECV_UART~3_combout\,
	datad => \mouse1|Equal3~0_combout\,
	combout => \mouse1|cursor_row~7_combout\);

-- Location: FF_X29_Y21_N27
\mouse1|cursor_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_row~7_combout\,
	ena => \mouse1|cursor_column[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_row\(2));

-- Location: LCCOMB_X28_Y21_N14
\inst4|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan3~1_cout\ = CARRY((!\inst5|pixel_row\(0) & \mouse1|cursor_row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_row\(0),
	datab => \mouse1|cursor_row\(0),
	datad => VCC,
	cout => \inst4|LessThan3~1_cout\);

-- Location: LCCOMB_X28_Y21_N16
\inst4|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan3~3_cout\ = CARRY((\inst5|pixel_row\(1) & ((!\inst4|LessThan3~1_cout\) # (!\mouse1|cursor_row\(1)))) # (!\inst5|pixel_row\(1) & (!\mouse1|cursor_row\(1) & !\inst4|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_row\(1),
	datab => \mouse1|cursor_row\(1),
	datad => VCC,
	cin => \inst4|LessThan3~1_cout\,
	cout => \inst4|LessThan3~3_cout\);

-- Location: LCCOMB_X28_Y21_N18
\inst4|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan3~5_cout\ = CARRY((\inst5|pixel_row\(2) & (\mouse1|cursor_row\(2) & !\inst4|LessThan3~3_cout\)) # (!\inst5|pixel_row\(2) & ((\mouse1|cursor_row\(2)) # (!\inst4|LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_row\(2),
	datab => \mouse1|cursor_row\(2),
	datad => VCC,
	cin => \inst4|LessThan3~3_cout\,
	cout => \inst4|LessThan3~5_cout\);

-- Location: LCCOMB_X28_Y21_N20
\inst4|LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan3~7_cout\ = CARRY((\inst5|pixel_row\(3) & ((!\inst4|LessThan3~5_cout\) # (!\mouse1|cursor_row\(3)))) # (!\inst5|pixel_row\(3) & (!\mouse1|cursor_row\(3) & !\inst4|LessThan3~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_row\(3),
	datab => \mouse1|cursor_row\(3),
	datad => VCC,
	cin => \inst4|LessThan3~5_cout\,
	cout => \inst4|LessThan3~7_cout\);

-- Location: LCCOMB_X28_Y21_N22
\inst4|LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan3~9_cout\ = CARRY((\inst5|pixel_row\(4) & (!\mouse1|cursor_row\(4) & !\inst4|LessThan3~7_cout\)) # (!\inst5|pixel_row\(4) & ((!\inst4|LessThan3~7_cout\) # (!\mouse1|cursor_row\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_row\(4),
	datab => \mouse1|cursor_row\(4),
	datad => VCC,
	cin => \inst4|LessThan3~7_cout\,
	cout => \inst4|LessThan3~9_cout\);

-- Location: LCCOMB_X28_Y21_N24
\inst4|LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan3~11_cout\ = CARRY((\inst5|pixel_row\(5) & ((!\inst4|LessThan3~9_cout\) # (!\inst4|Add4~0_combout\))) # (!\inst5|pixel_row\(5) & (!\inst4|Add4~0_combout\ & !\inst4|LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_row\(5),
	datab => \inst4|Add4~0_combout\,
	datad => VCC,
	cin => \inst4|LessThan3~9_cout\,
	cout => \inst4|LessThan3~11_cout\);

-- Location: LCCOMB_X28_Y21_N26
\inst4|LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan3~13_cout\ = CARRY((\inst5|pixel_row\(6) & (\inst4|Add4~2_combout\ & !\inst4|LessThan3~11_cout\)) # (!\inst5|pixel_row\(6) & ((\inst4|Add4~2_combout\) # (!\inst4|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_row\(6),
	datab => \inst4|Add4~2_combout\,
	datad => VCC,
	cin => \inst4|LessThan3~11_cout\,
	cout => \inst4|LessThan3~13_cout\);

-- Location: LCCOMB_X28_Y21_N28
\inst4|LessThan3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan3~15_cout\ = CARRY((\inst4|Add4~4_combout\ & (\inst5|pixel_row\(7) & !\inst4|LessThan3~13_cout\)) # (!\inst4|Add4~4_combout\ & ((\inst5|pixel_row\(7)) # (!\inst4|LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add4~4_combout\,
	datab => \inst5|pixel_row\(7),
	datad => VCC,
	cin => \inst4|LessThan3~13_cout\,
	cout => \inst4|LessThan3~15_cout\);

-- Location: LCCOMB_X28_Y21_N30
\inst4|LessThan3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan3~16_combout\ = (\inst5|pixel_row\(8) & (!\inst4|LessThan3~15_cout\ & \inst4|Add4~6_combout\)) # (!\inst5|pixel_row\(8) & ((\inst4|Add4~6_combout\) # (!\inst4|LessThan3~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pixel_row\(8),
	datad => \inst4|Add4~6_combout\,
	cin => \inst4|LessThan3~15_cout\,
	combout => \inst4|LessThan3~16_combout\);

-- Location: LCCOMB_X27_Y21_N10
\inst4|mouse_on~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|mouse_on~0_combout\ = (((!\inst4|cursor|altsyncram_component|auto_generated|q_a\(4)) # (!\inst4|cursor|altsyncram_component|auto_generated|q_a\(6))) # (!\inst4|cursor|altsyncram_component|auto_generated|q_a\(5))) # 
-- (!\inst4|cursor|altsyncram_component|auto_generated|q_a\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor|altsyncram_component|auto_generated|q_a\(7),
	datab => \inst4|cursor|altsyncram_component|auto_generated|q_a\(5),
	datac => \inst4|cursor|altsyncram_component|auto_generated|q_a\(6),
	datad => \inst4|cursor|altsyncram_component|auto_generated|q_a\(4),
	combout => \inst4|mouse_on~0_combout\);

-- Location: LCCOMB_X27_Y21_N0
\inst4|mouse_on~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|mouse_on~1_combout\ = (((\inst4|mouse_on~0_combout\) # (!\inst4|cursor|altsyncram_component|auto_generated|q_a\(1))) # (!\inst4|cursor|altsyncram_component|auto_generated|q_a\(2))) # (!\inst4|cursor|altsyncram_component|auto_generated|q_a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor|altsyncram_component|auto_generated|q_a\(3),
	datab => \inst4|cursor|altsyncram_component|auto_generated|q_a\(2),
	datac => \inst4|cursor|altsyncram_component|auto_generated|q_a\(1),
	datad => \inst4|mouse_on~0_combout\,
	combout => \inst4|mouse_on~1_combout\);

-- Location: LCCOMB_X27_Y21_N18
\inst4|mouse_on~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|mouse_on~2_combout\ = (\inst4|cursor|altsyncram_component|auto_generated|q_a\(0) & (\inst4|mouse_on~1_combout\ & ((\inst4|Add4~8_combout\) # (\inst4|LessThan3~16_combout\)))) # (!\inst4|cursor|altsyncram_component|auto_generated|q_a\(0) & 
-- ((\inst4|Add4~8_combout\) # ((\inst4|LessThan3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor|altsyncram_component|auto_generated|q_a\(0),
	datab => \inst4|Add4~8_combout\,
	datac => \inst4|LessThan3~16_combout\,
	datad => \inst4|mouse_on~1_combout\,
	combout => \inst4|mouse_on~2_combout\);

-- Location: LCCOMB_X27_Y21_N12
\inst4|mouse_on~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|mouse_on~3_combout\ = (!\inst4|LessThan2~16_combout\ & (!\inst4|LessThan0~18_combout\ & (\inst4|LessThan1~18_combout\ & \inst4|mouse_on~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan2~16_combout\,
	datab => \inst4|LessThan0~18_combout\,
	datac => \inst4|LessThan1~18_combout\,
	datad => \inst4|mouse_on~2_combout\,
	combout => \inst4|mouse_on~3_combout\);

-- Location: FF_X26_Y21_N25
\inst5|red_current[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|red_current[2]~feeder_combout\,
	asdata => \inst4|cursor|altsyncram_component|auto_generated|q_a\(7),
	sclr => \inst5|video_on~combout\,
	sload => \inst4|mouse_on~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|red_current\(2));

-- Location: LCCOMB_X26_Y21_N0
\inst5|red_out[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|red_out[2]~feeder_combout\ = \inst5|red_current\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|red_current\(2),
	combout => \inst5|red_out[2]~feeder_combout\);

-- Location: FF_X26_Y21_N1
\inst5|red_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|red_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|red_out\(2));

-- Location: LCCOMB_X26_Y21_N30
\inst6|r~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|r~1_combout\ = ((\inst2|bird_hit\(0)) # ((!\inst6|r~0_combout\ & \inst|pipe1_on~3_combout\))) # (!\text_controller|char_data|Mux0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|char_data|Mux0~7_combout\,
	datab => \inst6|r~0_combout\,
	datac => \inst|pipe1_on~3_combout\,
	datad => \inst2|bird_hit\(0),
	combout => \inst6|r~1_combout\);

-- Location: LCCOMB_X26_Y21_N20
\inst6|r~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|r~2_combout\ = (\inst6|r~1_combout\) # ((!\inst6|r~0_combout\ & ((\inst|pipe3_on~4_combout\) # (\inst|pipe2_on~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe3_on~4_combout\,
	datab => \inst6|r~0_combout\,
	datac => \inst6|r~1_combout\,
	datad => \inst|pipe2_on~4_combout\,
	combout => \inst6|r~2_combout\);

-- Location: LCCOMB_X27_Y21_N24
\inst5|red_current[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|red_current[1]~1_combout\ = (\inst7|bird_on~6_combout\ & (\inst7|bird_colour|altsyncram_component|auto_generated|q_a\(6))) # (!\inst7|bird_on~6_combout\ & ((!\inst6|r~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bird_on~6_combout\,
	datab => \inst7|bird_colour|altsyncram_component|auto_generated|q_a\(6),
	datad => \inst6|r~2_combout\,
	combout => \inst5|red_current[1]~1_combout\);

-- Location: FF_X27_Y21_N25
\inst5|red_current[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|red_current[1]~1_combout\,
	asdata => \inst4|cursor|altsyncram_component|auto_generated|q_a\(6),
	sclr => \inst5|video_on~combout\,
	sload => \inst4|mouse_on~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|red_current\(1));

-- Location: FF_X33_Y21_N1
\inst5|red_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst5|red_current\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|red_out\(1));

-- Location: LCCOMB_X27_Y21_N2
\inst5|red_current[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|red_current[0]~2_combout\ = (\inst7|bird_on~6_combout\ & (\inst7|bird_colour|altsyncram_component|auto_generated|q_a\(5))) # (!\inst7|bird_on~6_combout\ & ((!\inst6|r~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bird_colour|altsyncram_component|auto_generated|q_a\(5),
	datab => \inst7|bird_on~6_combout\,
	datad => \inst6|r~2_combout\,
	combout => \inst5|red_current[0]~2_combout\);

-- Location: FF_X27_Y21_N3
\inst5|red_current[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|red_current[0]~2_combout\,
	asdata => \inst4|cursor|altsyncram_component|auto_generated|q_a\(5),
	sclr => \inst5|video_on~combout\,
	sload => \inst4|mouse_on~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|red_current\(0));

-- Location: LCCOMB_X27_Y21_N16
\inst5|red_out[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|red_out[0]~feeder_combout\ = \inst5|red_current\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|red_current\(0),
	combout => \inst5|red_out[0]~feeder_combout\);

-- Location: FF_X27_Y21_N17
\inst5|red_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|red_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|red_out\(0));

-- Location: LCCOMB_X26_Y21_N18
\inst5|green_current[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|green_current[2]~0_combout\ = (\inst7|bird_on~6_combout\ & (((\inst7|bird_colour|altsyncram_component|auto_generated|q_a\(4))))) # (!\inst7|bird_on~6_combout\ & ((\inst5|green_current[2]~3_combout\) # ((!\inst6|b~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|green_current[2]~3_combout\,
	datab => \inst7|bird_on~6_combout\,
	datac => \inst7|bird_colour|altsyncram_component|auto_generated|q_a\(4),
	datad => \inst6|b~0_combout\,
	combout => \inst5|green_current[2]~0_combout\);

-- Location: LCCOMB_X26_Y21_N26
\inst5|green_current[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|green_current[2]~feeder_combout\ = \inst5|green_current[2]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|green_current[2]~0_combout\,
	combout => \inst5|green_current[2]~feeder_combout\);

-- Location: FF_X26_Y21_N27
\inst5|green_current[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|green_current[2]~feeder_combout\,
	asdata => \inst4|cursor|altsyncram_component|auto_generated|q_a\(4),
	sclr => \inst5|video_on~combout\,
	sload => \inst4|mouse_on~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|green_current\(2));

-- Location: FF_X37_Y20_N17
\inst5|green_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst5|green_current\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|green_out\(2));

-- Location: LCCOMB_X26_Y23_N8
\text_controller|char_data|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|char_data|Mux0~1_combout\ = (\text_controller|LessThan3~0_combout\ & ((\inst5|pixel_column\(3)) # ((\inst5|pixel_column\(5)) # (\inst5|pixel_column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|LessThan3~0_combout\,
	datab => \inst5|pixel_column\(3),
	datac => \inst5|pixel_column\(5),
	datad => \inst5|pixel_column\(4),
	combout => \text_controller|char_data|Mux0~1_combout\);

-- Location: LCCOMB_X26_Y22_N16
\text_controller|char_data_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|char_data_out~0_combout\ = (!\text_controller|LessThan11~0_combout\ & (!\inst5|pixel_row\(4) & !\inst5|pixel_row\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|LessThan11~0_combout\,
	datac => \inst5|pixel_row\(4),
	datad => \inst5|pixel_row\(5),
	combout => \text_controller|char_data_out~0_combout\);

-- Location: LCCOMB_X24_Y21_N20
\text_controller|LessThan8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|LessThan8~1_combout\ = ((!\inst5|pixel_row\(5) & (!\inst5|pixel_row\(6) & !\inst5|pixel_row\(4)))) # (!\inst5|pixel_row\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_row\(7),
	datab => \inst5|pixel_row\(5),
	datac => \inst5|pixel_row\(6),
	datad => \inst5|pixel_row\(4),
	combout => \text_controller|LessThan8~1_combout\);

-- Location: LCCOMB_X22_Y24_N20
\text_controller|character_address[0]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[0]~22_combout\ = (\inst5|pixel_column\(8)) # ((\text_controller|character_address[0]~21_combout\ & (\inst5|pixel_row\(8) & !\text_controller|LessThan8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|character_address[0]~21_combout\,
	datab => \inst5|pixel_row\(8),
	datac => \inst5|pixel_column\(8),
	datad => \text_controller|LessThan8~1_combout\,
	combout => \text_controller|character_address[0]~22_combout\);

-- Location: LCCOMB_X26_Y23_N0
\text_controller|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|LessThan0~1_combout\ = (\inst5|pixel_column\(0)) # ((\inst5|pixel_column\(2)) # ((\inst5|pixel_column\(3)) # (\inst5|pixel_column\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(0),
	datab => \inst5|pixel_column\(2),
	datac => \inst5|pixel_column\(3),
	datad => \inst5|pixel_column\(4),
	combout => \text_controller|LessThan0~1_combout\);

-- Location: LCCOMB_X24_Y24_N30
\text_controller|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|LessThan2~0_combout\ = (\inst5|pixel_column\(6) & ((\inst5|pixel_column\(1)) # ((\inst5|pixel_column\(5)) # (\text_controller|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(1),
	datab => \inst5|pixel_column\(5),
	datac => \inst5|pixel_column\(6),
	datad => \text_controller|LessThan0~1_combout\,
	combout => \text_controller|LessThan2~0_combout\);

-- Location: LCCOMB_X22_Y24_N14
\text_controller|character_address[0]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[0]~23_combout\ = (\inst5|pixel_column\(9)) # ((\text_controller|character_address[0]~22_combout\ & ((\text_controller|LessThan2~0_combout\) # (!\text_controller|LessThan5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|LessThan5~1_combout\,
	datab => \text_controller|character_address[0]~22_combout\,
	datac => \inst5|pixel_column\(9),
	datad => \text_controller|LessThan2~0_combout\,
	combout => \text_controller|character_address[0]~23_combout\);

-- Location: LCCOMB_X28_Y24_N24
\inst7|bird_on~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|bird_on~0_combout\ = (!\inst5|pixel_column\(8) & !\inst5|pixel_column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pixel_column\(8),
	datac => \inst5|pixel_column\(9),
	combout => \inst7|bird_on~0_combout\);

-- Location: LCCOMB_X26_Y19_N26
\text_controller|LessThan8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|LessThan8~2_combout\ = (((!\inst5|pixel_row\(6) & \text_controller|LessThan8~0_combout\)) # (!\inst5|pixel_row\(8))) # (!\inst5|pixel_row\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_row\(6),
	datab => \inst5|pixel_row\(7),
	datac => \text_controller|LessThan8~0_combout\,
	datad => \inst5|pixel_row\(8),
	combout => \text_controller|LessThan8~2_combout\);

-- Location: LCCOMB_X23_Y24_N18
\text_controller|character_address[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[4]~17_combout\ = (\text_controller|character_address[4]~16_combout\) # ((\inst5|pixel_column\(7)) # ((\text_controller|LessThan8~2_combout\) # (!\inst7|bird_on~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|character_address[4]~16_combout\,
	datab => \inst5|pixel_column\(7),
	datac => \inst7|bird_on~0_combout\,
	datad => \text_controller|LessThan8~2_combout\,
	combout => \text_controller|character_address[4]~17_combout\);

-- Location: LCCOMB_X23_Y24_N8
\text_controller|character_address[5]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[5]~7_combout\ = (\inst7|bird_on~0_combout\ & (!\text_controller|LessThan8~2_combout\ & ((!\inst5|pixel_column\(7)) # (!\text_controller|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|LessThan2~0_combout\,
	datab => \inst5|pixel_column\(7),
	datac => \inst7|bird_on~0_combout\,
	datad => \text_controller|LessThan8~2_combout\,
	combout => \text_controller|character_address[5]~7_combout\);

-- Location: LCCOMB_X26_Y23_N4
\text_controller|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|LessThan0~2_combout\ = (\inst5|pixel_column\(5) & ((\text_controller|LessThan0~1_combout\) # (\inst5|pixel_column\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(5),
	datab => \text_controller|LessThan0~1_combout\,
	datad => \inst5|pixel_column\(1),
	combout => \text_controller|LessThan0~2_combout\);

-- Location: LCCOMB_X22_Y24_N10
\text_controller|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|LessThan5~1_combout\ = (!\inst5|pixel_column\(8) & !\inst5|pixel_column\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|pixel_column\(8),
	datad => \inst5|pixel_column\(7),
	combout => \text_controller|LessThan5~1_combout\);

-- Location: LCCOMB_X22_Y24_N24
\text_controller|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|LessThan7~0_combout\ = (\inst5|pixel_column\(6)) # ((\text_controller|LessThan0~2_combout\) # ((\inst5|pixel_column\(9)) # (!\text_controller|LessThan5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(6),
	datab => \text_controller|LessThan0~2_combout\,
	datac => \inst5|pixel_column\(9),
	datad => \text_controller|LessThan5~1_combout\,
	combout => \text_controller|LessThan7~0_combout\);

-- Location: LCCOMB_X24_Y24_N24
\inst7|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LessThan0~0_combout\ = (!\inst5|pixel_column\(5) & !\inst5|pixel_column\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pixel_column\(5),
	datac => \inst5|pixel_column\(6),
	combout => \inst7|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y24_N12
\text_controller|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|LessThan0~3_combout\ = (\inst5|pixel_column\(1)) # (\text_controller|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|pixel_column\(1),
	datad => \text_controller|LessThan0~1_combout\,
	combout => \text_controller|LessThan0~3_combout\);

-- Location: LCCOMB_X24_Y24_N18
\text_controller|character_address[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[4]~18_combout\ = ((\text_controller|character_address~8_combout\ & ((\text_controller|LessThan0~3_combout\) # (!\inst7|LessThan0~0_combout\)))) # (!\inst7|bird_on~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|character_address~8_combout\,
	datab => \inst7|LessThan0~0_combout\,
	datac => \inst7|bird_on~0_combout\,
	datad => \text_controller|LessThan0~3_combout\,
	combout => \text_controller|character_address[4]~18_combout\);

-- Location: LCCOMB_X23_Y24_N24
\text_controller|character_address[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[4]~19_combout\ = (\text_controller|LessThan1~1_combout\ & (((\text_controller|LessThan8~2_combout\) # (\text_controller|character_address[4]~18_combout\)))) # (!\text_controller|LessThan1~1_combout\ & 
-- (\text_controller|LessThan7~0_combout\ & ((\text_controller|character_address[4]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|LessThan1~1_combout\,
	datab => \text_controller|LessThan7~0_combout\,
	datac => \text_controller|LessThan8~2_combout\,
	datad => \text_controller|character_address[4]~18_combout\,
	combout => \text_controller|character_address[4]~19_combout\);

-- Location: LCCOMB_X23_Y24_N2
\text_controller|character_address[4]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[4]~20_combout\ = (\text_controller|character_address[4]~17_combout\ & (!\text_controller|character_address[5]~7_combout\ & \text_controller|character_address[4]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \text_controller|character_address[4]~17_combout\,
	datac => \text_controller|character_address[5]~7_combout\,
	datad => \text_controller|character_address[4]~19_combout\,
	combout => \text_controller|character_address[4]~20_combout\);

-- Location: LCCOMB_X22_Y24_N28
\text_controller|LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|LessThan5~0_combout\ = (\inst5|pixel_column\(8)) # ((\inst5|pixel_column\(7)) # ((\inst5|pixel_column\(6) & \text_controller|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(6),
	datab => \text_controller|LessThan0~2_combout\,
	datac => \inst5|pixel_column\(8),
	datad => \inst5|pixel_column\(7),
	combout => \text_controller|LessThan5~0_combout\);

-- Location: LCCOMB_X21_Y24_N0
\text_controller|character_address[0]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[0]~26_combout\ = (\text_controller|LessThan7~0_combout\ & (((\text_controller|character_address[4]~25_combout\ & \text_controller|LessThan5~0_combout\)) # (!\text_controller|LessThan8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|character_address[4]~25_combout\,
	datab => \text_controller|LessThan7~0_combout\,
	datac => \text_controller|LessThan8~2_combout\,
	datad => \text_controller|LessThan5~0_combout\,
	combout => \text_controller|character_address[0]~26_combout\);

-- Location: LCCOMB_X21_Y24_N22
\text_controller|character_address[0]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[0]~27_combout\ = (\text_controller|character_address[4]~20_combout\ & (!\text_controller|character_address[0]~24_combout\)) # (!\text_controller|character_address[4]~20_combout\ & 
-- (((\text_controller|character_address[0]~23_combout\) # (!\text_controller|character_address[0]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|character_address[0]~24_combout\,
	datab => \text_controller|character_address[0]~23_combout\,
	datac => \text_controller|character_address[4]~20_combout\,
	datad => \text_controller|character_address[0]~26_combout\,
	combout => \text_controller|character_address[0]~27_combout\);

-- Location: LCCOMB_X21_Y24_N8
\text_controller|comb~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|comb~0_combout\ = (\text_controller|character_address[0]~15_combout\ & !\text_controller|character_address[0]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|character_address[0]~15_combout\,
	datac => \text_controller|character_address[0]~27_combout\,
	combout => \text_controller|comb~0_combout\);

-- Location: LCCOMB_X21_Y24_N28
\text_controller|character_address[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address\(0) = (!\text_controller|comb~0_combout\ & ((\text_controller|comb~1_combout\) # (\text_controller|character_address\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|comb~1_combout\,
	datac => \text_controller|comb~0_combout\,
	datad => \text_controller|character_address\(0),
	combout => \text_controller|character_address\(0));

-- Location: LCCOMB_X23_Y24_N10
\text_controller|character_address~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address~47_combout\ = ((\inst5|pixel_column\(7) & ((\inst5|pixel_column\(6)) # (\text_controller|LessThan0~2_combout\)))) # (!\text_controller|character_address[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|character_address[5]~6_combout\,
	datab => \inst5|pixel_column\(7),
	datac => \inst5|pixel_column\(6),
	datad => \text_controller|LessThan0~2_combout\,
	combout => \text_controller|character_address~47_combout\);

-- Location: LCCOMB_X23_Y24_N30
\text_controller|character_address[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[0]~11_combout\ = (\text_controller|character_address[5]~7_combout\) # (((!\text_controller|character_address[0]~10_combout\ & \inst7|bird_on~0_combout\)) # (!\text_controller|character_address~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|character_address[0]~10_combout\,
	datab => \inst7|bird_on~0_combout\,
	datac => \text_controller|character_address[5]~7_combout\,
	datad => \text_controller|character_address~47_combout\,
	combout => \text_controller|character_address[0]~11_combout\);

-- Location: LCCOMB_X21_Y24_N4
\text_controller|character_address[0]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[0]~13_combout\ = (!\inst5|pixel_column\(9) & (((!\text_controller|LessThan4~0_combout\ & !\inst5|pixel_column\(8))) # (!\text_controller|LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|LessThan4~0_combout\,
	datab => \inst5|pixel_column\(8),
	datac => \inst5|pixel_column\(9),
	datad => \text_controller|LessThan5~0_combout\,
	combout => \text_controller|character_address[0]~13_combout\);

-- Location: LCCOMB_X22_Y24_N6
\text_controller|character_address[4]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[4]~12_combout\ = (!\inst5|pixel_column\(7) & (!\inst5|pixel_column\(8) & (!\inst5|pixel_column\(9) & !\text_controller|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(7),
	datab => \inst5|pixel_column\(8),
	datac => \inst5|pixel_column\(9),
	datad => \text_controller|LessThan2~0_combout\,
	combout => \text_controller|character_address[4]~12_combout\);

-- Location: LCCOMB_X22_Y24_N30
\text_controller|character_address[0]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[0]~14_combout\ = ((\text_controller|character_address[0]~13_combout\) # (\text_controller|character_address[4]~12_combout\)) # (!\text_controller|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \text_controller|LessThan7~0_combout\,
	datac => \text_controller|character_address[0]~13_combout\,
	datad => \text_controller|character_address[4]~12_combout\,
	combout => \text_controller|character_address[0]~14_combout\);

-- Location: LCCOMB_X23_Y24_N20
\text_controller|character_address[0]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[0]~15_combout\ = (\text_controller|character_address[0]~11_combout\) # ((\text_controller|character_address[0]~14_combout\ & ((!\text_controller|LessThan8~2_combout\) # (!\text_controller|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|LessThan1~1_combout\,
	datab => \text_controller|LessThan8~2_combout\,
	datac => \text_controller|character_address[0]~11_combout\,
	datad => \text_controller|character_address[0]~14_combout\,
	combout => \text_controller|character_address[0]~15_combout\);

-- Location: LCCOMB_X26_Y24_N4
\text_controller|comb~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|comb~2_combout\ = (!\text_controller|character_address[1]~29_combout\ & \text_controller|character_address[0]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|character_address[1]~29_combout\,
	datac => \text_controller|character_address[0]~15_combout\,
	combout => \text_controller|comb~2_combout\);

-- Location: LCCOMB_X26_Y24_N12
\text_controller|character_address[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address\(1) = (!\text_controller|comb~2_combout\ & ((\text_controller|comb~3_combout\) # (\text_controller|character_address\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|comb~3_combout\,
	datac => \text_controller|comb~2_combout\,
	datad => \text_controller|character_address\(1),
	combout => \text_controller|character_address\(1));

-- Location: LCCOMB_X23_Y24_N16
\text_controller|character_address[2]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[2]~49_combout\ = (!\text_controller|character_address[5]~32_combout\ & ((\text_controller|LessThan8~2_combout\) # (\text_controller|LessThan7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|character_address[5]~32_combout\,
	datac => \text_controller|LessThan8~2_combout\,
	datad => \text_controller|LessThan7~0_combout\,
	combout => \text_controller|character_address[2]~49_combout\);

-- Location: LCCOMB_X23_Y24_N14
\text_controller|character_address~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address~8_combout\ = (\inst5|pixel_column\(7) & ((\inst5|pixel_column\(6)) # (\text_controller|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|pixel_column\(7),
	datac => \inst5|pixel_column\(6),
	datad => \text_controller|LessThan0~2_combout\,
	combout => \text_controller|character_address~8_combout\);

-- Location: LCCOMB_X24_Y24_N10
\text_controller|character_address[5]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[5]~31_combout\ = (\inst5|pixel_column\(7) & (\inst5|pixel_column\(6) & ((\inst5|pixel_column\(5)) # (\text_controller|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(7),
	datab => \inst5|pixel_column\(5),
	datac => \inst5|pixel_column\(6),
	datad => \text_controller|LessThan0~3_combout\,
	combout => \text_controller|character_address[5]~31_combout\);

-- Location: LCCOMB_X22_Y24_N8
\text_controller|character_address[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[5]~6_combout\ = (!\inst5|pixel_column\(9) & (\inst5|pixel_row\(8) & (!\inst5|pixel_column\(8) & !\text_controller|LessThan8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(9),
	datab => \inst5|pixel_row\(8),
	datac => \inst5|pixel_column\(8),
	datad => \text_controller|LessThan8~1_combout\,
	combout => \text_controller|character_address[5]~6_combout\);

-- Location: LCCOMB_X23_Y24_N22
\text_controller|character_address[5]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[5]~32_combout\ = (\text_controller|character_address[5]~30_combout\ & (\text_controller|character_address[4]~17_combout\ & ((\text_controller|character_address[5]~31_combout\) # 
-- (!\text_controller|character_address[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|character_address[5]~30_combout\,
	datab => \text_controller|character_address[4]~17_combout\,
	datac => \text_controller|character_address[5]~31_combout\,
	datad => \text_controller|character_address[5]~6_combout\,
	combout => \text_controller|character_address[5]~32_combout\);

-- Location: LCCOMB_X23_Y24_N0
\text_controller|character_address[2]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[2]~33_combout\ = (\text_controller|character_address[5]~32_combout\ & ((\text_controller|LessThan1~1_combout\) # ((\text_controller|character_address~8_combout\) # (!\inst7|bird_on~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|LessThan1~1_combout\,
	datab => \inst7|bird_on~0_combout\,
	datac => \text_controller|character_address~8_combout\,
	datad => \text_controller|character_address[5]~32_combout\,
	combout => \text_controller|character_address[2]~33_combout\);

-- Location: LCCOMB_X26_Y24_N8
\text_controller|comb~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|comb~4_combout\ = (\text_controller|character_address[0]~15_combout\ & ((\text_controller|character_address[2]~33_combout\) # ((!\text_controller|character_address[2]~37_combout\ & \text_controller|character_address[2]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|character_address[2]~37_combout\,
	datab => \text_controller|character_address[2]~49_combout\,
	datac => \text_controller|character_address[0]~15_combout\,
	datad => \text_controller|character_address[2]~33_combout\,
	combout => \text_controller|comb~4_combout\);

-- Location: LCCOMB_X26_Y24_N10
\text_controller|character_address[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address\(2) = (!\text_controller|comb~4_combout\ & ((\text_controller|comb~5_combout\) # (\text_controller|character_address\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|comb~5_combout\,
	datac => \text_controller|comb~4_combout\,
	datad => \text_controller|character_address\(2),
	combout => \text_controller|character_address\(2));

-- Location: LCCOMB_X22_Y24_N26
\text_controller|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|LessThan7~1_combout\ = (\inst5|pixel_column\(6)) # ((\text_controller|LessThan0~2_combout\) # ((\inst5|pixel_column\(8)) # (\inst5|pixel_column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(6),
	datab => \text_controller|LessThan0~2_combout\,
	datac => \inst5|pixel_column\(8),
	datad => \inst5|pixel_column\(7),
	combout => \text_controller|LessThan7~1_combout\);

-- Location: LCCOMB_X22_Y24_N4
\text_controller|character_address[3]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[3]~39_combout\ = (\text_controller|LessThan7~1_combout\ & (!\text_controller|LessThan8~2_combout\ & ((\inst5|pixel_column\(7)) # (\text_controller|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(7),
	datab => \text_controller|LessThan2~0_combout\,
	datac => \text_controller|LessThan7~1_combout\,
	datad => \text_controller|LessThan8~2_combout\,
	combout => \text_controller|character_address[3]~39_combout\);

-- Location: LCCOMB_X22_Y24_N2
\text_controller|character_address[3]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[3]~40_combout\ = (!\inst5|pixel_column\(9) & (!\text_controller|LessThan5~0_combout\ & ((\text_controller|character_address[3]~38_combout\) # (\text_controller|character_address[3]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|character_address[3]~38_combout\,
	datab => \text_controller|character_address[3]~39_combout\,
	datac => \inst5|pixel_column\(9),
	datad => \text_controller|LessThan5~0_combout\,
	combout => \text_controller|character_address[3]~40_combout\);

-- Location: LCCOMB_X26_Y24_N24
\text_controller|comb~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|comb~6_combout\ = (\text_controller|character_address[0]~15_combout\ & !\text_controller|character_address[3]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \text_controller|character_address[0]~15_combout\,
	datac => \text_controller|character_address[3]~40_combout\,
	combout => \text_controller|comb~6_combout\);

-- Location: LCCOMB_X26_Y24_N14
\text_controller|comb~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|comb~7_combout\ = (\text_controller|character_address[0]~15_combout\ & \text_controller|character_address[3]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \text_controller|character_address[0]~15_combout\,
	datac => \text_controller|character_address[3]~40_combout\,
	combout => \text_controller|comb~7_combout\);

-- Location: LCCOMB_X26_Y24_N20
\text_controller|character_address[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address\(3) = (!\text_controller|comb~6_combout\ & ((\text_controller|comb~7_combout\) # (\text_controller|character_address\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \text_controller|comb~6_combout\,
	datac => \text_controller|comb~7_combout\,
	datad => \text_controller|character_address\(3),
	combout => \text_controller|character_address\(3));

-- Location: LCCOMB_X24_Y24_N16
\text_controller|LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|LessThan4~0_combout\ = (\inst5|pixel_column\(7) & (((\inst5|pixel_column\(1)) # (\text_controller|LessThan0~1_combout\)) # (!\inst7|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(7),
	datab => \inst7|LessThan0~0_combout\,
	datac => \inst5|pixel_column\(1),
	datad => \text_controller|LessThan0~1_combout\,
	combout => \text_controller|LessThan4~0_combout\);

-- Location: LCCOMB_X22_Y24_N0
\text_controller|character_address[2]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[2]~35_combout\ = (!\text_controller|LessThan8~1_combout\ & (\inst5|pixel_row\(8) & (!\inst5|pixel_column\(8) & !\text_controller|LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|LessThan8~1_combout\,
	datab => \inst5|pixel_row\(8),
	datac => \inst5|pixel_column\(8),
	datad => \text_controller|LessThan4~0_combout\,
	combout => \text_controller|character_address[2]~35_combout\);

-- Location: LCCOMB_X27_Y22_N26
\text_controller|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|LessThan1~0_combout\ = (\inst5|pixel_row\(8)) # ((\inst5|pixel_row\(6)) # (\inst5|pixel_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_row\(8),
	datab => \inst5|pixel_row\(6),
	datac => \inst5|pixel_row\(7),
	combout => \text_controller|LessThan1~0_combout\);

-- Location: LCCOMB_X26_Y22_N26
\text_controller|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|LessThan1~1_combout\ = (\text_controller|LessThan1~0_combout\) # ((\inst5|pixel_row\(5) & ((\text_controller|LessThan11~0_combout\) # (\inst5|pixel_row\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|LessThan11~0_combout\,
	datab => \text_controller|LessThan1~0_combout\,
	datac => \inst5|pixel_row\(4),
	datad => \inst5|pixel_row\(5),
	combout => \text_controller|LessThan1~1_combout\);

-- Location: LCCOMB_X21_Y24_N30
\text_controller|character_address[4]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[4]~25_combout\ = (!\text_controller|character_address[4]~12_combout\ & (!\inst5|pixel_column\(8) & (!\text_controller|LessThan1~1_combout\ & !\text_controller|LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|character_address[4]~12_combout\,
	datab => \inst5|pixel_column\(8),
	datac => \text_controller|LessThan1~1_combout\,
	datad => \text_controller|LessThan4~0_combout\,
	combout => \text_controller|character_address[4]~25_combout\);

-- Location: LCCOMB_X21_Y24_N20
\text_controller|character_address[4]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[4]~41_combout\ = (\text_controller|character_address[2]~35_combout\) # ((\text_controller|character_address[4]~25_combout\) # ((!\text_controller|LessThan1~1_combout\ & !\text_controller|LessThan7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|LessThan1~1_combout\,
	datab => \text_controller|character_address[2]~35_combout\,
	datac => \text_controller|character_address[4]~25_combout\,
	datad => \text_controller|LessThan7~0_combout\,
	combout => \text_controller|character_address[4]~41_combout\);

-- Location: LCCOMB_X21_Y24_N2
\text_controller|character_address[4]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[4]~42_combout\ = (!\inst5|pixel_column\(9) & (\text_controller|LessThan5~0_combout\ & ((\text_controller|character_address[4]~41_combout\) # (!\text_controller|character_address~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|character_address~47_combout\,
	datab => \text_controller|character_address[4]~41_combout\,
	datac => \inst5|pixel_column\(9),
	datad => \text_controller|LessThan5~0_combout\,
	combout => \text_controller|character_address[4]~42_combout\);

-- Location: LCCOMB_X21_Y24_N24
\text_controller|character_address[0]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[0]~34_combout\ = (\text_controller|LessThan8~2_combout\) # (\text_controller|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \text_controller|LessThan8~2_combout\,
	datad => \text_controller|LessThan7~0_combout\,
	combout => \text_controller|character_address[0]~34_combout\);

-- Location: LCCOMB_X21_Y24_N18
\text_controller|character_address[4]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[4]~44_combout\ = (!\text_controller|character_address[4]~20_combout\ & (\text_controller|character_address[0]~34_combout\ & ((\text_controller|character_address[4]~43_combout\) # 
-- (\text_controller|character_address[4]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|character_address[4]~43_combout\,
	datab => \text_controller|character_address[4]~42_combout\,
	datac => \text_controller|character_address[4]~20_combout\,
	datad => \text_controller|character_address[0]~34_combout\,
	combout => \text_controller|character_address[4]~44_combout\);

-- Location: LCCOMB_X23_Y24_N4
\text_controller|character_address[0]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[0]~24_combout\ = (!\text_controller|LessThan1~1_combout\ & (\inst7|bird_on~0_combout\ & ((!\text_controller|LessThan2~0_combout\) # (!\inst5|pixel_column\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|LessThan1~1_combout\,
	datab => \inst5|pixel_column\(7),
	datac => \inst7|bird_on~0_combout\,
	datad => \text_controller|LessThan2~0_combout\,
	combout => \text_controller|character_address[0]~24_combout\);

-- Location: LCCOMB_X21_Y24_N16
\text_controller|comb~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|comb~8_combout\ = (\text_controller|character_address[0]~15_combout\ & (!\text_controller|character_address[4]~44_combout\ & ((\text_controller|character_address[0]~24_combout\) # (!\text_controller|character_address[4]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|character_address[0]~15_combout\,
	datab => \text_controller|character_address[4]~44_combout\,
	datac => \text_controller|character_address[4]~20_combout\,
	datad => \text_controller|character_address[0]~24_combout\,
	combout => \text_controller|comb~8_combout\);

-- Location: LCCOMB_X21_Y24_N6
\text_controller|character_address[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address\(4) = (!\text_controller|comb~8_combout\ & ((\text_controller|comb~9_combout\) # (\text_controller|character_address\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|comb~9_combout\,
	datab => \text_controller|comb~8_combout\,
	datad => \text_controller|character_address\(4),
	combout => \text_controller|character_address\(4));

-- Location: LCCOMB_X23_Y24_N28
\text_controller|character_address[5]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address[5]~46_combout\ = (\text_controller|character_address[2]~33_combout\) # ((\text_controller|character_address[5]~45_combout\ & (\text_controller|character_address[0]~34_combout\ & 
-- !\text_controller|character_address[5]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|character_address[5]~45_combout\,
	datab => \text_controller|character_address[0]~34_combout\,
	datac => \text_controller|character_address[5]~32_combout\,
	datad => \text_controller|character_address[2]~33_combout\,
	combout => \text_controller|character_address[5]~46_combout\);

-- Location: LCCOMB_X26_Y24_N16
\text_controller|comb~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|comb~10_combout\ = (\text_controller|character_address[0]~15_combout\ & !\text_controller|character_address[5]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \text_controller|character_address[0]~15_combout\,
	datad => \text_controller|character_address[5]~46_combout\,
	combout => \text_controller|comb~10_combout\);

-- Location: LCCOMB_X26_Y24_N30
\text_controller|comb~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|comb~11_combout\ = (\text_controller|character_address[0]~15_combout\ & \text_controller|character_address[5]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \text_controller|character_address[0]~15_combout\,
	datad => \text_controller|character_address[5]~46_combout\,
	combout => \text_controller|comb~11_combout\);

-- Location: LCCOMB_X26_Y24_N18
\text_controller|character_address[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|character_address\(5) = (!\text_controller|comb~10_combout\ & ((\text_controller|comb~11_combout\) # (\text_controller|character_address\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \text_controller|comb~10_combout\,
	datac => \text_controller|comb~11_combout\,
	datad => \text_controller|character_address\(5),
	combout => \text_controller|character_address\(5));

-- Location: LCCOMB_X27_Y24_N2
\text_controller|char_data|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|char_data|Mux0~2_combout\ = (\inst5|pixel_column\(3) & (((\inst5|pixel_column\(2))))) # (!\inst5|pixel_column\(3) & ((\inst5|pixel_column\(2) & ((!\text_controller|char_data|altsyncram_component|auto_generated|q_a\(2)))) # 
-- (!\inst5|pixel_column\(2) & (!\text_controller|char_data|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|char_data|altsyncram_component|auto_generated|q_a\(3),
	datab => \inst5|pixel_column\(3),
	datac => \inst5|pixel_column\(2),
	datad => \text_controller|char_data|altsyncram_component|auto_generated|q_a\(2),
	combout => \text_controller|char_data|Mux0~2_combout\);

-- Location: LCCOMB_X28_Y24_N30
\text_controller|char_data|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|char_data|Mux0~3_combout\ = (\inst5|pixel_column\(3) & ((\text_controller|char_data|Mux0~2_combout\ & (!\text_controller|char_data|altsyncram_component|auto_generated|q_a\(0))) # (!\text_controller|char_data|Mux0~2_combout\ & 
-- ((!\text_controller|char_data|altsyncram_component|auto_generated|q_a\(1)))))) # (!\inst5|pixel_column\(3) & (((\text_controller|char_data|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|pixel_column\(3),
	datab => \text_controller|char_data|altsyncram_component|auto_generated|q_a\(0),
	datac => \text_controller|char_data|altsyncram_component|auto_generated|q_a\(1),
	datad => \text_controller|char_data|Mux0~2_combout\,
	combout => \text_controller|char_data|Mux0~3_combout\);

-- Location: LCCOMB_X28_Y24_N12
\text_controller|char_data|Mux0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|char_data|Mux0~6_combout\ = ((\inst5|pixel_column\(4) & ((\text_controller|char_data|Mux0~3_combout\))) # (!\inst5|pixel_column\(4) & (\text_controller|char_data|Mux0~5_combout\))) # (!\inst7|bird_on~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|char_data|Mux0~5_combout\,
	datab => \inst5|pixel_column\(4),
	datac => \text_controller|char_data|Mux0~3_combout\,
	datad => \inst7|bird_on~0_combout\,
	combout => \text_controller|char_data|Mux0~6_combout\);

-- Location: LCCOMB_X27_Y22_N12
\text_controller|char_data|Mux0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \text_controller|char_data|Mux0~7_combout\ = (\text_controller|char_data|Mux0~0_combout\) # ((\text_controller|char_data|Mux0~1_combout\) # ((\text_controller|char_data_out~0_combout\) # (\text_controller|char_data|Mux0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_controller|char_data|Mux0~0_combout\,
	datab => \text_controller|char_data|Mux0~1_combout\,
	datac => \text_controller|char_data_out~0_combout\,
	datad => \text_controller|char_data|Mux0~6_combout\,
	combout => \text_controller|char_data|Mux0~7_combout\);

-- Location: LCCOMB_X26_Y21_N8
\inst6|g~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|g~0_combout\ = ((!\inst6|b~0_combout\) # (!\text_controller|char_data|Mux0~7_combout\)) # (!\inst2|bird_hit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bird_hit\(0),
	datac => \text_controller|char_data|Mux0~7_combout\,
	datad => \inst6|b~0_combout\,
	combout => \inst6|g~0_combout\);

-- Location: LCCOMB_X27_Y21_N28
\inst5|green_current[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|green_current[1]~1_combout\ = (\inst7|bird_on~6_combout\ & (\inst7|bird_colour|altsyncram_component|auto_generated|q_a\(3))) # (!\inst7|bird_on~6_combout\ & ((\inst6|g~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bird_on~6_combout\,
	datab => \inst7|bird_colour|altsyncram_component|auto_generated|q_a\(3),
	datad => \inst6|g~0_combout\,
	combout => \inst5|green_current[1]~1_combout\);

-- Location: FF_X27_Y21_N29
\inst5|green_current[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|green_current[1]~1_combout\,
	asdata => \inst4|cursor|altsyncram_component|auto_generated|q_a\(3),
	sclr => \inst5|video_on~combout\,
	sload => \inst4|mouse_on~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|green_current\(1));

-- Location: LCCOMB_X35_Y21_N24
\inst5|green_out[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|green_out[1]~feeder_combout\ = \inst5|green_current\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|green_current\(1),
	combout => \inst5|green_out[1]~feeder_combout\);

-- Location: FF_X35_Y21_N25
\inst5|green_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|green_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|green_out\(1));

-- Location: LCCOMB_X27_Y21_N22
\inst5|green_current[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|green_current[0]~2_combout\ = (\inst7|bird_on~6_combout\ & (\inst7|bird_colour|altsyncram_component|auto_generated|q_a\(2))) # (!\inst7|bird_on~6_combout\ & ((\inst6|g~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bird_colour|altsyncram_component|auto_generated|q_a\(2),
	datab => \inst7|bird_on~6_combout\,
	datad => \inst6|g~0_combout\,
	combout => \inst5|green_current[0]~2_combout\);

-- Location: FF_X27_Y21_N23
\inst5|green_current[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|green_current[0]~2_combout\,
	asdata => \inst4|cursor|altsyncram_component|auto_generated|q_a\(2),
	sclr => \inst5|video_on~combout\,
	sload => \inst4|mouse_on~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|green_current\(0));

-- Location: LCCOMB_X24_Y23_N24
\inst5|green_out[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|green_out[0]~feeder_combout\ = \inst5|green_current\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|green_current\(0),
	combout => \inst5|green_out[0]~feeder_combout\);

-- Location: FF_X24_Y23_N25
\inst5|green_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|green_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|green_out\(0));

-- Location: LCCOMB_X26_Y21_N22
\inst6|b~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|b~1_combout\ = (\inst6|b~0_combout\ & ((\inst2|bird_hit\(0)) # (!\text_controller|char_data|Mux0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bird_hit\(0),
	datac => \text_controller|char_data|Mux0~7_combout\,
	datad => \inst6|b~0_combout\,
	combout => \inst6|b~1_combout\);

-- Location: LCCOMB_X27_Y21_N20
\inst5|blue_current[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|blue_current[1]~0_combout\ = (\inst7|bird_on~6_combout\ & (\inst7|bird_colour|altsyncram_component|auto_generated|q_a\(1))) # (!\inst7|bird_on~6_combout\ & ((\inst6|b~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bird_on~6_combout\,
	datab => \inst7|bird_colour|altsyncram_component|auto_generated|q_a\(1),
	datad => \inst6|b~1_combout\,
	combout => \inst5|blue_current[1]~0_combout\);

-- Location: FF_X27_Y21_N21
\inst5|blue_current[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|blue_current[1]~0_combout\,
	asdata => \inst4|cursor|altsyncram_component|auto_generated|q_a\(1),
	sclr => \inst5|video_on~combout\,
	sload => \inst4|mouse_on~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|blue_current\(1));

-- Location: LCCOMB_X27_Y21_N26
\inst5|blue_out[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|blue_out[1]~feeder_combout\ = \inst5|blue_current\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|blue_current\(1),
	combout => \inst5|blue_out[1]~feeder_combout\);

-- Location: FF_X27_Y21_N27
\inst5|blue_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|blue_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|blue_out\(1));

-- Location: LCCOMB_X27_Y21_N30
\inst5|blue_current[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|blue_current[0]~1_combout\ = (\inst7|bird_on~6_combout\ & (\inst7|bird_colour|altsyncram_component|auto_generated|q_a\(0))) # (!\inst7|bird_on~6_combout\ & ((\inst6|b~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|bird_colour|altsyncram_component|auto_generated|q_a\(0),
	datab => \inst7|bird_on~6_combout\,
	datad => \inst6|b~1_combout\,
	combout => \inst5|blue_current[0]~1_combout\);

-- Location: FF_X27_Y21_N31
\inst5|blue_current[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|blue_current[0]~1_combout\,
	asdata => \inst4|cursor|altsyncram_component|auto_generated|q_a\(0),
	sclr => \inst5|video_on~combout\,
	sload => \inst4|mouse_on~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|blue_current\(0));

-- Location: LCCOMB_X36_Y21_N4
\inst5|blue_out[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|blue_out[0]~feeder_combout\ = \inst5|blue_current\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|blue_current\(0),
	combout => \inst5|blue_out[0]~feeder_combout\);

-- Location: FF_X36_Y21_N5
\inst5|blue_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|blue_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|blue_out\(0));

-- Location: LCCOMB_X30_Y25_N16
\inst2|scoreCounterOnes[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|scoreCounterOnes[0]~4_combout\ = !\inst2|scoreCounterOnes\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|scoreCounterOnes\(0),
	combout => \inst2|scoreCounterOnes[0]~4_combout\);

-- Location: LCCOMB_X31_Y25_N26
\inst2|check_collision~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|check_collision~0_combout\ = (!\inst|pipe_Location\(17) & (!\inst|pipe_Location\(18) & !\inst|pipe_Location\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe_Location\(17),
	datab => \inst|pipe_Location\(18),
	datad => \inst|pipe_Location\(19),
	combout => \inst2|check_collision~0_combout\);

-- Location: LCCOMB_X32_Y25_N14
\inst2|LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan6~0_combout\ = ((!\inst|pipe_Location\(13) & (!\inst|pipe_Location\(14) & !\inst|pipe_Location\(12)))) # (!\inst2|bird_hit~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pipe_Location\(13),
	datab => \inst|pipe_Location\(14),
	datac => \inst|pipe_Location\(12),
	datad => \inst2|bird_hit~0_combout\,
	combout => \inst2|LessThan6~0_combout\);

-- Location: LCCOMB_X31_Y25_N18
\inst2|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan7~0_combout\ = (\inst2|Add2~2_combout\) # ((\inst2|Add2~4_combout\) # ((\inst2|Add2~0_combout\ & \inst|pipe_Location\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add2~0_combout\,
	datab => \inst2|Add2~2_combout\,
	datac => \inst|pipe_Location\(11),
	datad => \inst2|Add2~4_combout\,
	combout => \inst2|LessThan7~0_combout\);

-- Location: LCCOMB_X31_Y25_N16
\inst2|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan7~1_combout\ = (\inst2|Add2~6_combout\ & (\inst2|Add2~8_combout\ & \inst2|LessThan7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add2~6_combout\,
	datab => \inst2|Add2~8_combout\,
	datad => \inst2|LessThan7~0_combout\,
	combout => \inst2|LessThan7~1_combout\);

-- Location: LCCOMB_X32_Y25_N2
\inst2|check_collision~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|check_collision~1_combout\ = (\inst2|check_collision~0_combout\ & (\inst2|LessThan6~0_combout\ & ((\inst2|LessThan7~1_combout\) # (!\inst2|LessThan8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|check_collision~0_combout\,
	datab => \inst2|LessThan6~0_combout\,
	datac => \inst2|LessThan7~1_combout\,
	datad => \inst2|LessThan8~0_combout\,
	combout => \inst2|check_collision~1_combout\);

-- Location: LCCOMB_X32_Y25_N8
\inst2|BirdPassed~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|BirdPassed~0_combout\ = (\inst2|LessThan8~2_combout\ & (((\inst2|BirdPassed~q\) # (\inst2|check_collision~1_combout\)))) # (!\inst2|LessThan8~2_combout\ & (!\inst2|LessThan8~0_combout\ & ((\inst2|BirdPassed~q\) # 
-- (\inst2|check_collision~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan8~2_combout\,
	datab => \inst2|LessThan8~0_combout\,
	datac => \inst2|BirdPassed~q\,
	datad => \inst2|check_collision~1_combout\,
	combout => \inst2|BirdPassed~0_combout\);

-- Location: FF_X32_Y25_N9
\inst2|BirdPassed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst2|BirdPassed~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|BirdPassed~q\);

-- Location: LCCOMB_X31_Y25_N28
\inst2|LessThan7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan7~2_combout\ = (\inst2|Add2~10_combout\) # ((\inst2|Add2~12_combout\) # ((\inst2|Add2~14_combout\) # (\inst2|LessThan7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add2~10_combout\,
	datab => \inst2|Add2~12_combout\,
	datac => \inst2|Add2~14_combout\,
	datad => \inst2|LessThan7~1_combout\,
	combout => \inst2|LessThan7~2_combout\);

-- Location: LCCOMB_X31_Y25_N22
\inst2|scoreCounterOnes[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|scoreCounterOnes[3]~0_combout\ = (\inst2|LessThan6~0_combout\ & (\inst2|check_collision~0_combout\ & (!\inst2|BirdPassed~q\ & \inst2|LessThan7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan6~0_combout\,
	datab => \inst2|check_collision~0_combout\,
	datac => \inst2|BirdPassed~q\,
	datad => \inst2|LessThan7~2_combout\,
	combout => \inst2|scoreCounterOnes[3]~0_combout\);

-- Location: FF_X31_Y25_N3
\inst2|scoreCounterOnes[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	asdata => \inst2|scoreCounterOnes[0]~4_combout\,
	sload => VCC,
	ena => \inst2|scoreCounterOnes[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|scoreCounterOnes\(0));

-- Location: LCCOMB_X30_Y25_N8
\inst2|scoreCounterOnes~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|scoreCounterOnes~3_combout\ = (\inst2|scoreCounterOnes\(2) & (\inst2|scoreCounterOnes\(3) $ (((\inst2|scoreCounterOnes\(1) & \inst2|scoreCounterOnes\(0)))))) # (!\inst2|scoreCounterOnes\(2) & (\inst2|scoreCounterOnes\(3) & 
-- ((\inst2|scoreCounterOnes\(1)) # (!\inst2|scoreCounterOnes\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|scoreCounterOnes\(2),
	datab => \inst2|scoreCounterOnes\(1),
	datac => \inst2|scoreCounterOnes\(3),
	datad => \inst2|scoreCounterOnes\(0),
	combout => \inst2|scoreCounterOnes~3_combout\);

-- Location: FF_X31_Y25_N9
\inst2|scoreCounterOnes[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	asdata => \inst2|scoreCounterOnes~3_combout\,
	sload => VCC,
	ena => \inst2|scoreCounterOnes[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|scoreCounterOnes\(3));

-- Location: LCCOMB_X30_Y25_N20
\inst2|scoreCounterOnes~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|scoreCounterOnes~1_combout\ = (\inst2|scoreCounterOnes\(1) & (((!\inst2|scoreCounterOnes\(0))))) # (!\inst2|scoreCounterOnes\(1) & (\inst2|scoreCounterOnes\(0) & ((\inst2|scoreCounterOnes\(2)) # (!\inst2|scoreCounterOnes\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|scoreCounterOnes\(2),
	datab => \inst2|scoreCounterOnes\(3),
	datac => \inst2|scoreCounterOnes\(1),
	datad => \inst2|scoreCounterOnes\(0),
	combout => \inst2|scoreCounterOnes~1_combout\);

-- Location: FF_X30_Y25_N21
\inst2|scoreCounterOnes[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst2|scoreCounterOnes~1_combout\,
	ena => \inst2|scoreCounterOnes[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|scoreCounterOnes\(1));

-- Location: LCCOMB_X30_Y25_N10
\inst2|scoreCounterOnes[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|scoreCounterOnes[2]~2_combout\ = \inst2|scoreCounterOnes\(2) $ (((\inst2|scoreCounterOnes\(0) & (\inst2|scoreCounterOnes\(1) & \inst2|scoreCounterOnes[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|scoreCounterOnes\(0),
	datab => \inst2|scoreCounterOnes\(1),
	datac => \inst2|scoreCounterOnes\(2),
	datad => \inst2|scoreCounterOnes[3]~0_combout\,
	combout => \inst2|scoreCounterOnes[2]~2_combout\);

-- Location: FF_X30_Y25_N11
\inst2|scoreCounterOnes[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst2|scoreCounterOnes[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|scoreCounterOnes\(2));

-- Location: LCCOMB_X31_Y26_N0
\mouseX2_7seg|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseX2_7seg|Mux0~0_combout\ = (\inst2|scoreCounterOnes\(0) & ((\inst2|scoreCounterOnes\(3)) # (\inst2|scoreCounterOnes\(2) $ (\inst2|scoreCounterOnes\(1))))) # (!\inst2|scoreCounterOnes\(0) & ((\inst2|scoreCounterOnes\(1)) # (\inst2|scoreCounterOnes\(2) 
-- $ (\inst2|scoreCounterOnes\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|scoreCounterOnes\(0),
	datab => \inst2|scoreCounterOnes\(2),
	datac => \inst2|scoreCounterOnes\(1),
	datad => \inst2|scoreCounterOnes\(3),
	combout => \mouseX2_7seg|Mux0~0_combout\);

-- Location: LCCOMB_X30_Y26_N0
\mouseX2_7seg|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseX2_7seg|Mux1~0_combout\ = (\inst2|scoreCounterOnes\(2) & (\inst2|scoreCounterOnes\(0) & (\inst2|scoreCounterOnes\(1) $ (\inst2|scoreCounterOnes\(3))))) # (!\inst2|scoreCounterOnes\(2) & (!\inst2|scoreCounterOnes\(3) & ((\inst2|scoreCounterOnes\(1)) 
-- # (\inst2|scoreCounterOnes\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|scoreCounterOnes\(2),
	datab => \inst2|scoreCounterOnes\(1),
	datac => \inst2|scoreCounterOnes\(3),
	datad => \inst2|scoreCounterOnes\(0),
	combout => \mouseX2_7seg|Mux1~0_combout\);

-- Location: LCCOMB_X31_Y26_N2
\mouseX2_7seg|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseX2_7seg|Mux2~0_combout\ = (\inst2|scoreCounterOnes\(1) & (\inst2|scoreCounterOnes\(0) & ((!\inst2|scoreCounterOnes\(3))))) # (!\inst2|scoreCounterOnes\(1) & ((\inst2|scoreCounterOnes\(2) & ((!\inst2|scoreCounterOnes\(3)))) # 
-- (!\inst2|scoreCounterOnes\(2) & (\inst2|scoreCounterOnes\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|scoreCounterOnes\(0),
	datab => \inst2|scoreCounterOnes\(2),
	datac => \inst2|scoreCounterOnes\(1),
	datad => \inst2|scoreCounterOnes\(3),
	combout => \mouseX2_7seg|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y26_N2
\mouseX2_7seg|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseX2_7seg|Mux3~0_combout\ = (\inst2|scoreCounterOnes\(0) & (\inst2|scoreCounterOnes\(2) $ ((!\inst2|scoreCounterOnes\(1))))) # (!\inst2|scoreCounterOnes\(0) & ((\inst2|scoreCounterOnes\(2) & (!\inst2|scoreCounterOnes\(1) & 
-- !\inst2|scoreCounterOnes\(3))) # (!\inst2|scoreCounterOnes\(2) & (\inst2|scoreCounterOnes\(1) & \inst2|scoreCounterOnes\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|scoreCounterOnes\(2),
	datab => \inst2|scoreCounterOnes\(1),
	datac => \inst2|scoreCounterOnes\(3),
	datad => \inst2|scoreCounterOnes\(0),
	combout => \mouseX2_7seg|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y25_N28
\mouseX2_7seg|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseX2_7seg|Mux4~0_combout\ = (\inst2|scoreCounterOnes\(2) & (\inst2|scoreCounterOnes\(3) & ((\inst2|scoreCounterOnes\(1)) # (!\inst2|scoreCounterOnes\(0))))) # (!\inst2|scoreCounterOnes\(2) & (\inst2|scoreCounterOnes\(1) & (!\inst2|scoreCounterOnes\(3) 
-- & !\inst2|scoreCounterOnes\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|scoreCounterOnes\(2),
	datab => \inst2|scoreCounterOnes\(1),
	datac => \inst2|scoreCounterOnes\(3),
	datad => \inst2|scoreCounterOnes\(0),
	combout => \mouseX2_7seg|Mux4~0_combout\);

-- Location: LCCOMB_X30_Y26_N8
\mouseX2_7seg|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseX2_7seg|Mux5~0_combout\ = (\inst2|scoreCounterOnes\(1) & ((\inst2|scoreCounterOnes\(0) & ((\inst2|scoreCounterOnes\(3)))) # (!\inst2|scoreCounterOnes\(0) & (\inst2|scoreCounterOnes\(2))))) # (!\inst2|scoreCounterOnes\(1) & 
-- (\inst2|scoreCounterOnes\(2) & (\inst2|scoreCounterOnes\(3) $ (\inst2|scoreCounterOnes\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|scoreCounterOnes\(2),
	datab => \inst2|scoreCounterOnes\(1),
	datac => \inst2|scoreCounterOnes\(3),
	datad => \inst2|scoreCounterOnes\(0),
	combout => \mouseX2_7seg|Mux5~0_combout\);

-- Location: LCCOMB_X31_Y26_N4
\mouseX2_7seg|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseX2_7seg|Mux6~0_combout\ = (\inst2|scoreCounterOnes\(2) & (!\inst2|scoreCounterOnes\(1) & (\inst2|scoreCounterOnes\(0) $ (!\inst2|scoreCounterOnes\(3))))) # (!\inst2|scoreCounterOnes\(2) & (\inst2|scoreCounterOnes\(0) & (\inst2|scoreCounterOnes\(1) $ 
-- (!\inst2|scoreCounterOnes\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|scoreCounterOnes\(0),
	datab => \inst2|scoreCounterOnes\(2),
	datac => \inst2|scoreCounterOnes\(1),
	datad => \inst2|scoreCounterOnes\(3),
	combout => \mouseX2_7seg|Mux6~0_combout\);

-- Location: LCCOMB_X30_Y25_N14
\inst2|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (!\inst2|scoreCounterOnes\(2) & (!\inst2|scoreCounterOnes\(1) & (\inst2|scoreCounterOnes\(3) & \inst2|scoreCounterOnes\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|scoreCounterOnes\(2),
	datab => \inst2|scoreCounterOnes\(1),
	datac => \inst2|scoreCounterOnes\(3),
	datad => \inst2|scoreCounterOnes\(0),
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y25_N22
\inst2|scoreCounterTens[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|scoreCounterTens[1]~1_combout\ = \inst2|scoreCounterTens\(1) $ (((\inst2|scoreCounterTens\(0) & (\inst2|Equal0~0_combout\ & \inst2|scoreCounterOnes[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|scoreCounterTens\(0),
	datab => \inst2|Equal0~0_combout\,
	datac => \inst2|scoreCounterTens\(1),
	datad => \inst2|scoreCounterOnes[3]~0_combout\,
	combout => \inst2|scoreCounterTens[1]~1_combout\);

-- Location: FF_X30_Y25_N23
\inst2|scoreCounterTens[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst2|scoreCounterTens[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|scoreCounterTens\(1));

-- Location: LCCOMB_X32_Y25_N28
\inst2|scoreCounterTens[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|scoreCounterTens[0]~0_combout\ = \inst2|scoreCounterTens\(0) $ (((\inst2|Equal0~0_combout\ & (!\inst2|BirdPassed~q\ & \inst2|check_collision~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~0_combout\,
	datab => \inst2|BirdPassed~q\,
	datac => \inst2|scoreCounterTens\(0),
	datad => \inst2|check_collision~1_combout\,
	combout => \inst2|scoreCounterTens[0]~0_combout\);

-- Location: FF_X32_Y25_N29
\inst2|scoreCounterTens[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst2|scoreCounterTens[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|scoreCounterTens\(0));

-- Location: LCCOMB_X32_Y25_N0
\inst2|scoreCounterTens[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|scoreCounterTens[1]~2_combout\ = (\inst2|Equal0~0_combout\ & (\inst2|scoreCounterTens\(0) & (!\inst2|BirdPassed~q\ & \inst2|check_collision~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~0_combout\,
	datab => \inst2|scoreCounterTens\(0),
	datac => \inst2|BirdPassed~q\,
	datad => \inst2|check_collision~1_combout\,
	combout => \inst2|scoreCounterTens[1]~2_combout\);

-- Location: LCCOMB_X32_Y25_N10
\inst2|scoreCounterTens[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|scoreCounterTens[2]~3_combout\ = \inst2|scoreCounterTens\(2) $ (((\inst2|scoreCounterTens\(1) & \inst2|scoreCounterTens[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|scoreCounterTens\(1),
	datac => \inst2|scoreCounterTens\(2),
	datad => \inst2|scoreCounterTens[1]~2_combout\,
	combout => \inst2|scoreCounterTens[2]~3_combout\);

-- Location: FF_X32_Y25_N11
\inst2|scoreCounterTens[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst2|scoreCounterTens[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|scoreCounterTens\(2));

-- Location: LCCOMB_X32_Y25_N20
\inst2|scoreCounterTens[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|scoreCounterTens[3]~4_combout\ = \inst2|scoreCounterTens\(3) $ (((\inst2|scoreCounterTens\(2) & (\inst2|scoreCounterTens\(1) & \inst2|scoreCounterTens[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|scoreCounterTens\(2),
	datab => \inst2|scoreCounterTens\(1),
	datac => \inst2|scoreCounterTens\(3),
	datad => \inst2|scoreCounterTens[1]~2_combout\,
	combout => \inst2|scoreCounterTens[3]~4_combout\);

-- Location: FF_X32_Y25_N21
\inst2|scoreCounterTens[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|vert_sync_out~clkctrl_outclk\,
	d => \inst2|scoreCounterTens[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|scoreCounterTens\(3));

-- Location: LCCOMB_X33_Y25_N20
\mouseX1_7seg|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseX1_7seg|Mux0~0_combout\ = (\inst2|scoreCounterTens\(0) & ((\inst2|scoreCounterTens\(3)) # (\inst2|scoreCounterTens\(2) $ (\inst2|scoreCounterTens\(1))))) # (!\inst2|scoreCounterTens\(0) & ((\inst2|scoreCounterTens\(1)) # (\inst2|scoreCounterTens\(2) 
-- $ (\inst2|scoreCounterTens\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|scoreCounterTens\(2),
	datab => \inst2|scoreCounterTens\(3),
	datac => \inst2|scoreCounterTens\(1),
	datad => \inst2|scoreCounterTens\(0),
	combout => \mouseX1_7seg|Mux0~0_combout\);

-- Location: LCCOMB_X33_Y25_N10
\mouseX1_7seg|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseX1_7seg|Mux1~0_combout\ = (\inst2|scoreCounterTens\(2) & (\inst2|scoreCounterTens\(0) & (\inst2|scoreCounterTens\(3) $ (\inst2|scoreCounterTens\(1))))) # (!\inst2|scoreCounterTens\(2) & (!\inst2|scoreCounterTens\(3) & ((\inst2|scoreCounterTens\(1)) 
-- # (\inst2|scoreCounterTens\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|scoreCounterTens\(2),
	datab => \inst2|scoreCounterTens\(3),
	datac => \inst2|scoreCounterTens\(1),
	datad => \inst2|scoreCounterTens\(0),
	combout => \mouseX1_7seg|Mux1~0_combout\);

-- Location: LCCOMB_X33_Y25_N12
\mouseX1_7seg|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseX1_7seg|Mux2~0_combout\ = (\inst2|scoreCounterTens\(1) & (((!\inst2|scoreCounterTens\(3) & \inst2|scoreCounterTens\(0))))) # (!\inst2|scoreCounterTens\(1) & ((\inst2|scoreCounterTens\(2) & (!\inst2|scoreCounterTens\(3))) # 
-- (!\inst2|scoreCounterTens\(2) & ((\inst2|scoreCounterTens\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|scoreCounterTens\(2),
	datab => \inst2|scoreCounterTens\(3),
	datac => \inst2|scoreCounterTens\(1),
	datad => \inst2|scoreCounterTens\(0),
	combout => \mouseX1_7seg|Mux2~0_combout\);

-- Location: LCCOMB_X33_Y25_N2
\mouseX1_7seg|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseX1_7seg|Mux3~0_combout\ = (\inst2|scoreCounterTens\(0) & (\inst2|scoreCounterTens\(2) $ (((!\inst2|scoreCounterTens\(1)))))) # (!\inst2|scoreCounterTens\(0) & ((\inst2|scoreCounterTens\(2) & (!\inst2|scoreCounterTens\(3) & 
-- !\inst2|scoreCounterTens\(1))) # (!\inst2|scoreCounterTens\(2) & (\inst2|scoreCounterTens\(3) & \inst2|scoreCounterTens\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|scoreCounterTens\(2),
	datab => \inst2|scoreCounterTens\(3),
	datac => \inst2|scoreCounterTens\(1),
	datad => \inst2|scoreCounterTens\(0),
	combout => \mouseX1_7seg|Mux3~0_combout\);

-- Location: LCCOMB_X33_Y25_N0
\mouseX1_7seg|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseX1_7seg|Mux4~0_combout\ = (\inst2|scoreCounterTens\(2) & (\inst2|scoreCounterTens\(3) & ((\inst2|scoreCounterTens\(1)) # (!\inst2|scoreCounterTens\(0))))) # (!\inst2|scoreCounterTens\(2) & (!\inst2|scoreCounterTens\(3) & (\inst2|scoreCounterTens\(1) 
-- & !\inst2|scoreCounterTens\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|scoreCounterTens\(2),
	datab => \inst2|scoreCounterTens\(3),
	datac => \inst2|scoreCounterTens\(1),
	datad => \inst2|scoreCounterTens\(0),
	combout => \mouseX1_7seg|Mux4~0_combout\);

-- Location: LCCOMB_X30_Y25_N12
\mouseX1_7seg|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseX1_7seg|Mux5~0_combout\ = (\inst2|scoreCounterTens\(3) & ((\inst2|scoreCounterTens\(0) & (\inst2|scoreCounterTens\(1))) # (!\inst2|scoreCounterTens\(0) & ((\inst2|scoreCounterTens\(2)))))) # (!\inst2|scoreCounterTens\(3) & 
-- (\inst2|scoreCounterTens\(2) & (\inst2|scoreCounterTens\(0) $ (\inst2|scoreCounterTens\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|scoreCounterTens\(0),
	datab => \inst2|scoreCounterTens\(3),
	datac => \inst2|scoreCounterTens\(1),
	datad => \inst2|scoreCounterTens\(2),
	combout => \mouseX1_7seg|Mux5~0_combout\);

-- Location: LCCOMB_X32_Y25_N18
\mouseX1_7seg|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseX1_7seg|Mux6~0_combout\ = (\inst2|scoreCounterTens\(2) & (!\inst2|scoreCounterTens\(1) & (\inst2|scoreCounterTens\(0) $ (!\inst2|scoreCounterTens\(3))))) # (!\inst2|scoreCounterTens\(2) & (\inst2|scoreCounterTens\(0) & (\inst2|scoreCounterTens\(3) $ 
-- (!\inst2|scoreCounterTens\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|scoreCounterTens\(2),
	datab => \inst2|scoreCounterTens\(0),
	datac => \inst2|scoreCounterTens\(3),
	datad => \inst2|scoreCounterTens\(1),
	combout => \mouseX1_7seg|Mux6~0_combout\);

-- Location: IOIBUF_X0_Y23_N15
\bt1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt1,
	o => \bt1~input_o\);
END structure;


