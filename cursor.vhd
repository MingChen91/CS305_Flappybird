library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- This determines whether the mouse is at the current pixel location
-- and outputs a boolean.
entity cursor is 
    port (
		pixel_x, pixel_y: in  std_logic_vector (9 downto 0);
		mouse_x, mouse_y: in  std_logic_vector(9 downto 0);
		mouse_Location: out unsigned(19 downto 0);
		mouse_on: out std_logic;
		clk:in std_logic;
		color : out std_logic_vector (7 downto 0)
    );
end entity cursor;

architecture behaviour of cursor is 
	component cursor_rom 
		port(
			pixel_x,pixel_y : in std_logic_vector(3 downto 0);
			clock : in std_logic  := '1';
			q : out std_logic_vector (7 downto 0)
		);
	end component;
	constant size : unsigned(9 downto 0) := to_unsigned(16,10);
	--intermediate signals
	signal color_int: std_logic_vector(7 downto 0);
	signal rom_x, rom_y : std_logic_vector(3 downto 0);
	
	
begin
	--cursor color component
	cursor: cursor_rom port map (
		pixel_x => rom_x,
		pixel_y => rom_y,
		clock => clk,
		q=> color_int
	);
	
	rom_x<= std_logic_vector(unsigned(pixel_x(3 downto 0))- unsigned(mouse_x(3 downto 0))+"0010");
	rom_y<= std_logic_vector(unsigned(pixel_y(3 downto 0))- unsigned(mouse_y(3 downto 0)));
	color<=color_int;

	--mouse hitbox
    mouse_on <= '1' when unsigned(pixel_x)>= unsigned(mouse_x) and unsigned(pixel_x)<unsigned (mouse_x) + size 
                        and unsigned(pixel_y) >= unsigned(mouse_y) and unsigned(pixel_y) < unsigned(mouse_y) + size
								and color_int /= "00011100"
					else '0';
			
	mouse_Location(9 downto 0) <=unsigned(mouse_y);
	mouse_Location(19 downto 10) <=unsigned(mouse_x);
end architecture behaviour;