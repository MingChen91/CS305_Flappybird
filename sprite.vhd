library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sprite is 
    port (
		clk_25Mhz : in std_logic;
        pixel_x,pixel_y : in std_logic_vector(9 downto 0);
        color: out std_logic_vector(7 downto 0);
        sprite_on: out std_logic
    );
end entity sprite;