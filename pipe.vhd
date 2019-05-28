 library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pipe is
	port (
		pixel_x,pixel_y : in std_logic_vector(9 downto 0);
		vertical_sync: in std_logic;
		pipe_on: out std_logic;
		pipe_Location: out signed(43 downto 0);
		level: in std_logic_vector(1 downto 0);
		enable, restart: in std_logic;
		gap: out signed (10 downto 0);
		clk: in std_logic;
		pipe_color: out std_logic_vector (7 downto 0)
    );
end entity pipe;

architecture behaviour of pipe is
	--pipe rom stuff
	component pipe_rom 
		port(
			address		: in std_logic_vector (7 downto 0);
			clock		: in std_logic  := '1';
			q		: out std_logic_vector (7 downto 0));
	end component;

	--pipe generation 
	component lsfr 
		port(
			clk : in std_logic;
			q: out std_logic_vector (7 downto 0)
		);
	end component;
	
	--pipe constants
	signal gap_height : signed(10 downto 0);
	constant pipe_width : signed (10 downto 0) := to_signed(16,11);
	constant floor_height : signed (10 downto 0) := 480 - to_signed(32,11);
		
	--pipe location initialization 
	signal pipe1_x : signed (10 downto 0) :=to_signed(640,11);
	signal pipe1_y : signed (10 downto 0) :=to_signed(150,11);
	signal pipe2_x : signed (10 downto 0) :=to_signed(960,11);
	signal pipe2_y : signed (10 downto 0) :=to_signed(200,11);
		
	--pipe on logic
	signal pipe_x_speed: signed (10 downto 0);
	signal pipe1_on : std_logic;
	signal pipe2_on : std_logic;
		
	--pipe colour signals
	signal pipe_rom_address : std_logic_vector (7 downto 0);
	signal color_int : std_logic_vector(7 downto 0);
	
	--LSFR signals
	signal lsfr_out : std_logic_vector (7 downto 0);

	begin
		--instantiate pipe rom
		pipe_colour: pipe_rom port map(
			address=>pipe_rom_address,
			clock=>clk, 
			q=>color_int
		);
		
		--instantiate lsfr
		lsfr1: lsfr port map(
			clk=> clk,
			q => lsfr_out
		);	
		
		gap_height <= 	to_signed(100,11) when (level = "00") else 
							to_signed(90,11) when (level = "01") else 
							to_signed(80,11) when (level = "10") else 
							to_signed(70,11);
							
					

		pipe_rom_address <= 
			--pipe 1 top face
			std_logic_vector((signed(pixel_y (3 downto 0)) - pipe1_y(3 downto 0)-"0010") & (signed(pixel_x(3 downto 0)) - pipe1_x(3 downto 0)+"0010"))
				when (pipe1_y - signed("0"&pixel_y) <= 14) and (signed("0"& pixel_y) <= pipe1_y) and
				((signed("0"&pixel_x)+2)>= pipe1_x) and (signed("0"&pixel_x)<= pipe1_x + pipe_width) else
			--pipe 1 bottom face	
			std_logic_vector((signed(pixel_y (3 downto 0)) - (pipe1_y(3 downto 0)+gap_height(3 downto 0)+"0001")) & (signed(pixel_x(3 downto 0)) - pipe1_x(3 downto 0)+"0010"))
				when (signed("0"&pixel_y)-(pipe1_y + gap_height)<= 14) and (signed("0"&pixel_y)-(pipe1_y + gap_height)>= 0) and
				(signed("0"&pixel_x)+2 >= pipe1_x) and (signed("0"&pixel_x)<= pipe1_x + pipe_width) else
			
			--pipe 2 top and bottom head
			std_logic_vector((signed(pixel_y (3 downto 0)) - pipe2_y(3 downto 0)-"0010") & (signed(pixel_x(3 downto 0)) - pipe2_x(3 downto 0)+"0010"))
				when (pipe2_y - signed("0"&pixel_y) <= 14) and (signed("0"& pixel_y) <= pipe2_y) and
				((signed("0"&pixel_x)+2)>= pipe2_x) and (signed("0"&pixel_x)<= pipe2_x + pipe_width) else
			--pipe 1 bottom face	
			std_logic_vector((signed(pixel_y (3 downto 0)) - (pipe2_y(3 downto 0)+gap_height(3 downto 0)+"0001")) & (signed(pixel_x(3 downto 0)) - pipe2_x(3 downto 0)+"0010"))
				when (signed("0"&pixel_y)-(pipe2_y + gap_height)<= 14) and (signed("0"&pixel_y)-(pipe2_y + gap_height)>= 0) and
				(signed("0"&pixel_x)+2 >= pipe2_x) and (signed("0"&pixel_x)<= pipe2_x + pipe_width) else
			
			--else straight pipe
			std_logic_vector("1111" & (signed(pixel_x(3 downto 0)) - pipe1_x(3 downto 0)+"0010"))
				when ((signed("0"&pixel_x)+2)>= pipe1_x) and (signed("0"&pixel_x)<= pipe1_x + pipe_width) else
			std_logic_vector("1111" & (signed(pixel_x(3 downto 0)) - pipe2_x(3 downto 0)+"0010"));
	
		pipe_color<=color_int;

		pipe1_on <= '1' when signed("0"&pixel_x) >= pipe1_x and signed("0"&pixel_x) <pipe1_x + pipe_width 
					and(signed("0"&pixel_y) < pipe1_y or signed ("0"&pixel_y)> pipe1_y + gap_height) and signed("0"&pixel_y) < floor_height
					else '0';
		pipe2_on <= '1' when signed("0"&pixel_x) >= pipe2_x and signed("0"&pixel_x) <pipe2_x + pipe_width
					and (signed("0"&pixel_y) < pipe2_y or signed ("0"&pixel_y)> pipe2_y + gap_height) and signed("0"&pixel_y) < floor_height
					else '0';
	
		--combine all the pipes
		pipe_on<='1' when (pipe1_on ='1' or pipe2_on ='1') and color_int /= "11111111" else '0';
		-- gap height
		gap<=gap_height;
		
		--passing the xy co-ordinates to do hit detections
		pipe_Location(10 downto 0) <= pipe1_y;
		pipe_Location(21 downto 11) <= pipe1_x;
		pipe_Location(32 downto 22) <= pipe2_y;
		pipe_Location(43 downto 33) <= pipe2_x;

		pipe_x_speed <= to_signed(-2,11) when (level = "00")else 
		 to_signed(-3,11) when (level = "01")else 
		 to_signed(-5,11) when (level = "10")else 
		 to_signed(-7,11);
		
		-- moves the pipe left every vsync
		move_pipe:process
		variable random_num : signed(10 downto 0);
		begin
			wait until vertical_sync'event and vertical_sync ='1';
			--select pipe n   speed
			-- if(level = "00") then 
				-- pipe_x_speed <= to_signed(-1,11);
			-- elsif(level = "01") then
				-- pipe_x_speed <= to_signed(-2,11);
			-- elsif(level = "10") then 
				-- pipe_x_speed <= to_signed(-3,11);
			-- elsif(level = "11") then 
				-- pipe_x_speed <= to_signed(-4,11);
			-- end if;
			--random position start at 16 with + 288 range
			random_num := to_signed(16,11) + signed("000" & lsfr_out(7 downto 0)) + signed("0000000" & lsfr_out(5 downto 2));
			if(restart = '1') then
					pipe1_x<=to_signed(640,11);
					pipe2_x<=to_signed(960,11);
			elsif enable = '1' then 
				--pipe1
				if pipe1_x<=to_signed(-16,11) then
					pipe1_y<=random_num;
					pipe1_x<=to_signed(640,11);
				else 
					pipe1_x <= pipe1_x + pipe_x_speed;
				end if;
				
				--pipe2
				if pipe2_x<= to_signed(-16,11) then
					pipe2_y<=random_num;
					pipe2_x<=to_signed(640,11);
				else 
					pipe2_x <= pipe2_x + pipe_x_speed;
				end if;
			end if;
		end process move_pipe;
end architecture;