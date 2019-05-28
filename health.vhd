library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity health is 
    port (
		pixel_x,pixel_y : in std_logic_vector(9 downto 0);
		vertical_sync, enable : in std_logic;
		color: out std_logic_vector(7 downto 0);
		bird_hit, restart, bird_heal: in std_logic;
		health_on: out std_logic;
		dead: out std_logic := '0';
		clk : in std_logic
    );
end entity health;

architecture behaviour of health is

	constant heal_amount : signed(10 downto 0) := to_signed(35,11);
	constant default_health : signed(10 downto 0) := to_signed(150,11);
	constant damage : signed(10 downto 0) := to_signed(25,11);
	constant health_height : signed(10 downto 0) := to_signed(32,11);
	signal health_width : signed (10 downto 0) := to_signed(150,11);
	constant floor_height : signed (10 downto 0) := 480 - to_signed(32,11);
	constant health_x : signed (10 downto 0) :=to_signed(450,11);
	constant health_y : signed (10 downto 0) :=to_signed(400,11);
	signal counter : integer range 0 to 9;
	signal health_x_speed: signed (10 downto 0);
	signal flag, flagheal : std_logic:= '0';

	signal health_speed: signed (10 downto 0);
	begin 
	health_on <= '1' when signed("0"&pixel_x) >= health_x and signed("0"&pixel_x) <health_x + health_width 
					and signed("0"&pixel_y) > health_y and signed("0"&pixel_y) > floor_height
			else '0';
	
	color<= "10101010";

		
	health_decrease:process
	begin
		
		wait until vertical_sync'event and vertical_sync ='1';
			if (restart ='1') then
				dead<='0';
				health_width<=default_health;
			elsif( enable = '1') then
				--hit pipe
				if (bird_hit ='0' and flag = '0') then
					flag <='1';
					health_width <= health_width - damage;
				--hit item
				elsif (bird_heal ='0' and flagheal = '0') then
					flagheal <='1';
					--health_x_speed<= to_signed(10,11);
					--health_width <= to_signed(150,11);
					-- hp caps at 150
					if health_width + heal_amount >=default_health then 
						health_width <= default_health;
					else 
						health_width <= health_width + heal_amount;
					end if;
				end if;
				
				if(counter = 2) then
					health_x_speed <= to_signed(1,11);
					--if health decreases to 0
					if ((health_width)<=to_signed(0,11)) then
						dead <= '1';
						--health_width<=to_signed(150,11);
					else 
						health_width <= health_width - health_x_speed;
					end if; 
					counter <=0;
				end if;
				counter <= counter +1;
			end if;
			if( bird_hit = '1') then
				flag <='0';
			end if;
			if(bird_heal = '1') then 
				flagheal <='0';
			end if;
	end process health_decrease;
end architecture;