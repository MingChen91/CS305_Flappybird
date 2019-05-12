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

-- DATE "05/12/2019 21:58:46"

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
	mouse_data : INOUT std_logic;
	mouse_clk : INOUT std_logic;
	g1 : OUT std_logic;
	b1 : OUT std_logic;
	red_out : OUT std_logic;
	green_out : OUT std_logic;
	blue_out : OUT std_logic;
	horiz_sync_out : OUT std_logic;
	vert_sync_out : OUT std_logic;
	seg0_dec : OUT std_logic;
	seg2_dec : OUT std_logic;
	seg0 : OUT std_logic_vector(6 DOWNTO 0);
	seg1 : OUT std_logic_vector(6 DOWNTO 0);
	seg2 : OUT std_logic_vector(6 DOWNTO 0);
	seg3 : OUT std_logic_vector(6 DOWNTO 0)
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
-- seg0_dec	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg2_dec	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_seg0_dec : std_logic;
SIGNAL ww_seg2_dec : std_logic;
SIGNAL ww_seg0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \PLL1|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \PLL1|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \mouse1|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cursor|Add0~4_combout\ : std_logic;
SIGNAL \cursor|Add0~8_combout\ : std_logic;
SIGNAL \cursor|Add1~2_combout\ : std_logic;
SIGNAL \cursor|Add1~4_combout\ : std_logic;
SIGNAL \cursor|Add1~6_combout\ : std_logic;
SIGNAL \cursor|LessThan0~1_cout\ : std_logic;
SIGNAL \cursor|LessThan0~3_cout\ : std_logic;
SIGNAL \cursor|LessThan0~5_cout\ : std_logic;
SIGNAL \cursor|LessThan0~7_cout\ : std_logic;
SIGNAL \cursor|LessThan0~9_cout\ : std_logic;
SIGNAL \cursor|LessThan0~11_cout\ : std_logic;
SIGNAL \cursor|LessThan0~13_cout\ : std_logic;
SIGNAL \cursor|LessThan0~15_cout\ : std_logic;
SIGNAL \cursor|LessThan0~16_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[0]~10_combout\ : std_logic;
SIGNAL \VGA_controls|Add1~0_combout\ : std_logic;
SIGNAL \VGA_controls|Add1~2_combout\ : std_logic;
SIGNAL \VGA_controls|Add1~6_combout\ : std_logic;
SIGNAL \VGA_controls|Add1~16_combout\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[1]~10_combout\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[2]~12_combout\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[7]~22_combout\ : std_logic;
SIGNAL \mouse1|LessThan9~0_combout\ : std_logic;
SIGNAL \VGA_controls|process_0~2_combout\ : std_logic;
SIGNAL \VGA_controls|process_0~3_combout\ : std_logic;
SIGNAL \mouse1|MOUSE_CLK_FILTER~0_combout\ : std_logic;
SIGNAL \VGA_controls|process_0~9_combout\ : std_logic;
SIGNAL \VGA_controls|Equal0~2_combout\ : std_logic;
SIGNAL \mouse1|OUTCNT~0_combout\ : std_logic;
SIGNAL \mouse1|mouse_state.INPUT_PACKETS~q\ : std_logic;
SIGNAL \mouse1|Selector6~0_combout\ : std_logic;
SIGNAL \mouse1|iready_set~q\ : std_logic;
SIGNAL \mouse1|mouse_state.WAIT_CMD_ACK~q\ : std_logic;
SIGNAL \mouse1|mouse_state.INPUT_PACKETS~0_combout\ : std_logic;
SIGNAL \mouse1|iready_set~0_combout\ : std_logic;
SIGNAL \mouse1|Selector4~0_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR3[0]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR3[6]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[6]~feeder_combout\ : std_logic;
SIGNAL \mouse_clk~input_o\ : std_logic;
SIGNAL \mouse1|filter[2]~feeder_combout\ : std_logic;
SIGNAL \mouse1|filter[3]~feeder_combout\ : std_logic;
SIGNAL \mouse1|filter[4]~feeder_combout\ : std_logic;
SIGNAL \mouse1|filter[5]~feeder_combout\ : std_logic;
SIGNAL \mouse1|MOUSE_CLK_FILTER~1_combout\ : std_logic;
SIGNAL \mouse1|filter[6]~feeder_combout\ : std_logic;
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
SIGNAL \mouse1|inhibit_wait_count[4]~16_combout\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[4]~17\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[5]~18_combout\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[5]~19\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[6]~20_combout\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[6]~21\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[7]~23\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[8]~24_combout\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[8]~25\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[9]~27\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[10]~28_combout\ : std_logic;
SIGNAL \mouse1|inhibit_wait_count[9]~26_combout\ : std_logic;
SIGNAL \mouse1|Selector1~0_combout\ : std_logic;
SIGNAL \mouse1|mouse_state.LOAD_COMMAND~q\ : std_logic;
SIGNAL \mouse1|mouse_state.LOAD_COMMAND2~q\ : std_logic;
SIGNAL \mouse1|Selector6~1_combout\ : std_logic;
SIGNAL \mouse1|send_data~q\ : std_logic;
SIGNAL \mouse1|OUTCNT~3_combout\ : std_logic;
SIGNAL \mouse1|output_ready~0_combout\ : std_logic;
SIGNAL \mouse1|OUTCNT~2_combout\ : std_logic;
SIGNAL \mouse1|OUTCNT~1_combout\ : std_logic;
SIGNAL \mouse1|LessThan0~0_combout\ : std_logic;
SIGNAL \mouse1|output_ready~feeder_combout\ : std_logic;
SIGNAL \mouse1|output_ready~q\ : std_logic;
SIGNAL \mouse1|Selector3~0_combout\ : std_logic;
SIGNAL \mouse1|mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;
SIGNAL \mouse1|send_char~0_combout\ : std_logic;
SIGNAL \mouse1|send_char~q\ : std_logic;
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
SIGNAL \mouse_data~input_o\ : std_logic;
SIGNAL \mouse1|SHIFTIN[8]~feeder_combout\ : std_logic;
SIGNAL \mouse1|INCNT~3_combout\ : std_logic;
SIGNAL \mouse1|INCNT[3]~2_combout\ : std_logic;
SIGNAL \mouse1|INCNT~4_combout\ : std_logic;
SIGNAL \mouse1|INCNT~1_combout\ : std_logic;
SIGNAL \mouse1|INCNT~5_combout\ : std_logic;
SIGNAL \mouse1|LessThan1~0_combout\ : std_logic;
SIGNAL \mouse1|READ_CHAR~0_combout\ : std_logic;
SIGNAL \mouse1|READ_CHAR~q\ : std_logic;
SIGNAL \mouse1|SHIFTIN[1]~0_combout\ : std_logic;
SIGNAL \mouse1|SHIFTIN[7]~feeder_combout\ : std_logic;
SIGNAL \mouse1|Add3~0_combout\ : std_logic;
SIGNAL \mouse1|PACKET_COUNT[1]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[7]~0_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR1[1]~0_combout\ : std_logic;
SIGNAL \mouse1|PACKET_COUNT[0]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[7]~1_combout\ : std_logic;
SIGNAL \mouse1|INCNT[3]~0_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[7]~2_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[4]~feeder_combout\ : std_logic;
SIGNAL \mouse1|SHIFTIN[3]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[3]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[2]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[1]~feeder_combout\ : std_logic;
SIGNAL \mouse1|SHIFTIN[0]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR2[0]~feeder_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[0]~11\ : std_logic;
SIGNAL \mouse1|new_cursor_column[1]~13\ : std_logic;
SIGNAL \mouse1|new_cursor_column[2]~15\ : std_logic;
SIGNAL \mouse1|new_cursor_column[3]~17\ : std_logic;
SIGNAL \mouse1|new_cursor_column[4]~19\ : std_logic;
SIGNAL \mouse1|new_cursor_column[5]~21\ : std_logic;
SIGNAL \mouse1|new_cursor_column[6]~22_combout\ : std_logic;
SIGNAL \mouse1|Equal4~0_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[9]~16_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~18_combout\ : std_logic;
SIGNAL \mouse1|cursor_row[5]~2_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[6]~23\ : std_logic;
SIGNAL \mouse1|new_cursor_column[7]~25\ : std_logic;
SIGNAL \mouse1|new_cursor_column[8]~26_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[7]~24_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[8]~27\ : std_logic;
SIGNAL \mouse1|new_cursor_column[9]~28_combout\ : std_logic;
SIGNAL \mouse1|cursor_column[2]~7_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~19_combout\ : std_logic;
SIGNAL \mouse1|Equal3~0_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[0]~10_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[2]~14_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[1]~12_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[3]~16_combout\ : std_logic;
SIGNAL \mouse1|RECV_UART~3_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~4_combout\ : std_logic;
SIGNAL \mouse1|RECV_UART~4_combout\ : std_logic;
SIGNAL \mouse1|RECV_UART~5_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~5_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~6_combout\ : std_logic;
SIGNAL \mouse1|cursor_column[2]~8_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~13_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~15_combout\ : std_logic;
SIGNAL \VGA_controls|Add0~1\ : std_logic;
SIGNAL \VGA_controls|Add0~2_combout\ : std_logic;
SIGNAL \VGA_controls|Add0~3\ : std_logic;
SIGNAL \VGA_controls|Add0~5\ : std_logic;
SIGNAL \VGA_controls|Add0~7\ : std_logic;
SIGNAL \VGA_controls|Add0~8_combout\ : std_logic;
SIGNAL \VGA_controls|Add0~9\ : std_logic;
SIGNAL \VGA_controls|Add0~11\ : std_logic;
SIGNAL \VGA_controls|Add0~12_combout\ : std_logic;
SIGNAL \VGA_controls|Add0~13\ : std_logic;
SIGNAL \VGA_controls|Add0~14_combout\ : std_logic;
SIGNAL \VGA_controls|Add0~15\ : std_logic;
SIGNAL \VGA_controls|Add0~17\ : std_logic;
SIGNAL \VGA_controls|Add0~18_combout\ : std_logic;
SIGNAL \VGA_controls|Equal0~1_combout\ : std_logic;
SIGNAL \VGA_controls|Add0~6_combout\ : std_logic;
SIGNAL \VGA_controls|Equal0~0_combout\ : std_logic;
SIGNAL \VGA_controls|h_count~0_combout\ : std_logic;
SIGNAL \VGA_controls|Add0~16_combout\ : std_logic;
SIGNAL \VGA_controls|h_count~1_combout\ : std_logic;
SIGNAL \VGA_controls|process_0~0_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~14_combout\ : std_logic;
SIGNAL \VGA_controls|Add0~10_combout\ : std_logic;
SIGNAL \VGA_controls|h_count~2_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[4]~18_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~11_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~10_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~9_combout\ : std_logic;
SIGNAL \VGA_controls|Add0~0_combout\ : std_logic;
SIGNAL \VGA_controls|pixel_column[0]~feeder_combout\ : std_logic;
SIGNAL \cursor|LessThan2~1_cout\ : std_logic;
SIGNAL \cursor|LessThan2~3_cout\ : std_logic;
SIGNAL \cursor|LessThan2~5_cout\ : std_logic;
SIGNAL \cursor|LessThan2~7_cout\ : std_logic;
SIGNAL \cursor|LessThan2~9_cout\ : std_logic;
SIGNAL \cursor|LessThan2~11_cout\ : std_logic;
SIGNAL \cursor|LessThan2~13_cout\ : std_logic;
SIGNAL \cursor|LessThan2~15_cout\ : std_logic;
SIGNAL \cursor|LessThan2~17_cout\ : std_logic;
SIGNAL \cursor|LessThan2~18_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR3[7]~feeder_combout\ : std_logic;
SIGNAL \mouse1|right_button~0_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR3[1]~feeder_combout\ : std_logic;
SIGNAL \mouse1|cursor_row~10_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[0]~11\ : std_logic;
SIGNAL \mouse1|new_cursor_row[1]~12_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR3[4]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR3[3]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR3[2]~feeder_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[1]~13\ : std_logic;
SIGNAL \mouse1|new_cursor_row[2]~15\ : std_logic;
SIGNAL \mouse1|new_cursor_row[3]~18\ : std_logic;
SIGNAL \mouse1|new_cursor_row[4]~19_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[2]~14_combout\ : std_logic;
SIGNAL \mouse1|LessThan5~0_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[8]~27_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR3[5]~feeder_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[4]~20\ : std_logic;
SIGNAL \mouse1|new_cursor_row[5]~21_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[5]~22\ : std_logic;
SIGNAL \mouse1|new_cursor_row[6]~23_combout\ : std_logic;
SIGNAL \mouse1|LessThan5~1_combout\ : std_logic;
SIGNAL \mouse1|cursor_row~0_combout\ : std_logic;
SIGNAL \mouse1|cursor_row~6_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[6]~24\ : std_logic;
SIGNAL \mouse1|new_cursor_row[7]~26\ : std_logic;
SIGNAL \mouse1|new_cursor_row[8]~28\ : std_logic;
SIGNAL \mouse1|new_cursor_row[9]~29_combout\ : std_logic;
SIGNAL \mouse1|cursor_row~7_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[7]~25_combout\ : std_logic;
SIGNAL \mouse1|RECV_UART~0_combout\ : std_logic;
SIGNAL \mouse1|RECV_UART~1_combout\ : std_logic;
SIGNAL \mouse1|RECV_UART~2_combout\ : std_logic;
SIGNAL \mouse1|cursor_row~8_combout\ : std_logic;
SIGNAL \mouse1|cursor_row~5_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_row[3]~17_combout\ : std_logic;
SIGNAL \mouse1|cursor_row~3_combout\ : std_logic;
SIGNAL \cursor|Add0~1\ : std_logic;
SIGNAL \cursor|Add0~3\ : std_logic;
SIGNAL \cursor|Add0~5\ : std_logic;
SIGNAL \cursor|Add0~7\ : std_logic;
SIGNAL \cursor|Add0~9\ : std_logic;
SIGNAL \cursor|Add0~10_combout\ : std_logic;
SIGNAL \VGA_controls|video_on_h~feeder_combout\ : std_logic;
SIGNAL \VGA_controls|video_on_h~q\ : std_logic;
SIGNAL \VGA_controls|Add0~4_combout\ : std_logic;
SIGNAL \VGA_controls|Equal1~0_combout\ : std_logic;
SIGNAL \VGA_controls|v_count[2]~0_combout\ : std_logic;
SIGNAL \VGA_controls|v_count[0]~1_combout\ : std_logic;
SIGNAL \VGA_controls|v_count[8]~6_combout\ : std_logic;
SIGNAL \VGA_controls|v_count[3]~8_combout\ : std_logic;
SIGNAL \VGA_controls|process_0~10_combout\ : std_logic;
SIGNAL \VGA_controls|process_0~11_combout\ : std_logic;
SIGNAL \VGA_controls|Add1~11\ : std_logic;
SIGNAL \VGA_controls|Add1~12_combout\ : std_logic;
SIGNAL \VGA_controls|v_count[6]~4_combout\ : std_logic;
SIGNAL \VGA_controls|Add1~13\ : std_logic;
SIGNAL \VGA_controls|Add1~14_combout\ : std_logic;
SIGNAL \VGA_controls|v_count[7]~5_combout\ : std_logic;
SIGNAL \VGA_controls|process_0~7_combout\ : std_logic;
SIGNAL \VGA_controls|process_0~8_combout\ : std_logic;
SIGNAL \VGA_controls|process_0~12_combout\ : std_logic;
SIGNAL \VGA_controls|v_count~11_combout\ : std_logic;
SIGNAL \VGA_controls|Add1~1\ : std_logic;
SIGNAL \VGA_controls|Add1~3\ : std_logic;
SIGNAL \VGA_controls|Add1~4_combout\ : std_logic;
SIGNAL \VGA_controls|v_count[2]~9_combout\ : std_logic;
SIGNAL \VGA_controls|Add1~5\ : std_logic;
SIGNAL \VGA_controls|Add1~7\ : std_logic;
SIGNAL \VGA_controls|Add1~8_combout\ : std_logic;
SIGNAL \VGA_controls|v_count[4]~7_combout\ : std_logic;
SIGNAL \VGA_controls|Add1~9\ : std_logic;
SIGNAL \VGA_controls|Add1~10_combout\ : std_logic;
SIGNAL \VGA_controls|v_count[5]~3_combout\ : std_logic;
SIGNAL \VGA_controls|LessThan7~0_combout\ : std_logic;
SIGNAL \VGA_controls|Add1~15\ : std_logic;
SIGNAL \VGA_controls|Add1~17\ : std_logic;
SIGNAL \VGA_controls|Add1~18_combout\ : std_logic;
SIGNAL \VGA_controls|v_count[9]~2_combout\ : std_logic;
SIGNAL \VGA_controls|LessThan7~1_combout\ : std_logic;
SIGNAL \cursor|Add0~6_combout\ : std_logic;
SIGNAL \cursor|Add0~2_combout\ : std_logic;
SIGNAL \cursor|Add0~0_combout\ : std_logic;
SIGNAL \mouse1|cursor_row~1_combout\ : std_logic;
SIGNAL \mouse1|cursor_row~9_combout\ : std_logic;
SIGNAL \cursor|LessThan1~1_cout\ : std_logic;
SIGNAL \cursor|LessThan1~3_cout\ : std_logic;
SIGNAL \cursor|LessThan1~5_cout\ : std_logic;
SIGNAL \cursor|LessThan1~7_cout\ : std_logic;
SIGNAL \cursor|LessThan1~9_cout\ : std_logic;
SIGNAL \cursor|LessThan1~11_cout\ : std_logic;
SIGNAL \cursor|LessThan1~13_cout\ : std_logic;
SIGNAL \cursor|LessThan1~15_cout\ : std_logic;
SIGNAL \cursor|LessThan1~16_combout\ : std_logic;
SIGNAL \VGA_controls|green_out~0_combout\ : std_logic;
SIGNAL \cursor|Add1~1\ : std_logic;
SIGNAL \cursor|Add1~3\ : std_logic;
SIGNAL \cursor|Add1~5\ : std_logic;
SIGNAL \cursor|Add1~7\ : std_logic;
SIGNAL \cursor|Add1~9\ : std_logic;
SIGNAL \cursor|Add1~10_combout\ : std_logic;
SIGNAL \cursor|Add1~8_combout\ : std_logic;
SIGNAL \cursor|Add1~0_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~16_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~17_combout\ : std_logic;
SIGNAL \cursor|LessThan3~1_cout\ : std_logic;
SIGNAL \cursor|LessThan3~3_cout\ : std_logic;
SIGNAL \cursor|LessThan3~5_cout\ : std_logic;
SIGNAL \cursor|LessThan3~7_cout\ : std_logic;
SIGNAL \cursor|LessThan3~9_cout\ : std_logic;
SIGNAL \cursor|LessThan3~11_cout\ : std_logic;
SIGNAL \cursor|LessThan3~13_cout\ : std_logic;
SIGNAL \cursor|LessThan3~15_cout\ : std_logic;
SIGNAL \cursor|LessThan3~17_cout\ : std_logic;
SIGNAL \cursor|LessThan3~18_combout\ : std_logic;
SIGNAL \VGA_controls|green_out~1_combout\ : std_logic;
SIGNAL \VGA_controls|green_out~q\ : std_logic;
SIGNAL \VGA_controls|video_on_v~feeder_combout\ : std_logic;
SIGNAL \VGA_controls|video_on_v~q\ : std_logic;
SIGNAL \VGA_controls|video_on~combout\ : std_logic;
SIGNAL \VGA_controls|blue_out~q\ : std_logic;
SIGNAL \VGA_controls|process_0~1_combout\ : std_logic;
SIGNAL \VGA_controls|process_0~4_combout\ : std_logic;
SIGNAL \VGA_controls|horiz_sync~q\ : std_logic;
SIGNAL \VGA_controls|horiz_sync_out~feeder_combout\ : std_logic;
SIGNAL \VGA_controls|horiz_sync_out~q\ : std_logic;
SIGNAL \VGA_controls|v_count~10_combout\ : std_logic;
SIGNAL \VGA_controls|process_0~5_combout\ : std_logic;
SIGNAL \VGA_controls|process_0~6_combout\ : std_logic;
SIGNAL \VGA_controls|vert_sync~q\ : std_logic;
SIGNAL \VGA_controls|vert_sync_out~feeder_combout\ : std_logic;
SIGNAL \VGA_controls|vert_sync_out~q\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR1[1]~feeder_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR1[1]~1_combout\ : std_logic;
SIGNAL \mouse1|right_button~feeder_combout\ : std_logic;
SIGNAL \mouse1|right_button~q\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR1[0]~feeder_combout\ : std_logic;
SIGNAL \mouse1|left_button~feeder_combout\ : std_logic;
SIGNAL \mouse1|left_button~q\ : std_logic;
SIGNAL \mouse1|cursor_row~4_combout\ : std_logic;
SIGNAL \mouseY2_7seg|Mux0~0_combout\ : std_logic;
SIGNAL \mouseY2_7seg|Mux1~0_combout\ : std_logic;
SIGNAL \mouseY2_7seg|Mux2~0_combout\ : std_logic;
SIGNAL \mouseY2_7seg|Mux3~0_combout\ : std_logic;
SIGNAL \mouseY2_7seg|Mux4~0_combout\ : std_logic;
SIGNAL \mouseY2_7seg|Mux5~0_combout\ : std_logic;
SIGNAL \mouseY2_7seg|Mux6~0_combout\ : std_logic;
SIGNAL \mouseY1_7seg|Mux0~0_combout\ : std_logic;
SIGNAL \mouseY1_7seg|Mux1~0_combout\ : std_logic;
SIGNAL \mouseY1_7seg|Mux2~0_combout\ : std_logic;
SIGNAL \mouseY1_7seg|Mux3~0_combout\ : std_logic;
SIGNAL \mouseY1_7seg|Mux4~0_combout\ : std_logic;
SIGNAL \mouseY1_7seg|Mux5~0_combout\ : std_logic;
SIGNAL \mouseY1_7seg|Mux6~0_combout\ : std_logic;
SIGNAL \mouse1|new_cursor_column[5]~20_combout\ : std_logic;
SIGNAL \mouse1|cursor_column~12_combout\ : std_logic;
SIGNAL \mouseX2_7seg|Mux0~0_combout\ : std_logic;
SIGNAL \mouseX2_7seg|Mux1~0_combout\ : std_logic;
SIGNAL \mouseX2_7seg|Mux2~0_combout\ : std_logic;
SIGNAL \mouseX2_7seg|Mux3~0_combout\ : std_logic;
SIGNAL \mouseX2_7seg|Mux4~0_combout\ : std_logic;
SIGNAL \mouseX2_7seg|Mux5~0_combout\ : std_logic;
SIGNAL \mouseX2_7seg|Mux6~0_combout\ : std_logic;
SIGNAL \mouseX1_7seg|Mux0~0_combout\ : std_logic;
SIGNAL \mouseX1_7seg|Mux1~0_combout\ : std_logic;
SIGNAL \mouseX1_7seg|Mux2~0_combout\ : std_logic;
SIGNAL \mouseX1_7seg|Mux3~0_combout\ : std_logic;
SIGNAL \mouseX1_7seg|Mux4~0_combout\ : std_logic;
SIGNAL \mouseX1_7seg|Mux5~0_combout\ : std_logic;
SIGNAL \mouseX1_7seg|Mux6~0_combout\ : std_logic;
SIGNAL \mouse1|PACKET_CHAR3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mouse1|PACKET_CHAR2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mouse1|PACKET_CHAR1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mouse1|OUTCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mouse1|INCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mouse1|SHIFTIN\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \mouse1|new_cursor_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \PLL1|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \mouse1|cursor_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_controls|pixel_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mouse1|filter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \VGA_controls|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mouse1|inhibit_wait_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \mouse1|new_cursor_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mouse1|cursor_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_controls|pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mouse1|SHIFTOUT\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \VGA_controls|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mouse1|PACKET_COUNT\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \mouse1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \mouse1|ALT_INV_send_data~q\ : std_logic;
SIGNAL \mouse1|ALT_INV_mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \mouse1|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;
SIGNAL \mouseX1_7seg|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \mouseX2_7seg|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \mouseY1_7seg|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \mouseY2_7seg|ALT_INV_Mux0~0_combout\ : std_logic;

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
seg0_dec <= ww_seg0_dec;
seg2_dec <= ww_seg2_dec;
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

