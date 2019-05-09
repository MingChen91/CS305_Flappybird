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

-- DATE "05/09/2019 15:56:41"

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

ENTITY 	ball_bounce IS
    PORT (
	red_out : OUT std_logic;
	bt1 : IN std_logic;
	bt2 : IN std_logic;
	clk : IN std_logic;
	green_out : OUT std_logic;
	blue_out : OUT std_logic;
	horiz_sync_out : OUT std_logic;
	vert_sync_out : OUT std_logic;
	r1 : OUT std_logic;
	r2 : OUT std_logic;
	r3 : OUT std_logic;
	g1 : OUT std_logic;
	g2 : OUT std_logic;
	g3 : OUT std_logic;
	b1 : OUT std_logic;
	b2 : OUT std_logic;
	b3 : OUT std_logic
	);
END ball_bounce;

-- Design Ports Information
-- red_out	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt1	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt2	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_out	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue_out	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horiz_sync_out	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vert_sync_out	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r3	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g1	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g2	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g3	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b3	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ball_bounce IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_red_out : std_logic;
SIGNAL ww_bt1 : std_logic;
SIGNAL ww_bt2 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_green_out : std_logic;
SIGNAL ww_blue_out : std_logic;
SIGNAL ww_horiz_sync_out : std_logic;
SIGNAL ww_vert_sync_out : std_logic;
SIGNAL ww_r1 : std_logic;
SIGNAL ww_r2 : std_logic;
SIGNAL ww_r3 : std_logic;
SIGNAL ww_g1 : std_logic;
SIGNAL ww_g2 : std_logic;
SIGNAL ww_g3 : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL ww_b2 : std_logic;
SIGNAL ww_b3 : std_logic;
SIGNAL \inst1|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|SYNC|vert_sync_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Add1~6_combout\ : std_logic;
SIGNAL \inst|Add3~6_combout\ : std_logic;
SIGNAL \inst|Add3~9\ : std_logic;
SIGNAL \inst|Add3~10_combout\ : std_logic;
SIGNAL \inst|Add2~1\ : std_logic;
SIGNAL \inst|Add2~0_combout\ : std_logic;
SIGNAL \inst|Add2~3\ : std_logic;
SIGNAL \inst|Add2~2_combout\ : std_logic;
SIGNAL \inst|Add2~5\ : std_logic;
SIGNAL \inst|Add2~4_combout\ : std_logic;
SIGNAL \inst|Add2~7\ : std_logic;
SIGNAL \inst|Add2~6_combout\ : std_logic;
SIGNAL \inst|Add2~9\ : std_logic;
SIGNAL \inst|Add2~8_combout\ : std_logic;
SIGNAL \inst|Add2~10_combout\ : std_logic;
SIGNAL \inst|LessThan2~1_cout\ : std_logic;
SIGNAL \inst|LessThan2~3_cout\ : std_logic;
SIGNAL \inst|LessThan2~5_cout\ : std_logic;
SIGNAL \inst|LessThan2~7_cout\ : std_logic;
SIGNAL \inst|LessThan2~9_cout\ : std_logic;
SIGNAL \inst|LessThan2~11_cout\ : std_logic;
SIGNAL \inst|LessThan2~13_cout\ : std_logic;
SIGNAL \inst|LessThan2~15_cout\ : std_logic;
SIGNAL \inst|LessThan2~16_combout\ : std_logic;
SIGNAL \inst|Ball_X_pos[3]~15_combout\ : std_logic;
SIGNAL \inst|Ball_Y_pos[3]~13\ : std_logic;
SIGNAL \inst|Ball_Y_pos[4]~15\ : std_logic;
SIGNAL \inst|Ball_Y_pos[4]~14_combout\ : std_logic;
SIGNAL \inst|Ball_Y_pos[5]~17\ : std_logic;
SIGNAL \inst|Ball_Y_pos[5]~16_combout\ : std_logic;
SIGNAL \inst|Ball_Y_pos[6]~19\ : std_logic;
SIGNAL \inst|Ball_Y_pos[6]~18_combout\ : std_logic;
SIGNAL \inst|Ball_Y_pos[7]~21\ : std_logic;
SIGNAL \inst|Ball_Y_pos[7]~20_combout\ : std_logic;
SIGNAL \inst|Ball_Y_pos[8]~23\ : std_logic;
SIGNAL \inst|Ball_Y_pos[8]~22_combout\ : std_logic;
SIGNAL \inst|Ball_Y_pos[9]~24_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~8_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~4_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~6_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~10_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~12_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~14_combout\ : std_logic;
SIGNAL \inst|SYNC|video_on_v~q\ : std_logic;
SIGNAL \inst|SYNC|green_out~0_combout\ : std_logic;
SIGNAL \inst|SYNC|green_out~1_combout\ : std_logic;
SIGNAL \inst|SYNC|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Ball_Y_motion[2]~0_combout\ : std_logic;
SIGNAL \inst|Ball_Y_motion[2]~1_combout\ : std_logic;
SIGNAL \inst|Ball_Y_motion[2]~2_combout\ : std_logic;
SIGNAL \inst|Ball_Y_motion[2]~3_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~10_combout\ : std_logic;
SIGNAL \bt1~input_o\ : std_logic;
SIGNAL \bt2~input_o\ : std_logic;
SIGNAL \inst|SYNC|vert_sync_out~clkctrl_outclk\ : std_logic;
SIGNAL \inst|SYNC|pixel_column[5]~feeder_combout\ : std_logic;
SIGNAL \inst|SYNC|pixel_row[1]~feeder_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst|SYNC|Add0~0_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~1\ : std_logic;
SIGNAL \inst|SYNC|Add0~2_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~3\ : std_logic;
SIGNAL \inst|SYNC|Add0~5\ : std_logic;
SIGNAL \inst|SYNC|Add0~6_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~7\ : std_logic;
SIGNAL \inst|SYNC|Add0~9\ : std_logic;
SIGNAL \inst|SYNC|Add0~10_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~4_combout\ : std_logic;
SIGNAL \inst|SYNC|h_count[2]~feeder_combout\ : std_logic;
SIGNAL \inst|SYNC|Equal0~1_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~12_combout\ : std_logic;
SIGNAL \inst|SYNC|Equal0~2_combout\ : std_logic;
SIGNAL \inst|SYNC|h_count~2_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~11\ : std_logic;
SIGNAL \inst|SYNC|Add0~13\ : std_logic;
SIGNAL \inst|SYNC|Add0~15\ : std_logic;
SIGNAL \inst|SYNC|Add0~16_combout\ : std_logic;
SIGNAL \inst|SYNC|h_count~1_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~17\ : std_logic;
SIGNAL \inst|SYNC|Add0~18_combout\ : std_logic;
SIGNAL \inst|SYNC|h_count~0_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~14_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~0_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Ball_X_pos[1]~10_cout\ : std_logic;
SIGNAL \inst|Ball_X_pos[1]~11_combout\ : std_logic;
SIGNAL \inst|Ball_X_pos[1]~12\ : std_logic;
SIGNAL \inst|Ball_X_pos[2]~13_combout\ : std_logic;
SIGNAL \inst|Ball_X_pos[2]~14\ : std_logic;
SIGNAL \inst|Ball_X_pos[3]~16\ : std_logic;
SIGNAL \inst|Ball_X_pos[4]~18\ : std_logic;
SIGNAL \inst|Ball_X_pos[5]~19_combout\ : std_logic;
SIGNAL \inst|Ball_X_pos[5]~20\ : std_logic;
SIGNAL \inst|Ball_X_pos[6]~21_combout\ : std_logic;
SIGNAL \inst|Ball_X_pos[6]~22\ : std_logic;
SIGNAL \inst|Ball_X_pos[7]~24\ : std_logic;
SIGNAL \inst|Ball_X_pos[8]~25_combout\ : std_logic;
SIGNAL \inst|Ball_X_pos[8]~26\ : std_logic;
SIGNAL \inst|Ball_X_pos[9]~27_combout\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_cout\ : std_logic;
SIGNAL \inst|LessThan0~3_cout\ : std_logic;
SIGNAL \inst|LessThan0~5_cout\ : std_logic;
SIGNAL \inst|LessThan0~7_cout\ : std_logic;
SIGNAL \inst|LessThan0~9_cout\ : std_logic;
SIGNAL \inst|LessThan0~11_cout\ : std_logic;
SIGNAL \inst|LessThan0~13_cout\ : std_logic;
SIGNAL \inst|LessThan0~15_cout\ : std_logic;
SIGNAL \inst|LessThan0~17_cout\ : std_logic;
SIGNAL \inst|LessThan0~18_combout\ : std_logic;
SIGNAL \inst|Ball_Y_pos[2]~9_cout\ : std_logic;
SIGNAL \inst|Ball_Y_pos[2]~10_combout\ : std_logic;
SIGNAL \inst|Ball_Y_pos[2]~11\ : std_logic;
SIGNAL \inst|Ball_Y_pos[3]~12_combout\ : std_logic;
SIGNAL \inst|Add3~1\ : std_logic;
SIGNAL \inst|Add3~3\ : std_logic;
SIGNAL \inst|Add3~5\ : std_logic;
SIGNAL \inst|Add3~7\ : std_logic;
SIGNAL \inst|Add3~8_combout\ : std_logic;
SIGNAL \inst|SYNC|Equal1~0_combout\ : std_logic;
SIGNAL \inst|SYNC|Equal1~1_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[6]~5_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[5]~4_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~1\ : std_logic;
SIGNAL \inst|SYNC|Add1~2_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~9_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~11_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count~10_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~3\ : std_logic;
SIGNAL \inst|SYNC|Add1~5\ : std_logic;
SIGNAL \inst|SYNC|Add1~7\ : std_logic;
SIGNAL \inst|SYNC|Add1~8_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[4]~7_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~9\ : std_logic;
SIGNAL \inst|SYNC|Add1~11\ : std_logic;
SIGNAL \inst|SYNC|Add1~13\ : std_logic;
SIGNAL \inst|SYNC|Add1~15\ : std_logic;
SIGNAL \inst|SYNC|Add1~17\ : std_logic;
SIGNAL \inst|SYNC|Add1~18_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[9]~3_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~12_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[4]~1_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[3]~8_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[2]~9_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~7_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~16_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[8]~2_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~8_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[2]~0_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[7]~6_combout\ : std_logic;
SIGNAL \inst|SYNC|LessThan7~0_combout\ : std_logic;
SIGNAL \inst|SYNC|LessThan7~1_combout\ : std_logic;
SIGNAL \inst|Add3~4_combout\ : std_logic;
SIGNAL \inst|Add3~2_combout\ : std_logic;
SIGNAL \inst|Add3~0_combout\ : std_logic;
SIGNAL \inst|Ball_X_pos[0]~29_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~0_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count~11_combout\ : std_logic;
SIGNAL \inst|LessThan3~1_cout\ : std_logic;
SIGNAL \inst|LessThan3~3_cout\ : std_logic;
SIGNAL \inst|LessThan3~5_cout\ : std_logic;
SIGNAL \inst|LessThan3~7_cout\ : std_logic;
SIGNAL \inst|LessThan3~9_cout\ : std_logic;
SIGNAL \inst|LessThan3~11_cout\ : std_logic;
SIGNAL \inst|LessThan3~13_cout\ : std_logic;
SIGNAL \inst|LessThan3~15_cout\ : std_logic;
SIGNAL \inst|LessThan3~16_combout\ : std_logic;
SIGNAL \inst|Ball_X_pos[7]~23_combout\ : std_logic;
SIGNAL \inst|Ball_X_pos[4]~17_combout\ : std_logic;
SIGNAL \inst|Add1~1\ : std_logic;
SIGNAL \inst|Add1~3\ : std_logic;
SIGNAL \inst|Add1~5\ : std_logic;
SIGNAL \inst|Add1~7\ : std_logic;
SIGNAL \inst|Add1~9\ : std_logic;
SIGNAL \inst|Add1~10_combout\ : std_logic;
SIGNAL \inst|Add1~8_combout\ : std_logic;
SIGNAL \inst|Add1~4_combout\ : std_logic;
SIGNAL \inst|Add1~2_combout\ : std_logic;
SIGNAL \inst|Add1~0_combout\ : std_logic;
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
SIGNAL \inst|SYNC|green_out~2_combout\ : std_logic;
SIGNAL \inst|SYNC|green_out~q\ : std_logic;
SIGNAL \inst|SYNC|video_on_h~q\ : std_logic;
SIGNAL \inst|SYNC|video_on~combout\ : std_logic;
SIGNAL \inst|SYNC|blue_out~q\ : std_logic;
SIGNAL \inst|SYNC|process_0~2_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~3_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~1_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~4_combout\ : std_logic;
SIGNAL \inst|SYNC|horiz_sync~q\ : std_logic;
SIGNAL \inst|SYNC|horiz_sync_out~q\ : std_logic;
SIGNAL \inst|SYNC|process_0~5_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~6_combout\ : std_logic;
SIGNAL \inst|SYNC|vert_sync~q\ : std_logic;
SIGNAL \inst|SYNC|vert_sync_out~q\ : std_logic;
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|SYNC|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|SYNC|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|SYNC|pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|Ball_Y_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|Ball_X_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|SYNC|pixel_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|Ball_Y_motion\ : std_logic_vector(9 DOWNTO 0);

