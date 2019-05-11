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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "05/11/2019 23:41:55"

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
	seg0_dec : OUT std_logic;
	clk : IN std_logic;
	mouse_data : INOUT std_logic;
	mouse_clk : INOUT std_logic;
	seg1_dec : OUT std_logic;
	red_out : OUT std_logic;
	green_out : OUT std_logic;
	blue_out : OUT std_logic;
	horiz_sync_out : OUT std_logic;
	vert_sync_out : OUT std_logic;
	r1 : OUT std_logic;
	g1 : OUT std_logic;
	b1 : OUT std_logic;
	seg0 : OUT std_logic_vector(6 DOWNTO 0);
	seg1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END part1_Demo;

-- Design Ports Information
-- seg0_dec	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1_dec	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red_out	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_out	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue_out	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horiz_sync_out	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vert_sync_out	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g1	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_seg0_dec : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_seg1_dec : std_logic;
SIGNAL ww_red_out : std_logic;
SIGNAL ww_green_out : std_logic;
SIGNAL ww_blue_out : std_logic;
SIGNAL ww_horiz_sync_out : std_logic;
SIGNAL ww_vert_sync_out : std_logic;
SIGNAL ww_r1 : std_logic;
SIGNAL ww_g1 : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL ww_seg0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \PLL1|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \PLL1|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \mouse1|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst12|Add0~0_combout\ : std_logic;
SIGNAL \inst12|Add0~6_combout\ : std_logic;
SIGNAL \inst12|Add0~9\ : std_logic;
SIGNAL \inst12|Add0~10_combout\ : std_logic;
SIGNAL \inst12|Add1~0_combout\ : std_logic;
SIGNAL \inst12|Add1~8_combout\ : std_logic;
SIGNAL \inst12|Add3~4_combout\ : std_logic;
SIGNAL \inst12|Add3~8_combout\ : std_logic;
SIGNAL \inst12|Add2~0_combout\ : std_logic;
SIGNAL \inst12|Add2~4_combout\ : std_logic;
SIGNAL \inst12|Add2~6_combout\ : std_logic;
SIGNAL \inst12|SYNC|Add1~4_combout\ : std_logic;
SIGNAL \inst12|SYNC|Add1~16_combout\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[3]~14_combout\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[4]~16_combout\ : std_logic;
SIGNAL \mouse1|RECV_UART~1_combout\ : std_logic;
SIGNAL \mouse1|cursor_column[6]~5_combout\ : std_logic;
SIGNAL \mouse1|MOUSE_CLK_FILTER~1_combout\ : std_logic;
SIGNAL \mouse1|INCNT~1_combout\ : std_logic;
SIGNAL \mouse1|cursor_row~4_combout\ : std_logic;
SIGNAL \inst12|SYNC|process_0~7_combout\ : std_logic;
SIGNAL \inst12|SYNC|v_count[2]~9_combout\ : std_logic;
SIGNAL \mouse1|OUTCNT~3_combout\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[0]~30_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR3[0]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[0]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR3[1]~feeder_combout\ : std_logic;
SIGNAL \inst12|SYNC|pixel_column[7]~feeder_combout\ : std_logic;
SIGNAL \inst12|SYNC|pixel_row[2]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR3[2]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR3[6]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[6]~feeder_combout\ : std_logic;
SIGNAL \mouse_clk~input_o\ : std_logic;
SIGNAL \mouse1|filter[0]~feeder_combout\ : std_logic;
SIGNAL \mouse1|filter[1]~feeder_combout\ : std_logic;
SIGNAL \mouse1|filter[2]~feeder_combout\ : std_logic;
SIGNAL \mouse1|filter[3]~feeder_combout\ : std_logic;
SIGNAL \mouse1|filter[5]~feeder_combout\ : std_logic;
SIGNAL \mouse1|filter[6]~feeder_combout\ : std_logic;
SIGNAL \mouse1|MOUSE_CLK_FILTER~0_combout\ : std_logic;
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
SIGNAL \mouse1|OUTCNT~0_combout\ : std_logic;
SIGNAL \mouse1|send_char~0_combout\ : std_logic;
SIGNAL \mouse1|send_char~q\ : std_logic;
SIGNAL \mouse1|output_ready~0_combout\ : std_logic;
SIGNAL \mouse1|OUTCNT~2_combout\ : std_logic;
SIGNAL \mouse1|OUTCNT~1_combout\ : std_logic;
SIGNAL \mouse1|LessThan0~0_combout\ : std_logic;
SIGNAL \mouse1|output_ready~feeder_combout\ : std_logic;
SIGNAL \mouse1|output_ready~q\ : std_logic;
SIGNAL \mouse1|Selector3~0_combout\ : std_logic;
SIGNAL \mouse1|mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;
SIGNAL \mouse1|Selector4~0_combout\ : std_logic;
SIGNAL \mouse1|mouse_state.WAIT_CMD_ACK~q\ : std_logic;
SIGNAL \mouse_data~input_o\ : std_logic;
SIGNAL \mouse1|INCNT~3_combout\ : std_logic;
SIGNAL \mouse1|INCNT[3]~2_combout\ : std_logic;
SIGNAL \mouse1|INCNT~4_combout\ : std_logic;
SIGNAL \mouse1|INCNT~5_combout\ : std_logic;
SIGNAL \mouse1|LessThan1~0_combout\ : std_logic;
SIGNAL \mouse1|READ_CHAR~0_combout\ : std_logic;
SIGNAL \mouse1|READ_CHAR~q\ : std_logic;
SIGNAL \mouse1|iready_set~0_combout\ : std_logic;
SIGNAL \mouse1|iready_set~q\ : std_logic;
SIGNAL \mouse1|mouse_state.INPUT_PACKETS~0_combout\ : std_logic;
SIGNAL \mouse1|mouse_state.INPUT_PACKETS~q\ : std_logic;
SIGNAL \mouse1|Selector6~0_combout\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[9]~26_combout\ : std_logic;
SIGNAL \mouse1|Selector1~0_combout\ : std_logic;
SIGNAL \mouse1|mouse_state.LOAD_COMMAND~q\ : std_logic;
SIGNAL \mouse1|mouse_state.LOAD_COMMAND2~q\ : std_logic;
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
SIGNAL \mouse1|SHIFTIN[8]~feeder_combout\ : std_logic;
SIGNAL \mouse1|SHIFTIN[0]~0_combout\ : std_logic;
SIGNAL \mouse1|SHIFTIN[5]~feeder_combout\ : std_logic;
SIGNAL \mouse1|SHIFTIN[4]~feeder_combout\ : std_logic;
SIGNAL \mouse1|SHIFTIN[3]~feeder_combout\ : std_logic;
SIGNAL \mouse1|SHIFTIN[2]~feeder_combout\ : std_logic;
SIGNAL \mouse1|SHIFTIN[1]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR1[0]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_COUNT[0]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[7]~4_combout\ : std_logic;
SIGNAL \mouse1|Add3~0_combout\ : std_logic;
SIGNAL \mouse1|PACKET_COUNT[1]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR1[0]~0_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR1[0]~1_combout\ : std_logic;
SIGNAL \mouse1|INCNT[3]~0_combout\ : std_logic;
SIGNAL \mouse1|Equal4~0_combout\ : std_logic;
SIGNAL \mouse1|left_button~0_combout\ : std_logic;
SIGNAL \mouse1|left_button~q\ : std_logic;
SIGNAL \mouse1|right_button~feeder_combout\ : std_logic;
SIGNAL \mouse1|right_button~q\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \PLL1|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[7]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[7]~2_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[7]~3_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[5]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[4]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[3]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[2]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[1]~feeder_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[0]~10_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[9]~24_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[8]~27_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[3]~16_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[2]~14_combout\ : std_logic;
SIGNAL \mouse1|RECV_UART~0_combout\ : std_logic;
SIGNAL \mouse1|cursor_column[6]~4_combout\ : std_logic;
SIGNAL \mouse1|Equal3~0_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[7]~25_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~8_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~9_combout\ : std_logic;
SIGNAL \mouse1|cursor_column[9]~7_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~18_combout\ : std_logic;
SIGNAL \mouse1|RECV_UART~2_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[4]~18_combout\ : std_logic;
SIGNAL \mouse1|LessThan9~0_combout\ : std_logic;
SIGNAL \mouse1|RECV_UART~3_combout\ : std_logic;
SIGNAL \mouse1|RECV_UART~4_combout\ : std_logic;
SIGNAL \mouse1|RECV_UART~5_combout\ : std_logic;
SIGNAL \mouse1|cursor_column[6]~6_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~16_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[0]~11\ : std_logic;
SIGNAL \mouse1|new_cursor_column[1]~13\ : std_logic;
SIGNAL \mouse1|new_cursor_column[2]~15\ : std_logic;
SIGNAL \mouse1|new_cursor_column[3]~17\ : std_logic;
SIGNAL \mouse1|new_cursor_column[4]~19\ : std_logic;
SIGNAL \mouse1|new_cursor_column[5]~21\ : std_logic;
SIGNAL \mouse1|new_cursor_column[6]~22_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~17_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[6]~23\ : std_logic;
SIGNAL \mouse1|new_cursor_column[7]~26\ : std_logic;
SIGNAL \mouse1|new_cursor_column[8]~28\ : std_logic;
SIGNAL \mouse1|new_cursor_column[9]~29_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~10_combout\ : std_logic;
SIGNAL \inst12|SYNC|Add0~1\ : std_logic;
SIGNAL \inst12|SYNC|Add0~2_combout\ : std_logic;
SIGNAL \inst12|SYNC|Add0~3\ : std_logic;
SIGNAL \inst12|SYNC|Add0~4_combout\ : std_logic;
SIGNAL \inst12|SYNC|Add0~5\ : std_logic;
SIGNAL \inst12|SYNC|Add0~6_combout\ : std_logic;
SIGNAL \inst12|SYNC|Add0~7\ : std_logic;
SIGNAL \inst12|SYNC|Add0~8_combout\ : std_logic;
SIGNAL \inst12|SYNC|Add0~9\ : std_logic;
SIGNAL \inst12|SYNC|Add0~11\ : std_logic;
SIGNAL \inst12|SYNC|Add0~13\ : std_logic;
SIGNAL \inst12|SYNC|Add0~14_combout\ : std_logic;
SIGNAL \inst12|SYNC|Add0~15\ : std_logic;
SIGNAL \inst12|SYNC|Add0~16_combout\ : std_logic;
SIGNAL \inst12|SYNC|Equal0~0_combout\ : std_logic;
SIGNAL \inst12|SYNC|Add0~12_combout\ : std_logic;
SIGNAL \inst12|SYNC|Equal0~1_combout\ : std_logic;
SIGNAL \inst12|SYNC|Equal0~2_combout\ : std_logic;
SIGNAL \inst12|SYNC|h_count~1_combout\ : std_logic;
SIGNAL \inst12|SYNC|pixel_column[8]~feeder_combout\ : std_logic;
SIGNAL \inst12|SYNC|process_0~0_combout\ : std_logic;
SIGNAL \inst12|SYNC|Add0~10_combout\ : std_logic;
SIGNAL \inst12|SYNC|h_count~2_combout\ : std_logic;
SIGNAL \inst12|Add0~1\ : std_logic;
SIGNAL \inst12|Add0~3\ : std_logic;
SIGNAL \inst12|Add0~5\ : std_logic;
SIGNAL \inst12|Add0~7\ : std_logic;
SIGNAL \inst12|Add0~8_combout\ : std_logic;
SIGNAL \inst12|Add0~4_combout\ : std_logic;
SIGNAL \inst12|Add0~2_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~12_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~14_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[1]~12_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~15_combout\ : std_logic;
SIGNAL \inst12|SYNC|Add0~0_combout\ : std_logic;
SIGNAL \inst12|LessThan0~1_cout\ : std_logic;
SIGNAL \inst12|LessThan0~3_cout\ : std_logic;
SIGNAL \inst12|LessThan0~5_cout\ : std_logic;
SIGNAL \inst12|LessThan0~7_cout\ : std_logic;
SIGNAL \inst12|LessThan0~9_cout\ : std_logic;
SIGNAL \inst12|LessThan0~11_cout\ : std_logic;
SIGNAL \inst12|LessThan0~13_cout\ : std_logic;
SIGNAL \inst12|LessThan0~15_cout\ : std_logic;
SIGNAL \inst12|LessThan0~17_cout\ : std_logic;
SIGNAL \inst12|LessThan0~18_combout\ : std_logic;
SIGNAL \inst12|SYNC|Add0~17\ : std_logic;
SIGNAL \inst12|SYNC|Add0~18_combout\ : std_logic;
SIGNAL \inst12|SYNC|h_count~0_combout\ : std_logic;
SIGNAL \inst12|SYNC|Add1~0_combout\ : std_logic;
SIGNAL \inst12|SYNC|process_0~10_combout\ : std_logic;
SIGNAL \inst12|SYNC|process_0~9_combout\ : std_logic;
SIGNAL \inst12|SYNC|process_0~11_combout\ : std_logic;
SIGNAL \inst12|SYNC|v_count~7_combout\ : std_logic;
SIGNAL \inst12|SYNC|Equal1~0_combout\ : std_logic;
SIGNAL \inst12|SYNC|Equal1~1_combout\ : std_logic;
SIGNAL \inst12|SYNC|Add1~14_combout\ : std_logic;
SIGNAL \inst12|SYNC|v_count[7]~5_combout\ : std_logic;
SIGNAL \inst12|SYNC|process_0~8_combout\ : std_logic;
SIGNAL \inst12|SYNC|v_count[9]~1_combout\ : std_logic;
SIGNAL \inst12|SYNC|Add1~1\ : std_logic;
SIGNAL \inst12|SYNC|Add1~2_combout\ : std_logic;
SIGNAL \inst12|SYNC|v_count~8_combout\ : std_logic;
SIGNAL \inst12|SYNC|Add1~3\ : std_logic;
SIGNAL \inst12|SYNC|Add1~5\ : std_logic;
SIGNAL \inst12|SYNC|Add1~7\ : std_logic;
SIGNAL \inst12|SYNC|Add1~8_combout\ : std_logic;
SIGNAL \inst12|SYNC|v_count[4]~11_combout\ : std_logic;
SIGNAL \inst12|SYNC|Add1~9\ : std_logic;
SIGNAL \inst12|SYNC|Add1~10_combout\ : std_logic;
SIGNAL \inst12|SYNC|v_count[5]~3_combout\ : std_logic;
SIGNAL \inst12|SYNC|Add1~11\ : std_logic;
SIGNAL \inst12|SYNC|Add1~12_combout\ : std_logic;
SIGNAL \inst12|SYNC|v_count[6]~4_combout\ : std_logic;
SIGNAL \inst12|SYNC|Add1~13\ : std_logic;
SIGNAL \inst12|SYNC|Add1~15\ : std_logic;
SIGNAL \inst12|SYNC|Add1~17\ : std_logic;
SIGNAL \inst12|SYNC|Add1~18_combout\ : std_logic;
SIGNAL \inst12|SYNC|v_count[9]~2_combout\ : std_logic;
SIGNAL \inst12|SYNC|process_0~12_combout\ : std_logic;
SIGNAL \inst12|SYNC|v_count[4]~0_combout\ : std_logic;
SIGNAL \inst12|SYNC|v_count[8]~6_combout\ : std_logic;
SIGNAL \inst12|SYNC|LessThan7~0_combout\ : std_logic;
SIGNAL \inst12|SYNC|LessThan7~1_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR3[7]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR3[5]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR3[4]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR3[3]~feeder_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[0]~10_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[7]~25\ : std_logic;
SIGNAL \mouse1|new_cursor_row[8]~27\ : std_logic;
SIGNAL \mouse1|new_cursor_row[9]~28_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[8]~26_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[4]~18_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[3]~16_combout\ : std_logic;
SIGNAL \mouse1|LessThan5~0_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[5]~20_combout\ : std_logic;
SIGNAL \mouse1|LessThan5~1_combout\ : std_logic;
SIGNAL \mouse1|cursor_row~0_combout\ : std_logic;
SIGNAL \mouse1|cursor_row~2_combout\ : std_logic;
SIGNAL \mouse1|RECV_UART~6_combout\ : std_logic;
SIGNAL \mouse1|RECV_UART~7_combout\ : std_logic;
SIGNAL \mouse1|RECV_UART~8_combout\ : std_logic;
SIGNAL \mouse1|cursor_row~9_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[0]~11\ : std_logic;
SIGNAL \mouse1|new_cursor_row[1]~12_combout\ : std_logic;
SIGNAL \mouse1|cursor_row~8_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[1]~13\ : std_logic;
SIGNAL \mouse1|new_cursor_row[2]~14_combout\ : std_logic;
SIGNAL \mouse1|cursor_row~7_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[2]~15\ : std_logic;
SIGNAL \mouse1|new_cursor_row[3]~17\ : std_logic;
SIGNAL \mouse1|new_cursor_row[4]~19\ : std_logic;
SIGNAL \mouse1|new_cursor_row[5]~21\ : std_logic;
SIGNAL \mouse1|new_cursor_row[6]~22_combout\ : std_logic;
SIGNAL \mouse1|cursor_row~1_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[6]~23\ : std_logic;
SIGNAL \mouse1|new_cursor_row[7]~24_combout\ : std_logic;
SIGNAL \mouse1|cursor_row~3_combout\ : std_logic;
SIGNAL \mouse1|cursor_row~5_combout\ : std_logic;
SIGNAL \inst12|Add3~1\ : std_logic;
SIGNAL \inst12|Add3~3\ : std_logic;
SIGNAL \inst12|Add3~5\ : std_logic;
SIGNAL \inst12|Add3~6_combout\ : std_logic;
SIGNAL \inst12|SYNC|pixel_row[6]~feeder_combout\ : std_logic;
SIGNAL \inst12|Add3~2_combout\ : std_logic;
SIGNAL \inst12|Add3~0_combout\ : std_logic;
SIGNAL \inst12|SYNC|Add1~6_combout\ : std_logic;
SIGNAL \inst12|SYNC|v_count[3]~10_combout\ : std_logic;
SIGNAL \inst12|LessThan3~1_cout\ : std_logic;
SIGNAL \inst12|LessThan3~3_cout\ : std_logic;
SIGNAL \inst12|LessThan3~5_cout\ : std_logic;
SIGNAL \inst12|LessThan3~7_cout\ : std_logic;
SIGNAL \inst12|LessThan3~9_cout\ : std_logic;
SIGNAL \inst12|LessThan3~11_cout\ : std_logic;
SIGNAL \inst12|LessThan3~13_cout\ : std_logic;
SIGNAL \inst12|LessThan3~15_cout\ : std_logic;
SIGNAL \inst12|LessThan3~16_combout\ : std_logic;
SIGNAL \inst12|Add2~1\ : std_logic;
SIGNAL \inst12|Add2~3\ : std_logic;
SIGNAL \inst12|Add2~5\ : std_logic;
SIGNAL \inst12|Add2~7\ : std_logic;
SIGNAL \inst12|Add2~9\ : std_logic;
SIGNAL \inst12|Add2~10_combout\ : std_logic;
SIGNAL \inst12|Add3~7\ : std_logic;
SIGNAL \inst12|Add3~9\ : std_logic;
SIGNAL \inst12|Add3~10_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[5]~20_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~11_combout\ : std_logic;
SIGNAL \inst12|Add1~1\ : std_logic;
SIGNAL \inst12|Add1~3\ : std_logic;
SIGNAL \inst12|Add1~5\ : std_logic;
SIGNAL \inst12|Add1~7\ : std_logic;
SIGNAL \inst12|Add1~9\ : std_logic;
SIGNAL \inst12|Add1~10_combout\ : std_logic;
SIGNAL \inst12|Ball_on~0_combout\ : std_logic;
SIGNAL \inst12|Add2~8_combout\ : std_logic;
SIGNAL \inst12|Add2~2_combout\ : std_logic;
SIGNAL \mouse1|cursor_row~6_combout\ : std_logic;
SIGNAL \inst12|LessThan2~1_cout\ : std_logic;
SIGNAL \inst12|LessThan2~3_cout\ : std_logic;
SIGNAL \inst12|LessThan2~5_cout\ : std_logic;
SIGNAL \inst12|LessThan2~7_cout\ : std_logic;
SIGNAL \inst12|LessThan2~9_cout\ : std_logic;
SIGNAL \inst12|LessThan2~11_cout\ : std_logic;
SIGNAL \inst12|LessThan2~13_cout\ : std_logic;
SIGNAL \inst12|LessThan2~15_cout\ : std_logic;
SIGNAL \inst12|LessThan2~16_combout\ : std_logic;
SIGNAL \inst12|Red_Data~0_combout\ : std_logic;
SIGNAL \inst12|Red_Data~1_combout\ : std_logic;
SIGNAL \inst12|Red_Data~q\ : std_logic;
SIGNAL \inst12|SYNC|video_on_v~feeder_combout\ : std_logic;
SIGNAL \inst12|SYNC|video_on_v~q\ : std_logic;
SIGNAL \inst12|SYNC|video_on_h~feeder_combout\ : std_logic;
SIGNAL \inst12|SYNC|video_on_h~q\ : std_logic;
SIGNAL \inst12|SYNC|red_out~0_combout\ : std_logic;
SIGNAL \inst12|SYNC|red_out~q\ : std_logic;
SIGNAL \inst12|Add1~6_combout\ : std_logic;
SIGNAL \inst12|Add1~4_combout\ : std_logic;
SIGNAL \inst12|Add1~2_combout\ : std_logic;
SIGNAL \inst12|SYNC|pixel_column[4]~feeder_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~13_combout\ : std_logic;
SIGNAL \inst12|LessThan1~1_cout\ : std_logic;
SIGNAL \inst12|LessThan1~3_cout\ : std_logic;
SIGNAL \inst12|LessThan1~5_cout\ : std_logic;
SIGNAL \inst12|LessThan1~7_cout\ : std_logic;
SIGNAL \inst12|LessThan1~9_cout\ : std_logic;
SIGNAL \inst12|LessThan1~11_cout\ : std_logic;
SIGNAL \inst12|LessThan1~13_cout\ : std_logic;
SIGNAL \inst12|LessThan1~15_cout\ : std_logic;
SIGNAL \inst12|LessThan1~17_cout\ : std_logic;
SIGNAL \inst12|LessThan1~18_combout\ : std_logic;
SIGNAL \inst12|Ball_on~1_combout\ : std_logic;
SIGNAL \inst12|Ball_on~combout\ : std_logic;
SIGNAL \inst12|Green_Data~q\ : std_logic;
SIGNAL \inst12|SYNC|green_out~0_combout\ : std_logic;
SIGNAL \inst12|SYNC|green_out~q\ : std_logic;
SIGNAL \inst12|Blue_Data~0_combout\ : std_logic;
SIGNAL \inst12|Blue_Data~1_combout\ : std_logic;
SIGNAL \inst12|Blue_Data~q\ : std_logic;
SIGNAL \inst12|SYNC|blue_out~0_combout\ : std_logic;
SIGNAL \inst12|SYNC|blue_out~q\ : std_logic;
SIGNAL \inst12|SYNC|process_0~2_combout\ : std_logic;
SIGNAL \inst12|SYNC|process_0~3_combout\ : std_logic;
SIGNAL \inst12|SYNC|process_0~1_combout\ : std_logic;
SIGNAL \inst12|SYNC|process_0~4_combout\ : std_logic;
SIGNAL \inst12|SYNC|horiz_sync~q\ : std_logic;
SIGNAL \inst12|SYNC|horiz_sync_out~feeder_combout\ : std_logic;
SIGNAL \inst12|SYNC|horiz_sync_out~q\ : std_logic;
SIGNAL \inst12|SYNC|process_0~5_combout\ : std_logic;
SIGNAL \inst12|SYNC|process_0~6_combout\ : std_logic;
SIGNAL \inst12|SYNC|vert_sync~q\ : std_logic;
SIGNAL \inst12|SYNC|vert_sync_out~feeder_combout\ : std_logic;
SIGNAL \inst12|SYNC|vert_sync_out~q\ : std_logic;
SIGNAL \mouseCol7seg|Mux0~0_combout\ : std_logic;
SIGNAL \mouseCol7seg|Mux1~0_combout\ : std_logic;
SIGNAL \mouseCol7seg|Mux2~0_combout\ : std_logic;
SIGNAL \mouseCol7seg|Mux3~0_combout\ : std_logic;
SIGNAL \mouseCol7seg|Mux4~0_combout\ : std_logic;
SIGNAL \mouseCol7seg|Mux5~0_combout\ : std_logic;
SIGNAL \mouseCol7seg|Mux6~0_combout\ : std_logic;
SIGNAL \mouseRow7seg|Mux0~0_combout\ : std_logic;
SIGNAL \mouseRow7seg|Mux1~0_combout\ : std_logic;
SIGNAL \mouseRow7seg|Mux2~0_combout\ : std_logic;
SIGNAL \mouseRow7seg|Mux3~0_combout\ : std_logic;
SIGNAL \mouseRow7seg|Mux4~0_combout\ : std_logic;
SIGNAL \mouseRow7seg|Mux5~0_combout\ : std_logic;
SIGNAL \mouseRow7seg|Mux6~0_combout\ : std_logic;
SIGNAL \inst12|SYNC|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst12|SYNC|pixel_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst12|SYNC|pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst12|SYNC|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mouse1|SHIFTIN\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \mouse1|INCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mouse1|PACKET_COUNT\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \mouse1|filter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mouse1|cursor_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mouse1|inhibit_wait_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \mouse1|new_cursor_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mouse1|PACKET_CHAR3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mouse1|PACKET_CHAR2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mouse1|OUTCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mouse1|new_cursor_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mouse1|SHIFTOUT\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \PLL1|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \mouse1|PACKET_CHAR1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mouse1|cursor_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mouse1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \mouse1|ALT_INV_send_data~q\ : std_logic;
SIGNAL \mouse1|ALT_INV_mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \mouse1|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;
SIGNAL \mouseRow7seg|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \mouseCol7seg|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

