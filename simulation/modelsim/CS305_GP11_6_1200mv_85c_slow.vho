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

-- DATE "05/12/2019 17:16:51"

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
	r1 : OUT std_logic;
	clk : IN std_logic;
	g1 : OUT std_logic;
	b1 : OUT std_logic;
	red_out : OUT std_logic;
	green_out : OUT std_logic;
	blue_out : OUT std_logic;
	horiz_sync_out : OUT std_logic;
	vert_sync_out : OUT std_logic;
	seg1_dec : OUT std_logic;
	mouse_data : INOUT std_logic;
	mouse_clk : INOUT std_logic;
	seg0_dec : OUT std_logic;
	seg0 : OUT std_logic_vector(6 DOWNTO 0);
	seg1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END part1_Demo;

-- Design Ports Information
-- r1	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g1	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red_out	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_out	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue_out	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horiz_sync_out	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vert_sync_out	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1_dec	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0_dec	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- mouse_data	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_clk	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_r1 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_g1 : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL ww_red_out : std_logic;
SIGNAL ww_green_out : std_logic;
SIGNAL ww_blue_out : std_logic;
SIGNAL ww_horiz_sync_out : std_logic;
SIGNAL ww_vert_sync_out : std_logic;
SIGNAL ww_seg1_dec : std_logic;
SIGNAL ww_seg0_dec : std_logic;
SIGNAL ww_seg0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst4|char_data|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst4|char_data|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \PLL1|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \PLL1|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \mouse1|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mouse1|new_cursor_column[2]~14_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[1]~12_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[6]~22_combout\ : std_logic;
SIGNAL \inst1|Add1~2_combout\ : std_logic;
SIGNAL \inst1|Add1~4_combout\ : std_logic;
SIGNAL \inst1|Add1~12_combout\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[1]~10_combout\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[2]~12_combout\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[4]~16_combout\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[5]~18_combout\ : std_logic;
SIGNAL \inst4|char_data|Mux0~0_combout\ : std_logic;
SIGNAL \inst4|char_data|Mux0~2_combout\ : std_logic;
SIGNAL \inst1|process_0~2_combout\ : std_logic;
SIGNAL \mouse1|MOUSE_CLK_FILTER~0_combout\ : std_logic;
SIGNAL \inst1|Equal1~0_combout\ : std_logic;
SIGNAL \inst1|Equal1~1_combout\ : std_logic;
SIGNAL \inst1|v_count[6]~4_combout\ : std_logic;
SIGNAL \inst1|v_count~8_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~12_combout\ : std_logic;
SIGNAL \mouse1|cursor_row~6_combout\ : std_logic;
SIGNAL \mouse1|cursor_row~7_combout\ : std_logic;
SIGNAL \mouse1|cursor_row~9_combout\ : std_logic;
SIGNAL \mouse1|mouse_state.WAIT_CMD_ACK~q\ : std_logic;
SIGNAL \mouse1|Selector4~0_combout\ : std_logic;
SIGNAL \mouse1|cursor_column[0]~17_combout\ : std_logic;
SIGNAL \inst1|pixel_column[4]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[0]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[1]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR3[1]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[2]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR3[6]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[6]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[5]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR3[5]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR3[4]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[3]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[7]~feeder_combout\ : std_logic;
SIGNAL \mouse_clk~input_o\ : std_logic;
SIGNAL \mouse1|filter[1]~feeder_combout\ : std_logic;
SIGNAL \mouse1|filter[2]~feeder_combout\ : std_logic;
SIGNAL \mouse1|filter[4]~feeder_combout\ : std_logic;
SIGNAL \mouse1|filter[5]~feeder_combout\ : std_logic;
SIGNAL \mouse1|MOUSE_CLK_FILTER~1_combout\ : std_logic;
SIGNAL \mouse1|MOUSE_CLK_FILTER~2_combout\ : std_logic;
SIGNAL \mouse1|MOUSE_CLK_FILTER~3_combout\ : std_logic;
SIGNAL \mouse1|MOUSE_CLK_FILTER~q\ : std_logic;
SIGNAL \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \mouse1|SHIFTOUT[9]~feeder_combout\ : std_logic;
SIGNAL \mouse1|Selector0~0_combout\ : std_logic;
SIGNAL \mouse1|mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[0]~30_combout\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[1]~11\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[2]~13\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[3]~14_combout\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[3]~15\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[4]~17\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[5]~19\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[6]~20_combout\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[6]~21\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[7]~22_combout\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[7]~23\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[8]~24_combout\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[8]~25\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[9]~26_combout\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[9]~27\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[10]~28_combout\ : std_logic;
SIGNAL \mouse1|Selector1~0_combout\ : std_logic;
SIGNAL \mouse1|mouse_state.LOAD_COMMAND~q\ : std_logic;
SIGNAL \mouse1|mouse_state.LOAD_COMMAND2~q\ : std_logic;
SIGNAL \mouse1|INCNT~3_combout\ : std_logic;
SIGNAL \mouse1|INCNT[3]~1_combout\ : std_logic;
SIGNAL \mouse1|INCNT~2_combout\ : std_logic;
SIGNAL \mouse1|INCNT~4_combout\ : std_logic;
SIGNAL \mouse1|INCNT~0_combout\ : std_logic;
SIGNAL \mouse1|LessThan1~0_combout\ : std_logic;
SIGNAL \mouse1|READ_CHAR~0_combout\ : std_logic;
SIGNAL \mouse1|OUTCNT~1_combout\ : std_logic;
SIGNAL \mouse1|send_char~0_combout\ : std_logic;
SIGNAL \mouse1|send_char~q\ : std_logic;
SIGNAL \mouse1|output_ready~0_combout\ : std_logic;
SIGNAL \mouse1|OUTCNT~3_combout\ : std_logic;
SIGNAL \mouse1|OUTCNT~0_combout\ : std_logic;
SIGNAL \mouse1|OUTCNT~2_combout\ : std_logic;
SIGNAL \mouse1|LessThan0~0_combout\ : std_logic;
SIGNAL \mouse1|output_ready~feeder_combout\ : std_logic;
SIGNAL \mouse1|output_ready~q\ : std_logic;
SIGNAL \mouse1|Selector3~0_combout\ : std_logic;
SIGNAL \mouse1|mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;
SIGNAL \mouse1|READ_CHAR~q\ : std_logic;
SIGNAL \mouse1|iready_set~0_combout\ : std_logic;
SIGNAL \mouse1|iready_set~q\ : std_logic;
SIGNAL \mouse1|mouse_state.INPUT_PACKETS~0_combout\ : std_logic;
SIGNAL \mouse1|mouse_state.INPUT_PACKETS~q\ : std_logic;
SIGNAL \mouse1|Selector6~0_combout\ : std_logic;
SIGNAL \mouse1|Selector6~1_combout\ : std_logic;
SIGNAL \mouse1|send_data~q\ : std_logic;
SIGNAL \mouse1|MOUSE_DATA_BUF~0_combout\ : std_logic;
SIGNAL \mouse1|SHIFTOUT[8]~3_combout\ : std_logic;
SIGNAL \mouse1|SHIFTOUT[7]~feeder_combout\ : std_logic;
SIGNAL \mouse1|SHIFTOUT[6]~feeder_combout\ : std_logic;
SIGNAL \mouse1|SHIFTOUT[5]~feeder_combout\ : std_logic;
SIGNAL \mouse1|SHIFTOUT[4]~2_combout\ : std_logic;
SIGNAL \mouse1|SHIFTOUT[3]~1_combout\ : std_logic;
SIGNAL \mouse1|SHIFTOUT[2]~0_combout\ : std_logic;
SIGNAL \mouse1|SHIFTOUT[1]~feeder_combout\ : std_logic;
SIGNAL \mouse1|MOUSE_DATA_BUF~q\ : std_logic;
SIGNAL \mouse1|WideOr4~combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \PLL1|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|Add0~15\ : std_logic;
SIGNAL \inst1|Add0~17\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst1|h_count~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|h_count~2_combout\ : std_logic;
SIGNAL \inst1|process_0~10_combout\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|h_count~1_combout\ : std_logic;
SIGNAL \inst1|process_0~9_combout\ : std_logic;
SIGNAL \inst1|process_0~11_combout\ : std_logic;
SIGNAL \inst1|process_0~12_combout\ : std_logic;
SIGNAL \inst1|Add1~0_combout\ : std_logic;
SIGNAL \inst1|v_count~7_combout\ : std_logic;
SIGNAL \inst1|v_count[0]~1_combout\ : std_logic;
SIGNAL \inst1|Add1~1\ : std_logic;
SIGNAL \inst1|Add1~3\ : std_logic;
SIGNAL \inst1|Add1~5\ : std_logic;
SIGNAL \inst1|Add1~7\ : std_logic;
SIGNAL \inst1|Add1~8_combout\ : std_logic;
SIGNAL \inst1|v_count[4]~11_combout\ : std_logic;
SIGNAL \inst1|Add1~9\ : std_logic;
SIGNAL \inst1|Add1~11\ : std_logic;
SIGNAL \inst1|Add1~13\ : std_logic;
SIGNAL \inst1|Add1~14_combout\ : std_logic;
SIGNAL \inst1|v_count[7]~5_combout\ : std_logic;
SIGNAL \inst1|Add1~15\ : std_logic;
SIGNAL \inst1|Add1~16_combout\ : std_logic;
SIGNAL \inst1|v_count[8]~6_combout\ : std_logic;
SIGNAL \inst1|Add1~6_combout\ : std_logic;
SIGNAL \inst1|v_count[3]~10_combout\ : std_logic;
SIGNAL \inst1|Add1~10_combout\ : std_logic;
SIGNAL \inst1|v_count[5]~3_combout\ : std_logic;
SIGNAL \inst1|process_0~7_combout\ : std_logic;
SIGNAL \inst1|process_0~8_combout\ : std_logic;
SIGNAL \inst1|v_count[4]~0_combout\ : std_logic;
SIGNAL \inst1|v_count[2]~9_combout\ : std_logic;
SIGNAL \inst1|pixel_row[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|LessThan7~0_combout\ : std_logic;
SIGNAL \inst1|LessThan7~1_combout\ : std_logic;
SIGNAL \inst1|pixel_row[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|pixel_row[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|process_0~0_combout\ : std_logic;
SIGNAL \inst4|char_data|Mux0~3_combout\ : std_logic;
SIGNAL \inst1|pixel_column[2]~feeder_combout\ : std_logic;
SIGNAL \inst4|char_data|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|video_on_h~q\ : std_logic;
SIGNAL \inst1|video_on_v~q\ : std_logic;
SIGNAL \inst1|blue_out~0_combout\ : std_logic;
SIGNAL \inst1|blue_out~1_combout\ : std_logic;
SIGNAL \inst1|blue_out~q\ : std_logic;
SIGNAL \inst1|process_0~3_combout\ : std_logic;
SIGNAL \inst1|process_0~1_combout\ : std_logic;
SIGNAL \inst1|process_0~4_combout\ : std_logic;
SIGNAL \inst1|horiz_sync~q\ : std_logic;
SIGNAL \inst1|horiz_sync_out~feeder_combout\ : std_logic;
SIGNAL \inst1|horiz_sync_out~q\ : std_logic;
SIGNAL \inst1|Add1~17\ : std_logic;
SIGNAL \inst1|Add1~18_combout\ : std_logic;
SIGNAL \inst1|v_count[9]~2_combout\ : std_logic;
SIGNAL \inst1|process_0~5_combout\ : std_logic;
SIGNAL \inst1|process_0~6_combout\ : std_logic;
SIGNAL \inst1|vert_sync~q\ : std_logic;
SIGNAL \inst1|vert_sync_out~feeder_combout\ : std_logic;
SIGNAL \inst1|vert_sync_out~q\ : std_logic;
SIGNAL \mouse_data~input_o\ : std_logic;
SIGNAL \mouse1|SHIFTIN[8]~feeder_combout\ : std_logic;
SIGNAL \mouse1|SHIFTIN[0]~2_combout\ : std_logic;
SIGNAL \mouse1|SHIFTIN[7]~feeder_combout\ : std_logic;
SIGNAL \mouse1|SHIFTIN[6]~feeder_combout\ : std_logic;
SIGNAL \mouse1|SHIFTIN[5]~feeder_combout\ : std_logic;
SIGNAL \mouse1|SHIFTIN[4]~feeder_combout\ : std_logic;
SIGNAL \mouse1|SHIFTIN[3]~feeder_combout\ : std_logic;
SIGNAL \mouse1|SHIFTIN[2]~feeder_combout\ : std_logic;
SIGNAL \mouse1|SHIFTIN[1]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR1[0]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_COUNT[0]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[7]~0_combout\ : std_logic;
SIGNAL \mouse1|Add3~0_combout\ : std_logic;
SIGNAL \mouse1|PACKET_COUNT[1]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR1[0]~0_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR1[0]~1_combout\ : std_logic;
SIGNAL \mouse1|left_button~feeder_combout\ : std_logic;
SIGNAL \mouse1|Equal4~0_combout\ : std_logic;
SIGNAL \mouse1|left_button~0_combout\ : std_logic;
SIGNAL \mouse1|left_button~q\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR1[1]~feeder_combout\ : std_logic;
SIGNAL \mouse1|right_button~feeder_combout\ : std_logic;
SIGNAL \mouse1|right_button~q\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[4]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[7]~1_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[7]~2_combout\ : std_logic;
SIGNAL \mouse1|Equal3~0_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[8]~27\ : std_logic;
SIGNAL \mouse1|new_cursor_column[9]~28_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[9]~30_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[4]~18_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~14_combout\ : std_logic;
SIGNAL \mouse1|cursor_column[9]~7_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~15_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~16_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[0]~11\ : std_logic;
SIGNAL \mouse1|new_cursor_column[1]~13\ : std_logic;
SIGNAL \mouse1|new_cursor_column[2]~15\ : std_logic;
SIGNAL \mouse1|new_cursor_column[3]~16_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[1]~12_combout\ : std_logic;
SIGNAL \mouse1|RECV_UART~0_combout\ : std_logic;
SIGNAL \mouse1|RECV_UART~1_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[0]~10_combout\ : std_logic;
SIGNAL \mouse1|LessThan9~0_combout\ : std_logic;
SIGNAL \mouse1|RECV_UART~6_combout\ : std_logic;
SIGNAL \mouse1|RECV_UART~7_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~8_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~10_combout\ : std_logic;
SIGNAL \mouse1|RECV_UART~2_combout\ : std_logic;
SIGNAL \mouse1|cursor_column[0]~6_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~13_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[3]~17\ : std_logic;
SIGNAL \mouse1|new_cursor_column[4]~19\ : std_logic;
SIGNAL \mouse1|new_cursor_column[5]~20_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~11_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[5]~21\ : std_logic;
SIGNAL \mouse1|new_cursor_column[6]~22_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~18_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[6]~23\ : std_logic;
SIGNAL \mouse1|new_cursor_column[7]~24_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~9_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[7]~25\ : std_logic;
SIGNAL \mouse1|new_cursor_column[8]~26_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~19_combout\ : std_logic;
SIGNAL \mouseCol7seg|Mux0~0_combout\ : std_logic;
SIGNAL \mouseCol7seg|Mux1~0_combout\ : std_logic;
SIGNAL \mouseCol7seg|Mux2~0_combout\ : std_logic;
SIGNAL \mouseCol7seg|Mux3~0_combout\ : std_logic;
SIGNAL \mouseCol7seg|Mux4~0_combout\ : std_logic;
SIGNAL \mouseCol7seg|Mux5~0_combout\ : std_logic;
SIGNAL \mouseCol7seg|Mux6~0_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR3[0]~feeder_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[0]~10_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR3[7]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR3[3]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR3[2]~feeder_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[7]~24_combout\ : std_logic;
SIGNAL \mouse1|cursor_row~3_combout\ : std_logic;
SIGNAL \mouse1|cursor_row~2_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[2]~14_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[3]~16_combout\ : std_logic;
SIGNAL \mouse1|LessThan5~0_combout\ : std_logic;
SIGNAL \mouse1|RECV_UART~3_combout\ : std_logic;
SIGNAL \mouse1|RECV_UART~4_combout\ : std_logic;
SIGNAL \mouse1|RECV_UART~5_combout\ : std_logic;
SIGNAL \mouse1|cursor_row~8_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[0]~11\ : std_logic;
SIGNAL \mouse1|new_cursor_row[1]~13\ : std_logic;
SIGNAL \mouse1|new_cursor_row[2]~15\ : std_logic;
SIGNAL \mouse1|new_cursor_row[3]~17\ : std_logic;
SIGNAL \mouse1|new_cursor_row[4]~18_combout\ : std_logic;
SIGNAL \mouse1|cursor_row~5_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[4]~19\ : std_logic;
SIGNAL \mouse1|new_cursor_row[5]~20_combout\ : std_logic;
SIGNAL \mouse1|cursor_row~4_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[5]~21\ : std_logic;
SIGNAL \mouse1|new_cursor_row[6]~23\ : std_logic;
SIGNAL \mouse1|new_cursor_row[7]~25\ : std_logic;
SIGNAL \mouse1|new_cursor_row[8]~27\ : std_logic;
SIGNAL \mouse1|new_cursor_row[9]~28_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[8]~26_combout\ : std_logic;
SIGNAL \mouse1|LessThan5~1_combout\ : std_logic;
SIGNAL \mouse1|cursor_row~0_combout\ : std_logic;
SIGNAL \mouse1|cursor_row~1_combout\ : std_logic;
SIGNAL \mouseRow7seg|Mux0~0_combout\ : std_logic;
SIGNAL \mouseRow7seg|Mux1~0_combout\ : std_logic;
SIGNAL \mouseRow7seg|Mux2~0_combout\ : std_logic;
SIGNAL \mouseRow7seg|Mux3~0_combout\ : std_logic;
SIGNAL \mouseRow7seg|Mux4~0_combout\ : std_logic;
SIGNAL \mouseRow7seg|Mux5~0_combout\ : std_logic;
SIGNAL \mouseRow7seg|Mux6~0_combout\ : std_logic;
SIGNAL \mouse1|INCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mouse1|new_cursor_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mouse1|SHIFTOUT\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst1|pixel_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst4|char_data|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mouse1|filter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mouse1|cursor_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mouse1|new_cursor_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mouse1|inhibit_wait_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \mouse1|PACKET_CHAR2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PLL1|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \mouse1|PACKET_CHAR3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mouse1|PACKET_COUNT\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \mouse1|SHIFTIN\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \mouse1|PACKET_CHAR1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mouse1|cursor_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mouse1|OUTCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mouse1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \mouse1|ALT_INV_send_data~q\ : std_logic;
SIGNAL \mouse1|ALT_INV_mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \mouse1|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;
SIGNAL \mouseRow7seg|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \mouseCol7seg|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

r1 <= ww_r1;
ww_clk <= clk;
g1 <= ww_g1;
b1 <= ww_b1;
red_out <= ww_red_out;
green_out <= ww_green_out;
blue_out <= ww_blue_out;
horiz_sync_out <= ww_horiz_sync_out;
vert_sync_out <= ww_vert_sync_out;
seg1_dec <= ww_seg1_dec;
seg0_dec <= ww_seg0_dec;
seg0 <= ww_seg0;
seg1 <= ww_seg1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst4|char_data|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst1|pixel_row\(4) & \inst1|pixel_row\(3) & \inst1|pixel_row\(2));

\inst4|char_data|altsyncram_component|auto_generated|q_a\(0) <= \inst4|char_data|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst4|char_data|altsyncram_component|auto_generated|q_a\(1) <= \inst4|char_data|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst4|char_data|altsyncram_component|auto_generated|q_a\(2) <= \inst4|char_data|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst4|char_data|altsyncram_component|auto_generated|q_a\(3) <= \inst4|char_data|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst4|char_data|altsyncram_component|auto_generated|q_a\(4) <= \inst4|char_data|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst4|char_data|altsyncram_component|auto_generated|q_a\(5) <= \inst4|char_data|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst4|char_data|altsyncram_component|auto_generated|q_a\(6) <= \inst4|char_data|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst4|char_data|altsyncram_component|auto_generated|q_a\(7) <= \inst4|char_data|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\PLL1|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\PLL1|altpll_component|auto_generated|wire_pll1_clk\(0) <= \PLL1|altpll_component|auto_generated|pll1_CLK_bus\(0);
\PLL1|altpll_component|auto_generated|wire_pll1_clk\(1) <= \PLL1|altpll_component|auto_generated|pll1_CLK_bus\(1);
\PLL1|altpll_component|auto_generated|wire_pll1_clk\(2) <= \PLL1|altpll_component|auto_generated|pll1_CLK_bus\(2);
\PLL1|altpll_component|auto_generated|wire_pll1_clk\(3) <= \PLL1|altpll_component|auto_generated|pll1_CLK_bus\(3);
\PLL1|altpll_component|auto_generated|wire_pll1_clk\(4) <= \PLL1|altpll_component|auto_generated|pll1_CLK_bus\(4);

\mouse1|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mouse1|MOUSE_CLK_FILTER~q\);

\PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \PLL1|altpll_component|auto_generated|wire_pll1_clk\(0));
\mouse1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ <= NOT \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\;
\mouse1|ALT_INV_send_data~q\ <= NOT \mouse1|send_data~q\;
\mouse1|ALT_INV_mouse_state.INHIBIT_TRANS~q\ <= NOT \mouse1|mouse_state.INHIBIT_TRANS~q\;
\mouse1|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\ <= NOT \mouse1|mouse_state.WAIT_OUTPUT_READY~q\;
\mouseRow7seg|ALT_INV_Mux5~0_combout\ <= NOT \mouseRow7seg|Mux5~0_combout\;
\mouseCol7seg|ALT_INV_Mux0~0_combout\ <= NOT \mouseCol7seg|Mux0~0_combout\;