BEGIN

red_out <= ww_red_out;
ww_bt1 <= bt1;
ww_bt2 <= bt2;
ww_clk <= clk;
green_out <= ww_green_out;
blue_out <= ww_blue_out;
horiz_sync_out <= ww_horiz_sync_out;
vert_sync_out <= ww_vert_sync_out;
r1 <= ww_r1;
r2 <= ww_r2;
r3 <= ww_r3;
g1 <= ww_g1;
g2 <= ww_g2;
g3 <= ww_g3;
b1 <= ww_b1;
b2 <= ww_b2;
b3 <= ww_b3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\inst1|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst1|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst1|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst1|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst1|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst|SYNC|vert_sync_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|SYNC|vert_sync_out~q\);

\inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|altpll_component|auto_generated|wire_pll1_clk\(0));

-- Location: LCCOMB_X37_Y14_N22
\inst|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|SYNC|pixel_column\(5) & (!\inst|Add0~1\)) # (!\inst|SYNC|pixel_column\(5) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|SYNC|pixel_column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(5),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X37_Y14_N24
\inst|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|SYNC|pixel_column\(6) & (\inst|Add0~3\ $ (GND))) # (!\inst|SYNC|pixel_column\(6) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|SYNC|pixel_column\(6) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(6),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X37_Y14_N28
\inst|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|SYNC|pixel_column\(8) & (\inst|Add0~7\ $ (GND))) # (!\inst|SYNC|pixel_column\(8) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|SYNC|pixel_column\(8) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(8),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: FF_X36_Y14_N7
\inst|Ball_X_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_pos[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_pos\(3));

-- Location: LCCOMB_X36_Y14_N26
\inst|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~6_combout\ = (\inst|Ball_X_pos\(7) & (!\inst|Add1~5\)) # (!\inst|Ball_X_pos\(7) & ((\inst|Add1~5\) # (GND)))
-- \inst|Add1~7\ = CARRY((!\inst|Add1~5\) # (!\inst|Ball_X_pos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_X_pos\(7),
	datad => VCC,
	cin => \inst|Add1~5\,
	combout => \inst|Add1~6_combout\,
	cout => \inst|Add1~7\);

-- Location: FF_X35_Y14_N15
\inst|Ball_Y_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_pos[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(8));

-- Location: FF_X35_Y14_N13
\inst|Ball_Y_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_pos[7]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(7));

-- Location: FF_X35_Y14_N11
\inst|Ball_Y_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_pos[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(6));

-- Location: FF_X35_Y14_N9
\inst|Ball_Y_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_pos[5]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(5));

-- Location: FF_X35_Y14_N7
\inst|Ball_Y_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_pos[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(4));

-- Location: LCCOMB_X38_Y14_N6
\inst|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~6_combout\ = (\inst|Ball_Y_pos\(7) & (!\inst|Add3~5\)) # (!\inst|Ball_Y_pos\(7) & ((\inst|Add3~5\) # (GND)))
-- \inst|Add3~7\ = CARRY((!\inst|Add3~5\) # (!\inst|Ball_Y_pos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(7),
	datad => VCC,
	cin => \inst|Add3~5\,
	combout => \inst|Add3~6_combout\,
	cout => \inst|Add3~7\);

-- Location: LCCOMB_X38_Y14_N8
\inst|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~8_combout\ = (\inst|Ball_Y_pos\(8) & (\inst|Add3~7\ $ (GND))) # (!\inst|Ball_Y_pos\(8) & (!\inst|Add3~7\ & VCC))
-- \inst|Add3~9\ = CARRY((\inst|Ball_Y_pos\(8) & !\inst|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(8),
	datad => VCC,
	cin => \inst|Add3~7\,
	combout => \inst|Add3~8_combout\,
	cout => \inst|Add3~9\);

-- Location: FF_X35_Y14_N17
\inst|Ball_Y_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_pos[9]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(9));

-- Location: LCCOMB_X38_Y14_N10
\inst|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~10_combout\ = \inst|Add3~9\ $ (\inst|Ball_Y_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|Ball_Y_pos\(9),
	cin => \inst|Add3~9\,
	combout => \inst|Add3~10_combout\);