\mouse1|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mouse1|MOUSE_CLK_FILTER~q\);

\PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \PLL1|altpll_component|auto_generated|wire_pll1_clk\(0));
\mouse1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ <= NOT \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\;
\mouse1|ALT_INV_send_data~q\ <= NOT \mouse1|send_data~q\;
\mouse1|ALT_INV_mouse_state.INHIBIT_TRANS~q\ <= NOT \mouse1|mouse_state.INHIBIT_TRANS~q\;
\mouse1|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\ <= NOT \mouse1|mouse_state.WAIT_OUTPUT_READY~q\;
\mouseX1_7seg|ALT_INV_Mux0~0_combout\ <= NOT \mouseX1_7seg|Mux0~0_combout\;
\mouseX2_7seg|ALT_INV_Mux0~0_combout\ <= NOT \mouseX2_7seg|Mux0~0_combout\;
\mouseY1_7seg|ALT_INV_Mux5~0_combout\ <= NOT \mouseY1_7seg|Mux5~0_combout\;
\mouseY2_7seg|ALT_INV_Mux0~0_combout\ <= NOT \mouseY2_7seg|Mux0~0_combout\;

-- Location: LCCOMB_X29_Y27_N22
\cursor|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|Add0~4_combout\ = (\mouse1|cursor_row\(6) & (\cursor|Add0~3\ $ (GND))) # (!\mouse1|cursor_row\(6) & (!\cursor|Add0~3\ & VCC))
-- \cursor|Add0~5\ = CARRY((\mouse1|cursor_row\(6) & !\cursor|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|cursor_row\(6),
	datad => VCC,
	cin => \cursor|Add0~3\,
	combout => \cursor|Add0~4_combout\,
	cout => \cursor|Add0~5\);

-- Location: LCCOMB_X29_Y27_N26
\cursor|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|Add0~8_combout\ = (\mouse1|cursor_row\(8) & (\cursor|Add0~7\ $ (GND))) # (!\mouse1|cursor_row\(8) & (!\cursor|Add0~7\ & VCC))
-- \cursor|Add0~9\ = CARRY((\mouse1|cursor_row\(8) & !\cursor|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(8),
	datad => VCC,
	cin => \cursor|Add0~7\,
	combout => \cursor|Add0~8_combout\,
	cout => \cursor|Add0~9\);

-- Location: LCCOMB_X29_Y25_N12
\cursor|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|Add1~2_combout\ = (\mouse1|cursor_column\(5) & (!\cursor|Add1~1\)) # (!\mouse1|cursor_column\(5) & ((\cursor|Add1~1\) # (GND)))
-- \cursor|Add1~3\ = CARRY((!\cursor|Add1~1\) # (!\mouse1|cursor_column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(5),
	datad => VCC,
	cin => \cursor|Add1~1\,
	combout => \cursor|Add1~2_combout\,
	cout => \cursor|Add1~3\);

-- Location: LCCOMB_X29_Y25_N14
\cursor|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|Add1~4_combout\ = (\mouse1|cursor_column\(6) & (\cursor|Add1~3\ $ (GND))) # (!\mouse1|cursor_column\(6) & (!\cursor|Add1~3\ & VCC))
-- \cursor|Add1~5\ = CARRY((\mouse1|cursor_column\(6) & !\cursor|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|cursor_column\(6),
	datad => VCC,
	cin => \cursor|Add1~3\,
	combout => \cursor|Add1~4_combout\,
	cout => \cursor|Add1~5\);

-- Location: LCCOMB_X29_Y25_N16
\cursor|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|Add1~6_combout\ = (\mouse1|cursor_column\(7) & (!\cursor|Add1~5\)) # (!\mouse1|cursor_column\(7) & ((\cursor|Add1~5\) # (GND)))
-- \cursor|Add1~7\ = CARRY((!\cursor|Add1~5\) # (!\mouse1|cursor_column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(7),
	datad => VCC,
	cin => \cursor|Add1~5\,
	combout => \cursor|Add1~6_combout\,
	cout => \cursor|Add1~7\);

-- Location: LCCOMB_X27_Y27_N4
\cursor|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|LessThan0~1_cout\ = CARRY((\mouse1|cursor_row\(0) & !\VGA_controls|pixel_row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(0),
	datab => \VGA_controls|pixel_row\(0),
	datad => VCC,
	cout => \cursor|LessThan0~1_cout\);

-- Location: LCCOMB_X27_Y27_N6
\cursor|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|LessThan0~3_cout\ = CARRY((\VGA_controls|pixel_row\(1) & ((!\cursor|LessThan0~1_cout\) # (!\mouse1|cursor_row\(1)))) # (!\VGA_controls|pixel_row\(1) & (!\mouse1|cursor_row\(1) & !\cursor|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|pixel_row\(1),
	datab => \mouse1|cursor_row\(1),
	datad => VCC,
	cin => \cursor|LessThan0~1_cout\,
	cout => \cursor|LessThan0~3_cout\);

-- Location: LCCOMB_X27_Y27_N8
\cursor|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|LessThan0~5_cout\ = CARRY((\mouse1|cursor_row\(2) & ((!\cursor|LessThan0~3_cout\) # (!\VGA_controls|pixel_row\(2)))) # (!\mouse1|cursor_row\(2) & (!\VGA_controls|pixel_row\(2) & !\cursor|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(2),
	datab => \VGA_controls|pixel_row\(2),
	datad => VCC,
	cin => \cursor|LessThan0~3_cout\,
	cout => \cursor|LessThan0~5_cout\);

-- Location: LCCOMB_X27_Y27_N10
\cursor|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|LessThan0~7_cout\ = CARRY((\mouse1|cursor_row\(3) & (\VGA_controls|pixel_row\(3) & !\cursor|LessThan0~5_cout\)) # (!\mouse1|cursor_row\(3) & ((\VGA_controls|pixel_row\(3)) # (!\cursor|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(3),
	datab => \VGA_controls|pixel_row\(3),
	datad => VCC,
	cin => \cursor|LessThan0~5_cout\,
	cout => \cursor|LessThan0~7_cout\);

-- Location: LCCOMB_X27_Y27_N12
\cursor|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|LessThan0~9_cout\ = CARRY((\VGA_controls|pixel_row\(4) & (\mouse1|cursor_row\(4) & !\cursor|LessThan0~7_cout\)) # (!\VGA_controls|pixel_row\(4) & ((\mouse1|cursor_row\(4)) # (!\cursor|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|pixel_row\(4),
	datab => \mouse1|cursor_row\(4),
	datad => VCC,
	cin => \cursor|LessThan0~7_cout\,
	cout => \cursor|LessThan0~9_cout\);

-- Location: LCCOMB_X27_Y27_N14
\cursor|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|LessThan0~11_cout\ = CARRY((\mouse1|cursor_row\(5) & (\VGA_controls|pixel_row\(5) & !\cursor|LessThan0~9_cout\)) # (!\mouse1|cursor_row\(5) & ((\VGA_controls|pixel_row\(5)) # (!\cursor|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(5),
	datab => \VGA_controls|pixel_row\(5),
	datad => VCC,
	cin => \cursor|LessThan0~9_cout\,
	cout => \cursor|LessThan0~11_cout\);

-- Location: LCCOMB_X27_Y27_N16
\cursor|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|LessThan0~13_cout\ = CARRY((\VGA_controls|pixel_row\(6) & (\mouse1|cursor_row\(6) & !\cursor|LessThan0~11_cout\)) # (!\VGA_controls|pixel_row\(6) & ((\mouse1|cursor_row\(6)) # (!\cursor|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|pixel_row\(6),
	datab => \mouse1|cursor_row\(6),
	datad => VCC,
	cin => \cursor|LessThan0~11_cout\,
	cout => \cursor|LessThan0~13_cout\);

-- Location: LCCOMB_X27_Y27_N18
\cursor|LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|LessThan0~15_cout\ = CARRY((\VGA_controls|pixel_row\(7) & ((!\cursor|LessThan0~13_cout\) # (!\mouse1|cursor_row\(7)))) # (!\VGA_controls|pixel_row\(7) & (!\mouse1|cursor_row\(7) & !\cursor|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|pixel_row\(7),
	datab => \mouse1|cursor_row\(7),
	datad => VCC,
	cin => \cursor|LessThan0~13_cout\,
	cout => \cursor|LessThan0~15_cout\);

-- Location: LCCOMB_X27_Y27_N20
\cursor|LessThan0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|LessThan0~16_combout\ = (\VGA_controls|pixel_row\(8) & (!\cursor|LessThan0~15_cout\ & \mouse1|cursor_row\(8))) # (!\VGA_controls|pixel_row\(8) & ((\mouse1|cursor_row\(8)) # (!\cursor|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|pixel_row\(8),
	datad => \mouse1|cursor_row\(8),
	cin => \cursor|LessThan0~15_cout\,
	combout => \cursor|LessThan0~16_combout\);

-- Location: FF_X28_Y26_N7
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
	ena => \mouse1|new_cursor_row[9]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(0));

-- Location: LCCOMB_X28_Y26_N6
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

-- Location: LCCOMB_X32_Y27_N10
\VGA_controls|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|Add1~0_combout\ = \VGA_controls|v_count\(0) $ (VCC)
-- \VGA_controls|Add1~1\ = CARRY(\VGA_controls|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controls|v_count\(0),
	datad => VCC,
	combout => \VGA_controls|Add1~0_combout\,
	cout => \VGA_controls|Add1~1\);

-- Location: LCCOMB_X32_Y27_N12
\VGA_controls|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|Add1~2_combout\ = (\VGA_controls|v_count\(1) & (!\VGA_controls|Add1~1\)) # (!\VGA_controls|v_count\(1) & ((\VGA_controls|Add1~1\) # (GND)))
-- \VGA_controls|Add1~3\ = CARRY((!\VGA_controls|Add1~1\) # (!\VGA_controls|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|v_count\(1),
	datad => VCC,
	cin => \VGA_controls|Add1~1\,
	combout => \VGA_controls|Add1~2_combout\,
	cout => \VGA_controls|Add1~3\);

-- Location: LCCOMB_X32_Y27_N16
\VGA_controls|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|Add1~6_combout\ = (\VGA_controls|v_count\(3) & (!\VGA_controls|Add1~5\)) # (!\VGA_controls|v_count\(3) & ((\VGA_controls|Add1~5\) # (GND)))
-- \VGA_controls|Add1~7\ = CARRY((!\VGA_controls|Add1~5\) # (!\VGA_controls|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controls|v_count\(3),
	datad => VCC,
	cin => \VGA_controls|Add1~5\,
	combout => \VGA_controls|Add1~6_combout\,
	cout => \VGA_controls|Add1~7\);

-- Location: LCCOMB_X32_Y27_N26
\VGA_controls|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|Add1~16_combout\ = (\VGA_controls|v_count\(8) & (\VGA_controls|Add1~15\ $ (GND))) # (!\VGA_controls|v_count\(8) & (!\VGA_controls|Add1~15\ & VCC))
-- \VGA_controls|Add1~17\ = CARRY((\VGA_controls|v_count\(8) & !\VGA_controls|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controls|v_count\(8),
	datad => VCC,
	cin => \VGA_controls|Add1~15\,
	combout => \VGA_controls|Add1~16_combout\,
	cout => \VGA_controls|Add1~17\);

-- Location: FF_X33_Y23_N23
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

-- Location: FF_X33_Y23_N13
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

-- Location: FF_X33_Y23_N11
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

-- Location: LCCOMB_X33_Y23_N10
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

-- Location: LCCOMB_X33_Y23_N12
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

-- Location: LCCOMB_X33_Y23_N22
\mouse1|inhibit_wait_count[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|inhibit_wait_count[7]~22_combout\ = (\mouse1|inhibit_wait_count\(7) & (\mouse1|inhibit_wait_count[6]~21\ $ (GND))) # (!\mouse1|inhibit_wait_count\(7) & (!\mouse1|inhibit_wait_count[6]~21\ & VCC))
-- \mouse1|inhibit_wait_count[7]~23\ = CARRY((\mouse1|inhibit_wait_count\(7) & !\mouse1|inhibit_wait_count[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|inhibit_wait_count\(7),
	datad => VCC,
	cin => \mouse1|inhibit_wait_count[6]~21\,
	combout => \mouse1|inhibit_wait_count[7]~22_combout\,
	cout => \mouse1|inhibit_wait_count[7]~23\);

-- Location: FF_X29_Y27_N15
\VGA_controls|pixel_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controls|v_count\(7),
	sload => VCC,
	ena => \VGA_controls|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|pixel_row\(7));

-- Location: FF_X29_Y27_N11
\VGA_controls|pixel_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controls|v_count\(5),
	sload => VCC,
	ena => \VGA_controls|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|pixel_row\(5));

-- Location: FF_X29_Y27_N9
\VGA_controls|pixel_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controls|v_count\(4),
	sload => VCC,
	ena => \VGA_controls|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|pixel_row\(4));

-- Location: FF_X29_Y27_N7
\VGA_controls|pixel_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controls|v_count\(3),
	sload => VCC,
	ena => \VGA_controls|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|pixel_row\(3));

-- Location: FF_X29_Y27_N5
\VGA_controls|pixel_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controls|v_count\(2),
	sload => VCC,
	ena => \VGA_controls|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|pixel_row\(2));

-- Location: FF_X29_Y27_N3
\VGA_controls|pixel_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controls|v_count\(1),
	sload => VCC,
	ena => \VGA_controls|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|pixel_row\(1));

-- Location: FF_X31_Y27_N27
\VGA_controls|pixel_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controls|h_count\(8),
	sload => VCC,
	ena => \VGA_controls|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|pixel_column\(8));

-- Location: FF_X31_Y27_N15
\VGA_controls|pixel_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controls|h_count\(4),
	sload => VCC,
	ena => \VGA_controls|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|pixel_column\(4));

-- Location: FF_X31_Y27_N7
\VGA_controls|pixel_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controls|h_count\(3),
	sload => VCC,
	ena => \VGA_controls|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|pixel_column\(3));

-- Location: FF_X31_Y27_N11
\VGA_controls|pixel_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controls|h_count\(2),
	sload => VCC,
	ena => \VGA_controls|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|pixel_column\(2));

-- Location: LCCOMB_X30_Y25_N30
\mouse1|LessThan9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|LessThan9~0_combout\ = ((\mouse1|new_cursor_column\(5)) # ((\mouse1|new_cursor_column\(0)) # (\mouse1|new_cursor_column\(6)))) # (!\mouse1|RECV_UART~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|RECV_UART~3_combout\,
	datab => \mouse1|new_cursor_column\(5),
	datac => \mouse1|new_cursor_column\(0),
	datad => \mouse1|new_cursor_column\(6),
	combout => \mouse1|LessThan9~0_combout\);

-- Location: LCCOMB_X33_Y26_N22
\VGA_controls|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|process_0~2_combout\ = (\VGA_controls|h_count\(2)) # ((\VGA_controls|h_count\(0) & (!\VGA_controls|h_count\(5) & \VGA_controls|h_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|h_count\(0),
	datab => \VGA_controls|h_count\(5),
	datac => \VGA_controls|h_count\(2),
	datad => \VGA_controls|h_count\(1),
	combout => \VGA_controls|process_0~2_combout\);

-- Location: LCCOMB_X33_Y26_N12
\VGA_controls|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|process_0~3_combout\ = (\VGA_controls|h_count\(4) & ((\VGA_controls|process_0~2_combout\) # (\VGA_controls|h_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|h_count\(4),
	datac => \VGA_controls|process_0~2_combout\,
	datad => \VGA_controls|h_count\(3),
	combout => \VGA_controls|process_0~3_combout\);

-- Location: FF_X19_Y28_N27
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

-- Location: LCCOMB_X19_Y28_N26
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

-- Location: FF_X29_Y26_N5
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

-- Location: FF_X29_Y26_N9
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

-- Location: FF_X31_Y25_N11
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

-- Location: LCCOMB_X33_Y26_N10
\VGA_controls|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|process_0~9_combout\ = ((!\VGA_controls|h_count\(2) & ((!\VGA_controls|h_count\(1)) # (!\VGA_controls|h_count\(0))))) # (!\VGA_controls|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|h_count\(0),
	datab => \VGA_controls|h_count\(1),
	datac => \VGA_controls|h_count\(2),
	datad => \VGA_controls|h_count\(3),
	combout => \VGA_controls|process_0~9_combout\);

-- Location: LCCOMB_X35_Y27_N26
\VGA_controls|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|Equal0~2_combout\ = (!\VGA_controls|h_count\(5) & (!\VGA_controls|h_count\(7) & (\VGA_controls|h_count\(8) & \VGA_controls|h_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|h_count\(5),
	datab => \VGA_controls|h_count\(7),
	datac => \VGA_controls|h_count\(8),
	datad => \VGA_controls|h_count\(2),
	combout => \VGA_controls|Equal0~2_combout\);

-- Location: FF_X32_Y25_N3
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

-- Location: LCCOMB_X32_Y25_N2
\mouse1|OUTCNT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|OUTCNT~0_combout\ = (\mouse1|OUTCNT\(2) & (\mouse1|OUTCNT\(1) & (!\mouse1|OUTCNT\(3) & \mouse1|OUTCNT\(0)))) # (!\mouse1|OUTCNT\(2) & (!\mouse1|OUTCNT\(1) & (\mouse1|OUTCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|OUTCNT\(2),
	datab => \mouse1|OUTCNT\(1),
	datac => \mouse1|OUTCNT\(3),
	datad => \mouse1|OUTCNT\(0),
	combout => \mouse1|OUTCNT~0_combout\);

-- Location: FF_X31_Y26_N31
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

-- Location: LCCOMB_X32_Y25_N26
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

-- Location: FF_X31_Y26_N21
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

-- Location: FF_X31_Y26_N7
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

-- Location: LCCOMB_X31_Y26_N30
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

-- Location: LCCOMB_X31_Y26_N20
\mouse1|iready_set~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|iready_set~0_combout\ = (\mouse1|READ_CHAR~q\ & (!\mouse1|LessThan1~0_combout\)) # (!\mouse1|READ_CHAR~q\ & (((\mouse_data~input_o\ & \mouse1|iready_set~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|LessThan1~0_combout\,
	datab => \mouse_data~input_o\,
	datac => \mouse1|iready_set~q\,
	datad => \mouse1|READ_CHAR~q\,
	combout => \mouse1|iready_set~0_combout\);

-- Location: LCCOMB_X31_Y26_N6
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

-- Location: LCCOMB_X29_Y26_N4
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

-- Location: LCCOMB_X29_Y26_N8
\mouse1|PACKET_CHAR3[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR3[6]~feeder_combout\ = \mouse1|SHIFTIN\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|SHIFTIN\(6),
	combout => \mouse1|PACKET_CHAR3[6]~feeder_combout\);

-- Location: LCCOMB_X31_Y25_N10
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

-- Location: IOOBUF_X41_Y21_N23
\r1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_controls|green_out~q\,
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
	i => \VGA_controls|green_out~q\,
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
	i => \VGA_controls|blue_out~q\,
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
	i => \VGA_controls|green_out~q\,
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
	i => \VGA_controls|green_out~q\,
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
	i => \VGA_controls|blue_out~q\,
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
	i => \VGA_controls|horiz_sync_out~q\,
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
	i => \VGA_controls|vert_sync_out~q\,
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

-- Location: IOOBUF_X26_Y29_N16
\seg0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mouseY2_7seg|ALT_INV_Mux0~0_combout\,
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
	i => \mouseY2_7seg|Mux1~0_combout\,
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
	i => \mouseY2_7seg|Mux2~0_combout\,
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
	i => \mouseY2_7seg|Mux3~0_combout\,
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
	i => \mouseY2_7seg|Mux4~0_combout\,
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
	i => \mouseY2_7seg|Mux5~0_combout\,
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
	i => \mouseY2_7seg|Mux6~0_combout\,
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
	i => \mouseY1_7seg|Mux0~0_combout\,
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
	i => \mouseY1_7seg|Mux1~0_combout\,
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
	i => \mouseY1_7seg|Mux2~0_combout\,
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
	i => \mouseY1_7seg|Mux3~0_combout\,
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
	i => \mouseY1_7seg|Mux4~0_combout\,
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
	i => \mouseY1_7seg|ALT_INV_Mux5~0_combout\,
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
	i => \mouseY1_7seg|Mux6~0_combout\,
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

-- Location: FF_X19_Y28_N23
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

-- Location: FF_X19_Y28_N21
\mouse1|filter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mouse1|filter\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|filter\(1));

-- Location: LCCOMB_X19_Y28_N16
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

-- Location: FF_X19_Y28_N17
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

-- Location: LCCOMB_X19_Y28_N10
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

-- Location: FF_X19_Y28_N11
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

-- Location: LCCOMB_X19_Y28_N18
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

-- Location: FF_X19_Y28_N19
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

-- Location: LCCOMB_X19_Y28_N12
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

-- Location: FF_X19_Y28_N13
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

-- Location: LCCOMB_X19_Y28_N14
\mouse1|MOUSE_CLK_FILTER~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|MOUSE_CLK_FILTER~1_combout\ = (\mouse1|filter\(3) & ((\mouse1|MOUSE_CLK_FILTER~q\) # ((\mouse1|filter\(2) & \mouse1|filter\(5))))) # (!\mouse1|filter\(3) & (\mouse1|MOUSE_CLK_FILTER~q\ & ((\mouse1|filter\(2)) # (\mouse1|filter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|filter\(3),
	datab => \mouse1|filter\(2),
	datac => \mouse1|filter\(5),
	datad => \mouse1|MOUSE_CLK_FILTER~q\,
	combout => \mouse1|MOUSE_CLK_FILTER~1_combout\);

-- Location: LCCOMB_X19_Y28_N8
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

-- Location: FF_X19_Y28_N9
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

-- Location: LCCOMB_X19_Y28_N24
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

-- Location: LCCOMB_X19_Y28_N28
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

-- Location: FF_X19_Y28_N29
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

-- Location: CLKCTRL_G10
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

-- Location: LCCOMB_X33_Y25_N16
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

-- Location: LCCOMB_X33_Y23_N8
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

-- Location: FF_X33_Y23_N9
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

-- Location: LCCOMB_X33_Y23_N4
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

-- Location: FF_X33_Y23_N5
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

-- Location: LCCOMB_X33_Y23_N14
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

-- Location: FF_X33_Y23_N15
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

-- Location: LCCOMB_X33_Y23_N16
\mouse1|inhibit_wait_count[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|inhibit_wait_count[4]~16_combout\ = (\mouse1|inhibit_wait_count\(4) & (!\mouse1|inhibit_wait_count[3]~15\)) # (!\mouse1|inhibit_wait_count\(4) & ((\mouse1|inhibit_wait_count[3]~15\) # (GND)))
-- \mouse1|inhibit_wait_count[4]~17\ = CARRY((!\mouse1|inhibit_wait_count[3]~15\) # (!\mouse1|inhibit_wait_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|inhibit_wait_count\(4),
	datad => VCC,
	cin => \mouse1|inhibit_wait_count[3]~15\,
	combout => \mouse1|inhibit_wait_count[4]~16_combout\,
	cout => \mouse1|inhibit_wait_count[4]~17\);

-- Location: FF_X33_Y23_N17
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

-- Location: LCCOMB_X33_Y23_N18
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

-- Location: FF_X33_Y23_N19
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

-- Location: LCCOMB_X33_Y23_N20
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

-- Location: FF_X33_Y23_N21
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

-- Location: LCCOMB_X33_Y23_N24
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

-- Location: FF_X33_Y23_N25
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

-- Location: LCCOMB_X33_Y23_N26
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

-- Location: LCCOMB_X33_Y23_N28
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

-- Location: FF_X33_Y23_N29
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

-- Location: FF_X33_Y23_N27
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

-- Location: LCCOMB_X33_Y23_N2
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

-- Location: FF_X33_Y23_N3
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

-- Location: FF_X32_Y25_N9
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

-- Location: LCCOMB_X32_Y25_N28
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

-- Location: FF_X32_Y25_N29
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

-- Location: LCCOMB_X32_Y25_N16
\mouse1|OUTCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|OUTCNT~3_combout\ = (!\mouse1|OUTCNT\(0) & (((!\mouse1|OUTCNT\(2) & !\mouse1|OUTCNT\(1))) # (!\mouse1|OUTCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|OUTCNT\(3),
	datab => \mouse1|OUTCNT\(2),
	datac => \mouse1|OUTCNT\(0),
	datad => \mouse1|OUTCNT\(1),
	combout => \mouse1|OUTCNT~3_combout\);

-- Location: LCCOMB_X32_Y25_N30
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

-- Location: FF_X32_Y25_N17
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

-- Location: LCCOMB_X32_Y25_N10
\mouse1|OUTCNT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|OUTCNT~2_combout\ = (\mouse1|OUTCNT\(3) & (!\mouse1|OUTCNT\(2) & (!\mouse1|OUTCNT\(1) & \mouse1|OUTCNT\(0)))) # (!\mouse1|OUTCNT\(3) & ((\mouse1|OUTCNT\(1) $ (\mouse1|OUTCNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|OUTCNT\(3),
	datab => \mouse1|OUTCNT\(2),
	datac => \mouse1|OUTCNT\(1),
	datad => \mouse1|OUTCNT\(0),
	combout => \mouse1|OUTCNT~2_combout\);

-- Location: FF_X32_Y25_N11
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

-- Location: LCCOMB_X32_Y25_N4
\mouse1|OUTCNT~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|OUTCNT~1_combout\ = (!\mouse1|OUTCNT\(3) & (\mouse1|OUTCNT\(2) $ (((\mouse1|OUTCNT\(1) & \mouse1|OUTCNT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|OUTCNT\(3),
	datab => \mouse1|OUTCNT\(1),
	datac => \mouse1|OUTCNT\(2),
	datad => \mouse1|OUTCNT\(0),
	combout => \mouse1|OUTCNT~1_combout\);

-- Location: FF_X32_Y25_N5
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

-- Location: LCCOMB_X32_Y25_N8
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

-- Location: LCCOMB_X32_Y25_N6
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

-- Location: FF_X32_Y25_N7
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

-- Location: LCCOMB_X28_Y25_N24
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

-- Location: FF_X28_Y25_N25
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

-- Location: LCCOMB_X33_Y25_N18
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

-- Location: FF_X33_Y25_N19
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

-- Location: LCCOMB_X33_Y25_N28
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

-- Location: FF_X33_Y25_N17
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

-- Location: LCCOMB_X33_Y25_N22
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

-- Location: FF_X33_Y25_N23
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

-- Location: LCCOMB_X33_Y25_N0
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

-- Location: FF_X33_Y25_N1
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

-- Location: LCCOMB_X33_Y25_N26
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

-- Location: FF_X33_Y25_N27
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

-- Location: LCCOMB_X33_Y25_N24
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

-- Location: FF_X33_Y25_N25
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

-- Location: LCCOMB_X33_Y25_N30
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

-- Location: FF_X33_Y25_N31
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

-- Location: LCCOMB_X33_Y25_N12
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

-- Location: FF_X33_Y25_N13
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

-- Location: LCCOMB_X33_Y25_N14
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

-- Location: FF_X33_Y25_N15
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

-- Location: LCCOMB_X33_Y25_N20
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

-- Location: FF_X33_Y25_N21
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

-- Location: FF_X33_Y25_N29
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

-- Location: LCCOMB_X32_Y25_N24
\mouse1|WideOr4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|WideOr4~combout\ = ((\mouse1|mouse_state.LOAD_COMMAND~q\) # (\mouse1|mouse_state.LOAD_COMMAND2~q\)) # (!\mouse1|mouse_state.INHIBIT_TRANS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|mouse_state.INHIBIT_TRANS~q\,
	datab => \mouse1|mouse_state.LOAD_COMMAND~q\,
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

-- Location: LCCOMB_X30_Y26_N28
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

-- Location: LCCOMB_X28_Y25_N10
\mouse1|INCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|INCNT~3_combout\ = (!\mouse1|INCNT\(3) & (\mouse1|INCNT\(1) $ (\mouse1|INCNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|INCNT\(3),
	datac => \mouse1|INCNT\(1),
	datad => \mouse1|INCNT\(0),
	combout => \mouse1|INCNT~3_combout\);

-- Location: LCCOMB_X28_Y25_N6
\mouse1|INCNT[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|INCNT[3]~2_combout\ = (\mouse1|READ_CHAR~q\ & !\mouse1|mouse_state.WAIT_OUTPUT_READY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|READ_CHAR~q\,
	datab => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \mouse1|INCNT[3]~2_combout\);

-- Location: FF_X28_Y25_N11
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

-- Location: LCCOMB_X28_Y25_N20
\mouse1|INCNT~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|INCNT~4_combout\ = (!\mouse1|INCNT\(0) & (((!\mouse1|INCNT\(2) & !\mouse1|INCNT\(1))) # (!\mouse1|INCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|INCNT\(3),
	datab => \mouse1|INCNT\(2),
	datac => \mouse1|INCNT\(0),
	datad => \mouse1|INCNT\(1),
	combout => \mouse1|INCNT~4_combout\);

-- Location: FF_X28_Y25_N21
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

-- Location: LCCOMB_X28_Y25_N28
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

-- Location: FF_X28_Y25_N29
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

-- Location: LCCOMB_X28_Y25_N22
\mouse1|INCNT~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|INCNT~5_combout\ = (\mouse1|INCNT\(1) & (\mouse1|INCNT\(2) & (!\mouse1|INCNT\(3) & \mouse1|INCNT\(0)))) # (!\mouse1|INCNT\(1) & (!\mouse1|INCNT\(2) & (\mouse1|INCNT\(3) & !\mouse1|INCNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|INCNT\(1),
	datab => \mouse1|INCNT\(2),
	datac => \mouse1|INCNT\(3),
	datad => \mouse1|INCNT\(0),
	combout => \mouse1|INCNT~5_combout\);

-- Location: FF_X28_Y25_N23
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

-- Location: LCCOMB_X28_Y25_N16
\mouse1|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|LessThan1~0_combout\ = ((!\mouse1|INCNT\(1) & (!\mouse1|INCNT\(2) & !\mouse1|INCNT\(0)))) # (!\mouse1|INCNT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|INCNT\(1),
	datab => \mouse1|INCNT\(2),
	datac => \mouse1|INCNT\(3),
	datad => \mouse1|INCNT\(0),
	combout => \mouse1|LessThan1~0_combout\);

-- Location: LCCOMB_X27_Y25_N26
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

-- Location: FF_X27_Y25_N27
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

-- Location: LCCOMB_X30_Y26_N24
\mouse1|SHIFTIN[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|SHIFTIN[1]~0_combout\ = (!\mouse1|mouse_state.WAIT_OUTPUT_READY~q\ & (\mouse1|READ_CHAR~q\ & \mouse1|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \mouse1|READ_CHAR~q\,
	datad => \mouse1|LessThan1~0_combout\,
	combout => \mouse1|SHIFTIN[1]~0_combout\);

-- Location: FF_X30_Y26_N29
\mouse1|SHIFTIN[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|SHIFTIN[8]~feeder_combout\,
	ena => \mouse1|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTIN\(8));

-- Location: LCCOMB_X30_Y26_N30
\mouse1|SHIFTIN[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|SHIFTIN[7]~feeder_combout\ = \mouse1|SHIFTIN\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|SHIFTIN\(8),
	combout => \mouse1|SHIFTIN[7]~feeder_combout\);

-- Location: FF_X30_Y26_N31
\mouse1|SHIFTIN[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|SHIFTIN[7]~feeder_combout\,
	ena => \mouse1|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTIN\(7));

-- Location: LCCOMB_X27_Y25_N12
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

-- Location: LCCOMB_X27_Y25_N28
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

-- Location: LCCOMB_X27_Y25_N10
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

-- Location: FF_X27_Y25_N29
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

-- Location: LCCOMB_X27_Y25_N14
\mouse1|PACKET_CHAR1[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR1[1]~0_combout\ = (\mouse1|PACKET_COUNT\(1)) # (!\mouse1|PACKET_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|PACKET_COUNT\(0),
	datad => \mouse1|PACKET_COUNT\(1),
	combout => \mouse1|PACKET_CHAR1[1]~0_combout\);

-- Location: LCCOMB_X27_Y25_N22
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

-- Location: FF_X27_Y25_N23
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

-- Location: LCCOMB_X27_Y25_N24
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

-- Location: LCCOMB_X28_Y25_N2
\mouse1|INCNT[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|INCNT[3]~0_combout\ = (!\mouse1|mouse_state.WAIT_OUTPUT_READY~q\ & ((\mouse1|READ_CHAR~q\) # (\mouse_data~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \mouse1|READ_CHAR~q\,
	datad => \mouse_data~input_o\,
	combout => \mouse1|INCNT[3]~0_combout\);

-- Location: LCCOMB_X28_Y25_N14
\mouse1|PACKET_CHAR2[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR2[7]~2_combout\ = (\mouse1|READ_CHAR~q\ & (\mouse1|PACKET_CHAR2[7]~1_combout\ & (\mouse1|INCNT[3]~0_combout\ & !\mouse1|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|READ_CHAR~q\,
	datab => \mouse1|PACKET_CHAR2[7]~1_combout\,
	datac => \mouse1|INCNT[3]~0_combout\,
	datad => \mouse1|LessThan1~0_combout\,
	combout => \mouse1|PACKET_CHAR2[7]~2_combout\);

-- Location: FF_X29_Y25_N19
\mouse1|PACKET_CHAR2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \mouse1|SHIFTIN\(7),
	sload => VCC,
	ena => \mouse1|PACKET_CHAR2[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_CHAR2\(7));

-- Location: FF_X30_Y26_N13
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
	ena => \mouse1|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTIN\(6));

-- Location: FF_X30_Y26_N15
\mouse1|SHIFTIN[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \mouse1|SHIFTIN\(6),
	sload => VCC,
	ena => \mouse1|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTIN\(5));

-- Location: FF_X30_Y25_N19
\mouse1|PACKET_CHAR2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \mouse1|SHIFTIN\(5),
	sload => VCC,
	ena => \mouse1|PACKET_CHAR2[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|PACKET_CHAR2\(5));

-- Location: FF_X30_Y26_N5
\mouse1|SHIFTIN[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \mouse1|SHIFTIN\(5),
	sload => VCC,
	ena => \mouse1|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTIN\(4));

-- Location: LCCOMB_X31_Y25_N8
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

-- Location: FF_X31_Y25_N9
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

-- Location: LCCOMB_X30_Y26_N26
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

-- Location: FF_X30_Y26_N27
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

-- Location: LCCOMB_X29_Y25_N6
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

-- Location: FF_X29_Y25_N7
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

-- Location: FF_X30_Y26_N17
\mouse1|SHIFTIN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \mouse1|SHIFTIN\(3),
	sload => VCC,
	ena => \mouse1|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTIN\(2));

-- Location: LCCOMB_X29_Y25_N0
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

-- Location: FF_X29_Y25_N1
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

-- Location: FF_X30_Y26_N25
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

-- Location: LCCOMB_X31_Y25_N2
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

-- Location: FF_X31_Y25_N3
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

-- Location: LCCOMB_X30_Y26_N22
\mouse1|SHIFTIN[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|SHIFTIN[0]~feeder_combout\ = \mouse1|SHIFTIN\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|SHIFTIN\(1),
	combout => \mouse1|SHIFTIN[0]~feeder_combout\);

-- Location: FF_X30_Y26_N23
\mouse1|SHIFTIN[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|SHIFTIN[0]~feeder_combout\,
	ena => \mouse1|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|SHIFTIN\(0));

-- Location: LCCOMB_X31_Y25_N0
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

-- Location: FF_X31_Y25_N1
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

-- Location: LCCOMB_X31_Y25_N12
\mouse1|new_cursor_column[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_column[0]~10_combout\ = (\mouse1|cursor_column\(0) & (\mouse1|PACKET_CHAR2\(0) $ (VCC))) # (!\mouse1|cursor_column\(0) & (\mouse1|PACKET_CHAR2\(0) & VCC))
-- \mouse1|new_cursor_column[0]~11\ = CARRY((\mouse1|cursor_column\(0) & \mouse1|PACKET_CHAR2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(0),
	datab => \mouse1|PACKET_CHAR2\(0),
	datad => VCC,
	combout => \mouse1|new_cursor_column[0]~10_combout\,
	cout => \mouse1|new_cursor_column[0]~11\);

-- Location: LCCOMB_X31_Y25_N14
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

-- Location: LCCOMB_X31_Y25_N16
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

-- Location: LCCOMB_X31_Y25_N18
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

-- Location: LCCOMB_X31_Y25_N20
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

-- Location: LCCOMB_X31_Y25_N22
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

-- Location: LCCOMB_X31_Y25_N24
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

-- Location: LCCOMB_X27_Y25_N0
\mouse1|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|Equal4~0_combout\ = (!\mouse1|PACKET_COUNT\(0)) # (!\mouse1|PACKET_COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|PACKET_COUNT\(1),
	datac => \mouse1|PACKET_COUNT\(0),
	combout => \mouse1|Equal4~0_combout\);

-- Location: LCCOMB_X28_Y25_N0
\mouse1|new_cursor_row[9]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_row[9]~16_combout\ = (\mouse1|READ_CHAR~q\ & (!\mouse1|LessThan1~0_combout\ & (\mouse1|INCNT[3]~0_combout\ & !\mouse1|Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|READ_CHAR~q\,
	datab => \mouse1|LessThan1~0_combout\,
	datac => \mouse1|INCNT[3]~0_combout\,
	datad => \mouse1|Add3~0_combout\,
	combout => \mouse1|new_cursor_row[9]~16_combout\);

-- Location: FF_X31_Y25_N25
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
	ena => \mouse1|new_cursor_row[9]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(6));

-- Location: LCCOMB_X29_Y25_N24
\mouse1|cursor_column~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~18_combout\ = (\mouse1|PACKET_COUNT\(0) & (((\mouse1|new_cursor_column\(6) & \mouse1|cursor_column[2]~8_combout\)))) # (!\mouse1|PACKET_COUNT\(0) & (((\mouse1|new_cursor_column\(6) & \mouse1|cursor_column[2]~8_combout\)) # 
-- (!\mouse1|PACKET_COUNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|PACKET_COUNT\(0),
	datab => \mouse1|PACKET_COUNT\(1),
	datac => \mouse1|new_cursor_column\(6),
	datad => \mouse1|cursor_column[2]~8_combout\,
	combout => \mouse1|cursor_column~18_combout\);

-- Location: LCCOMB_X28_Y25_N30
\mouse1|cursor_row[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row[5]~2_combout\ = (!\mouse1|mouse_state.WAIT_OUTPUT_READY~q\ & (!\mouse1|PACKET_COUNT\(1) & (\mouse1|READ_CHAR~q\ & !\mouse1|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \mouse1|PACKET_COUNT\(1),
	datac => \mouse1|READ_CHAR~q\,
	datad => \mouse1|LessThan1~0_combout\,
	combout => \mouse1|cursor_row[5]~2_combout\);

-- Location: FF_X29_Y25_N25
\mouse1|cursor_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_column~18_combout\,
	ena => \mouse1|cursor_row[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_column\(6));

-- Location: LCCOMB_X31_Y25_N26
\mouse1|new_cursor_column[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_column[7]~24_combout\ = (\mouse1|cursor_column\(7) & ((\mouse1|PACKET_CHAR2\(7) & (\mouse1|new_cursor_column[6]~23\ & VCC)) # (!\mouse1|PACKET_CHAR2\(7) & (!\mouse1|new_cursor_column[6]~23\)))) # (!\mouse1|cursor_column\(7) & 
-- ((\mouse1|PACKET_CHAR2\(7) & (!\mouse1|new_cursor_column[6]~23\)) # (!\mouse1|PACKET_CHAR2\(7) & ((\mouse1|new_cursor_column[6]~23\) # (GND)))))
-- \mouse1|new_cursor_column[7]~25\ = CARRY((\mouse1|cursor_column\(7) & (!\mouse1|PACKET_CHAR2\(7) & !\mouse1|new_cursor_column[6]~23\)) # (!\mouse1|cursor_column\(7) & ((!\mouse1|new_cursor_column[6]~23\) # (!\mouse1|PACKET_CHAR2\(7)))))

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
	combout => \mouse1|new_cursor_column[7]~24_combout\,
	cout => \mouse1|new_cursor_column[7]~25\);

-- Location: LCCOMB_X31_Y25_N28
\mouse1|new_cursor_column[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_column[8]~26_combout\ = ((\mouse1|cursor_column\(8) $ (\mouse1|PACKET_CHAR2\(7) $ (!\mouse1|new_cursor_column[7]~25\)))) # (GND)
-- \mouse1|new_cursor_column[8]~27\ = CARRY((\mouse1|cursor_column\(8) & ((\mouse1|PACKET_CHAR2\(7)) # (!\mouse1|new_cursor_column[7]~25\))) # (!\mouse1|cursor_column\(8) & (\mouse1|PACKET_CHAR2\(7) & !\mouse1|new_cursor_column[7]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(8),
	datab => \mouse1|PACKET_CHAR2\(7),
	datad => VCC,
	cin => \mouse1|new_cursor_column[7]~25\,
	combout => \mouse1|new_cursor_column[8]~26_combout\,
	cout => \mouse1|new_cursor_column[8]~27\);

-- Location: FF_X31_Y25_N29
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
	ena => \mouse1|new_cursor_row[9]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(8));

-- Location: LCCOMB_X28_Y25_N12
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

-- Location: FF_X31_Y25_N27
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
	ena => \mouse1|new_cursor_row[9]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(7));

-- Location: LCCOMB_X31_Y25_N30
\mouse1|new_cursor_column[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_column[9]~28_combout\ = \mouse1|cursor_column\(9) $ (\mouse1|PACKET_CHAR2\(7) $ (\mouse1|new_cursor_column[8]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(9),
	datab => \mouse1|PACKET_CHAR2\(7),
	cin => \mouse1|new_cursor_column[8]~27\,
	combout => \mouse1|new_cursor_column[9]~28_combout\);

-- Location: FF_X31_Y25_N31
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
	ena => \mouse1|new_cursor_row[9]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(9));

-- Location: LCCOMB_X30_Y25_N8
\mouse1|cursor_column[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column[2]~7_combout\ = ((!\mouse1|new_cursor_column\(7) & !\mouse1|new_cursor_column\(8))) # (!\mouse1|new_cursor_column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|new_cursor_column\(7),
	datac => \mouse1|new_cursor_column\(9),
	datad => \mouse1|new_cursor_column\(8),
	combout => \mouse1|cursor_column[2]~7_combout\);

-- Location: LCCOMB_X30_Y25_N20
\mouse1|cursor_column~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~19_combout\ = (\mouse1|PACKET_COUNT\(0) & (\mouse1|new_cursor_column\(8) & (\mouse1|cursor_column[2]~8_combout\))) # (!\mouse1|PACKET_COUNT\(0) & (((\mouse1|new_cursor_column\(8) & \mouse1|cursor_column[2]~8_combout\)) # 
-- (!\mouse1|PACKET_COUNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|PACKET_COUNT\(0),
	datab => \mouse1|new_cursor_column\(8),
	datac => \mouse1|cursor_column[2]~8_combout\,
	datad => \mouse1|PACKET_COUNT\(1),
	combout => \mouse1|cursor_column~19_combout\);

-- Location: FF_X30_Y25_N21
\mouse1|cursor_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_column~19_combout\,
	ena => \mouse1|cursor_row[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_column\(8));

-- Location: LCCOMB_X27_Y25_N20
\mouse1|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|Equal3~0_combout\ = (\mouse1|PACKET_COUNT\(1)) # (\mouse1|PACKET_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|PACKET_COUNT\(1),
	datac => \mouse1|PACKET_COUNT\(0),
	combout => \mouse1|Equal3~0_combout\);

-- Location: FF_X31_Y25_N13
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
	ena => \mouse1|new_cursor_row[9]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(0));

-- Location: FF_X31_Y25_N17
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
	ena => \mouse1|new_cursor_row[9]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(2));

-- Location: FF_X31_Y25_N15
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
	ena => \mouse1|new_cursor_row[9]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(1));

-- Location: FF_X31_Y25_N19
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
	ena => \mouse1|new_cursor_row[9]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(3));

-- Location: LCCOMB_X31_Y25_N4
\mouse1|RECV_UART~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|RECV_UART~3_combout\ = (!\mouse1|new_cursor_column\(4) & (!\mouse1|new_cursor_column\(2) & (!\mouse1|new_cursor_column\(1) & !\mouse1|new_cursor_column\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_column\(4),
	datab => \mouse1|new_cursor_column\(2),
	datac => \mouse1|new_cursor_column\(1),
	datad => \mouse1|new_cursor_column\(3),
	combout => \mouse1|RECV_UART~3_combout\);

-- Location: LCCOMB_X30_Y25_N22
\mouse1|cursor_column~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~4_combout\ = (!\mouse1|new_cursor_column\(5) & (!\mouse1|new_cursor_column\(6) & (!\mouse1|new_cursor_column\(0) & \mouse1|RECV_UART~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_column\(5),
	datab => \mouse1|new_cursor_column\(6),
	datac => \mouse1|new_cursor_column\(0),
	datad => \mouse1|RECV_UART~3_combout\,
	combout => \mouse1|cursor_column~4_combout\);

-- Location: LCCOMB_X30_Y25_N18
\mouse1|RECV_UART~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|RECV_UART~4_combout\ = (!\mouse1|new_cursor_column\(5) & (!\mouse1|new_cursor_column\(6) & \mouse1|RECV_UART~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_column\(5),
	datab => \mouse1|new_cursor_column\(6),
	datad => \mouse1|RECV_UART~3_combout\,
	combout => \mouse1|RECV_UART~4_combout\);

-- Location: LCCOMB_X30_Y25_N28
\mouse1|RECV_UART~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|RECV_UART~5_combout\ = (\mouse1|new_cursor_column\(9)) # ((\mouse1|new_cursor_column\(7) & (\mouse1|new_cursor_column\(8))) # (!\mouse1|new_cursor_column\(7) & (!\mouse1|new_cursor_column\(8) & \mouse1|RECV_UART~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_column\(7),
	datab => \mouse1|new_cursor_column\(8),
	datac => \mouse1|new_cursor_column\(9),
	datad => \mouse1|RECV_UART~4_combout\,
	combout => \mouse1|RECV_UART~5_combout\);

-- Location: LCCOMB_X30_Y25_N24
\mouse1|cursor_column~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~5_combout\ = (!\mouse1|cursor_column\(9) & ((\mouse1|RECV_UART~5_combout\) # ((\mouse1|new_cursor_column\(8) & !\mouse1|cursor_column~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(9),
	datab => \mouse1|new_cursor_column\(8),
	datac => \mouse1|cursor_column~4_combout\,
	datad => \mouse1|RECV_UART~5_combout\,
	combout => \mouse1|cursor_column~5_combout\);

-- Location: LCCOMB_X30_Y25_N2
\mouse1|cursor_column~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~6_combout\ = (\mouse1|Equal3~0_combout\ & ((\mouse1|cursor_column\(7)) # ((\mouse1|cursor_column\(8)) # (!\mouse1|cursor_column~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(7),
	datab => \mouse1|cursor_column\(8),
	datac => \mouse1|Equal3~0_combout\,
	datad => \mouse1|cursor_column~5_combout\,
	combout => \mouse1|cursor_column~6_combout\);

-- Location: LCCOMB_X30_Y25_N4
\mouse1|cursor_column[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column[2]~8_combout\ = (\mouse1|cursor_column~6_combout\ & ((\mouse1|cursor_column[2]~7_combout\) # ((!\mouse1|LessThan9~0_combout\ & !\mouse1|new_cursor_column\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|LessThan9~0_combout\,
	datab => \mouse1|new_cursor_column\(8),
	datac => \mouse1|cursor_column[2]~7_combout\,
	datad => \mouse1|cursor_column~6_combout\,
	combout => \mouse1|cursor_column[2]~8_combout\);

-- Location: LCCOMB_X30_Y25_N10
\mouse1|cursor_column~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~13_combout\ = (!\mouse1|cursor_column[2]~7_combout\ & (\mouse1|cursor_column~6_combout\ & ((\mouse1|LessThan9~0_combout\) # (\mouse1|new_cursor_column\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|LessThan9~0_combout\,
	datab => \mouse1|new_cursor_column\(8),
	datac => \mouse1|cursor_column[2]~7_combout\,
	datad => \mouse1|cursor_column~6_combout\,
	combout => \mouse1|cursor_column~13_combout\);

-- Location: LCCOMB_X30_Y25_N26
\mouse1|cursor_column~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~15_combout\ = (\mouse1|cursor_column~13_combout\) # ((\mouse1|new_cursor_column\(9) & \mouse1|cursor_column[2]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_column\(9),
	datac => \mouse1|cursor_column[2]~8_combout\,
	datad => \mouse1|cursor_column~13_combout\,
	combout => \mouse1|cursor_column~15_combout\);

-- Location: FF_X30_Y25_N27
\mouse1|cursor_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_column~15_combout\,
	ena => \mouse1|cursor_row[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_column\(9));

-- Location: LCCOMB_X35_Y27_N6
\VGA_controls|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|Add0~0_combout\ = \VGA_controls|h_count\(0) $ (VCC)
-- \VGA_controls|Add0~1\ = CARRY(\VGA_controls|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|h_count\(0),
	datad => VCC,
	combout => \VGA_controls|Add0~0_combout\,
	cout => \VGA_controls|Add0~1\);

-- Location: LCCOMB_X35_Y27_N8
\VGA_controls|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|Add0~2_combout\ = (\VGA_controls|h_count\(1) & (!\VGA_controls|Add0~1\)) # (!\VGA_controls|h_count\(1) & ((\VGA_controls|Add0~1\) # (GND)))
-- \VGA_controls|Add0~3\ = CARRY((!\VGA_controls|Add0~1\) # (!\VGA_controls|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controls|h_count\(1),
	datad => VCC,
	cin => \VGA_controls|Add0~1\,
	combout => \VGA_controls|Add0~2_combout\,
	cout => \VGA_controls|Add0~3\);

-- Location: FF_X35_Y27_N9
\VGA_controls|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controls|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|h_count\(1));

-- Location: LCCOMB_X35_Y27_N10
\VGA_controls|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|Add0~4_combout\ = (\VGA_controls|h_count\(2) & (\VGA_controls|Add0~3\ $ (GND))) # (!\VGA_controls|h_count\(2) & (!\VGA_controls|Add0~3\ & VCC))
-- \VGA_controls|Add0~5\ = CARRY((\VGA_controls|h_count\(2) & !\VGA_controls|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|h_count\(2),
	datad => VCC,
	cin => \VGA_controls|Add0~3\,
	combout => \VGA_controls|Add0~4_combout\,
	cout => \VGA_controls|Add0~5\);

-- Location: LCCOMB_X35_Y27_N12
\VGA_controls|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|Add0~6_combout\ = (\VGA_controls|h_count\(3) & (!\VGA_controls|Add0~5\)) # (!\VGA_controls|h_count\(3) & ((\VGA_controls|Add0~5\) # (GND)))
-- \VGA_controls|Add0~7\ = CARRY((!\VGA_controls|Add0~5\) # (!\VGA_controls|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|h_count\(3),
	datad => VCC,
	cin => \VGA_controls|Add0~5\,
	combout => \VGA_controls|Add0~6_combout\,
	cout => \VGA_controls|Add0~7\);

-- Location: LCCOMB_X35_Y27_N14
\VGA_controls|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|Add0~8_combout\ = (\VGA_controls|h_count\(4) & (\VGA_controls|Add0~7\ $ (GND))) # (!\VGA_controls|h_count\(4) & (!\VGA_controls|Add0~7\ & VCC))
-- \VGA_controls|Add0~9\ = CARRY((\VGA_controls|h_count\(4) & !\VGA_controls|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controls|h_count\(4),
	datad => VCC,
	cin => \VGA_controls|Add0~7\,
	combout => \VGA_controls|Add0~8_combout\,
	cout => \VGA_controls|Add0~9\);

-- Location: FF_X35_Y27_N15
\VGA_controls|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controls|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|h_count\(4));

-- Location: LCCOMB_X35_Y27_N16
\VGA_controls|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|Add0~10_combout\ = (\VGA_controls|h_count\(5) & (!\VGA_controls|Add0~9\)) # (!\VGA_controls|h_count\(5) & ((\VGA_controls|Add0~9\) # (GND)))
-- \VGA_controls|Add0~11\ = CARRY((!\VGA_controls|Add0~9\) # (!\VGA_controls|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|h_count\(5),
	datad => VCC,
	cin => \VGA_controls|Add0~9\,
	combout => \VGA_controls|Add0~10_combout\,
	cout => \VGA_controls|Add0~11\);

-- Location: LCCOMB_X35_Y27_N18
\VGA_controls|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|Add0~12_combout\ = (\VGA_controls|h_count\(6) & (\VGA_controls|Add0~11\ $ (GND))) # (!\VGA_controls|h_count\(6) & (!\VGA_controls|Add0~11\ & VCC))
-- \VGA_controls|Add0~13\ = CARRY((\VGA_controls|h_count\(6) & !\VGA_controls|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controls|h_count\(6),
	datad => VCC,
	cin => \VGA_controls|Add0~11\,
	combout => \VGA_controls|Add0~12_combout\,
	cout => \VGA_controls|Add0~13\);

-- Location: FF_X35_Y27_N19
\VGA_controls|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controls|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|h_count\(6));

-- Location: LCCOMB_X35_Y27_N20
\VGA_controls|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|Add0~14_combout\ = (\VGA_controls|h_count\(7) & (!\VGA_controls|Add0~13\)) # (!\VGA_controls|h_count\(7) & ((\VGA_controls|Add0~13\) # (GND)))
-- \VGA_controls|Add0~15\ = CARRY((!\VGA_controls|Add0~13\) # (!\VGA_controls|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controls|h_count\(7),
	datad => VCC,
	cin => \VGA_controls|Add0~13\,
	combout => \VGA_controls|Add0~14_combout\,
	cout => \VGA_controls|Add0~15\);

-- Location: FF_X35_Y27_N21
\VGA_controls|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controls|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|h_count\(7));

-- Location: LCCOMB_X35_Y27_N22
\VGA_controls|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|Add0~16_combout\ = (\VGA_controls|h_count\(8) & (\VGA_controls|Add0~15\ $ (GND))) # (!\VGA_controls|h_count\(8) & (!\VGA_controls|Add0~15\ & VCC))
-- \VGA_controls|Add0~17\ = CARRY((\VGA_controls|h_count\(8) & !\VGA_controls|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|h_count\(8),
	datad => VCC,
	cin => \VGA_controls|Add0~15\,
	combout => \VGA_controls|Add0~16_combout\,
	cout => \VGA_controls|Add0~17\);

-- Location: LCCOMB_X35_Y27_N24
\VGA_controls|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|Add0~18_combout\ = \VGA_controls|Add0~17\ $ (\VGA_controls|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA_controls|h_count\(9),
	cin => \VGA_controls|Add0~17\,
	combout => \VGA_controls|Add0~18_combout\);

-- Location: LCCOMB_X35_Y27_N4
\VGA_controls|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|Equal0~1_combout\ = (!\VGA_controls|h_count\(6) & \VGA_controls|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controls|h_count\(6),
	datad => \VGA_controls|h_count\(9),
	combout => \VGA_controls|Equal0~1_combout\);

-- Location: FF_X35_Y27_N13
\VGA_controls|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controls|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|h_count\(3));

-- Location: LCCOMB_X35_Y27_N2
\VGA_controls|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|Equal0~0_combout\ = (\VGA_controls|h_count\(0) & (\VGA_controls|h_count\(4) & (\VGA_controls|h_count\(1) & \VGA_controls|h_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|h_count\(0),
	datab => \VGA_controls|h_count\(4),
	datac => \VGA_controls|h_count\(1),
	datad => \VGA_controls|h_count\(3),
	combout => \VGA_controls|Equal0~0_combout\);

-- Location: LCCOMB_X35_Y27_N0
\VGA_controls|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|h_count~0_combout\ = (\VGA_controls|Add0~18_combout\ & (((!\VGA_controls|Equal0~0_combout\) # (!\VGA_controls|Equal0~1_combout\)) # (!\VGA_controls|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|Equal0~2_combout\,
	datab => \VGA_controls|Add0~18_combout\,
	datac => \VGA_controls|Equal0~1_combout\,
	datad => \VGA_controls|Equal0~0_combout\,
	combout => \VGA_controls|h_count~0_combout\);

-- Location: FF_X35_Y27_N1
\VGA_controls|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controls|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|h_count\(9));

-- Location: LCCOMB_X35_Y27_N30
\VGA_controls|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|h_count~1_combout\ = (\VGA_controls|Add0~16_combout\ & (((!\VGA_controls|Equal0~0_combout\) # (!\VGA_controls|Equal0~1_combout\)) # (!\VGA_controls|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|Equal0~2_combout\,
	datab => \VGA_controls|Equal0~1_combout\,
	datac => \VGA_controls|Add0~16_combout\,
	datad => \VGA_controls|Equal0~0_combout\,
	combout => \VGA_controls|h_count~1_combout\);

-- Location: FF_X35_Y27_N31
\VGA_controls|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controls|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|h_count\(8));

-- Location: LCCOMB_X31_Y27_N30
\VGA_controls|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|process_0~0_combout\ = ((!\VGA_controls|h_count\(7) & !\VGA_controls|h_count\(8))) # (!\VGA_controls|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|h_count\(9),
	datac => \VGA_controls|h_count\(7),
	datad => \VGA_controls|h_count\(8),
	combout => \VGA_controls|process_0~0_combout\);

-- Location: FF_X31_Y27_N29
\VGA_controls|pixel_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controls|h_count\(9),
	sload => VCC,
	ena => \VGA_controls|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|pixel_column\(9));

-- Location: LCCOMB_X29_Y25_N26
\mouse1|cursor_column~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~14_combout\ = (\mouse1|cursor_column~13_combout\) # ((\mouse1|new_cursor_column\(7) & \mouse1|cursor_column[2]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|new_cursor_column\(7),
	datac => \mouse1|cursor_column~13_combout\,
	datad => \mouse1|cursor_column[2]~8_combout\,
	combout => \mouse1|cursor_column~14_combout\);

-- Location: FF_X29_Y25_N27
\mouse1|cursor_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_column~14_combout\,
	ena => \mouse1|cursor_row[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_column\(7));

-- Location: LCCOMB_X35_Y27_N28
\VGA_controls|h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|h_count~2_combout\ = (\VGA_controls|Add0~10_combout\ & (((!\VGA_controls|Equal0~0_combout\) # (!\VGA_controls|Equal0~1_combout\)) # (!\VGA_controls|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|Equal0~2_combout\,
	datab => \VGA_controls|Add0~10_combout\,
	datac => \VGA_controls|Equal0~1_combout\,
	datad => \VGA_controls|Equal0~0_combout\,
	combout => \VGA_controls|h_count~2_combout\);

-- Location: FF_X35_Y27_N29
\VGA_controls|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controls|h_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|h_count\(5));

-- Location: FF_X31_Y27_N19
\VGA_controls|pixel_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controls|h_count\(5),
	sload => VCC,
	ena => \VGA_controls|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|pixel_column\(5));

-- Location: FF_X31_Y25_N21
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
	ena => \mouse1|new_cursor_row[9]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(4));

-- Location: LCCOMB_X29_Y25_N22
\mouse1|cursor_column~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~11_combout\ = (\mouse1|new_cursor_column\(4) & \mouse1|cursor_column[2]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|new_cursor_column\(4),
	datad => \mouse1|cursor_column[2]~8_combout\,
	combout => \mouse1|cursor_column~11_combout\);

-- Location: FF_X29_Y25_N23
\mouse1|cursor_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_column~11_combout\,
	ena => \mouse1|cursor_row[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_column\(4));

-- Location: LCCOMB_X29_Y25_N8
\mouse1|cursor_column~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~10_combout\ = (\mouse1|new_cursor_column\(3) & \mouse1|cursor_column[2]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|new_cursor_column\(3),
	datad => \mouse1|cursor_column[2]~8_combout\,
	combout => \mouse1|cursor_column~10_combout\);

-- Location: FF_X29_Y25_N9
\mouse1|cursor_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_column~10_combout\,
	ena => \mouse1|cursor_row[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_column\(3));

-- Location: LCCOMB_X30_Y25_N0
\mouse1|cursor_column~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~9_combout\ = (\mouse1|cursor_column[2]~8_combout\ & \mouse1|new_cursor_column\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|cursor_column[2]~8_combout\,
	datad => \mouse1|new_cursor_column\(2),
	combout => \mouse1|cursor_column~9_combout\);

-- Location: FF_X30_Y25_N1
\mouse1|cursor_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_column~9_combout\,
	ena => \mouse1|cursor_row[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_column\(2));

-- Location: FF_X31_Y27_N13
\VGA_controls|pixel_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controls|h_count\(1),
	sload => VCC,
	ena => \VGA_controls|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|pixel_column\(1));

-- Location: FF_X35_Y27_N7
\VGA_controls|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controls|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|h_count\(0));

-- Location: LCCOMB_X31_Y27_N4
\VGA_controls|pixel_column[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|pixel_column[0]~feeder_combout\ = \VGA_controls|h_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_controls|h_count\(0),
	combout => \VGA_controls|pixel_column[0]~feeder_combout\);

-- Location: FF_X31_Y27_N5
\VGA_controls|pixel_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controls|pixel_column[0]~feeder_combout\,
	ena => \VGA_controls|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|pixel_column\(0));

-- Location: LCCOMB_X31_Y27_N10
\cursor|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|LessThan2~1_cout\ = CARRY((\mouse1|cursor_column\(0) & !\VGA_controls|pixel_column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(0),
	datab => \VGA_controls|pixel_column\(0),
	datad => VCC,
	cout => \cursor|LessThan2~1_cout\);

-- Location: LCCOMB_X31_Y27_N12
\cursor|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|LessThan2~3_cout\ = CARRY((\mouse1|cursor_column\(1) & (\VGA_controls|pixel_column\(1) & !\cursor|LessThan2~1_cout\)) # (!\mouse1|cursor_column\(1) & ((\VGA_controls|pixel_column\(1)) # (!\cursor|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(1),
	datab => \VGA_controls|pixel_column\(1),
	datad => VCC,
	cin => \cursor|LessThan2~1_cout\,
	cout => \cursor|LessThan2~3_cout\);

-- Location: LCCOMB_X31_Y27_N14
\cursor|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|LessThan2~5_cout\ = CARRY((\VGA_controls|pixel_column\(2) & (\mouse1|cursor_column\(2) & !\cursor|LessThan2~3_cout\)) # (!\VGA_controls|pixel_column\(2) & ((\mouse1|cursor_column\(2)) # (!\cursor|LessThan2~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|pixel_column\(2),
	datab => \mouse1|cursor_column\(2),
	datad => VCC,
	cin => \cursor|LessThan2~3_cout\,
	cout => \cursor|LessThan2~5_cout\);

-- Location: LCCOMB_X31_Y27_N16
\cursor|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|LessThan2~7_cout\ = CARRY((\VGA_controls|pixel_column\(3) & ((!\cursor|LessThan2~5_cout\) # (!\mouse1|cursor_column\(3)))) # (!\VGA_controls|pixel_column\(3) & (!\mouse1|cursor_column\(3) & !\cursor|LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|pixel_column\(3),
	datab => \mouse1|cursor_column\(3),
	datad => VCC,
	cin => \cursor|LessThan2~5_cout\,
	cout => \cursor|LessThan2~7_cout\);

-- Location: LCCOMB_X31_Y27_N18
\cursor|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|LessThan2~9_cout\ = CARRY((\VGA_controls|pixel_column\(4) & (\mouse1|cursor_column\(4) & !\cursor|LessThan2~7_cout\)) # (!\VGA_controls|pixel_column\(4) & ((\mouse1|cursor_column\(4)) # (!\cursor|LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|pixel_column\(4),
	datab => \mouse1|cursor_column\(4),
	datad => VCC,
	cin => \cursor|LessThan2~7_cout\,
	cout => \cursor|LessThan2~9_cout\);

-- Location: LCCOMB_X31_Y27_N20
\cursor|LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|LessThan2~11_cout\ = CARRY((\mouse1|cursor_column\(5) & (\VGA_controls|pixel_column\(5) & !\cursor|LessThan2~9_cout\)) # (!\mouse1|cursor_column\(5) & ((\VGA_controls|pixel_column\(5)) # (!\cursor|LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(5),
	datab => \VGA_controls|pixel_column\(5),
	datad => VCC,
	cin => \cursor|LessThan2~9_cout\,
	cout => \cursor|LessThan2~11_cout\);

-- Location: LCCOMB_X31_Y27_N22
\cursor|LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|LessThan2~13_cout\ = CARRY((\VGA_controls|pixel_column\(6) & (\mouse1|cursor_column\(6) & !\cursor|LessThan2~11_cout\)) # (!\VGA_controls|pixel_column\(6) & ((\mouse1|cursor_column\(6)) # (!\cursor|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|pixel_column\(6),
	datab => \mouse1|cursor_column\(6),
	datad => VCC,
	cin => \cursor|LessThan2~11_cout\,
	cout => \cursor|LessThan2~13_cout\);

-- Location: LCCOMB_X31_Y27_N24
\cursor|LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|LessThan2~15_cout\ = CARRY((\VGA_controls|pixel_column\(7) & ((!\cursor|LessThan2~13_cout\) # (!\mouse1|cursor_column\(7)))) # (!\VGA_controls|pixel_column\(7) & (!\mouse1|cursor_column\(7) & !\cursor|LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|pixel_column\(7),
	datab => \mouse1|cursor_column\(7),
	datad => VCC,
	cin => \cursor|LessThan2~13_cout\,
	cout => \cursor|LessThan2~15_cout\);

-- Location: LCCOMB_X31_Y27_N26
\cursor|LessThan2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|LessThan2~17_cout\ = CARRY((\VGA_controls|pixel_column\(8) & (\mouse1|cursor_column\(8) & !\cursor|LessThan2~15_cout\)) # (!\VGA_controls|pixel_column\(8) & ((\mouse1|cursor_column\(8)) # (!\cursor|LessThan2~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|pixel_column\(8),
	datab => \mouse1|cursor_column\(8),
	datad => VCC,
	cin => \cursor|LessThan2~15_cout\,
	cout => \cursor|LessThan2~17_cout\);

-- Location: LCCOMB_X31_Y27_N28
\cursor|LessThan2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|LessThan2~18_combout\ = (\mouse1|cursor_column\(9) & ((\cursor|LessThan2~17_cout\) # (!\VGA_controls|pixel_column\(9)))) # (!\mouse1|cursor_column\(9) & (\cursor|LessThan2~17_cout\ & !\VGA_controls|pixel_column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|cursor_column\(9),
	datad => \VGA_controls|pixel_column\(9),
	cin => \cursor|LessThan2~17_cout\,
	combout => \cursor|LessThan2~18_combout\);

-- Location: LCCOMB_X29_Y26_N10
\mouse1|PACKET_CHAR3[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR3[7]~feeder_combout\ = \mouse1|SHIFTIN\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|SHIFTIN\(7),
	combout => \mouse1|PACKET_CHAR3[7]~feeder_combout\);

-- Location: LCCOMB_X29_Y26_N18
\mouse1|right_button~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|right_button~0_combout\ = (\mouse1|INCNT[3]~0_combout\ & (!\mouse1|Equal4~0_combout\ & (\mouse1|READ_CHAR~q\ & !\mouse1|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|INCNT[3]~0_combout\,
	datab => \mouse1|Equal4~0_combout\,
	datac => \mouse1|READ_CHAR~q\,
	datad => \mouse1|LessThan1~0_combout\,
	combout => \mouse1|right_button~0_combout\);

-- Location: FF_X29_Y26_N11
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

-- Location: LCCOMB_X29_Y26_N14
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

-- Location: FF_X29_Y26_N15
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

-- Location: LCCOMB_X28_Y27_N16
\mouse1|cursor_row~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row~10_combout\ = (\mouse1|new_cursor_row\(0) & (\mouse1|Equal3~0_combout\ & (!\mouse1|RECV_UART~2_combout\ & \mouse1|cursor_row~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_row\(0),
	datab => \mouse1|Equal3~0_combout\,
	datac => \mouse1|RECV_UART~2_combout\,
	datad => \mouse1|cursor_row~0_combout\,
	combout => \mouse1|cursor_row~10_combout\);

-- Location: FF_X28_Y27_N17
\mouse1|cursor_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_row~10_combout\,
	ena => \mouse1|cursor_row[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_row\(0));

-- Location: LCCOMB_X28_Y26_N8
\mouse1|new_cursor_row[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_row[1]~12_combout\ = (\mouse1|cursor_row\(1) & ((\mouse1|PACKET_CHAR3\(1) & (!\mouse1|new_cursor_row[0]~11\)) # (!\mouse1|PACKET_CHAR3\(1) & (\mouse1|new_cursor_row[0]~11\ & VCC)))) # (!\mouse1|cursor_row\(1) & 
-- ((\mouse1|PACKET_CHAR3\(1) & ((\mouse1|new_cursor_row[0]~11\) # (GND))) # (!\mouse1|PACKET_CHAR3\(1) & (!\mouse1|new_cursor_row[0]~11\))))
-- \mouse1|new_cursor_row[1]~13\ = CARRY((\mouse1|cursor_row\(1) & (\mouse1|PACKET_CHAR3\(1) & !\mouse1|new_cursor_row[0]~11\)) # (!\mouse1|cursor_row\(1) & ((\mouse1|PACKET_CHAR3\(1)) # (!\mouse1|new_cursor_row[0]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(1),
	datab => \mouse1|PACKET_CHAR3\(1),
	datad => VCC,
	cin => \mouse1|new_cursor_row[0]~11\,
	combout => \mouse1|new_cursor_row[1]~12_combout\,
	cout => \mouse1|new_cursor_row[1]~13\);

-- Location: FF_X28_Y26_N9
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
	ena => \mouse1|new_cursor_row[9]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(1));

-- Location: LCCOMB_X29_Y26_N12
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

-- Location: FF_X29_Y26_N13
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

-- Location: LCCOMB_X29_Y26_N26
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

-- Location: FF_X29_Y26_N27
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

-- Location: LCCOMB_X29_Y26_N28
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

-- Location: FF_X29_Y26_N29
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

-- Location: LCCOMB_X28_Y26_N10
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

-- Location: LCCOMB_X28_Y26_N12
\mouse1|new_cursor_row[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_row[3]~17_combout\ = (\mouse1|cursor_row\(3) & ((\mouse1|PACKET_CHAR3\(3) & (!\mouse1|new_cursor_row[2]~15\)) # (!\mouse1|PACKET_CHAR3\(3) & (\mouse1|new_cursor_row[2]~15\ & VCC)))) # (!\mouse1|cursor_row\(3) & 
-- ((\mouse1|PACKET_CHAR3\(3) & ((\mouse1|new_cursor_row[2]~15\) # (GND))) # (!\mouse1|PACKET_CHAR3\(3) & (!\mouse1|new_cursor_row[2]~15\))))
-- \mouse1|new_cursor_row[3]~18\ = CARRY((\mouse1|cursor_row\(3) & (\mouse1|PACKET_CHAR3\(3) & !\mouse1|new_cursor_row[2]~15\)) # (!\mouse1|cursor_row\(3) & ((\mouse1|PACKET_CHAR3\(3)) # (!\mouse1|new_cursor_row[2]~15\))))

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
	combout => \mouse1|new_cursor_row[3]~17_combout\,
	cout => \mouse1|new_cursor_row[3]~18\);

-- Location: LCCOMB_X28_Y26_N14
\mouse1|new_cursor_row[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_row[4]~19_combout\ = ((\mouse1|cursor_row\(4) $ (\mouse1|PACKET_CHAR3\(4) $ (\mouse1|new_cursor_row[3]~18\)))) # (GND)
-- \mouse1|new_cursor_row[4]~20\ = CARRY((\mouse1|cursor_row\(4) & ((!\mouse1|new_cursor_row[3]~18\) # (!\mouse1|PACKET_CHAR3\(4)))) # (!\mouse1|cursor_row\(4) & (!\mouse1|PACKET_CHAR3\(4) & !\mouse1|new_cursor_row[3]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(4),
	datab => \mouse1|PACKET_CHAR3\(4),
	datad => VCC,
	cin => \mouse1|new_cursor_row[3]~18\,
	combout => \mouse1|new_cursor_row[4]~19_combout\,
	cout => \mouse1|new_cursor_row[4]~20\);

-- Location: FF_X28_Y26_N15
\mouse1|new_cursor_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|new_cursor_row[4]~19_combout\,
	asdata => VCC,
	sload => \mouse1|Equal4~0_combout\,
	ena => \mouse1|new_cursor_row[9]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(4));

-- Location: FF_X28_Y26_N11
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
	ena => \mouse1|new_cursor_row[9]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(2));

-- Location: LCCOMB_X28_Y26_N2
\mouse1|LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|LessThan5~0_combout\ = (!\mouse1|new_cursor_row\(3) & (!\mouse1|new_cursor_row\(1) & (!\mouse1|new_cursor_row\(4) & !\mouse1|new_cursor_row\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_row\(3),
	datab => \mouse1|new_cursor_row\(1),
	datac => \mouse1|new_cursor_row\(4),
	datad => \mouse1|new_cursor_row\(2),
	combout => \mouse1|LessThan5~0_combout\);

-- Location: LCCOMB_X28_Y26_N22
\mouse1|new_cursor_row[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_row[8]~27_combout\ = ((\mouse1|cursor_row\(8) $ (\mouse1|PACKET_CHAR3\(7) $ (\mouse1|new_cursor_row[7]~26\)))) # (GND)
-- \mouse1|new_cursor_row[8]~28\ = CARRY((\mouse1|cursor_row\(8) & ((!\mouse1|new_cursor_row[7]~26\) # (!\mouse1|PACKET_CHAR3\(7)))) # (!\mouse1|cursor_row\(8) & (!\mouse1|PACKET_CHAR3\(7) & !\mouse1|new_cursor_row[7]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(8),
	datab => \mouse1|PACKET_CHAR3\(7),
	datad => VCC,
	cin => \mouse1|new_cursor_row[7]~26\,
	combout => \mouse1|new_cursor_row[8]~27_combout\,
	cout => \mouse1|new_cursor_row[8]~28\);

-- Location: FF_X28_Y26_N23
\mouse1|new_cursor_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|new_cursor_row[8]~27_combout\,
	asdata => \~GND~combout\,
	sload => \mouse1|Equal4~0_combout\,
	ena => \mouse1|new_cursor_row[9]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(8));

-- Location: LCCOMB_X29_Y26_N22
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

-- Location: FF_X29_Y26_N23
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

-- Location: LCCOMB_X28_Y26_N16
\mouse1|new_cursor_row[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_row[5]~21_combout\ = (\mouse1|cursor_row\(5) & ((\mouse1|PACKET_CHAR3\(5) & (!\mouse1|new_cursor_row[4]~20\)) # (!\mouse1|PACKET_CHAR3\(5) & (\mouse1|new_cursor_row[4]~20\ & VCC)))) # (!\mouse1|cursor_row\(5) & 
-- ((\mouse1|PACKET_CHAR3\(5) & ((\mouse1|new_cursor_row[4]~20\) # (GND))) # (!\mouse1|PACKET_CHAR3\(5) & (!\mouse1|new_cursor_row[4]~20\))))
-- \mouse1|new_cursor_row[5]~22\ = CARRY((\mouse1|cursor_row\(5) & (\mouse1|PACKET_CHAR3\(5) & !\mouse1|new_cursor_row[4]~20\)) # (!\mouse1|cursor_row\(5) & ((\mouse1|PACKET_CHAR3\(5)) # (!\mouse1|new_cursor_row[4]~20\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(5),
	datab => \mouse1|PACKET_CHAR3\(5),
	datad => VCC,
	cin => \mouse1|new_cursor_row[4]~20\,
	combout => \mouse1|new_cursor_row[5]~21_combout\,
	cout => \mouse1|new_cursor_row[5]~22\);

-- Location: FF_X28_Y26_N17
\mouse1|new_cursor_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|new_cursor_row[5]~21_combout\,
	asdata => VCC,
	sload => \mouse1|Equal4~0_combout\,
	ena => \mouse1|new_cursor_row[9]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(5));

-- Location: LCCOMB_X28_Y26_N18
\mouse1|new_cursor_row[6]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_row[6]~23_combout\ = ((\mouse1|PACKET_CHAR3\(6) $ (\mouse1|cursor_row\(6) $ (\mouse1|new_cursor_row[5]~22\)))) # (GND)
-- \mouse1|new_cursor_row[6]~24\ = CARRY((\mouse1|PACKET_CHAR3\(6) & (\mouse1|cursor_row\(6) & !\mouse1|new_cursor_row[5]~22\)) # (!\mouse1|PACKET_CHAR3\(6) & ((\mouse1|cursor_row\(6)) # (!\mouse1|new_cursor_row[5]~22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|PACKET_CHAR3\(6),
	datab => \mouse1|cursor_row\(6),
	datad => VCC,
	cin => \mouse1|new_cursor_row[5]~22\,
	combout => \mouse1|new_cursor_row[6]~23_combout\,
	cout => \mouse1|new_cursor_row[6]~24\);

-- Location: FF_X28_Y26_N19
\mouse1|new_cursor_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|new_cursor_row[6]~23_combout\,
	asdata => VCC,
	sload => \mouse1|Equal4~0_combout\,
	ena => \mouse1|new_cursor_row[9]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(6));

-- Location: LCCOMB_X28_Y27_N10
\mouse1|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|LessThan5~1_combout\ = (\mouse1|new_cursor_row\(7) & (\mouse1|new_cursor_row\(8) & (\mouse1|new_cursor_row\(5) & \mouse1|new_cursor_row\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_row\(7),
	datab => \mouse1|new_cursor_row\(8),
	datac => \mouse1|new_cursor_row\(5),
	datad => \mouse1|new_cursor_row\(6),
	combout => \mouse1|LessThan5~1_combout\);

-- Location: LCCOMB_X28_Y27_N12
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

-- Location: LCCOMB_X28_Y27_N24
\mouse1|cursor_row~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row~6_combout\ = ((!\mouse1|RECV_UART~2_combout\ & ((\mouse1|new_cursor_row\(6)) # (!\mouse1|cursor_row~0_combout\)))) # (!\mouse1|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_row\(6),
	datab => \mouse1|Equal3~0_combout\,
	datac => \mouse1|RECV_UART~2_combout\,
	datad => \mouse1|cursor_row~0_combout\,
	combout => \mouse1|cursor_row~6_combout\);

-- Location: FF_X28_Y27_N25
\mouse1|cursor_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_row~6_combout\,
	ena => \mouse1|cursor_row[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_row\(6));

-- Location: LCCOMB_X28_Y26_N20
\mouse1|new_cursor_row[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_row[7]~25_combout\ = (\mouse1|cursor_row\(7) & ((\mouse1|PACKET_CHAR3\(7) & (!\mouse1|new_cursor_row[6]~24\)) # (!\mouse1|PACKET_CHAR3\(7) & (\mouse1|new_cursor_row[6]~24\ & VCC)))) # (!\mouse1|cursor_row\(7) & 
-- ((\mouse1|PACKET_CHAR3\(7) & ((\mouse1|new_cursor_row[6]~24\) # (GND))) # (!\mouse1|PACKET_CHAR3\(7) & (!\mouse1|new_cursor_row[6]~24\))))
-- \mouse1|new_cursor_row[7]~26\ = CARRY((\mouse1|cursor_row\(7) & (\mouse1|PACKET_CHAR3\(7) & !\mouse1|new_cursor_row[6]~24\)) # (!\mouse1|cursor_row\(7) & ((\mouse1|PACKET_CHAR3\(7)) # (!\mouse1|new_cursor_row[6]~24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(7),
	datab => \mouse1|PACKET_CHAR3\(7),
	datad => VCC,
	cin => \mouse1|new_cursor_row[6]~24\,
	combout => \mouse1|new_cursor_row[7]~25_combout\,
	cout => \mouse1|new_cursor_row[7]~26\);

-- Location: LCCOMB_X28_Y26_N24
\mouse1|new_cursor_row[9]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|new_cursor_row[9]~29_combout\ = \mouse1|PACKET_CHAR3\(7) $ (!\mouse1|new_cursor_row[8]~28\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|PACKET_CHAR3\(7),
	cin => \mouse1|new_cursor_row[8]~28\,
	combout => \mouse1|new_cursor_row[9]~29_combout\);

-- Location: FF_X28_Y26_N25
\mouse1|new_cursor_row[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|new_cursor_row[9]~29_combout\,
	asdata => \~GND~combout\,
	sload => \mouse1|Equal4~0_combout\,
	ena => \mouse1|new_cursor_row[9]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(9));

-- Location: LCCOMB_X28_Y27_N14
\mouse1|cursor_row~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row~7_combout\ = (\mouse1|Equal3~0_combout\ & (!\mouse1|RECV_UART~2_combout\ & ((\mouse1|new_cursor_row\(8)) # (!\mouse1|cursor_row~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row~0_combout\,
	datab => \mouse1|Equal3~0_combout\,
	datac => \mouse1|RECV_UART~2_combout\,
	datad => \mouse1|new_cursor_row\(8),
	combout => \mouse1|cursor_row~7_combout\);

-- Location: FF_X28_Y27_N15
\mouse1|cursor_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_row~7_combout\,
	ena => \mouse1|cursor_row[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_row\(8));

-- Location: FF_X28_Y26_N21
\mouse1|new_cursor_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|new_cursor_row[7]~25_combout\,
	asdata => VCC,
	sload => \mouse1|Equal4~0_combout\,
	ena => \mouse1|new_cursor_row[9]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(7));

-- Location: LCCOMB_X28_Y26_N28
\mouse1|RECV_UART~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|RECV_UART~0_combout\ = (!\mouse1|new_cursor_row\(7) & (!\mouse1|new_cursor_row\(6) & !\mouse1|new_cursor_row\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|new_cursor_row\(7),
	datac => \mouse1|new_cursor_row\(6),
	datad => \mouse1|new_cursor_row\(5),
	combout => \mouse1|RECV_UART~0_combout\);

-- Location: LCCOMB_X28_Y26_N30
\mouse1|RECV_UART~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|RECV_UART~1_combout\ = (\mouse1|RECV_UART~0_combout\ & ((\mouse1|new_cursor_row\(8) & ((\mouse1|new_cursor_row\(0)) # (!\mouse1|LessThan5~0_combout\))) # (!\mouse1|new_cursor_row\(8) & ((\mouse1|LessThan5~0_combout\))))) # 
-- (!\mouse1|RECV_UART~0_combout\ & (((\mouse1|new_cursor_row\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_row\(0),
	datab => \mouse1|RECV_UART~0_combout\,
	datac => \mouse1|new_cursor_row\(8),
	datad => \mouse1|LessThan5~0_combout\,
	combout => \mouse1|RECV_UART~1_combout\);

-- Location: LCCOMB_X28_Y27_N26
\mouse1|RECV_UART~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|RECV_UART~2_combout\ = (!\mouse1|cursor_row\(7) & (!\mouse1|cursor_row\(8) & ((\mouse1|new_cursor_row\(9)) # (\mouse1|RECV_UART~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(7),
	datab => \mouse1|new_cursor_row\(9),
	datac => \mouse1|cursor_row\(8),
	datad => \mouse1|RECV_UART~1_combout\,
	combout => \mouse1|RECV_UART~2_combout\);

-- Location: LCCOMB_X28_Y27_N28
\mouse1|cursor_row~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row~8_combout\ = ((!\mouse1|RECV_UART~2_combout\ & ((\mouse1|new_cursor_row\(7)) # (!\mouse1|cursor_row~0_combout\)))) # (!\mouse1|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_row\(7),
	datab => \mouse1|Equal3~0_combout\,
	datac => \mouse1|RECV_UART~2_combout\,
	datad => \mouse1|cursor_row~0_combout\,
	combout => \mouse1|cursor_row~8_combout\);

-- Location: FF_X28_Y27_N29
\mouse1|cursor_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_row~8_combout\,
	ena => \mouse1|cursor_row[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_row\(7));

-- Location: LCCOMB_X28_Y27_N30
\mouse1|cursor_row~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row~5_combout\ = ((!\mouse1|RECV_UART~2_combout\ & ((\mouse1|new_cursor_row\(5)) # (!\mouse1|cursor_row~0_combout\)))) # (!\mouse1|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row~0_combout\,
	datab => \mouse1|Equal3~0_combout\,
	datac => \mouse1|RECV_UART~2_combout\,
	datad => \mouse1|new_cursor_row\(5),
	combout => \mouse1|cursor_row~5_combout\);

-- Location: FF_X28_Y27_N31
\mouse1|cursor_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_row~5_combout\,
	ena => \mouse1|cursor_row[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_row\(5));

-- Location: FF_X28_Y26_N13
\mouse1|new_cursor_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|new_cursor_row[3]~17_combout\,
	asdata => \~GND~combout\,
	sload => \mouse1|Equal4~0_combout\,
	ena => \mouse1|new_cursor_row[9]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_row\(3));

-- Location: LCCOMB_X28_Y27_N6
\mouse1|cursor_row~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row~3_combout\ = (\mouse1|cursor_row~0_combout\ & (\mouse1|Equal3~0_combout\ & (!\mouse1|RECV_UART~2_combout\ & \mouse1|new_cursor_row\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row~0_combout\,
	datab => \mouse1|Equal3~0_combout\,
	datac => \mouse1|RECV_UART~2_combout\,
	datad => \mouse1|new_cursor_row\(3),
	combout => \mouse1|cursor_row~3_combout\);

-- Location: FF_X28_Y27_N7
\mouse1|cursor_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_row~3_combout\,
	ena => \mouse1|cursor_row[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_row\(3));

-- Location: LCCOMB_X29_Y27_N18
\cursor|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|Add0~0_combout\ = (\mouse1|cursor_row\(4) & (\mouse1|cursor_row\(3) $ (VCC))) # (!\mouse1|cursor_row\(4) & (\mouse1|cursor_row\(3) & VCC))
-- \cursor|Add0~1\ = CARRY((\mouse1|cursor_row\(4) & \mouse1|cursor_row\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(4),
	datab => \mouse1|cursor_row\(3),
	datad => VCC,
	combout => \cursor|Add0~0_combout\,
	cout => \cursor|Add0~1\);

-- Location: LCCOMB_X29_Y27_N20
\cursor|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|Add0~2_combout\ = (\mouse1|cursor_row\(5) & (!\cursor|Add0~1\)) # (!\mouse1|cursor_row\(5) & ((\cursor|Add0~1\) # (GND)))
-- \cursor|Add0~3\ = CARRY((!\cursor|Add0~1\) # (!\mouse1|cursor_row\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|cursor_row\(5),
	datad => VCC,
	cin => \cursor|Add0~1\,
	combout => \cursor|Add0~2_combout\,
	cout => \cursor|Add0~3\);

-- Location: LCCOMB_X29_Y27_N24
\cursor|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|Add0~6_combout\ = (\mouse1|cursor_row\(7) & (!\cursor|Add0~5\)) # (!\mouse1|cursor_row\(7) & ((\cursor|Add0~5\) # (GND)))
-- \cursor|Add0~7\ = CARRY((!\cursor|Add0~5\) # (!\mouse1|cursor_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|cursor_row\(7),
	datad => VCC,
	cin => \cursor|Add0~5\,
	combout => \cursor|Add0~6_combout\,
	cout => \cursor|Add0~7\);

-- Location: LCCOMB_X29_Y27_N28
\cursor|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|Add0~10_combout\ = \cursor|Add0~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \cursor|Add0~9\,
	combout => \cursor|Add0~10_combout\);

-- Location: LCCOMB_X30_Y27_N26
\VGA_controls|video_on_h~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|video_on_h~feeder_combout\ = \VGA_controls|process_0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_controls|process_0~0_combout\,
	combout => \VGA_controls|video_on_h~feeder_combout\);

-- Location: FF_X30_Y27_N27
\VGA_controls|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controls|video_on_h~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|video_on_h~q\);

-- Location: FF_X35_Y27_N11
\VGA_controls|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controls|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|h_count\(2));

-- Location: LCCOMB_X31_Y27_N2
\VGA_controls|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|Equal1~0_combout\ = (((\VGA_controls|h_count\(2)) # (\VGA_controls|h_count\(8))) # (!\VGA_controls|h_count\(5))) # (!\VGA_controls|h_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|h_count\(7),
	datab => \VGA_controls|h_count\(5),
	datac => \VGA_controls|h_count\(2),
	datad => \VGA_controls|h_count\(8),
	combout => \VGA_controls|Equal1~0_combout\);

-- Location: LCCOMB_X33_Y27_N4
\VGA_controls|v_count[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|v_count[2]~0_combout\ = (\VGA_controls|process_0~12_combout\ & (\VGA_controls|Equal0~1_combout\ & (\VGA_controls|Equal0~0_combout\ & !\VGA_controls|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|process_0~12_combout\,
	datab => \VGA_controls|Equal0~1_combout\,
	datac => \VGA_controls|Equal0~0_combout\,
	datad => \VGA_controls|Equal1~0_combout\,
	combout => \VGA_controls|v_count[2]~0_combout\);

-- Location: LCCOMB_X33_Y27_N6
\VGA_controls|v_count[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|v_count[0]~1_combout\ = ((\VGA_controls|Equal0~1_combout\ & (\VGA_controls|Equal0~0_combout\ & !\VGA_controls|Equal1~0_combout\))) # (!\VGA_controls|process_0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|process_0~12_combout\,
	datab => \VGA_controls|Equal0~1_combout\,
	datac => \VGA_controls|Equal0~0_combout\,
	datad => \VGA_controls|Equal1~0_combout\,
	combout => \VGA_controls|v_count[0]~1_combout\);

-- Location: LCCOMB_X33_Y27_N24
\VGA_controls|v_count[8]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|v_count[8]~6_combout\ = (\VGA_controls|Add1~16_combout\ & ((\VGA_controls|v_count[2]~0_combout\) # ((\VGA_controls|v_count\(8) & !\VGA_controls|v_count[0]~1_combout\)))) # (!\VGA_controls|Add1~16_combout\ & (((\VGA_controls|v_count\(8) & 
-- !\VGA_controls|v_count[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|Add1~16_combout\,
	datab => \VGA_controls|v_count[2]~0_combout\,
	datac => \VGA_controls|v_count\(8),
	datad => \VGA_controls|v_count[0]~1_combout\,
	combout => \VGA_controls|v_count[8]~6_combout\);

-- Location: FF_X33_Y27_N25
\VGA_controls|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controls|v_count[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|v_count\(8));

-- Location: LCCOMB_X33_Y27_N26
\VGA_controls|v_count[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|v_count[3]~8_combout\ = (\VGA_controls|Add1~6_combout\ & ((\VGA_controls|v_count[2]~0_combout\) # ((\VGA_controls|v_count\(3) & !\VGA_controls|v_count[0]~1_combout\)))) # (!\VGA_controls|Add1~6_combout\ & (((\VGA_controls|v_count\(3) & 
-- !\VGA_controls|v_count[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|Add1~6_combout\,
	datab => \VGA_controls|v_count[2]~0_combout\,
	datac => \VGA_controls|v_count\(3),
	datad => \VGA_controls|v_count[0]~1_combout\,
	combout => \VGA_controls|v_count[3]~8_combout\);

-- Location: FF_X33_Y27_N27
\VGA_controls|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controls|v_count[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|v_count\(3));

-- Location: LCCOMB_X33_Y26_N0
\VGA_controls|process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|process_0~10_combout\ = (\VGA_controls|h_count\(5) & \VGA_controls|h_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controls|h_count\(5),
	datac => \VGA_controls|h_count\(4),
	combout => \VGA_controls|process_0~10_combout\);

-- Location: LCCOMB_X33_Y26_N2
\VGA_controls|process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|process_0~11_combout\ = (!\VGA_controls|h_count\(8) & (!\VGA_controls|h_count\(6) & ((\VGA_controls|process_0~9_combout\) # (!\VGA_controls|process_0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|process_0~9_combout\,
	datab => \VGA_controls|process_0~10_combout\,
	datac => \VGA_controls|h_count\(8),
	datad => \VGA_controls|h_count\(6),
	combout => \VGA_controls|process_0~11_combout\);

-- Location: LCCOMB_X32_Y27_N20
\VGA_controls|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|Add1~10_combout\ = (\VGA_controls|v_count\(5) & (!\VGA_controls|Add1~9\)) # (!\VGA_controls|v_count\(5) & ((\VGA_controls|Add1~9\) # (GND)))
-- \VGA_controls|Add1~11\ = CARRY((!\VGA_controls|Add1~9\) # (!\VGA_controls|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|v_count\(5),
	datad => VCC,
	cin => \VGA_controls|Add1~9\,
	combout => \VGA_controls|Add1~10_combout\,
	cout => \VGA_controls|Add1~11\);

-- Location: LCCOMB_X32_Y27_N22
\VGA_controls|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|Add1~12_combout\ = (\VGA_controls|v_count\(6) & (\VGA_controls|Add1~11\ $ (GND))) # (!\VGA_controls|v_count\(6) & (!\VGA_controls|Add1~11\ & VCC))
-- \VGA_controls|Add1~13\ = CARRY((\VGA_controls|v_count\(6) & !\VGA_controls|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controls|v_count\(6),
	datad => VCC,
	cin => \VGA_controls|Add1~11\,
	combout => \VGA_controls|Add1~12_combout\,
	cout => \VGA_controls|Add1~13\);

-- Location: LCCOMB_X32_Y27_N0
\VGA_controls|v_count[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|v_count[6]~4_combout\ = (\VGA_controls|v_count[0]~1_combout\ & (\VGA_controls|Add1~12_combout\ & ((\VGA_controls|v_count[2]~0_combout\)))) # (!\VGA_controls|v_count[0]~1_combout\ & ((\VGA_controls|v_count\(6)) # 
-- ((\VGA_controls|Add1~12_combout\ & \VGA_controls|v_count[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|v_count[0]~1_combout\,
	datab => \VGA_controls|Add1~12_combout\,
	datac => \VGA_controls|v_count\(6),
	datad => \VGA_controls|v_count[2]~0_combout\,
	combout => \VGA_controls|v_count[6]~4_combout\);

-- Location: FF_X32_Y27_N1
\VGA_controls|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controls|v_count[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|v_count\(6));

-- Location: LCCOMB_X32_Y27_N24
\VGA_controls|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|Add1~14_combout\ = (\VGA_controls|v_count\(7) & (!\VGA_controls|Add1~13\)) # (!\VGA_controls|v_count\(7) & ((\VGA_controls|Add1~13\) # (GND)))
-- \VGA_controls|Add1~15\ = CARRY((!\VGA_controls|Add1~13\) # (!\VGA_controls|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|v_count\(7),
	datad => VCC,
	cin => \VGA_controls|Add1~13\,
	combout => \VGA_controls|Add1~14_combout\,
	cout => \VGA_controls|Add1~15\);

-- Location: LCCOMB_X32_Y27_N6
\VGA_controls|v_count[7]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|v_count[7]~5_combout\ = (\VGA_controls|v_count[0]~1_combout\ & (\VGA_controls|Add1~14_combout\ & ((\VGA_controls|v_count[2]~0_combout\)))) # (!\VGA_controls|v_count[0]~1_combout\ & ((\VGA_controls|v_count\(7)) # 
-- ((\VGA_controls|Add1~14_combout\ & \VGA_controls|v_count[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|v_count[0]~1_combout\,
	datab => \VGA_controls|Add1~14_combout\,
	datac => \VGA_controls|v_count\(7),
	datad => \VGA_controls|v_count[2]~0_combout\,
	combout => \VGA_controls|v_count[7]~5_combout\);

-- Location: FF_X32_Y27_N7
\VGA_controls|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controls|v_count[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|v_count\(7));

-- Location: LCCOMB_X33_Y27_N30
\VGA_controls|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|process_0~7_combout\ = (!\VGA_controls|v_count\(4) & (!\VGA_controls|v_count\(5) & ((!\VGA_controls|v_count\(3)) # (!\VGA_controls|v_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|v_count\(2),
	datab => \VGA_controls|v_count\(4),
	datac => \VGA_controls|v_count\(3),
	datad => \VGA_controls|v_count\(5),
	combout => \VGA_controls|process_0~7_combout\);

-- Location: LCCOMB_X33_Y27_N16
\VGA_controls|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|process_0~8_combout\ = (!\VGA_controls|v_count\(6) & (!\VGA_controls|v_count\(7) & (\VGA_controls|process_0~7_combout\ & !\VGA_controls|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|v_count\(6),
	datab => \VGA_controls|v_count\(7),
	datac => \VGA_controls|process_0~7_combout\,
	datad => \VGA_controls|v_count\(8),
	combout => \VGA_controls|process_0~8_combout\);

-- Location: LCCOMB_X33_Y27_N10
\VGA_controls|process_0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|process_0~12_combout\ = ((\VGA_controls|process_0~11_combout\) # ((\VGA_controls|process_0~0_combout\) # (\VGA_controls|process_0~8_combout\))) # (!\VGA_controls|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|v_count\(9),
	datab => \VGA_controls|process_0~11_combout\,
	datac => \VGA_controls|process_0~0_combout\,
	datad => \VGA_controls|process_0~8_combout\,
	combout => \VGA_controls|process_0~12_combout\);

-- Location: LCCOMB_X33_Y27_N14
\VGA_controls|v_count~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|v_count~11_combout\ = (\VGA_controls|Add1~0_combout\ & \VGA_controls|process_0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|Add1~0_combout\,
	datad => \VGA_controls|process_0~12_combout\,
	combout => \VGA_controls|v_count~11_combout\);

-- Location: FF_X33_Y27_N15
\VGA_controls|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controls|v_count~11_combout\,
	ena => \VGA_controls|v_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|v_count\(0));

-- Location: LCCOMB_X32_Y27_N14
\VGA_controls|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|Add1~4_combout\ = (\VGA_controls|v_count\(2) & (\VGA_controls|Add1~3\ $ (GND))) # (!\VGA_controls|v_count\(2) & (!\VGA_controls|Add1~3\ & VCC))
-- \VGA_controls|Add1~5\ = CARRY((\VGA_controls|v_count\(2) & !\VGA_controls|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controls|v_count\(2),
	datad => VCC,
	cin => \VGA_controls|Add1~3\,
	combout => \VGA_controls|Add1~4_combout\,
	cout => \VGA_controls|Add1~5\);

-- Location: LCCOMB_X32_Y27_N2
\VGA_controls|v_count[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|v_count[2]~9_combout\ = (\VGA_controls|v_count[0]~1_combout\ & (\VGA_controls|Add1~4_combout\ & ((\VGA_controls|v_count[2]~0_combout\)))) # (!\VGA_controls|v_count[0]~1_combout\ & ((\VGA_controls|v_count\(2)) # 
-- ((\VGA_controls|Add1~4_combout\ & \VGA_controls|v_count[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|v_count[0]~1_combout\,
	datab => \VGA_controls|Add1~4_combout\,
	datac => \VGA_controls|v_count\(2),
	datad => \VGA_controls|v_count[2]~0_combout\,
	combout => \VGA_controls|v_count[2]~9_combout\);

-- Location: FF_X32_Y27_N3
\VGA_controls|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controls|v_count[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|v_count\(2));

-- Location: LCCOMB_X32_Y27_N18
\VGA_controls|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|Add1~8_combout\ = (\VGA_controls|v_count\(4) & (\VGA_controls|Add1~7\ $ (GND))) # (!\VGA_controls|v_count\(4) & (!\VGA_controls|Add1~7\ & VCC))
-- \VGA_controls|Add1~9\ = CARRY((\VGA_controls|v_count\(4) & !\VGA_controls|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controls|v_count\(4),
	datad => VCC,
	cin => \VGA_controls|Add1~7\,
	combout => \VGA_controls|Add1~8_combout\,
	cout => \VGA_controls|Add1~9\);

-- Location: LCCOMB_X32_Y27_N4
\VGA_controls|v_count[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|v_count[4]~7_combout\ = (\VGA_controls|v_count[0]~1_combout\ & (\VGA_controls|Add1~8_combout\ & ((\VGA_controls|v_count[2]~0_combout\)))) # (!\VGA_controls|v_count[0]~1_combout\ & ((\VGA_controls|v_count\(4)) # 
-- ((\VGA_controls|Add1~8_combout\ & \VGA_controls|v_count[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|v_count[0]~1_combout\,
	datab => \VGA_controls|Add1~8_combout\,
	datac => \VGA_controls|v_count\(4),
	datad => \VGA_controls|v_count[2]~0_combout\,
	combout => \VGA_controls|v_count[4]~7_combout\);

-- Location: FF_X32_Y27_N5
\VGA_controls|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controls|v_count[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|v_count\(4));

-- Location: LCCOMB_X32_Y27_N30
\VGA_controls|v_count[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|v_count[5]~3_combout\ = (\VGA_controls|v_count[0]~1_combout\ & (\VGA_controls|Add1~10_combout\ & ((\VGA_controls|v_count[2]~0_combout\)))) # (!\VGA_controls|v_count[0]~1_combout\ & ((\VGA_controls|v_count\(5)) # 
-- ((\VGA_controls|Add1~10_combout\ & \VGA_controls|v_count[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|v_count[0]~1_combout\,
	datab => \VGA_controls|Add1~10_combout\,
	datac => \VGA_controls|v_count\(5),
	datad => \VGA_controls|v_count[2]~0_combout\,
	combout => \VGA_controls|v_count[5]~3_combout\);

-- Location: FF_X32_Y27_N31
\VGA_controls|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controls|v_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|v_count\(5));

-- Location: LCCOMB_X33_Y27_N2
\VGA_controls|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|LessThan7~0_combout\ = (\VGA_controls|v_count\(6) & (\VGA_controls|v_count\(5) & (\VGA_controls|v_count\(7) & \VGA_controls|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|v_count\(6),
	datab => \VGA_controls|v_count\(5),
	datac => \VGA_controls|v_count\(7),
	datad => \VGA_controls|v_count\(8),
	combout => \VGA_controls|LessThan7~0_combout\);

-- Location: LCCOMB_X32_Y27_N28
\VGA_controls|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|Add1~18_combout\ = \VGA_controls|v_count\(9) $ (\VGA_controls|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controls|v_count\(9),
	cin => \VGA_controls|Add1~17\,
	combout => \VGA_controls|Add1~18_combout\);

-- Location: LCCOMB_X32_Y27_N8
\VGA_controls|v_count[9]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|v_count[9]~2_combout\ = (\VGA_controls|v_count[0]~1_combout\ & (\VGA_controls|Add1~18_combout\ & ((\VGA_controls|v_count[2]~0_combout\)))) # (!\VGA_controls|v_count[0]~1_combout\ & ((\VGA_controls|v_count\(9)) # 
-- ((\VGA_controls|Add1~18_combout\ & \VGA_controls|v_count[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|v_count[0]~1_combout\,
	datab => \VGA_controls|Add1~18_combout\,
	datac => \VGA_controls|v_count\(9),
	datad => \VGA_controls|v_count[2]~0_combout\,
	combout => \VGA_controls|v_count[9]~2_combout\);

-- Location: FF_X32_Y27_N9
\VGA_controls|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controls|v_count[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|v_count\(9));

-- Location: LCCOMB_X33_Y27_N28
\VGA_controls|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|LessThan7~1_combout\ = (!\VGA_controls|LessThan7~0_combout\ & !\VGA_controls|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controls|LessThan7~0_combout\,
	datad => \VGA_controls|v_count\(9),
	combout => \VGA_controls|LessThan7~1_combout\);

-- Location: FF_X29_Y27_N17
\VGA_controls|pixel_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controls|v_count\(8),
	sload => VCC,
	ena => \VGA_controls|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|pixel_row\(8));

-- Location: FF_X29_Y27_N13
\VGA_controls|pixel_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controls|v_count\(6),
	sload => VCC,
	ena => \VGA_controls|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|pixel_row\(6));

-- Location: LCCOMB_X28_Y27_N20
\mouse1|cursor_row~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row~1_combout\ = (\mouse1|cursor_row~0_combout\ & (\mouse1|Equal3~0_combout\ & (!\mouse1|RECV_UART~2_combout\ & \mouse1|new_cursor_row\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row~0_combout\,
	datab => \mouse1|Equal3~0_combout\,
	datac => \mouse1|RECV_UART~2_combout\,
	datad => \mouse1|new_cursor_row\(2),
	combout => \mouse1|cursor_row~1_combout\);

-- Location: FF_X28_Y27_N21
\mouse1|cursor_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_row~1_combout\,
	ena => \mouse1|cursor_row[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_row\(2));

-- Location: LCCOMB_X28_Y27_N18
\mouse1|cursor_row~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row~9_combout\ = (\mouse1|new_cursor_row\(1) & (\mouse1|Equal3~0_combout\ & (!\mouse1|RECV_UART~2_combout\ & \mouse1|cursor_row~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_row\(1),
	datab => \mouse1|Equal3~0_combout\,
	datac => \mouse1|RECV_UART~2_combout\,
	datad => \mouse1|cursor_row~0_combout\,
	combout => \mouse1|cursor_row~9_combout\);

-- Location: FF_X28_Y27_N19
\mouse1|cursor_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_row~9_combout\,
	ena => \mouse1|cursor_row[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_row\(1));

-- Location: FF_X29_Y27_N1
\VGA_controls|pixel_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controls|v_count\(0),
	sload => VCC,
	ena => \VGA_controls|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|pixel_row\(0));

-- Location: LCCOMB_X29_Y27_N0
\cursor|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|LessThan1~1_cout\ = CARRY((!\mouse1|cursor_row\(0) & \VGA_controls|pixel_row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(0),
	datab => \VGA_controls|pixel_row\(0),
	datad => VCC,
	cout => \cursor|LessThan1~1_cout\);

-- Location: LCCOMB_X29_Y27_N2
\cursor|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|LessThan1~3_cout\ = CARRY((\VGA_controls|pixel_row\(1) & (\mouse1|cursor_row\(1) & !\cursor|LessThan1~1_cout\)) # (!\VGA_controls|pixel_row\(1) & ((\mouse1|cursor_row\(1)) # (!\cursor|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|pixel_row\(1),
	datab => \mouse1|cursor_row\(1),
	datad => VCC,
	cin => \cursor|LessThan1~1_cout\,
	cout => \cursor|LessThan1~3_cout\);

-- Location: LCCOMB_X29_Y27_N4
\cursor|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|LessThan1~5_cout\ = CARRY((\VGA_controls|pixel_row\(2) & ((!\cursor|LessThan1~3_cout\) # (!\mouse1|cursor_row\(2)))) # (!\VGA_controls|pixel_row\(2) & (!\mouse1|cursor_row\(2) & !\cursor|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|pixel_row\(2),
	datab => \mouse1|cursor_row\(2),
	datad => VCC,
	cin => \cursor|LessThan1~3_cout\,
	cout => \cursor|LessThan1~5_cout\);

-- Location: LCCOMB_X29_Y27_N6
\cursor|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|LessThan1~7_cout\ = CARRY((\VGA_controls|pixel_row\(3) & (!\mouse1|cursor_row\(3) & !\cursor|LessThan1~5_cout\)) # (!\VGA_controls|pixel_row\(3) & ((!\cursor|LessThan1~5_cout\) # (!\mouse1|cursor_row\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|pixel_row\(3),
	datab => \mouse1|cursor_row\(3),
	datad => VCC,
	cin => \cursor|LessThan1~5_cout\,
	cout => \cursor|LessThan1~7_cout\);

-- Location: LCCOMB_X29_Y27_N8
\cursor|LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|LessThan1~9_cout\ = CARRY((\VGA_controls|pixel_row\(4) & ((!\cursor|LessThan1~7_cout\) # (!\cursor|Add0~0_combout\))) # (!\VGA_controls|pixel_row\(4) & (!\cursor|Add0~0_combout\ & !\cursor|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|pixel_row\(4),
	datab => \cursor|Add0~0_combout\,
	datad => VCC,
	cin => \cursor|LessThan1~7_cout\,
	cout => \cursor|LessThan1~9_cout\);

-- Location: LCCOMB_X29_Y27_N10
\cursor|LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|LessThan1~11_cout\ = CARRY((\VGA_controls|pixel_row\(5) & (\cursor|Add0~2_combout\ & !\cursor|LessThan1~9_cout\)) # (!\VGA_controls|pixel_row\(5) & ((\cursor|Add0~2_combout\) # (!\cursor|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|pixel_row\(5),
	datab => \cursor|Add0~2_combout\,
	datad => VCC,
	cin => \cursor|LessThan1~9_cout\,
	cout => \cursor|LessThan1~11_cout\);

-- Location: LCCOMB_X29_Y27_N12
\cursor|LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|LessThan1~13_cout\ = CARRY((\cursor|Add0~4_combout\ & (\VGA_controls|pixel_row\(6) & !\cursor|LessThan1~11_cout\)) # (!\cursor|Add0~4_combout\ & ((\VGA_controls|pixel_row\(6)) # (!\cursor|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cursor|Add0~4_combout\,
	datab => \VGA_controls|pixel_row\(6),
	datad => VCC,
	cin => \cursor|LessThan1~11_cout\,
	cout => \cursor|LessThan1~13_cout\);

-- Location: LCCOMB_X29_Y27_N14
\cursor|LessThan1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|LessThan1~15_cout\ = CARRY((\VGA_controls|pixel_row\(7) & (\cursor|Add0~6_combout\ & !\cursor|LessThan1~13_cout\)) # (!\VGA_controls|pixel_row\(7) & ((\cursor|Add0~6_combout\) # (!\cursor|LessThan1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|pixel_row\(7),
	datab => \cursor|Add0~6_combout\,
	datad => VCC,
	cin => \cursor|LessThan1~13_cout\,
	cout => \cursor|LessThan1~15_cout\);

-- Location: LCCOMB_X29_Y27_N16
\cursor|LessThan1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|LessThan1~16_combout\ = (\cursor|Add0~8_combout\ & (!\cursor|LessThan1~15_cout\ & \VGA_controls|pixel_row\(8))) # (!\cursor|Add0~8_combout\ & ((\VGA_controls|pixel_row\(8)) # (!\cursor|LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cursor|Add0~8_combout\,
	datad => \VGA_controls|pixel_row\(8),
	cin => \cursor|LessThan1~15_cout\,
	combout => \cursor|LessThan1~16_combout\);

-- Location: LCCOMB_X29_Y27_N30
\VGA_controls|green_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|green_out~0_combout\ = (\VGA_controls|video_on_v~q\ & (\VGA_controls|video_on_h~q\ & ((\cursor|Add0~10_combout\) # (!\cursor|LessThan1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|video_on_v~q\,
	datab => \cursor|Add0~10_combout\,
	datac => \VGA_controls|video_on_h~q\,
	datad => \cursor|LessThan1~16_combout\,
	combout => \VGA_controls|green_out~0_combout\);

-- Location: LCCOMB_X29_Y25_N10
\cursor|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|Add1~0_combout\ = (\mouse1|cursor_column\(4) & (\mouse1|cursor_column\(3) $ (VCC))) # (!\mouse1|cursor_column\(4) & (\mouse1|cursor_column\(3) & VCC))
-- \cursor|Add1~1\ = CARRY((\mouse1|cursor_column\(4) & \mouse1|cursor_column\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(4),
	datab => \mouse1|cursor_column\(3),
	datad => VCC,
	combout => \cursor|Add1~0_combout\,
	cout => \cursor|Add1~1\);

-- Location: LCCOMB_X29_Y25_N18
\cursor|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|Add1~8_combout\ = (\mouse1|cursor_column\(8) & (\cursor|Add1~7\ $ (GND))) # (!\mouse1|cursor_column\(8) & (!\cursor|Add1~7\ & VCC))
-- \cursor|Add1~9\ = CARRY((\mouse1|cursor_column\(8) & !\cursor|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(8),
	datad => VCC,
	cin => \cursor|Add1~7\,
	combout => \cursor|Add1~8_combout\,
	cout => \cursor|Add1~9\);

-- Location: LCCOMB_X29_Y25_N20
\cursor|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|Add1~10_combout\ = \cursor|Add1~9\ $ (\mouse1|cursor_column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \mouse1|cursor_column\(9),
	cin => \cursor|Add1~9\,
	combout => \cursor|Add1~10_combout\);

-- Location: FF_X31_Y27_N31
\VGA_controls|pixel_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controls|h_count\(7),
	sload => VCC,
	ena => \VGA_controls|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|pixel_column\(7));

-- Location: FF_X31_Y27_N9
\VGA_controls|pixel_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \VGA_controls|h_count\(6),
	sload => VCC,
	ena => \VGA_controls|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|pixel_column\(6));

-- Location: LCCOMB_X30_Y25_N14
\mouse1|cursor_column~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~16_combout\ = (\mouse1|cursor_column[2]~8_combout\ & \mouse1|new_cursor_column\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|cursor_column[2]~8_combout\,
	datad => \mouse1|new_cursor_column\(1),
	combout => \mouse1|cursor_column~16_combout\);

-- Location: FF_X30_Y25_N15
\mouse1|cursor_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_column~16_combout\,
	ena => \mouse1|cursor_row[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_column\(1));

-- Location: LCCOMB_X30_Y25_N12
\mouse1|cursor_column~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~17_combout\ = (\mouse1|new_cursor_column\(0) & \mouse1|cursor_column[2]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|new_cursor_column\(0),
	datac => \mouse1|cursor_column[2]~8_combout\,
	combout => \mouse1|cursor_column~17_combout\);

-- Location: FF_X30_Y25_N13
\mouse1|cursor_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_column~17_combout\,
	ena => \mouse1|cursor_row[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_column\(0));

-- Location: LCCOMB_X30_Y27_N0
\cursor|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|LessThan3~1_cout\ = CARRY((\VGA_controls|pixel_column\(0) & !\mouse1|cursor_column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|pixel_column\(0),
	datab => \mouse1|cursor_column\(0),
	datad => VCC,
	cout => \cursor|LessThan3~1_cout\);

-- Location: LCCOMB_X30_Y27_N2
\cursor|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|LessThan3~3_cout\ = CARRY((\VGA_controls|pixel_column\(1) & (\mouse1|cursor_column\(1) & !\cursor|LessThan3~1_cout\)) # (!\VGA_controls|pixel_column\(1) & ((\mouse1|cursor_column\(1)) # (!\cursor|LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|pixel_column\(1),
	datab => \mouse1|cursor_column\(1),
	datad => VCC,
	cin => \cursor|LessThan3~1_cout\,
	cout => \cursor|LessThan3~3_cout\);

-- Location: LCCOMB_X30_Y27_N4
\cursor|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|LessThan3~5_cout\ = CARRY((\VGA_controls|pixel_column\(2) & ((!\cursor|LessThan3~3_cout\) # (!\mouse1|cursor_column\(2)))) # (!\VGA_controls|pixel_column\(2) & (!\mouse1|cursor_column\(2) & !\cursor|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|pixel_column\(2),
	datab => \mouse1|cursor_column\(2),
	datad => VCC,
	cin => \cursor|LessThan3~3_cout\,
	cout => \cursor|LessThan3~5_cout\);

-- Location: LCCOMB_X30_Y27_N6
\cursor|LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|LessThan3~7_cout\ = CARRY((\VGA_controls|pixel_column\(3) & (!\mouse1|cursor_column\(3) & !\cursor|LessThan3~5_cout\)) # (!\VGA_controls|pixel_column\(3) & ((!\cursor|LessThan3~5_cout\) # (!\mouse1|cursor_column\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|pixel_column\(3),
	datab => \mouse1|cursor_column\(3),
	datad => VCC,
	cin => \cursor|LessThan3~5_cout\,
	cout => \cursor|LessThan3~7_cout\);

-- Location: LCCOMB_X30_Y27_N8
\cursor|LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|LessThan3~9_cout\ = CARRY((\VGA_controls|pixel_column\(4) & ((!\cursor|LessThan3~7_cout\) # (!\cursor|Add1~0_combout\))) # (!\VGA_controls|pixel_column\(4) & (!\cursor|Add1~0_combout\ & !\cursor|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|pixel_column\(4),
	datab => \cursor|Add1~0_combout\,
	datad => VCC,
	cin => \cursor|LessThan3~7_cout\,
	cout => \cursor|LessThan3~9_cout\);

-- Location: LCCOMB_X30_Y27_N10
\cursor|LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|LessThan3~11_cout\ = CARRY((\cursor|Add1~2_combout\ & ((!\cursor|LessThan3~9_cout\) # (!\VGA_controls|pixel_column\(5)))) # (!\cursor|Add1~2_combout\ & (!\VGA_controls|pixel_column\(5) & !\cursor|LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cursor|Add1~2_combout\,
	datab => \VGA_controls|pixel_column\(5),
	datad => VCC,
	cin => \cursor|LessThan3~9_cout\,
	cout => \cursor|LessThan3~11_cout\);

-- Location: LCCOMB_X30_Y27_N12
\cursor|LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|LessThan3~13_cout\ = CARRY((\cursor|Add1~4_combout\ & (\VGA_controls|pixel_column\(6) & !\cursor|LessThan3~11_cout\)) # (!\cursor|Add1~4_combout\ & ((\VGA_controls|pixel_column\(6)) # (!\cursor|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cursor|Add1~4_combout\,
	datab => \VGA_controls|pixel_column\(6),
	datad => VCC,
	cin => \cursor|LessThan3~11_cout\,
	cout => \cursor|LessThan3~13_cout\);

-- Location: LCCOMB_X30_Y27_N14
\cursor|LessThan3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|LessThan3~15_cout\ = CARRY((\cursor|Add1~6_combout\ & ((!\cursor|LessThan3~13_cout\) # (!\VGA_controls|pixel_column\(7)))) # (!\cursor|Add1~6_combout\ & (!\VGA_controls|pixel_column\(7) & !\cursor|LessThan3~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cursor|Add1~6_combout\,
	datab => \VGA_controls|pixel_column\(7),
	datad => VCC,
	cin => \cursor|LessThan3~13_cout\,
	cout => \cursor|LessThan3~15_cout\);

-- Location: LCCOMB_X30_Y27_N16
\cursor|LessThan3~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|LessThan3~17_cout\ = CARRY((\VGA_controls|pixel_column\(8) & ((!\cursor|LessThan3~15_cout\) # (!\cursor|Add1~8_combout\))) # (!\VGA_controls|pixel_column\(8) & (!\cursor|Add1~8_combout\ & !\cursor|LessThan3~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|pixel_column\(8),
	datab => \cursor|Add1~8_combout\,
	datad => VCC,
	cin => \cursor|LessThan3~15_cout\,
	cout => \cursor|LessThan3~17_cout\);

-- Location: LCCOMB_X30_Y27_N18
\cursor|LessThan3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor|LessThan3~18_combout\ = (\VGA_controls|pixel_column\(9) & ((\cursor|LessThan3~17_cout\) # (!\cursor|Add1~10_combout\))) # (!\VGA_controls|pixel_column\(9) & (\cursor|LessThan3~17_cout\ & !\cursor|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_controls|pixel_column\(9),
	datad => \cursor|Add1~10_combout\,
	cin => \cursor|LessThan3~17_cout\,
	combout => \cursor|LessThan3~18_combout\);

-- Location: LCCOMB_X30_Y27_N20
\VGA_controls|green_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|green_out~1_combout\ = (!\cursor|LessThan0~16_combout\ & (!\cursor|LessThan2~18_combout\ & (\VGA_controls|green_out~0_combout\ & !\cursor|LessThan3~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cursor|LessThan0~16_combout\,
	datab => \cursor|LessThan2~18_combout\,
	datac => \VGA_controls|green_out~0_combout\,
	datad => \cursor|LessThan3~18_combout\,
	combout => \VGA_controls|green_out~1_combout\);

-- Location: FF_X30_Y27_N21
\VGA_controls|green_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controls|green_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|green_out~q\);

-- Location: LCCOMB_X33_Y27_N12
\VGA_controls|video_on_v~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|video_on_v~feeder_combout\ = \VGA_controls|LessThan7~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_controls|LessThan7~1_combout\,
	combout => \VGA_controls|video_on_v~feeder_combout\);

-- Location: FF_X33_Y27_N13
\VGA_controls|video_on_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controls|video_on_v~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|video_on_v~q\);

-- Location: LCCOMB_X33_Y27_N8
\VGA_controls|video_on\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|video_on~combout\ = (\VGA_controls|video_on_h~q\ & \VGA_controls|video_on_v~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_controls|video_on_h~q\,
	datad => \VGA_controls|video_on_v~q\,
	combout => \VGA_controls|video_on~combout\);

-- Location: FF_X33_Y27_N9
\VGA_controls|blue_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controls|video_on~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|blue_out~q\);

-- Location: LCCOMB_X31_Y27_N6
\VGA_controls|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|process_0~1_combout\ = (\VGA_controls|h_count\(7) & (\VGA_controls|h_count\(9) & !\VGA_controls|h_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|h_count\(7),
	datab => \VGA_controls|h_count\(9),
	datad => \VGA_controls|h_count\(8),
	combout => \VGA_controls|process_0~1_combout\);

-- Location: LCCOMB_X33_Y26_N4
\VGA_controls|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|process_0~4_combout\ = ((\VGA_controls|process_0~3_combout\ & (\VGA_controls|h_count\(5) & \VGA_controls|h_count\(6))) # (!\VGA_controls|process_0~3_combout\ & (!\VGA_controls|h_count\(5) & !\VGA_controls|h_count\(6)))) # 
-- (!\VGA_controls|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|process_0~3_combout\,
	datab => \VGA_controls|h_count\(5),
	datac => \VGA_controls|process_0~1_combout\,
	datad => \VGA_controls|h_count\(6),
	combout => \VGA_controls|process_0~4_combout\);

-- Location: FF_X33_Y26_N5
\VGA_controls|horiz_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controls|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|horiz_sync~q\);

-- Location: LCCOMB_X36_Y26_N0
\VGA_controls|horiz_sync_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|horiz_sync_out~feeder_combout\ = \VGA_controls|horiz_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_controls|horiz_sync~q\,
	combout => \VGA_controls|horiz_sync_out~feeder_combout\);

-- Location: FF_X36_Y26_N1
\VGA_controls|horiz_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controls|horiz_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|horiz_sync_out~q\);

-- Location: LCCOMB_X33_Y27_N20
\VGA_controls|v_count~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|v_count~10_combout\ = (\VGA_controls|Add1~2_combout\ & \VGA_controls|process_0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|Add1~2_combout\,
	datad => \VGA_controls|process_0~12_combout\,
	combout => \VGA_controls|v_count~10_combout\);

-- Location: FF_X33_Y27_N21
\VGA_controls|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controls|v_count~10_combout\,
	ena => \VGA_controls|v_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|v_count\(1));

-- Location: LCCOMB_X33_Y27_N0
\VGA_controls|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|process_0~5_combout\ = ((\VGA_controls|v_count\(1) $ (!\VGA_controls|v_count\(0))) # (!\VGA_controls|v_count\(2))) # (!\VGA_controls|v_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|v_count\(3),
	datab => \VGA_controls|v_count\(1),
	datac => \VGA_controls|v_count\(0),
	datad => \VGA_controls|v_count\(2),
	combout => \VGA_controls|process_0~5_combout\);

-- Location: LCCOMB_X33_Y27_N18
\VGA_controls|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|process_0~6_combout\ = (\VGA_controls|v_count\(9)) # ((\VGA_controls|process_0~5_combout\) # ((\VGA_controls|v_count\(4)) # (!\VGA_controls|LessThan7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_controls|v_count\(9),
	datab => \VGA_controls|process_0~5_combout\,
	datac => \VGA_controls|v_count\(4),
	datad => \VGA_controls|LessThan7~0_combout\,
	combout => \VGA_controls|process_0~6_combout\);

-- Location: FF_X33_Y27_N19
\VGA_controls|vert_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controls|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|vert_sync~q\);

-- Location: LCCOMB_X33_Y27_N22
\VGA_controls|vert_sync_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_controls|vert_sync_out~feeder_combout\ = \VGA_controls|vert_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_controls|vert_sync~q\,
	combout => \VGA_controls|vert_sync_out~feeder_combout\);

-- Location: FF_X33_Y27_N23
\VGA_controls|vert_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \VGA_controls|vert_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_controls|vert_sync_out~q\);

-- Location: LCCOMB_X27_Y26_N8
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

-- Location: LCCOMB_X28_Y25_N8
\mouse1|PACKET_CHAR1[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|PACKET_CHAR1[1]~1_combout\ = (!\mouse1|mouse_state.WAIT_OUTPUT_READY~q\ & (!\mouse1|LessThan1~0_combout\ & (\mouse1|READ_CHAR~q\ & !\mouse1|PACKET_CHAR1[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \mouse1|LessThan1~0_combout\,
	datac => \mouse1|READ_CHAR~q\,
	datad => \mouse1|PACKET_CHAR1[1]~0_combout\,
	combout => \mouse1|PACKET_CHAR1[1]~1_combout\);

-- Location: FF_X27_Y26_N9
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

-- Location: LCCOMB_X29_Y26_N16
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

-- Location: FF_X29_Y26_N17
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

-- Location: LCCOMB_X28_Y26_N4
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

-- Location: FF_X28_Y26_N5
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

-- Location: LCCOMB_X29_Y26_N2
\mouse1|left_button~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|left_button~feeder_combout\ = \mouse1|PACKET_CHAR1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse1|PACKET_CHAR1\(0),
	combout => \mouse1|left_button~feeder_combout\);

-- Location: FF_X29_Y26_N3
\mouse1|left_button\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|left_button~feeder_combout\,
	ena => \mouse1|right_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|left_button~q\);

-- Location: LCCOMB_X28_Y27_N8
\mouse1|cursor_row~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_row~4_combout\ = ((\mouse1|new_cursor_row\(4) & (!\mouse1|RECV_UART~2_combout\ & \mouse1|cursor_row~0_combout\))) # (!\mouse1|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|new_cursor_row\(4),
	datab => \mouse1|Equal3~0_combout\,
	datac => \mouse1|RECV_UART~2_combout\,
	datad => \mouse1|cursor_row~0_combout\,
	combout => \mouse1|cursor_row~4_combout\);

-- Location: FF_X28_Y27_N9
\mouse1|cursor_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_row~4_combout\,
	ena => \mouse1|cursor_row[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_row\(4));

-- Location: LCCOMB_X31_Y26_N16
\mouseY2_7seg|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseY2_7seg|Mux0~0_combout\ = (\mouse1|cursor_row\(2) & ((\mouse1|cursor_row\(5)) # (\mouse1|cursor_row\(3) $ (\mouse1|cursor_row\(4))))) # (!\mouse1|cursor_row\(2) & ((\mouse1|cursor_row\(3)) # (\mouse1|cursor_row\(5) $ (\mouse1|cursor_row\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(5),
	datab => \mouse1|cursor_row\(3),
	datac => \mouse1|cursor_row\(2),
	datad => \mouse1|cursor_row\(4),
	combout => \mouseY2_7seg|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y27_N4
\mouseY2_7seg|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseY2_7seg|Mux1~0_combout\ = (\mouse1|cursor_row\(3) & (!\mouse1|cursor_row\(5) & ((\mouse1|cursor_row\(2)) # (!\mouse1|cursor_row\(4))))) # (!\mouse1|cursor_row\(3) & (\mouse1|cursor_row\(2) & (\mouse1|cursor_row\(5) $ (!\mouse1|cursor_row\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(5),
	datab => \mouse1|cursor_row\(3),
	datac => \mouse1|cursor_row\(4),
	datad => \mouse1|cursor_row\(2),
	combout => \mouseY2_7seg|Mux1~0_combout\);

-- Location: LCCOMB_X27_Y27_N0
\mouseY2_7seg|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseY2_7seg|Mux2~0_combout\ = (\mouse1|cursor_row\(3) & (\mouse1|cursor_row\(2) & ((!\mouse1|cursor_row\(5))))) # (!\mouse1|cursor_row\(3) & ((\mouse1|cursor_row\(4) & ((!\mouse1|cursor_row\(5)))) # (!\mouse1|cursor_row\(4) & (\mouse1|cursor_row\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(2),
	datab => \mouse1|cursor_row\(4),
	datac => \mouse1|cursor_row\(5),
	datad => \mouse1|cursor_row\(3),
	combout => \mouseY2_7seg|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y27_N2
\mouseY2_7seg|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseY2_7seg|Mux3~0_combout\ = (\mouse1|cursor_row\(2) & ((\mouse1|cursor_row\(3) $ (!\mouse1|cursor_row\(4))))) # (!\mouse1|cursor_row\(2) & ((\mouse1|cursor_row\(5) & (\mouse1|cursor_row\(3) & !\mouse1|cursor_row\(4))) # (!\mouse1|cursor_row\(5) & 
-- (!\mouse1|cursor_row\(3) & \mouse1|cursor_row\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(5),
	datab => \mouse1|cursor_row\(3),
	datac => \mouse1|cursor_row\(4),
	datad => \mouse1|cursor_row\(2),
	combout => \mouseY2_7seg|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y27_N0
\mouseY2_7seg|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseY2_7seg|Mux4~0_combout\ = (\mouse1|cursor_row\(5) & (\mouse1|cursor_row\(4) & ((\mouse1|cursor_row\(3)) # (!\mouse1|cursor_row\(2))))) # (!\mouse1|cursor_row\(5) & (\mouse1|cursor_row\(3) & (!\mouse1|cursor_row\(4) & !\mouse1|cursor_row\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(5),
	datab => \mouse1|cursor_row\(3),
	datac => \mouse1|cursor_row\(4),
	datad => \mouse1|cursor_row\(2),
	combout => \mouseY2_7seg|Mux4~0_combout\);

-- Location: LCCOMB_X28_Y26_N0
\mouseY2_7seg|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseY2_7seg|Mux5~0_combout\ = (\mouse1|cursor_row\(3) & ((\mouse1|cursor_row\(2) & (\mouse1|cursor_row\(5))) # (!\mouse1|cursor_row\(2) & ((\mouse1|cursor_row\(4)))))) # (!\mouse1|cursor_row\(3) & (\mouse1|cursor_row\(4) & (\mouse1|cursor_row\(5) $ 
-- (\mouse1|cursor_row\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(3),
	datab => \mouse1|cursor_row\(5),
	datac => \mouse1|cursor_row\(4),
	datad => \mouse1|cursor_row\(2),
	combout => \mouseY2_7seg|Mux5~0_combout\);

-- Location: LCCOMB_X28_Y27_N22
\mouseY2_7seg|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseY2_7seg|Mux6~0_combout\ = (\mouse1|cursor_row\(5) & (\mouse1|cursor_row\(2) & (\mouse1|cursor_row\(3) $ (\mouse1|cursor_row\(4))))) # (!\mouse1|cursor_row\(5) & (!\mouse1|cursor_row\(3) & (\mouse1|cursor_row\(4) $ (\mouse1|cursor_row\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_row\(5),
	datab => \mouse1|cursor_row\(3),
	datac => \mouse1|cursor_row\(4),
	datad => \mouse1|cursor_row\(2),
	combout => \mouseY2_7seg|Mux6~0_combout\);

-- Location: LCCOMB_X27_Y27_N2
\mouseY1_7seg|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseY1_7seg|Mux0~0_combout\ = (\mouse1|cursor_row\(7) & (\mouse1|cursor_row\(8) & \mouse1|cursor_row\(6))) # (!\mouse1|cursor_row\(7) & (!\mouse1|cursor_row\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|cursor_row\(7),
	datac => \mouse1|cursor_row\(8),
	datad => \mouse1|cursor_row\(6),
	combout => \mouseY1_7seg|Mux0~0_combout\);

-- Location: LCCOMB_X29_Y28_N0
\mouseY1_7seg|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseY1_7seg|Mux1~0_combout\ = (\mouse1|cursor_row\(7) & ((\mouse1|cursor_row\(6)) # (!\mouse1|cursor_row\(8)))) # (!\mouse1|cursor_row\(7) & (\mouse1|cursor_row\(6) & !\mouse1|cursor_row\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|cursor_row\(7),
	datac => \mouse1|cursor_row\(6),
	datad => \mouse1|cursor_row\(8),
	combout => \mouseY1_7seg|Mux1~0_combout\);

-- Location: LCCOMB_X27_Y27_N22
\mouseY1_7seg|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseY1_7seg|Mux2~0_combout\ = (\mouse1|cursor_row\(6)) # ((!\mouse1|cursor_row\(7) & \mouse1|cursor_row\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|cursor_row\(7),
	datac => \mouse1|cursor_row\(8),
	datad => \mouse1|cursor_row\(6),
	combout => \mouseY1_7seg|Mux2~0_combout\);

-- Location: LCCOMB_X27_Y27_N28
\mouseY1_7seg|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseY1_7seg|Mux3~0_combout\ = (\mouse1|cursor_row\(7) & (\mouse1|cursor_row\(8) & \mouse1|cursor_row\(6))) # (!\mouse1|cursor_row\(7) & (\mouse1|cursor_row\(8) $ (\mouse1|cursor_row\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|cursor_row\(7),
	datac => \mouse1|cursor_row\(8),
	datad => \mouse1|cursor_row\(6),
	combout => \mouseY1_7seg|Mux3~0_combout\);

-- Location: LCCOMB_X27_Y27_N26
\mouseY1_7seg|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseY1_7seg|Mux4~0_combout\ = (\mouse1|cursor_row\(7) & (!\mouse1|cursor_row\(8) & !\mouse1|cursor_row\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|cursor_row\(7),
	datac => \mouse1|cursor_row\(8),
	datad => \mouse1|cursor_row\(6),
	combout => \mouseY1_7seg|Mux4~0_combout\);

-- Location: LCCOMB_X27_Y27_N24
\mouseY1_7seg|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseY1_7seg|Mux5~0_combout\ = (\mouse1|cursor_row\(7) $ (!\mouse1|cursor_row\(6))) # (!\mouse1|cursor_row\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|cursor_row\(7),
	datac => \mouse1|cursor_row\(8),
	datad => \mouse1|cursor_row\(6),
	combout => \mouseY1_7seg|Mux5~0_combout\);

-- Location: LCCOMB_X27_Y27_N30
\mouseY1_7seg|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseY1_7seg|Mux6~0_combout\ = (!\mouse1|cursor_row\(7) & (\mouse1|cursor_row\(8) $ (\mouse1|cursor_row\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|cursor_row\(7),
	datac => \mouse1|cursor_row\(8),
	datad => \mouse1|cursor_row\(6),
	combout => \mouseY1_7seg|Mux6~0_combout\);

-- Location: FF_X31_Y25_N23
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
	ena => \mouse1|new_cursor_row[9]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|new_cursor_column\(5));

-- Location: LCCOMB_X30_Y25_N6
\mouse1|cursor_column~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse1|cursor_column~12_combout\ = (\mouse1|new_cursor_column\(5) & \mouse1|cursor_column[2]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse1|new_cursor_column\(5),
	datac => \mouse1|cursor_column[2]~8_combout\,
	combout => \mouse1|cursor_column~12_combout\);

-- Location: FF_X30_Y25_N7
\mouse1|cursor_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mouse1|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \mouse1|cursor_column~12_combout\,
	ena => \mouse1|cursor_row[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse1|cursor_column\(5));

-- Location: LCCOMB_X31_Y26_N14
\mouseX2_7seg|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseX2_7seg|Mux0~0_combout\ = (\mouse1|cursor_column\(2) & ((\mouse1|cursor_column\(5)) # (\mouse1|cursor_column\(4) $ (\mouse1|cursor_column\(3))))) # (!\mouse1|cursor_column\(2) & ((\mouse1|cursor_column\(3)) # (\mouse1|cursor_column\(5) $ 
-- (\mouse1|cursor_column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(5),
	datab => \mouse1|cursor_column\(4),
	datac => \mouse1|cursor_column\(2),
	datad => \mouse1|cursor_column\(3),
	combout => \mouseX2_7seg|Mux0~0_combout\);

-- Location: LCCOMB_X29_Y26_N24
\mouseX2_7seg|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseX2_7seg|Mux1~0_combout\ = (\mouse1|cursor_column\(2) & (\mouse1|cursor_column\(5) $ (((\mouse1|cursor_column\(3)) # (!\mouse1|cursor_column\(4)))))) # (!\mouse1|cursor_column\(2) & (!\mouse1|cursor_column\(5) & (!\mouse1|cursor_column\(4) & 
-- \mouse1|cursor_column\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(5),
	datab => \mouse1|cursor_column\(2),
	datac => \mouse1|cursor_column\(4),
	datad => \mouse1|cursor_column\(3),
	combout => \mouseX2_7seg|Mux1~0_combout\);

-- Location: LCCOMB_X29_Y26_N30
\mouseX2_7seg|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseX2_7seg|Mux2~0_combout\ = (\mouse1|cursor_column\(3) & (!\mouse1|cursor_column\(5) & (\mouse1|cursor_column\(2)))) # (!\mouse1|cursor_column\(3) & ((\mouse1|cursor_column\(4) & (!\mouse1|cursor_column\(5))) # (!\mouse1|cursor_column\(4) & 
-- ((\mouse1|cursor_column\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(5),
	datab => \mouse1|cursor_column\(2),
	datac => \mouse1|cursor_column\(4),
	datad => \mouse1|cursor_column\(3),
	combout => \mouseX2_7seg|Mux2~0_combout\);

-- Location: LCCOMB_X31_Y26_N8
\mouseX2_7seg|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseX2_7seg|Mux3~0_combout\ = (\mouse1|cursor_column\(2) & ((\mouse1|cursor_column\(4) $ (!\mouse1|cursor_column\(3))))) # (!\mouse1|cursor_column\(2) & ((\mouse1|cursor_column\(5) & (!\mouse1|cursor_column\(4) & \mouse1|cursor_column\(3))) # 
-- (!\mouse1|cursor_column\(5) & (\mouse1|cursor_column\(4) & !\mouse1|cursor_column\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(5),
	datab => \mouse1|cursor_column\(4),
	datac => \mouse1|cursor_column\(2),
	datad => \mouse1|cursor_column\(3),
	combout => \mouseX2_7seg|Mux3~0_combout\);

-- Location: LCCOMB_X29_Y26_N0
\mouseX2_7seg|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseX2_7seg|Mux4~0_combout\ = (\mouse1|cursor_column\(5) & (\mouse1|cursor_column\(4) & ((\mouse1|cursor_column\(3)) # (!\mouse1|cursor_column\(2))))) # (!\mouse1|cursor_column\(5) & (!\mouse1|cursor_column\(2) & (!\mouse1|cursor_column\(4) & 
-- \mouse1|cursor_column\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(5),
	datab => \mouse1|cursor_column\(2),
	datac => \mouse1|cursor_column\(4),
	datad => \mouse1|cursor_column\(3),
	combout => \mouseX2_7seg|Mux4~0_combout\);

-- Location: LCCOMB_X29_Y26_N6
\mouseX2_7seg|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseX2_7seg|Mux5~0_combout\ = (\mouse1|cursor_column\(5) & ((\mouse1|cursor_column\(2) & ((\mouse1|cursor_column\(3)))) # (!\mouse1|cursor_column\(2) & (\mouse1|cursor_column\(4))))) # (!\mouse1|cursor_column\(5) & (\mouse1|cursor_column\(4) & 
-- (\mouse1|cursor_column\(2) $ (\mouse1|cursor_column\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(5),
	datab => \mouse1|cursor_column\(2),
	datac => \mouse1|cursor_column\(4),
	datad => \mouse1|cursor_column\(3),
	combout => \mouseX2_7seg|Mux5~0_combout\);

-- Location: LCCOMB_X29_Y26_N20
\mouseX2_7seg|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseX2_7seg|Mux6~0_combout\ = (\mouse1|cursor_column\(5) & (\mouse1|cursor_column\(2) & (\mouse1|cursor_column\(4) $ (\mouse1|cursor_column\(3))))) # (!\mouse1|cursor_column\(5) & (!\mouse1|cursor_column\(3) & (\mouse1|cursor_column\(2) $ 
-- (\mouse1|cursor_column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(5),
	datab => \mouse1|cursor_column\(2),
	datac => \mouse1|cursor_column\(4),
	datad => \mouse1|cursor_column\(3),
	combout => \mouseX2_7seg|Mux6~0_combout\);

-- Location: LCCOMB_X29_Y25_N28
\mouseX1_7seg|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseX1_7seg|Mux0~0_combout\ = (\mouse1|cursor_column\(6) & ((\mouse1|cursor_column\(9)) # (\mouse1|cursor_column\(7) $ (\mouse1|cursor_column\(8))))) # (!\mouse1|cursor_column\(6) & ((\mouse1|cursor_column\(7)) # (\mouse1|cursor_column\(8) $ 
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
	combout => \mouseX1_7seg|Mux0~0_combout\);

-- Location: LCCOMB_X29_Y25_N30
\mouseX1_7seg|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseX1_7seg|Mux1~0_combout\ = (\mouse1|cursor_column\(7) & (!\mouse1|cursor_column\(9) & ((\mouse1|cursor_column\(6)) # (!\mouse1|cursor_column\(8))))) # (!\mouse1|cursor_column\(7) & (\mouse1|cursor_column\(6) & (\mouse1|cursor_column\(8) $ 
-- (!\mouse1|cursor_column\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(7),
	datab => \mouse1|cursor_column\(6),
	datac => \mouse1|cursor_column\(8),
	datad => \mouse1|cursor_column\(9),
	combout => \mouseX1_7seg|Mux1~0_combout\);

-- Location: LCCOMB_X30_Y25_N16
\mouseX1_7seg|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseX1_7seg|Mux2~0_combout\ = (\mouse1|cursor_column\(7) & (!\mouse1|cursor_column\(9) & (\mouse1|cursor_column\(6)))) # (!\mouse1|cursor_column\(7) & ((\mouse1|cursor_column\(8) & (!\mouse1|cursor_column\(9))) # (!\mouse1|cursor_column\(8) & 
-- ((\mouse1|cursor_column\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(9),
	datab => \mouse1|cursor_column\(6),
	datac => \mouse1|cursor_column\(7),
	datad => \mouse1|cursor_column\(8),
	combout => \mouseX1_7seg|Mux2~0_combout\);

-- Location: LCCOMB_X29_Y25_N4
\mouseX1_7seg|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseX1_7seg|Mux3~0_combout\ = (\mouse1|cursor_column\(6) & (\mouse1|cursor_column\(7) $ ((!\mouse1|cursor_column\(8))))) # (!\mouse1|cursor_column\(6) & ((\mouse1|cursor_column\(7) & (!\mouse1|cursor_column\(8) & \mouse1|cursor_column\(9))) # 
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
	combout => \mouseX1_7seg|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y26_N26
\mouseX1_7seg|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseX1_7seg|Mux4~0_combout\ = (\mouse1|cursor_column\(8) & (\mouse1|cursor_column\(9) & ((\mouse1|cursor_column\(7)) # (!\mouse1|cursor_column\(6))))) # (!\mouse1|cursor_column\(8) & (\mouse1|cursor_column\(7) & (!\mouse1|cursor_column\(6) & 
-- !\mouse1|cursor_column\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(7),
	datab => \mouse1|cursor_column\(6),
	datac => \mouse1|cursor_column\(8),
	datad => \mouse1|cursor_column\(9),
	combout => \mouseX1_7seg|Mux4~0_combout\);

-- Location: LCCOMB_X29_Y25_N2
\mouseX1_7seg|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseX1_7seg|Mux5~0_combout\ = (\mouse1|cursor_column\(7) & ((\mouse1|cursor_column\(6) & ((\mouse1|cursor_column\(9)))) # (!\mouse1|cursor_column\(6) & (\mouse1|cursor_column\(8))))) # (!\mouse1|cursor_column\(7) & (\mouse1|cursor_column\(8) & 
-- (\mouse1|cursor_column\(6) $ (\mouse1|cursor_column\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(7),
	datab => \mouse1|cursor_column\(6),
	datac => \mouse1|cursor_column\(8),
	datad => \mouse1|cursor_column\(9),
	combout => \mouseX1_7seg|Mux5~0_combout\);

-- Location: LCCOMB_X31_Y27_N0
\mouseX1_7seg|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouseX1_7seg|Mux6~0_combout\ = (\mouse1|cursor_column\(9) & (\mouse1|cursor_column\(6) & (\mouse1|cursor_column\(8) $ (\mouse1|cursor_column\(7))))) # (!\mouse1|cursor_column\(9) & (!\mouse1|cursor_column\(7) & (\mouse1|cursor_column\(6) $ 
-- (\mouse1|cursor_column\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse1|cursor_column\(6),
	datab => \mouse1|cursor_column\(9),
	datac => \mouse1|cursor_column\(8),
	datad => \mouse1|cursor_column\(7),
	combout => \mouseX1_7seg|Mux6~0_combout\);
END structure;


