library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pipe is 
    port (
        pixel_x,pixel_y : in std_logic_vector(9 downto 0);
        vertical_sync: in std_logic;
        pipe_on: out std_logic;
        enable: in std_logic
    );
end entity pipe;

architecture behaviour of pipe is
    constant pipe_height : unsigned(9 downto 0) := to_unsigned(200,10);
    constant pipe_width : unsigned (9 downto 0) := to_unsigned(20,10);
    signal pipe_x, pipe_y : unsigned (9 downto 0);
    signal pipe_x_speed: unsigned (9 downto 0);

    begin
-- where the pipe hitbox is
pipe_y <= (others=>'0');
pipe_on <= '1' when unsigned(pixel_x) >= pipe_x and unsigned(pixel_x) <=pipe_x + pipe_width
                and unsigned(pixel_y) >= pipe_y and unsigned(pixel_y) <= pipe_y+ pipe_height
            else '0';


move_pipe:process
begin
    -- moves the pipe left every vsync
    wait until vertical_sync'event and vertical_sync ='1';
    if enable = '1' then 
        pipe_x_speed <= to_unsigned(2,10);
        if pipe_x<= to_unsigned(0,10) then
            pipe_x<=to_unsigned(640,10);
        else 
            pipe_x <= pipe_x - pipe_x_speed;
        end if;
    end if;
end process move_pipe;


end architecture;