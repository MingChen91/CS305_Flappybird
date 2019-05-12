library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- This determines whether the mouse is at the current pixel location
-- and outputs a boolean.
entity cursor is 
    port (
        pixel_x, pixel_y: in  std_logic_vector (9 downto 0);
        mouse_x, mouse_y: in  std_logic_vector(9 downto 0);
        mouse_on: out std_logic
    );
end entity cursor;

architecture behaviour of cursor is 
    constant size : unsigned(9 downto 0) := "0000001000";
begin
    mouse_on <= '1' when unsigned(pixel_x)>= unsigned(mouse_x) and unsigned(pixel_x)<=unsigned (mouse_x) + size 
                        and unsigned(pixel_y) >= unsigned(mouse_y) and unsigned(pixel_y) <= unsigned(mouse_y) + size else
                '0';
end architecture behaviour;