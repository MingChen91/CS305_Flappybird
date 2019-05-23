library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bird is 
    port (
        pixel_x,pixel_y : in std_logic_vector(9 downto 0);
        mouse_left : in std_logic;
        vertical_sync: in std_logic;
		color: out std_logic_vector(2 downto 0);
        bird_on: out std_logic
    );
end entity bird;

architecture behaviour of bird is
    constant bird_height : unsigned(9 downto 0) := to_unsigned(20,10);
    constant bird_width : unsigned (9 downto 0) := to_unsigned(20,10);
    signal bird_x, bird_y : unsigned (9 downto 0);
    signal bird_y_speed: unsigned (9 downto 0);
	 	 
    begin
-- where the bird hitbox is
bird_x <= to_unsigned(100,10);

bird_on <= '1' when unsigned(pixel_x) >= bird_x and unsigned(pixel_x) <=bird_x + bird_width
                and unsigned(pixel_y) >= bird_y and unsigned(pixel_y) <= bird_y + bird_height
            else '0';
color <= "001";
bird_move:process
begin
    -- if left click is pressed, fly up.
    wait until vertical_sync'event and vertical_sync ='1';
    if mouse_left = '1' then 
        if bird_y <= to_unsigned(0,10) then
            null;
        else 
            bird_y_speed <= to_unsigned(2,10);
            bird_y <= bird_y - bird_y_speed;
        end if;
        
    else
        if bird_y + bird_height >= to_unsigned(480,10) then
            null;
        else 
            bird_y_speed <= to_unsigned(2,10);
            bird_y <= bird_y + bird_y_speed;
        end if;
        
    end if;
    

end process bird_move;

end architecture;