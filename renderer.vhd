library ieee;
use ieee.std_logic_1164.all;

entity renderer is 
    port (
        mouse_on: in std_logic;
        pipe_on: in std_logic;
        bird_on: in std_logic;
		  bird_color: in std_logic_vector(7 downto 0);
        pixel_x: in std_logic;
        r,g: out std_logic_vector(2 downto 0);
		  b: out std_logic_vector(1 downto 0);
        text_on: in std_logic;
        vsync: in std_logic
    );
end entity renderer;


architecture behaviour of renderer is 
    signal hurt : std_logic :='0';
begin
    vsync_updates : process
	 begin
    -- reset hurt every vsync
	 wait until vsync = '1' and vsync'event;

    end process vsync_updates;

    pixel_render: process (pixel_x)
    -- decides what colour the current pixel should be 
    -- sorted in an order of importance. 
    begin
        if mouse_on = '1' then 
				r<="111";
				g<="111";
				b<="11";
        elsif bird_on = '1' then
            r<=bird_color(2 downto 0);
            g<=bird_color(5 downto 3);
            b<=bird_color(7 downto 6);              
        elsif pipe_on = '1' then
            r<="000";
            g<="111";
            b<="00";
        elsif text_on = '1' then
            r<="000";
            g<="111";
            b<="11";
        else 
				r<="000";
				g<="000";
				b<="11";
        end if;
    end process pixel_render;
end architecture behaviour;