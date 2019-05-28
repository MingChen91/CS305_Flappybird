library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity item is 
    port (
		pixel_x,pixel_y : in std_logic_vector(9 downto 0);
		vertical_sync, enable : in std_logic;
		color: out std_logic_vector(7 downto 0);
		bird_hit, restart: in std_logic;
		item_on: out std_logic;
		level: in std_logic_vector(1 downto 0);
		clk : in std_logic;
		item_Location: out signed(21 downto 0)
    );
end entity item;

architecture behaviour of item is
	--sprite
	component spongebob_rom
		port (
			pixel_x,pixel_y : in std_logic_vector (4 downto 0);
			clock		: in std_logic  := '1';
			q		: out std_logic_vector (7 downto 0)
		);
	end component;

	--pipe generation 
	component lsfr 
		port(
			clk : in std_logic;
			q: out std_logic_vector (7 downto 0)
		);
	end component;
	
	constant item_height : signed(10 downto 0) := to_signed(32,11);
	constant item_width : signed (10 downto 0) := to_signed(32,11);
	constant floor_height : signed (10 downto 0) := 480 - to_signed(32,11);
	signal item_x : signed (10 downto 0) :=to_signed(680,11);
	signal item_y : signed (10 downto 0) :=to_signed(640,11);
	signal counter : integer range 0 to 9;
	signal item_x_speed: signed (10 downto 0);
	signal flag : std_logic:= '0';
	signal item_speed: signed (10 downto 0);
	--sprite signal
	signal color_int: std_logic_vector (7 downto 0);
	signal rom_x,rom_y : std_logic_vector (4 downto 0);
	
	--LSFR signals
	signal lsfr_out : std_logic_vector (7 downto 0);
	

	begin 

		
	--instantiate sprite rom
	item_colour: spongebob_rom port map (
		pixel_x=> rom_x,
		pixel_y=> rom_y,
		clock => clk,
		q=>color_int
	);
	rom_x<= std_logic_vector(signed(pixel_x(4 downto 0))-item_x(4 downto 0)+"00010");
	rom_y<= std_logic_vector(signed(pixel_y(4 downto 0))-item_y(4 downto 0));
	color<=color_int;
		
	--instantiate lsfr
	lsfr1: lsfr port map(
		clk=> clk,
		q => lsfr_out
	);

	item_on <= '1' when signed("0"&pixel_x) >= item_x and signed("0"&pixel_x) <item_x + item_width 
					and signed("0"&pixel_y) > item_y and signed("0"&pixel_y) < item_y + item_height
					and bird_hit ='1' and color_int /= "00011100"
			else '0';
	--output of location of item for hit detection
	item_Location(10 downto 0) <= item_y;
	item_Location(21 downto 11) <= item_x;
	
	item_x_speed <= to_signed(3,11) when (level = "00")else 
		 to_signed(4,11) when (level = "01")else 
		 to_signed(7,11) when (level = "10")else 
		 to_signed(9,11);
	
	move_item:process
	variable random_num : signed(10 downto 0);
	begin
		wait until vertical_sync'event and vertical_sync ='1';
		random_num := to_signed(16,10) + signed("000" & lsfr_out(7 downto 0)) + signed("00000" & lsfr_out(5 downto 1));
		if(restart ='1') then
			item_x <= to_signed(680,11);
		elsif enable = '1' then 
			if item_x<=to_signed(0,11) then
				item_x<=to_signed(640,11);
				item_y<=random_num;
			else 
				item_x <= item_x - item_x_speed;
			end if;
		end if;
	end process move_item;
	
end architecture;