-- Location: M9K_X25_Y16_N0
\inst4|char_data|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000066001980066001F80066000F00018",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "tcgrom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "text_controller:inst4|char_rom:char_data|altsyncram:altsyncram_component|altsyncram_kt91:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 3,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \inst4|char_data|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst4|char_data|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: FF_X32_Y18_N13
\mouse1|new_cursor_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|new_cursor_column[2]~14_combout\,
	asdata => \~GND~combout\,
	sload => \mouse1|Equal4~0_combout\,
	ena => \mouse1|new_cursor_column[9]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(2));

-- Location: FF_X31_Y17_N23
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
	ena => \mouse1|new_cursor_column[9]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(6));

-- Location: FF_X31_Y17_N13
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
	ena => \mouse1|new_cursor_column[9]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(1));

-- Location: LCCOMB_X32_Y18_N12
\mouse1|new_cursor_column[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_column[2]~14_combout\ = ((\mouse1|PACKET_CHAR2\(2) $ (\mouse1|cursor_column\(2) $ (!\mouse1|new_cursor_column[1]~13\)))) # (GND)
-- \mouse1|new_cursor_column[2]~15\ = CARRY((\mouse1|PACKET_CHAR2\(2) & ((\mouse1|cursor_column\(2)) # (!\mouse1|new_cursor_column[1]~13\))) # (!\mouse1|PACKET_CHAR2\(2) & (\mouse1|cursor_column\(2) & !\mouse1|new_cursor_column[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|PACKET_CHAR2\(2),
	datab => \mouse1|cursor_column\(2),
	datad => VCC,
	cin => \mouse1|new_cursor_column[1]~13\,
	combout => \mouse1|new_cursor_column[2]~14_combout\,
	cout => \mouse1|new_cursor_column[2]~15\);

-- Location: LCCOMB_X31_Y17_N12
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

-- Location: LCCOMB_X31_Y17_N22
\mouse1|new_cursor_row[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_row[6]~22_combout\ = ((\mouse1|PACKET_CHAR3\(6) $ (\mouse1|cursor_row\(6) $ (\mouse1|new_cursor_row[5]~21\)))) # (GND)
-- \mouse1|new_cursor_row[6]~23\ = CARRY((\mouse1|PACKET_CHAR3\(6) & (\mouse1|cursor_row\(6) & !\mouse1|new_cursor_row[5]~21\)) # (!\mouse1|PACKET_CHAR3\(6) & ((\mouse1|cursor_row\(6)) # (!\mouse1|new_cursor_row[5]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|PACKET_CHAR3\(6),
	datab => \mouse1|cursor_row\(6),
	datad => VCC,
	cin => \mouse1|new_cursor_row[5]~21\,
	combout => \mouse1|new_cursor_row[6]~22_combout\,
	cout => \mouse1|new_cursor_row[6]~23\);

-- Location: LCCOMB_X27_Y15_N8
\inst1|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~2_combout\ = (\inst1|v_count\(1) & (!\inst1|Add1~1\)) # (!\inst1|v_count\(1) & ((\inst1|Add1~1\) # (GND)))
-- \inst1|Add1~3\ = CARRY((!\inst1|Add1~1\) # (!\inst1|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(1),
	datad => VCC,
	cin => \inst1|Add1~1\,
	combout => \inst1|Add1~2_combout\,
	cout => \inst1|Add1~3\);

-- Location: LCCOMB_X27_Y15_N10
\inst1|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~4_combout\ = (\inst1|v_count\(2) & (\inst1|Add1~3\ $ (GND))) # (!\inst1|v_count\(2) & (!\inst1|Add1~3\ & VCC))
-- \inst1|Add1~5\ = CARRY((\inst1|v_count\(2) & !\inst1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(2),
	datad => VCC,
	cin => \inst1|Add1~3\,
	combout => \inst1|Add1~4_combout\,
	cout => \inst1|Add1~5\);

-- Location: LCCOMB_X27_Y15_N18
\inst1|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~12_combout\ = (\inst1|v_count\(6) & (\inst1|Add1~11\ $ (GND))) # (!\inst1|v_count\(6) & (!\inst1|Add1~11\ & VCC))
-- \inst1|Add1~13\ = CARRY((\inst1|v_count\(6) & !\inst1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(6),
	datad => VCC,
	cin => \inst1|Add1~11\,
	combout => \inst1|Add1~12_combout\,
	cout => \inst1|Add1~13\);

-- Location: LCCOMB_X22_Y16_N10
\inst1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = (\inst1|h_count\(5) & (!\inst1|Add0~9\)) # (!\inst1|h_count\(5) & ((\inst1|Add0~9\) # (GND)))
-- \inst1|Add0~11\ = CARRY((!\inst1|Add0~9\) # (!\inst1|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(5),
	datad => VCC,
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\,
	cout => \inst1|Add0~11\);

-- Location: FF_X38_Y17_N13
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

-- Location: FF_X38_Y17_N11
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

-- Location: FF_X38_Y17_N7
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

-- Location: FF_X38_Y17_N5
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

-- Location: LCCOMB_X38_Y17_N4
\mouse1|inhibit_wait_count[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|inhibit_wait_count[1]~10_combout\ = (\mouse1|inhibit_wait_count\(1) & (\mouse1|inhibit_wait_count\(0) $ (VCC))) # (!\mouse1|inhibit_wait_count\(1) & (\mouse1|inhibit_wait_count\(0) & VCC))
-- \mouse1|inhibit_wait_count[1]~11\ = CARRY((\mouse1|inhibit_wait_count\(1) & \mouse1|inhibit_wait_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|inhibit_wait_count\(1),
	datab => \mouse1|inhibit_wait_count\(0),
	datad => VCC,
	combout => \mouse1|inhibit_wait_count[1]~10_combout\,
	cout => \mouse1|inhibit_wait_count[1]~11\);

-- Location: LCCOMB_X38_Y17_N6
\mouse1|inhibit_wait_count[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|inhibit_wait_count[2]~12_combout\ = (\mouse1|inhibit_wait_count\(2) & (!\mouse1|inhibit_wait_count[1]~11\)) # (!\mouse1|inhibit_wait_count\(2) & ((\mouse1|inhibit_wait_count[1]~11\) # (GND)))
-- \mouse1|inhibit_wait_count[2]~13\ = CARRY((!\mouse1|inhibit_wait_count[1]~11\) # (!\mouse1|inhibit_wait_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|inhibit_wait_count\(2),
	datad => VCC,
	cin => \mouse1|inhibit_wait_count[1]~11\,
	combout => \mouse1|inhibit_wait_count[2]~12_combout\,
	cout => \mouse1|inhibit_wait_count[2]~13\);

-- Location: LCCOMB_X38_Y17_N10
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

-- Location: LCCOMB_X38_Y17_N12
\mouse1|inhibit_wait_count[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|inhibit_wait_count[5]~18_combout\ = (\mouse1|inhibit_wait_count\(5) & (\mouse1|inhibit_wait_count[4]~17\ $ (GND))) # (!\mouse1|inhibit_wait_count\(5) & (!\mouse1|inhibit_wait_count[4]~17\ & VCC))
-- \mouse1|inhibit_wait_count[5]~19\ = CARRY((\mouse1|inhibit_wait_count\(5) & !\mouse1|inhibit_wait_count[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|inhibit_wait_count\(5),
	datad => VCC,
	cin => \mouse1|inhibit_wait_count[4]~17\,
	combout => \mouse1|inhibit_wait_count[5]~18_combout\,
	cout => \mouse1|inhibit_wait_count[5]~19\);

-- Location: LCCOMB_X24_Y16_N22
\inst4|char_data|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|char_data|Mux0~0_combout\ = (\inst1|pixel_column\(3) & ((\inst4|char_data|altsyncram_component|auto_generated|q_a\(1)) # ((\inst1|pixel_column\(2))))) # (!\inst1|pixel_column\(3) & (((\inst4|char_data|altsyncram_component|auto_generated|q_a\(3) & 
-- !\inst1|pixel_column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|char_data|altsyncram_component|auto_generated|q_a\(1),
	datab => \inst4|char_data|altsyncram_component|auto_generated|q_a\(3),
	datac => \inst1|pixel_column\(3),
	datad => \inst1|pixel_column\(2),
	combout => \inst4|char_data|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y16_N26
\inst4|char_data|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|char_data|Mux0~2_combout\ = (\inst1|pixel_column\(3) & (((\inst1|pixel_column\(2))))) # (!\inst1|pixel_column\(3) & ((\inst1|pixel_column\(2) & ((\inst4|char_data|altsyncram_component|auto_generated|q_a\(6)))) # (!\inst1|pixel_column\(2) & 
-- (\inst4|char_data|altsyncram_component|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|char_data|altsyncram_component|auto_generated|q_a\(7),
	datab => \inst1|pixel_column\(3),
	datac => \inst4|char_data|altsyncram_component|auto_generated|q_a\(6),
	datad => \inst1|pixel_column\(2),
	combout => \inst4|char_data|Mux0~2_combout\);

-- Location: FF_X23_Y16_N15
\inst1|pixel_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|pixel_column[4]~feeder_combout\,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_column\(4));

-- Location: FF_X26_Y15_N27
\inst1|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(6));

-- Location: LCCOMB_X23_Y16_N22
\inst1|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~2_combout\ = (\inst1|h_count\(3)) # ((!\inst1|h_count\(5) & (\inst1|h_count\(0) & \inst1|h_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(5),
	datab => \inst1|h_count\(3),
	datac => \inst1|h_count\(0),
	datad => \inst1|h_count\(1),
	combout => \inst1|process_0~2_combout\);

-- Location: FF_X27_Y15_N27
\inst1|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count~8_combout\,
	ena => \inst1|v_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(1));

-- Location: FF_X1_Y14_N21
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

-- Location: LCCOMB_X1_Y14_N20
\mouse1|MOUSE_CLK_FILTER~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|MOUSE_CLK_FILTER~0_combout\ = (\mouse1|filter\(2) & (\mouse1|filter\(7) & \mouse1|filter\(4))) # (!\mouse1|filter\(2) & ((\mouse1|filter\(7)) # (\mouse1|filter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|filter\(2),
	datac => \mouse1|filter\(7),
	datad => \mouse1|filter\(4),
	combout => \mouse1|MOUSE_CLK_FILTER~0_combout\);

-- Location: FF_X32_Y17_N5
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

-- Location: FF_X32_Y17_N15
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

-- Location: FF_X33_Y18_N25
\mouse1|cursor_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_column~12_combout\,
	ena => \mouse1|cursor_column[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_column\(4));

-- Location: FF_X32_Y17_N19
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

-- Location: FF_X32_Y17_N25
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

-- Location: FF_X32_Y17_N23
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

-- Location: FF_X32_Y17_N29
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

-- Location: FF_X32_Y17_N31
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

-- Location: FF_X30_Y17_N11
\mouse1|PACKET_CHAR3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_CHAR3[6]~feeder_combout\,
	ena => \mouse1|left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_CHAR3\(6));

-- Location: FF_X30_Y17_N13
\mouse1|PACKET_CHAR3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_CHAR3[5]~feeder_combout\,
	ena => \mouse1|left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_CHAR3\(5));

-- Location: FF_X30_Y17_N3
\mouse1|PACKET_CHAR3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_CHAR3[4]~feeder_combout\,
	ena => \mouse1|left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_CHAR3\(4));

-- Location: FF_X31_Y18_N5
\mouse1|cursor_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_row~6_combout\,
	ena => \mouse1|cursor_column[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_row\(3));

-- Location: FF_X31_Y18_N27
\mouse1|cursor_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_row~7_combout\,
	ena => \mouse1|cursor_column[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_row\(2));

-- Location: FF_X30_Y17_N17
\mouse1|PACKET_CHAR3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_CHAR3[1]~feeder_combout\,
	ena => \mouse1|left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_CHAR3\(1));

-- Location: FF_X31_Y18_N31
\mouse1|cursor_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_row~9_combout\,
	ena => \mouse1|cursor_column[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_row\(0));

-- Location: LCCOMB_X24_Y16_N28
\inst1|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Equal1~0_combout\ = (\inst1|h_count\(8)) # (((\inst1|h_count\(2)) # (!\inst1|h_count\(5))) # (!\inst1|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(8),
	datab => \inst1|h_count\(7),
	datac => \inst1|h_count\(5),
	datad => \inst1|h_count\(2),
	combout => \inst1|Equal1~0_combout\);

-- Location: LCCOMB_X24_Y16_N30
\inst1|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Equal1~1_combout\ = (((\inst1|h_count\(6)) # (\inst1|Equal1~0_combout\)) # (!\inst1|h_count\(9))) # (!\inst1|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~0_combout\,
	datab => \inst1|h_count\(9),
	datac => \inst1|h_count\(6),
	datad => \inst1|Equal1~0_combout\,
	combout => \inst1|Equal1~1_combout\);

-- Location: LCCOMB_X26_Y15_N26
\inst1|v_count[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[6]~4_combout\ = (\inst1|v_count[0]~1_combout\ & (\inst1|v_count[4]~0_combout\ & ((\inst1|Add1~12_combout\)))) # (!\inst1|v_count[0]~1_combout\ & ((\inst1|v_count\(6)) # ((\inst1|v_count[4]~0_combout\ & \inst1|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count[0]~1_combout\,
	datab => \inst1|v_count[4]~0_combout\,
	datac => \inst1|v_count\(6),
	datad => \inst1|Add1~12_combout\,
	combout => \inst1|v_count[6]~4_combout\);

-- Location: LCCOMB_X27_Y15_N26
\inst1|v_count~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count~8_combout\ = (\inst1|Add1~2_combout\ & ((\inst1|process_0~12_combout\) # ((\inst1|process_0~11_combout\) # (\inst1|process_0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~12_combout\,
	datab => \inst1|process_0~11_combout\,
	datac => \inst1|Add1~2_combout\,
	datad => \inst1|process_0~8_combout\,
	combout => \inst1|v_count~8_combout\);

-- Location: LCCOMB_X33_Y18_N24
\mouse1|cursor_column~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~12_combout\ = (\mouse1|new_cursor_column\(4) & \mouse1|cursor_column[0]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|new_cursor_column\(4),
	datad => \mouse1|cursor_column[0]~6_combout\,
	combout => \mouse1|cursor_column~12_combout\);

-- Location: LCCOMB_X31_Y18_N4
\mouse1|cursor_row~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row~6_combout\ = (\mouse1|Equal3~0_combout\ & (\mouse1|new_cursor_row\(3) & (\mouse1|cursor_row~0_combout\ & !\mouse1|RECV_UART~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|Equal3~0_combout\,
	datab => \mouse1|new_cursor_row\(3),
	datac => \mouse1|cursor_row~0_combout\,
	datad => \mouse1|RECV_UART~5_combout\,
	combout => \mouse1|cursor_row~6_combout\);

-- Location: LCCOMB_X31_Y18_N26
\mouse1|cursor_row~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row~7_combout\ = (\mouse1|Equal3~0_combout\ & (\mouse1|new_cursor_row\(2) & (\mouse1|cursor_row~0_combout\ & !\mouse1|RECV_UART~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|Equal3~0_combout\,
	datab => \mouse1|new_cursor_row\(2),
	datac => \mouse1|cursor_row~0_combout\,
	datad => \mouse1|RECV_UART~5_combout\,
	combout => \mouse1|cursor_row~7_combout\);

-- Location: LCCOMB_X31_Y18_N30
\mouse1|cursor_row~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row~9_combout\ = (\mouse1|Equal3~0_combout\ & (\mouse1|new_cursor_row\(0) & (\mouse1|cursor_row~0_combout\ & !\mouse1|RECV_UART~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|Equal3~0_combout\,
	datab => \mouse1|new_cursor_row\(0),
	datac => \mouse1|cursor_row~0_combout\,
	datad => \mouse1|RECV_UART~5_combout\,
	combout => \mouse1|cursor_row~9_combout\);

-- Location: FF_X36_Y17_N27
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

-- Location: LCCOMB_X36_Y17_N26
\mouse1|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|Selector4~0_combout\ = (\mouse1|mouse_state.WAIT_OUTPUT_READY~q\ & ((\mouse1|output_ready~q\) # ((\mouse1|mouse_state.WAIT_CMD_ACK~q\ & !\mouse1|iready_set~q\)))) # (!\mouse1|mouse_state.WAIT_OUTPUT_READY~q\ & 
-- (((\mouse1|mouse_state.WAIT_CMD_ACK~q\ & !\mouse1|iready_set~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \mouse1|output_ready~q\,
	datac => \mouse1|mouse_state.WAIT_CMD_ACK~q\,
	datad => \mouse1|iready_set~q\,
	combout => \mouse1|Selector4~0_combout\);

-- Location: LCCOMB_X33_Y18_N10
\mouse1|cursor_column[0]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column[0]~17_combout\ = ((!\mouse1|new_cursor_column\(8) & ((!\mouse1|LessThan9~0_combout\) # (!\mouse1|new_cursor_column\(7))))) # (!\mouse1|new_cursor_column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_column\(8),
	datab => \mouse1|new_cursor_column\(7),
	datac => \mouse1|new_cursor_column\(9),
	datad => \mouse1|LessThan9~0_combout\,
	combout => \mouse1|cursor_column[0]~17_combout\);

-- Location: LCCOMB_X23_Y16_N14
\inst1|pixel_column[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pixel_column[4]~feeder_combout\ = \inst1|h_count\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|h_count\(4),
	combout => \inst1|pixel_column[4]~feeder_combout\);

-- Location: LCCOMB_X32_Y17_N28
\mouse1|PACKET_CHAR2[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR2[0]~feeder_combout\ = \mouse1|SHIFTIN\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|SHIFTIN\(0),
	combout => \mouse1|PACKET_CHAR2[0]~feeder_combout\);

-- Location: LCCOMB_X32_Y17_N22
\mouse1|PACKET_CHAR2[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR2[1]~feeder_combout\ = \mouse1|SHIFTIN\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|SHIFTIN\(1),
	combout => \mouse1|PACKET_CHAR2[1]~feeder_combout\);

-- Location: LCCOMB_X30_Y17_N16
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

-- Location: LCCOMB_X32_Y17_N24
\mouse1|PACKET_CHAR2[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR2[2]~feeder_combout\ = \mouse1|SHIFTIN\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|SHIFTIN\(2),
	combout => \mouse1|PACKET_CHAR2[2]~feeder_combout\);

-- Location: LCCOMB_X30_Y17_N10
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

-- Location: LCCOMB_X32_Y17_N4
\mouse1|PACKET_CHAR2[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR2[6]~feeder_combout\ = \mouse1|SHIFTIN\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|SHIFTIN\(6),
	combout => \mouse1|PACKET_CHAR2[6]~feeder_combout\);

-- Location: LCCOMB_X32_Y17_N14
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

-- Location: LCCOMB_X30_Y17_N12
\mouse1|PACKET_CHAR3[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR3[5]~feeder_combout\ = \mouse1|SHIFTIN\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|SHIFTIN\(5),
	combout => \mouse1|PACKET_CHAR3[5]~feeder_combout\);

-- Location: LCCOMB_X30_Y17_N2
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

-- Location: LCCOMB_X32_Y17_N18
\mouse1|PACKET_CHAR2[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR2[3]~feeder_combout\ = \mouse1|SHIFTIN\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|SHIFTIN\(3),
	combout => \mouse1|PACKET_CHAR2[3]~feeder_combout\);

-- Location: LCCOMB_X32_Y17_N30
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

-- Location: IOOBUF_X41_Y21_N23
\r1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_r1);

-- Location: IOOBUF_X41_Y20_N23
\g1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|blue_out~q\,
	devoe => ww_devoe,
	o => ww_g1);

-- Location: IOOBUF_X41_Y21_N9
\b1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|blue_out~q\,
	devoe => ww_devoe,
	o => ww_b1);

-- Location: IOOBUF_X41_Y25_N2
\red_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_red_out);

-- Location: IOOBUF_X41_Y24_N23
\green_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|blue_out~q\,
	devoe => ww_devoe,
	o => ww_green_out);

-- Location: IOOBUF_X41_Y19_N9
\blue_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|blue_out~q\,
	devoe => ww_devoe,
	o => ww_blue_out);

-- Location: IOOBUF_X41_Y18_N16
\horiz_sync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|horiz_sync_out~q\,
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
	i => \inst1|vert_sync_out~q\,
	devoe => ww_devoe,
	o => ww_vert_sync_out);

-- Location: IOOBUF_X26_Y29_N30
\seg1_dec~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mouse1|left_button~q\,
	devoe => ww_devoe,
	o => ww_seg1_dec);

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

-- Location: IOOBUF_X26_Y29_N16
\seg0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mouseCol7seg|ALT_INV_Mux0~0_combout\,
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
	i => \mouseCol7seg|Mux1~0_combout\,
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
	i => \mouseCol7seg|Mux2~0_combout\,
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
	i => \mouseCol7seg|Mux3~0_combout\,
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
	i => \mouseCol7seg|Mux4~0_combout\,
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
	i => \mouseCol7seg|Mux5~0_combout\,
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
	i => \mouseCol7seg|Mux6~0_combout\,
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
	i => \mouseRow7seg|Mux0~0_combout\,
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
	i => \mouseRow7seg|Mux1~0_combout\,
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
	i => \mouseRow7seg|Mux2~0_combout\,
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
	i => \mouseRow7seg|Mux3~0_combout\,
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
	i => \mouseRow7seg|Mux4~0_combout\,
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
	i => \mouseRow7seg|ALT_INV_Mux5~0_combout\,
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
	i => \mouseRow7seg|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_seg1(0));

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

-- Location: FF_X1_Y12_N1
\mouse1|filter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mouse_clk~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|filter\(0));

-- Location: LCCOMB_X1_Y14_N18
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

-- Location: FF_X1_Y14_N19
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

-- Location: LCCOMB_X1_Y14_N26
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

-- Location: FF_X1_Y14_N27
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

-- Location: FF_X1_Y14_N23
\mouse1|filter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mouse1|filter\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|filter\(3));

-- Location: LCCOMB_X1_Y14_N28
\mouse1|filter[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|filter[4]~feeder_combout\ = \mouse1|filter\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|filter\(3),
	combout => \mouse1|filter[4]~feeder_combout\);

-- Location: FF_X1_Y14_N29
\mouse1|filter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mouse1|filter[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|filter\(4));

-- Location: LCCOMB_X1_Y14_N30
\mouse1|filter[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|filter[5]~feeder_combout\ = \mouse1|filter\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|filter\(4),
	combout => \mouse1|filter[5]~feeder_combout\);

-- Location: FF_X1_Y14_N31
\mouse1|filter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \mouse1|filter[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|filter\(5));

-- Location: LCCOMB_X1_Y14_N8
\mouse1|MOUSE_CLK_FILTER~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|MOUSE_CLK_FILTER~1_combout\ = (\mouse1|filter\(2) & ((\mouse1|MOUSE_CLK_FILTER~q\) # ((\mouse1|filter\(3) & \mouse1|filter\(5))))) # (!\mouse1|filter\(2) & (\mouse1|MOUSE_CLK_FILTER~q\ & ((\mouse1|filter\(3)) # (\mouse1|filter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|filter\(2),
	datab => \mouse1|filter\(3),
	datac => \mouse1|filter\(5),
	datad => \mouse1|MOUSE_CLK_FILTER~q\,
	combout => \mouse1|MOUSE_CLK_FILTER~1_combout\);

-- Location: FF_X1_Y14_N25
\mouse1|filter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mouse1|filter\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|filter\(6));

-- Location: LCCOMB_X1_Y14_N12
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

-- Location: LCCOMB_X1_Y14_N16
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

-- Location: FF_X1_Y14_N17
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

-- Location: CLKCTRL_G2
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

-- Location: LCCOMB_X37_Y17_N12
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

-- Location: LCCOMB_X38_Y17_N24
\mouse1|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|Selector0~0_combout\ = (\mouse1|mouse_state.INHIBIT_TRANS~q\) # ((\mouse1|inhibit_wait_count\(10) & \mouse1|inhibit_wait_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|inhibit_wait_count\(10),
	datac => \mouse1|mouse_state.INHIBIT_TRANS~q\,
	datad => \mouse1|inhibit_wait_count\(9),
	combout => \mouse1|Selector0~0_combout\);

-- Location: FF_X38_Y17_N25
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

-- Location: LCCOMB_X38_Y17_N28
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

-- Location: FF_X38_Y17_N29
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

-- Location: LCCOMB_X38_Y17_N8
\mouse1|inhibit_wait_count[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|inhibit_wait_count[3]~14_combout\ = (\mouse1|inhibit_wait_count\(3) & (\mouse1|inhibit_wait_count[2]~13\ $ (GND))) # (!\mouse1|inhibit_wait_count\(3) & (!\mouse1|inhibit_wait_count[2]~13\ & VCC))
-- \mouse1|inhibit_wait_count[3]~15\ = CARRY((\mouse1|inhibit_wait_count\(3) & !\mouse1|inhibit_wait_count[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|inhibit_wait_count\(3),
	datad => VCC,
	cin => \mouse1|inhibit_wait_count[2]~13\,
	combout => \mouse1|inhibit_wait_count[3]~14_combout\,
	cout => \mouse1|inhibit_wait_count[3]~15\);

-- Location: FF_X38_Y17_N9
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

-- Location: LCCOMB_X38_Y17_N14
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

-- Location: FF_X38_Y17_N15
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

-- Location: LCCOMB_X38_Y17_N16
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

-- Location: FF_X38_Y17_N17
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

-- Location: LCCOMB_X38_Y17_N18
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

-- Location: FF_X38_Y17_N19
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

-- Location: LCCOMB_X38_Y17_N20
\mouse1|inhibit_wait_count[9]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|inhibit_wait_count[9]~26_combout\ = (\mouse1|inhibit_wait_count\(9) & (\mouse1|inhibit_wait_count[8]~25\ $ (GND))) # (!\mouse1|inhibit_wait_count\(9) & (!\mouse1|inhibit_wait_count[8]~25\ & VCC))
-- \mouse1|inhibit_wait_count[9]~27\ = CARRY((\mouse1|inhibit_wait_count\(9) & !\mouse1|inhibit_wait_count[8]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|inhibit_wait_count\(9),
	datad => VCC,
	cin => \mouse1|inhibit_wait_count[8]~25\,
	combout => \mouse1|inhibit_wait_count[9]~26_combout\,
	cout => \mouse1|inhibit_wait_count[9]~27\);

-- Location: FF_X38_Y17_N21
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

-- Location: LCCOMB_X38_Y17_N22
\mouse1|inhibit_wait_count[10]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|inhibit_wait_count[10]~28_combout\ = \mouse1|inhibit_wait_count\(10) $ (\mouse1|inhibit_wait_count[9]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|inhibit_wait_count\(10),
	cin => \mouse1|inhibit_wait_count[9]~27\,
	combout => \mouse1|inhibit_wait_count[10]~28_combout\);

-- Location: FF_X38_Y17_N23
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

-- Location: LCCOMB_X38_Y17_N2
\mouse1|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|Selector1~0_combout\ = (\mouse1|inhibit_wait_count\(9) & (\mouse1|inhibit_wait_count\(10) & !\mouse1|mouse_state.INHIBIT_TRANS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|inhibit_wait_count\(9),
	datac => \mouse1|inhibit_wait_count\(10),
	datad => \mouse1|mouse_state.INHIBIT_TRANS~q\,
	combout => \mouse1|Selector1~0_combout\);

-- Location: FF_X38_Y17_N3
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

-- Location: FF_X36_Y17_N29
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

-- Location: LCCOMB_X33_Y17_N10
\mouse1|INCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|INCNT~3_combout\ = (!\mouse1|INCNT\(0) & (((!\mouse1|INCNT\(2) & !\mouse1|INCNT\(1))) # (!\mouse1|INCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|INCNT\(2),
	datab => \mouse1|INCNT\(1),
	datac => \mouse1|INCNT\(0),
	datad => \mouse1|INCNT\(3),
	combout => \mouse1|INCNT~3_combout\);

-- Location: LCCOMB_X33_Y17_N22
\mouse1|INCNT[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|INCNT[3]~1_combout\ = (!\mouse1|mouse_state.WAIT_OUTPUT_READY~q\ & \mouse1|READ_CHAR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \mouse1|READ_CHAR~q\,
	combout => \mouse1|INCNT[3]~1_combout\);

-- Location: FF_X33_Y17_N11
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

-- Location: LCCOMB_X33_Y17_N24
\mouse1|INCNT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|INCNT~2_combout\ = (!\mouse1|INCNT\(3) & (\mouse1|INCNT\(1) $ (\mouse1|INCNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|INCNT\(3),
	datac => \mouse1|INCNT\(1),
	datad => \mouse1|INCNT\(0),
	combout => \mouse1|INCNT~2_combout\);

-- Location: FF_X33_Y17_N25
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

-- Location: LCCOMB_X33_Y17_N8
\mouse1|INCNT~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|INCNT~4_combout\ = (\mouse1|INCNT\(2) & (\mouse1|INCNT\(1) & (!\mouse1|INCNT\(3) & \mouse1|INCNT\(0)))) # (!\mouse1|INCNT\(2) & (!\mouse1|INCNT\(1) & (\mouse1|INCNT\(3) & !\mouse1|INCNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|INCNT\(2),
	datab => \mouse1|INCNT\(1),
	datac => \mouse1|INCNT\(3),
	datad => \mouse1|INCNT\(0),
	combout => \mouse1|INCNT~4_combout\);

-- Location: FF_X33_Y17_N9
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

-- Location: LCCOMB_X33_Y17_N30
\mouse1|INCNT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|INCNT~0_combout\ = (!\mouse1|INCNT\(3) & (\mouse1|INCNT\(2) $ (((\mouse1|INCNT\(1) & \mouse1|INCNT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|INCNT\(3),
	datab => \mouse1|INCNT\(1),
	datac => \mouse1|INCNT\(2),
	datad => \mouse1|INCNT\(0),
	combout => \mouse1|INCNT~0_combout\);

-- Location: FF_X33_Y17_N31
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

-- Location: LCCOMB_X33_Y17_N18
\mouse1|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|LessThan1~0_combout\ = ((!\mouse1|INCNT\(0) & (!\mouse1|INCNT\(2) & !\mouse1|INCNT\(1)))) # (!\mouse1|INCNT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|INCNT\(0),
	datab => \mouse1|INCNT\(3),
	datac => \mouse1|INCNT\(2),
	datad => \mouse1|INCNT\(1),
	combout => \mouse1|LessThan1~0_combout\);

-- Location: LCCOMB_X35_Y17_N4
\mouse1|READ_CHAR~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|READ_CHAR~0_combout\ = (\mouse1|READ_CHAR~q\ & ((\mouse1|LessThan1~0_combout\))) # (!\mouse1|READ_CHAR~q\ & (!\mouse_data~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse_data~input_o\,
	datac => \mouse1|READ_CHAR~q\,
	datad => \mouse1|LessThan1~0_combout\,
	combout => \mouse1|READ_CHAR~0_combout\);

-- Location: LCCOMB_X36_Y17_N20
\mouse1|OUTCNT~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|OUTCNT~1_combout\ = (!\mouse1|OUTCNT\(3) & (\mouse1|OUTCNT\(2) $ (((\mouse1|OUTCNT\(1) & \mouse1|OUTCNT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|OUTCNT\(1),
	datab => \mouse1|OUTCNT\(3),
	datac => \mouse1|OUTCNT\(2),
	datad => \mouse1|OUTCNT\(0),
	combout => \mouse1|OUTCNT~1_combout\);

-- Location: LCCOMB_X37_Y17_N18
\mouse1|send_char~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|send_char~0_combout\ = (\mouse1|send_char~q\) # ((\mouse1|mouse_state.WAIT_OUTPUT_READY~q\ & \mouse1|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \mouse1|send_char~q\,
	datad => \mouse1|LessThan0~0_combout\,
	combout => \mouse1|send_char~0_combout\);

-- Location: FF_X37_Y17_N19
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

-- Location: LCCOMB_X36_Y17_N10
\mouse1|output_ready~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|output_ready~0_combout\ = (\mouse1|mouse_state.WAIT_OUTPUT_READY~q\ & !\mouse1|send_char~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \mouse1|send_char~q\,
	combout => \mouse1|output_ready~0_combout\);

-- Location: FF_X36_Y17_N21
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

-- Location: LCCOMB_X36_Y17_N8
\mouse1|OUTCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|OUTCNT~3_combout\ = (!\mouse1|OUTCNT\(0) & (((!\mouse1|OUTCNT\(1) & !\mouse1|OUTCNT\(2))) # (!\mouse1|OUTCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|OUTCNT\(1),
	datab => \mouse1|OUTCNT\(3),
	datac => \mouse1|OUTCNT\(0),
	datad => \mouse1|OUTCNT\(2),
	combout => \mouse1|OUTCNT~3_combout\);

-- Location: FF_X36_Y17_N9
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

-- Location: LCCOMB_X36_Y17_N30
\mouse1|OUTCNT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|OUTCNT~0_combout\ = (\mouse1|OUTCNT\(1) & (\mouse1|OUTCNT\(0) & (!\mouse1|OUTCNT\(3) & \mouse1|OUTCNT\(2)))) # (!\mouse1|OUTCNT\(1) & (((\mouse1|OUTCNT\(3) & !\mouse1|OUTCNT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|OUTCNT\(1),
	datab => \mouse1|OUTCNT\(0),
	datac => \mouse1|OUTCNT\(3),
	datad => \mouse1|OUTCNT\(2),
	combout => \mouse1|OUTCNT~0_combout\);

-- Location: FF_X36_Y17_N31
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

-- Location: LCCOMB_X36_Y17_N6
\mouse1|OUTCNT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|OUTCNT~2_combout\ = (\mouse1|OUTCNT\(3) & (!\mouse1|OUTCNT\(2) & (!\mouse1|OUTCNT\(1) & \mouse1|OUTCNT\(0)))) # (!\mouse1|OUTCNT\(3) & ((\mouse1|OUTCNT\(1) $ (\mouse1|OUTCNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|OUTCNT\(2),
	datab => \mouse1|OUTCNT\(3),
	datac => \mouse1|OUTCNT\(1),
	datad => \mouse1|OUTCNT\(0),
	combout => \mouse1|OUTCNT~2_combout\);

-- Location: FF_X36_Y17_N7
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

-- Location: LCCOMB_X36_Y17_N28
\mouse1|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|LessThan0~0_combout\ = (\mouse1|OUTCNT\(3) & ((\mouse1|OUTCNT\(1)) # (\mouse1|OUTCNT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|OUTCNT\(3),
	datab => \mouse1|OUTCNT\(1),
	datad => \mouse1|OUTCNT\(2),
	combout => \mouse1|LessThan0~0_combout\);

-- Location: LCCOMB_X36_Y17_N14
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

-- Location: FF_X36_Y17_N15
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

-- Location: LCCOMB_X32_Y17_N16
\mouse1|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|Selector3~0_combout\ = (\mouse1|mouse_state.LOAD_COMMAND2~q\) # ((\mouse1|mouse_state.WAIT_OUTPUT_READY~q\ & !\mouse1|output_ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|mouse_state.LOAD_COMMAND2~q\,
	datac => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \mouse1|output_ready~q\,
	combout => \mouse1|Selector3~0_combout\);

-- Location: FF_X32_Y17_N17
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

-- Location: FF_X35_Y17_N5
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

-- Location: LCCOMB_X35_Y17_N12
\mouse1|iready_set~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|iready_set~0_combout\ = (\mouse1|READ_CHAR~q\ & (((!\mouse1|LessThan1~0_combout\)))) # (!\mouse1|READ_CHAR~q\ & (\mouse_data~input_o\ & (\mouse1|iready_set~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse_data~input_o\,
	datab => \mouse1|READ_CHAR~q\,
	datac => \mouse1|iready_set~q\,
	datad => \mouse1|LessThan1~0_combout\,
	combout => \mouse1|iready_set~0_combout\);

-- Location: FF_X35_Y17_N13
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

-- Location: LCCOMB_X36_Y17_N22
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

-- Location: FF_X36_Y17_N23
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

-- Location: LCCOMB_X36_Y17_N12
\mouse1|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|Selector6~0_combout\ = (\mouse1|send_data~q\ & ((\mouse1|mouse_state.INPUT_PACKETS~q\) # (!\mouse1|mouse_state.INHIBIT_TRANS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|send_data~q\,
	datac => \mouse1|mouse_state.INPUT_PACKETS~q\,
	datad => \mouse1|mouse_state.INHIBIT_TRANS~q\,
	combout => \mouse1|Selector6~0_combout\);

-- Location: LCCOMB_X36_Y17_N24
\mouse1|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|Selector6~1_combout\ = (\mouse1|mouse_state.LOAD_COMMAND~q\) # ((\mouse1|mouse_state.LOAD_COMMAND2~q\) # (\mouse1|Selector6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|mouse_state.LOAD_COMMAND~q\,
	datac => \mouse1|mouse_state.LOAD_COMMAND2~q\,
	datad => \mouse1|Selector6~0_combout\,
	combout => \mouse1|Selector6~1_combout\);

-- Location: FF_X36_Y17_N25
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

-- Location: LCCOMB_X37_Y17_N24
\mouse1|MOUSE_DATA_BUF~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|MOUSE_DATA_BUF~0_combout\ = (\mouse1|mouse_state.WAIT_OUTPUT_READY~q\ & (!\mouse1|send_char~q\ & !\mouse1|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \mouse1|send_char~q\,
	datad => \mouse1|LessThan0~0_combout\,
	combout => \mouse1|MOUSE_DATA_BUF~0_combout\);

-- Location: FF_X37_Y17_N13
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
	ena => \mouse1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTOUT\(9));

-- Location: LCCOMB_X37_Y17_N30
\mouse1|SHIFTOUT[8]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|SHIFTOUT[8]~3_combout\ = !\mouse1|SHIFTOUT\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|SHIFTOUT\(9),
	combout => \mouse1|SHIFTOUT[8]~3_combout\);

-- Location: FF_X37_Y17_N31
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
	ena => \mouse1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTOUT\(8));

-- Location: LCCOMB_X37_Y17_N16
\mouse1|SHIFTOUT[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|SHIFTOUT[7]~feeder_combout\ = \mouse1|SHIFTOUT\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|SHIFTOUT\(8),
	combout => \mouse1|SHIFTOUT[7]~feeder_combout\);

-- Location: FF_X37_Y17_N17
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
	ena => \mouse1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTOUT\(7));

-- Location: LCCOMB_X37_Y17_N14
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

-- Location: FF_X37_Y17_N15
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
	ena => \mouse1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTOUT\(6));

-- Location: LCCOMB_X37_Y17_N0
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

-- Location: FF_X37_Y17_N1
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
	ena => \mouse1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTOUT\(5));

-- Location: LCCOMB_X37_Y17_N22
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

-- Location: FF_X37_Y17_N23
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
	ena => \mouse1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTOUT\(4));

-- Location: LCCOMB_X37_Y17_N20
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

-- Location: FF_X37_Y17_N21
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
	ena => \mouse1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTOUT\(3));

-- Location: LCCOMB_X37_Y17_N26
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

-- Location: FF_X37_Y17_N27
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
	ena => \mouse1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTOUT\(2));

-- Location: LCCOMB_X37_Y17_N28
\mouse1|SHIFTOUT[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|SHIFTOUT[1]~feeder_combout\ = \mouse1|SHIFTOUT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|SHIFTOUT\(2),
	combout => \mouse1|SHIFTOUT[1]~feeder_combout\);

-- Location: FF_X37_Y17_N29
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
	ena => \mouse1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTOUT\(1));

-- Location: FF_X37_Y17_N25
\mouse1|MOUSE_DATA_BUF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \mouse1|SHIFTOUT\(1),
	clrn => \mouse1|ALT_INV_send_data~q\,
	sload => VCC,
	ena => \mouse1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|MOUSE_DATA_BUF~q\);

-- Location: LCCOMB_X36_Y17_N16
\mouse1|WideOr4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|WideOr4~combout\ = (\mouse1|mouse_state.LOAD_COMMAND~q\) # ((\mouse1|mouse_state.LOAD_COMMAND2~q\) # (!\mouse1|mouse_state.INHIBIT_TRANS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|mouse_state.LOAD_COMMAND~q\,
	datab => \mouse1|mouse_state.INHIBIT_TRANS~q\,
	datac => \mouse1|mouse_state.LOAD_COMMAND2~q\,
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
	pll_compensation_delay => 5738,
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

-- Location: LCCOMB_X22_Y16_N0
\inst1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = \inst1|h_count\(0) $ (VCC)
-- \inst1|Add0~1\ = CARRY(\inst1|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(0),
	datad => VCC,
	combout => \inst1|Add0~0_combout\,
	cout => \inst1|Add0~1\);

-- Location: FF_X22_Y16_N1
\inst1|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(0));

-- Location: LCCOMB_X22_Y16_N2
\inst1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = (\inst1|h_count\(1) & (!\inst1|Add0~1\)) # (!\inst1|h_count\(1) & ((\inst1|Add0~1\) # (GND)))
-- \inst1|Add0~3\ = CARRY((!\inst1|Add0~1\) # (!\inst1|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(1),
	datad => VCC,
	cin => \inst1|Add0~1\,
	combout => \inst1|Add0~2_combout\,
	cout => \inst1|Add0~3\);

-- Location: FF_X22_Y16_N3
\inst1|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(1));

-- Location: LCCOMB_X22_Y16_N4
\inst1|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = (\inst1|h_count\(2) & (\inst1|Add0~3\ $ (GND))) # (!\inst1|h_count\(2) & (!\inst1|Add0~3\ & VCC))
-- \inst1|Add0~5\ = CARRY((\inst1|h_count\(2) & !\inst1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(2),
	datad => VCC,
	cin => \inst1|Add0~3\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: FF_X22_Y16_N5
\inst1|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(2));

-- Location: LCCOMB_X22_Y16_N6
\inst1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\inst1|h_count\(3) & (!\inst1|Add0~5\)) # (!\inst1|h_count\(3) & ((\inst1|Add0~5\) # (GND)))
-- \inst1|Add0~7\ = CARRY((!\inst1|Add0~5\) # (!\inst1|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(3),
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: LCCOMB_X22_Y16_N8
\inst1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = (\inst1|h_count\(4) & (\inst1|Add0~7\ $ (GND))) # (!\inst1|h_count\(4) & (!\inst1|Add0~7\ & VCC))
-- \inst1|Add0~9\ = CARRY((\inst1|h_count\(4) & !\inst1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(4),
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: FF_X22_Y16_N9
\inst1|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(4));

-- Location: LCCOMB_X22_Y16_N12
\inst1|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = (\inst1|h_count\(6) & (\inst1|Add0~11\ $ (GND))) # (!\inst1|h_count\(6) & (!\inst1|Add0~11\ & VCC))
-- \inst1|Add0~13\ = CARRY((\inst1|h_count\(6) & !\inst1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(6),
	datad => VCC,
	cin => \inst1|Add0~11\,
	combout => \inst1|Add0~12_combout\,
	cout => \inst1|Add0~13\);

-- Location: FF_X22_Y16_N13
\inst1|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(6));

-- Location: LCCOMB_X22_Y16_N14
\inst1|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = (\inst1|h_count\(7) & (!\inst1|Add0~13\)) # (!\inst1|h_count\(7) & ((\inst1|Add0~13\) # (GND)))
-- \inst1|Add0~15\ = CARRY((!\inst1|Add0~13\) # (!\inst1|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(7),
	datad => VCC,
	cin => \inst1|Add0~13\,
	combout => \inst1|Add0~14_combout\,
	cout => \inst1|Add0~15\);

-- Location: FF_X22_Y16_N15
\inst1|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(7));

-- Location: LCCOMB_X22_Y16_N16
\inst1|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~16_combout\ = (\inst1|h_count\(8) & (\inst1|Add0~15\ $ (GND))) # (!\inst1|h_count\(8) & (!\inst1|Add0~15\ & VCC))
-- \inst1|Add0~17\ = CARRY((\inst1|h_count\(8) & !\inst1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(8),
	datad => VCC,
	cin => \inst1|Add0~15\,
	combout => \inst1|Add0~16_combout\,
	cout => \inst1|Add0~17\);

-- Location: LCCOMB_X22_Y16_N18
\inst1|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = \inst1|Add0~17\ $ (\inst1|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|h_count\(9),
	cin => \inst1|Add0~17\,
	combout => \inst1|Add0~18_combout\);

-- Location: LCCOMB_X22_Y16_N24
\inst1|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|h_count~0_combout\ = (\inst1|Add0~18_combout\ & !\inst1|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~18_combout\,
	datad => \inst1|Equal0~2_combout\,
	combout => \inst1|h_count~0_combout\);

-- Location: FF_X22_Y16_N25
\inst1|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(9));

-- Location: LCCOMB_X23_Y16_N26
\inst1|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (\inst1|h_count\(8) & (\inst1|h_count\(2) & (!\inst1|h_count\(5) & !\inst1|h_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(8),
	datab => \inst1|h_count\(2),
	datac => \inst1|h_count\(5),
	datad => \inst1|h_count\(7),
	combout => \inst1|Equal0~1_combout\);

-- Location: FF_X22_Y16_N7
\inst1|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(3));

-- Location: LCCOMB_X23_Y16_N12
\inst1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (\inst1|h_count\(1) & (\inst1|h_count\(3) & (\inst1|h_count\(0) & \inst1|h_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(1),
	datab => \inst1|h_count\(3),
	datac => \inst1|h_count\(0),
	datad => \inst1|h_count\(4),
	combout => \inst1|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y16_N24
\inst1|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~2_combout\ = (!\inst1|h_count\(6) & (\inst1|h_count\(9) & (\inst1|Equal0~1_combout\ & \inst1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(6),
	datab => \inst1|h_count\(9),
	datac => \inst1|Equal0~1_combout\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y16_N28
\inst1|h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|h_count~2_combout\ = (\inst1|Add0~10_combout\ & !\inst1|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~10_combout\,
	datad => \inst1|Equal0~2_combout\,
	combout => \inst1|h_count~2_combout\);

-- Location: FF_X22_Y16_N29
\inst1|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(5));

-- Location: LCCOMB_X23_Y16_N0
\inst1|process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~10_combout\ = (\inst1|h_count\(4) & \inst1|h_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(4),
	datac => \inst1|h_count\(5),
	combout => \inst1|process_0~10_combout\);

-- Location: LCCOMB_X22_Y16_N26
\inst1|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|h_count~1_combout\ = (\inst1|Add0~16_combout\ & !\inst1|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~16_combout\,
	datad => \inst1|Equal0~2_combout\,
	combout => \inst1|h_count~1_combout\);

-- Location: FF_X22_Y16_N27
\inst1|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(8));

-- Location: LCCOMB_X23_Y16_N10
\inst1|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~9_combout\ = ((!\inst1|h_count\(2) & ((!\inst1|h_count\(1)) # (!\inst1|h_count\(0))))) # (!\inst1|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(0),
	datab => \inst1|h_count\(3),
	datac => \inst1|h_count\(2),
	datad => \inst1|h_count\(1),
	combout => \inst1|process_0~9_combout\);

-- Location: LCCOMB_X23_Y16_N30
\inst1|process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~11_combout\ = (!\inst1|h_count\(6) & (!\inst1|h_count\(8) & ((\inst1|process_0~9_combout\) # (!\inst1|process_0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(6),
	datab => \inst1|process_0~10_combout\,
	datac => \inst1|h_count\(8),
	datad => \inst1|process_0~9_combout\,
	combout => \inst1|process_0~11_combout\);

-- Location: LCCOMB_X24_Y16_N2
\inst1|process_0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~12_combout\ = (((!\inst1|h_count\(7) & !\inst1|h_count\(8))) # (!\inst1|h_count\(9))) # (!\inst1|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(9),
	datab => \inst1|h_count\(7),
	datac => \inst1|h_count\(8),
	datad => \inst1|h_count\(9),
	combout => \inst1|process_0~12_combout\);

-- Location: LCCOMB_X27_Y15_N6
\inst1|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~0_combout\ = \inst1|v_count\(0) $ (VCC)
-- \inst1|Add1~1\ = CARRY(\inst1|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(0),
	datad => VCC,
	combout => \inst1|Add1~0_combout\,
	cout => \inst1|Add1~1\);

-- Location: LCCOMB_X27_Y15_N0
\inst1|v_count~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count~7_combout\ = (\inst1|Add1~0_combout\ & ((\inst1|process_0~8_combout\) # ((\inst1|process_0~11_combout\) # (\inst1|process_0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~8_combout\,
	datab => \inst1|process_0~11_combout\,
	datac => \inst1|process_0~12_combout\,
	datad => \inst1|Add1~0_combout\,
	combout => \inst1|v_count~7_combout\);

-- Location: LCCOMB_X27_Y15_N30
\inst1|v_count[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[0]~1_combout\ = ((!\inst1|process_0~11_combout\ & (!\inst1|process_0~12_combout\ & !\inst1|process_0~8_combout\))) # (!\inst1|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal1~1_combout\,
	datab => \inst1|process_0~11_combout\,
	datac => \inst1|process_0~12_combout\,
	datad => \inst1|process_0~8_combout\,
	combout => \inst1|v_count[0]~1_combout\);

-- Location: FF_X27_Y15_N1
\inst1|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count~7_combout\,
	ena => \inst1|v_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(0));

-- Location: LCCOMB_X27_Y15_N12
\inst1|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~6_combout\ = (\inst1|v_count\(3) & (!\inst1|Add1~5\)) # (!\inst1|v_count\(3) & ((\inst1|Add1~5\) # (GND)))
-- \inst1|Add1~7\ = CARRY((!\inst1|Add1~5\) # (!\inst1|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(3),
	datad => VCC,
	cin => \inst1|Add1~5\,
	combout => \inst1|Add1~6_combout\,
	cout => \inst1|Add1~7\);

-- Location: LCCOMB_X27_Y15_N14
\inst1|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~8_combout\ = (\inst1|v_count\(4) & (\inst1|Add1~7\ $ (GND))) # (!\inst1|v_count\(4) & (!\inst1|Add1~7\ & VCC))
-- \inst1|Add1~9\ = CARRY((\inst1|v_count\(4) & !\inst1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(4),
	datad => VCC,
	cin => \inst1|Add1~7\,
	combout => \inst1|Add1~8_combout\,
	cout => \inst1|Add1~9\);

-- Location: LCCOMB_X26_Y15_N6
\inst1|v_count[4]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[4]~11_combout\ = (\inst1|v_count[0]~1_combout\ & (\inst1|Add1~8_combout\ & ((\inst1|v_count[4]~0_combout\)))) # (!\inst1|v_count[0]~1_combout\ & ((\inst1|v_count\(4)) # ((\inst1|Add1~8_combout\ & \inst1|v_count[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count[0]~1_combout\,
	datab => \inst1|Add1~8_combout\,
	datac => \inst1|v_count\(4),
	datad => \inst1|v_count[4]~0_combout\,
	combout => \inst1|v_count[4]~11_combout\);

-- Location: FF_X26_Y15_N7
\inst1|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(4));

-- Location: LCCOMB_X27_Y15_N16
\inst1|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~10_combout\ = (\inst1|v_count\(5) & (!\inst1|Add1~9\)) # (!\inst1|v_count\(5) & ((\inst1|Add1~9\) # (GND)))
-- \inst1|Add1~11\ = CARRY((!\inst1|Add1~9\) # (!\inst1|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(5),
	datad => VCC,
	cin => \inst1|Add1~9\,
	combout => \inst1|Add1~10_combout\,
	cout => \inst1|Add1~11\);

-- Location: LCCOMB_X27_Y15_N20
\inst1|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~14_combout\ = (\inst1|v_count\(7) & (!\inst1|Add1~13\)) # (!\inst1|v_count\(7) & ((\inst1|Add1~13\) # (GND)))
-- \inst1|Add1~15\ = CARRY((!\inst1|Add1~13\) # (!\inst1|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(7),
	datad => VCC,
	cin => \inst1|Add1~13\,
	combout => \inst1|Add1~14_combout\,
	cout => \inst1|Add1~15\);

-- Location: LCCOMB_X26_Y15_N28
\inst1|v_count[7]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[7]~5_combout\ = (\inst1|v_count[0]~1_combout\ & (\inst1|v_count[4]~0_combout\ & ((\inst1|Add1~14_combout\)))) # (!\inst1|v_count[0]~1_combout\ & ((\inst1|v_count\(7)) # ((\inst1|v_count[4]~0_combout\ & \inst1|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count[0]~1_combout\,
	datab => \inst1|v_count[4]~0_combout\,
	datac => \inst1|v_count\(7),
	datad => \inst1|Add1~14_combout\,
	combout => \inst1|v_count[7]~5_combout\);

-- Location: FF_X26_Y15_N29
\inst1|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(7));

-- Location: LCCOMB_X27_Y15_N22
\inst1|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~16_combout\ = (\inst1|v_count\(8) & (\inst1|Add1~15\ $ (GND))) # (!\inst1|v_count\(8) & (!\inst1|Add1~15\ & VCC))
-- \inst1|Add1~17\ = CARRY((\inst1|v_count\(8) & !\inst1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(8),
	datad => VCC,
	cin => \inst1|Add1~15\,
	combout => \inst1|Add1~16_combout\,
	cout => \inst1|Add1~17\);

-- Location: LCCOMB_X26_Y15_N14
\inst1|v_count[8]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[8]~6_combout\ = (\inst1|v_count[0]~1_combout\ & (\inst1|Add1~16_combout\ & ((\inst1|v_count[4]~0_combout\)))) # (!\inst1|v_count[0]~1_combout\ & ((\inst1|v_count\(8)) # ((\inst1|Add1~16_combout\ & \inst1|v_count[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count[0]~1_combout\,
	datab => \inst1|Add1~16_combout\,
	datac => \inst1|v_count\(8),
	datad => \inst1|v_count[4]~0_combout\,
	combout => \inst1|v_count[8]~6_combout\);

-- Location: FF_X26_Y15_N15
\inst1|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(8));

-- Location: LCCOMB_X26_Y15_N16
\inst1|v_count[3]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[3]~10_combout\ = (\inst1|v_count[0]~1_combout\ & (\inst1|Add1~6_combout\ & ((\inst1|v_count[4]~0_combout\)))) # (!\inst1|v_count[0]~1_combout\ & ((\inst1|v_count\(3)) # ((\inst1|Add1~6_combout\ & \inst1|v_count[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count[0]~1_combout\,
	datab => \inst1|Add1~6_combout\,
	datac => \inst1|v_count\(3),
	datad => \inst1|v_count[4]~0_combout\,
	combout => \inst1|v_count[3]~10_combout\);

-- Location: FF_X26_Y15_N17
\inst1|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(3));

-- Location: LCCOMB_X26_Y15_N0
\inst1|v_count[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[5]~3_combout\ = (\inst1|v_count[0]~1_combout\ & (\inst1|v_count[4]~0_combout\ & ((\inst1|Add1~10_combout\)))) # (!\inst1|v_count[0]~1_combout\ & ((\inst1|v_count\(5)) # ((\inst1|v_count[4]~0_combout\ & \inst1|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count[0]~1_combout\,
	datab => \inst1|v_count[4]~0_combout\,
	datac => \inst1|v_count\(5),
	datad => \inst1|Add1~10_combout\,
	combout => \inst1|v_count[5]~3_combout\);

-- Location: FF_X26_Y15_N1
\inst1|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(5));

-- Location: LCCOMB_X26_Y15_N4
\inst1|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~7_combout\ = (!\inst1|v_count\(5) & (!\inst1|v_count\(4) & ((!\inst1|v_count\(3)) # (!\inst1|v_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(2),
	datab => \inst1|v_count\(3),
	datac => \inst1|v_count\(5),
	datad => \inst1|v_count\(4),
	combout => \inst1|process_0~7_combout\);

-- Location: LCCOMB_X26_Y15_N2
\inst1|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~8_combout\ = (!\inst1|v_count\(6) & (!\inst1|v_count\(8) & (\inst1|process_0~7_combout\ & !\inst1|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(6),
	datab => \inst1|v_count\(8),
	datac => \inst1|process_0~7_combout\,
	datad => \inst1|v_count\(7),
	combout => \inst1|process_0~8_combout\);

-- Location: LCCOMB_X27_Y15_N28
\inst1|v_count[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[4]~0_combout\ = (!\inst1|Equal1~1_combout\ & ((\inst1|process_0~11_combout\) # ((\inst1|process_0~12_combout\) # (\inst1|process_0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal1~1_combout\,
	datab => \inst1|process_0~11_combout\,
	datac => \inst1|process_0~12_combout\,
	datad => \inst1|process_0~8_combout\,
	combout => \inst1|v_count[4]~0_combout\);

-- Location: LCCOMB_X27_Y15_N4
\inst1|v_count[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[2]~9_combout\ = (\inst1|Add1~4_combout\ & ((\inst1|v_count[4]~0_combout\) # ((\inst1|v_count\(2) & !\inst1|v_count[0]~1_combout\)))) # (!\inst1|Add1~4_combout\ & (((\inst1|v_count\(2) & !\inst1|v_count[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~4_combout\,
	datab => \inst1|v_count[4]~0_combout\,
	datac => \inst1|v_count\(2),
	datad => \inst1|v_count[0]~1_combout\,
	combout => \inst1|v_count[2]~9_combout\);

-- Location: FF_X27_Y15_N5
\inst1|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(2));

-- Location: LCCOMB_X26_Y15_N18
\inst1|pixel_row[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pixel_row[2]~feeder_combout\ = \inst1|v_count\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|v_count\(2),
	combout => \inst1|pixel_row[2]~feeder_combout\);

-- Location: LCCOMB_X26_Y15_N8
\inst1|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan7~0_combout\ = (\inst1|v_count\(6) & (\inst1|v_count\(5) & (\inst1|v_count\(8) & \inst1|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(6),
	datab => \inst1|v_count\(5),
	datac => \inst1|v_count\(8),
	datad => \inst1|v_count\(7),
	combout => \inst1|LessThan7~0_combout\);

-- Location: LCCOMB_X26_Y15_N10
\inst1|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan7~1_combout\ = (!\inst1|v_count\(9) & !\inst1|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(9),
	datac => \inst1|LessThan7~0_combout\,
	combout => \inst1|LessThan7~1_combout\);

-- Location: FF_X26_Y15_N19
\inst1|pixel_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|pixel_row[2]~feeder_combout\,
	ena => \inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_row\(2));

-- Location: LCCOMB_X26_Y15_N24
\inst1|pixel_row[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pixel_row[3]~feeder_combout\ = \inst1|v_count\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|v_count\(3),
	combout => \inst1|pixel_row[3]~feeder_combout\);

-- Location: FF_X26_Y15_N25
\inst1|pixel_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|pixel_row[3]~feeder_combout\,
	ena => \inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_row\(3));

-- Location: LCCOMB_X26_Y15_N30
\inst1|pixel_row[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pixel_row[4]~feeder_combout\ = \inst1|v_count\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|v_count\(4),
	combout => \inst1|pixel_row[4]~feeder_combout\);

-- Location: FF_X26_Y15_N31
\inst1|pixel_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|pixel_row[4]~feeder_combout\,
	ena => \inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_row\(4));

-- Location: LCCOMB_X23_Y16_N16
\inst1|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~0_combout\ = ((!\inst1|h_count\(7) & !\inst1|h_count\(8))) # (!\inst1|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(7),
	datac => \inst1|h_count\(8),
	datad => \inst1|h_count\(9),
	combout => \inst1|process_0~0_combout\);

-- Location: FF_X23_Y16_N5
\inst1|pixel_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count\(3),
	sload => VCC,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_column\(3));

-- Location: LCCOMB_X24_Y16_N20
\inst4|char_data|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|char_data|Mux0~3_combout\ = (\inst4|char_data|Mux0~2_combout\ & (((\inst4|char_data|altsyncram_component|auto_generated|q_a\(4)) # (!\inst1|pixel_column\(3))))) # (!\inst4|char_data|Mux0~2_combout\ & 
-- (\inst4|char_data|altsyncram_component|auto_generated|q_a\(5) & (\inst1|pixel_column\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|char_data|Mux0~2_combout\,
	datab => \inst4|char_data|altsyncram_component|auto_generated|q_a\(5),
	datac => \inst1|pixel_column\(3),
	datad => \inst4|char_data|altsyncram_component|auto_generated|q_a\(4),
	combout => \inst4|char_data|Mux0~3_combout\);

-- Location: LCCOMB_X24_Y16_N0
\inst1|pixel_column[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pixel_column[2]~feeder_combout\ = \inst1|h_count\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|h_count\(2),
	combout => \inst1|pixel_column[2]~feeder_combout\);

-- Location: FF_X24_Y16_N1
\inst1|pixel_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|pixel_column[2]~feeder_combout\,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_column\(2));

-- Location: LCCOMB_X24_Y16_N4
\inst4|char_data|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|char_data|Mux0~1_combout\ = (\inst4|char_data|Mux0~0_combout\ & (((\inst4|char_data|altsyncram_component|auto_generated|q_a\(0))) # (!\inst1|pixel_column\(2)))) # (!\inst4|char_data|Mux0~0_combout\ & (\inst1|pixel_column\(2) & 
-- (\inst4|char_data|altsyncram_component|auto_generated|q_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|char_data|Mux0~0_combout\,
	datab => \inst1|pixel_column\(2),
	datac => \inst4|char_data|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst4|char_data|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst4|char_data|Mux0~1_combout\);

-- Location: FF_X24_Y16_N19
\inst1|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|video_on_h~q\);

-- Location: FF_X26_Y15_N11
\inst1|video_on_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|video_on_v~q\);

-- Location: LCCOMB_X24_Y16_N18
\inst1|blue_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|blue_out~0_combout\ = (\inst1|video_on_h~q\ & \inst1|video_on_v~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|video_on_h~q\,
	datad => \inst1|video_on_v~q\,
	combout => \inst1|blue_out~0_combout\);

-- Location: LCCOMB_X24_Y16_N8
\inst1|blue_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|blue_out~1_combout\ = (\inst1|blue_out~0_combout\ & ((\inst1|pixel_column\(4) & ((\inst4|char_data|Mux0~1_combout\))) # (!\inst1|pixel_column\(4) & (\inst4|char_data|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(4),
	datab => \inst4|char_data|Mux0~3_combout\,
	datac => \inst4|char_data|Mux0~1_combout\,
	datad => \inst1|blue_out~0_combout\,
	combout => \inst1|blue_out~1_combout\);

-- Location: FF_X24_Y16_N9
\inst1|blue_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|blue_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|blue_out~q\);

-- Location: LCCOMB_X23_Y16_N20
\inst1|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~3_combout\ = (\inst1|h_count\(4) & ((\inst1|process_0~2_combout\) # (\inst1|h_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~2_combout\,
	datab => \inst1|h_count\(4),
	datac => \inst1|h_count\(2),
	combout => \inst1|process_0~3_combout\);

-- Location: LCCOMB_X24_Y16_N12
\inst1|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~1_combout\ = (\inst1|h_count\(7) & (!\inst1|h_count\(8) & \inst1|h_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(7),
	datac => \inst1|h_count\(8),
	datad => \inst1|h_count\(9),
	combout => \inst1|process_0~1_combout\);

-- Location: LCCOMB_X24_Y16_N10
\inst1|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~4_combout\ = ((\inst1|h_count\(5) & (\inst1|process_0~3_combout\ & \inst1|h_count\(6))) # (!\inst1|h_count\(5) & (!\inst1|process_0~3_combout\ & !\inst1|h_count\(6)))) # (!\inst1|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(5),
	datab => \inst1|process_0~3_combout\,
	datac => \inst1|h_count\(6),
	datad => \inst1|process_0~1_combout\,
	combout => \inst1|process_0~4_combout\);

-- Location: FF_X24_Y16_N11
\inst1|horiz_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|horiz_sync~q\);

-- Location: LCCOMB_X26_Y16_N24
\inst1|horiz_sync_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|horiz_sync_out~feeder_combout\ = \inst1|horiz_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|horiz_sync~q\,
	combout => \inst1|horiz_sync_out~feeder_combout\);

-- Location: FF_X26_Y16_N25
\inst1|horiz_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|horiz_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|horiz_sync_out~q\);

-- Location: LCCOMB_X27_Y15_N24
\inst1|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~18_combout\ = \inst1|Add1~17\ $ (\inst1|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|v_count\(9),
	cin => \inst1|Add1~17\,
	combout => \inst1|Add1~18_combout\);

-- Location: LCCOMB_X26_Y15_N22
\inst1|v_count[9]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[9]~2_combout\ = (\inst1|v_count[0]~1_combout\ & (\inst1|Add1~18_combout\ & ((\inst1|v_count[4]~0_combout\)))) # (!\inst1|v_count[0]~1_combout\ & ((\inst1|v_count\(9)) # ((\inst1|Add1~18_combout\ & \inst1|v_count[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count[0]~1_combout\,
	datab => \inst1|Add1~18_combout\,
	datac => \inst1|v_count\(9),
	datad => \inst1|v_count[4]~0_combout\,
	combout => \inst1|v_count[9]~2_combout\);

-- Location: FF_X26_Y15_N23
\inst1|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(9));

-- Location: LCCOMB_X27_Y15_N2
\inst1|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~5_combout\ = ((\inst1|v_count\(1) $ (!\inst1|v_count\(0))) # (!\inst1|v_count\(3))) # (!\inst1|v_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(1),
	datab => \inst1|v_count\(2),
	datac => \inst1|v_count\(3),
	datad => \inst1|v_count\(0),
	combout => \inst1|process_0~5_combout\);

-- Location: LCCOMB_X26_Y15_N20
\inst1|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~6_combout\ = (\inst1|v_count\(4)) # (((\inst1|v_count\(9)) # (\inst1|process_0~5_combout\)) # (!\inst1|LessThan7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(4),
	datab => \inst1|LessThan7~0_combout\,
	datac => \inst1|v_count\(9),
	datad => \inst1|process_0~5_combout\,
	combout => \inst1|process_0~6_combout\);

-- Location: FF_X26_Y15_N21
\inst1|vert_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|vert_sync~q\);

-- Location: LCCOMB_X26_Y15_N12
\inst1|vert_sync_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|vert_sync_out~feeder_combout\ = \inst1|vert_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|vert_sync~q\,
	combout => \inst1|vert_sync_out~feeder_combout\);

-- Location: FF_X26_Y15_N13
\inst1|vert_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|vert_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|vert_sync_out~q\);

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

-- Location: LCCOMB_X35_Y17_N26
\mouse1|SHIFTIN[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|SHIFTIN[8]~feeder_combout\ = \mouse_data~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse_data~input_o\,
	combout => \mouse1|SHIFTIN[8]~feeder_combout\);

-- Location: LCCOMB_X35_Y17_N22
\mouse1|SHIFTIN[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|SHIFTIN[0]~2_combout\ = (!\mouse1|mouse_state.WAIT_OUTPUT_READY~q\ & (\mouse1|READ_CHAR~q\ & \mouse1|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \mouse1|READ_CHAR~q\,
	datad => \mouse1|LessThan1~0_combout\,
	combout => \mouse1|SHIFTIN[0]~2_combout\);

-- Location: FF_X35_Y17_N27
\mouse1|SHIFTIN[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|SHIFTIN[8]~feeder_combout\,
	ena => \mouse1|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTIN\(8));

-- Location: LCCOMB_X35_Y17_N28
\mouse1|SHIFTIN[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|SHIFTIN[7]~feeder_combout\ = \mouse1|SHIFTIN\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|SHIFTIN\(8),
	combout => \mouse1|SHIFTIN[7]~feeder_combout\);

-- Location: FF_X35_Y17_N29
\mouse1|SHIFTIN[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|SHIFTIN[7]~feeder_combout\,
	ena => \mouse1|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTIN\(7));

-- Location: LCCOMB_X35_Y17_N8
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

-- Location: FF_X35_Y17_N9
\mouse1|SHIFTIN[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|SHIFTIN[6]~feeder_combout\,
	ena => \mouse1|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTIN\(6));

-- Location: LCCOMB_X35_Y17_N6
\mouse1|SHIFTIN[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|SHIFTIN[5]~feeder_combout\ = \mouse1|SHIFTIN\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|SHIFTIN\(6),
	combout => \mouse1|SHIFTIN[5]~feeder_combout\);

-- Location: FF_X35_Y17_N7
\mouse1|SHIFTIN[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|SHIFTIN[5]~feeder_combout\,
	ena => \mouse1|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTIN\(5));

-- Location: LCCOMB_X35_Y17_N24
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

-- Location: FF_X35_Y17_N25
\mouse1|SHIFTIN[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|SHIFTIN[4]~feeder_combout\,
	ena => \mouse1|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTIN\(4));

-- Location: LCCOMB_X35_Y17_N10
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

-- Location: FF_X35_Y17_N11
\mouse1|SHIFTIN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|SHIFTIN[3]~feeder_combout\,
	ena => \mouse1|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTIN\(3));

-- Location: LCCOMB_X35_Y17_N30
\mouse1|SHIFTIN[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|SHIFTIN[2]~feeder_combout\ = \mouse1|SHIFTIN\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|SHIFTIN\(3),
	combout => \mouse1|SHIFTIN[2]~feeder_combout\);

-- Location: FF_X35_Y17_N31
\mouse1|SHIFTIN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|SHIFTIN[2]~feeder_combout\,
	ena => \mouse1|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTIN\(2));

-- Location: LCCOMB_X35_Y17_N20
\mouse1|SHIFTIN[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|SHIFTIN[1]~feeder_combout\ = \mouse1|SHIFTIN\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|SHIFTIN\(2),
	combout => \mouse1|SHIFTIN[1]~feeder_combout\);

-- Location: FF_X35_Y17_N21
\mouse1|SHIFTIN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|SHIFTIN[1]~feeder_combout\,
	ena => \mouse1|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTIN\(1));

-- Location: FF_X35_Y17_N23
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
	ena => \mouse1|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTIN\(0));

-- Location: LCCOMB_X33_Y17_N16
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

-- Location: LCCOMB_X28_Y17_N30
\mouse1|PACKET_COUNT[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_COUNT[0]~feeder_combout\ = \mouse1|PACKET_CHAR1[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|PACKET_CHAR1[0]~0_combout\,
	combout => \mouse1|PACKET_COUNT[0]~feeder_combout\);

-- Location: LCCOMB_X33_Y17_N28
\mouse1|PACKET_CHAR2[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR2[7]~0_combout\ = (!\mouse1|mouse_state.WAIT_OUTPUT_READY~q\ & (\mouse1|READ_CHAR~q\ & !\mouse1|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \mouse1|READ_CHAR~q\,
	datad => \mouse1|LessThan1~0_combout\,
	combout => \mouse1|PACKET_CHAR2[7]~0_combout\);

-- Location: FF_X28_Y17_N31
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

-- Location: LCCOMB_X28_Y17_N18
\mouse1|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|Add3~0_combout\ = \mouse1|PACKET_COUNT\(0) $ (\mouse1|PACKET_COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|PACKET_COUNT\(0),
	datad => \mouse1|PACKET_COUNT\(1),
	combout => \mouse1|Add3~0_combout\);

-- Location: LCCOMB_X28_Y17_N16
\mouse1|PACKET_COUNT[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_COUNT[1]~feeder_combout\ = \mouse1|Add3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|Add3~0_combout\,
	combout => \mouse1|PACKET_COUNT[1]~feeder_combout\);

-- Location: FF_X28_Y17_N17
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

-- Location: LCCOMB_X28_Y17_N8
\mouse1|PACKET_CHAR1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR1[0]~0_combout\ = (\mouse1|PACKET_COUNT\(1)) # (!\mouse1|PACKET_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|PACKET_COUNT\(0),
	datad => \mouse1|PACKET_COUNT\(1),
	combout => \mouse1|PACKET_CHAR1[0]~0_combout\);

-- Location: LCCOMB_X33_Y17_N26
\mouse1|PACKET_CHAR1[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR1[0]~1_combout\ = (!\mouse1|mouse_state.WAIT_OUTPUT_READY~q\ & (!\mouse1|LessThan1~0_combout\ & (\mouse1|READ_CHAR~q\ & !\mouse1|PACKET_CHAR1[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \mouse1|LessThan1~0_combout\,
	datac => \mouse1|READ_CHAR~q\,
	datad => \mouse1|PACKET_CHAR1[0]~0_combout\,
	combout => \mouse1|PACKET_CHAR1[0]~1_combout\);

-- Location: FF_X33_Y17_N17
\mouse1|PACKET_CHAR1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_CHAR1[0]~feeder_combout\,
	ena => \mouse1|PACKET_CHAR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_CHAR1\(0));

-- Location: LCCOMB_X30_Y17_N28
\mouse1|left_button~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|left_button~feeder_combout\ = \mouse1|PACKET_CHAR1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|PACKET_CHAR1\(0),
	combout => \mouse1|left_button~feeder_combout\);

-- Location: LCCOMB_X28_Y17_N24
\mouse1|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|Equal4~0_combout\ = (!\mouse1|PACKET_COUNT\(1)) # (!\mouse1|PACKET_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|PACKET_COUNT\(0),
	datad => \mouse1|PACKET_COUNT\(1),
	combout => \mouse1|Equal4~0_combout\);

-- Location: LCCOMB_X30_Y17_N4
\mouse1|left_button~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|left_button~0_combout\ = (!\mouse1|mouse_state.WAIT_OUTPUT_READY~q\ & (\mouse1|READ_CHAR~q\ & (!\mouse1|Equal4~0_combout\ & !\mouse1|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \mouse1|READ_CHAR~q\,
	datac => \mouse1|Equal4~0_combout\,
	datad => \mouse1|LessThan1~0_combout\,
	combout => \mouse1|left_button~0_combout\);

-- Location: FF_X30_Y17_N29
\mouse1|left_button\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|left_button~feeder_combout\,
	ena => \mouse1|left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|left_button~q\);

-- Location: LCCOMB_X33_Y17_N20
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

-- Location: FF_X33_Y17_N21
\mouse1|PACKET_CHAR1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_CHAR1[1]~feeder_combout\,
	ena => \mouse1|PACKET_CHAR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_CHAR1\(1));

-- Location: LCCOMB_X30_Y17_N18
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

-- Location: FF_X30_Y17_N19
\mouse1|right_button\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|right_button~feeder_combout\,
	ena => \mouse1|left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|right_button~q\);

-- Location: LCCOMB_X32_Y17_N0
\mouse1|PACKET_CHAR2[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR2[4]~feeder_combout\ = \mouse1|SHIFTIN\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|SHIFTIN\(4),
	combout => \mouse1|PACKET_CHAR2[4]~feeder_combout\);

-- Location: LCCOMB_X28_Y17_N20
\mouse1|PACKET_CHAR2[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR2[7]~1_combout\ = (!\mouse1|PACKET_COUNT\(0) & \mouse1|PACKET_COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|PACKET_COUNT\(0),
	datad => \mouse1|PACKET_COUNT\(1),
	combout => \mouse1|PACKET_CHAR2[7]~1_combout\);

-- Location: LCCOMB_X32_Y17_N12
\mouse1|PACKET_CHAR2[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR2[7]~2_combout\ = (!\mouse1|mouse_state.WAIT_OUTPUT_READY~q\ & (\mouse1|READ_CHAR~q\ & (\mouse1|PACKET_CHAR2[7]~1_combout\ & !\mouse1|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \mouse1|READ_CHAR~q\,
	datac => \mouse1|PACKET_CHAR2[7]~1_combout\,
	datad => \mouse1|LessThan1~0_combout\,
	combout => \mouse1|PACKET_CHAR2[7]~2_combout\);

-- Location: FF_X32_Y17_N1
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

-- Location: LCCOMB_X28_Y17_N22
\mouse1|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|Equal3~0_combout\ = (\mouse1|PACKET_COUNT\(0)) # (\mouse1|PACKET_COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|PACKET_COUNT\(0),
	datad => \mouse1|PACKET_COUNT\(1),
	combout => \mouse1|Equal3~0_combout\);

-- Location: LCCOMB_X32_Y18_N24
\mouse1|new_cursor_column[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_column[8]~26_combout\ = ((\mouse1|PACKET_CHAR2\(7) $ (\mouse1|cursor_column\(8) $ (!\mouse1|new_cursor_column[7]~25\)))) # (GND)
-- \mouse1|new_cursor_column[8]~27\ = CARRY((\mouse1|PACKET_CHAR2\(7) & ((\mouse1|cursor_column\(8)) # (!\mouse1|new_cursor_column[7]~25\))) # (!\mouse1|PACKET_CHAR2\(7) & (\mouse1|cursor_column\(8) & !\mouse1|new_cursor_column[7]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|PACKET_CHAR2\(7),
	datab => \mouse1|cursor_column\(8),
	datad => VCC,
	cin => \mouse1|new_cursor_column[7]~25\,
	combout => \mouse1|new_cursor_column[8]~26_combout\,
	cout => \mouse1|new_cursor_column[8]~27\);

-- Location: LCCOMB_X32_Y18_N26
\mouse1|new_cursor_column[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_column[9]~28_combout\ = \mouse1|PACKET_CHAR2\(7) $ (\mouse1|new_cursor_column[8]~27\ $ (\mouse1|cursor_column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|PACKET_CHAR2\(7),
	datad => \mouse1|cursor_column\(9),
	cin => \mouse1|new_cursor_column[8]~27\,
	combout => \mouse1|new_cursor_column[9]~28_combout\);

-- Location: LCCOMB_X32_Y18_N0
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

-- Location: LCCOMB_X32_Y17_N10
\mouse1|new_cursor_column[9]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_column[9]~30_combout\ = (!\mouse1|mouse_state.WAIT_OUTPUT_READY~q\ & (!\mouse1|Add3~0_combout\ & (\mouse1|READ_CHAR~q\ & !\mouse1|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \mouse1|Add3~0_combout\,
	datac => \mouse1|READ_CHAR~q\,
	datad => \mouse1|LessThan1~0_combout\,
	combout => \mouse1|new_cursor_column[9]~30_combout\);

-- Location: FF_X32_Y18_N27
\mouse1|new_cursor_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|new_cursor_column[9]~28_combout\,
	asdata => \~GND~combout\,
	sload => \mouse1|Equal4~0_combout\,
	ena => \mouse1|new_cursor_column[9]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(9));

-- Location: LCCOMB_X32_Y18_N16
\mouse1|new_cursor_column[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_column[4]~18_combout\ = ((\mouse1|cursor_column\(4) $ (\mouse1|PACKET_CHAR2\(4) $ (!\mouse1|new_cursor_column[3]~17\)))) # (GND)
-- \mouse1|new_cursor_column[4]~19\ = CARRY((\mouse1|cursor_column\(4) & ((\mouse1|PACKET_CHAR2\(4)) # (!\mouse1|new_cursor_column[3]~17\))) # (!\mouse1|cursor_column\(4) & (\mouse1|PACKET_CHAR2\(4) & !\mouse1|new_cursor_column[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(4),
	datab => \mouse1|PACKET_CHAR2\(4),
	datad => VCC,
	cin => \mouse1|new_cursor_column[3]~17\,
	combout => \mouse1|new_cursor_column[4]~18_combout\,
	cout => \mouse1|new_cursor_column[4]~19\);

-- Location: FF_X32_Y18_N17
\mouse1|new_cursor_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|new_cursor_column[4]~18_combout\,
	asdata => \~GND~combout\,
	sload => \mouse1|Equal4~0_combout\,
	ena => \mouse1|new_cursor_column[9]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(4));

-- Location: LCCOMB_X33_Y18_N0
\mouse1|cursor_column~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~14_combout\ = (\mouse1|new_cursor_column\(2) & \mouse1|cursor_column[0]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_column\(2),
	datad => \mouse1|cursor_column[0]~6_combout\,
	combout => \mouse1|cursor_column~14_combout\);

-- Location: LCCOMB_X32_Y17_N26
\mouse1|cursor_column[9]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column[9]~7_combout\ = (!\mouse1|mouse_state.WAIT_OUTPUT_READY~q\ & (\mouse1|READ_CHAR~q\ & (!\mouse1|PACKET_COUNT\(1) & !\mouse1|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \mouse1|READ_CHAR~q\,
	datac => \mouse1|PACKET_COUNT\(1),
	datad => \mouse1|LessThan1~0_combout\,
	combout => \mouse1|cursor_column[9]~7_combout\);

-- Location: FF_X33_Y18_N1
\mouse1|cursor_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_column~14_combout\,
	ena => \mouse1|cursor_column[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_column\(2));

-- Location: LCCOMB_X33_Y18_N18
\mouse1|cursor_column~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~15_combout\ = (\mouse1|new_cursor_column\(1) & \mouse1|cursor_column[0]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_column\(1),
	datad => \mouse1|cursor_column[0]~6_combout\,
	combout => \mouse1|cursor_column~15_combout\);

-- Location: FF_X33_Y18_N19
\mouse1|cursor_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_column~15_combout\,
	ena => \mouse1|cursor_column[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_column\(1));

-- Location: LCCOMB_X33_Y18_N12
\mouse1|cursor_column~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~16_combout\ = (\mouse1|new_cursor_column\(0) & \mouse1|cursor_column[0]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_column\(0),
	datad => \mouse1|cursor_column[0]~6_combout\,
	combout => \mouse1|cursor_column~16_combout\);

-- Location: FF_X33_Y18_N13
\mouse1|cursor_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_column~16_combout\,
	ena => \mouse1|cursor_column[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_column\(0));

-- Location: LCCOMB_X32_Y18_N8
\mouse1|new_cursor_column[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_column[0]~10_combout\ = (\mouse1|PACKET_CHAR2\(0) & (\mouse1|cursor_column\(0) $ (VCC))) # (!\mouse1|PACKET_CHAR2\(0) & (\mouse1|cursor_column\(0) & VCC))
-- \mouse1|new_cursor_column[0]~11\ = CARRY((\mouse1|PACKET_CHAR2\(0) & \mouse1|cursor_column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|PACKET_CHAR2\(0),
	datab => \mouse1|cursor_column\(0),
	datad => VCC,
	combout => \mouse1|new_cursor_column[0]~10_combout\,
	cout => \mouse1|new_cursor_column[0]~11\);

-- Location: LCCOMB_X32_Y18_N10
\mouse1|new_cursor_column[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_column[1]~12_combout\ = (\mouse1|PACKET_CHAR2\(1) & ((\mouse1|cursor_column\(1) & (\mouse1|new_cursor_column[0]~11\ & VCC)) # (!\mouse1|cursor_column\(1) & (!\mouse1|new_cursor_column[0]~11\)))) # (!\mouse1|PACKET_CHAR2\(1) & 
-- ((\mouse1|cursor_column\(1) & (!\mouse1|new_cursor_column[0]~11\)) # (!\mouse1|cursor_column\(1) & ((\mouse1|new_cursor_column[0]~11\) # (GND)))))
-- \mouse1|new_cursor_column[1]~13\ = CARRY((\mouse1|PACKET_CHAR2\(1) & (!\mouse1|cursor_column\(1) & !\mouse1|new_cursor_column[0]~11\)) # (!\mouse1|PACKET_CHAR2\(1) & ((!\mouse1|new_cursor_column[0]~11\) # (!\mouse1|cursor_column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|PACKET_CHAR2\(1),
	datab => \mouse1|cursor_column\(1),
	datad => VCC,
	cin => \mouse1|new_cursor_column[0]~11\,
	combout => \mouse1|new_cursor_column[1]~12_combout\,
	cout => \mouse1|new_cursor_column[1]~13\);

-- Location: LCCOMB_X32_Y18_N14
\mouse1|new_cursor_column[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_column[3]~16_combout\ = (\mouse1|PACKET_CHAR2\(3) & ((\mouse1|cursor_column\(3) & (\mouse1|new_cursor_column[2]~15\ & VCC)) # (!\mouse1|cursor_column\(3) & (!\mouse1|new_cursor_column[2]~15\)))) # (!\mouse1|PACKET_CHAR2\(3) & 
-- ((\mouse1|cursor_column\(3) & (!\mouse1|new_cursor_column[2]~15\)) # (!\mouse1|cursor_column\(3) & ((\mouse1|new_cursor_column[2]~15\) # (GND)))))
-- \mouse1|new_cursor_column[3]~17\ = CARRY((\mouse1|PACKET_CHAR2\(3) & (!\mouse1|cursor_column\(3) & !\mouse1|new_cursor_column[2]~15\)) # (!\mouse1|PACKET_CHAR2\(3) & ((!\mouse1|new_cursor_column[2]~15\) # (!\mouse1|cursor_column\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|PACKET_CHAR2\(3),
	datab => \mouse1|cursor_column\(3),
	datad => VCC,
	cin => \mouse1|new_cursor_column[2]~15\,
	combout => \mouse1|new_cursor_column[3]~16_combout\,
	cout => \mouse1|new_cursor_column[3]~17\);

-- Location: FF_X32_Y18_N15
\mouse1|new_cursor_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|new_cursor_column[3]~16_combout\,
	asdata => \~GND~combout\,
	sload => \mouse1|Equal4~0_combout\,
	ena => \mouse1|new_cursor_column[9]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(3));

-- Location: FF_X32_Y18_N11
\mouse1|new_cursor_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|new_cursor_column[1]~12_combout\,
	asdata => \~GND~combout\,
	sload => \mouse1|Equal4~0_combout\,
	ena => \mouse1|new_cursor_column[9]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(1));

-- Location: LCCOMB_X32_Y18_N2
\mouse1|RECV_UART~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|RECV_UART~0_combout\ = (!\mouse1|new_cursor_column\(2) & (!\mouse1|new_cursor_column\(3) & (!\mouse1|new_cursor_column\(1) & !\mouse1|new_cursor_column\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_column\(2),
	datab => \mouse1|new_cursor_column\(3),
	datac => \mouse1|new_cursor_column\(1),
	datad => \mouse1|new_cursor_column\(6),
	combout => \mouse1|RECV_UART~0_combout\);

-- Location: LCCOMB_X32_Y18_N6
\mouse1|RECV_UART~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|RECV_UART~1_combout\ = (!\mouse1|new_cursor_column\(5) & (!\mouse1|new_cursor_column\(4) & \mouse1|RECV_UART~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|new_cursor_column\(5),
	datac => \mouse1|new_cursor_column\(4),
	datad => \mouse1|RECV_UART~0_combout\,
	combout => \mouse1|RECV_UART~1_combout\);

-- Location: FF_X32_Y18_N9
\mouse1|new_cursor_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|new_cursor_column[0]~10_combout\,
	asdata => \~GND~combout\,
	sload => \mouse1|Equal4~0_combout\,
	ena => \mouse1|new_cursor_column[9]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(0));

-- Location: LCCOMB_X32_Y18_N28
\mouse1|LessThan9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|LessThan9~0_combout\ = (\mouse1|new_cursor_column\(4)) # ((\mouse1|new_cursor_column\(5)) # ((\mouse1|new_cursor_column\(0)) # (!\mouse1|RECV_UART~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_column\(4),
	datab => \mouse1|new_cursor_column\(5),
	datac => \mouse1|new_cursor_column\(0),
	datad => \mouse1|RECV_UART~0_combout\,
	combout => \mouse1|LessThan9~0_combout\);

-- Location: LCCOMB_X33_Y18_N20
\mouse1|RECV_UART~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|RECV_UART~6_combout\ = (\mouse1|new_cursor_column\(8) & ((\mouse1|new_cursor_column\(7)) # ((\mouse1|LessThan9~0_combout\)))) # (!\mouse1|new_cursor_column\(8) & (!\mouse1|new_cursor_column\(7) & (\mouse1|RECV_UART~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_column\(8),
	datab => \mouse1|new_cursor_column\(7),
	datac => \mouse1|RECV_UART~1_combout\,
	datad => \mouse1|LessThan9~0_combout\,
	combout => \mouse1|RECV_UART~6_combout\);

-- Location: LCCOMB_X33_Y18_N6
\mouse1|RECV_UART~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|RECV_UART~7_combout\ = (\mouse1|new_cursor_column\(9)) # (\mouse1|RECV_UART~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|new_cursor_column\(9),
	datad => \mouse1|RECV_UART~6_combout\,
	combout => \mouse1|RECV_UART~7_combout\);

-- Location: LCCOMB_X33_Y18_N4
\mouse1|cursor_column~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~8_combout\ = (!\mouse1|cursor_column[0]~17_combout\ & (\mouse1|Equal3~0_combout\ & ((!\mouse1|RECV_UART~7_combout\) # (!\mouse1|RECV_UART~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column[0]~17_combout\,
	datab => \mouse1|RECV_UART~2_combout\,
	datac => \mouse1|Equal3~0_combout\,
	datad => \mouse1|RECV_UART~7_combout\,
	combout => \mouse1|cursor_column~8_combout\);

-- Location: LCCOMB_X33_Y18_N26
\mouse1|cursor_column~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~10_combout\ = (\mouse1|cursor_column~8_combout\) # ((\mouse1|new_cursor_column\(9) & \mouse1|cursor_column[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_column\(9),
	datac => \mouse1|cursor_column~8_combout\,
	datad => \mouse1|cursor_column[0]~6_combout\,
	combout => \mouse1|cursor_column~10_combout\);

-- Location: FF_X33_Y18_N27
\mouse1|cursor_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_column~10_combout\,
	ena => \mouse1|cursor_column[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_column\(9));

-- Location: LCCOMB_X33_Y18_N8
\mouse1|RECV_UART~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|RECV_UART~2_combout\ = (!\mouse1|cursor_column\(8) & (!\mouse1|cursor_column\(7) & !\mouse1|cursor_column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|cursor_column\(8),
	datac => \mouse1|cursor_column\(7),
	datad => \mouse1|cursor_column\(9),
	combout => \mouse1|RECV_UART~2_combout\);

-- Location: LCCOMB_X33_Y18_N2
\mouse1|cursor_column[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column[0]~6_combout\ = (\mouse1|cursor_column[0]~17_combout\ & (\mouse1|Equal3~0_combout\ & ((!\mouse1|RECV_UART~7_combout\) # (!\mouse1|RECV_UART~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column[0]~17_combout\,
	datab => \mouse1|RECV_UART~2_combout\,
	datac => \mouse1|Equal3~0_combout\,
	datad => \mouse1|RECV_UART~7_combout\,
	combout => \mouse1|cursor_column[0]~6_combout\);

-- Location: LCCOMB_X33_Y18_N30
\mouse1|cursor_column~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~13_combout\ = (\mouse1|new_cursor_column\(3) & \mouse1|cursor_column[0]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_column\(3),
	datad => \mouse1|cursor_column[0]~6_combout\,
	combout => \mouse1|cursor_column~13_combout\);

-- Location: FF_X33_Y18_N31
\mouse1|cursor_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_column~13_combout\,
	ena => \mouse1|cursor_column[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_column\(3));

-- Location: LCCOMB_X32_Y18_N18
\mouse1|new_cursor_column[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_column[5]~20_combout\ = (\mouse1|PACKET_CHAR2\(5) & ((\mouse1|cursor_column\(5) & (\mouse1|new_cursor_column[4]~19\ & VCC)) # (!\mouse1|cursor_column\(5) & (!\mouse1|new_cursor_column[4]~19\)))) # (!\mouse1|PACKET_CHAR2\(5) & 
-- ((\mouse1|cursor_column\(5) & (!\mouse1|new_cursor_column[4]~19\)) # (!\mouse1|cursor_column\(5) & ((\mouse1|new_cursor_column[4]~19\) # (GND)))))
-- \mouse1|new_cursor_column[5]~21\ = CARRY((\mouse1|PACKET_CHAR2\(5) & (!\mouse1|cursor_column\(5) & !\mouse1|new_cursor_column[4]~19\)) # (!\mouse1|PACKET_CHAR2\(5) & ((!\mouse1|new_cursor_column[4]~19\) # (!\mouse1|cursor_column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|PACKET_CHAR2\(5),
	datab => \mouse1|cursor_column\(5),
	datad => VCC,
	cin => \mouse1|new_cursor_column[4]~19\,
	combout => \mouse1|new_cursor_column[5]~20_combout\,
	cout => \mouse1|new_cursor_column[5]~21\);

-- Location: FF_X32_Y18_N19
\mouse1|new_cursor_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|new_cursor_column[5]~20_combout\,
	asdata => \~GND~combout\,
	sload => \mouse1|Equal4~0_combout\,
	ena => \mouse1|new_cursor_column[9]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(5));

-- Location: LCCOMB_X33_Y18_N14
\mouse1|cursor_column~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~11_combout\ = (\mouse1|new_cursor_column\(5) & \mouse1|cursor_column[0]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|new_cursor_column\(5),
	datad => \mouse1|cursor_column[0]~6_combout\,
	combout => \mouse1|cursor_column~11_combout\);

-- Location: FF_X33_Y18_N15
\mouse1|cursor_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_column~11_combout\,
	ena => \mouse1|cursor_column[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_column\(5));

-- Location: LCCOMB_X32_Y18_N20
\mouse1|new_cursor_column[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_column[6]~22_combout\ = ((\mouse1|PACKET_CHAR2\(6) $ (\mouse1|cursor_column\(6) $ (!\mouse1|new_cursor_column[5]~21\)))) # (GND)
-- \mouse1|new_cursor_column[6]~23\ = CARRY((\mouse1|PACKET_CHAR2\(6) & ((\mouse1|cursor_column\(6)) # (!\mouse1|new_cursor_column[5]~21\))) # (!\mouse1|PACKET_CHAR2\(6) & (\mouse1|cursor_column\(6) & !\mouse1|new_cursor_column[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|PACKET_CHAR2\(6),
	datab => \mouse1|cursor_column\(6),
	datad => VCC,
	cin => \mouse1|new_cursor_column[5]~21\,
	combout => \mouse1|new_cursor_column[6]~22_combout\,
	cout => \mouse1|new_cursor_column[6]~23\);

-- Location: FF_X32_Y18_N21
\mouse1|new_cursor_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|new_cursor_column[6]~22_combout\,
	asdata => VCC,
	sload => \mouse1|Equal4~0_combout\,
	ena => \mouse1|new_cursor_column[9]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(6));

-- Location: LCCOMB_X33_Y18_N16
\mouse1|cursor_column~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~18_combout\ = (\mouse1|PACKET_COUNT\(0) & (\mouse1|new_cursor_column\(6) & ((\mouse1|cursor_column[0]~6_combout\)))) # (!\mouse1|PACKET_COUNT\(0) & (((\mouse1|new_cursor_column\(6) & \mouse1|cursor_column[0]~6_combout\)) # 
-- (!\mouse1|PACKET_COUNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|PACKET_COUNT\(0),
	datab => \mouse1|new_cursor_column\(6),
	datac => \mouse1|PACKET_COUNT\(1),
	datad => \mouse1|cursor_column[0]~6_combout\,
	combout => \mouse1|cursor_column~18_combout\);

-- Location: FF_X33_Y18_N17
\mouse1|cursor_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_column~18_combout\,
	ena => \mouse1|cursor_column[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_column\(6));

-- Location: LCCOMB_X32_Y18_N22
\mouse1|new_cursor_column[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_column[7]~24_combout\ = (\mouse1|PACKET_CHAR2\(7) & ((\mouse1|cursor_column\(7) & (\mouse1|new_cursor_column[6]~23\ & VCC)) # (!\mouse1|cursor_column\(7) & (!\mouse1|new_cursor_column[6]~23\)))) # (!\mouse1|PACKET_CHAR2\(7) & 
-- ((\mouse1|cursor_column\(7) & (!\mouse1|new_cursor_column[6]~23\)) # (!\mouse1|cursor_column\(7) & ((\mouse1|new_cursor_column[6]~23\) # (GND)))))
-- \mouse1|new_cursor_column[7]~25\ = CARRY((\mouse1|PACKET_CHAR2\(7) & (!\mouse1|cursor_column\(7) & !\mouse1|new_cursor_column[6]~23\)) # (!\mouse1|PACKET_CHAR2\(7) & ((!\mouse1|new_cursor_column[6]~23\) # (!\mouse1|cursor_column\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|PACKET_CHAR2\(7),
	datab => \mouse1|cursor_column\(7),
	datad => VCC,
	cin => \mouse1|new_cursor_column[6]~23\,
	combout => \mouse1|new_cursor_column[7]~24_combout\,
	cout => \mouse1|new_cursor_column[7]~25\);

-- Location: FF_X32_Y18_N23
\mouse1|new_cursor_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|new_cursor_column[7]~24_combout\,
	asdata => \~GND~combout\,
	sload => \mouse1|Equal4~0_combout\,
	ena => \mouse1|new_cursor_column[9]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(7));

-- Location: LCCOMB_X33_Y18_N22
\mouse1|cursor_column~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~9_combout\ = (\mouse1|cursor_column~8_combout\) # ((\mouse1|new_cursor_column\(7) & \mouse1|cursor_column[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|new_cursor_column\(7),
	datac => \mouse1|cursor_column~8_combout\,
	datad => \mouse1|cursor_column[0]~6_combout\,
	combout => \mouse1|cursor_column~9_combout\);

-- Location: FF_X33_Y18_N23
\mouse1|cursor_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_column~9_combout\,
	ena => \mouse1|cursor_column[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_column\(7));

-- Location: FF_X32_Y18_N25
\mouse1|new_cursor_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|new_cursor_column[8]~26_combout\,
	asdata => VCC,
	sload => \mouse1|Equal4~0_combout\,
	ena => \mouse1|new_cursor_column[9]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(8));

-- Location: LCCOMB_X33_Y18_N28
\mouse1|cursor_column~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~19_combout\ = (\mouse1|PACKET_COUNT\(0) & (\mouse1|new_cursor_column\(8) & ((\mouse1|cursor_column[0]~6_combout\)))) # (!\mouse1|PACKET_COUNT\(0) & (((\mouse1|new_cursor_column\(8) & \mouse1|cursor_column[0]~6_combout\)) # 
-- (!\mouse1|PACKET_COUNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|PACKET_COUNT\(0),
	datab => \mouse1|new_cursor_column\(8),
	datac => \mouse1|PACKET_COUNT\(1),
	datad => \mouse1|cursor_column[0]~6_combout\,
	combout => \mouse1|cursor_column~19_combout\);

-- Location: FF_X33_Y18_N29
\mouse1|cursor_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_column~19_combout\,
	ena => \mouse1|cursor_column[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_column\(8));

-- Location: LCCOMB_X32_Y18_N4
\mouseCol7seg|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseCol7seg|Mux0~0_combout\ = (\mouse1|cursor_column\(6) & ((\mouse1|cursor_column\(9)) # (\mouse1|cursor_column\(8) $ (\mouse1|cursor_column\(7))))) # (!\mouse1|cursor_column\(6) & ((\mouse1|cursor_column\(7)) # (\mouse1|cursor_column\(8) $ 
-- (\mouse1|cursor_column\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(8),
	datab => \mouse1|cursor_column\(7),
	datac => \mouse1|cursor_column\(9),
	datad => \mouse1|cursor_column\(6),
	combout => \mouseCol7seg|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y17_N4
\mouseCol7seg|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseCol7seg|Mux1~0_combout\ = (\mouse1|cursor_column\(7) & (!\mouse1|cursor_column\(9) & ((\mouse1|cursor_column\(6)) # (!\mouse1|cursor_column\(8))))) # (!\mouse1|cursor_column\(7) & (\mouse1|cursor_column\(6) & (\mouse1|cursor_column\(8) $ 
-- (!\mouse1|cursor_column\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(7),
	datab => \mouse1|cursor_column\(8),
	datac => \mouse1|cursor_column\(9),
	datad => \mouse1|cursor_column\(6),
	combout => \mouseCol7seg|Mux1~0_combout\);

-- Location: LCCOMB_X28_Y17_N14
\mouseCol7seg|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseCol7seg|Mux2~0_combout\ = (\mouse1|cursor_column\(7) & (((!\mouse1|cursor_column\(9) & \mouse1|cursor_column\(6))))) # (!\mouse1|cursor_column\(7) & ((\mouse1|cursor_column\(8) & (!\mouse1|cursor_column\(9))) # (!\mouse1|cursor_column\(8) & 
-- ((\mouse1|cursor_column\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(7),
	datab => \mouse1|cursor_column\(8),
	datac => \mouse1|cursor_column\(9),
	datad => \mouse1|cursor_column\(6),
	combout => \mouseCol7seg|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y17_N12
\mouseCol7seg|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseCol7seg|Mux3~0_combout\ = (\mouse1|cursor_column\(6) & (\mouse1|cursor_column\(7) $ ((!\mouse1|cursor_column\(8))))) # (!\mouse1|cursor_column\(6) & ((\mouse1|cursor_column\(7) & (!\mouse1|cursor_column\(8) & \mouse1|cursor_column\(9))) # 
-- (!\mouse1|cursor_column\(7) & (\mouse1|cursor_column\(8) & !\mouse1|cursor_column\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(7),
	datab => \mouse1|cursor_column\(8),
	datac => \mouse1|cursor_column\(9),
	datad => \mouse1|cursor_column\(6),
	combout => \mouseCol7seg|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y17_N26
\mouseCol7seg|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseCol7seg|Mux4~0_combout\ = (\mouse1|cursor_column\(8) & (\mouse1|cursor_column\(9) & ((\mouse1|cursor_column\(7)) # (!\mouse1|cursor_column\(6))))) # (!\mouse1|cursor_column\(8) & (\mouse1|cursor_column\(7) & (!\mouse1|cursor_column\(9) & 
-- !\mouse1|cursor_column\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(7),
	datab => \mouse1|cursor_column\(8),
	datac => \mouse1|cursor_column\(9),
	datad => \mouse1|cursor_column\(6),
	combout => \mouseCol7seg|Mux4~0_combout\);

-- Location: LCCOMB_X28_Y17_N28
\mouseCol7seg|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseCol7seg|Mux5~0_combout\ = (\mouse1|cursor_column\(7) & ((\mouse1|cursor_column\(6) & ((\mouse1|cursor_column\(9)))) # (!\mouse1|cursor_column\(6) & (\mouse1|cursor_column\(8))))) # (!\mouse1|cursor_column\(7) & (\mouse1|cursor_column\(8) & 
-- (\mouse1|cursor_column\(9) $ (\mouse1|cursor_column\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(7),
	datab => \mouse1|cursor_column\(8),
	datac => \mouse1|cursor_column\(9),
	datad => \mouse1|cursor_column\(6),
	combout => \mouseCol7seg|Mux5~0_combout\);

-- Location: LCCOMB_X28_Y17_N6
\mouseCol7seg|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseCol7seg|Mux6~0_combout\ = (\mouse1|cursor_column\(8) & (!\mouse1|cursor_column\(7) & (\mouse1|cursor_column\(9) $ (!\mouse1|cursor_column\(6))))) # (!\mouse1|cursor_column\(8) & (\mouse1|cursor_column\(6) & (\mouse1|cursor_column\(7) $ 
-- (!\mouse1|cursor_column\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(7),
	datab => \mouse1|cursor_column\(8),
	datac => \mouse1|cursor_column\(9),
	datad => \mouse1|cursor_column\(6),
	combout => \mouseCol7seg|Mux6~0_combout\);

-- Location: LCCOMB_X30_Y17_N6
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

-- Location: FF_X30_Y17_N7
\mouse1|PACKET_CHAR3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_CHAR3[0]~feeder_combout\,
	ena => \mouse1|left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_CHAR3\(0));

-- Location: LCCOMB_X31_Y17_N10
\mouse1|new_cursor_row[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_row[0]~10_combout\ = (\mouse1|cursor_row\(0) & ((GND) # (!\mouse1|PACKET_CHAR3\(0)))) # (!\mouse1|cursor_row\(0) & (\mouse1|PACKET_CHAR3\(0) $ (GND)))
-- \mouse1|new_cursor_row[0]~11\ = CARRY((\mouse1|cursor_row\(0)) # (!\mouse1|PACKET_CHAR3\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(0),
	datab => \mouse1|PACKET_CHAR3\(0),
	datad => VCC,
	combout => \mouse1|new_cursor_row[0]~10_combout\,
	cout => \mouse1|new_cursor_row[0]~11\);

-- Location: FF_X31_Y17_N11
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
	ena => \mouse1|new_cursor_column[9]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(0));

-- Location: LCCOMB_X30_Y17_N24
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

-- Location: FF_X30_Y17_N25
\mouse1|PACKET_CHAR3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_CHAR3[7]~feeder_combout\,
	ena => \mouse1|left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_CHAR3\(7));

-- Location: LCCOMB_X30_Y17_N20
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

-- Location: FF_X30_Y17_N21
\mouse1|PACKET_CHAR3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_CHAR3[3]~feeder_combout\,
	ena => \mouse1|left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_CHAR3\(3));

-- Location: LCCOMB_X30_Y17_N30
\mouse1|PACKET_CHAR3[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR3[2]~feeder_combout\ = \mouse1|SHIFTIN\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|SHIFTIN\(2),
	combout => \mouse1|PACKET_CHAR3[2]~feeder_combout\);

-- Location: FF_X30_Y17_N31
\mouse1|PACKET_CHAR3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_CHAR3[2]~feeder_combout\,
	ena => \mouse1|left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_CHAR3\(2));

-- Location: LCCOMB_X31_Y17_N24
\mouse1|new_cursor_row[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_row[7]~24_combout\ = (\mouse1|cursor_row\(7) & ((\mouse1|PACKET_CHAR3\(7) & (!\mouse1|new_cursor_row[6]~23\)) # (!\mouse1|PACKET_CHAR3\(7) & (\mouse1|new_cursor_row[6]~23\ & VCC)))) # (!\mouse1|cursor_row\(7) & 
-- ((\mouse1|PACKET_CHAR3\(7) & ((\mouse1|new_cursor_row[6]~23\) # (GND))) # (!\mouse1|PACKET_CHAR3\(7) & (!\mouse1|new_cursor_row[6]~23\))))
-- \mouse1|new_cursor_row[7]~25\ = CARRY((\mouse1|cursor_row\(7) & (\mouse1|PACKET_CHAR3\(7) & !\mouse1|new_cursor_row[6]~23\)) # (!\mouse1|cursor_row\(7) & ((\mouse1|PACKET_CHAR3\(7)) # (!\mouse1|new_cursor_row[6]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(7),
	datab => \mouse1|PACKET_CHAR3\(7),
	datad => VCC,
	cin => \mouse1|new_cursor_row[6]~23\,
	combout => \mouse1|new_cursor_row[7]~24_combout\,
	cout => \mouse1|new_cursor_row[7]~25\);

-- Location: FF_X31_Y17_N25
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
	ena => \mouse1|new_cursor_column[9]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(7));

-- Location: LCCOMB_X31_Y18_N20
\mouse1|cursor_row~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row~3_combout\ = ((!\mouse1|RECV_UART~5_combout\ & ((\mouse1|new_cursor_row\(7)) # (!\mouse1|cursor_row~0_combout\)))) # (!\mouse1|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|Equal3~0_combout\,
	datab => \mouse1|new_cursor_row\(7),
	datac => \mouse1|cursor_row~0_combout\,
	datad => \mouse1|RECV_UART~5_combout\,
	combout => \mouse1|cursor_row~3_combout\);

-- Location: FF_X31_Y18_N21
\mouse1|cursor_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_row~3_combout\,
	ena => \mouse1|cursor_column[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_row\(7));

-- Location: LCCOMB_X31_Y18_N18
\mouse1|cursor_row~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row~2_combout\ = (\mouse1|Equal3~0_combout\ & (!\mouse1|RECV_UART~5_combout\ & ((\mouse1|new_cursor_row\(8)) # (!\mouse1|cursor_row~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_row\(8),
	datab => \mouse1|Equal3~0_combout\,
	datac => \mouse1|cursor_row~0_combout\,
	datad => \mouse1|RECV_UART~5_combout\,
	combout => \mouse1|cursor_row~2_combout\);

-- Location: FF_X31_Y18_N19
\mouse1|cursor_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_row~2_combout\,
	ena => \mouse1|cursor_column[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_row\(8));

-- Location: LCCOMB_X31_Y17_N14
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

-- Location: FF_X31_Y17_N15
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
	ena => \mouse1|new_cursor_column[9]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(2));

-- Location: LCCOMB_X31_Y17_N16
\mouse1|new_cursor_row[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_row[3]~16_combout\ = (\mouse1|cursor_row\(3) & ((\mouse1|PACKET_CHAR3\(3) & (!\mouse1|new_cursor_row[2]~15\)) # (!\mouse1|PACKET_CHAR3\(3) & (\mouse1|new_cursor_row[2]~15\ & VCC)))) # (!\mouse1|cursor_row\(3) & 
-- ((\mouse1|PACKET_CHAR3\(3) & ((\mouse1|new_cursor_row[2]~15\) # (GND))) # (!\mouse1|PACKET_CHAR3\(3) & (!\mouse1|new_cursor_row[2]~15\))))
-- \mouse1|new_cursor_row[3]~17\ = CARRY((\mouse1|cursor_row\(3) & (\mouse1|PACKET_CHAR3\(3) & !\mouse1|new_cursor_row[2]~15\)) # (!\mouse1|cursor_row\(3) & ((\mouse1|PACKET_CHAR3\(3)) # (!\mouse1|new_cursor_row[2]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(3),
	datab => \mouse1|PACKET_CHAR3\(3),
	datad => VCC,
	cin => \mouse1|new_cursor_row[2]~15\,
	combout => \mouse1|new_cursor_row[3]~16_combout\,
	cout => \mouse1|new_cursor_row[3]~17\);

-- Location: FF_X31_Y17_N17
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
	ena => \mouse1|new_cursor_column[9]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(3));

-- Location: LCCOMB_X31_Y17_N6
\mouse1|LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|LessThan5~0_combout\ = (!\mouse1|new_cursor_row\(1) & (!\mouse1|new_cursor_row\(4) & (!\mouse1|new_cursor_row\(2) & !\mouse1|new_cursor_row\(3))))

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
	combout => \mouse1|LessThan5~0_combout\);

-- Location: LCCOMB_X31_Y17_N2
\mouse1|RECV_UART~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|RECV_UART~3_combout\ = (!\mouse1|new_cursor_row\(6) & (!\mouse1|new_cursor_row\(7) & (!\mouse1|new_cursor_row\(5) & \mouse1|LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_row\(6),
	datab => \mouse1|new_cursor_row\(7),
	datac => \mouse1|new_cursor_row\(5),
	datad => \mouse1|LessThan5~0_combout\,
	combout => \mouse1|RECV_UART~3_combout\);

-- Location: LCCOMB_X31_Y18_N24
\mouse1|RECV_UART~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|RECV_UART~4_combout\ = (\mouse1|new_cursor_row\(9)) # ((\mouse1|new_cursor_row\(8) & ((\mouse1|new_cursor_row\(0)) # (!\mouse1|RECV_UART~3_combout\))) # (!\mouse1|new_cursor_row\(8) & ((\mouse1|RECV_UART~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_row\(8),
	datab => \mouse1|new_cursor_row\(9),
	datac => \mouse1|new_cursor_row\(0),
	datad => \mouse1|RECV_UART~3_combout\,
	combout => \mouse1|RECV_UART~4_combout\);

-- Location: LCCOMB_X31_Y18_N2
\mouse1|RECV_UART~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|RECV_UART~5_combout\ = (!\mouse1|cursor_row\(7) & (!\mouse1|cursor_row\(8) & \mouse1|RECV_UART~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|cursor_row\(7),
	datac => \mouse1|cursor_row\(8),
	datad => \mouse1|RECV_UART~4_combout\,
	combout => \mouse1|RECV_UART~5_combout\);

-- Location: LCCOMB_X31_Y18_N28
\mouse1|cursor_row~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row~8_combout\ = (\mouse1|new_cursor_row\(1) & (\mouse1|Equal3~0_combout\ & (\mouse1|cursor_row~0_combout\ & !\mouse1|RECV_UART~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_row\(1),
	datab => \mouse1|Equal3~0_combout\,
	datac => \mouse1|cursor_row~0_combout\,
	datad => \mouse1|RECV_UART~5_combout\,
	combout => \mouse1|cursor_row~8_combout\);

-- Location: FF_X31_Y18_N29
\mouse1|cursor_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_row~8_combout\,
	ena => \mouse1|cursor_column[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_row\(1));

-- Location: LCCOMB_X31_Y17_N18
\mouse1|new_cursor_row[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_row[4]~18_combout\ = ((\mouse1|PACKET_CHAR3\(4) $ (\mouse1|cursor_row\(4) $ (\mouse1|new_cursor_row[3]~17\)))) # (GND)
-- \mouse1|new_cursor_row[4]~19\ = CARRY((\mouse1|PACKET_CHAR3\(4) & (\mouse1|cursor_row\(4) & !\mouse1|new_cursor_row[3]~17\)) # (!\mouse1|PACKET_CHAR3\(4) & ((\mouse1|cursor_row\(4)) # (!\mouse1|new_cursor_row[3]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|PACKET_CHAR3\(4),
	datab => \mouse1|cursor_row\(4),
	datad => VCC,
	cin => \mouse1|new_cursor_row[3]~17\,
	combout => \mouse1|new_cursor_row[4]~18_combout\,
	cout => \mouse1|new_cursor_row[4]~19\);

-- Location: FF_X31_Y17_N19
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
	ena => \mouse1|new_cursor_column[9]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(4));

-- Location: LCCOMB_X31_Y18_N22
\mouse1|cursor_row~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row~5_combout\ = ((\mouse1|new_cursor_row\(4) & (\mouse1|cursor_row~0_combout\ & !\mouse1|RECV_UART~5_combout\))) # (!\mouse1|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|Equal3~0_combout\,
	datab => \mouse1|new_cursor_row\(4),
	datac => \mouse1|cursor_row~0_combout\,
	datad => \mouse1|RECV_UART~5_combout\,
	combout => \mouse1|cursor_row~5_combout\);

-- Location: FF_X31_Y18_N23
\mouse1|cursor_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_row~5_combout\,
	ena => \mouse1|cursor_column[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_row\(4));

-- Location: LCCOMB_X31_Y17_N20
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

-- Location: FF_X31_Y17_N21
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
	ena => \mouse1|new_cursor_column[9]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(5));

-- Location: LCCOMB_X31_Y18_N12
\mouse1|cursor_row~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row~4_combout\ = ((!\mouse1|RECV_UART~5_combout\ & ((\mouse1|new_cursor_row\(5)) # (!\mouse1|cursor_row~0_combout\)))) # (!\mouse1|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|Equal3~0_combout\,
	datab => \mouse1|new_cursor_row\(5),
	datac => \mouse1|cursor_row~0_combout\,
	datad => \mouse1|RECV_UART~5_combout\,
	combout => \mouse1|cursor_row~4_combout\);

-- Location: FF_X31_Y18_N13
\mouse1|cursor_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_row~4_combout\,
	ena => \mouse1|cursor_column[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_row\(5));

-- Location: LCCOMB_X31_Y17_N26
\mouse1|new_cursor_row[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_row[8]~26_combout\ = ((\mouse1|cursor_row\(8) $ (\mouse1|PACKET_CHAR3\(7) $ (\mouse1|new_cursor_row[7]~25\)))) # (GND)
-- \mouse1|new_cursor_row[8]~27\ = CARRY((\mouse1|cursor_row\(8) & ((!\mouse1|new_cursor_row[7]~25\) # (!\mouse1|PACKET_CHAR3\(7)))) # (!\mouse1|cursor_row\(8) & (!\mouse1|PACKET_CHAR3\(7) & !\mouse1|new_cursor_row[7]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(8),
	datab => \mouse1|PACKET_CHAR3\(7),
	datad => VCC,
	cin => \mouse1|new_cursor_row[7]~25\,
	combout => \mouse1|new_cursor_row[8]~26_combout\,
	cout => \mouse1|new_cursor_row[8]~27\);

-- Location: LCCOMB_X31_Y17_N28
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

-- Location: FF_X31_Y17_N29
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
	ena => \mouse1|new_cursor_column[9]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(9));

-- Location: FF_X31_Y17_N27
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
	ena => \mouse1|new_cursor_column[9]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(8));

-- Location: LCCOMB_X31_Y17_N0
\mouse1|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|LessThan5~1_combout\ = (\mouse1|new_cursor_row\(6) & (\mouse1|new_cursor_row\(5) & (\mouse1|new_cursor_row\(8) & \mouse1|new_cursor_row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_row\(6),
	datab => \mouse1|new_cursor_row\(5),
	datac => \mouse1|new_cursor_row\(8),
	datad => \mouse1|new_cursor_row\(7),
	combout => \mouse1|LessThan5~1_combout\);

-- Location: LCCOMB_X31_Y18_N14
\mouse1|cursor_row~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row~0_combout\ = (!\mouse1|new_cursor_row\(9) & (((\mouse1|LessThan5~0_combout\ & !\mouse1|new_cursor_row\(0))) # (!\mouse1|LessThan5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|LessThan5~0_combout\,
	datab => \mouse1|new_cursor_row\(0),
	datac => \mouse1|new_cursor_row\(9),
	datad => \mouse1|LessThan5~1_combout\,
	combout => \mouse1|cursor_row~0_combout\);

-- Location: LCCOMB_X31_Y18_N8
\mouse1|cursor_row~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row~1_combout\ = ((!\mouse1|RECV_UART~5_combout\ & ((\mouse1|new_cursor_row\(6)) # (!\mouse1|cursor_row~0_combout\)))) # (!\mouse1|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_row\(6),
	datab => \mouse1|Equal3~0_combout\,
	datac => \mouse1|cursor_row~0_combout\,
	datad => \mouse1|RECV_UART~5_combout\,
	combout => \mouse1|cursor_row~1_combout\);

-- Location: FF_X31_Y18_N9
\mouse1|cursor_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_row~1_combout\,
	ena => \mouse1|cursor_column[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_row\(6));

-- Location: LCCOMB_X31_Y18_N6
\mouseRow7seg|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseRow7seg|Mux0~0_combout\ = (\mouse1|cursor_row\(8) & (\mouse1|cursor_row\(6) & \mouse1|cursor_row\(7))) # (!\mouse1|cursor_row\(8) & ((!\mouse1|cursor_row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|cursor_row\(6),
	datac => \mouse1|cursor_row\(8),
	datad => \mouse1|cursor_row\(7),
	combout => \mouseRow7seg|Mux0~0_combout\);

-- Location: LCCOMB_X31_Y18_N0
\mouseRow7seg|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseRow7seg|Mux1~0_combout\ = (\mouse1|cursor_row\(6) & ((\mouse1|cursor_row\(7)) # (!\mouse1|cursor_row\(8)))) # (!\mouse1|cursor_row\(6) & (!\mouse1|cursor_row\(8) & \mouse1|cursor_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|cursor_row\(6),
	datac => \mouse1|cursor_row\(8),
	datad => \mouse1|cursor_row\(7),
	combout => \mouseRow7seg|Mux1~0_combout\);

-- Location: LCCOMB_X31_Y18_N10
\mouseRow7seg|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseRow7seg|Mux2~0_combout\ = (\mouse1|cursor_row\(6)) # ((\mouse1|cursor_row\(8) & !\mouse1|cursor_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|cursor_row\(6),
	datac => \mouse1|cursor_row\(8),
	datad => \mouse1|cursor_row\(7),
	combout => \mouseRow7seg|Mux2~0_combout\);

-- Location: LCCOMB_X31_Y18_N16
\mouseRow7seg|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseRow7seg|Mux3~0_combout\ = (\mouse1|cursor_row\(6) & (\mouse1|cursor_row\(8) $ (!\mouse1|cursor_row\(7)))) # (!\mouse1|cursor_row\(6) & (\mouse1|cursor_row\(8) & !\mouse1|cursor_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|cursor_row\(6),
	datac => \mouse1|cursor_row\(8),
	datad => \mouse1|cursor_row\(7),
	combout => \mouseRow7seg|Mux3~0_combout\);

-- Location: LCCOMB_X31_Y17_N4
\mouseRow7seg|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseRow7seg|Mux4~0_combout\ = (!\mouse1|cursor_row\(8) & (!\mouse1|cursor_row\(6) & \mouse1|cursor_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(8),
	datab => \mouse1|cursor_row\(6),
	datad => \mouse1|cursor_row\(7),
	combout => \mouseRow7seg|Mux4~0_combout\);

-- Location: LCCOMB_X31_Y17_N30
\mouseRow7seg|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseRow7seg|Mux5~0_combout\ = (\mouse1|cursor_row\(6) $ (!\mouse1|cursor_row\(7))) # (!\mouse1|cursor_row\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(8),
	datab => \mouse1|cursor_row\(6),
	datad => \mouse1|cursor_row\(7),
	combout => \mouseRow7seg|Mux5~0_combout\);

-- Location: LCCOMB_X31_Y17_N8
\mouseRow7seg|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseRow7seg|Mux6~0_combout\ = (!\mouse1|cursor_row\(7) & (\mouse1|cursor_row\(8) $ (\mouse1|cursor_row\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(8),
	datab => \mouse1|cursor_row\(6),
	datad => \mouse1|cursor_row\(7),
	combout => \mouseRow7seg|Mux6~0_combout\);
END structure;


