library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity menus is 
    port (
		clk: in std_logic;
		mouse_x,mouse_y: in unsigned (9 downto 0) ;
		pixel_x,pixel_y: in std_logic_vector(9 downto 0);
		state: in std_logic_vector(1 downto 0);
		menu_color: out std_logic_vector(7 downto 0);
		menu_on: out std_logic
    );
end entity menus;

architecture behaviour of menus is
	--menu logo
    component logo_rom 
		port(
				pixel_x, pixel_y : in std_logic_vector(9 downto 0);
				clock	: in std_logic  := '1';
				q		: out std_logic_vector (7 downto 0)
			);
	end component;
	
	--characters rom
	component char_rom 
		port(
				character_address	:	in std_logic_vector (5 downto 0);
				font_row, font_col	:	in std_logic_vector (2 downto 0);
				clock				: 	in std_logic ;
				rom_mux_output		:	out std_logic
			);
	end component;
	
	--logo sprite signals
	signal logo_start_x, logo_start_y: std_logic_vector (9 downto 0);
	signal logo_color : std_logic_vector(7 downto 0);
	signal logo_on : std_logic; 
	--character select signals
	signal character_address : std_logic_vector(5 downto 0) ;
	signal font_row, font_col: std_logic_vector(2 downto 0);
	signal char1_on,char2_on,char3_on : std_logic;
	
	signal char_output : std_logic;
	signal color : unsigned (24 downto 0) := (others=>'0');
	signal flash1,flash2,flash3 : std_logic;
	
	begin
	-- logo rom is set up so you just - the x y offset here and it will move the logo
	 --instantiate logo component 
    logo: logo_rom port map(
        pixel_x => logo_start_x,
        pixel_y => logo_start_y,
        clock=>clk,
        q=>logo_color
    );
	 
	 --instantiate character rom
	 char: char_rom port map(
		character_address=> character_address,
		font_row=>font_row,
		font_col=>font_col,
		clock=>clk,
		rom_mux_output=>char_output
	);

	--flashing menu
	flash1<='1' when mouse_x >= to_unsigned(224,10) and mouse_x < to_unsigned(416,10)
				and mouse_y >= to_unsigned(224,10) and mouse_y < to_unsigned(256,10) else '0';
	flash2<='1' when mouse_x >= to_unsigned(192,10) and mouse_x < to_unsigned(488,10)
				and mouse_y >= to_unsigned(288,10) and mouse_y < to_unsigned(320,10) else '0';
	flash3<='1' when mouse_x >= to_unsigned(192,10) and mouse_x < to_unsigned(488,10)
				and mouse_y >= to_unsigned(192,10) and mouse_y < to_unsigned(224,10) else '0';

	menu_sel : process
	begin
		wait until clk'event and clk='1';
		color <= color + "1";
		case state is 
			when "00"=>--menu state
				--logo location 
				if pixel_x > std_logic_vector(to_unsigned(159,10)) and pixel_x < std_logic_vector(to_unsigned(481,10)) 
					and pixel_y > std_logic_vector(to_unsigned(160,10)) and pixel_y < std_logic_vector(to_unsigned(193,10)) 
					and logo_color /="00000000" then 
					logo_on<='1';
				else
					logo_on<='0';
				end if;

				--texts
				if 
					pixel_x >= std_logic_vector(to_unsigned(224,10)) and pixel_x < std_logic_vector(to_unsigned(256,10))
				 		and pixel_y >= std_logic_vector(to_unsigned(224,10)) and pixel_y < std_logic_vector(to_unsigned(256,10)) then 
					character_address <="000001" ; --A
					char1_on<=char_output;
				elsif 
					pixel_x >= std_logic_vector(to_unsigned(256,10)) and pixel_x < std_logic_vector(to_unsigned(288,10))
						and pixel_y >= std_logic_vector(to_unsigned(224,10)) and pixel_y < std_logic_vector(to_unsigned(256,10)) then 
					character_address <="010010" ; --R
					char1_on<=char_output;
				elsif 
					pixel_x >= std_logic_vector(to_unsigned(288,10)) and pixel_x < std_logic_vector(to_unsigned(320,10))
						and pixel_y >= std_logic_vector(to_unsigned(224,10)) and pixel_y < std_logic_vector(to_unsigned(256,10)) then 
					character_address <="000011" ; --C
					char1_on<=char_output;
				elsif 
					pixel_x >= std_logic_vector(to_unsigned(320,10)) and pixel_x < std_logic_vector(to_unsigned(352,10))
						and pixel_y >= std_logic_vector(to_unsigned(224,10)) and pixel_y < std_logic_vector(to_unsigned(256,10)) then 
					character_address <="000001" ; --A
					char1_on<=char_output;
				elsif 
					pixel_x >= std_logic_vector(to_unsigned(352,10)) and pixel_x < std_logic_vector(to_unsigned(384,10))
						and pixel_y >= std_logic_vector(to_unsigned(224,10)) and pixel_y < std_logic_vector(to_unsigned(256,10)) then 
					character_address <="000100" ; --D
					char1_on<=char_output;
				elsif 
					pixel_x >= std_logic_vector(to_unsigned(384,10)) and pixel_x < std_logic_vector(to_unsigned(416,10))
						and pixel_y >= std_logic_vector(to_unsigned(224,10)) and pixel_y < std_logic_vector(to_unsigned(256,10)) then 
					character_address <="000101" ; --E
					char1_on<=char_output;
				-----------------second line------------------
				elsif 
					pixel_x >= std_logic_vector(to_unsigned(192,10)) and pixel_x < std_logic_vector(to_unsigned(224,10))
						and pixel_y >= std_logic_vector(to_unsigned(288,10)) and pixel_y < std_logic_vector(to_unsigned(320,10)) then 
					character_address <="010100" ; --T
					char2_on<=char_output;
				elsif 
					pixel_x >= std_logic_vector(to_unsigned(224,10)) and pixel_x < std_logic_vector(to_unsigned(256,10))
						and pixel_y >= std_logic_vector(to_unsigned(288,10)) and pixel_y < std_logic_vector(to_unsigned(320,10)) then 
					character_address <="010010" ; --R
					char2_on<=char_output;
				elsif 
					pixel_x >= std_logic_vector(to_unsigned(256,10)) and pixel_x < std_logic_vector(to_unsigned(288,10))
						and pixel_y >= std_logic_vector(to_unsigned(288,10)) and pixel_y < std_logic_vector(to_unsigned(320,10)) then 
					character_address <="000001" ; --A
					char2_on<=char_output;
				elsif 
					pixel_x >= std_logic_vector(to_unsigned(288,10)) and pixel_x < std_logic_vector(to_unsigned(320,10))
						and pixel_y >= std_logic_vector(to_unsigned(288,10)) and pixel_y < std_logic_vector(to_unsigned(320,10)) then 
					character_address <="001001" ; --I
					char2_on<=char_output;
				elsif 
					pixel_x >= std_logic_vector(to_unsigned(320,10)) and pixel_x < std_logic_vector(to_unsigned(352,10))
						and pixel_y >= std_logic_vector(to_unsigned(288,10)) and pixel_y < std_logic_vector(to_unsigned(320,10)) then 
					character_address <="001110" ; --N
					char2_on<=char_output;
				elsif 
					pixel_x >= std_logic_vector(to_unsigned(352,10)) and pixel_x < std_logic_vector(to_unsigned(384,10))
						and pixel_y >= std_logic_vector(to_unsigned(288,10)) and pixel_y < std_logic_vector(to_unsigned(320,10)) then 
					character_address <="001001" ; --I
					char2_on<=char_output;
				elsif 
					pixel_x >= std_logic_vector(to_unsigned(384,10)) and pixel_x < std_logic_vector(to_unsigned(416,10))
						and pixel_y >= std_logic_vector(to_unsigned(288,10)) and pixel_y < std_logic_vector(to_unsigned(320,10)) then 
					character_address <="001110" ; --N
					char2_on<=char_output;
				elsif 
					pixel_x >= std_logic_vector(to_unsigned(416,10)) and pixel_x < std_logic_vector(to_unsigned(448,10))
						and pixel_y >= std_logic_vector(to_unsigned(288,10)) and pixel_y < std_logic_vector(to_unsigned(320,10)) then 
					character_address <="000111" ; --G
					char2_on<=char_output;
				else 
					char2_on<='0';
				end if;

			when "11"=>--highscore state
				if 
					pixel_x >= std_logic_vector(to_unsigned(192,10)) and pixel_x < std_logic_vector(to_unsigned(224,10))
				 		and pixel_y >= std_logic_vector(to_unsigned(192,10)) and pixel_y < std_logic_vector(to_unsigned(224,10)) then 
					character_address <="010010" ; --R
					char3_on<=char_output;
				elsif
					pixel_x >= std_logic_vector(to_unsigned(224,10)) and pixel_x < std_logic_vector(to_unsigned(256,10))
				 		and pixel_y >= std_logic_vector(to_unsigned(192,10)) and pixel_y < std_logic_vector(to_unsigned(224,10)) then 
					character_address <="000101" ; --E
					char3_on<=char_output;
				elsif
					pixel_x >= std_logic_vector(to_unsigned(256,10)) and pixel_x < std_logic_vector(to_unsigned(288,10))
				 		and pixel_y >= std_logic_vector(to_unsigned(192,10)) and pixel_y < std_logic_vector(to_unsigned(224,10)) then 
					character_address <="010011" ; --S
					char3_on<=char_output;
				elsif
					pixel_x >= std_logic_vector(to_unsigned(228,10)) and pixel_x < std_logic_vector(to_unsigned(320,10))
				 		and pixel_y >= std_logic_vector(to_unsigned(192,10)) and pixel_y < std_logic_vector(to_unsigned(224,10)) then 
					character_address <="010100" ; --T
					char3_on<=char_output;
				elsif
					pixel_x >= std_logic_vector(to_unsigned(320,10)) and pixel_x < std_logic_vector(to_unsigned(352,10))
				 		and pixel_y >= std_logic_vector(to_unsigned(192,10)) and pixel_y < std_logic_vector(to_unsigned(224,10)) then 
					character_address <="000001" ; --A
					char3_on<=char_output;
				elsif
					pixel_x >= std_logic_vector(to_unsigned(352,10)) and pixel_x < std_logic_vector(to_unsigned(384,10))
				 		and pixel_y >= std_logic_vector(to_unsigned(192,10)) and pixel_y < std_logic_vector(to_unsigned(224,10)) then 
					character_address <="010010" ; --R
					char3_on<=char_output;
				elsif
					pixel_x >= std_logic_vector(to_unsigned(384,10)) and pixel_x < std_logic_vector(to_unsigned(416,10))
				 		and pixel_y >= std_logic_vector(to_unsigned(192,10)) and pixel_y < std_logic_vector(to_unsigned(224,10)) then 
					character_address <="010100" ; --T
					char3_on<=char_output;
				elsif
					pixel_x >= std_logic_vector(to_unsigned(416,10)) and pixel_x < std_logic_vector(to_unsigned(448,10))
				 		and pixel_y >= std_logic_vector(to_unsigned(192,10)) and pixel_y < std_logic_vector(to_unsigned(224,10)) then 
					character_address <="100001" ; --!
					char3_on<=char_output;

				end if;
			when others=>
				logo_on<='0';
				char1_on<='0';
				char2_on<='0';
				char3_on<='0';
		end case;
		
	end process menu_sel;

	font_row<=pixel_y(4 downto 2);
	font_col<=pixel_x(4 downto 2);
	menu_on<=logo_on or char1_on or char2_on or char3_on;
	logo_start_x <= std_logic_vector( unsigned(pixel_x) - 159 );
	logo_start_y <= std_logic_vector( unsigned(pixel_y) - 160 );

	-- the logo is just the logo colour, the characters are either just white or a flashing cycling color
	menu_color<= logo_color when logo_on = '1' 
				else std_logic_vector(color(24 downto 22) & color(23 downto 21) & color(22 downto 21)) 
				when char1_on='1' and flash1 = '1' 
				else "11111111"
				when char1_on='1' and flash1 = '0'
				
				else std_logic_vector(color(24 downto 22) & color(23 downto 21) & color(22 downto 21)) 
				when char2_on='1' and flash2 = '1'
				else "11111111"
				when char2_on='1' and flash2 = '0'
				
				else std_logic_vector(color(24 downto 22) & color(23 downto 21) & color(22 downto 21)) 
				when char3_on='1' and flash3 = '1'
				else "11111111"
				when char3_on='1' and flash3 = '0'

				else "00000000";
end architecture;