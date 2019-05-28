-- Bouncing Ball Video 
--
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;
LIBRARY lpm;
USE lpm.lpm_components.ALL;

package de0core2 is
    component vga_sync
    port(
        clock_25mhz, red, green, blue	: in std_logic;
        red_out, green_out, blue_out	: out std_logic;
        horiz_sync_out, vert_sync_out	: out std_logic;
        pixel_row, pixel_column			: out std_logic_vector(9 downto 0)
        );
    end component;
end de0core2;


-- control a ball on the screen with the mouse

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
LIBRARY work;
USE work.de0core2.all;

entity mouse_controlled_ball is 
Generic(ADDR_WIDTH: integer := 12; DATA_WIDTH: integer := 1);
    port (
        signal leftclick, rightclick, 
                clock : in std_logic;
        signal mouse_col, mouse_row : in std_logic_vector(9 downto 0); --used to control the ball
        signal red,green,blue 			: out std_logic;
        signal horiz_sync,vert_sync		: out std_logic
        );		
end mouse_controlled_ball;


architecture behaviour of mouse_controlled_ball is 
--video display signals
signal red_data, green_data, blue_data, vert_sync_int,
		reset, ball_on, direction			: std_logic;
signal size 								: std_logic_vector(9 downto 0);  
signal ball_y_pos, ball_x_pos				: std_logic_vector(9 downto 0);
signal pixel_row, pixel_column				: std_logic_vector(9 downto 0); 

begin
    display: component vga_sync port map(
        clock_25mhz=>clock,
        red => red_data, green => green_data, blue => blue_data,	
        red_out => red, green_out => green, blue_out => blue,
        horiz_sync_out => horiz_sync, vert_sync_out => vert_sync_int,
        pixel_row => pixel_row, pixel_column => pixel_column
    );

    Size <= CONV_STD_LOGIC_VECTOR(8,10);
	 
    Ball_X_pos <= mouse_col;
    Ball_y_pos<=mouse_row;


    -- Colors for pixel data on video signal
    Red_Data <=  '1';
    -- Turn off Green and Blue when displaying ball
    Green_Data <= NOT Ball_on;
    Blue_Data <=  NOT Ball_on;

    rgb_display: process (ball_x_pos, ball_y_pos, pixel_column, pixel_row, size)
    begin
    -- set ball_on ='1' to display ball
    if ('0' & ball_x_pos <= pixel_column + size) and
        -- compare positive numbers only
        (ball_x_pos + size >= '0' & pixel_column) and
        ('0' & ball_y_pos <= pixel_row + size) and
        (ball_y_pos + size >= '0' & pixel_row ) then
            ball_on <= '1';
        else
            ball_on <= '0';
    end if;
    end process rgb_display;


end architecture behaviour;
     