-- Location: LCCOMB_X39_Y15_N12
\inst|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~0_combout\ = (\inst|SYNC|pixel_row\(3) & (\inst|SYNC|pixel_row\(4) $ (VCC))) # (!\inst|SYNC|pixel_row\(3) & (\inst|SYNC|pixel_row\(4) & VCC))
-- \inst|Add2~1\ = CARRY((\inst|SYNC|pixel_row\(3) & \inst|SYNC|pixel_row\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(3),
	datab => \inst|SYNC|pixel_row\(4),
	datad => VCC,
	combout => \inst|Add2~0_combout\,
	cout => \inst|Add2~1\);

-- Location: LCCOMB_X39_Y15_N14
\inst|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~2_combout\ = (\inst|SYNC|pixel_row\(5) & (!\inst|Add2~1\)) # (!\inst|SYNC|pixel_row\(5) & ((\inst|Add2~1\) # (GND)))
-- \inst|Add2~3\ = CARRY((!\inst|Add2~1\) # (!\inst|SYNC|pixel_row\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(5),
	datad => VCC,
	cin => \inst|Add2~1\,
	combout => \inst|Add2~2_combout\,
	cout => \inst|Add2~3\);

-- Location: LCCOMB_X39_Y15_N16
\inst|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~4_combout\ = (\inst|SYNC|pixel_row\(6) & (\inst|Add2~3\ $ (GND))) # (!\inst|SYNC|pixel_row\(6) & (!\inst|Add2~3\ & VCC))
-- \inst|Add2~5\ = CARRY((\inst|SYNC|pixel_row\(6) & !\inst|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_row\(6),
	datad => VCC,
	cin => \inst|Add2~3\,
	combout => \inst|Add2~4_combout\,
	cout => \inst|Add2~5\);

-- Location: LCCOMB_X39_Y15_N18
\inst|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~6_combout\ = (\inst|SYNC|pixel_row\(7) & (!\inst|Add2~5\)) # (!\inst|SYNC|pixel_row\(7) & ((\inst|Add2~5\) # (GND)))
-- \inst|Add2~7\ = CARRY((!\inst|Add2~5\) # (!\inst|SYNC|pixel_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_row\(7),
	datad => VCC,
	cin => \inst|Add2~5\,
	combout => \inst|Add2~6_combout\,
	cout => \inst|Add2~7\);

-- Location: LCCOMB_X39_Y15_N20
\inst|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~8_combout\ = (\inst|SYNC|pixel_row\(8) & (\inst|Add2~7\ $ (GND))) # (!\inst|SYNC|pixel_row\(8) & (!\inst|Add2~7\ & VCC))
-- \inst|Add2~9\ = CARRY((\inst|SYNC|pixel_row\(8) & !\inst|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_row\(8),
	datad => VCC,
	cin => \inst|Add2~7\,
	combout => \inst|Add2~8_combout\,
	cout => \inst|Add2~9\);

-- Location: LCCOMB_X39_Y15_N22
\inst|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~10_combout\ = \inst|Add2~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add2~9\,
	combout => \inst|Add2~10_combout\);

-- Location: LCCOMB_X39_Y14_N12
\inst|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~1_cout\ = CARRY((!\inst|SYNC|pixel_row\(1) & \inst|Ball_X_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(1),
	datab => \inst|Ball_X_pos\(0),
	datad => VCC,
	cout => \inst|LessThan2~1_cout\);

-- Location: LCCOMB_X39_Y14_N14
\inst|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~3_cout\ = CARRY((\inst|Ball_Y_pos\(2) & (\inst|SYNC|pixel_row\(2) & !\inst|LessThan2~1_cout\)) # (!\inst|Ball_Y_pos\(2) & ((\inst|SYNC|pixel_row\(2)) # (!\inst|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(2),
	datab => \inst|SYNC|pixel_row\(2),
	datad => VCC,
	cin => \inst|LessThan2~1_cout\,
	cout => \inst|LessThan2~3_cout\);

-- Location: LCCOMB_X39_Y14_N16
\inst|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~5_cout\ = CARRY((\inst|SYNC|pixel_row\(3) & ((\inst|Ball_Y_pos\(3)) # (!\inst|LessThan2~3_cout\))) # (!\inst|SYNC|pixel_row\(3) & (\inst|Ball_Y_pos\(3) & !\inst|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(3),
	datab => \inst|Ball_Y_pos\(3),
	datad => VCC,
	cin => \inst|LessThan2~3_cout\,
	cout => \inst|LessThan2~5_cout\);

-- Location: LCCOMB_X39_Y14_N18
\inst|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~7_cout\ = CARRY((\inst|Ball_Y_pos\(4) & (\inst|Add2~0_combout\ & !\inst|LessThan2~5_cout\)) # (!\inst|Ball_Y_pos\(4) & ((\inst|Add2~0_combout\) # (!\inst|LessThan2~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(4),
	datab => \inst|Add2~0_combout\,
	datad => VCC,
	cin => \inst|LessThan2~5_cout\,
	cout => \inst|LessThan2~7_cout\);

-- Location: LCCOMB_X39_Y14_N20
\inst|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~9_cout\ = CARRY((\inst|Ball_Y_pos\(5) & ((!\inst|LessThan2~7_cout\) # (!\inst|Add2~2_combout\))) # (!\inst|Ball_Y_pos\(5) & (!\inst|Add2~2_combout\ & !\inst|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(5),
	datab => \inst|Add2~2_combout\,
	datad => VCC,
	cin => \inst|LessThan2~7_cout\,
	cout => \inst|LessThan2~9_cout\);

-- Location: LCCOMB_X39_Y14_N22
\inst|LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~11_cout\ = CARRY((\inst|Ball_Y_pos\(6) & (\inst|Add2~4_combout\ & !\inst|LessThan2~9_cout\)) # (!\inst|Ball_Y_pos\(6) & ((\inst|Add2~4_combout\) # (!\inst|LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(6),
	datab => \inst|Add2~4_combout\,
	datad => VCC,
	cin => \inst|LessThan2~9_cout\,
	cout => \inst|LessThan2~11_cout\);

-- Location: LCCOMB_X39_Y14_N24
\inst|LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~13_cout\ = CARRY((\inst|Ball_Y_pos\(7) & ((!\inst|LessThan2~11_cout\) # (!\inst|Add2~6_combout\))) # (!\inst|Ball_Y_pos\(7) & (!\inst|Add2~6_combout\ & !\inst|LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(7),
	datab => \inst|Add2~6_combout\,
	datad => VCC,
	cin => \inst|LessThan2~11_cout\,
	cout => \inst|LessThan2~13_cout\);

-- Location: LCCOMB_X39_Y14_N26
\inst|LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~15_cout\ = CARRY((\inst|Add2~8_combout\ & ((!\inst|LessThan2~13_cout\) # (!\inst|Ball_Y_pos\(8)))) # (!\inst|Add2~8_combout\ & (!\inst|Ball_Y_pos\(8) & !\inst|LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~8_combout\,
	datab => \inst|Ball_Y_pos\(8),
	datad => VCC,
	cin => \inst|LessThan2~13_cout\,
	cout => \inst|LessThan2~15_cout\);

-- Location: LCCOMB_X39_Y14_N28
\inst|LessThan2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~16_combout\ = (\inst|Add2~10_combout\ & (!\inst|LessThan2~15_cout\ & \inst|Ball_Y_pos\(9))) # (!\inst|Add2~10_combout\ & ((\inst|Ball_Y_pos\(9)) # (!\inst|LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add2~10_combout\,
	datad => \inst|Ball_Y_pos\(9),
	cin => \inst|LessThan2~15_cout\,
	combout => \inst|LessThan2~16_combout\);

-- Location: LCCOMB_X36_Y14_N6
\inst|Ball_X_pos[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos[3]~15_combout\ = (\inst|Ball_X_pos\(3) & (\inst|Ball_X_pos[2]~14\ & VCC)) # (!\inst|Ball_X_pos\(3) & (!\inst|Ball_X_pos[2]~14\))
-- \inst|Ball_X_pos[3]~16\ = CARRY((!\inst|Ball_X_pos\(3) & !\inst|Ball_X_pos[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(3),
	datad => VCC,
	cin => \inst|Ball_X_pos[2]~14\,
	combout => \inst|Ball_X_pos[3]~15_combout\,
	cout => \inst|Ball_X_pos[3]~16\);

-- Location: LCCOMB_X35_Y14_N4
\inst|Ball_Y_pos[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_pos[3]~12_combout\ = ((\inst|Ball_Y_motion\(2) $ (\inst|Ball_Y_pos\(3) $ (!\inst|Ball_Y_pos[2]~11\)))) # (GND)
-- \inst|Ball_Y_pos[3]~13\ = CARRY((\inst|Ball_Y_motion\(2) & ((\inst|Ball_Y_pos\(3)) # (!\inst|Ball_Y_pos[2]~11\))) # (!\inst|Ball_Y_motion\(2) & (\inst|Ball_Y_pos\(3) & !\inst|Ball_Y_pos[2]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_motion\(2),
	datab => \inst|Ball_Y_pos\(3),
	datad => VCC,
	cin => \inst|Ball_Y_pos[2]~11\,
	combout => \inst|Ball_Y_pos[3]~12_combout\,
	cout => \inst|Ball_Y_pos[3]~13\);

-- Location: LCCOMB_X35_Y14_N6
\inst|Ball_Y_pos[4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_pos[4]~14_combout\ = (\inst|Ball_Y_pos\(4) & ((\inst|Ball_Y_motion\(2) & (\inst|Ball_Y_pos[3]~13\ & VCC)) # (!\inst|Ball_Y_motion\(2) & (!\inst|Ball_Y_pos[3]~13\)))) # (!\inst|Ball_Y_pos\(4) & ((\inst|Ball_Y_motion\(2) & 
-- (!\inst|Ball_Y_pos[3]~13\)) # (!\inst|Ball_Y_motion\(2) & ((\inst|Ball_Y_pos[3]~13\) # (GND)))))
-- \inst|Ball_Y_pos[4]~15\ = CARRY((\inst|Ball_Y_pos\(4) & (!\inst|Ball_Y_motion\(2) & !\inst|Ball_Y_pos[3]~13\)) # (!\inst|Ball_Y_pos\(4) & ((!\inst|Ball_Y_pos[3]~13\) # (!\inst|Ball_Y_motion\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(4),
	datab => \inst|Ball_Y_motion\(2),
	datad => VCC,
	cin => \inst|Ball_Y_pos[3]~13\,
	combout => \inst|Ball_Y_pos[4]~14_combout\,
	cout => \inst|Ball_Y_pos[4]~15\);

-- Location: LCCOMB_X35_Y14_N8
\inst|Ball_Y_pos[5]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_pos[5]~16_combout\ = ((\inst|Ball_Y_pos\(5) $ (\inst|Ball_Y_motion\(2) $ (!\inst|Ball_Y_pos[4]~15\)))) # (GND)
-- \inst|Ball_Y_pos[5]~17\ = CARRY((\inst|Ball_Y_pos\(5) & ((\inst|Ball_Y_motion\(2)) # (!\inst|Ball_Y_pos[4]~15\))) # (!\inst|Ball_Y_pos\(5) & (\inst|Ball_Y_motion\(2) & !\inst|Ball_Y_pos[4]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(5),
	datab => \inst|Ball_Y_motion\(2),
	datad => VCC,
	cin => \inst|Ball_Y_pos[4]~15\,
	combout => \inst|Ball_Y_pos[5]~16_combout\,
	cout => \inst|Ball_Y_pos[5]~17\);

-- Location: LCCOMB_X35_Y14_N10
\inst|Ball_Y_pos[6]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_pos[6]~18_combout\ = (\inst|Ball_Y_pos\(6) & ((\inst|Ball_Y_motion\(2) & (\inst|Ball_Y_pos[5]~17\ & VCC)) # (!\inst|Ball_Y_motion\(2) & (!\inst|Ball_Y_pos[5]~17\)))) # (!\inst|Ball_Y_pos\(6) & ((\inst|Ball_Y_motion\(2) & 
-- (!\inst|Ball_Y_pos[5]~17\)) # (!\inst|Ball_Y_motion\(2) & ((\inst|Ball_Y_pos[5]~17\) # (GND)))))
-- \inst|Ball_Y_pos[6]~19\ = CARRY((\inst|Ball_Y_pos\(6) & (!\inst|Ball_Y_motion\(2) & !\inst|Ball_Y_pos[5]~17\)) # (!\inst|Ball_Y_pos\(6) & ((!\inst|Ball_Y_pos[5]~17\) # (!\inst|Ball_Y_motion\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(6),
	datab => \inst|Ball_Y_motion\(2),
	datad => VCC,
	cin => \inst|Ball_Y_pos[5]~17\,
	combout => \inst|Ball_Y_pos[6]~18_combout\,
	cout => \inst|Ball_Y_pos[6]~19\);

-- Location: LCCOMB_X35_Y14_N12
\inst|Ball_Y_pos[7]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_pos[7]~20_combout\ = ((\inst|Ball_Y_pos\(7) $ (\inst|Ball_Y_motion\(2) $ (!\inst|Ball_Y_pos[6]~19\)))) # (GND)
-- \inst|Ball_Y_pos[7]~21\ = CARRY((\inst|Ball_Y_pos\(7) & ((\inst|Ball_Y_motion\(2)) # (!\inst|Ball_Y_pos[6]~19\))) # (!\inst|Ball_Y_pos\(7) & (\inst|Ball_Y_motion\(2) & !\inst|Ball_Y_pos[6]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(7),
	datab => \inst|Ball_Y_motion\(2),
	datad => VCC,
	cin => \inst|Ball_Y_pos[6]~19\,
	combout => \inst|Ball_Y_pos[7]~20_combout\,
	cout => \inst|Ball_Y_pos[7]~21\);

-- Location: LCCOMB_X35_Y14_N14
\inst|Ball_Y_pos[8]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_pos[8]~22_combout\ = (\inst|Ball_Y_motion\(2) & ((\inst|Ball_Y_pos\(8) & (\inst|Ball_Y_pos[7]~21\ & VCC)) # (!\inst|Ball_Y_pos\(8) & (!\inst|Ball_Y_pos[7]~21\)))) # (!\inst|Ball_Y_motion\(2) & ((\inst|Ball_Y_pos\(8) & 
-- (!\inst|Ball_Y_pos[7]~21\)) # (!\inst|Ball_Y_pos\(8) & ((\inst|Ball_Y_pos[7]~21\) # (GND)))))
-- \inst|Ball_Y_pos[8]~23\ = CARRY((\inst|Ball_Y_motion\(2) & (!\inst|Ball_Y_pos\(8) & !\inst|Ball_Y_pos[7]~21\)) # (!\inst|Ball_Y_motion\(2) & ((!\inst|Ball_Y_pos[7]~21\) # (!\inst|Ball_Y_pos\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_motion\(2),
	datab => \inst|Ball_Y_pos\(8),
	datad => VCC,
	cin => \inst|Ball_Y_pos[7]~21\,
	combout => \inst|Ball_Y_pos[8]~22_combout\,
	cout => \inst|Ball_Y_pos[8]~23\);

-- Location: LCCOMB_X35_Y14_N16
\inst|Ball_Y_pos[9]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_pos[9]~24_combout\ = \inst|Ball_Y_motion\(2) $ (\inst|Ball_Y_pos[8]~23\ $ (!\inst|Ball_Y_pos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_Y_motion\(2),
	datad => \inst|Ball_Y_pos\(9),
	cin => \inst|Ball_Y_pos[8]~23\,
	combout => \inst|Ball_Y_pos[9]~24_combout\);

-- Location: LCCOMB_X37_Y15_N18
\inst|SYNC|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~8_combout\ = (\inst|SYNC|h_count\(4) & (\inst|SYNC|Add0~7\ $ (GND))) # (!\inst|SYNC|h_count\(4) & (!\inst|SYNC|Add0~7\ & VCC))
-- \inst|SYNC|Add0~9\ = CARRY((\inst|SYNC|h_count\(4) & !\inst|SYNC|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(4),
	datad => VCC,
	cin => \inst|SYNC|Add0~7\,
	combout => \inst|SYNC|Add0~8_combout\,
	cout => \inst|SYNC|Add0~9\);

-- Location: LCCOMB_X40_Y15_N10
\inst|SYNC|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~4_combout\ = (\inst|SYNC|v_count\(2) & (\inst|SYNC|Add1~3\ $ (GND))) # (!\inst|SYNC|v_count\(2) & (!\inst|SYNC|Add1~3\ & VCC))
-- \inst|SYNC|Add1~5\ = CARRY((\inst|SYNC|v_count\(2) & !\inst|SYNC|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(2),
	datad => VCC,
	cin => \inst|SYNC|Add1~3\,
	combout => \inst|SYNC|Add1~4_combout\,
	cout => \inst|SYNC|Add1~5\);

-- Location: LCCOMB_X40_Y15_N12
\inst|SYNC|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~6_combout\ = (\inst|SYNC|v_count\(3) & (!\inst|SYNC|Add1~5\)) # (!\inst|SYNC|v_count\(3) & ((\inst|SYNC|Add1~5\) # (GND)))
-- \inst|SYNC|Add1~7\ = CARRY((!\inst|SYNC|Add1~5\) # (!\inst|SYNC|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|v_count\(3),
	datad => VCC,
	cin => \inst|SYNC|Add1~5\,
	combout => \inst|SYNC|Add1~6_combout\,
	cout => \inst|SYNC|Add1~7\);

-- Location: LCCOMB_X40_Y15_N16
\inst|SYNC|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~10_combout\ = (\inst|SYNC|v_count\(5) & (!\inst|SYNC|Add1~9\)) # (!\inst|SYNC|v_count\(5) & ((\inst|SYNC|Add1~9\) # (GND)))
-- \inst|SYNC|Add1~11\ = CARRY((!\inst|SYNC|Add1~9\) # (!\inst|SYNC|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|v_count\(5),
	datad => VCC,
	cin => \inst|SYNC|Add1~9\,
	combout => \inst|SYNC|Add1~10_combout\,
	cout => \inst|SYNC|Add1~11\);

-- Location: LCCOMB_X40_Y15_N18
\inst|SYNC|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~12_combout\ = (\inst|SYNC|v_count\(6) & (\inst|SYNC|Add1~11\ $ (GND))) # (!\inst|SYNC|v_count\(6) & (!\inst|SYNC|Add1~11\ & VCC))
-- \inst|SYNC|Add1~13\ = CARRY((\inst|SYNC|v_count\(6) & !\inst|SYNC|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|v_count\(6),
	datad => VCC,
	cin => \inst|SYNC|Add1~11\,
	combout => \inst|SYNC|Add1~12_combout\,
	cout => \inst|SYNC|Add1~13\);

-- Location: LCCOMB_X40_Y15_N20
\inst|SYNC|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~14_combout\ = (\inst|SYNC|v_count\(7) & (!\inst|SYNC|Add1~13\)) # (!\inst|SYNC|v_count\(7) & ((\inst|SYNC|Add1~13\) # (GND)))
-- \inst|SYNC|Add1~15\ = CARRY((!\inst|SYNC|Add1~13\) # (!\inst|SYNC|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(7),
	datad => VCC,
	cin => \inst|SYNC|Add1~13\,
	combout => \inst|SYNC|Add1~14_combout\,
	cout => \inst|SYNC|Add1~15\);

-- Location: FF_X37_Y15_N21
\inst|SYNC|pixel_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|h_count\(8),
	sload => VCC,
	ena => \inst|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(8));

-- Location: FF_X37_Y15_N15
\inst|SYNC|pixel_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|h_count\(6),
	sload => VCC,
	ena => \inst|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(6));

-- Location: FF_X37_Y15_N3
\inst|SYNC|pixel_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|pixel_column[5]~feeder_combout\,
	ena => \inst|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(5));

-- Location: FF_X37_Y15_N31
\inst|SYNC|pixel_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|h_count\(4),
	sload => VCC,
	ena => \inst|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(4));

-- Location: FF_X37_Y14_N31
\inst|SYNC|pixel_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|h_count\(2),
	sload => VCC,
	ena => \inst|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(2));

-- Location: FF_X39_Y15_N21
\inst|SYNC|pixel_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(8),
	sload => VCC,
	ena => \inst|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(8));

-- Location: FF_X39_Y15_N17
\inst|SYNC|pixel_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(6),
	sload => VCC,
	ena => \inst|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(6));

-- Location: FF_X39_Y15_N15
\inst|SYNC|pixel_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(5),
	sload => VCC,
	ena => \inst|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(5));

-- Location: FF_X39_Y15_N3
\inst|SYNC|pixel_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(4),
	sload => VCC,
	ena => \inst|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(4));

-- Location: FF_X39_Y15_N23
\inst|SYNC|pixel_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(3),
	sload => VCC,
	ena => \inst|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(3));

-- Location: FF_X39_Y14_N7
\inst|SYNC|pixel_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|pixel_row[1]~feeder_combout\,
	ena => \inst|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(1));

-- Location: FF_X39_Y14_N1
\inst|SYNC|video_on_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|LessThan7~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|video_on_v~q\);

-- Location: LCCOMB_X39_Y14_N10
\inst|SYNC|green_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|green_out~0_combout\ = (\inst|SYNC|video_on_h~q\ & (\inst|SYNC|video_on_v~q\ & (!\inst|Add2~10_combout\ & !\inst|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|video_on_h~q\,
	datab => \inst|SYNC|video_on_v~q\,
	datac => \inst|Add2~10_combout\,
	datad => \inst|Add0~10_combout\,
	combout => \inst|SYNC|green_out~0_combout\);

-- Location: LCCOMB_X39_Y14_N4
\inst|SYNC|green_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|green_out~1_combout\ = (!\inst|Add3~10_combout\ & (\inst|SYNC|green_out~0_combout\ & (!\inst|Add1~10_combout\ & !\inst|LessThan2~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~10_combout\,
	datab => \inst|SYNC|green_out~0_combout\,
	datac => \inst|Add1~10_combout\,
	datad => \inst|LessThan2~16_combout\,
	combout => \inst|SYNC|green_out~1_combout\);

-- Location: FF_X37_Y15_N19
\inst|SYNC|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(4));

-- Location: FF_X35_Y14_N29
\inst|Ball_Y_motion[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_motion[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_motion\(2));

-- Location: LCCOMB_X38_Y15_N26
\inst|SYNC|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Equal0~0_combout\ = (\inst|SYNC|h_count\(1) & (\inst|SYNC|h_count\(4) & (\inst|SYNC|h_count\(3) & \inst|SYNC|h_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(1),
	datab => \inst|SYNC|h_count\(4),
	datac => \inst|SYNC|h_count\(3),
	datad => \inst|SYNC|h_count\(0),
	combout => \inst|SYNC|Equal0~0_combout\);

-- Location: LCCOMB_X35_Y14_N30
\inst|Ball_Y_motion[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_motion[2]~0_combout\ = (\inst|Ball_Y_pos\(6) & ((\inst|Ball_Y_motion\(2)) # ((\inst|Ball_Y_pos\(8) & \inst|Ball_Y_pos\(7))))) # (!\inst|Ball_Y_pos\(6) & (\inst|Ball_Y_motion\(2) & ((\inst|Ball_Y_pos\(8)) # (\inst|Ball_Y_pos\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(6),
	datab => \inst|Ball_Y_motion\(2),
	datac => \inst|Ball_Y_pos\(8),
	datad => \inst|Ball_Y_pos\(7),
	combout => \inst|Ball_Y_motion[2]~0_combout\);

-- Location: LCCOMB_X35_Y14_N24
\inst|Ball_Y_motion[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_motion[2]~1_combout\ = (\inst|Ball_Y_pos\(3) & ((\inst|Ball_X_pos\(0)) # ((\inst|Ball_Y_pos\(8)) # (\inst|Ball_Y_pos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(0),
	datab => \inst|Ball_Y_pos\(3),
	datac => \inst|Ball_Y_pos\(8),
	datad => \inst|Ball_Y_pos\(2),
	combout => \inst|Ball_Y_motion[2]~1_combout\);

-- Location: LCCOMB_X35_Y14_N18
\inst|Ball_Y_motion[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_motion[2]~2_combout\ = (\inst|Ball_Y_pos\(5)) # ((\inst|Ball_Y_pos\(4) & ((\inst|Ball_Y_motion\(2)) # (\inst|Ball_Y_motion[2]~1_combout\))) # (!\inst|Ball_Y_pos\(4) & (\inst|Ball_Y_motion\(2) & \inst|Ball_Y_motion[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(4),
	datab => \inst|Ball_Y_motion\(2),
	datac => \inst|Ball_Y_pos\(5),
	datad => \inst|Ball_Y_motion[2]~1_combout\,
	combout => \inst|Ball_Y_motion[2]~2_combout\);

-- Location: LCCOMB_X35_Y14_N28
\inst|Ball_Y_motion[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_motion[2]~3_combout\ = (\inst|Ball_Y_pos\(9)) # ((\inst|Ball_Y_motion[2]~0_combout\ & ((\inst|Ball_Y_motion\(2)) # (\inst|Ball_Y_motion[2]~2_combout\))) # (!\inst|Ball_Y_motion[2]~0_combout\ & (\inst|Ball_Y_motion\(2) & 
-- \inst|Ball_Y_motion[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_motion[2]~0_combout\,
	datab => \inst|Ball_Y_pos\(9),
	datac => \inst|Ball_Y_motion\(2),
	datad => \inst|Ball_Y_motion[2]~2_combout\,
	combout => \inst|Ball_Y_motion[2]~3_combout\);

-- Location: LCCOMB_X38_Y15_N22
\inst|SYNC|process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~10_combout\ = (\inst|SYNC|h_count\(5) & \inst|SYNC|h_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SYNC|h_count\(5),
	datad => \inst|SYNC|h_count\(4),
	combout => \inst|SYNC|process_0~10_combout\);

-- Location: CLKCTRL_G9
\inst|SYNC|vert_sync_out~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|SYNC|vert_sync_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|SYNC|vert_sync_out~clkctrl_outclk\);

-- Location: LCCOMB_X37_Y15_N2
\inst|SYNC|pixel_column[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|pixel_column[5]~feeder_combout\ = \inst|SYNC|h_count\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SYNC|h_count\(5),
	combout => \inst|SYNC|pixel_column[5]~feeder_combout\);

-- Location: LCCOMB_X39_Y14_N6
\inst|SYNC|pixel_row[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|pixel_row[1]~feeder_combout\ = \inst|SYNC|v_count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SYNC|v_count\(1),
	combout => \inst|SYNC|pixel_row[1]~feeder_combout\);

-- Location: IOOBUF_X41_Y25_N2
\red_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SYNC|green_out~q\,
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
	i => \inst|SYNC|green_out~q\,
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
	i => \inst|SYNC|blue_out~q\,
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
	i => \inst|SYNC|horiz_sync_out~q\,
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
	i => \inst|SYNC|vert_sync_out~q\,
	devoe => ww_devoe,
	o => ww_vert_sync_out);

-- Location: IOOBUF_X41_Y23_N23
\r1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SYNC|green_out~q\,
	devoe => ww_devoe,
	o => ww_r1);

-- Location: IOOBUF_X41_Y22_N2
\r2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SYNC|green_out~q\,
	devoe => ww_devoe,
	o => ww_r2);

-- Location: IOOBUF_X41_Y21_N23
\r3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SYNC|green_out~q\,
	devoe => ww_devoe,
	o => ww_r3);

-- Location: IOOBUF_X41_Y20_N2
\g1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SYNC|green_out~q\,
	devoe => ww_devoe,
	o => ww_g1);

-- Location: IOOBUF_X41_Y21_N16
\g2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SYNC|green_out~q\,
	devoe => ww_devoe,
	o => ww_g2);

-- Location: IOOBUF_X41_Y20_N23
\g3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SYNC|green_out~q\,
	devoe => ww_devoe,
	o => ww_g3);

-- Location: IOOBUF_X41_Y14_N23
\b1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SYNC|blue_out~q\,
	devoe => ww_devoe,
	o => ww_b1);

-- Location: IOOBUF_X41_Y19_N2
\b2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SYNC|blue_out~q\,
	devoe => ww_devoe,
	o => ww_b2);

-- Location: IOOBUF_X41_Y21_N9
\b3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SYNC|blue_out~q\,
	devoe => ww_devoe,
	o => ww_b3);

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
\inst1|altpll_component|auto_generated|pll1\ : cycloneiii_pll
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
	pll_compensation_delay => 5052,
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
	fbin => \inst1|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst1|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst1|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst1|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G8
\inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X37_Y15_N10
\inst|SYNC|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~0_combout\ = \inst|SYNC|h_count\(0) $ (VCC)
-- \inst|SYNC|Add0~1\ = CARRY(\inst|SYNC|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|h_count\(0),
	datad => VCC,
	combout => \inst|SYNC|Add0~0_combout\,
	cout => \inst|SYNC|Add0~1\);

-- Location: FF_X37_Y15_N11
\inst|SYNC|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(0));

-- Location: LCCOMB_X37_Y15_N12
\inst|SYNC|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~2_combout\ = (\inst|SYNC|h_count\(1) & (!\inst|SYNC|Add0~1\)) # (!\inst|SYNC|h_count\(1) & ((\inst|SYNC|Add0~1\) # (GND)))
-- \inst|SYNC|Add0~3\ = CARRY((!\inst|SYNC|Add0~1\) # (!\inst|SYNC|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|h_count\(1),
	datad => VCC,
	cin => \inst|SYNC|Add0~1\,
	combout => \inst|SYNC|Add0~2_combout\,
	cout => \inst|SYNC|Add0~3\);

-- Location: FF_X37_Y15_N13
\inst|SYNC|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(1));

-- Location: LCCOMB_X37_Y15_N14
\inst|SYNC|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~4_combout\ = (\inst|SYNC|h_count\(2) & (\inst|SYNC|Add0~3\ $ (GND))) # (!\inst|SYNC|h_count\(2) & (!\inst|SYNC|Add0~3\ & VCC))
-- \inst|SYNC|Add0~5\ = CARRY((\inst|SYNC|h_count\(2) & !\inst|SYNC|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(2),
	datad => VCC,
	cin => \inst|SYNC|Add0~3\,
	combout => \inst|SYNC|Add0~4_combout\,
	cout => \inst|SYNC|Add0~5\);

-- Location: LCCOMB_X37_Y15_N16
\inst|SYNC|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~6_combout\ = (\inst|SYNC|h_count\(3) & (!\inst|SYNC|Add0~5\)) # (!\inst|SYNC|h_count\(3) & ((\inst|SYNC|Add0~5\) # (GND)))
-- \inst|SYNC|Add0~7\ = CARRY((!\inst|SYNC|Add0~5\) # (!\inst|SYNC|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|h_count\(3),
	datad => VCC,
	cin => \inst|SYNC|Add0~5\,
	combout => \inst|SYNC|Add0~6_combout\,
	cout => \inst|SYNC|Add0~7\);

-- Location: FF_X37_Y15_N17
\inst|SYNC|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(3));

-- Location: LCCOMB_X37_Y15_N20
\inst|SYNC|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~10_combout\ = (\inst|SYNC|h_count\(5) & (!\inst|SYNC|Add0~9\)) # (!\inst|SYNC|h_count\(5) & ((\inst|SYNC|Add0~9\) # (GND)))
-- \inst|SYNC|Add0~11\ = CARRY((!\inst|SYNC|Add0~9\) # (!\inst|SYNC|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|h_count\(5),
	datad => VCC,
	cin => \inst|SYNC|Add0~9\,
	combout => \inst|SYNC|Add0~10_combout\,
	cout => \inst|SYNC|Add0~11\);

-- Location: LCCOMB_X38_Y15_N30
\inst|SYNC|h_count[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|h_count[2]~feeder_combout\ = \inst|SYNC|Add0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SYNC|Add0~4_combout\,
	combout => \inst|SYNC|h_count[2]~feeder_combout\);

-- Location: FF_X38_Y15_N31
\inst|SYNC|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|h_count[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(2));

-- Location: LCCOMB_X38_Y15_N8
\inst|SYNC|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Equal0~1_combout\ = (!\inst|SYNC|h_count\(7) & (!\inst|SYNC|h_count\(5) & (\inst|SYNC|h_count\(8) & \inst|SYNC|h_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(7),
	datab => \inst|SYNC|h_count\(5),
	datac => \inst|SYNC|h_count\(8),
	datad => \inst|SYNC|h_count\(2),
	combout => \inst|SYNC|Equal0~1_combout\);

-- Location: LCCOMB_X37_Y15_N22
\inst|SYNC|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~12_combout\ = (\inst|SYNC|h_count\(6) & (\inst|SYNC|Add0~11\ $ (GND))) # (!\inst|SYNC|h_count\(6) & (!\inst|SYNC|Add0~11\ & VCC))
-- \inst|SYNC|Add0~13\ = CARRY((\inst|SYNC|h_count\(6) & !\inst|SYNC|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(6),
	datad => VCC,
	cin => \inst|SYNC|Add0~11\,
	combout => \inst|SYNC|Add0~12_combout\,
	cout => \inst|SYNC|Add0~13\);

-- Location: FF_X37_Y15_N23
\inst|SYNC|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(6));

-- Location: LCCOMB_X38_Y15_N10
\inst|SYNC|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Equal0~2_combout\ = (\inst|SYNC|Equal0~0_combout\ & (\inst|SYNC|Equal0~1_combout\ & (\inst|SYNC|h_count\(9) & !\inst|SYNC|h_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|Equal0~0_combout\,
	datab => \inst|SYNC|Equal0~1_combout\,
	datac => \inst|SYNC|h_count\(9),
	datad => \inst|SYNC|h_count\(6),
	combout => \inst|SYNC|Equal0~2_combout\);

-- Location: LCCOMB_X38_Y15_N24
\inst|SYNC|h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|h_count~2_combout\ = (\inst|SYNC|Add0~10_combout\ & !\inst|SYNC|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SYNC|Add0~10_combout\,
	datad => \inst|SYNC|Equal0~2_combout\,
	combout => \inst|SYNC|h_count~2_combout\);

-- Location: FF_X38_Y15_N25
\inst|SYNC|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|h_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(5));

-- Location: LCCOMB_X37_Y15_N24
\inst|SYNC|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~14_combout\ = (\inst|SYNC|h_count\(7) & (!\inst|SYNC|Add0~13\)) # (!\inst|SYNC|h_count\(7) & ((\inst|SYNC|Add0~13\) # (GND)))
-- \inst|SYNC|Add0~15\ = CARRY((!\inst|SYNC|Add0~13\) # (!\inst|SYNC|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(7),
	datad => VCC,
	cin => \inst|SYNC|Add0~13\,
	combout => \inst|SYNC|Add0~14_combout\,
	cout => \inst|SYNC|Add0~15\);

-- Location: LCCOMB_X37_Y15_N26
\inst|SYNC|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~16_combout\ = (\inst|SYNC|h_count\(8) & (\inst|SYNC|Add0~15\ $ (GND))) # (!\inst|SYNC|h_count\(8) & (!\inst|SYNC|Add0~15\ & VCC))
-- \inst|SYNC|Add0~17\ = CARRY((\inst|SYNC|h_count\(8) & !\inst|SYNC|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|h_count\(8),
	datad => VCC,
	cin => \inst|SYNC|Add0~15\,
	combout => \inst|SYNC|Add0~16_combout\,
	cout => \inst|SYNC|Add0~17\);

-- Location: LCCOMB_X38_Y15_N14
\inst|SYNC|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|h_count~1_combout\ = (\inst|SYNC|Add0~16_combout\ & !\inst|SYNC|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SYNC|Add0~16_combout\,
	datad => \inst|SYNC|Equal0~2_combout\,
	combout => \inst|SYNC|h_count~1_combout\);

-- Location: FF_X38_Y15_N15
\inst|SYNC|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(8));

-- Location: LCCOMB_X37_Y15_N28
\inst|SYNC|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~18_combout\ = \inst|SYNC|Add0~17\ $ (\inst|SYNC|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|SYNC|h_count\(9),
	cin => \inst|SYNC|Add0~17\,
	combout => \inst|SYNC|Add0~18_combout\);

-- Location: LCCOMB_X38_Y15_N4
\inst|SYNC|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|h_count~0_combout\ = (\inst|SYNC|Add0~18_combout\ & !\inst|SYNC|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|Add0~18_combout\,
	datad => \inst|SYNC|Equal0~2_combout\,
	combout => \inst|SYNC|h_count~0_combout\);

-- Location: FF_X38_Y15_N5
\inst|SYNC|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(9));

-- Location: FF_X37_Y15_N25
\inst|SYNC|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(7));

-- Location: LCCOMB_X37_Y15_N30
\inst|SYNC|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~0_combout\ = ((!\inst|SYNC|h_count\(8) & !\inst|SYNC|h_count\(7))) # (!\inst|SYNC|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(9),
	datab => \inst|SYNC|h_count\(8),
	datad => \inst|SYNC|h_count\(7),
	combout => \inst|SYNC|process_0~0_combout\);

-- Location: FF_X37_Y15_N27
\inst|SYNC|pixel_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|h_count\(9),
	sload => VCC,
	ena => \inst|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(9));

-- Location: FF_X37_Y15_N9
\inst|SYNC|pixel_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|h_count\(7),
	sload => VCC,
	ena => \inst|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(7));

-- Location: FF_X37_Y14_N15
\inst|SYNC|pixel_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|h_count\(3),
	sload => VCC,
	ena => \inst|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(3));

-- Location: LCCOMB_X37_Y14_N20
\inst|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = (\inst|SYNC|pixel_column\(4) & (\inst|SYNC|pixel_column\(3) $ (VCC))) # (!\inst|SYNC|pixel_column\(4) & (\inst|SYNC|pixel_column\(3) & VCC))
-- \inst|Add0~1\ = CARRY((\inst|SYNC|pixel_column\(4) & \inst|SYNC|pixel_column\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(4),
	datab => \inst|SYNC|pixel_column\(3),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X37_Y14_N26
\inst|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|SYNC|pixel_column\(7) & (!\inst|Add0~5\)) # (!\inst|SYNC|pixel_column\(7) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|SYNC|pixel_column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(7),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X37_Y14_N30
\inst|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = \inst|Add0~9\ $ (\inst|SYNC|pixel_column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|SYNC|pixel_column\(9),
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\);

-- Location: LCCOMB_X36_Y14_N0
\inst|Ball_X_pos[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos[1]~10_cout\ = CARRY(\inst|Ball_X_pos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(0),
	datad => VCC,
	cout => \inst|Ball_X_pos[1]~10_cout\);

-- Location: LCCOMB_X36_Y14_N2
\inst|Ball_X_pos[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos[1]~11_combout\ = (\inst|Ball_X_pos\(1) & (\inst|Ball_X_pos[1]~10_cout\ & VCC)) # (!\inst|Ball_X_pos\(1) & (!\inst|Ball_X_pos[1]~10_cout\))
-- \inst|Ball_X_pos[1]~12\ = CARRY((!\inst|Ball_X_pos\(1) & !\inst|Ball_X_pos[1]~10_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_X_pos\(1),
	datad => VCC,
	cin => \inst|Ball_X_pos[1]~10_cout\,
	combout => \inst|Ball_X_pos[1]~11_combout\,
	cout => \inst|Ball_X_pos[1]~12\);

-- Location: FF_X36_Y14_N3
\inst|Ball_X_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_pos[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_pos\(1));

-- Location: LCCOMB_X36_Y14_N4
\inst|Ball_X_pos[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos[2]~13_combout\ = (\inst|Ball_X_pos\(2) & ((GND) # (!\inst|Ball_X_pos[1]~12\))) # (!\inst|Ball_X_pos\(2) & (\inst|Ball_X_pos[1]~12\ $ (GND)))
-- \inst|Ball_X_pos[2]~14\ = CARRY((\inst|Ball_X_pos\(2)) # (!\inst|Ball_X_pos[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_X_pos\(2),
	datad => VCC,
	cin => \inst|Ball_X_pos[1]~12\,
	combout => \inst|Ball_X_pos[2]~13_combout\,
	cout => \inst|Ball_X_pos[2]~14\);

-- Location: FF_X36_Y14_N5
\inst|Ball_X_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_pos[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_pos\(2));

-- Location: LCCOMB_X36_Y14_N8
\inst|Ball_X_pos[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos[4]~17_combout\ = (\inst|Ball_X_pos\(4) & ((GND) # (!\inst|Ball_X_pos[3]~16\))) # (!\inst|Ball_X_pos\(4) & (\inst|Ball_X_pos[3]~16\ $ (GND)))
-- \inst|Ball_X_pos[4]~18\ = CARRY((\inst|Ball_X_pos\(4)) # (!\inst|Ball_X_pos[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(4),
	datad => VCC,
	cin => \inst|Ball_X_pos[3]~16\,
	combout => \inst|Ball_X_pos[4]~17_combout\,
	cout => \inst|Ball_X_pos[4]~18\);

-- Location: LCCOMB_X36_Y14_N10
\inst|Ball_X_pos[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos[5]~19_combout\ = (\inst|Ball_X_pos\(5) & (\inst|Ball_X_pos[4]~18\ & VCC)) # (!\inst|Ball_X_pos\(5) & (!\inst|Ball_X_pos[4]~18\))
-- \inst|Ball_X_pos[5]~20\ = CARRY((!\inst|Ball_X_pos\(5) & !\inst|Ball_X_pos[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_X_pos\(5),
	datad => VCC,
	cin => \inst|Ball_X_pos[4]~18\,
	combout => \inst|Ball_X_pos[5]~19_combout\,
	cout => \inst|Ball_X_pos[5]~20\);

-- Location: FF_X36_Y14_N11
\inst|Ball_X_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_pos[5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_pos\(5));

-- Location: LCCOMB_X36_Y14_N12
\inst|Ball_X_pos[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos[6]~21_combout\ = (\inst|Ball_X_pos\(6) & ((GND) # (!\inst|Ball_X_pos[5]~20\))) # (!\inst|Ball_X_pos\(6) & (\inst|Ball_X_pos[5]~20\ $ (GND)))
-- \inst|Ball_X_pos[6]~22\ = CARRY((\inst|Ball_X_pos\(6)) # (!\inst|Ball_X_pos[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_X_pos\(6),
	datad => VCC,
	cin => \inst|Ball_X_pos[5]~20\,
	combout => \inst|Ball_X_pos[6]~21_combout\,
	cout => \inst|Ball_X_pos[6]~22\);

-- Location: FF_X36_Y14_N13
\inst|Ball_X_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_pos[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_pos\(6));

-- Location: LCCOMB_X36_Y14_N14
\inst|Ball_X_pos[7]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos[7]~23_combout\ = (\inst|Ball_X_pos\(7) & (\inst|Ball_X_pos[6]~22\ & VCC)) # (!\inst|Ball_X_pos\(7) & (!\inst|Ball_X_pos[6]~22\))
-- \inst|Ball_X_pos[7]~24\ = CARRY((!\inst|Ball_X_pos\(7) & !\inst|Ball_X_pos[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(7),
	datad => VCC,
	cin => \inst|Ball_X_pos[6]~22\,
	combout => \inst|Ball_X_pos[7]~23_combout\,
	cout => \inst|Ball_X_pos[7]~24\);

-- Location: LCCOMB_X36_Y14_N16
\inst|Ball_X_pos[8]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos[8]~25_combout\ = (\inst|Ball_X_pos\(8) & ((GND) # (!\inst|Ball_X_pos[7]~24\))) # (!\inst|Ball_X_pos\(8) & (\inst|Ball_X_pos[7]~24\ $ (GND)))
-- \inst|Ball_X_pos[8]~26\ = CARRY((\inst|Ball_X_pos\(8)) # (!\inst|Ball_X_pos[7]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_X_pos\(8),
	datad => VCC,
	cin => \inst|Ball_X_pos[7]~24\,
	combout => \inst|Ball_X_pos[8]~25_combout\,
	cout => \inst|Ball_X_pos[8]~26\);

-- Location: FF_X36_Y14_N17
\inst|Ball_X_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_pos[8]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_pos\(8));

-- Location: LCCOMB_X36_Y14_N18
\inst|Ball_X_pos[9]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos[9]~27_combout\ = \inst|Ball_X_pos[8]~26\ $ (!\inst|Ball_X_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|Ball_X_pos\(9),
	cin => \inst|Ball_X_pos[8]~26\,
	combout => \inst|Ball_X_pos[9]~27_combout\);

-- Location: FF_X36_Y14_N19
\inst|Ball_X_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_pos[9]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_pos\(9));

-- Location: FF_X37_Y15_N7
\inst|SYNC|pixel_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|h_count\(0),
	sload => VCC,
	ena => \inst|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(0));

-- Location: LCCOMB_X33_Y14_N6
\inst|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_cout\ = CARRY((\inst|Ball_X_pos\(0) & !\inst|SYNC|pixel_column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(0),
	datab => \inst|SYNC|pixel_column\(0),
	datad => VCC,
	cout => \inst|LessThan0~1_cout\);

-- Location: LCCOMB_X33_Y14_N8
\inst|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_cout\ = CARRY((\inst|SYNC|pixel_column\(1) & ((!\inst|LessThan0~1_cout\) # (!\inst|Ball_X_pos\(1)))) # (!\inst|SYNC|pixel_column\(1) & (!\inst|Ball_X_pos\(1) & !\inst|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(1),
	datab => \inst|Ball_X_pos\(1),
	datad => VCC,
	cin => \inst|LessThan0~1_cout\,
	cout => \inst|LessThan0~3_cout\);

-- Location: LCCOMB_X33_Y14_N10
\inst|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~5_cout\ = CARRY((\inst|SYNC|pixel_column\(2) & (\inst|Ball_X_pos\(2) & !\inst|LessThan0~3_cout\)) # (!\inst|SYNC|pixel_column\(2) & ((\inst|Ball_X_pos\(2)) # (!\inst|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(2),
	datab => \inst|Ball_X_pos\(2),
	datad => VCC,
	cin => \inst|LessThan0~3_cout\,
	cout => \inst|LessThan0~5_cout\);

-- Location: LCCOMB_X33_Y14_N12
\inst|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~7_cout\ = CARRY((\inst|Ball_X_pos\(3) & (!\inst|SYNC|pixel_column\(3) & !\inst|LessThan0~5_cout\)) # (!\inst|Ball_X_pos\(3) & ((!\inst|LessThan0~5_cout\) # (!\inst|SYNC|pixel_column\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(3),
	datab => \inst|SYNC|pixel_column\(3),
	datad => VCC,
	cin => \inst|LessThan0~5_cout\,
	cout => \inst|LessThan0~7_cout\);

-- Location: LCCOMB_X33_Y14_N14
\inst|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~9_cout\ = CARRY((\inst|Ball_X_pos\(4) & ((!\inst|LessThan0~7_cout\) # (!\inst|Add0~0_combout\))) # (!\inst|Ball_X_pos\(4) & (!\inst|Add0~0_combout\ & !\inst|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(4),
	datab => \inst|Add0~0_combout\,
	datad => VCC,
	cin => \inst|LessThan0~7_cout\,
	cout => \inst|LessThan0~9_cout\);

-- Location: LCCOMB_X33_Y14_N16
\inst|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~11_cout\ = CARRY((\inst|Add0~2_combout\ & ((!\inst|LessThan0~9_cout\) # (!\inst|Ball_X_pos\(5)))) # (!\inst|Add0~2_combout\ & (!\inst|Ball_X_pos\(5) & !\inst|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~2_combout\,
	datab => \inst|Ball_X_pos\(5),
	datad => VCC,
	cin => \inst|LessThan0~9_cout\,
	cout => \inst|LessThan0~11_cout\);

-- Location: LCCOMB_X33_Y14_N18
\inst|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~13_cout\ = CARRY((\inst|Add0~4_combout\ & (\inst|Ball_X_pos\(6) & !\inst|LessThan0~11_cout\)) # (!\inst|Add0~4_combout\ & ((\inst|Ball_X_pos\(6)) # (!\inst|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~4_combout\,
	datab => \inst|Ball_X_pos\(6),
	datad => VCC,
	cin => \inst|LessThan0~11_cout\,
	cout => \inst|LessThan0~13_cout\);

-- Location: LCCOMB_X33_Y14_N20
\inst|LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~15_cout\ = CARRY((\inst|Ball_X_pos\(7) & (\inst|Add0~6_combout\ & !\inst|LessThan0~13_cout\)) # (!\inst|Ball_X_pos\(7) & ((\inst|Add0~6_combout\) # (!\inst|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(7),
	datab => \inst|Add0~6_combout\,
	datad => VCC,
	cin => \inst|LessThan0~13_cout\,
	cout => \inst|LessThan0~15_cout\);

-- Location: LCCOMB_X33_Y14_N22
\inst|LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~17_cout\ = CARRY((\inst|Add0~8_combout\ & (\inst|Ball_X_pos\(8) & !\inst|LessThan0~15_cout\)) # (!\inst|Add0~8_combout\ & ((\inst|Ball_X_pos\(8)) # (!\inst|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~8_combout\,
	datab => \inst|Ball_X_pos\(8),
	datad => VCC,
	cin => \inst|LessThan0~15_cout\,
	cout => \inst|LessThan0~17_cout\);

-- Location: LCCOMB_X33_Y14_N24
\inst|LessThan0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~18_combout\ = (\inst|Add0~10_combout\ & (\inst|LessThan0~17_cout\ & \inst|Ball_X_pos\(9))) # (!\inst|Add0~10_combout\ & ((\inst|LessThan0~17_cout\) # (\inst|Ball_X_pos\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~10_combout\,
	datad => \inst|Ball_X_pos\(9),
	cin => \inst|LessThan0~17_cout\,
	combout => \inst|LessThan0~18_combout\);

-- Location: LCCOMB_X35_Y14_N0
\inst|Ball_Y_pos[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_pos[2]~9_cout\ = CARRY(\inst|Ball_X_pos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(0),
	datad => VCC,
	cout => \inst|Ball_Y_pos[2]~9_cout\);

-- Location: LCCOMB_X35_Y14_N2
\inst|Ball_Y_pos[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_pos[2]~10_combout\ = (\inst|Ball_Y_motion\(2) & ((\inst|Ball_Y_pos\(2) & (\inst|Ball_Y_pos[2]~9_cout\ & VCC)) # (!\inst|Ball_Y_pos\(2) & (!\inst|Ball_Y_pos[2]~9_cout\)))) # (!\inst|Ball_Y_motion\(2) & ((\inst|Ball_Y_pos\(2) & 
-- (!\inst|Ball_Y_pos[2]~9_cout\)) # (!\inst|Ball_Y_pos\(2) & ((\inst|Ball_Y_pos[2]~9_cout\) # (GND)))))
-- \inst|Ball_Y_pos[2]~11\ = CARRY((\inst|Ball_Y_motion\(2) & (!\inst|Ball_Y_pos\(2) & !\inst|Ball_Y_pos[2]~9_cout\)) # (!\inst|Ball_Y_motion\(2) & ((!\inst|Ball_Y_pos[2]~9_cout\) # (!\inst|Ball_Y_pos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_motion\(2),
	datab => \inst|Ball_Y_pos\(2),
	datad => VCC,
	cin => \inst|Ball_Y_pos[2]~9_cout\,
	combout => \inst|Ball_Y_pos[2]~10_combout\,
	cout => \inst|Ball_Y_pos[2]~11\);

-- Location: FF_X35_Y14_N3
\inst|Ball_Y_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_pos[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(2));

-- Location: FF_X35_Y14_N5
\inst|Ball_Y_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_pos[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(3));

-- Location: LCCOMB_X38_Y14_N0
\inst|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~0_combout\ = (\inst|Ball_Y_pos\(4) & (\inst|Ball_Y_pos\(3) $ (VCC))) # (!\inst|Ball_Y_pos\(4) & (\inst|Ball_Y_pos\(3) & VCC))
-- \inst|Add3~1\ = CARRY((\inst|Ball_Y_pos\(4) & \inst|Ball_Y_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(4),
	datab => \inst|Ball_Y_pos\(3),
	datad => VCC,
	combout => \inst|Add3~0_combout\,
	cout => \inst|Add3~1\);

-- Location: LCCOMB_X38_Y14_N2
\inst|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~2_combout\ = (\inst|Ball_Y_pos\(5) & (!\inst|Add3~1\)) # (!\inst|Ball_Y_pos\(5) & ((\inst|Add3~1\) # (GND)))
-- \inst|Add3~3\ = CARRY((!\inst|Add3~1\) # (!\inst|Ball_Y_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(5),
	datad => VCC,
	cin => \inst|Add3~1\,
	combout => \inst|Add3~2_combout\,
	cout => \inst|Add3~3\);

-- Location: LCCOMB_X38_Y14_N4
\inst|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~4_combout\ = (\inst|Ball_Y_pos\(6) & (\inst|Add3~3\ $ (GND))) # (!\inst|Ball_Y_pos\(6) & (!\inst|Add3~3\ & VCC))
-- \inst|Add3~5\ = CARRY((\inst|Ball_Y_pos\(6) & !\inst|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(6),
	datad => VCC,
	cin => \inst|Add3~3\,
	combout => \inst|Add3~4_combout\,
	cout => \inst|Add3~5\);

-- Location: LCCOMB_X38_Y15_N0
\inst|SYNC|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Equal1~0_combout\ = (((\inst|SYNC|h_count\(8)) # (\inst|SYNC|h_count\(2))) # (!\inst|SYNC|h_count\(5))) # (!\inst|SYNC|h_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(7),
	datab => \inst|SYNC|h_count\(5),
	datac => \inst|SYNC|h_count\(8),
	datad => \inst|SYNC|h_count\(2),
	combout => \inst|SYNC|Equal1~0_combout\);

-- Location: LCCOMB_X38_Y15_N6
\inst|SYNC|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Equal1~1_combout\ = ((\inst|SYNC|Equal1~0_combout\) # ((\inst|SYNC|h_count\(6)) # (!\inst|SYNC|h_count\(9)))) # (!\inst|SYNC|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|Equal0~0_combout\,
	datab => \inst|SYNC|Equal1~0_combout\,
	datac => \inst|SYNC|h_count\(9),
	datad => \inst|SYNC|h_count\(6),
	combout => \inst|SYNC|Equal1~1_combout\);

-- Location: LCCOMB_X40_Y15_N0
\inst|SYNC|v_count[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[6]~5_combout\ = (\inst|SYNC|Add1~12_combout\ & ((\inst|SYNC|v_count[2]~0_combout\) # ((\inst|SYNC|v_count\(6) & !\inst|SYNC|v_count[4]~1_combout\)))) # (!\inst|SYNC|Add1~12_combout\ & (((\inst|SYNC|v_count\(6) & 
-- !\inst|SYNC|v_count[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|Add1~12_combout\,
	datab => \inst|SYNC|v_count[2]~0_combout\,
	datac => \inst|SYNC|v_count\(6),
	datad => \inst|SYNC|v_count[4]~1_combout\,
	combout => \inst|SYNC|v_count[6]~5_combout\);

-- Location: FF_X40_Y15_N1
\inst|SYNC|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|v_count[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(6));

-- Location: LCCOMB_X40_Y15_N28
\inst|SYNC|v_count[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[5]~4_combout\ = (\inst|SYNC|Add1~10_combout\ & ((\inst|SYNC|v_count[2]~0_combout\) # ((\inst|SYNC|v_count\(5) & !\inst|SYNC|v_count[4]~1_combout\)))) # (!\inst|SYNC|Add1~10_combout\ & (((\inst|SYNC|v_count\(5) & 
-- !\inst|SYNC|v_count[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|Add1~10_combout\,
	datab => \inst|SYNC|v_count[2]~0_combout\,
	datac => \inst|SYNC|v_count\(5),
	datad => \inst|SYNC|v_count[4]~1_combout\,
	combout => \inst|SYNC|v_count[5]~4_combout\);

-- Location: FF_X40_Y15_N29
\inst|SYNC|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|v_count[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(5));

-- Location: LCCOMB_X40_Y15_N6
\inst|SYNC|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~0_combout\ = \inst|SYNC|v_count\(0) $ (VCC)
-- \inst|SYNC|Add1~1\ = CARRY(\inst|SYNC|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(0),
	datad => VCC,
	combout => \inst|SYNC|Add1~0_combout\,
	cout => \inst|SYNC|Add1~1\);

-- Location: LCCOMB_X40_Y15_N8
\inst|SYNC|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~2_combout\ = (\inst|SYNC|v_count\(1) & (!\inst|SYNC|Add1~1\)) # (!\inst|SYNC|v_count\(1) & ((\inst|SYNC|Add1~1\) # (GND)))
-- \inst|SYNC|Add1~3\ = CARRY((!\inst|SYNC|Add1~1\) # (!\inst|SYNC|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|v_count\(1),
	datad => VCC,
	cin => \inst|SYNC|Add1~1\,
	combout => \inst|SYNC|Add1~2_combout\,
	cout => \inst|SYNC|Add1~3\);

-- Location: LCCOMB_X38_Y15_N28
\inst|SYNC|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~9_combout\ = ((!\inst|SYNC|h_count\(2) & ((!\inst|SYNC|h_count\(0)) # (!\inst|SYNC|h_count\(1))))) # (!\inst|SYNC|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(1),
	datab => \inst|SYNC|h_count\(2),
	datac => \inst|SYNC|h_count\(3),
	datad => \inst|SYNC|h_count\(0),
	combout => \inst|SYNC|process_0~9_combout\);

-- Location: LCCOMB_X38_Y15_N12
\inst|SYNC|process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~11_combout\ = (!\inst|SYNC|h_count\(8) & (!\inst|SYNC|h_count\(6) & ((\inst|SYNC|process_0~9_combout\) # (!\inst|SYNC|process_0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|process_0~10_combout\,
	datab => \inst|SYNC|process_0~9_combout\,
	datac => \inst|SYNC|h_count\(8),
	datad => \inst|SYNC|h_count\(6),
	combout => \inst|SYNC|process_0~11_combout\);

-- Location: LCCOMB_X39_Y15_N0
\inst|SYNC|v_count~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count~10_combout\ = (\inst|SYNC|Add1~2_combout\ & ((\inst|SYNC|process_0~12_combout\) # ((\inst|SYNC|process_0~8_combout\) # (\inst|SYNC|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|process_0~12_combout\,
	datab => \inst|SYNC|Add1~2_combout\,
	datac => \inst|SYNC|process_0~8_combout\,
	datad => \inst|SYNC|process_0~11_combout\,
	combout => \inst|SYNC|v_count~10_combout\);

-- Location: FF_X40_Y15_N13
\inst|SYNC|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count~10_combout\,
	sload => VCC,
	ena => \inst|SYNC|v_count[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(1));

-- Location: LCCOMB_X40_Y15_N14
\inst|SYNC|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~8_combout\ = (\inst|SYNC|v_count\(4) & (\inst|SYNC|Add1~7\ $ (GND))) # (!\inst|SYNC|v_count\(4) & (!\inst|SYNC|Add1~7\ & VCC))
-- \inst|SYNC|Add1~9\ = CARRY((\inst|SYNC|v_count\(4) & !\inst|SYNC|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|v_count\(4),
	datad => VCC,
	cin => \inst|SYNC|Add1~7\,
	combout => \inst|SYNC|Add1~8_combout\,
	cout => \inst|SYNC|Add1~9\);

-- Location: LCCOMB_X40_Y15_N2
\inst|SYNC|v_count[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[4]~7_combout\ = (\inst|SYNC|v_count[4]~1_combout\ & (\inst|SYNC|Add1~8_combout\ & ((\inst|SYNC|v_count[2]~0_combout\)))) # (!\inst|SYNC|v_count[4]~1_combout\ & ((\inst|SYNC|v_count\(4)) # ((\inst|SYNC|Add1~8_combout\ & 
-- \inst|SYNC|v_count[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count[4]~1_combout\,
	datab => \inst|SYNC|Add1~8_combout\,
	datac => \inst|SYNC|v_count\(4),
	datad => \inst|SYNC|v_count[2]~0_combout\,
	combout => \inst|SYNC|v_count[4]~7_combout\);

-- Location: FF_X40_Y15_N3
\inst|SYNC|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|v_count[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(4));

-- Location: LCCOMB_X40_Y15_N22
\inst|SYNC|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~16_combout\ = (\inst|SYNC|v_count\(8) & (\inst|SYNC|Add1~15\ $ (GND))) # (!\inst|SYNC|v_count\(8) & (!\inst|SYNC|Add1~15\ & VCC))
-- \inst|SYNC|Add1~17\ = CARRY((\inst|SYNC|v_count\(8) & !\inst|SYNC|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(8),
	datad => VCC,
	cin => \inst|SYNC|Add1~15\,
	combout => \inst|SYNC|Add1~16_combout\,
	cout => \inst|SYNC|Add1~17\);

-- Location: LCCOMB_X40_Y15_N24
\inst|SYNC|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~18_combout\ = \inst|SYNC|v_count\(9) $ (\inst|SYNC|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(9),
	cin => \inst|SYNC|Add1~17\,
	combout => \inst|SYNC|Add1~18_combout\);

-- Location: LCCOMB_X39_Y15_N28
\inst|SYNC|v_count[9]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[9]~3_combout\ = (\inst|SYNC|v_count[2]~0_combout\ & ((\inst|SYNC|Add1~18_combout\) # ((\inst|SYNC|v_count\(9) & !\inst|SYNC|v_count[4]~1_combout\)))) # (!\inst|SYNC|v_count[2]~0_combout\ & (((\inst|SYNC|v_count\(9) & 
-- !\inst|SYNC|v_count[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count[2]~0_combout\,
	datab => \inst|SYNC|Add1~18_combout\,
	datac => \inst|SYNC|v_count\(9),
	datad => \inst|SYNC|v_count[4]~1_combout\,
	combout => \inst|SYNC|v_count[9]~3_combout\);

-- Location: FF_X39_Y15_N29
\inst|SYNC|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|v_count[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(9));

-- Location: LCCOMB_X38_Y15_N2
\inst|SYNC|process_0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~12_combout\ = (((!\inst|SYNC|h_count\(7) & !\inst|SYNC|h_count\(8))) # (!\inst|SYNC|v_count\(9))) # (!\inst|SYNC|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(7),
	datab => \inst|SYNC|h_count\(9),
	datac => \inst|SYNC|h_count\(8),
	datad => \inst|SYNC|v_count\(9),
	combout => \inst|SYNC|process_0~12_combout\);

-- Location: LCCOMB_X39_Y15_N24
\inst|SYNC|v_count[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[4]~1_combout\ = ((!\inst|SYNC|process_0~11_combout\ & (!\inst|SYNC|process_0~8_combout\ & !\inst|SYNC|process_0~12_combout\))) # (!\inst|SYNC|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|process_0~11_combout\,
	datab => \inst|SYNC|Equal1~1_combout\,
	datac => \inst|SYNC|process_0~8_combout\,
	datad => \inst|SYNC|process_0~12_combout\,
	combout => \inst|SYNC|v_count[4]~1_combout\);

-- Location: LCCOMB_X40_Y15_N4
\inst|SYNC|v_count[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[3]~8_combout\ = (\inst|SYNC|Add1~6_combout\ & ((\inst|SYNC|v_count[2]~0_combout\) # ((\inst|SYNC|v_count\(3) & !\inst|SYNC|v_count[4]~1_combout\)))) # (!\inst|SYNC|Add1~6_combout\ & (((\inst|SYNC|v_count\(3) & 
-- !\inst|SYNC|v_count[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|Add1~6_combout\,
	datab => \inst|SYNC|v_count[2]~0_combout\,
	datac => \inst|SYNC|v_count\(3),
	datad => \inst|SYNC|v_count[4]~1_combout\,
	combout => \inst|SYNC|v_count[3]~8_combout\);

-- Location: FF_X40_Y15_N5
\inst|SYNC|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|v_count[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(3));

-- Location: LCCOMB_X40_Y15_N26
\inst|SYNC|v_count[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[2]~9_combout\ = (\inst|SYNC|Add1~4_combout\ & ((\inst|SYNC|v_count[2]~0_combout\) # ((\inst|SYNC|v_count\(2) & !\inst|SYNC|v_count[4]~1_combout\)))) # (!\inst|SYNC|Add1~4_combout\ & (((\inst|SYNC|v_count\(2) & 
-- !\inst|SYNC|v_count[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|Add1~4_combout\,
	datab => \inst|SYNC|v_count[2]~0_combout\,
	datac => \inst|SYNC|v_count\(2),
	datad => \inst|SYNC|v_count[4]~1_combout\,
	combout => \inst|SYNC|v_count[2]~9_combout\);

-- Location: FF_X40_Y15_N27
\inst|SYNC|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|v_count[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(2));

-- Location: LCCOMB_X39_Y15_N2
\inst|SYNC|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~7_combout\ = (!\inst|SYNC|v_count\(5) & (!\inst|SYNC|v_count\(4) & ((!\inst|SYNC|v_count\(2)) # (!\inst|SYNC|v_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(5),
	datab => \inst|SYNC|v_count\(3),
	datac => \inst|SYNC|v_count\(4),
	datad => \inst|SYNC|v_count\(2),
	combout => \inst|SYNC|process_0~7_combout\);

-- Location: LCCOMB_X39_Y15_N8
\inst|SYNC|v_count[8]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[8]~2_combout\ = (\inst|SYNC|v_count[2]~0_combout\ & ((\inst|SYNC|Add1~16_combout\) # ((\inst|SYNC|v_count\(8) & !\inst|SYNC|v_count[4]~1_combout\)))) # (!\inst|SYNC|v_count[2]~0_combout\ & (((\inst|SYNC|v_count\(8) & 
-- !\inst|SYNC|v_count[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count[2]~0_combout\,
	datab => \inst|SYNC|Add1~16_combout\,
	datac => \inst|SYNC|v_count\(8),
	datad => \inst|SYNC|v_count[4]~1_combout\,
	combout => \inst|SYNC|v_count[8]~2_combout\);

-- Location: FF_X39_Y15_N9
\inst|SYNC|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|v_count[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(8));

-- Location: LCCOMB_X39_Y15_N26
\inst|SYNC|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~8_combout\ = (!\inst|SYNC|v_count\(7) & (\inst|SYNC|process_0~7_combout\ & (!\inst|SYNC|v_count\(6) & !\inst|SYNC|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(7),
	datab => \inst|SYNC|process_0~7_combout\,
	datac => \inst|SYNC|v_count\(6),
	datad => \inst|SYNC|v_count\(8),
	combout => \inst|SYNC|process_0~8_combout\);

-- Location: LCCOMB_X39_Y15_N30
\inst|SYNC|v_count[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[2]~0_combout\ = (!\inst|SYNC|Equal1~1_combout\ & ((\inst|SYNC|process_0~11_combout\) # ((\inst|SYNC|process_0~8_combout\) # (\inst|SYNC|process_0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|process_0~11_combout\,
	datab => \inst|SYNC|Equal1~1_combout\,
	datac => \inst|SYNC|process_0~8_combout\,
	datad => \inst|SYNC|process_0~12_combout\,
	combout => \inst|SYNC|v_count[2]~0_combout\);

-- Location: LCCOMB_X40_Y15_N30
\inst|SYNC|v_count[7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[7]~6_combout\ = (\inst|SYNC|Add1~14_combout\ & ((\inst|SYNC|v_count[2]~0_combout\) # ((\inst|SYNC|v_count\(7) & !\inst|SYNC|v_count[4]~1_combout\)))) # (!\inst|SYNC|Add1~14_combout\ & (((\inst|SYNC|v_count\(7) & 
-- !\inst|SYNC|v_count[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|Add1~14_combout\,
	datab => \inst|SYNC|v_count[2]~0_combout\,
	datac => \inst|SYNC|v_count\(7),
	datad => \inst|SYNC|v_count[4]~1_combout\,
	combout => \inst|SYNC|v_count[7]~6_combout\);

-- Location: FF_X40_Y15_N31
\inst|SYNC|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|v_count[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(7));

-- Location: LCCOMB_X39_Y15_N10
\inst|SYNC|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|LessThan7~0_combout\ = (\inst|SYNC|v_count\(5) & (\inst|SYNC|v_count\(6) & (\inst|SYNC|v_count\(7) & \inst|SYNC|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(5),
	datab => \inst|SYNC|v_count\(6),
	datac => \inst|SYNC|v_count\(7),
	datad => \inst|SYNC|v_count\(8),
	combout => \inst|SYNC|LessThan7~0_combout\);

-- Location: LCCOMB_X38_Y15_N20
\inst|SYNC|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|LessThan7~1_combout\ = (!\inst|SYNC|LessThan7~0_combout\ & !\inst|SYNC|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SYNC|LessThan7~0_combout\,
	datad => \inst|SYNC|v_count\(9),
	combout => \inst|SYNC|LessThan7~1_combout\);

-- Location: FF_X39_Y15_N19
\inst|SYNC|pixel_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(7),
	sload => VCC,
	ena => \inst|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(7));

-- Location: FF_X39_Y14_N9
\inst|SYNC|pixel_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(2),
	sload => VCC,
	ena => \inst|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(2));

-- Location: LCCOMB_X35_Y14_N26
\inst|Ball_X_pos[0]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos[0]~29_combout\ = !\inst|Ball_X_pos\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Ball_X_pos\(0),
	combout => \inst|Ball_X_pos[0]~29_combout\);

-- Location: FF_X35_Y14_N27
\inst|Ball_X_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_pos[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_pos\(0));

-- Location: LCCOMB_X39_Y15_N4
\inst|SYNC|v_count~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count~11_combout\ = (\inst|SYNC|Add1~0_combout\ & ((\inst|SYNC|process_0~11_combout\) # ((\inst|SYNC|process_0~8_combout\) # (\inst|SYNC|process_0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|process_0~11_combout\,
	datab => \inst|SYNC|Add1~0_combout\,
	datac => \inst|SYNC|process_0~8_combout\,
	datad => \inst|SYNC|process_0~12_combout\,
	combout => \inst|SYNC|v_count~11_combout\);

-- Location: FF_X40_Y15_N15
\inst|SYNC|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count~11_combout\,
	sload => VCC,
	ena => \inst|SYNC|v_count[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(0));

-- Location: FF_X38_Y14_N15
\inst|SYNC|pixel_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(0),
	sload => VCC,
	ena => \inst|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(0));

-- Location: LCCOMB_X38_Y14_N14
\inst|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~1_cout\ = CARRY(\inst|SYNC|pixel_row\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_row\(0),
	datad => VCC,
	cout => \inst|LessThan3~1_cout\);

-- Location: LCCOMB_X38_Y14_N16
\inst|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~3_cout\ = CARRY((\inst|SYNC|pixel_row\(1) & (\inst|Ball_X_pos\(0) & !\inst|LessThan3~1_cout\)) # (!\inst|SYNC|pixel_row\(1) & ((\inst|Ball_X_pos\(0)) # (!\inst|LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(1),
	datab => \inst|Ball_X_pos\(0),
	datad => VCC,
	cin => \inst|LessThan3~1_cout\,
	cout => \inst|LessThan3~3_cout\);

-- Location: LCCOMB_X38_Y14_N18
\inst|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~5_cout\ = CARRY((\inst|Ball_Y_pos\(2) & (\inst|SYNC|pixel_row\(2) & !\inst|LessThan3~3_cout\)) # (!\inst|Ball_Y_pos\(2) & ((\inst|SYNC|pixel_row\(2)) # (!\inst|LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(2),
	datab => \inst|SYNC|pixel_row\(2),
	datad => VCC,
	cin => \inst|LessThan3~3_cout\,
	cout => \inst|LessThan3~5_cout\);

-- Location: LCCOMB_X38_Y14_N20
\inst|LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~7_cout\ = CARRY((\inst|SYNC|pixel_row\(3) & (!\inst|Ball_Y_pos\(3) & !\inst|LessThan3~5_cout\)) # (!\inst|SYNC|pixel_row\(3) & ((!\inst|LessThan3~5_cout\) # (!\inst|Ball_Y_pos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(3),
	datab => \inst|Ball_Y_pos\(3),
	datad => VCC,
	cin => \inst|LessThan3~5_cout\,
	cout => \inst|LessThan3~7_cout\);

-- Location: LCCOMB_X38_Y14_N22
\inst|LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~9_cout\ = CARRY((\inst|SYNC|pixel_row\(4) & ((!\inst|LessThan3~7_cout\) # (!\inst|Add3~0_combout\))) # (!\inst|SYNC|pixel_row\(4) & (!\inst|Add3~0_combout\ & !\inst|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(4),
	datab => \inst|Add3~0_combout\,
	datad => VCC,
	cin => \inst|LessThan3~7_cout\,
	cout => \inst|LessThan3~9_cout\);

-- Location: LCCOMB_X38_Y14_N24
\inst|LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~11_cout\ = CARRY((\inst|SYNC|pixel_row\(5) & (\inst|Add3~2_combout\ & !\inst|LessThan3~9_cout\)) # (!\inst|SYNC|pixel_row\(5) & ((\inst|Add3~2_combout\) # (!\inst|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(5),
	datab => \inst|Add3~2_combout\,
	datad => VCC,
	cin => \inst|LessThan3~9_cout\,
	cout => \inst|LessThan3~11_cout\);

-- Location: LCCOMB_X38_Y14_N26
\inst|LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~13_cout\ = CARRY((\inst|SYNC|pixel_row\(6) & ((!\inst|LessThan3~11_cout\) # (!\inst|Add3~4_combout\))) # (!\inst|SYNC|pixel_row\(6) & (!\inst|Add3~4_combout\ & !\inst|LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(6),
	datab => \inst|Add3~4_combout\,
	datad => VCC,
	cin => \inst|LessThan3~11_cout\,
	cout => \inst|LessThan3~13_cout\);

-- Location: LCCOMB_X38_Y14_N28
\inst|LessThan3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~15_cout\ = CARRY((\inst|Add3~6_combout\ & ((!\inst|LessThan3~13_cout\) # (!\inst|SYNC|pixel_row\(7)))) # (!\inst|Add3~6_combout\ & (!\inst|SYNC|pixel_row\(7) & !\inst|LessThan3~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~6_combout\,
	datab => \inst|SYNC|pixel_row\(7),
	datad => VCC,
	cin => \inst|LessThan3~13_cout\,
	cout => \inst|LessThan3~15_cout\);

-- Location: LCCOMB_X38_Y14_N30
\inst|LessThan3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~16_combout\ = (\inst|SYNC|pixel_row\(8) & ((!\inst|LessThan3~15_cout\) # (!\inst|Add3~8_combout\))) # (!\inst|SYNC|pixel_row\(8) & (!\inst|Add3~8_combout\ & !\inst|LessThan3~15_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(8),
	datab => \inst|Add3~8_combout\,
	cin => \inst|LessThan3~15_cout\,
	combout => \inst|LessThan3~16_combout\);

-- Location: FF_X36_Y14_N15
\inst|Ball_X_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_pos[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_pos\(7));

-- Location: FF_X36_Y14_N9
\inst|Ball_X_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_pos[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_pos\(4));

-- Location: LCCOMB_X36_Y14_N20
\inst|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~0_combout\ = (\inst|Ball_X_pos\(3) & (\inst|Ball_X_pos\(4) $ (VCC))) # (!\inst|Ball_X_pos\(3) & (\inst|Ball_X_pos\(4) & VCC))
-- \inst|Add1~1\ = CARRY((\inst|Ball_X_pos\(3) & \inst|Ball_X_pos\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(3),
	datab => \inst|Ball_X_pos\(4),
	datad => VCC,
	combout => \inst|Add1~0_combout\,
	cout => \inst|Add1~1\);

-- Location: LCCOMB_X36_Y14_N22
\inst|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~2_combout\ = (\inst|Ball_X_pos\(5) & (!\inst|Add1~1\)) # (!\inst|Ball_X_pos\(5) & ((\inst|Add1~1\) # (GND)))
-- \inst|Add1~3\ = CARRY((!\inst|Add1~1\) # (!\inst|Ball_X_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(5),
	datad => VCC,
	cin => \inst|Add1~1\,
	combout => \inst|Add1~2_combout\,
	cout => \inst|Add1~3\);

-- Location: LCCOMB_X36_Y14_N24
\inst|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~4_combout\ = (\inst|Ball_X_pos\(6) & (\inst|Add1~3\ $ (GND))) # (!\inst|Ball_X_pos\(6) & (!\inst|Add1~3\ & VCC))
-- \inst|Add1~5\ = CARRY((\inst|Ball_X_pos\(6) & !\inst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(6),
	datad => VCC,
	cin => \inst|Add1~3\,
	combout => \inst|Add1~4_combout\,
	cout => \inst|Add1~5\);

-- Location: LCCOMB_X36_Y14_N28
\inst|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~8_combout\ = (\inst|Ball_X_pos\(8) & (\inst|Add1~7\ $ (GND))) # (!\inst|Ball_X_pos\(8) & (!\inst|Add1~7\ & VCC))
-- \inst|Add1~9\ = CARRY((\inst|Ball_X_pos\(8) & !\inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_X_pos\(8),
	datad => VCC,
	cin => \inst|Add1~7\,
	combout => \inst|Add1~8_combout\,
	cout => \inst|Add1~9\);

-- Location: LCCOMB_X36_Y14_N30
\inst|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~10_combout\ = \inst|Add1~9\ $ (\inst|Ball_X_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|Ball_X_pos\(9),
	cin => \inst|Add1~9\,
	combout => \inst|Add1~10_combout\);

-- Location: FF_X37_Y14_N25
\inst|SYNC|pixel_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|h_count\(1),
	sload => VCC,
	ena => \inst|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(1));

-- Location: LCCOMB_X37_Y14_N0
\inst|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~1_cout\ = CARRY((!\inst|Ball_X_pos\(0) & \inst|SYNC|pixel_column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(0),
	datab => \inst|SYNC|pixel_column\(0),
	datad => VCC,
	cout => \inst|LessThan1~1_cout\);

-- Location: LCCOMB_X37_Y14_N2
\inst|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~3_cout\ = CARRY((\inst|Ball_X_pos\(1) & ((!\inst|LessThan1~1_cout\) # (!\inst|SYNC|pixel_column\(1)))) # (!\inst|Ball_X_pos\(1) & (!\inst|SYNC|pixel_column\(1) & !\inst|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(1),
	datab => \inst|SYNC|pixel_column\(1),
	datad => VCC,
	cin => \inst|LessThan1~1_cout\,
	cout => \inst|LessThan1~3_cout\);

-- Location: LCCOMB_X37_Y14_N4
\inst|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~5_cout\ = CARRY((\inst|SYNC|pixel_column\(2) & ((!\inst|LessThan1~3_cout\) # (!\inst|Ball_X_pos\(2)))) # (!\inst|SYNC|pixel_column\(2) & (!\inst|Ball_X_pos\(2) & !\inst|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(2),
	datab => \inst|Ball_X_pos\(2),
	datad => VCC,
	cin => \inst|LessThan1~3_cout\,
	cout => \inst|LessThan1~5_cout\);

-- Location: LCCOMB_X37_Y14_N6
\inst|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~7_cout\ = CARRY((\inst|Ball_X_pos\(3) & (!\inst|SYNC|pixel_column\(3) & !\inst|LessThan1~5_cout\)) # (!\inst|Ball_X_pos\(3) & ((!\inst|LessThan1~5_cout\) # (!\inst|SYNC|pixel_column\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(3),
	datab => \inst|SYNC|pixel_column\(3),
	datad => VCC,
	cin => \inst|LessThan1~5_cout\,
	cout => \inst|LessThan1~7_cout\);

-- Location: LCCOMB_X37_Y14_N8
\inst|LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~9_cout\ = CARRY((\inst|SYNC|pixel_column\(4) & ((!\inst|LessThan1~7_cout\) # (!\inst|Add1~0_combout\))) # (!\inst|SYNC|pixel_column\(4) & (!\inst|Add1~0_combout\ & !\inst|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(4),
	datab => \inst|Add1~0_combout\,
	datad => VCC,
	cin => \inst|LessThan1~7_cout\,
	cout => \inst|LessThan1~9_cout\);

-- Location: LCCOMB_X37_Y14_N10
\inst|LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~11_cout\ = CARRY((\inst|SYNC|pixel_column\(5) & (\inst|Add1~2_combout\ & !\inst|LessThan1~9_cout\)) # (!\inst|SYNC|pixel_column\(5) & ((\inst|Add1~2_combout\) # (!\inst|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(5),
	datab => \inst|Add1~2_combout\,
	datad => VCC,
	cin => \inst|LessThan1~9_cout\,
	cout => \inst|LessThan1~11_cout\);

-- Location: LCCOMB_X37_Y14_N12
\inst|LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~13_cout\ = CARRY((\inst|SYNC|pixel_column\(6) & ((!\inst|LessThan1~11_cout\) # (!\inst|Add1~4_combout\))) # (!\inst|SYNC|pixel_column\(6) & (!\inst|Add1~4_combout\ & !\inst|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(6),
	datab => \inst|Add1~4_combout\,
	datad => VCC,
	cin => \inst|LessThan1~11_cout\,
	cout => \inst|LessThan1~13_cout\);

-- Location: LCCOMB_X37_Y14_N14
\inst|LessThan1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~15_cout\ = CARRY((\inst|Add1~6_combout\ & ((!\inst|LessThan1~13_cout\) # (!\inst|SYNC|pixel_column\(7)))) # (!\inst|Add1~6_combout\ & (!\inst|SYNC|pixel_column\(7) & !\inst|LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~6_combout\,
	datab => \inst|SYNC|pixel_column\(7),
	datad => VCC,
	cin => \inst|LessThan1~13_cout\,
	cout => \inst|LessThan1~15_cout\);

-- Location: LCCOMB_X37_Y14_N16
\inst|LessThan1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~17_cout\ = CARRY((\inst|SYNC|pixel_column\(8) & ((!\inst|LessThan1~15_cout\) # (!\inst|Add1~8_combout\))) # (!\inst|SYNC|pixel_column\(8) & (!\inst|Add1~8_combout\ & !\inst|LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(8),
	datab => \inst|Add1~8_combout\,
	datad => VCC,
	cin => \inst|LessThan1~15_cout\,
	cout => \inst|LessThan1~17_cout\);

-- Location: LCCOMB_X37_Y14_N18
\inst|LessThan1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~18_combout\ = (\inst|SYNC|pixel_column\(9) & ((\inst|LessThan1~17_cout\) # (!\inst|Add1~10_combout\))) # (!\inst|SYNC|pixel_column\(9) & (\inst|LessThan1~17_cout\ & !\inst|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(9),
	datad => \inst|Add1~10_combout\,
	cin => \inst|LessThan1~17_cout\,
	combout => \inst|LessThan1~18_combout\);

-- Location: LCCOMB_X38_Y14_N12
\inst|SYNC|green_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|green_out~2_combout\ = (\inst|SYNC|green_out~1_combout\ & (!\inst|LessThan0~18_combout\ & (!\inst|LessThan3~16_combout\ & !\inst|LessThan1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|green_out~1_combout\,
	datab => \inst|LessThan0~18_combout\,
	datac => \inst|LessThan3~16_combout\,
	datad => \inst|LessThan1~18_combout\,
	combout => \inst|SYNC|green_out~2_combout\);

-- Location: FF_X38_Y14_N13
\inst|SYNC|green_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|green_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|green_out~q\);

-- Location: FF_X37_Y14_N9
\inst|SYNC|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|video_on_h~q\);

-- Location: LCCOMB_X40_Y14_N24
\inst|SYNC|video_on\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|video_on~combout\ = (\inst|SYNC|video_on_v~q\ & \inst|SYNC|video_on_h~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|video_on_v~q\,
	datac => \inst|SYNC|video_on_h~q\,
	combout => \inst|SYNC|video_on~combout\);

-- Location: FF_X40_Y14_N25
\inst|SYNC|blue_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|video_on~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|blue_out~q\);

-- Location: LCCOMB_X37_Y15_N6
\inst|SYNC|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~2_combout\ = (\inst|SYNC|h_count\(2)) # ((\inst|SYNC|h_count\(1) & (\inst|SYNC|h_count\(0) & !\inst|SYNC|h_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(2),
	datab => \inst|SYNC|h_count\(1),
	datac => \inst|SYNC|h_count\(0),
	datad => \inst|SYNC|h_count\(5),
	combout => \inst|SYNC|process_0~2_combout\);

-- Location: LCCOMB_X37_Y15_N8
\inst|SYNC|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~3_combout\ = (\inst|SYNC|h_count\(4) & ((\inst|SYNC|process_0~2_combout\) # (\inst|SYNC|h_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(4),
	datab => \inst|SYNC|process_0~2_combout\,
	datad => \inst|SYNC|h_count\(3),
	combout => \inst|SYNC|process_0~3_combout\);

-- Location: LCCOMB_X37_Y15_N4
\inst|SYNC|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~1_combout\ = (\inst|SYNC|h_count\(9) & (!\inst|SYNC|h_count\(8) & \inst|SYNC|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(9),
	datab => \inst|SYNC|h_count\(8),
	datad => \inst|SYNC|h_count\(7),
	combout => \inst|SYNC|process_0~1_combout\);

-- Location: LCCOMB_X37_Y15_N0
\inst|SYNC|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~4_combout\ = ((\inst|SYNC|h_count\(6) & (\inst|SYNC|process_0~3_combout\ & \inst|SYNC|h_count\(5))) # (!\inst|SYNC|h_count\(6) & (!\inst|SYNC|process_0~3_combout\ & !\inst|SYNC|h_count\(5)))) # (!\inst|SYNC|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(6),
	datab => \inst|SYNC|process_0~3_combout\,
	datac => \inst|SYNC|process_0~1_combout\,
	datad => \inst|SYNC|h_count\(5),
	combout => \inst|SYNC|process_0~4_combout\);

-- Location: FF_X37_Y15_N1
\inst|SYNC|horiz_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|horiz_sync~q\);

-- Location: FF_X37_Y15_N5
\inst|SYNC|horiz_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|horiz_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|horiz_sync_out~q\);

-- Location: LCCOMB_X39_Y14_N2
\inst|SYNC|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~5_combout\ = ((\inst|SYNC|v_count\(1) $ (!\inst|SYNC|v_count\(0))) # (!\inst|SYNC|v_count\(2))) # (!\inst|SYNC|v_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(3),
	datab => \inst|SYNC|v_count\(1),
	datac => \inst|SYNC|v_count\(2),
	datad => \inst|SYNC|v_count\(0),
	combout => \inst|SYNC|process_0~5_combout\);

-- Location: LCCOMB_X39_Y15_N6
\inst|SYNC|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~6_combout\ = (\inst|SYNC|v_count\(9)) # ((\inst|SYNC|process_0~5_combout\) # ((\inst|SYNC|v_count\(4)) # (!\inst|SYNC|LessThan7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(9),
	datab => \inst|SYNC|process_0~5_combout\,
	datac => \inst|SYNC|v_count\(4),
	datad => \inst|SYNC|LessThan7~0_combout\,
	combout => \inst|SYNC|process_0~6_combout\);

-- Location: FF_X39_Y15_N7
\inst|SYNC|vert_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|SYNC|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|vert_sync~q\);

-- Location: FF_X40_Y15_N17
\inst|SYNC|vert_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|SYNC|vert_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|vert_sync_out~q\);

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

-- Location: IOIBUF_X0_Y21_N8
\bt2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt2,
	o => \bt2~input_o\);
END structure;