seg0_dec <= ww_seg0_dec;
ww_clk <= clk;
seg1_dec <= ww_seg1_dec;
red_out <= ww_red_out;
green_out <= ww_green_out;
blue_out <= ww_blue_out;
horiz_sync_out <= ww_horiz_sync_out;
vert_sync_out <= ww_vert_sync_out;
r1 <= ww_r1;
g1 <= ww_g1;
b1 <= ww_b1;
seg0 <= ww_seg0;
seg1 <= ww_seg1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

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

-- Location: LCCOMB_X29_Y14_N0
\inst12|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Add0~0_combout\ = (\inst12|SYNC|pixel_column\(4) & (\inst12|SYNC|pixel_column\(3) $ (VCC))) # (!\inst12|SYNC|pixel_column\(4) & (\inst12|SYNC|pixel_column\(3) & VCC))
-- \inst12|Add0~1\ = CARRY((\inst12|SYNC|pixel_column\(4) & \inst12|SYNC|pixel_column\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|pixel_column\(4),
	datab => \inst12|SYNC|pixel_column\(3),
	datad => VCC,
	combout => \inst12|Add0~0_combout\,
	cout => \inst12|Add0~1\);

-- Location: LCCOMB_X29_Y14_N6
\inst12|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Add0~6_combout\ = (\inst12|SYNC|pixel_column\(7) & (!\inst12|Add0~5\)) # (!\inst12|SYNC|pixel_column\(7) & ((\inst12|Add0~5\) # (GND)))
-- \inst12|Add0~7\ = CARRY((!\inst12|Add0~5\) # (!\inst12|SYNC|pixel_column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|pixel_column\(7),
	datad => VCC,
	cin => \inst12|Add0~5\,
	combout => \inst12|Add0~6_combout\,
	cout => \inst12|Add0~7\);

-- Location: LCCOMB_X29_Y14_N8
\inst12|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Add0~8_combout\ = (\inst12|SYNC|pixel_column\(8) & (\inst12|Add0~7\ $ (GND))) # (!\inst12|SYNC|pixel_column\(8) & (!\inst12|Add0~7\ & VCC))
-- \inst12|Add0~9\ = CARRY((\inst12|SYNC|pixel_column\(8) & !\inst12|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|SYNC|pixel_column\(8),
	datad => VCC,
	cin => \inst12|Add0~7\,
	combout => \inst12|Add0~8_combout\,
	cout => \inst12|Add0~9\);

-- Location: LCCOMB_X29_Y14_N10
\inst12|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Add0~10_combout\ = \inst12|Add0~9\ $ (\inst12|SYNC|pixel_column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst12|SYNC|pixel_column\(9),
	cin => \inst12|Add0~9\,
	combout => \inst12|Add0~10_combout\);

-- Location: LCCOMB_X26_Y14_N0
\inst12|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Add1~0_combout\ = (\mouse1|cursor_column\(3) & (\mouse1|cursor_column\(4) $ (VCC))) # (!\mouse1|cursor_column\(3) & (\mouse1|cursor_column\(4) & VCC))
-- \inst12|Add1~1\ = CARRY((\mouse1|cursor_column\(3) & \mouse1|cursor_column\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(3),
	datab => \mouse1|cursor_column\(4),
	datad => VCC,
	combout => \inst12|Add1~0_combout\,
	cout => \inst12|Add1~1\);

-- Location: LCCOMB_X26_Y14_N8
\inst12|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Add1~8_combout\ = (\mouse1|cursor_column\(8) & (\inst12|Add1~7\ $ (GND))) # (!\mouse1|cursor_column\(8) & (!\inst12|Add1~7\ & VCC))
-- \inst12|Add1~9\ = CARRY((\mouse1|cursor_column\(8) & !\inst12|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(8),
	datad => VCC,
	cin => \inst12|Add1~7\,
	combout => \inst12|Add1~8_combout\,
	cout => \inst12|Add1~9\);

-- Location: LCCOMB_X35_Y14_N22
\inst12|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Add3~4_combout\ = (\mouse1|cursor_row\(6) & (\inst12|Add3~3\ $ (GND))) # (!\mouse1|cursor_row\(6) & (!\inst12|Add3~3\ & VCC))
-- \inst12|Add3~5\ = CARRY((\mouse1|cursor_row\(6) & !\inst12|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|cursor_row\(6),
	datad => VCC,
	cin => \inst12|Add3~3\,
	combout => \inst12|Add3~4_combout\,
	cout => \inst12|Add3~5\);

-- Location: LCCOMB_X35_Y14_N26
\inst12|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Add3~8_combout\ = (\mouse1|cursor_row\(8) & (\inst12|Add3~7\ $ (GND))) # (!\mouse1|cursor_row\(8) & (!\inst12|Add3~7\ & VCC))
-- \inst12|Add3~9\ = CARRY((\mouse1|cursor_row\(8) & !\inst12|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|cursor_row\(8),
	datad => VCC,
	cin => \inst12|Add3~7\,
	combout => \inst12|Add3~8_combout\,
	cout => \inst12|Add3~9\);

-- Location: LCCOMB_X35_Y15_N18
\inst12|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Add2~0_combout\ = (\inst12|SYNC|pixel_row\(4) & (\inst12|SYNC|pixel_row\(3) $ (VCC))) # (!\inst12|SYNC|pixel_row\(4) & (\inst12|SYNC|pixel_row\(3) & VCC))
-- \inst12|Add2~1\ = CARRY((\inst12|SYNC|pixel_row\(4) & \inst12|SYNC|pixel_row\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|pixel_row\(4),
	datab => \inst12|SYNC|pixel_row\(3),
	datad => VCC,
	combout => \inst12|Add2~0_combout\,
	cout => \inst12|Add2~1\);

-- Location: LCCOMB_X35_Y15_N22
\inst12|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Add2~4_combout\ = (\inst12|SYNC|pixel_row\(6) & (\inst12|Add2~3\ $ (GND))) # (!\inst12|SYNC|pixel_row\(6) & (!\inst12|Add2~3\ & VCC))
-- \inst12|Add2~5\ = CARRY((\inst12|SYNC|pixel_row\(6) & !\inst12|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|SYNC|pixel_row\(6),
	datad => VCC,
	cin => \inst12|Add2~3\,
	combout => \inst12|Add2~4_combout\,
	cout => \inst12|Add2~5\);

-- Location: LCCOMB_X35_Y15_N24
\inst12|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Add2~6_combout\ = (\inst12|SYNC|pixel_row\(7) & (!\inst12|Add2~5\)) # (!\inst12|SYNC|pixel_row\(7) & ((\inst12|Add2~5\) # (GND)))
-- \inst12|Add2~7\ = CARRY((!\inst12|Add2~5\) # (!\inst12|SYNC|pixel_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|SYNC|pixel_row\(7),
	datad => VCC,
	cin => \inst12|Add2~5\,
	combout => \inst12|Add2~6_combout\,
	cout => \inst12|Add2~7\);

-- Location: LCCOMB_X36_Y16_N10
\inst12|SYNC|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|Add1~4_combout\ = (\inst12|SYNC|v_count\(2) & (\inst12|SYNC|Add1~3\ $ (GND))) # (!\inst12|SYNC|v_count\(2) & (!\inst12|SYNC|Add1~3\ & VCC))
-- \inst12|SYNC|Add1~5\ = CARRY((\inst12|SYNC|v_count\(2) & !\inst12|SYNC|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|v_count\(2),
	datad => VCC,
	cin => \inst12|SYNC|Add1~3\,
	combout => \inst12|SYNC|Add1~4_combout\,
	cout => \inst12|SYNC|Add1~5\);

-- Location: LCCOMB_X36_Y16_N22
\inst12|SYNC|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|Add1~16_combout\ = (\inst12|SYNC|v_count\(8) & (\inst12|SYNC|Add1~15\ $ (GND))) # (!\inst12|SYNC|v_count\(8) & (!\inst12|SYNC|Add1~15\ & VCC))
-- \inst12|SYNC|Add1~17\ = CARRY((\inst12|SYNC|v_count\(8) & !\inst12|SYNC|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|v_count\(8),
	datad => VCC,
	cin => \inst12|SYNC|Add1~15\,
	combout => \inst12|SYNC|Add1~16_combout\,
	cout => \inst12|SYNC|Add1~17\);

-- Location: FF_X35_Y13_N13
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

-- Location: FF_X35_Y13_N11
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

-- Location: LCCOMB_X35_Y13_N10
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

-- Location: LCCOMB_X35_Y13_N12
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

-- Location: FF_X31_Y13_N11
\mouse1|INCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|INCNT~1_combout\,
	ena => \mouse1|INCNT[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|INCNT\(2));

-- Location: LCCOMB_X27_Y14_N12
\mouse1|RECV_UART~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|RECV_UART~1_combout\ = (!\mouse1|new_cursor_column\(4) & !\mouse1|new_cursor_column\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|new_cursor_column\(4),
	datad => \mouse1|new_cursor_column\(5),
	combout => \mouse1|RECV_UART~1_combout\);

-- Location: LCCOMB_X28_Y14_N30
\mouse1|cursor_column[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column[6]~5_combout\ = ((!\mouse1|new_cursor_column\(7) & !\mouse1|new_cursor_column\(8))) # (!\mouse1|new_cursor_column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_column\(7),
	datac => \mouse1|new_cursor_column\(9),
	datad => \mouse1|new_cursor_column\(8),
	combout => \mouse1|cursor_column[6]~5_combout\);

-- Location: LCCOMB_X19_Y25_N22
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

-- Location: LCCOMB_X31_Y13_N10
\mouse1|INCNT~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|INCNT~1_combout\ = (!\mouse1|INCNT\(3) & (\mouse1|INCNT\(2) $ (((\mouse1|INCNT\(0) & \mouse1|INCNT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|INCNT\(3),
	datab => \mouse1|INCNT\(0),
	datac => \mouse1|INCNT\(2),
	datad => \mouse1|INCNT\(1),
	combout => \mouse1|INCNT~1_combout\);

-- Location: FF_X30_Y15_N25
\inst12|SYNC|pixel_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst12|SYNC|pixel_column[7]~feeder_combout\,
	ena => \inst12|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|pixel_column\(7));

-- Location: FF_X30_Y15_N7
\inst12|SYNC|pixel_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst12|SYNC|h_count\(2),
	sload => VCC,
	ena => \inst12|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|pixel_column\(2));

-- Location: FF_X36_Y14_N7
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

-- Location: FF_X36_Y16_N25
\inst12|SYNC|pixel_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst12|SYNC|v_count\(5),
	sload => VCC,
	ena => \inst12|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|pixel_row\(5));

-- Location: FF_X36_Y16_N7
\inst12|SYNC|pixel_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst12|SYNC|v_count\(4),
	sload => VCC,
	ena => \inst12|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|pixel_row\(4));

-- Location: FF_X35_Y14_N31
\inst12|SYNC|pixel_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst12|SYNC|pixel_row[2]~feeder_combout\,
	ena => \inst12|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|pixel_row\(2));

-- Location: FF_X35_Y16_N13
\inst12|SYNC|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst12|SYNC|v_count[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|v_count\(2));

-- Location: FF_X28_Y13_N25
\mouse1|PACKET_CHAR2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_CHAR2[6]~feeder_combout\,
	ena => \mouse1|PACKET_CHAR2[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_CHAR2\(6));

-- Location: FF_X28_Y13_N13
\mouse1|PACKET_CHAR2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_CHAR2[0]~feeder_combout\,
	ena => \mouse1|PACKET_CHAR2[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_CHAR2\(0));

-- Location: FF_X31_Y14_N25
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

-- Location: FF_X31_Y14_N21
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

-- Location: FF_X31_Y14_N27
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

-- Location: FF_X31_Y14_N17
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

-- Location: LCCOMB_X36_Y14_N6
\mouse1|cursor_row~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row~4_combout\ = ((!\mouse1|RECV_UART~8_combout\ & ((\mouse1|new_cursor_row\(5)) # (!\mouse1|cursor_row~0_combout\)))) # (!\mouse1|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row~0_combout\,
	datab => \mouse1|Equal3~0_combout\,
	datac => \mouse1|new_cursor_row\(5),
	datad => \mouse1|RECV_UART~8_combout\,
	combout => \mouse1|cursor_row~4_combout\);

-- Location: LCCOMB_X35_Y16_N8
\inst12|SYNC|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|process_0~7_combout\ = (!\inst12|SYNC|v_count\(4) & (!\inst12|SYNC|v_count\(5) & ((!\inst12|SYNC|v_count\(3)) # (!\inst12|SYNC|v_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|v_count\(2),
	datab => \inst12|SYNC|v_count\(3),
	datac => \inst12|SYNC|v_count\(4),
	datad => \inst12|SYNC|v_count\(5),
	combout => \inst12|SYNC|process_0~7_combout\);

-- Location: LCCOMB_X35_Y16_N12
\inst12|SYNC|v_count[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|v_count[2]~9_combout\ = (\inst12|SYNC|v_count[4]~0_combout\ & ((\inst12|SYNC|Add1~4_combout\) # ((\inst12|SYNC|v_count\(2) & !\inst12|SYNC|v_count[9]~1_combout\)))) # (!\inst12|SYNC|v_count[4]~0_combout\ & (((\inst12|SYNC|v_count\(2) & 
-- !\inst12|SYNC|v_count[9]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|v_count[4]~0_combout\,
	datab => \inst12|SYNC|Add1~4_combout\,
	datac => \inst12|SYNC|v_count\(2),
	datad => \inst12|SYNC|v_count[9]~1_combout\,
	combout => \inst12|SYNC|v_count[2]~9_combout\);

-- Location: FF_X32_Y13_N27
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

-- Location: FF_X35_Y13_N31
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

-- Location: LCCOMB_X32_Y13_N26
\mouse1|OUTCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|OUTCNT~3_combout\ = (!\mouse1|OUTCNT\(0) & (((!\mouse1|OUTCNT\(1) & !\mouse1|OUTCNT\(2))) # (!\mouse1|OUTCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|OUTCNT\(3),
	datab => \mouse1|OUTCNT\(1),
	datac => \mouse1|OUTCNT\(0),
	datad => \mouse1|OUTCNT\(2),
	combout => \mouse1|OUTCNT~3_combout\);

-- Location: LCCOMB_X35_Y13_N30
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

-- Location: LCCOMB_X31_Y14_N16
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

-- Location: LCCOMB_X28_Y13_N12
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

-- Location: LCCOMB_X31_Y14_N26
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

-- Location: LCCOMB_X30_Y15_N24
\inst12|SYNC|pixel_column[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|pixel_column[7]~feeder_combout\ = \inst12|SYNC|h_count\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|SYNC|h_count\(7),
	combout => \inst12|SYNC|pixel_column[7]~feeder_combout\);

-- Location: LCCOMB_X35_Y14_N30
\inst12|SYNC|pixel_row[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|pixel_row[2]~feeder_combout\ = \inst12|SYNC|v_count\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|SYNC|v_count\(2),
	combout => \inst12|SYNC|pixel_row[2]~feeder_combout\);

-- Location: LCCOMB_X31_Y14_N20
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

-- Location: LCCOMB_X31_Y14_N24
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

-- Location: LCCOMB_X28_Y13_N24
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

-- Location: IOOBUF_X23_Y29_N9
\seg0_dec~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mouse1|left_button~q\,
	devoe => ww_devoe,
	o => ww_seg0_dec);

-- Location: IOOBUF_X26_Y29_N30
\seg1_dec~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mouse1|right_button~q\,
	devoe => ww_devoe,
	o => ww_seg1_dec);

-- Location: IOOBUF_X41_Y25_N2
\red_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|SYNC|red_out~q\,
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
	i => \inst12|SYNC|green_out~q\,
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
	i => \inst12|SYNC|blue_out~q\,
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
	i => \inst12|SYNC|horiz_sync_out~q\,
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
	i => \inst12|SYNC|vert_sync_out~q\,
	devoe => ww_devoe,
	o => ww_vert_sync_out);

-- Location: IOOBUF_X41_Y21_N23
\r1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|SYNC|red_out~q\,
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
	i => \inst12|SYNC|green_out~q\,
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
	i => \inst12|SYNC|blue_out~q\,
	devoe => ww_devoe,
	o => ww_b1);

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

-- Location: LCCOMB_X19_Y25_N18
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

-- Location: FF_X19_Y25_N19
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

-- Location: LCCOMB_X19_Y25_N16
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

-- Location: FF_X19_Y25_N17
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

-- Location: LCCOMB_X19_Y25_N20
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

-- Location: FF_X19_Y25_N21
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

-- Location: LCCOMB_X19_Y25_N8
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

-- Location: FF_X19_Y25_N9
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

-- Location: FF_X19_Y25_N25
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

-- Location: LCCOMB_X19_Y25_N28
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

-- Location: FF_X19_Y25_N29
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

-- Location: LCCOMB_X19_Y25_N26
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

-- Location: FF_X19_Y25_N27
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

-- Location: FF_X19_Y25_N13
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

-- Location: LCCOMB_X19_Y25_N12
\mouse1|MOUSE_CLK_FILTER~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|MOUSE_CLK_FILTER~0_combout\ = (\mouse1|filter\(4) & ((\mouse1|filter\(7)) # (!\mouse1|filter\(2)))) # (!\mouse1|filter\(4) & (\mouse1|filter\(7) & !\mouse1|filter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|filter\(4),
	datac => \mouse1|filter\(7),
	datad => \mouse1|filter\(2),
	combout => \mouse1|MOUSE_CLK_FILTER~0_combout\);

-- Location: LCCOMB_X19_Y25_N10
\mouse1|MOUSE_CLK_FILTER~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|MOUSE_CLK_FILTER~2_combout\ = (\mouse1|filter\(0) & ((\mouse1|MOUSE_CLK_FILTER~q\) # ((\mouse1|filter\(1) & \mouse1|filter\(6))))) # (!\mouse1|filter\(0) & (\mouse1|MOUSE_CLK_FILTER~q\ & ((\mouse1|filter\(1)) # (\mouse1|filter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|filter\(0),
	datab => \mouse1|filter\(1),
	datac => \mouse1|filter\(6),
	datad => \mouse1|MOUSE_CLK_FILTER~q\,
	combout => \mouse1|MOUSE_CLK_FILTER~2_combout\);

-- Location: LCCOMB_X19_Y25_N6
\mouse1|MOUSE_CLK_FILTER~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|MOUSE_CLK_FILTER~3_combout\ = (\mouse1|MOUSE_CLK_FILTER~1_combout\ & ((\mouse1|MOUSE_CLK_FILTER~q\) # ((\mouse1|MOUSE_CLK_FILTER~0_combout\ & \mouse1|MOUSE_CLK_FILTER~2_combout\)))) # (!\mouse1|MOUSE_CLK_FILTER~1_combout\ & 
-- (\mouse1|MOUSE_CLK_FILTER~q\ & ((\mouse1|MOUSE_CLK_FILTER~0_combout\) # (\mouse1|MOUSE_CLK_FILTER~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|MOUSE_CLK_FILTER~1_combout\,
	datab => \mouse1|MOUSE_CLK_FILTER~0_combout\,
	datac => \mouse1|MOUSE_CLK_FILTER~q\,
	datad => \mouse1|MOUSE_CLK_FILTER~2_combout\,
	combout => \mouse1|MOUSE_CLK_FILTER~3_combout\);

-- Location: FF_X19_Y25_N7
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

-- Location: CLKCTRL_G13
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

-- Location: LCCOMB_X33_Y13_N24
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

-- Location: LCCOMB_X35_Y13_N6
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

-- Location: FF_X35_Y13_N7
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

-- Location: LCCOMB_X35_Y13_N8
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

-- Location: FF_X35_Y13_N9
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

-- Location: LCCOMB_X35_Y13_N14
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

-- Location: FF_X35_Y13_N15
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

-- Location: LCCOMB_X35_Y13_N16
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

-- Location: FF_X35_Y13_N17
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

-- Location: LCCOMB_X35_Y13_N18
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

-- Location: FF_X35_Y13_N19
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

-- Location: LCCOMB_X35_Y13_N20
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

-- Location: FF_X35_Y13_N21
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

-- Location: LCCOMB_X35_Y13_N22
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

-- Location: LCCOMB_X35_Y13_N24
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

-- Location: FF_X35_Y13_N25
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

-- Location: LCCOMB_X35_Y13_N28
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

-- Location: FF_X35_Y13_N29
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

-- Location: LCCOMB_X32_Y13_N4
\mouse1|OUTCNT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|OUTCNT~0_combout\ = (\mouse1|OUTCNT\(1) & (\mouse1|OUTCNT\(0) & (!\mouse1|OUTCNT\(3) & \mouse1|OUTCNT\(2)))) # (!\mouse1|OUTCNT\(1) & (((\mouse1|OUTCNT\(3) & !\mouse1|OUTCNT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|OUTCNT\(0),
	datab => \mouse1|OUTCNT\(1),
	datac => \mouse1|OUTCNT\(3),
	datad => \mouse1|OUTCNT\(2),
	combout => \mouse1|OUTCNT~0_combout\);

-- Location: LCCOMB_X33_Y13_N6
\mouse1|send_char~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|send_char~0_combout\ = (\mouse1|send_char~q\) # ((\mouse1|LessThan0~0_combout\ & \mouse1|mouse_state.WAIT_OUTPUT_READY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|LessThan0~0_combout\,
	datac => \mouse1|send_char~q\,
	datad => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \mouse1|send_char~0_combout\);

-- Location: FF_X33_Y13_N7
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

-- Location: LCCOMB_X32_Y13_N28
\mouse1|output_ready~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|output_ready~0_combout\ = (\mouse1|mouse_state.WAIT_OUTPUT_READY~q\ & !\mouse1|send_char~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \mouse1|send_char~q\,
	combout => \mouse1|output_ready~0_combout\);

-- Location: FF_X32_Y13_N5
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

-- Location: LCCOMB_X32_Y13_N24
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

-- Location: FF_X32_Y13_N25
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

-- Location: LCCOMB_X32_Y13_N18
\mouse1|OUTCNT~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|OUTCNT~1_combout\ = (!\mouse1|OUTCNT\(3) & (\mouse1|OUTCNT\(2) $ (((\mouse1|OUTCNT\(0) & \mouse1|OUTCNT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|OUTCNT\(0),
	datab => \mouse1|OUTCNT\(1),
	datac => \mouse1|OUTCNT\(2),
	datad => \mouse1|OUTCNT\(3),
	combout => \mouse1|OUTCNT~1_combout\);

-- Location: FF_X32_Y13_N19
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

-- Location: LCCOMB_X32_Y13_N14
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

-- Location: LCCOMB_X32_Y13_N0
\mouse1|output_ready~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|output_ready~feeder_combout\ = \mouse1|LessThan0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|LessThan0~0_combout\,
	combout => \mouse1|output_ready~feeder_combout\);

-- Location: FF_X32_Y13_N1
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

-- Location: LCCOMB_X32_Y13_N20
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

-- Location: FF_X32_Y13_N21
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

-- Location: LCCOMB_X32_Y13_N30
\mouse1|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|Selector4~0_combout\ = (\mouse1|iready_set~q\ & (\mouse1|mouse_state.WAIT_OUTPUT_READY~q\ & ((\mouse1|output_ready~q\)))) # (!\mouse1|iready_set~q\ & ((\mouse1|mouse_state.WAIT_CMD_ACK~q\) # ((\mouse1|mouse_state.WAIT_OUTPUT_READY~q\ & 
-- \mouse1|output_ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|iready_set~q\,
	datab => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \mouse1|mouse_state.WAIT_CMD_ACK~q\,
	datad => \mouse1|output_ready~q\,
	combout => \mouse1|Selector4~0_combout\);

-- Location: FF_X32_Y13_N31
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

-- Location: LCCOMB_X31_Y13_N28
\mouse1|INCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|INCNT~3_combout\ = (!\mouse1|INCNT\(3) & (\mouse1|INCNT\(0) $ (\mouse1|INCNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|INCNT\(0),
	datac => \mouse1|INCNT\(1),
	datad => \mouse1|INCNT\(3),
	combout => \mouse1|INCNT~3_combout\);

-- Location: LCCOMB_X31_Y13_N8
\mouse1|INCNT[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|INCNT[3]~2_combout\ = (\mouse1|READ_CHAR~q\ & !\mouse1|mouse_state.WAIT_OUTPUT_READY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|READ_CHAR~q\,
	datad => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \mouse1|INCNT[3]~2_combout\);

-- Location: FF_X31_Y13_N29
\mouse1|INCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|INCNT~3_combout\,
	ena => \mouse1|INCNT[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|INCNT\(1));

-- Location: LCCOMB_X31_Y13_N30
\mouse1|INCNT~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|INCNT~4_combout\ = (!\mouse1|INCNT\(0) & (((!\mouse1|INCNT\(2) & !\mouse1|INCNT\(1))) # (!\mouse1|INCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|INCNT\(2),
	datab => \mouse1|INCNT\(3),
	datac => \mouse1|INCNT\(0),
	datad => \mouse1|INCNT\(1),
	combout => \mouse1|INCNT~4_combout\);

-- Location: FF_X31_Y13_N31
\mouse1|INCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|INCNT~4_combout\,
	ena => \mouse1|INCNT[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|INCNT\(0));

-- Location: LCCOMB_X31_Y13_N4
\mouse1|INCNT~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|INCNT~5_combout\ = (\mouse1|INCNT\(2) & (\mouse1|INCNT\(0) & (!\mouse1|INCNT\(3) & \mouse1|INCNT\(1)))) # (!\mouse1|INCNT\(2) & (!\mouse1|INCNT\(0) & (\mouse1|INCNT\(3) & !\mouse1|INCNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|INCNT\(2),
	datab => \mouse1|INCNT\(0),
	datac => \mouse1|INCNT\(3),
	datad => \mouse1|INCNT\(1),
	combout => \mouse1|INCNT~5_combout\);

-- Location: FF_X31_Y13_N5
\mouse1|INCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|INCNT~5_combout\,
	ena => \mouse1|INCNT[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|INCNT\(3));

-- Location: LCCOMB_X31_Y13_N6
\mouse1|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|LessThan1~0_combout\ = ((!\mouse1|INCNT\(2) & (!\mouse1|INCNT\(0) & !\mouse1|INCNT\(1)))) # (!\mouse1|INCNT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|INCNT\(2),
	datab => \mouse1|INCNT\(3),
	datac => \mouse1|INCNT\(0),
	datad => \mouse1|INCNT\(1),
	combout => \mouse1|LessThan1~0_combout\);

-- Location: LCCOMB_X31_Y14_N4
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

-- Location: FF_X31_Y14_N5
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

-- Location: LCCOMB_X29_Y13_N18
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

-- Location: FF_X29_Y13_N19
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

-- Location: LCCOMB_X29_Y13_N8
\mouse1|mouse_state.INPUT_PACKETS~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|mouse_state.INPUT_PACKETS~0_combout\ = (\mouse1|mouse_state.INPUT_PACKETS~q\) # ((\mouse1|mouse_state.WAIT_CMD_ACK~q\ & \mouse1|iready_set~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|mouse_state.WAIT_CMD_ACK~q\,
	datac => \mouse1|mouse_state.INPUT_PACKETS~q\,
	datad => \mouse1|iready_set~q\,
	combout => \mouse1|mouse_state.INPUT_PACKETS~0_combout\);

-- Location: FF_X29_Y13_N9
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

-- Location: LCCOMB_X32_Y13_N16
\mouse1|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|Selector6~0_combout\ = (\mouse1|send_data~q\ & ((\mouse1|mouse_state.INPUT_PACKETS~q\) # (!\mouse1|mouse_state.INHIBIT_TRANS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|mouse_state.INHIBIT_TRANS~q\,
	datac => \mouse1|send_data~q\,
	datad => \mouse1|mouse_state.INPUT_PACKETS~q\,
	combout => \mouse1|Selector6~0_combout\);

-- Location: FF_X35_Y13_N23
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

-- Location: LCCOMB_X35_Y13_N26
\mouse1|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|Selector1~0_combout\ = (\mouse1|inhibit_wait_count\(10) & (\mouse1|inhibit_wait_count\(9) & !\mouse1|mouse_state.INHIBIT_TRANS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|inhibit_wait_count\(10),
	datac => \mouse1|inhibit_wait_count\(9),
	datad => \mouse1|mouse_state.INHIBIT_TRANS~q\,
	combout => \mouse1|Selector1~0_combout\);

-- Location: FF_X35_Y13_N27
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

-- Location: FF_X32_Y13_N15
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

-- Location: LCCOMB_X32_Y13_N22
\mouse1|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|Selector6~1_combout\ = (\mouse1|Selector6~0_combout\) # ((\mouse1|mouse_state.LOAD_COMMAND~q\) # (\mouse1|mouse_state.LOAD_COMMAND2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|Selector6~0_combout\,
	datac => \mouse1|mouse_state.LOAD_COMMAND~q\,
	datad => \mouse1|mouse_state.LOAD_COMMAND2~q\,
	combout => \mouse1|Selector6~1_combout\);

-- Location: FF_X32_Y13_N23
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

-- Location: LCCOMB_X33_Y13_N20
\mouse1|MOUSE_DATA_BUF~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|MOUSE_DATA_BUF~0_combout\ = (!\mouse1|send_char~q\ & (\mouse1|mouse_state.WAIT_OUTPUT_READY~q\ & !\mouse1|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|send_char~q\,
	datab => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \mouse1|LessThan0~0_combout\,
	combout => \mouse1|MOUSE_DATA_BUF~0_combout\);

-- Location: FF_X33_Y13_N25
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

-- Location: LCCOMB_X33_Y13_N18
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

-- Location: FF_X33_Y13_N19
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

-- Location: LCCOMB_X33_Y13_N12
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

-- Location: FF_X33_Y13_N13
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

-- Location: LCCOMB_X33_Y13_N22
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

-- Location: FF_X33_Y13_N23
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

-- Location: LCCOMB_X33_Y13_N28
\mouse1|SHIFTOUT[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|SHIFTOUT[5]~feeder_combout\ = \mouse1|SHIFTOUT\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|SHIFTOUT\(6),
	combout => \mouse1|SHIFTOUT[5]~feeder_combout\);

-- Location: FF_X33_Y13_N29
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

-- Location: LCCOMB_X33_Y13_N2
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

-- Location: FF_X33_Y13_N3
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

-- Location: LCCOMB_X33_Y13_N0
\mouse1|SHIFTOUT[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|SHIFTOUT[3]~1_combout\ = !\mouse1|SHIFTOUT\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|SHIFTOUT\(4),
	combout => \mouse1|SHIFTOUT[3]~1_combout\);

-- Location: FF_X33_Y13_N1
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

-- Location: LCCOMB_X33_Y13_N10
\mouse1|SHIFTOUT[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|SHIFTOUT[2]~0_combout\ = !\mouse1|SHIFTOUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|SHIFTOUT\(3),
	combout => \mouse1|SHIFTOUT[2]~0_combout\);

-- Location: FF_X33_Y13_N11
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

-- Location: LCCOMB_X33_Y13_N4
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

-- Location: FF_X33_Y13_N5
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

-- Location: FF_X33_Y13_N21
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

-- Location: LCCOMB_X35_Y13_N4
\mouse1|WideOr4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|WideOr4~combout\ = (\mouse1|mouse_state.LOAD_COMMAND~q\) # ((\mouse1|mouse_state.LOAD_COMMAND2~q\) # (!\mouse1|mouse_state.INHIBIT_TRANS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|mouse_state.LOAD_COMMAND~q\,
	datac => \mouse1|mouse_state.LOAD_COMMAND2~q\,
	datad => \mouse1|mouse_state.INHIBIT_TRANS~q\,
	combout => \mouse1|WideOr4~combout\);

-- Location: LCCOMB_X30_Y13_N8
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

-- Location: LCCOMB_X30_Y13_N20
\mouse1|SHIFTIN[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|SHIFTIN[0]~0_combout\ = (\mouse1|LessThan1~0_combout\ & (!\mouse1|mouse_state.WAIT_OUTPUT_READY~q\ & \mouse1|READ_CHAR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|LessThan1~0_combout\,
	datab => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \mouse1|READ_CHAR~q\,
	combout => \mouse1|SHIFTIN[0]~0_combout\);

-- Location: FF_X30_Y13_N9
\mouse1|SHIFTIN[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|SHIFTIN[8]~feeder_combout\,
	ena => \mouse1|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTIN\(8));

-- Location: FF_X30_Y13_N15
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
	ena => \mouse1|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTIN\(7));

-- Location: FF_X30_Y13_N19
\mouse1|SHIFTIN[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \mouse1|SHIFTIN\(7),
	sload => VCC,
	ena => \mouse1|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTIN\(6));

-- Location: LCCOMB_X30_Y13_N12
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

-- Location: FF_X30_Y13_N13
\mouse1|SHIFTIN[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|SHIFTIN[5]~feeder_combout\,
	ena => \mouse1|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTIN\(5));

-- Location: LCCOMB_X30_Y13_N6
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

-- Location: FF_X30_Y13_N7
\mouse1|SHIFTIN[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|SHIFTIN[4]~feeder_combout\,
	ena => \mouse1|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTIN\(4));

-- Location: LCCOMB_X30_Y13_N28
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

-- Location: FF_X30_Y13_N29
\mouse1|SHIFTIN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|SHIFTIN[3]~feeder_combout\,
	ena => \mouse1|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTIN\(3));

-- Location: LCCOMB_X30_Y13_N24
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

-- Location: FF_X30_Y13_N25
\mouse1|SHIFTIN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|SHIFTIN[2]~feeder_combout\,
	ena => \mouse1|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTIN\(2));

-- Location: LCCOMB_X30_Y13_N10
\mouse1|SHIFTIN[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|SHIFTIN[1]~feeder_combout\ = \mouse1|SHIFTIN\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|SHIFTIN\(2),
	combout => \mouse1|SHIFTIN[1]~feeder_combout\);

-- Location: FF_X30_Y13_N11
\mouse1|SHIFTIN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|SHIFTIN[1]~feeder_combout\,
	ena => \mouse1|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTIN\(1));

-- Location: FF_X30_Y13_N21
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
	ena => \mouse1|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTIN\(0));

-- Location: LCCOMB_X30_Y13_N16
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

-- Location: LCCOMB_X31_Y13_N26
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

-- Location: LCCOMB_X31_Y13_N20
\mouse1|PACKET_CHAR2[7]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR2[7]~4_combout\ = (!\mouse1|LessThan1~0_combout\ & (\mouse1|READ_CHAR~q\ & !\mouse1|mouse_state.WAIT_OUTPUT_READY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|LessThan1~0_combout\,
	datac => \mouse1|READ_CHAR~q\,
	datad => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \mouse1|PACKET_CHAR2[7]~4_combout\);

-- Location: FF_X31_Y13_N27
\mouse1|PACKET_COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_COUNT[0]~feeder_combout\,
	ena => \mouse1|PACKET_CHAR2[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_COUNT\(0));

-- Location: LCCOMB_X31_Y13_N14
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

-- Location: LCCOMB_X31_Y13_N24
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

-- Location: FF_X31_Y13_N25
\mouse1|PACKET_COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_COUNT[1]~feeder_combout\,
	ena => \mouse1|PACKET_CHAR2[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_COUNT\(1));

-- Location: LCCOMB_X31_Y13_N22
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

-- Location: LCCOMB_X31_Y13_N16
\mouse1|PACKET_CHAR1[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR1[0]~1_combout\ = (\mouse1|READ_CHAR~q\ & (!\mouse1|mouse_state.WAIT_OUTPUT_READY~q\ & (!\mouse1|PACKET_CHAR1[0]~0_combout\ & !\mouse1|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|READ_CHAR~q\,
	datab => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \mouse1|PACKET_CHAR1[0]~0_combout\,
	datad => \mouse1|LessThan1~0_combout\,
	combout => \mouse1|PACKET_CHAR1[0]~1_combout\);

-- Location: FF_X30_Y13_N17
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

-- Location: LCCOMB_X31_Y14_N22
\mouse1|INCNT[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|INCNT[3]~0_combout\ = (!\mouse1|mouse_state.WAIT_OUTPUT_READY~q\ & ((\mouse_data~input_o\) # (\mouse1|READ_CHAR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse_data~input_o\,
	datac => \mouse1|READ_CHAR~q\,
	datad => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \mouse1|INCNT[3]~0_combout\);

-- Location: LCCOMB_X31_Y13_N12
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

-- Location: LCCOMB_X31_Y14_N12
\mouse1|left_button~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|left_button~0_combout\ = (!\mouse1|LessThan1~0_combout\ & (\mouse1|READ_CHAR~q\ & (\mouse1|INCNT[3]~0_combout\ & !\mouse1|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|LessThan1~0_combout\,
	datab => \mouse1|READ_CHAR~q\,
	datac => \mouse1|INCNT[3]~0_combout\,
	datad => \mouse1|Equal4~0_combout\,
	combout => \mouse1|left_button~0_combout\);

-- Location: FF_X31_Y14_N29
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
	ena => \mouse1|left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|left_button~q\);

-- Location: FF_X30_Y13_N27
\mouse1|PACKET_CHAR1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \mouse1|SHIFTIN\(1),
	sload => VCC,
	ena => \mouse1|PACKET_CHAR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_CHAR1\(1));

-- Location: LCCOMB_X31_Y14_N10
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

-- Location: FF_X31_Y14_N11
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

-- Location: LCCOMB_X28_Y13_N14
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

-- Location: LCCOMB_X31_Y13_N18
\mouse1|PACKET_CHAR2[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR2[7]~2_combout\ = (!\mouse1|PACKET_COUNT\(0) & \mouse1|PACKET_COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|PACKET_COUNT\(0),
	datad => \mouse1|PACKET_COUNT\(1),
	combout => \mouse1|PACKET_CHAR2[7]~2_combout\);

-- Location: LCCOMB_X28_Y13_N20
\mouse1|PACKET_CHAR2[7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR2[7]~3_combout\ = (!\mouse1|mouse_state.WAIT_OUTPUT_READY~q\ & (!\mouse1|LessThan1~0_combout\ & (\mouse1|PACKET_CHAR2[7]~2_combout\ & \mouse1|READ_CHAR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \mouse1|LessThan1~0_combout\,
	datac => \mouse1|PACKET_CHAR2[7]~2_combout\,
	datad => \mouse1|READ_CHAR~q\,
	combout => \mouse1|PACKET_CHAR2[7]~3_combout\);

-- Location: FF_X28_Y13_N15
\mouse1|PACKET_CHAR2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_CHAR2[7]~feeder_combout\,
	ena => \mouse1|PACKET_CHAR2[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_CHAR2\(7));

-- Location: LCCOMB_X28_Y13_N6
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

-- Location: FF_X28_Y13_N7
\mouse1|PACKET_CHAR2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_CHAR2[5]~feeder_combout\,
	ena => \mouse1|PACKET_CHAR2[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_CHAR2\(5));

-- Location: LCCOMB_X28_Y13_N0
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

-- Location: FF_X28_Y13_N1
\mouse1|PACKET_CHAR2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_CHAR2[4]~feeder_combout\,
	ena => \mouse1|PACKET_CHAR2[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_CHAR2\(4));

-- Location: LCCOMB_X28_Y13_N22
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

-- Location: FF_X28_Y13_N23
\mouse1|PACKET_CHAR2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_CHAR2[3]~feeder_combout\,
	ena => \mouse1|PACKET_CHAR2[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_CHAR2\(3));

-- Location: LCCOMB_X28_Y13_N16
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

-- Location: FF_X28_Y13_N17
\mouse1|PACKET_CHAR2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_CHAR2[2]~feeder_combout\,
	ena => \mouse1|PACKET_CHAR2[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_CHAR2\(2));

-- Location: LCCOMB_X28_Y13_N18
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

-- Location: FF_X28_Y13_N19
\mouse1|PACKET_CHAR2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|PACKET_CHAR2[1]~feeder_combout\,
	ena => \mouse1|PACKET_CHAR2[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_CHAR2\(1));

-- Location: LCCOMB_X28_Y14_N8
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

-- Location: LCCOMB_X32_Y14_N4
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

-- Location: LCCOMB_X32_Y13_N6
\mouse1|new_cursor_column[9]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_column[9]~24_combout\ = (!\mouse1|mouse_state.WAIT_OUTPUT_READY~q\ & (\mouse1|READ_CHAR~q\ & (!\mouse1|LessThan1~0_combout\ & !\mouse1|Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \mouse1|READ_CHAR~q\,
	datac => \mouse1|LessThan1~0_combout\,
	datad => \mouse1|Add3~0_combout\,
	combout => \mouse1|new_cursor_column[9]~24_combout\);

-- Location: FF_X28_Y14_N9
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
	ena => \mouse1|new_cursor_column[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(0));

-- Location: LCCOMB_X28_Y14_N24
\mouse1|new_cursor_column[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_column[8]~27_combout\ = ((\mouse1|cursor_column\(8) $ (\mouse1|PACKET_CHAR2\(7) $ (!\mouse1|new_cursor_column[7]~26\)))) # (GND)
-- \mouse1|new_cursor_column[8]~28\ = CARRY((\mouse1|cursor_column\(8) & ((\mouse1|PACKET_CHAR2\(7)) # (!\mouse1|new_cursor_column[7]~26\))) # (!\mouse1|cursor_column\(8) & (\mouse1|PACKET_CHAR2\(7) & !\mouse1|new_cursor_column[7]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(8),
	datab => \mouse1|PACKET_CHAR2\(7),
	datad => VCC,
	cin => \mouse1|new_cursor_column[7]~26\,
	combout => \mouse1|new_cursor_column[8]~27_combout\,
	cout => \mouse1|new_cursor_column[8]~28\);

-- Location: FF_X28_Y14_N25
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
	ena => \mouse1|new_cursor_column[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(8));

-- Location: LCCOMB_X28_Y14_N14
\mouse1|new_cursor_column[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_column[3]~16_combout\ = (\mouse1|cursor_column\(3) & ((\mouse1|PACKET_CHAR2\(3) & (\mouse1|new_cursor_column[2]~15\ & VCC)) # (!\mouse1|PACKET_CHAR2\(3) & (!\mouse1|new_cursor_column[2]~15\)))) # (!\mouse1|cursor_column\(3) & 
-- ((\mouse1|PACKET_CHAR2\(3) & (!\mouse1|new_cursor_column[2]~15\)) # (!\mouse1|PACKET_CHAR2\(3) & ((\mouse1|new_cursor_column[2]~15\) # (GND)))))
-- \mouse1|new_cursor_column[3]~17\ = CARRY((\mouse1|cursor_column\(3) & (!\mouse1|PACKET_CHAR2\(3) & !\mouse1|new_cursor_column[2]~15\)) # (!\mouse1|cursor_column\(3) & ((!\mouse1|new_cursor_column[2]~15\) # (!\mouse1|PACKET_CHAR2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(3),
	datab => \mouse1|PACKET_CHAR2\(3),
	datad => VCC,
	cin => \mouse1|new_cursor_column[2]~15\,
	combout => \mouse1|new_cursor_column[3]~16_combout\,
	cout => \mouse1|new_cursor_column[3]~17\);

-- Location: FF_X28_Y14_N15
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
	ena => \mouse1|new_cursor_column[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(3));

-- Location: LCCOMB_X28_Y14_N12
\mouse1|new_cursor_column[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_column[2]~14_combout\ = ((\mouse1|cursor_column\(2) $ (\mouse1|PACKET_CHAR2\(2) $ (!\mouse1|new_cursor_column[1]~13\)))) # (GND)
-- \mouse1|new_cursor_column[2]~15\ = CARRY((\mouse1|cursor_column\(2) & ((\mouse1|PACKET_CHAR2\(2)) # (!\mouse1|new_cursor_column[1]~13\))) # (!\mouse1|cursor_column\(2) & (\mouse1|PACKET_CHAR2\(2) & !\mouse1|new_cursor_column[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(2),
	datab => \mouse1|PACKET_CHAR2\(2),
	datad => VCC,
	cin => \mouse1|new_cursor_column[1]~13\,
	combout => \mouse1|new_cursor_column[2]~14_combout\,
	cout => \mouse1|new_cursor_column[2]~15\);

-- Location: FF_X28_Y14_N13
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
	ena => \mouse1|new_cursor_column[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(2));

-- Location: LCCOMB_X28_Y14_N28
\mouse1|RECV_UART~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|RECV_UART~0_combout\ = (!\mouse1|new_cursor_column\(1) & (!\mouse1|new_cursor_column\(6) & (!\mouse1|new_cursor_column\(3) & !\mouse1|new_cursor_column\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_column\(1),
	datab => \mouse1|new_cursor_column\(6),
	datac => \mouse1|new_cursor_column\(3),
	datad => \mouse1|new_cursor_column\(2),
	combout => \mouse1|RECV_UART~0_combout\);

-- Location: LCCOMB_X27_Y14_N14
\mouse1|cursor_column[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column[6]~4_combout\ = (\mouse1|RECV_UART~1_combout\ & (!\mouse1|new_cursor_column\(8) & (!\mouse1|new_cursor_column\(0) & \mouse1|RECV_UART~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|RECV_UART~1_combout\,
	datab => \mouse1|new_cursor_column\(8),
	datac => \mouse1|new_cursor_column\(0),
	datad => \mouse1|RECV_UART~0_combout\,
	combout => \mouse1|cursor_column[6]~4_combout\);

-- Location: LCCOMB_X31_Y13_N0
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

-- Location: LCCOMB_X28_Y14_N22
\mouse1|new_cursor_column[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_column[7]~25_combout\ = (\mouse1|cursor_column\(7) & ((\mouse1|PACKET_CHAR2\(7) & (\mouse1|new_cursor_column[6]~23\ & VCC)) # (!\mouse1|PACKET_CHAR2\(7) & (!\mouse1|new_cursor_column[6]~23\)))) # (!\mouse1|cursor_column\(7) & 
-- ((\mouse1|PACKET_CHAR2\(7) & (!\mouse1|new_cursor_column[6]~23\)) # (!\mouse1|PACKET_CHAR2\(7) & ((\mouse1|new_cursor_column[6]~23\) # (GND)))))
-- \mouse1|new_cursor_column[7]~26\ = CARRY((\mouse1|cursor_column\(7) & (!\mouse1|PACKET_CHAR2\(7) & !\mouse1|new_cursor_column[6]~23\)) # (!\mouse1|cursor_column\(7) & ((!\mouse1|new_cursor_column[6]~23\) # (!\mouse1|PACKET_CHAR2\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(7),
	datab => \mouse1|PACKET_CHAR2\(7),
	datad => VCC,
	cin => \mouse1|new_cursor_column[6]~23\,
	combout => \mouse1|new_cursor_column[7]~25_combout\,
	cout => \mouse1|new_cursor_column[7]~26\);

-- Location: FF_X28_Y14_N23
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
	ena => \mouse1|new_cursor_column[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(7));

-- Location: LCCOMB_X27_Y14_N30
\mouse1|cursor_column~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~8_combout\ = (!\mouse1|cursor_column[6]~5_combout\ & (\mouse1|Equal3~0_combout\ & (!\mouse1|cursor_column[6]~4_combout\ & !\mouse1|RECV_UART~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column[6]~5_combout\,
	datab => \mouse1|Equal3~0_combout\,
	datac => \mouse1|cursor_column[6]~4_combout\,
	datad => \mouse1|RECV_UART~5_combout\,
	combout => \mouse1|cursor_column~8_combout\);

-- Location: LCCOMB_X27_Y14_N20
\mouse1|cursor_column~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~9_combout\ = (\mouse1|cursor_column~8_combout\) # ((\mouse1|new_cursor_column\(7) & \mouse1|cursor_column[6]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|new_cursor_column\(7),
	datac => \mouse1|cursor_column~8_combout\,
	datad => \mouse1|cursor_column[6]~6_combout\,
	combout => \mouse1|cursor_column~9_combout\);

-- Location: LCCOMB_X31_Y14_N14
\mouse1|cursor_column[9]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column[9]~7_combout\ = (!\mouse1|PACKET_COUNT\(1) & (\mouse1|READ_CHAR~q\ & (\mouse1|INCNT[3]~0_combout\ & !\mouse1|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|PACKET_COUNT\(1),
	datab => \mouse1|READ_CHAR~q\,
	datac => \mouse1|INCNT[3]~0_combout\,
	datad => \mouse1|LessThan1~0_combout\,
	combout => \mouse1|cursor_column[9]~7_combout\);

-- Location: FF_X27_Y14_N21
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

-- Location: LCCOMB_X27_Y14_N6
\mouse1|cursor_column~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~18_combout\ = (\mouse1|PACKET_COUNT\(0) & (\mouse1|new_cursor_column\(8) & ((\mouse1|cursor_column[6]~6_combout\)))) # (!\mouse1|PACKET_COUNT\(0) & (((\mouse1|new_cursor_column\(8) & \mouse1|cursor_column[6]~6_combout\)) # 
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
	datad => \mouse1|cursor_column[6]~6_combout\,
	combout => \mouse1|cursor_column~18_combout\);

-- Location: FF_X27_Y14_N7
\mouse1|cursor_column[8]\ : dffeas
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
	q => \mouse1|cursor_column\(8));

-- Location: LCCOMB_X27_Y14_N8
\mouse1|RECV_UART~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|RECV_UART~2_combout\ = (!\mouse1|cursor_column\(7) & (!\mouse1|cursor_column\(8) & !\mouse1|cursor_column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|cursor_column\(7),
	datac => \mouse1|cursor_column\(8),
	datad => \mouse1|cursor_column\(9),
	combout => \mouse1|RECV_UART~2_combout\);

-- Location: LCCOMB_X28_Y14_N16
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

-- Location: FF_X28_Y14_N17
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
	ena => \mouse1|new_cursor_column[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(4));

-- Location: LCCOMB_X27_Y14_N4
\mouse1|LessThan9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|LessThan9~0_combout\ = (\mouse1|new_cursor_column\(5)) # ((\mouse1|new_cursor_column\(4)) # ((\mouse1|new_cursor_column\(0)) # (!\mouse1|RECV_UART~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_column\(5),
	datab => \mouse1|new_cursor_column\(4),
	datac => \mouse1|new_cursor_column\(0),
	datad => \mouse1|RECV_UART~0_combout\,
	combout => \mouse1|LessThan9~0_combout\);

-- Location: LCCOMB_X28_Y14_N4
\mouse1|RECV_UART~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|RECV_UART~3_combout\ = (\mouse1|new_cursor_column\(8) & (\mouse1|new_cursor_column\(7))) # (!\mouse1|new_cursor_column\(8) & (!\mouse1|new_cursor_column\(7) & \mouse1|RECV_UART~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|new_cursor_column\(8),
	datac => \mouse1|new_cursor_column\(7),
	datad => \mouse1|RECV_UART~0_combout\,
	combout => \mouse1|RECV_UART~3_combout\);

-- Location: LCCOMB_X27_Y14_N10
\mouse1|RECV_UART~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|RECV_UART~4_combout\ = (\mouse1|new_cursor_column\(9)) # ((\mouse1|RECV_UART~3_combout\ & ((\mouse1|RECV_UART~1_combout\) # (\mouse1|new_cursor_column\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|RECV_UART~1_combout\,
	datab => \mouse1|new_cursor_column\(9),
	datac => \mouse1|new_cursor_column\(8),
	datad => \mouse1|RECV_UART~3_combout\,
	combout => \mouse1|RECV_UART~4_combout\);

-- Location: LCCOMB_X27_Y14_N18
\mouse1|RECV_UART~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|RECV_UART~5_combout\ = (\mouse1|RECV_UART~2_combout\ & ((\mouse1|RECV_UART~4_combout\) # ((\mouse1|new_cursor_column\(8) & \mouse1|LessThan9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_column\(8),
	datab => \mouse1|RECV_UART~2_combout\,
	datac => \mouse1|LessThan9~0_combout\,
	datad => \mouse1|RECV_UART~4_combout\,
	combout => \mouse1|RECV_UART~5_combout\);

-- Location: LCCOMB_X27_Y14_N28
\mouse1|cursor_column[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column[6]~6_combout\ = (\mouse1|Equal3~0_combout\ & (!\mouse1|RECV_UART~5_combout\ & ((\mouse1|cursor_column[6]~5_combout\) # (\mouse1|cursor_column[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column[6]~5_combout\,
	datab => \mouse1|cursor_column[6]~4_combout\,
	datac => \mouse1|Equal3~0_combout\,
	datad => \mouse1|RECV_UART~5_combout\,
	combout => \mouse1|cursor_column[6]~6_combout\);

-- Location: LCCOMB_X27_Y14_N22
\mouse1|cursor_column~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~16_combout\ = (\mouse1|new_cursor_column\(0) & \mouse1|cursor_column[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|new_cursor_column\(0),
	datad => \mouse1|cursor_column[6]~6_combout\,
	combout => \mouse1|cursor_column~16_combout\);

-- Location: FF_X27_Y14_N23
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

-- Location: LCCOMB_X28_Y14_N10
\mouse1|new_cursor_column[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_column[1]~12_combout\ = (\mouse1|cursor_column\(1) & ((\mouse1|PACKET_CHAR2\(1) & (\mouse1|new_cursor_column[0]~11\ & VCC)) # (!\mouse1|PACKET_CHAR2\(1) & (!\mouse1|new_cursor_column[0]~11\)))) # (!\mouse1|cursor_column\(1) & 
-- ((\mouse1|PACKET_CHAR2\(1) & (!\mouse1|new_cursor_column[0]~11\)) # (!\mouse1|PACKET_CHAR2\(1) & ((\mouse1|new_cursor_column[0]~11\) # (GND)))))
-- \mouse1|new_cursor_column[1]~13\ = CARRY((\mouse1|cursor_column\(1) & (!\mouse1|PACKET_CHAR2\(1) & !\mouse1|new_cursor_column[0]~11\)) # (!\mouse1|cursor_column\(1) & ((!\mouse1|new_cursor_column[0]~11\) # (!\mouse1|PACKET_CHAR2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(1),
	datab => \mouse1|PACKET_CHAR2\(1),
	datad => VCC,
	cin => \mouse1|new_cursor_column[0]~11\,
	combout => \mouse1|new_cursor_column[1]~12_combout\,
	cout => \mouse1|new_cursor_column[1]~13\);

-- Location: LCCOMB_X28_Y14_N18
\mouse1|new_cursor_column[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_column[5]~20_combout\ = (\mouse1|cursor_column\(5) & ((\mouse1|PACKET_CHAR2\(5) & (\mouse1|new_cursor_column[4]~19\ & VCC)) # (!\mouse1|PACKET_CHAR2\(5) & (!\mouse1|new_cursor_column[4]~19\)))) # (!\mouse1|cursor_column\(5) & 
-- ((\mouse1|PACKET_CHAR2\(5) & (!\mouse1|new_cursor_column[4]~19\)) # (!\mouse1|PACKET_CHAR2\(5) & ((\mouse1|new_cursor_column[4]~19\) # (GND)))))
-- \mouse1|new_cursor_column[5]~21\ = CARRY((\mouse1|cursor_column\(5) & (!\mouse1|PACKET_CHAR2\(5) & !\mouse1|new_cursor_column[4]~19\)) # (!\mouse1|cursor_column\(5) & ((!\mouse1|new_cursor_column[4]~19\) # (!\mouse1|PACKET_CHAR2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(5),
	datab => \mouse1|PACKET_CHAR2\(5),
	datad => VCC,
	cin => \mouse1|new_cursor_column[4]~19\,
	combout => \mouse1|new_cursor_column[5]~20_combout\,
	cout => \mouse1|new_cursor_column[5]~21\);

-- Location: LCCOMB_X28_Y14_N20
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

-- Location: FF_X28_Y14_N21
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
	ena => \mouse1|new_cursor_column[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(6));

-- Location: LCCOMB_X26_Y14_N12
\mouse1|cursor_column~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~17_combout\ = (\mouse1|PACKET_COUNT\(0) & (\mouse1|new_cursor_column\(6) & ((\mouse1|cursor_column[6]~6_combout\)))) # (!\mouse1|PACKET_COUNT\(0) & (((\mouse1|new_cursor_column\(6) & \mouse1|cursor_column[6]~6_combout\)) # 
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
	datad => \mouse1|cursor_column[6]~6_combout\,
	combout => \mouse1|cursor_column~17_combout\);

-- Location: FF_X26_Y14_N13
\mouse1|cursor_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_column~17_combout\,
	ena => \mouse1|cursor_column[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_column\(6));

-- Location: LCCOMB_X28_Y14_N26
\mouse1|new_cursor_column[9]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_column[9]~29_combout\ = \mouse1|PACKET_CHAR2\(7) $ (\mouse1|new_cursor_column[8]~28\ $ (\mouse1|cursor_column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|PACKET_CHAR2\(7),
	datad => \mouse1|cursor_column\(9),
	cin => \mouse1|new_cursor_column[8]~28\,
	combout => \mouse1|new_cursor_column[9]~29_combout\);

-- Location: FF_X28_Y14_N27
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
	ena => \mouse1|new_cursor_column[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(9));

-- Location: LCCOMB_X27_Y14_N24
\mouse1|cursor_column~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~10_combout\ = (\mouse1|cursor_column~8_combout\) # ((\mouse1|new_cursor_column\(9) & \mouse1|cursor_column[6]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|new_cursor_column\(9),
	datac => \mouse1|cursor_column~8_combout\,
	datad => \mouse1|cursor_column[6]~6_combout\,
	combout => \mouse1|cursor_column~10_combout\);

-- Location: FF_X27_Y14_N25
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

-- Location: LCCOMB_X29_Y15_N10
\inst12|SYNC|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|Add0~0_combout\ = \inst12|SYNC|h_count\(0) $ (VCC)
-- \inst12|SYNC|Add0~1\ = CARRY(\inst12|SYNC|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|h_count\(0),
	datad => VCC,
	combout => \inst12|SYNC|Add0~0_combout\,
	cout => \inst12|SYNC|Add0~1\);

-- Location: LCCOMB_X29_Y15_N12
\inst12|SYNC|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|Add0~2_combout\ = (\inst12|SYNC|h_count\(1) & (!\inst12|SYNC|Add0~1\)) # (!\inst12|SYNC|h_count\(1) & ((\inst12|SYNC|Add0~1\) # (GND)))
-- \inst12|SYNC|Add0~3\ = CARRY((!\inst12|SYNC|Add0~1\) # (!\inst12|SYNC|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|SYNC|h_count\(1),
	datad => VCC,
	cin => \inst12|SYNC|Add0~1\,
	combout => \inst12|SYNC|Add0~2_combout\,
	cout => \inst12|SYNC|Add0~3\);

-- Location: FF_X29_Y15_N13
\inst12|SYNC|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst12|SYNC|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|h_count\(1));

-- Location: LCCOMB_X29_Y15_N14
\inst12|SYNC|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|Add0~4_combout\ = (\inst12|SYNC|h_count\(2) & (\inst12|SYNC|Add0~3\ $ (GND))) # (!\inst12|SYNC|h_count\(2) & (!\inst12|SYNC|Add0~3\ & VCC))
-- \inst12|SYNC|Add0~5\ = CARRY((\inst12|SYNC|h_count\(2) & !\inst12|SYNC|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|SYNC|h_count\(2),
	datad => VCC,
	cin => \inst12|SYNC|Add0~3\,
	combout => \inst12|SYNC|Add0~4_combout\,
	cout => \inst12|SYNC|Add0~5\);

-- Location: FF_X29_Y15_N15
\inst12|SYNC|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst12|SYNC|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|h_count\(2));

-- Location: LCCOMB_X29_Y15_N16
\inst12|SYNC|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|Add0~6_combout\ = (\inst12|SYNC|h_count\(3) & (!\inst12|SYNC|Add0~5\)) # (!\inst12|SYNC|h_count\(3) & ((\inst12|SYNC|Add0~5\) # (GND)))
-- \inst12|SYNC|Add0~7\ = CARRY((!\inst12|SYNC|Add0~5\) # (!\inst12|SYNC|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|SYNC|h_count\(3),
	datad => VCC,
	cin => \inst12|SYNC|Add0~5\,
	combout => \inst12|SYNC|Add0~6_combout\,
	cout => \inst12|SYNC|Add0~7\);

-- Location: FF_X29_Y15_N17
\inst12|SYNC|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst12|SYNC|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|h_count\(3));

-- Location: LCCOMB_X29_Y15_N18
\inst12|SYNC|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|Add0~8_combout\ = (\inst12|SYNC|h_count\(4) & (\inst12|SYNC|Add0~7\ $ (GND))) # (!\inst12|SYNC|h_count\(4) & (!\inst12|SYNC|Add0~7\ & VCC))
-- \inst12|SYNC|Add0~9\ = CARRY((\inst12|SYNC|h_count\(4) & !\inst12|SYNC|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|SYNC|h_count\(4),
	datad => VCC,
	cin => \inst12|SYNC|Add0~7\,
	combout => \inst12|SYNC|Add0~8_combout\,
	cout => \inst12|SYNC|Add0~9\);

-- Location: FF_X29_Y15_N19
\inst12|SYNC|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst12|SYNC|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|h_count\(4));

-- Location: LCCOMB_X29_Y15_N20
\inst12|SYNC|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|Add0~10_combout\ = (\inst12|SYNC|h_count\(5) & (!\inst12|SYNC|Add0~9\)) # (!\inst12|SYNC|h_count\(5) & ((\inst12|SYNC|Add0~9\) # (GND)))
-- \inst12|SYNC|Add0~11\ = CARRY((!\inst12|SYNC|Add0~9\) # (!\inst12|SYNC|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|h_count\(5),
	datad => VCC,
	cin => \inst12|SYNC|Add0~9\,
	combout => \inst12|SYNC|Add0~10_combout\,
	cout => \inst12|SYNC|Add0~11\);

-- Location: LCCOMB_X29_Y15_N22
\inst12|SYNC|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|Add0~12_combout\ = (\inst12|SYNC|h_count\(6) & (\inst12|SYNC|Add0~11\ $ (GND))) # (!\inst12|SYNC|h_count\(6) & (!\inst12|SYNC|Add0~11\ & VCC))
-- \inst12|SYNC|Add0~13\ = CARRY((\inst12|SYNC|h_count\(6) & !\inst12|SYNC|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|h_count\(6),
	datad => VCC,
	cin => \inst12|SYNC|Add0~11\,
	combout => \inst12|SYNC|Add0~12_combout\,
	cout => \inst12|SYNC|Add0~13\);

-- Location: LCCOMB_X29_Y15_N24
\inst12|SYNC|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|Add0~14_combout\ = (\inst12|SYNC|h_count\(7) & (!\inst12|SYNC|Add0~13\)) # (!\inst12|SYNC|h_count\(7) & ((\inst12|SYNC|Add0~13\) # (GND)))
-- \inst12|SYNC|Add0~15\ = CARRY((!\inst12|SYNC|Add0~13\) # (!\inst12|SYNC|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|SYNC|h_count\(7),
	datad => VCC,
	cin => \inst12|SYNC|Add0~13\,
	combout => \inst12|SYNC|Add0~14_combout\,
	cout => \inst12|SYNC|Add0~15\);

-- Location: FF_X29_Y15_N25
\inst12|SYNC|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst12|SYNC|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|h_count\(7));

-- Location: LCCOMB_X29_Y15_N26
\inst12|SYNC|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|Add0~16_combout\ = (\inst12|SYNC|h_count\(8) & (\inst12|SYNC|Add0~15\ $ (GND))) # (!\inst12|SYNC|h_count\(8) & (!\inst12|SYNC|Add0~15\ & VCC))
-- \inst12|SYNC|Add0~17\ = CARRY((\inst12|SYNC|h_count\(8) & !\inst12|SYNC|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|SYNC|h_count\(8),
	datad => VCC,
	cin => \inst12|SYNC|Add0~15\,
	combout => \inst12|SYNC|Add0~16_combout\,
	cout => \inst12|SYNC|Add0~17\);

-- Location: LCCOMB_X30_Y15_N28
\inst12|SYNC|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|Equal0~0_combout\ = (\inst12|SYNC|h_count\(0) & (\inst12|SYNC|h_count\(1) & (\inst12|SYNC|h_count\(3) & \inst12|SYNC|h_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|h_count\(0),
	datab => \inst12|SYNC|h_count\(1),
	datac => \inst12|SYNC|h_count\(3),
	datad => \inst12|SYNC|h_count\(4),
	combout => \inst12|SYNC|Equal0~0_combout\);

-- Location: FF_X29_Y15_N23
\inst12|SYNC|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst12|SYNC|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|h_count\(6));

-- Location: LCCOMB_X29_Y15_N8
\inst12|SYNC|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|Equal0~1_combout\ = (!\inst12|SYNC|h_count\(5) & (!\inst12|SYNC|h_count\(7) & (\inst12|SYNC|h_count\(2) & \inst12|SYNC|h_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|h_count\(5),
	datab => \inst12|SYNC|h_count\(7),
	datac => \inst12|SYNC|h_count\(2),
	datad => \inst12|SYNC|h_count\(8),
	combout => \inst12|SYNC|Equal0~1_combout\);

-- Location: LCCOMB_X30_Y15_N22
\inst12|SYNC|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|Equal0~2_combout\ = (\inst12|SYNC|h_count\(9) & (\inst12|SYNC|Equal0~0_combout\ & (!\inst12|SYNC|h_count\(6) & \inst12|SYNC|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|h_count\(9),
	datab => \inst12|SYNC|Equal0~0_combout\,
	datac => \inst12|SYNC|h_count\(6),
	datad => \inst12|SYNC|Equal0~1_combout\,
	combout => \inst12|SYNC|Equal0~2_combout\);

-- Location: LCCOMB_X29_Y15_N2
\inst12|SYNC|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|h_count~1_combout\ = (\inst12|SYNC|Add0~16_combout\ & !\inst12|SYNC|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|SYNC|Add0~16_combout\,
	datad => \inst12|SYNC|Equal0~2_combout\,
	combout => \inst12|SYNC|h_count~1_combout\);

-- Location: FF_X29_Y15_N3
\inst12|SYNC|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst12|SYNC|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|h_count\(8));

-- Location: LCCOMB_X30_Y15_N30
\inst12|SYNC|pixel_column[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|pixel_column[8]~feeder_combout\ = \inst12|SYNC|h_count\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|SYNC|h_count\(8),
	combout => \inst12|SYNC|pixel_column[8]~feeder_combout\);

-- Location: LCCOMB_X30_Y15_N12
\inst12|SYNC|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|process_0~0_combout\ = ((!\inst12|SYNC|h_count\(7) & !\inst12|SYNC|h_count\(8))) # (!\inst12|SYNC|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|h_count\(9),
	datab => \inst12|SYNC|h_count\(7),
	datad => \inst12|SYNC|h_count\(8),
	combout => \inst12|SYNC|process_0~0_combout\);

-- Location: FF_X30_Y15_N31
\inst12|SYNC|pixel_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst12|SYNC|pixel_column[8]~feeder_combout\,
	ena => \inst12|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|pixel_column\(8));

-- Location: FF_X30_Y15_N23
\inst12|SYNC|pixel_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst12|SYNC|h_count\(6),
	sload => VCC,
	ena => \inst12|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|pixel_column\(6));

-- Location: LCCOMB_X29_Y15_N4
\inst12|SYNC|h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|h_count~2_combout\ = (\inst12|SYNC|Add0~10_combout\ & !\inst12|SYNC|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|SYNC|Add0~10_combout\,
	datad => \inst12|SYNC|Equal0~2_combout\,
	combout => \inst12|SYNC|h_count~2_combout\);

-- Location: FF_X29_Y15_N5
\inst12|SYNC|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst12|SYNC|h_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|h_count\(5));

-- Location: FF_X30_Y15_N5
\inst12|SYNC|pixel_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst12|SYNC|h_count\(5),
	sload => VCC,
	ena => \inst12|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|pixel_column\(5));

-- Location: FF_X30_Y15_N21
\inst12|SYNC|pixel_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst12|SYNC|h_count\(3),
	sload => VCC,
	ena => \inst12|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|pixel_column\(3));

-- Location: LCCOMB_X29_Y14_N2
\inst12|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Add0~2_combout\ = (\inst12|SYNC|pixel_column\(5) & (!\inst12|Add0~1\)) # (!\inst12|SYNC|pixel_column\(5) & ((\inst12|Add0~1\) # (GND)))
-- \inst12|Add0~3\ = CARRY((!\inst12|Add0~1\) # (!\inst12|SYNC|pixel_column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|SYNC|pixel_column\(5),
	datad => VCC,
	cin => \inst12|Add0~1\,
	combout => \inst12|Add0~2_combout\,
	cout => \inst12|Add0~3\);

-- Location: LCCOMB_X29_Y14_N4
\inst12|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Add0~4_combout\ = (\inst12|SYNC|pixel_column\(6) & (\inst12|Add0~3\ $ (GND))) # (!\inst12|SYNC|pixel_column\(6) & (!\inst12|Add0~3\ & VCC))
-- \inst12|Add0~5\ = CARRY((\inst12|SYNC|pixel_column\(6) & !\inst12|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|SYNC|pixel_column\(6),
	datad => VCC,
	cin => \inst12|Add0~3\,
	combout => \inst12|Add0~4_combout\,
	cout => \inst12|Add0~5\);

-- Location: LCCOMB_X27_Y14_N0
\mouse1|cursor_column~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~12_combout\ = (\mouse1|new_cursor_column\(4) & \mouse1|cursor_column[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|new_cursor_column\(4),
	datad => \mouse1|cursor_column[6]~6_combout\,
	combout => \mouse1|cursor_column~12_combout\);

-- Location: FF_X27_Y14_N1
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

-- Location: LCCOMB_X27_Y14_N26
\mouse1|cursor_column~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~14_combout\ = (\mouse1|new_cursor_column\(2) & \mouse1|cursor_column[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|new_cursor_column\(2),
	datad => \mouse1|cursor_column[6]~6_combout\,
	combout => \mouse1|cursor_column~14_combout\);

-- Location: FF_X27_Y14_N27
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

-- Location: FF_X28_Y14_N11
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
	ena => \mouse1|new_cursor_column[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(1));

-- Location: LCCOMB_X27_Y14_N16
\mouse1|cursor_column~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~15_combout\ = (\mouse1|new_cursor_column\(1) & \mouse1|cursor_column[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|new_cursor_column\(1),
	datad => \mouse1|cursor_column[6]~6_combout\,
	combout => \mouse1|cursor_column~15_combout\);

-- Location: FF_X27_Y14_N17
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

-- Location: FF_X29_Y15_N11
\inst12|SYNC|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst12|SYNC|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|h_count\(0));

-- Location: FF_X30_Y15_N13
\inst12|SYNC|pixel_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst12|SYNC|h_count\(0),
	sload => VCC,
	ena => \inst12|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|pixel_column\(0));

-- Location: LCCOMB_X29_Y14_N12
\inst12|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~1_cout\ = CARRY((\mouse1|cursor_column\(0) & !\inst12|SYNC|pixel_column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(0),
	datab => \inst12|SYNC|pixel_column\(0),
	datad => VCC,
	cout => \inst12|LessThan0~1_cout\);

-- Location: LCCOMB_X29_Y14_N14
\inst12|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~3_cout\ = CARRY((\inst12|SYNC|pixel_column\(1) & ((!\inst12|LessThan0~1_cout\) # (!\mouse1|cursor_column\(1)))) # (!\inst12|SYNC|pixel_column\(1) & (!\mouse1|cursor_column\(1) & !\inst12|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|pixel_column\(1),
	datab => \mouse1|cursor_column\(1),
	datad => VCC,
	cin => \inst12|LessThan0~1_cout\,
	cout => \inst12|LessThan0~3_cout\);

-- Location: LCCOMB_X29_Y14_N16
\inst12|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~5_cout\ = CARRY((\inst12|SYNC|pixel_column\(2) & (\mouse1|cursor_column\(2) & !\inst12|LessThan0~3_cout\)) # (!\inst12|SYNC|pixel_column\(2) & ((\mouse1|cursor_column\(2)) # (!\inst12|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|pixel_column\(2),
	datab => \mouse1|cursor_column\(2),
	datad => VCC,
	cin => \inst12|LessThan0~3_cout\,
	cout => \inst12|LessThan0~5_cout\);

-- Location: LCCOMB_X29_Y14_N18
\inst12|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~7_cout\ = CARRY((\mouse1|cursor_column\(3) & (!\inst12|SYNC|pixel_column\(3) & !\inst12|LessThan0~5_cout\)) # (!\mouse1|cursor_column\(3) & ((!\inst12|LessThan0~5_cout\) # (!\inst12|SYNC|pixel_column\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(3),
	datab => \inst12|SYNC|pixel_column\(3),
	datad => VCC,
	cin => \inst12|LessThan0~5_cout\,
	cout => \inst12|LessThan0~7_cout\);

-- Location: LCCOMB_X29_Y14_N20
\inst12|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~9_cout\ = CARRY((\inst12|Add0~0_combout\ & (\mouse1|cursor_column\(4) & !\inst12|LessThan0~7_cout\)) # (!\inst12|Add0~0_combout\ & ((\mouse1|cursor_column\(4)) # (!\inst12|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Add0~0_combout\,
	datab => \mouse1|cursor_column\(4),
	datad => VCC,
	cin => \inst12|LessThan0~7_cout\,
	cout => \inst12|LessThan0~9_cout\);

-- Location: LCCOMB_X29_Y14_N22
\inst12|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~11_cout\ = CARRY((\mouse1|cursor_column\(5) & (\inst12|Add0~2_combout\ & !\inst12|LessThan0~9_cout\)) # (!\mouse1|cursor_column\(5) & ((\inst12|Add0~2_combout\) # (!\inst12|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(5),
	datab => \inst12|Add0~2_combout\,
	datad => VCC,
	cin => \inst12|LessThan0~9_cout\,
	cout => \inst12|LessThan0~11_cout\);

-- Location: LCCOMB_X29_Y14_N24
\inst12|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~13_cout\ = CARRY((\mouse1|cursor_column\(6) & ((!\inst12|LessThan0~11_cout\) # (!\inst12|Add0~4_combout\))) # (!\mouse1|cursor_column\(6) & (!\inst12|Add0~4_combout\ & !\inst12|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(6),
	datab => \inst12|Add0~4_combout\,
	datad => VCC,
	cin => \inst12|LessThan0~11_cout\,
	cout => \inst12|LessThan0~13_cout\);

-- Location: LCCOMB_X29_Y14_N26
\inst12|LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~15_cout\ = CARRY((\inst12|Add0~6_combout\ & ((!\inst12|LessThan0~13_cout\) # (!\mouse1|cursor_column\(7)))) # (!\inst12|Add0~6_combout\ & (!\mouse1|cursor_column\(7) & !\inst12|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Add0~6_combout\,
	datab => \mouse1|cursor_column\(7),
	datad => VCC,
	cin => \inst12|LessThan0~13_cout\,
	cout => \inst12|LessThan0~15_cout\);

-- Location: LCCOMB_X29_Y14_N28
\inst12|LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~17_cout\ = CARRY((\mouse1|cursor_column\(8) & ((!\inst12|LessThan0~15_cout\) # (!\inst12|Add0~8_combout\))) # (!\mouse1|cursor_column\(8) & (!\inst12|Add0~8_combout\ & !\inst12|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(8),
	datab => \inst12|Add0~8_combout\,
	datad => VCC,
	cin => \inst12|LessThan0~15_cout\,
	cout => \inst12|LessThan0~17_cout\);

-- Location: LCCOMB_X29_Y14_N30
\inst12|LessThan0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LessThan0~18_combout\ = (\inst12|Add0~10_combout\ & (\inst12|LessThan0~17_cout\ & \mouse1|cursor_column\(9))) # (!\inst12|Add0~10_combout\ & ((\inst12|LessThan0~17_cout\) # (\mouse1|cursor_column\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Add0~10_combout\,
	datad => \mouse1|cursor_column\(9),
	cin => \inst12|LessThan0~17_cout\,
	combout => \inst12|LessThan0~18_combout\);

-- Location: LCCOMB_X29_Y15_N28
\inst12|SYNC|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|Add0~18_combout\ = \inst12|SYNC|Add0~17\ $ (\inst12|SYNC|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst12|SYNC|h_count\(9),
	cin => \inst12|SYNC|Add0~17\,
	combout => \inst12|SYNC|Add0~18_combout\);

-- Location: LCCOMB_X29_Y15_N0
\inst12|SYNC|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|h_count~0_combout\ = (\inst12|SYNC|Add0~18_combout\ & !\inst12|SYNC|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|SYNC|Add0~18_combout\,
	datad => \inst12|SYNC|Equal0~2_combout\,
	combout => \inst12|SYNC|h_count~0_combout\);

-- Location: FF_X29_Y15_N1
\inst12|SYNC|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst12|SYNC|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|h_count\(9));

-- Location: LCCOMB_X36_Y16_N6
\inst12|SYNC|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|Add1~0_combout\ = \inst12|SYNC|v_count\(0) $ (VCC)
-- \inst12|SYNC|Add1~1\ = CARRY(\inst12|SYNC|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|SYNC|v_count\(0),
	datad => VCC,
	combout => \inst12|SYNC|Add1~0_combout\,
	cout => \inst12|SYNC|Add1~1\);

-- Location: LCCOMB_X30_Y15_N0
\inst12|SYNC|process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|process_0~10_combout\ = (\inst12|SYNC|h_count\(5) & \inst12|SYNC|h_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|SYNC|h_count\(5),
	datad => \inst12|SYNC|h_count\(4),
	combout => \inst12|SYNC|process_0~10_combout\);

-- Location: LCCOMB_X30_Y15_N20
\inst12|SYNC|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|process_0~9_combout\ = ((!\inst12|SYNC|h_count\(2) & ((!\inst12|SYNC|h_count\(0)) # (!\inst12|SYNC|h_count\(1))))) # (!\inst12|SYNC|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|h_count\(2),
	datab => \inst12|SYNC|h_count\(1),
	datac => \inst12|SYNC|h_count\(3),
	datad => \inst12|SYNC|h_count\(0),
	combout => \inst12|SYNC|process_0~9_combout\);

-- Location: LCCOMB_X30_Y15_N10
\inst12|SYNC|process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|process_0~11_combout\ = (!\inst12|SYNC|h_count\(6) & (!\inst12|SYNC|h_count\(8) & ((\inst12|SYNC|process_0~9_combout\) # (!\inst12|SYNC|process_0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|h_count\(6),
	datab => \inst12|SYNC|process_0~10_combout\,
	datac => \inst12|SYNC|process_0~9_combout\,
	datad => \inst12|SYNC|h_count\(8),
	combout => \inst12|SYNC|process_0~11_combout\);

-- Location: LCCOMB_X35_Y16_N0
\inst12|SYNC|v_count~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|v_count~7_combout\ = (\inst12|SYNC|Add1~0_combout\ & ((\inst12|SYNC|process_0~8_combout\) # ((\inst12|SYNC|process_0~12_combout\) # (\inst12|SYNC|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|process_0~8_combout\,
	datab => \inst12|SYNC|process_0~12_combout\,
	datac => \inst12|SYNC|Add1~0_combout\,
	datad => \inst12|SYNC|process_0~11_combout\,
	combout => \inst12|SYNC|v_count~7_combout\);

-- Location: LCCOMB_X30_Y15_N18
\inst12|SYNC|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|Equal1~0_combout\ = (\inst12|SYNC|h_count\(2)) # (((\inst12|SYNC|h_count\(8)) # (!\inst12|SYNC|h_count\(5))) # (!\inst12|SYNC|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|h_count\(2),
	datab => \inst12|SYNC|h_count\(7),
	datac => \inst12|SYNC|h_count\(5),
	datad => \inst12|SYNC|h_count\(8),
	combout => \inst12|SYNC|Equal1~0_combout\);

-- Location: LCCOMB_X30_Y15_N26
\inst12|SYNC|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|Equal1~1_combout\ = ((\inst12|SYNC|Equal1~0_combout\) # ((\inst12|SYNC|h_count\(6)) # (!\inst12|SYNC|Equal0~0_combout\))) # (!\inst12|SYNC|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|h_count\(9),
	datab => \inst12|SYNC|Equal1~0_combout\,
	datac => \inst12|SYNC|h_count\(6),
	datad => \inst12|SYNC|Equal0~0_combout\,
	combout => \inst12|SYNC|Equal1~1_combout\);

-- Location: LCCOMB_X36_Y16_N20
\inst12|SYNC|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|Add1~14_combout\ = (\inst12|SYNC|v_count\(7) & (!\inst12|SYNC|Add1~13\)) # (!\inst12|SYNC|v_count\(7) & ((\inst12|SYNC|Add1~13\) # (GND)))
-- \inst12|SYNC|Add1~15\ = CARRY((!\inst12|SYNC|Add1~13\) # (!\inst12|SYNC|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|v_count\(7),
	datad => VCC,
	cin => \inst12|SYNC|Add1~13\,
	combout => \inst12|SYNC|Add1~14_combout\,
	cout => \inst12|SYNC|Add1~15\);

-- Location: LCCOMB_X36_Y16_N0
\inst12|SYNC|v_count[7]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|v_count[7]~5_combout\ = (\inst12|SYNC|v_count[9]~1_combout\ & (\inst12|SYNC|Add1~14_combout\ & ((\inst12|SYNC|v_count[4]~0_combout\)))) # (!\inst12|SYNC|v_count[9]~1_combout\ & ((\inst12|SYNC|v_count\(7)) # ((\inst12|SYNC|Add1~14_combout\ & 
-- \inst12|SYNC|v_count[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|v_count[9]~1_combout\,
	datab => \inst12|SYNC|Add1~14_combout\,
	datac => \inst12|SYNC|v_count\(7),
	datad => \inst12|SYNC|v_count[4]~0_combout\,
	combout => \inst12|SYNC|v_count[7]~5_combout\);

-- Location: FF_X36_Y16_N1
\inst12|SYNC|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst12|SYNC|v_count[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|v_count\(7));

-- Location: LCCOMB_X35_Y16_N10
\inst12|SYNC|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|process_0~8_combout\ = (\inst12|SYNC|process_0~7_combout\ & (!\inst12|SYNC|v_count\(6) & (!\inst12|SYNC|v_count\(7) & !\inst12|SYNC|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|process_0~7_combout\,
	datab => \inst12|SYNC|v_count\(6),
	datac => \inst12|SYNC|v_count\(7),
	datad => \inst12|SYNC|v_count\(8),
	combout => \inst12|SYNC|process_0~8_combout\);

-- Location: LCCOMB_X35_Y16_N2
\inst12|SYNC|v_count[9]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|v_count[9]~1_combout\ = ((!\inst12|SYNC|process_0~11_combout\ & (!\inst12|SYNC|process_0~12_combout\ & !\inst12|SYNC|process_0~8_combout\))) # (!\inst12|SYNC|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|process_0~11_combout\,
	datab => \inst12|SYNC|process_0~12_combout\,
	datac => \inst12|SYNC|Equal1~1_combout\,
	datad => \inst12|SYNC|process_0~8_combout\,
	combout => \inst12|SYNC|v_count[9]~1_combout\);

-- Location: FF_X35_Y16_N1
\inst12|SYNC|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst12|SYNC|v_count~7_combout\,
	ena => \inst12|SYNC|v_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|v_count\(0));

-- Location: LCCOMB_X36_Y16_N8
\inst12|SYNC|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|Add1~2_combout\ = (\inst12|SYNC|v_count\(1) & (!\inst12|SYNC|Add1~1\)) # (!\inst12|SYNC|v_count\(1) & ((\inst12|SYNC|Add1~1\) # (GND)))
-- \inst12|SYNC|Add1~3\ = CARRY((!\inst12|SYNC|Add1~1\) # (!\inst12|SYNC|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|SYNC|v_count\(1),
	datad => VCC,
	cin => \inst12|SYNC|Add1~1\,
	combout => \inst12|SYNC|Add1~2_combout\,
	cout => \inst12|SYNC|Add1~3\);

-- Location: LCCOMB_X35_Y16_N22
\inst12|SYNC|v_count~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|v_count~8_combout\ = (\inst12|SYNC|Add1~2_combout\ & ((\inst12|SYNC|process_0~11_combout\) # ((\inst12|SYNC|process_0~12_combout\) # (\inst12|SYNC|process_0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|process_0~11_combout\,
	datab => \inst12|SYNC|process_0~12_combout\,
	datac => \inst12|SYNC|Add1~2_combout\,
	datad => \inst12|SYNC|process_0~8_combout\,
	combout => \inst12|SYNC|v_count~8_combout\);

-- Location: FF_X35_Y16_N23
\inst12|SYNC|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst12|SYNC|v_count~8_combout\,
	ena => \inst12|SYNC|v_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|v_count\(1));

-- Location: LCCOMB_X36_Y16_N12
\inst12|SYNC|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|Add1~6_combout\ = (\inst12|SYNC|v_count\(3) & (!\inst12|SYNC|Add1~5\)) # (!\inst12|SYNC|v_count\(3) & ((\inst12|SYNC|Add1~5\) # (GND)))
-- \inst12|SYNC|Add1~7\ = CARRY((!\inst12|SYNC|Add1~5\) # (!\inst12|SYNC|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|v_count\(3),
	datad => VCC,
	cin => \inst12|SYNC|Add1~5\,
	combout => \inst12|SYNC|Add1~6_combout\,
	cout => \inst12|SYNC|Add1~7\);

-- Location: LCCOMB_X36_Y16_N14
\inst12|SYNC|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|Add1~8_combout\ = (\inst12|SYNC|v_count\(4) & (\inst12|SYNC|Add1~7\ $ (GND))) # (!\inst12|SYNC|v_count\(4) & (!\inst12|SYNC|Add1~7\ & VCC))
-- \inst12|SYNC|Add1~9\ = CARRY((\inst12|SYNC|v_count\(4) & !\inst12|SYNC|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|SYNC|v_count\(4),
	datad => VCC,
	cin => \inst12|SYNC|Add1~7\,
	combout => \inst12|SYNC|Add1~8_combout\,
	cout => \inst12|SYNC|Add1~9\);

-- Location: LCCOMB_X35_Y16_N14
\inst12|SYNC|v_count[4]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|v_count[4]~11_combout\ = (\inst12|SYNC|v_count[4]~0_combout\ & ((\inst12|SYNC|Add1~8_combout\) # ((\inst12|SYNC|v_count\(4) & !\inst12|SYNC|v_count[9]~1_combout\)))) # (!\inst12|SYNC|v_count[4]~0_combout\ & (((\inst12|SYNC|v_count\(4) & 
-- !\inst12|SYNC|v_count[9]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|v_count[4]~0_combout\,
	datab => \inst12|SYNC|Add1~8_combout\,
	datac => \inst12|SYNC|v_count\(4),
	datad => \inst12|SYNC|v_count[9]~1_combout\,
	combout => \inst12|SYNC|v_count[4]~11_combout\);

-- Location: FF_X35_Y16_N15
\inst12|SYNC|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst12|SYNC|v_count[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|v_count\(4));

-- Location: LCCOMB_X36_Y16_N16
\inst12|SYNC|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|Add1~10_combout\ = (\inst12|SYNC|v_count\(5) & (!\inst12|SYNC|Add1~9\)) # (!\inst12|SYNC|v_count\(5) & ((\inst12|SYNC|Add1~9\) # (GND)))
-- \inst12|SYNC|Add1~11\ = CARRY((!\inst12|SYNC|Add1~9\) # (!\inst12|SYNC|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|SYNC|v_count\(5),
	datad => VCC,
	cin => \inst12|SYNC|Add1~9\,
	combout => \inst12|SYNC|Add1~10_combout\,
	cout => \inst12|SYNC|Add1~11\);

-- Location: LCCOMB_X36_Y16_N4
\inst12|SYNC|v_count[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|v_count[5]~3_combout\ = (\inst12|SYNC|v_count[9]~1_combout\ & (\inst12|SYNC|Add1~10_combout\ & ((\inst12|SYNC|v_count[4]~0_combout\)))) # (!\inst12|SYNC|v_count[9]~1_combout\ & ((\inst12|SYNC|v_count\(5)) # ((\inst12|SYNC|Add1~10_combout\ & 
-- \inst12|SYNC|v_count[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|v_count[9]~1_combout\,
	datab => \inst12|SYNC|Add1~10_combout\,
	datac => \inst12|SYNC|v_count\(5),
	datad => \inst12|SYNC|v_count[4]~0_combout\,
	combout => \inst12|SYNC|v_count[5]~3_combout\);

-- Location: FF_X36_Y16_N5
\inst12|SYNC|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst12|SYNC|v_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|v_count\(5));

-- Location: LCCOMB_X36_Y16_N18
\inst12|SYNC|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|Add1~12_combout\ = (\inst12|SYNC|v_count\(6) & (\inst12|SYNC|Add1~11\ $ (GND))) # (!\inst12|SYNC|v_count\(6) & (!\inst12|SYNC|Add1~11\ & VCC))
-- \inst12|SYNC|Add1~13\ = CARRY((\inst12|SYNC|v_count\(6) & !\inst12|SYNC|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|SYNC|v_count\(6),
	datad => VCC,
	cin => \inst12|SYNC|Add1~11\,
	combout => \inst12|SYNC|Add1~12_combout\,
	cout => \inst12|SYNC|Add1~13\);

-- Location: LCCOMB_X36_Y16_N28
\inst12|SYNC|v_count[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|v_count[6]~4_combout\ = (\inst12|SYNC|v_count[9]~1_combout\ & (\inst12|SYNC|Add1~12_combout\ & ((\inst12|SYNC|v_count[4]~0_combout\)))) # (!\inst12|SYNC|v_count[9]~1_combout\ & ((\inst12|SYNC|v_count\(6)) # ((\inst12|SYNC|Add1~12_combout\ & 
-- \inst12|SYNC|v_count[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|v_count[9]~1_combout\,
	datab => \inst12|SYNC|Add1~12_combout\,
	datac => \inst12|SYNC|v_count\(6),
	datad => \inst12|SYNC|v_count[4]~0_combout\,
	combout => \inst12|SYNC|v_count[6]~4_combout\);

-- Location: FF_X36_Y16_N29
\inst12|SYNC|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst12|SYNC|v_count[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|v_count\(6));

-- Location: LCCOMB_X36_Y16_N24
\inst12|SYNC|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|Add1~18_combout\ = \inst12|SYNC|v_count\(9) $ (\inst12|SYNC|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|v_count\(9),
	cin => \inst12|SYNC|Add1~17\,
	combout => \inst12|SYNC|Add1~18_combout\);

-- Location: LCCOMB_X36_Y16_N26
\inst12|SYNC|v_count[9]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|v_count[9]~2_combout\ = (\inst12|SYNC|v_count[9]~1_combout\ & (\inst12|SYNC|Add1~18_combout\ & ((\inst12|SYNC|v_count[4]~0_combout\)))) # (!\inst12|SYNC|v_count[9]~1_combout\ & ((\inst12|SYNC|v_count\(9)) # ((\inst12|SYNC|Add1~18_combout\ & 
-- \inst12|SYNC|v_count[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|v_count[9]~1_combout\,
	datab => \inst12|SYNC|Add1~18_combout\,
	datac => \inst12|SYNC|v_count\(9),
	datad => \inst12|SYNC|v_count[4]~0_combout\,
	combout => \inst12|SYNC|v_count[9]~2_combout\);

-- Location: FF_X36_Y16_N27
\inst12|SYNC|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst12|SYNC|v_count[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|v_count\(9));

-- Location: LCCOMB_X30_Y15_N16
\inst12|SYNC|process_0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|process_0~12_combout\ = (((!\inst12|SYNC|h_count\(8) & !\inst12|SYNC|h_count\(7))) # (!\inst12|SYNC|v_count\(9))) # (!\inst12|SYNC|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|h_count\(8),
	datab => \inst12|SYNC|h_count\(7),
	datac => \inst12|SYNC|h_count\(9),
	datad => \inst12|SYNC|v_count\(9),
	combout => \inst12|SYNC|process_0~12_combout\);

-- Location: LCCOMB_X35_Y16_N28
\inst12|SYNC|v_count[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|v_count[4]~0_combout\ = (!\inst12|SYNC|Equal1~1_combout\ & ((\inst12|SYNC|process_0~11_combout\) # ((\inst12|SYNC|process_0~12_combout\) # (\inst12|SYNC|process_0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|process_0~11_combout\,
	datab => \inst12|SYNC|process_0~12_combout\,
	datac => \inst12|SYNC|Equal1~1_combout\,
	datad => \inst12|SYNC|process_0~8_combout\,
	combout => \inst12|SYNC|v_count[4]~0_combout\);

-- Location: LCCOMB_X36_Y16_N30
\inst12|SYNC|v_count[8]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|v_count[8]~6_combout\ = (\inst12|SYNC|Add1~16_combout\ & ((\inst12|SYNC|v_count[4]~0_combout\) # ((\inst12|SYNC|v_count\(8) & !\inst12|SYNC|v_count[9]~1_combout\)))) # (!\inst12|SYNC|Add1~16_combout\ & (((\inst12|SYNC|v_count\(8) & 
-- !\inst12|SYNC|v_count[9]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|Add1~16_combout\,
	datab => \inst12|SYNC|v_count[4]~0_combout\,
	datac => \inst12|SYNC|v_count\(8),
	datad => \inst12|SYNC|v_count[9]~1_combout\,
	combout => \inst12|SYNC|v_count[8]~6_combout\);

-- Location: FF_X36_Y16_N31
\inst12|SYNC|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst12|SYNC|v_count[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|v_count\(8));

-- Location: LCCOMB_X35_Y16_N4
\inst12|SYNC|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|LessThan7~0_combout\ = (\inst12|SYNC|v_count\(5) & (\inst12|SYNC|v_count\(6) & (\inst12|SYNC|v_count\(7) & \inst12|SYNC|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|v_count\(5),
	datab => \inst12|SYNC|v_count\(6),
	datac => \inst12|SYNC|v_count\(7),
	datad => \inst12|SYNC|v_count\(8),
	combout => \inst12|SYNC|LessThan7~0_combout\);

-- Location: LCCOMB_X35_Y16_N26
\inst12|SYNC|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|LessThan7~1_combout\ = (!\inst12|SYNC|v_count\(9) & !\inst12|SYNC|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|v_count\(9),
	datac => \inst12|SYNC|LessThan7~0_combout\,
	combout => \inst12|SYNC|LessThan7~1_combout\);

-- Location: FF_X35_Y15_N31
\inst12|SYNC|pixel_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst12|SYNC|v_count\(8),
	sload => VCC,
	ena => \inst12|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|pixel_row\(8));

-- Location: LCCOMB_X31_Y14_N30
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

-- Location: FF_X31_Y14_N31
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

-- Location: LCCOMB_X31_Y14_N6
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

-- Location: FF_X31_Y14_N7
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

-- Location: LCCOMB_X31_Y14_N8
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

-- Location: FF_X31_Y14_N9
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

-- Location: LCCOMB_X31_Y14_N18
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

-- Location: FF_X31_Y14_N19
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

-- Location: LCCOMB_X32_Y14_N10
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

-- Location: FF_X32_Y14_N11
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
	ena => \mouse1|new_cursor_column[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(0));

-- Location: LCCOMB_X32_Y14_N24
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

-- Location: LCCOMB_X32_Y14_N26
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

-- Location: LCCOMB_X32_Y14_N28
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

-- Location: FF_X32_Y14_N29
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
	ena => \mouse1|new_cursor_column[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(9));

-- Location: FF_X32_Y14_N27
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
	ena => \mouse1|new_cursor_column[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(8));

-- Location: LCCOMB_X32_Y14_N18
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

-- Location: FF_X32_Y14_N19
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
	ena => \mouse1|new_cursor_column[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(4));

-- Location: LCCOMB_X32_Y14_N16
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

-- Location: FF_X32_Y14_N17
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
	ena => \mouse1|new_cursor_column[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(3));

-- Location: LCCOMB_X32_Y14_N6
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

-- Location: LCCOMB_X32_Y14_N20
\mouse1|new_cursor_row[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_row[5]~20_combout\ = (\mouse1|cursor_row\(5) & ((\mouse1|PACKET_CHAR3\(5) & (!\mouse1|new_cursor_row[4]~19\)) # (!\mouse1|PACKET_CHAR3\(5) & (\mouse1|new_cursor_row[4]~19\ & VCC)))) # (!\mouse1|cursor_row\(5) & 
-- ((\mouse1|PACKET_CHAR3\(5) & ((\mouse1|new_cursor_row[4]~19\) # (GND))) # (!\mouse1|PACKET_CHAR3\(5) & (!\mouse1|new_cursor_row[4]~19\))))
-- \mouse1|new_cursor_row[5]~21\ = CARRY((\mouse1|cursor_row\(5) & (\mouse1|PACKET_CHAR3\(5) & !\mouse1|new_cursor_row[4]~19\)) # (!\mouse1|cursor_row\(5) & ((\mouse1|PACKET_CHAR3\(5)) # (!\mouse1|new_cursor_row[4]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(5),
	datab => \mouse1|PACKET_CHAR3\(5),
	datad => VCC,
	cin => \mouse1|new_cursor_row[4]~19\,
	combout => \mouse1|new_cursor_row[5]~20_combout\,
	cout => \mouse1|new_cursor_row[5]~21\);

-- Location: FF_X32_Y14_N21
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
	ena => \mouse1|new_cursor_column[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(5));

-- Location: LCCOMB_X32_Y14_N8
\mouse1|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|LessThan5~1_combout\ = (\mouse1|new_cursor_row\(8) & (\mouse1|new_cursor_row\(5) & (\mouse1|new_cursor_row\(6) & \mouse1|new_cursor_row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_row\(8),
	datab => \mouse1|new_cursor_row\(5),
	datac => \mouse1|new_cursor_row\(6),
	datad => \mouse1|new_cursor_row\(7),
	combout => \mouse1|LessThan5~1_combout\);

-- Location: LCCOMB_X33_Y14_N4
\mouse1|cursor_row~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row~0_combout\ = (!\mouse1|new_cursor_row\(9) & (((!\mouse1|new_cursor_row\(0) & \mouse1|LessThan5~0_combout\)) # (!\mouse1|LessThan5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_row\(0),
	datab => \mouse1|new_cursor_row\(9),
	datac => \mouse1|LessThan5~0_combout\,
	datad => \mouse1|LessThan5~1_combout\,
	combout => \mouse1|cursor_row~0_combout\);

-- Location: LCCOMB_X33_Y14_N10
\mouse1|cursor_row~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row~2_combout\ = (\mouse1|Equal3~0_combout\ & (!\mouse1|RECV_UART~8_combout\ & ((\mouse1|new_cursor_row\(8)) # (!\mouse1|cursor_row~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|Equal3~0_combout\,
	datab => \mouse1|new_cursor_row\(8),
	datac => \mouse1|cursor_row~0_combout\,
	datad => \mouse1|RECV_UART~8_combout\,
	combout => \mouse1|cursor_row~2_combout\);

-- Location: FF_X36_Y14_N15
\mouse1|cursor_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \mouse1|cursor_row~2_combout\,
	sload => VCC,
	ena => \mouse1|cursor_column[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_row\(8));

-- Location: LCCOMB_X32_Y14_N2
\mouse1|RECV_UART~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|RECV_UART~6_combout\ = (!\mouse1|new_cursor_row\(7) & (!\mouse1|new_cursor_row\(6) & !\mouse1|new_cursor_row\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|new_cursor_row\(7),
	datac => \mouse1|new_cursor_row\(6),
	datad => \mouse1|new_cursor_row\(5),
	combout => \mouse1|RECV_UART~6_combout\);

-- Location: LCCOMB_X33_Y14_N18
\mouse1|RECV_UART~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|RECV_UART~7_combout\ = (\mouse1|new_cursor_row\(8) & ((\mouse1|new_cursor_row\(0)) # ((!\mouse1|RECV_UART~6_combout\) # (!\mouse1|LessThan5~0_combout\)))) # (!\mouse1|new_cursor_row\(8) & (((\mouse1|LessThan5~0_combout\ & 
-- \mouse1|RECV_UART~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_row\(8),
	datab => \mouse1|new_cursor_row\(0),
	datac => \mouse1|LessThan5~0_combout\,
	datad => \mouse1|RECV_UART~6_combout\,
	combout => \mouse1|RECV_UART~7_combout\);

-- Location: LCCOMB_X33_Y14_N28
\mouse1|RECV_UART~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|RECV_UART~8_combout\ = (!\mouse1|cursor_row\(7) & (!\mouse1|cursor_row\(8) & ((\mouse1|new_cursor_row\(9)) # (\mouse1|RECV_UART~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(7),
	datab => \mouse1|new_cursor_row\(9),
	datac => \mouse1|cursor_row\(8),
	datad => \mouse1|RECV_UART~7_combout\,
	combout => \mouse1|RECV_UART~8_combout\);

-- Location: LCCOMB_X36_Y14_N30
\mouse1|cursor_row~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row~9_combout\ = (\mouse1|cursor_row~0_combout\ & (\mouse1|Equal3~0_combout\ & (\mouse1|new_cursor_row\(0) & !\mouse1|RECV_UART~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row~0_combout\,
	datab => \mouse1|Equal3~0_combout\,
	datac => \mouse1|new_cursor_row\(0),
	datad => \mouse1|RECV_UART~8_combout\,
	combout => \mouse1|cursor_row~9_combout\);

-- Location: FF_X36_Y14_N31
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

-- Location: LCCOMB_X32_Y14_N12
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

-- Location: FF_X32_Y14_N13
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
	ena => \mouse1|new_cursor_column[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(1));

-- Location: LCCOMB_X36_Y14_N28
\mouse1|cursor_row~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row~8_combout\ = (\mouse1|cursor_row~0_combout\ & (\mouse1|Equal3~0_combout\ & (\mouse1|new_cursor_row\(1) & !\mouse1|RECV_UART~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row~0_combout\,
	datab => \mouse1|Equal3~0_combout\,
	datac => \mouse1|new_cursor_row\(1),
	datad => \mouse1|RECV_UART~8_combout\,
	combout => \mouse1|cursor_row~8_combout\);

-- Location: FF_X36_Y14_N29
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

-- Location: LCCOMB_X32_Y14_N14
\mouse1|new_cursor_row[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_row[2]~14_combout\ = ((\mouse1|PACKET_CHAR3\(2) $ (\mouse1|cursor_row\(2) $ (\mouse1|new_cursor_row[1]~13\)))) # (GND)
-- \mouse1|new_cursor_row[2]~15\ = CARRY((\mouse1|PACKET_CHAR3\(2) & (\mouse1|cursor_row\(2) & !\mouse1|new_cursor_row[1]~13\)) # (!\mouse1|PACKET_CHAR3\(2) & ((\mouse1|cursor_row\(2)) # (!\mouse1|new_cursor_row[1]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|PACKET_CHAR3\(2),
	datab => \mouse1|cursor_row\(2),
	datad => VCC,
	cin => \mouse1|new_cursor_row[1]~13\,
	combout => \mouse1|new_cursor_row[2]~14_combout\,
	cout => \mouse1|new_cursor_row[2]~15\);

-- Location: FF_X32_Y14_N15
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
	ena => \mouse1|new_cursor_column[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(2));

-- Location: LCCOMB_X36_Y14_N4
\mouse1|cursor_row~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row~7_combout\ = (\mouse1|cursor_row~0_combout\ & (\mouse1|Equal3~0_combout\ & (\mouse1|new_cursor_row\(2) & !\mouse1|RECV_UART~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row~0_combout\,
	datab => \mouse1|Equal3~0_combout\,
	datac => \mouse1|new_cursor_row\(2),
	datad => \mouse1|RECV_UART~8_combout\,
	combout => \mouse1|cursor_row~7_combout\);

-- Location: FF_X36_Y14_N5
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

-- Location: LCCOMB_X32_Y14_N22
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

-- Location: FF_X32_Y14_N23
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
	ena => \mouse1|new_cursor_column[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(6));

-- Location: LCCOMB_X36_Y14_N0
\mouse1|cursor_row~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row~1_combout\ = ((!\mouse1|RECV_UART~8_combout\ & ((\mouse1|new_cursor_row\(6)) # (!\mouse1|cursor_row~0_combout\)))) # (!\mouse1|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row~0_combout\,
	datab => \mouse1|Equal3~0_combout\,
	datac => \mouse1|new_cursor_row\(6),
	datad => \mouse1|RECV_UART~8_combout\,
	combout => \mouse1|cursor_row~1_combout\);

-- Location: FF_X36_Y14_N1
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

-- Location: FF_X32_Y14_N25
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
	ena => \mouse1|new_cursor_column[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(7));

-- Location: LCCOMB_X33_Y14_N24
\mouse1|cursor_row~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row~3_combout\ = ((!\mouse1|RECV_UART~8_combout\ & ((\mouse1|new_cursor_row\(7)) # (!\mouse1|cursor_row~0_combout\)))) # (!\mouse1|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|Equal3~0_combout\,
	datab => \mouse1|new_cursor_row\(7),
	datac => \mouse1|cursor_row~0_combout\,
	datad => \mouse1|RECV_UART~8_combout\,
	combout => \mouse1|cursor_row~3_combout\);

-- Location: FF_X36_Y14_N19
\mouse1|cursor_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \mouse1|cursor_row~3_combout\,
	sload => VCC,
	ena => \mouse1|cursor_column[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_row\(7));

-- Location: LCCOMB_X36_Y14_N8
\mouse1|cursor_row~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row~5_combout\ = (\mouse1|cursor_row~0_combout\ & (\mouse1|Equal3~0_combout\ & (\mouse1|new_cursor_row\(3) & !\mouse1|RECV_UART~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row~0_combout\,
	datab => \mouse1|Equal3~0_combout\,
	datac => \mouse1|new_cursor_row\(3),
	datad => \mouse1|RECV_UART~8_combout\,
	combout => \mouse1|cursor_row~5_combout\);

-- Location: FF_X36_Y14_N9
\mouse1|cursor_row[3]\ : dffeas
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
	q => \mouse1|cursor_row\(3));

-- Location: LCCOMB_X35_Y14_N18
\inst12|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Add3~0_combout\ = (\mouse1|cursor_row\(4) & (\mouse1|cursor_row\(3) $ (VCC))) # (!\mouse1|cursor_row\(4) & (\mouse1|cursor_row\(3) & VCC))
-- \inst12|Add3~1\ = CARRY((\mouse1|cursor_row\(4) & \mouse1|cursor_row\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(4),
	datab => \mouse1|cursor_row\(3),
	datad => VCC,
	combout => \inst12|Add3~0_combout\,
	cout => \inst12|Add3~1\);

-- Location: LCCOMB_X35_Y14_N20
\inst12|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Add3~2_combout\ = (\mouse1|cursor_row\(5) & (!\inst12|Add3~1\)) # (!\mouse1|cursor_row\(5) & ((\inst12|Add3~1\) # (GND)))
-- \inst12|Add3~3\ = CARRY((!\inst12|Add3~1\) # (!\mouse1|cursor_row\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(5),
	datad => VCC,
	cin => \inst12|Add3~1\,
	combout => \inst12|Add3~2_combout\,
	cout => \inst12|Add3~3\);

-- Location: LCCOMB_X35_Y14_N24
\inst12|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Add3~6_combout\ = (\mouse1|cursor_row\(7) & (!\inst12|Add3~5\)) # (!\mouse1|cursor_row\(7) & ((\inst12|Add3~5\) # (GND)))
-- \inst12|Add3~7\ = CARRY((!\inst12|Add3~5\) # (!\mouse1|cursor_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|cursor_row\(7),
	datad => VCC,
	cin => \inst12|Add3~5\,
	combout => \inst12|Add3~6_combout\,
	cout => \inst12|Add3~7\);

-- Location: LCCOMB_X35_Y15_N8
\inst12|SYNC|pixel_row[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|pixel_row[6]~feeder_combout\ = \inst12|SYNC|v_count\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|SYNC|v_count\(6),
	combout => \inst12|SYNC|pixel_row[6]~feeder_combout\);

-- Location: FF_X35_Y15_N9
\inst12|SYNC|pixel_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst12|SYNC|pixel_row[6]~feeder_combout\,
	ena => \inst12|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|pixel_row\(6));

-- Location: LCCOMB_X35_Y16_N30
\inst12|SYNC|v_count[3]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|v_count[3]~10_combout\ = (\inst12|SYNC|v_count[4]~0_combout\ & ((\inst12|SYNC|Add1~6_combout\) # ((\inst12|SYNC|v_count\(3) & !\inst12|SYNC|v_count[9]~1_combout\)))) # (!\inst12|SYNC|v_count[4]~0_combout\ & (((\inst12|SYNC|v_count\(3) & 
-- !\inst12|SYNC|v_count[9]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|v_count[4]~0_combout\,
	datab => \inst12|SYNC|Add1~6_combout\,
	datac => \inst12|SYNC|v_count\(3),
	datad => \inst12|SYNC|v_count[9]~1_combout\,
	combout => \inst12|SYNC|v_count[3]~10_combout\);

-- Location: FF_X35_Y16_N31
\inst12|SYNC|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst12|SYNC|v_count[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|v_count\(3));

-- Location: FF_X35_Y15_N15
\inst12|SYNC|pixel_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst12|SYNC|v_count\(3),
	sload => VCC,
	ena => \inst12|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|pixel_row\(3));

-- Location: FF_X36_Y14_N27
\inst12|SYNC|pixel_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst12|SYNC|v_count\(1),
	sload => VCC,
	ena => \inst12|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|pixel_row\(1));

-- Location: FF_X35_Y14_N5
\inst12|SYNC|pixel_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst12|SYNC|v_count\(0),
	sload => VCC,
	ena => \inst12|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|pixel_row\(0));

-- Location: LCCOMB_X35_Y14_N0
\inst12|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LessThan3~1_cout\ = CARRY((!\mouse1|cursor_row\(0) & \inst12|SYNC|pixel_row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(0),
	datab => \inst12|SYNC|pixel_row\(0),
	datad => VCC,
	cout => \inst12|LessThan3~1_cout\);

-- Location: LCCOMB_X35_Y14_N2
\inst12|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LessThan3~3_cout\ = CARRY((\mouse1|cursor_row\(1) & ((!\inst12|LessThan3~1_cout\) # (!\inst12|SYNC|pixel_row\(1)))) # (!\mouse1|cursor_row\(1) & (!\inst12|SYNC|pixel_row\(1) & !\inst12|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(1),
	datab => \inst12|SYNC|pixel_row\(1),
	datad => VCC,
	cin => \inst12|LessThan3~1_cout\,
	cout => \inst12|LessThan3~3_cout\);

-- Location: LCCOMB_X35_Y14_N4
\inst12|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LessThan3~5_cout\ = CARRY((\inst12|SYNC|pixel_row\(2) & ((!\inst12|LessThan3~3_cout\) # (!\mouse1|cursor_row\(2)))) # (!\inst12|SYNC|pixel_row\(2) & (!\mouse1|cursor_row\(2) & !\inst12|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|pixel_row\(2),
	datab => \mouse1|cursor_row\(2),
	datad => VCC,
	cin => \inst12|LessThan3~3_cout\,
	cout => \inst12|LessThan3~5_cout\);

-- Location: LCCOMB_X35_Y14_N6
\inst12|LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LessThan3~7_cout\ = CARRY((\mouse1|cursor_row\(3) & (!\inst12|SYNC|pixel_row\(3) & !\inst12|LessThan3~5_cout\)) # (!\mouse1|cursor_row\(3) & ((!\inst12|LessThan3~5_cout\) # (!\inst12|SYNC|pixel_row\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(3),
	datab => \inst12|SYNC|pixel_row\(3),
	datad => VCC,
	cin => \inst12|LessThan3~5_cout\,
	cout => \inst12|LessThan3~7_cout\);

-- Location: LCCOMB_X35_Y14_N8
\inst12|LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LessThan3~9_cout\ = CARRY((\inst12|SYNC|pixel_row\(4) & ((!\inst12|LessThan3~7_cout\) # (!\inst12|Add3~0_combout\))) # (!\inst12|SYNC|pixel_row\(4) & (!\inst12|Add3~0_combout\ & !\inst12|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|pixel_row\(4),
	datab => \inst12|Add3~0_combout\,
	datad => VCC,
	cin => \inst12|LessThan3~7_cout\,
	cout => \inst12|LessThan3~9_cout\);

-- Location: LCCOMB_X35_Y14_N10
\inst12|LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LessThan3~11_cout\ = CARRY((\inst12|SYNC|pixel_row\(5) & (\inst12|Add3~2_combout\ & !\inst12|LessThan3~9_cout\)) # (!\inst12|SYNC|pixel_row\(5) & ((\inst12|Add3~2_combout\) # (!\inst12|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|pixel_row\(5),
	datab => \inst12|Add3~2_combout\,
	datad => VCC,
	cin => \inst12|LessThan3~9_cout\,
	cout => \inst12|LessThan3~11_cout\);

-- Location: LCCOMB_X35_Y14_N12
\inst12|LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LessThan3~13_cout\ = CARRY((\inst12|Add3~4_combout\ & (\inst12|SYNC|pixel_row\(6) & !\inst12|LessThan3~11_cout\)) # (!\inst12|Add3~4_combout\ & ((\inst12|SYNC|pixel_row\(6)) # (!\inst12|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Add3~4_combout\,
	datab => \inst12|SYNC|pixel_row\(6),
	datad => VCC,
	cin => \inst12|LessThan3~11_cout\,
	cout => \inst12|LessThan3~13_cout\);

-- Location: LCCOMB_X35_Y14_N14
\inst12|LessThan3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LessThan3~15_cout\ = CARRY((\inst12|SYNC|pixel_row\(7) & (\inst12|Add3~6_combout\ & !\inst12|LessThan3~13_cout\)) # (!\inst12|SYNC|pixel_row\(7) & ((\inst12|Add3~6_combout\) # (!\inst12|LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|pixel_row\(7),
	datab => \inst12|Add3~6_combout\,
	datad => VCC,
	cin => \inst12|LessThan3~13_cout\,
	cout => \inst12|LessThan3~15_cout\);

-- Location: LCCOMB_X35_Y14_N16
\inst12|LessThan3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LessThan3~16_combout\ = (\inst12|Add3~8_combout\ & (\inst12|SYNC|pixel_row\(8) & !\inst12|LessThan3~15_cout\)) # (!\inst12|Add3~8_combout\ & ((\inst12|SYNC|pixel_row\(8)) # (!\inst12|LessThan3~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Add3~8_combout\,
	datab => \inst12|SYNC|pixel_row\(8),
	cin => \inst12|LessThan3~15_cout\,
	combout => \inst12|LessThan3~16_combout\);

-- Location: FF_X36_Y16_N19
\inst12|SYNC|pixel_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst12|SYNC|v_count\(7),
	sload => VCC,
	ena => \inst12|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|pixel_row\(7));

-- Location: LCCOMB_X35_Y15_N20
\inst12|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Add2~2_combout\ = (\inst12|SYNC|pixel_row\(5) & (!\inst12|Add2~1\)) # (!\inst12|SYNC|pixel_row\(5) & ((\inst12|Add2~1\) # (GND)))
-- \inst12|Add2~3\ = CARRY((!\inst12|Add2~1\) # (!\inst12|SYNC|pixel_row\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|pixel_row\(5),
	datad => VCC,
	cin => \inst12|Add2~1\,
	combout => \inst12|Add2~2_combout\,
	cout => \inst12|Add2~3\);

-- Location: LCCOMB_X35_Y15_N26
\inst12|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Add2~8_combout\ = (\inst12|SYNC|pixel_row\(8) & (\inst12|Add2~7\ $ (GND))) # (!\inst12|SYNC|pixel_row\(8) & (!\inst12|Add2~7\ & VCC))
-- \inst12|Add2~9\ = CARRY((\inst12|SYNC|pixel_row\(8) & !\inst12|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|pixel_row\(8),
	datad => VCC,
	cin => \inst12|Add2~7\,
	combout => \inst12|Add2~8_combout\,
	cout => \inst12|Add2~9\);

-- Location: LCCOMB_X35_Y15_N28
\inst12|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Add2~10_combout\ = \inst12|Add2~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst12|Add2~9\,
	combout => \inst12|Add2~10_combout\);

-- Location: LCCOMB_X35_Y14_N28
\inst12|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Add3~10_combout\ = \inst12|Add3~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst12|Add3~9\,
	combout => \inst12|Add3~10_combout\);

-- Location: FF_X28_Y14_N19
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
	ena => \mouse1|new_cursor_column[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(5));

-- Location: LCCOMB_X26_Y14_N24
\mouse1|cursor_column~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~11_combout\ = (\mouse1|new_cursor_column\(5) & \mouse1|cursor_column[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|new_cursor_column\(5),
	datad => \mouse1|cursor_column[6]~6_combout\,
	combout => \mouse1|cursor_column~11_combout\);

-- Location: FF_X26_Y14_N25
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

-- Location: LCCOMB_X26_Y14_N2
\inst12|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Add1~2_combout\ = (\mouse1|cursor_column\(5) & (!\inst12|Add1~1\)) # (!\mouse1|cursor_column\(5) & ((\inst12|Add1~1\) # (GND)))
-- \inst12|Add1~3\ = CARRY((!\inst12|Add1~1\) # (!\mouse1|cursor_column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|cursor_column\(5),
	datad => VCC,
	cin => \inst12|Add1~1\,
	combout => \inst12|Add1~2_combout\,
	cout => \inst12|Add1~3\);

-- Location: LCCOMB_X26_Y14_N4
\inst12|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Add1~4_combout\ = (\mouse1|cursor_column\(6) & (\inst12|Add1~3\ $ (GND))) # (!\mouse1|cursor_column\(6) & (!\inst12|Add1~3\ & VCC))
-- \inst12|Add1~5\ = CARRY((\mouse1|cursor_column\(6) & !\inst12|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(6),
	datad => VCC,
	cin => \inst12|Add1~3\,
	combout => \inst12|Add1~4_combout\,
	cout => \inst12|Add1~5\);

-- Location: LCCOMB_X26_Y14_N6
\inst12|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Add1~6_combout\ = (\mouse1|cursor_column\(7) & (!\inst12|Add1~5\)) # (!\mouse1|cursor_column\(7) & ((\inst12|Add1~5\) # (GND)))
-- \inst12|Add1~7\ = CARRY((!\inst12|Add1~5\) # (!\mouse1|cursor_column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(7),
	datad => VCC,
	cin => \inst12|Add1~5\,
	combout => \inst12|Add1~6_combout\,
	cout => \inst12|Add1~7\);

-- Location: LCCOMB_X26_Y14_N10
\inst12|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Add1~10_combout\ = \inst12|Add1~9\ $ (\mouse1|cursor_column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|cursor_column\(9),
	cin => \inst12|Add1~9\,
	combout => \inst12|Add1~10_combout\);

-- Location: LCCOMB_X30_Y14_N30
\inst12|Ball_on~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Ball_on~0_combout\ = (\inst12|Add0~10_combout\) # ((\inst12|Add2~10_combout\) # ((\inst12|Add3~10_combout\) # (\inst12|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Add0~10_combout\,
	datab => \inst12|Add2~10_combout\,
	datac => \inst12|Add3~10_combout\,
	datad => \inst12|Add1~10_combout\,
	combout => \inst12|Ball_on~0_combout\);

-- Location: LCCOMB_X36_Y14_N2
\mouse1|cursor_row~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row~6_combout\ = ((\mouse1|cursor_row~0_combout\ & (\mouse1|new_cursor_row\(4) & !\mouse1|RECV_UART~8_combout\))) # (!\mouse1|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row~0_combout\,
	datab => \mouse1|Equal3~0_combout\,
	datac => \mouse1|new_cursor_row\(4),
	datad => \mouse1|RECV_UART~8_combout\,
	combout => \mouse1|cursor_row~6_combout\);

-- Location: FF_X36_Y14_N3
\mouse1|cursor_row[4]\ : dffeas
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
	q => \mouse1|cursor_row\(4));

-- Location: LCCOMB_X36_Y14_N10
\inst12|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LessThan2~1_cout\ = CARRY((\mouse1|cursor_row\(0) & !\inst12|SYNC|pixel_row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(0),
	datab => \inst12|SYNC|pixel_row\(0),
	datad => VCC,
	cout => \inst12|LessThan2~1_cout\);

-- Location: LCCOMB_X36_Y14_N12
\inst12|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LessThan2~3_cout\ = CARRY((\inst12|SYNC|pixel_row\(1) & ((!\inst12|LessThan2~1_cout\) # (!\mouse1|cursor_row\(1)))) # (!\inst12|SYNC|pixel_row\(1) & (!\mouse1|cursor_row\(1) & !\inst12|LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|pixel_row\(1),
	datab => \mouse1|cursor_row\(1),
	datad => VCC,
	cin => \inst12|LessThan2~1_cout\,
	cout => \inst12|LessThan2~3_cout\);

-- Location: LCCOMB_X36_Y14_N14
\inst12|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LessThan2~5_cout\ = CARRY((\inst12|SYNC|pixel_row\(2) & (\mouse1|cursor_row\(2) & !\inst12|LessThan2~3_cout\)) # (!\inst12|SYNC|pixel_row\(2) & ((\mouse1|cursor_row\(2)) # (!\inst12|LessThan2~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|pixel_row\(2),
	datab => \mouse1|cursor_row\(2),
	datad => VCC,
	cin => \inst12|LessThan2~3_cout\,
	cout => \inst12|LessThan2~5_cout\);

-- Location: LCCOMB_X36_Y14_N16
\inst12|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LessThan2~7_cout\ = CARRY((\inst12|SYNC|pixel_row\(3) & (!\mouse1|cursor_row\(3) & !\inst12|LessThan2~5_cout\)) # (!\inst12|SYNC|pixel_row\(3) & ((!\inst12|LessThan2~5_cout\) # (!\mouse1|cursor_row\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|pixel_row\(3),
	datab => \mouse1|cursor_row\(3),
	datad => VCC,
	cin => \inst12|LessThan2~5_cout\,
	cout => \inst12|LessThan2~7_cout\);

-- Location: LCCOMB_X36_Y14_N18
\inst12|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LessThan2~9_cout\ = CARRY((\inst12|Add2~0_combout\ & (\mouse1|cursor_row\(4) & !\inst12|LessThan2~7_cout\)) # (!\inst12|Add2~0_combout\ & ((\mouse1|cursor_row\(4)) # (!\inst12|LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Add2~0_combout\,
	datab => \mouse1|cursor_row\(4),
	datad => VCC,
	cin => \inst12|LessThan2~7_cout\,
	cout => \inst12|LessThan2~9_cout\);

-- Location: LCCOMB_X36_Y14_N20
\inst12|LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LessThan2~11_cout\ = CARRY((\mouse1|cursor_row\(5) & (\inst12|Add2~2_combout\ & !\inst12|LessThan2~9_cout\)) # (!\mouse1|cursor_row\(5) & ((\inst12|Add2~2_combout\) # (!\inst12|LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(5),
	datab => \inst12|Add2~2_combout\,
	datad => VCC,
	cin => \inst12|LessThan2~9_cout\,
	cout => \inst12|LessThan2~11_cout\);

-- Location: LCCOMB_X36_Y14_N22
\inst12|LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LessThan2~13_cout\ = CARRY((\inst12|Add2~4_combout\ & (\mouse1|cursor_row\(6) & !\inst12|LessThan2~11_cout\)) # (!\inst12|Add2~4_combout\ & ((\mouse1|cursor_row\(6)) # (!\inst12|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Add2~4_combout\,
	datab => \mouse1|cursor_row\(6),
	datad => VCC,
	cin => \inst12|LessThan2~11_cout\,
	cout => \inst12|LessThan2~13_cout\);

-- Location: LCCOMB_X36_Y14_N24
\inst12|LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LessThan2~15_cout\ = CARRY((\inst12|Add2~6_combout\ & ((!\inst12|LessThan2~13_cout\) # (!\mouse1|cursor_row\(7)))) # (!\inst12|Add2~6_combout\ & (!\mouse1|cursor_row\(7) & !\inst12|LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Add2~6_combout\,
	datab => \mouse1|cursor_row\(7),
	datad => VCC,
	cin => \inst12|LessThan2~13_cout\,
	cout => \inst12|LessThan2~15_cout\);

-- Location: LCCOMB_X36_Y14_N26
\inst12|LessThan2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LessThan2~16_combout\ = (\mouse1|cursor_row\(8) & ((!\inst12|Add2~8_combout\) # (!\inst12|LessThan2~15_cout\))) # (!\mouse1|cursor_row\(8) & (!\inst12|LessThan2~15_cout\ & !\inst12|Add2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|cursor_row\(8),
	datad => \inst12|Add2~8_combout\,
	cin => \inst12|LessThan2~15_cout\,
	combout => \inst12|LessThan2~16_combout\);

-- Location: LCCOMB_X30_Y14_N24
\inst12|Red_Data~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Red_Data~0_combout\ = (\mouse1|left_button~q\) # ((\inst12|Ball_on~0_combout\) # (\inst12|LessThan2~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|left_button~q\,
	datac => \inst12|Ball_on~0_combout\,
	datad => \inst12|LessThan2~16_combout\,
	combout => \inst12|Red_Data~0_combout\);

-- Location: LCCOMB_X30_Y14_N28
\inst12|Red_Data~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Red_Data~1_combout\ = (\inst12|LessThan1~18_combout\) # ((\inst12|LessThan0~18_combout\) # ((\inst12|LessThan3~16_combout\) # (\inst12|Red_Data~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|LessThan1~18_combout\,
	datab => \inst12|LessThan0~18_combout\,
	datac => \inst12|LessThan3~16_combout\,
	datad => \inst12|Red_Data~0_combout\,
	combout => \inst12|Red_Data~1_combout\);

-- Location: FF_X30_Y14_N29
\inst12|Red_Data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst12|Red_Data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|Red_Data~q\);

-- Location: LCCOMB_X35_Y15_N12
\inst12|SYNC|video_on_v~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|video_on_v~feeder_combout\ = \inst12|SYNC|LessThan7~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|SYNC|LessThan7~1_combout\,
	combout => \inst12|SYNC|video_on_v~feeder_combout\);

-- Location: FF_X35_Y15_N13
\inst12|SYNC|video_on_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst12|SYNC|video_on_v~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|video_on_v~q\);

-- Location: LCCOMB_X38_Y18_N0
\inst12|SYNC|video_on_h~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|video_on_h~feeder_combout\ = \inst12|SYNC|process_0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|SYNC|process_0~0_combout\,
	combout => \inst12|SYNC|video_on_h~feeder_combout\);

-- Location: FF_X38_Y18_N1
\inst12|SYNC|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst12|SYNC|video_on_h~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|video_on_h~q\);

-- Location: LCCOMB_X38_Y18_N8
\inst12|SYNC|red_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|red_out~0_combout\ = (\inst12|Red_Data~q\ & (\inst12|SYNC|video_on_v~q\ & \inst12|SYNC|video_on_h~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|Red_Data~q\,
	datac => \inst12|SYNC|video_on_v~q\,
	datad => \inst12|SYNC|video_on_h~q\,
	combout => \inst12|SYNC|red_out~0_combout\);

-- Location: FF_X38_Y18_N9
\inst12|SYNC|red_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst12|SYNC|red_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|red_out~q\);

-- Location: FF_X30_Y15_N9
\inst12|SYNC|pixel_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst12|SYNC|h_count\(9),
	sload => VCC,
	ena => \inst12|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|pixel_column\(9));

-- Location: LCCOMB_X30_Y15_N14
\inst12|SYNC|pixel_column[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|pixel_column[4]~feeder_combout\ = \inst12|SYNC|h_count\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|SYNC|h_count\(4),
	combout => \inst12|SYNC|pixel_column[4]~feeder_combout\);

-- Location: FF_X30_Y15_N15
\inst12|SYNC|pixel_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst12|SYNC|pixel_column[4]~feeder_combout\,
	ena => \inst12|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|pixel_column\(4));

-- Location: LCCOMB_X26_Y14_N30
\mouse1|cursor_column~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~13_combout\ = (\mouse1|new_cursor_column\(3) & \mouse1|cursor_column[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|new_cursor_column\(3),
	datad => \mouse1|cursor_column[6]~6_combout\,
	combout => \mouse1|cursor_column~13_combout\);

-- Location: FF_X26_Y14_N31
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

-- Location: FF_X30_Y14_N7
\inst12|SYNC|pixel_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst12|SYNC|h_count\(1),
	sload => VCC,
	ena => \inst12|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|pixel_column\(1));

-- Location: LCCOMB_X30_Y14_N4
\inst12|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LessThan1~1_cout\ = CARRY((\inst12|SYNC|pixel_column\(0) & !\mouse1|cursor_column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|pixel_column\(0),
	datab => \mouse1|cursor_column\(0),
	datad => VCC,
	cout => \inst12|LessThan1~1_cout\);

-- Location: LCCOMB_X30_Y14_N6
\inst12|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LessThan1~3_cout\ = CARRY((\mouse1|cursor_column\(1) & ((!\inst12|LessThan1~1_cout\) # (!\inst12|SYNC|pixel_column\(1)))) # (!\mouse1|cursor_column\(1) & (!\inst12|SYNC|pixel_column\(1) & !\inst12|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(1),
	datab => \inst12|SYNC|pixel_column\(1),
	datad => VCC,
	cin => \inst12|LessThan1~1_cout\,
	cout => \inst12|LessThan1~3_cout\);

-- Location: LCCOMB_X30_Y14_N8
\inst12|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LessThan1~5_cout\ = CARRY((\inst12|SYNC|pixel_column\(2) & ((!\inst12|LessThan1~3_cout\) # (!\mouse1|cursor_column\(2)))) # (!\inst12|SYNC|pixel_column\(2) & (!\mouse1|cursor_column\(2) & !\inst12|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|pixel_column\(2),
	datab => \mouse1|cursor_column\(2),
	datad => VCC,
	cin => \inst12|LessThan1~3_cout\,
	cout => \inst12|LessThan1~5_cout\);

-- Location: LCCOMB_X30_Y14_N10
\inst12|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LessThan1~7_cout\ = CARRY((\inst12|SYNC|pixel_column\(3) & (!\mouse1|cursor_column\(3) & !\inst12|LessThan1~5_cout\)) # (!\inst12|SYNC|pixel_column\(3) & ((!\inst12|LessThan1~5_cout\) # (!\mouse1|cursor_column\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|pixel_column\(3),
	datab => \mouse1|cursor_column\(3),
	datad => VCC,
	cin => \inst12|LessThan1~5_cout\,
	cout => \inst12|LessThan1~7_cout\);

-- Location: LCCOMB_X30_Y14_N12
\inst12|LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LessThan1~9_cout\ = CARRY((\inst12|Add1~0_combout\ & (\inst12|SYNC|pixel_column\(4) & !\inst12|LessThan1~7_cout\)) # (!\inst12|Add1~0_combout\ & ((\inst12|SYNC|pixel_column\(4)) # (!\inst12|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Add1~0_combout\,
	datab => \inst12|SYNC|pixel_column\(4),
	datad => VCC,
	cin => \inst12|LessThan1~7_cout\,
	cout => \inst12|LessThan1~9_cout\);

-- Location: LCCOMB_X30_Y14_N14
\inst12|LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LessThan1~11_cout\ = CARRY((\inst12|SYNC|pixel_column\(5) & (\inst12|Add1~2_combout\ & !\inst12|LessThan1~9_cout\)) # (!\inst12|SYNC|pixel_column\(5) & ((\inst12|Add1~2_combout\) # (!\inst12|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|pixel_column\(5),
	datab => \inst12|Add1~2_combout\,
	datad => VCC,
	cin => \inst12|LessThan1~9_cout\,
	cout => \inst12|LessThan1~11_cout\);

-- Location: LCCOMB_X30_Y14_N16
\inst12|LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LessThan1~13_cout\ = CARRY((\inst12|SYNC|pixel_column\(6) & ((!\inst12|LessThan1~11_cout\) # (!\inst12|Add1~4_combout\))) # (!\inst12|SYNC|pixel_column\(6) & (!\inst12|Add1~4_combout\ & !\inst12|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|pixel_column\(6),
	datab => \inst12|Add1~4_combout\,
	datad => VCC,
	cin => \inst12|LessThan1~11_cout\,
	cout => \inst12|LessThan1~13_cout\);

-- Location: LCCOMB_X30_Y14_N18
\inst12|LessThan1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LessThan1~15_cout\ = CARRY((\inst12|SYNC|pixel_column\(7) & (\inst12|Add1~6_combout\ & !\inst12|LessThan1~13_cout\)) # (!\inst12|SYNC|pixel_column\(7) & ((\inst12|Add1~6_combout\) # (!\inst12|LessThan1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|pixel_column\(7),
	datab => \inst12|Add1~6_combout\,
	datad => VCC,
	cin => \inst12|LessThan1~13_cout\,
	cout => \inst12|LessThan1~15_cout\);

-- Location: LCCOMB_X30_Y14_N20
\inst12|LessThan1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LessThan1~17_cout\ = CARRY((\inst12|Add1~8_combout\ & (\inst12|SYNC|pixel_column\(8) & !\inst12|LessThan1~15_cout\)) # (!\inst12|Add1~8_combout\ & ((\inst12|SYNC|pixel_column\(8)) # (!\inst12|LessThan1~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Add1~8_combout\,
	datab => \inst12|SYNC|pixel_column\(8),
	datad => VCC,
	cin => \inst12|LessThan1~15_cout\,
	cout => \inst12|LessThan1~17_cout\);

-- Location: LCCOMB_X30_Y14_N22
\inst12|LessThan1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|LessThan1~18_combout\ = (\inst12|SYNC|pixel_column\(9) & ((\inst12|LessThan1~17_cout\) # (!\inst12|Add1~10_combout\))) # (!\inst12|SYNC|pixel_column\(9) & (\inst12|LessThan1~17_cout\ & !\inst12|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst12|SYNC|pixel_column\(9),
	datad => \inst12|Add1~10_combout\,
	cin => \inst12|LessThan1~17_cout\,
	combout => \inst12|LessThan1~18_combout\);

-- Location: LCCOMB_X30_Y14_N2
\inst12|Ball_on~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Ball_on~1_combout\ = (\inst12|LessThan2~16_combout\) # (\inst12|LessThan3~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|LessThan2~16_combout\,
	datad => \inst12|LessThan3~16_combout\,
	combout => \inst12|Ball_on~1_combout\);

-- Location: LCCOMB_X30_Y14_N26
\inst12|Ball_on\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Ball_on~combout\ = (\inst12|Ball_on~0_combout\) # ((\inst12|LessThan0~18_combout\) # ((\inst12|LessThan1~18_combout\) # (\inst12|Ball_on~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Ball_on~0_combout\,
	datab => \inst12|LessThan0~18_combout\,
	datac => \inst12|LessThan1~18_combout\,
	datad => \inst12|Ball_on~1_combout\,
	combout => \inst12|Ball_on~combout\);

-- Location: FF_X30_Y14_N27
\inst12|Green_Data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst12|Ball_on~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|Green_Data~q\);

-- Location: LCCOMB_X38_Y18_N6
\inst12|SYNC|green_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|green_out~0_combout\ = (\inst12|SYNC|video_on_v~q\ & (\inst12|Green_Data~q\ & \inst12|SYNC|video_on_h~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|SYNC|video_on_v~q\,
	datac => \inst12|Green_Data~q\,
	datad => \inst12|SYNC|video_on_h~q\,
	combout => \inst12|SYNC|green_out~0_combout\);

-- Location: FF_X38_Y18_N7
\inst12|SYNC|green_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst12|SYNC|green_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|green_out~q\);

-- Location: LCCOMB_X31_Y14_N28
\inst12|Blue_Data~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Blue_Data~0_combout\ = (\inst12|LessThan2~16_combout\) # ((\inst12|Ball_on~0_combout\) # (!\mouse1|left_button~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|LessThan2~16_combout\,
	datac => \mouse1|left_button~q\,
	datad => \inst12|Ball_on~0_combout\,
	combout => \inst12|Blue_Data~0_combout\);

-- Location: LCCOMB_X30_Y14_N0
\inst12|Blue_Data~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Blue_Data~1_combout\ = (\inst12|LessThan1~18_combout\) # ((\inst12|LessThan0~18_combout\) # ((\inst12|LessThan3~16_combout\) # (\inst12|Blue_Data~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|LessThan1~18_combout\,
	datab => \inst12|LessThan0~18_combout\,
	datac => \inst12|LessThan3~16_combout\,
	datad => \inst12|Blue_Data~0_combout\,
	combout => \inst12|Blue_Data~1_combout\);

-- Location: FF_X30_Y14_N1
\inst12|Blue_Data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst12|Blue_Data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|Blue_Data~q\);

-- Location: LCCOMB_X38_Y18_N20
\inst12|SYNC|blue_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|blue_out~0_combout\ = (\inst12|SYNC|video_on_v~q\ & (\inst12|Blue_Data~q\ & \inst12|SYNC|video_on_h~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|SYNC|video_on_v~q\,
	datac => \inst12|Blue_Data~q\,
	datad => \inst12|SYNC|video_on_h~q\,
	combout => \inst12|SYNC|blue_out~0_combout\);

-- Location: FF_X38_Y18_N21
\inst12|SYNC|blue_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst12|SYNC|blue_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|blue_out~q\);

-- Location: LCCOMB_X29_Y15_N30
\inst12|SYNC|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|process_0~2_combout\ = (\inst12|SYNC|h_count\(3)) # ((!\inst12|SYNC|h_count\(5) & (\inst12|SYNC|h_count\(1) & \inst12|SYNC|h_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|h_count\(5),
	datab => \inst12|SYNC|h_count\(3),
	datac => \inst12|SYNC|h_count\(1),
	datad => \inst12|SYNC|h_count\(0),
	combout => \inst12|SYNC|process_0~2_combout\);

-- Location: LCCOMB_X30_Y15_N4
\inst12|SYNC|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|process_0~3_combout\ = (\inst12|SYNC|h_count\(4) & ((\inst12|SYNC|h_count\(2)) # (\inst12|SYNC|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|h_count\(2),
	datab => \inst12|SYNC|h_count\(4),
	datad => \inst12|SYNC|process_0~2_combout\,
	combout => \inst12|SYNC|process_0~3_combout\);

-- Location: LCCOMB_X30_Y15_N6
\inst12|SYNC|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|process_0~1_combout\ = (\inst12|SYNC|h_count\(9) & (\inst12|SYNC|h_count\(7) & !\inst12|SYNC|h_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|h_count\(9),
	datab => \inst12|SYNC|h_count\(7),
	datad => \inst12|SYNC|h_count\(8),
	combout => \inst12|SYNC|process_0~1_combout\);

-- Location: LCCOMB_X30_Y15_N2
\inst12|SYNC|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|process_0~4_combout\ = ((\inst12|SYNC|h_count\(6) & (\inst12|SYNC|h_count\(5) & \inst12|SYNC|process_0~3_combout\)) # (!\inst12|SYNC|h_count\(6) & (!\inst12|SYNC|h_count\(5) & !\inst12|SYNC|process_0~3_combout\))) # 
-- (!\inst12|SYNC|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|h_count\(6),
	datab => \inst12|SYNC|h_count\(5),
	datac => \inst12|SYNC|process_0~3_combout\,
	datad => \inst12|SYNC|process_0~1_combout\,
	combout => \inst12|SYNC|process_0~4_combout\);

-- Location: FF_X38_Y18_N3
\inst12|SYNC|horiz_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst12|SYNC|process_0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|horiz_sync~q\);

-- Location: LCCOMB_X38_Y18_N10
\inst12|SYNC|horiz_sync_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|horiz_sync_out~feeder_combout\ = \inst12|SYNC|horiz_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|SYNC|horiz_sync~q\,
	combout => \inst12|SYNC|horiz_sync_out~feeder_combout\);

-- Location: FF_X38_Y18_N11
\inst12|SYNC|horiz_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst12|SYNC|horiz_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|horiz_sync_out~q\);

-- Location: LCCOMB_X35_Y16_N24
\inst12|SYNC|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|process_0~5_combout\ = ((\inst12|SYNC|v_count\(1) $ (!\inst12|SYNC|v_count\(0))) # (!\inst12|SYNC|v_count\(3))) # (!\inst12|SYNC|v_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|v_count\(2),
	datab => \inst12|SYNC|v_count\(3),
	datac => \inst12|SYNC|v_count\(1),
	datad => \inst12|SYNC|v_count\(0),
	combout => \inst12|SYNC|process_0~5_combout\);

-- Location: LCCOMB_X36_Y16_N2
\inst12|SYNC|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|process_0~6_combout\ = (\inst12|SYNC|v_count\(9)) # (((\inst12|SYNC|v_count\(4)) # (\inst12|SYNC|process_0~5_combout\)) # (!\inst12|SYNC|LessThan7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|SYNC|v_count\(9),
	datab => \inst12|SYNC|LessThan7~0_combout\,
	datac => \inst12|SYNC|v_count\(4),
	datad => \inst12|SYNC|process_0~5_combout\,
	combout => \inst12|SYNC|process_0~6_combout\);

-- Location: FF_X36_Y16_N3
\inst12|SYNC|vert_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst12|SYNC|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|vert_sync~q\);

-- Location: LCCOMB_X37_Y18_N8
\inst12|SYNC|vert_sync_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|SYNC|vert_sync_out~feeder_combout\ = \inst12|SYNC|vert_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|SYNC|vert_sync~q\,
	combout => \inst12|SYNC|vert_sync_out~feeder_combout\);

-- Location: FF_X37_Y18_N9
\inst12|SYNC|vert_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst12|SYNC|vert_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|SYNC|vert_sync_out~q\);

-- Location: LCCOMB_X28_Y14_N0
\mouseCol7seg|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseCol7seg|Mux0~0_combout\ = (\mouse1|cursor_column\(6) & ((\mouse1|cursor_column\(9)) # (\mouse1|cursor_column\(7) $ (\mouse1|cursor_column\(8))))) # (!\mouse1|cursor_column\(6) & ((\mouse1|cursor_column\(7)) # (\mouse1|cursor_column\(8) $ 
-- (\mouse1|cursor_column\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(7),
	datab => \mouse1|cursor_column\(6),
	datac => \mouse1|cursor_column\(8),
	datad => \mouse1|cursor_column\(9),
	combout => \mouseCol7seg|Mux0~0_combout\);

-- Location: LCCOMB_X26_Y14_N22
\mouseCol7seg|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseCol7seg|Mux1~0_combout\ = (\mouse1|cursor_column\(6) & (\mouse1|cursor_column\(9) $ (((\mouse1|cursor_column\(7)) # (!\mouse1|cursor_column\(8)))))) # (!\mouse1|cursor_column\(6) & (!\mouse1|cursor_column\(9) & (\mouse1|cursor_column\(7) & 
-- !\mouse1|cursor_column\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(6),
	datab => \mouse1|cursor_column\(9),
	datac => \mouse1|cursor_column\(7),
	datad => \mouse1|cursor_column\(8),
	combout => \mouseCol7seg|Mux1~0_combout\);

-- Location: LCCOMB_X26_Y14_N28
\mouseCol7seg|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseCol7seg|Mux2~0_combout\ = (\mouse1|cursor_column\(7) & (\mouse1|cursor_column\(6) & (!\mouse1|cursor_column\(9)))) # (!\mouse1|cursor_column\(7) & ((\mouse1|cursor_column\(8) & ((!\mouse1|cursor_column\(9)))) # (!\mouse1|cursor_column\(8) & 
-- (\mouse1|cursor_column\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(6),
	datab => \mouse1|cursor_column\(9),
	datac => \mouse1|cursor_column\(7),
	datad => \mouse1|cursor_column\(8),
	combout => \mouseCol7seg|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y14_N2
\mouseCol7seg|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseCol7seg|Mux3~0_combout\ = (\mouse1|cursor_column\(6) & (\mouse1|cursor_column\(7) $ ((!\mouse1|cursor_column\(8))))) # (!\mouse1|cursor_column\(6) & ((\mouse1|cursor_column\(7) & (!\mouse1|cursor_column\(8) & \mouse1|cursor_column\(9))) # 
-- (!\mouse1|cursor_column\(7) & (\mouse1|cursor_column\(8) & !\mouse1|cursor_column\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(7),
	datab => \mouse1|cursor_column\(6),
	datac => \mouse1|cursor_column\(8),
	datad => \mouse1|cursor_column\(9),
	combout => \mouseCol7seg|Mux3~0_combout\);

-- Location: LCCOMB_X27_Y14_N2
\mouseCol7seg|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseCol7seg|Mux4~0_combout\ = (\mouse1|cursor_column\(9) & (\mouse1|cursor_column\(8) & ((\mouse1|cursor_column\(7)) # (!\mouse1|cursor_column\(6))))) # (!\mouse1|cursor_column\(9) & (!\mouse1|cursor_column\(6) & (!\mouse1|cursor_column\(8) & 
-- \mouse1|cursor_column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(6),
	datab => \mouse1|cursor_column\(9),
	datac => \mouse1|cursor_column\(8),
	datad => \mouse1|cursor_column\(7),
	combout => \mouseCol7seg|Mux4~0_combout\);

-- Location: LCCOMB_X26_Y14_N26
\mouseCol7seg|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseCol7seg|Mux5~0_combout\ = (\mouse1|cursor_column\(9) & ((\mouse1|cursor_column\(6) & (\mouse1|cursor_column\(7))) # (!\mouse1|cursor_column\(6) & ((\mouse1|cursor_column\(8)))))) # (!\mouse1|cursor_column\(9) & (\mouse1|cursor_column\(8) & 
-- (\mouse1|cursor_column\(6) $ (\mouse1|cursor_column\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(6),
	datab => \mouse1|cursor_column\(9),
	datac => \mouse1|cursor_column\(7),
	datad => \mouse1|cursor_column\(8),
	combout => \mouseCol7seg|Mux5~0_combout\);

-- Location: LCCOMB_X26_Y15_N20
\mouseCol7seg|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseCol7seg|Mux6~0_combout\ = (\mouse1|cursor_column\(9) & (\mouse1|cursor_column\(6) & (\mouse1|cursor_column\(8) $ (\mouse1|cursor_column\(7))))) # (!\mouse1|cursor_column\(9) & (!\mouse1|cursor_column\(7) & (\mouse1|cursor_column\(6) $ 
-- (\mouse1|cursor_column\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(9),
	datab => \mouse1|cursor_column\(6),
	datac => \mouse1|cursor_column\(8),
	datad => \mouse1|cursor_column\(7),
	combout => \mouseCol7seg|Mux6~0_combout\);

-- Location: LCCOMB_X33_Y14_N20
\mouseRow7seg|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseRow7seg|Mux0~0_combout\ = (\mouse1|cursor_row\(8) & (\mouse1|cursor_row\(6) & \mouse1|cursor_row\(7))) # (!\mouse1|cursor_row\(8) & ((!\mouse1|cursor_row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|cursor_row\(8),
	datac => \mouse1|cursor_row\(6),
	datad => \mouse1|cursor_row\(7),
	combout => \mouseRow7seg|Mux0~0_combout\);

-- Location: LCCOMB_X33_Y14_N14
\mouseRow7seg|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseRow7seg|Mux1~0_combout\ = (\mouse1|cursor_row\(8) & (\mouse1|cursor_row\(6) & \mouse1|cursor_row\(7))) # (!\mouse1|cursor_row\(8) & ((\mouse1|cursor_row\(6)) # (\mouse1|cursor_row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|cursor_row\(8),
	datac => \mouse1|cursor_row\(6),
	datad => \mouse1|cursor_row\(7),
	combout => \mouseRow7seg|Mux1~0_combout\);

-- Location: LCCOMB_X33_Y14_N16
\mouseRow7seg|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseRow7seg|Mux2~0_combout\ = (\mouse1|cursor_row\(6)) # ((\mouse1|cursor_row\(8) & !\mouse1|cursor_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|cursor_row\(8),
	datac => \mouse1|cursor_row\(6),
	datad => \mouse1|cursor_row\(7),
	combout => \mouseRow7seg|Mux2~0_combout\);

-- Location: LCCOMB_X33_Y14_N26
\mouseRow7seg|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseRow7seg|Mux3~0_combout\ = (\mouse1|cursor_row\(8) & (\mouse1|cursor_row\(6) $ (!\mouse1|cursor_row\(7)))) # (!\mouse1|cursor_row\(8) & (\mouse1|cursor_row\(6) & !\mouse1|cursor_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|cursor_row\(8),
	datac => \mouse1|cursor_row\(6),
	datad => \mouse1|cursor_row\(7),
	combout => \mouseRow7seg|Mux3~0_combout\);

-- Location: LCCOMB_X32_Y14_N0
\mouseRow7seg|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseRow7seg|Mux4~0_combout\ = (!\mouse1|cursor_row\(6) & (!\mouse1|cursor_row\(8) & \mouse1|cursor_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|cursor_row\(6),
	datac => \mouse1|cursor_row\(8),
	datad => \mouse1|cursor_row\(7),
	combout => \mouseRow7seg|Mux4~0_combout\);

-- Location: LCCOMB_X33_Y14_N8
\mouseRow7seg|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseRow7seg|Mux5~0_combout\ = (\mouse1|cursor_row\(6) $ (!\mouse1|cursor_row\(7))) # (!\mouse1|cursor_row\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|cursor_row\(8),
	datac => \mouse1|cursor_row\(6),
	datad => \mouse1|cursor_row\(7),
	combout => \mouseRow7seg|Mux5~0_combout\);

-- Location: LCCOMB_X33_Y14_N22
\mouseRow7seg|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseRow7seg|Mux6~0_combout\ = (!\mouse1|cursor_row\(7) & (\mouse1|cursor_row\(8) $ (\mouse1|cursor_row\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|cursor_row\(8),
	datac => \mouse1|cursor_row\(6),
	datad => \mouse1|cursor_row\(7),
	combout => \mouseRow7seg|Mux6~0_combout\);
END structure;


