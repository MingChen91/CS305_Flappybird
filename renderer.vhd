library ieee;
use ieee.std_logic_1164.all;

entity renderer is 
    port (
        mouse_on: in std_logic;
        pipe_on: in std_logic;
        bird_on: in std_logic;
        pixel_x: in std_logic;
        r,g,b: out std_logic;
        text_on: in std_logic
    );
end entity renderer;


architecture behaviour of renderer is 
begin
    pixel_render: process (pixel_x)
    -- decides what colour the current pixel should be 
    -- sorted in an order of importance. 
    begin
        if mouse_on = '1' then 
        -- if cursor collides with pipe, turn red
            if pipe_on = '1' then
                r<='1';
                g<='0';
                b<='0';
            else 
                r<='1';
                g<='1';
                b<='1';
            end if;
        elsif bird_on= '1' then
            r<='1';
            g<='0';
            b<='0';                
        elsif pipe_on = '1' then
            r<='0';
            g<='1';
            b<='0';
        elsif text_on = '1' then
            r<='0';
            g<='1';
            b<='1';
        else 
            r<='0';
            g<='0';
            b<='1';
        end if;
    end process pixel_render;
end architecture behaviour;