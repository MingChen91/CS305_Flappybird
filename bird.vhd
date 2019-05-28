library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bird is 
    port (
		pixel_x,pixel_y : in std_logic_vector(9 downto 0);
		mouse_left : in std_logic;
		vertical_sync, enable, bird_hit : in std_logic;
		color: out std_logic_vector(7 downto 0);
		bird_location : out signed(21 downto 0);
		bird_on: out std_logic;
		clk : in std_logic;
		mouse_right : in std_logic;
		level : in std_logic_vector (1 downto 0);
		restart : in std_logic
    );
end entity bird;

architecture behaviour of bird is
	component patrick_rom 
		port (
			pixel_x,pixel_y : in std_logic_vector (4 downto 0);
			clock		: in std_logic  := '1';
			q		: out std_logic_vector (7 downto 0)
		);
	end component;

	constant bird_height : signed(10 downto 0) := to_signed(32,11);
	constant bird_width : signed (10 downto 0) := to_signed(32,11);
	signal bird_x, bird_y : signed (10 downto 0);
	signal bird_y_speed: signed (10 downto 0);
	signal color_int: std_logic_vector (7 downto 0);
	signal rom_x,rom_y : std_logic_vector (4 downto 0);
	begin
-- where the bird hitbox is
	bird_x <= to_signed(100,11);

	bird_on <= '1' when signed("0"&pixel_x) >= bird_x and signed("0"&pixel_x) <bird_x + bird_width
                and signed("0"&pixel_y) >= bird_y and signed("0"&pixel_y) < bird_y + bird_height
				and color_int /= "01101101"
            else '0';
			
--bird colour 
	bird_colour : patrick_rom port map (
		pixel_x=> rom_x,
		pixel_y=> rom_y,
		clock => clk,
		q=>color_int
	);

	rom_x<= std_logic_vector(signed(pixel_x(4 downto 0))-bird_x(4 downto 0)+"00010");
	rom_y<= std_logic_vector(signed(pixel_y(4 downto 0))-bird_y(4 downto 0));
	color<=color_int;
	
	bird_y_speed <= to_signed(4,11) when mouse_right = '1' and level = "00" else  
						to_signed(5,11) when mouse_right = '1' and level = "01" else 
						to_signed(7,11) when mouse_right = '1' and level = "10" else 
						to_signed(9,11) when mouse_right = '1' and level = "11" else to_signed(2,11);
						
	bird_move:process
	begin
		-- if left click is pressed, fly up.
		wait until vertical_sync'event and vertical_sync ='1';
		if restart = '1' then 
			bird_y <= to_signed(200, 11);
		elsif ((enable = '1')AND (bird_hit = '1')) then
			--if mouse is clicked move up
			if mouse_left = '1' then 
				--cap to the top of the screen
				if bird_y <= to_signed(0,11) then
					bird_y <= to_signed(0,11);
				else 
					bird_y <= bird_y - bird_y_speed;
				end if;
			else
				--otherwise fall
				if bird_y + bird_height >= to_signed(448,11) then
					bird_y <= to_signed(448,11) - bird_height;
				else 
					bird_y <= bird_y + bird_y_speed;
				end if;
			end if;
		end if;
		
		bird_location(10 downto 0) <= bird_y;
		bird_location(21 downto 11) <= bird_x;

	end process bird_move;

end architecture;