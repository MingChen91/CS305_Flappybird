library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity renderer is 
    port (
		mouse_on: in std_logic;
		mouse_color : in std_logic_vector (7 downto 0);
		pipe_on: in std_logic;
		pipe_color: in std_logic_vector (7 downto 0);
		bird_on: in std_logic;
		bird_color: in std_logic_vector(7 downto 0);
		health_on: in std_logic;
		health_color: in std_logic_vector(7 downto 0);
		item_on: in std_logic;
		item_color: in std_logic_vector(7 downto 0);
		clk: in std_logic;
		r,g: out std_logic_vector(2 downto 0);
		b: out std_logic_vector(1 downto 0);
		text_on: in std_logic;
		bird_hit: in std_logic_vector(3 downto 0);
		background_colour : in std_logic_vector(7 downto 0);
		menu_on: in std_logic;
		menu_color: in std_logic_vector(7 downto 0);
		state: in std_logic_vector(3 downto 0)
    );
end entity renderer;


architecture behaviour of renderer is 
	 
begin
    pixel_render: process 
    -- decides what colour the current pixel should be 
    -- sorted in an order of importance. 
    begin
	 wait until clk'event and clk ='1';
        if mouse_on = '1' then
            r<=mouse_color(7 downto 5);
            g<=mouse_color(4 downto 2);
            b<=mouse_color(1 downto 0);
        elsif menu_on = '1' then 
            r<=menu_color(7 downto 5);
            g<=menu_color(4 downto 2);
            b<=menu_color(1 downto 0);
        elsif bird_on = '1' and state/= "0000" then 
            r<=bird_color(7 downto 5);
            g<=bird_color(4 downto 2);
            b<=bird_color(1 downto 0);              
        elsif pipe_on = '1' then
            r<=pipe_color(7 downto 5);
            g<=pipe_color(4 downto 2);
            b<=pipe_color(1 downto 0); 
        elsif health_on = '1' and state /= "0000" then
            r<=health_color(7 downto 5);
            g<=health_color(4 downto 2);
            b<=health_color(1 downto 0);
        elsif item_on = '1' then
            r<=item_color(7 downto 5);
            g<=item_color(4 downto 2);
            b<=item_color(1 downto 0);			
        elsif text_on = '1' and state /= "0000" then
            r<="111";
            g<="111";
            b<="11";
        else 
			case state is
				--if menu or end game, background is dimmed 
				when "0000"|"0011" =>
					r<="0"&background_colour(7 downto 6);
					g<="0"&background_colour(4 downto 3);
					b<="0"&background_colour(1);
				when others=>								
					if bird_hit(0) ='0' then 
						r<="111";
						g<=background_colour(4 downto 2);
						b<=background_colour(1 downto 0);
					else
						r<=background_colour(7 downto 5);
						g<=background_colour(4 downto 2);
						b<=background_colour(1 downto 0);
					end if;
			end case;
        end if;
  
    end process pixel_render;
end architecture behaviour;