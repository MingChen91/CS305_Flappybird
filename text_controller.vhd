library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use ieee.numeric_std.all;


entity text_controller is 
	port(
		enable: in std_logic;
		clk_25Mhz : in std_logic;
		pixel_row, pixel_column : in std_logic_vector (9 downto 0);
		state_out: in std_logic_vector(3 downto 0);
		char_data_out : out std_logic;
		sw0 : in std_logic;
		level : in std_logic_vector(1 downto 0);
		pointOnes, pointsTens : in std_logic_vector(3 downto 0)
	);
end entity text_controller;

architecture behaviour of text_controller is
	
	component char_rom
		port
			(
				character_address	:	in std_logic_vector (5 downto 0);
				font_row, font_col	:	in std_logic_vector (2 downto 0);
				clock				: 	in std_logic ;
				rom_mux_output		:	out std_logic
			);
		end component;
		signal font_row_sel, font_col_sel : std_logic_vector (2 downto 0);
		signal character_address : std_logic_vector (5 downto 0);
		signal char_data_int : std_logic;
		
	begin
	
		char_data:char_rom port map(
			character_address=> character_address,
			font_row=> font_row_sel,font_col => font_col_sel,
			clock=>clk_25Mhz,
			rom_mux_output=>char_data_int
		);

		character_address <="010011" when ((pixel_column <= std_logic_vector(to_unsigned(16,10))) AND(pixel_row >= std_logic_vector(to_unsigned(400,10)))AND(pixel_row <= std_logic_vector(to_unsigned(462,10))))--S
			else "000011" when ((pixel_column <= std_logic_vector(to_unsigned(32,10)))AND(pixel_row >= std_logic_vector(to_unsigned(400,10)))AND(pixel_row <= std_logic_vector(to_unsigned(462,10))))--C
			else "001111" when ((pixel_column <= std_logic_vector(to_unsigned(48,10)))AND(pixel_row >= std_logic_vector(to_unsigned(400,10)))AND(pixel_row <= std_logic_vector(to_unsigned(462,10))))--O
			else "010010" when ((pixel_column <= std_logic_vector(to_unsigned(64,10)))AND(pixel_row >= std_logic_vector(to_unsigned(400,10)))AND(pixel_row <= std_logic_vector(to_unsigned(462,10))))--R
			else "000101" when ((pixel_column <= std_logic_vector(to_unsigned(80,10)))AND(pixel_row >= std_logic_vector(to_unsigned(400,10)))AND(pixel_row <= std_logic_vector(to_unsigned(462,10))))--E
			else "100000" when ((pixel_column <= std_logic_vector(to_unsigned(96,10)))AND(pixel_row >= std_logic_vector(to_unsigned(400,10)))AND(pixel_row <= std_logic_vector(to_unsigned(462,10))))--space
			
			else "001100" when ((pixel_column <= std_logic_vector(to_unsigned(16,10)))AND(pixel_row >= std_logic_vector(to_unsigned(462,10))))--L
			else "000101" when ((pixel_column <= std_logic_vector(to_unsigned(32,10)))AND(pixel_row >= std_logic_vector(to_unsigned(462,10))))--E
			else "010110" when ((pixel_column <= std_logic_vector(to_unsigned(48,10)))AND(pixel_row >= std_logic_vector(to_unsigned(462,10))))--V
			else "000101" when ((pixel_column <= std_logic_vector(to_unsigned(64,10)))AND(pixel_row >= std_logic_vector(to_unsigned(462,10))))--E
			else "001100" when ((pixel_column <= std_logic_vector(to_unsigned(80,10)))AND(pixel_row >= std_logic_vector(to_unsigned(462,10))))--L
			else "100000" when ((pixel_column <= std_logic_vector(to_unsigned(96,10)))AND(pixel_row >= std_logic_vector(to_unsigned(462,10))))--Space
			
			else "010100" when ((pixel_column <= std_logic_vector(to_unsigned(112,10)))AND(pixel_row >= std_logic_vector(to_unsigned(462,10))) AND (level = "00") AND (state_out = "0010"))--T
			else "110001" when ((pixel_column <= std_logic_vector(to_unsigned(112,10)))AND(pixel_row >= std_logic_vector(to_unsigned(462,10))) AND (level = "00"))--1
			else "110010" when ((pixel_column <= std_logic_vector(to_unsigned(112,10)))AND(pixel_row >= std_logic_vector(to_unsigned(462,10))) AND (level = "01"))--2
			else "110011" when ((pixel_column <= std_logic_vector(to_unsigned(112,10)))AND(pixel_row >= std_logic_vector(to_unsigned(462,10))) AND (level = "10"))--3
			else "110100" when ((pixel_column <= std_logic_vector(to_unsigned(112,10)))AND(pixel_row >= std_logic_vector(to_unsigned(462,10))) AND (level = "11"))--3
			else "100000" when ((pixel_column <= std_logic_vector(to_unsigned(128,10)))AND(pixel_row >= std_logic_vector(to_unsigned(462,10))))--SPACE
			
			
			
			else "111001" when ((pixel_column <= std_logic_vector(to_unsigned(112,10)))AND(pixel_row >= std_logic_vector(to_unsigned(400,10))) AND (pointsTens = "1001")AND(pixel_row <= std_logic_vector(to_unsigned(462,10))))--9 for ones
			else "111000" when ((pixel_column <= std_logic_vector(to_unsigned(112,10)))AND(pixel_row >= std_logic_vector(to_unsigned(400,10))) AND (pointsTens = "1000")AND(pixel_row <= std_logic_vector(to_unsigned(462,10))))--8 for ones
			else "110111" when ((pixel_column <= std_logic_vector(to_unsigned(112,10)))AND(pixel_row >= std_logic_vector(to_unsigned(400,10))) AND (pointsTens = "0111")AND(pixel_row <= std_logic_vector(to_unsigned(462,10))))--7 for ones
			else "110110" when ((pixel_column <= std_logic_vector(to_unsigned(112,10)))AND(pixel_row >= std_logic_vector(to_unsigned(400,10))) AND (pointsTens = "0110")AND(pixel_row <= std_logic_vector(to_unsigned(462,10))))--6 for ones
			else "110101" when ((pixel_column <= std_logic_vector(to_unsigned(112,10)))AND(pixel_row >= std_logic_vector(to_unsigned(400,10))) AND (pointsTens = "0101")AND(pixel_row <= std_logic_vector(to_unsigned(462,10))))--5 for ones
			else "110100" when ((pixel_column <= std_logic_vector(to_unsigned(112,10)))AND(pixel_row >= std_logic_vector(to_unsigned(400,10))) AND (pointsTens = "0100")AND(pixel_row <= std_logic_vector(to_unsigned(462,10))))--4 for ones
			else "110011" when ((pixel_column <= std_logic_vector(to_unsigned(112,10)))AND(pixel_row >= std_logic_vector(to_unsigned(400,10))) AND (pointsTens = "0011")AND(pixel_row <= std_logic_vector(to_unsigned(462,10))))--3 for ones
			else "110010" when ((pixel_column <= std_logic_vector(to_unsigned(112,10)))AND(pixel_row >= std_logic_vector(to_unsigned(400,10))) AND (pointsTens = "0010")AND(pixel_row <= std_logic_vector(to_unsigned(462,10))))--2 for ones
			else "110001" when ((pixel_column <= std_logic_vector(to_unsigned(112,10)))AND(pixel_row >= std_logic_vector(to_unsigned(400,10))) AND (pointsTens = "0001")AND(pixel_row <= std_logic_vector(to_unsigned(462,10))))--1 for ones
			else "110000" when ((pixel_column <= std_logic_vector(to_unsigned(112,10)))AND(pixel_row >= std_logic_vector(to_unsigned(400,10))) AND (pointsTens = "0000")AND(pixel_row <= std_logic_vector(to_unsigned(462,10))))--0 for ones
			
			
			
			else "111001" when ((pixel_column <= std_logic_vector(to_unsigned(128,10)))AND(pixel_row >= std_logic_vector(to_unsigned(400,10))) AND (pointOnes = "1001")AND(pixel_row <= std_logic_vector(to_unsigned(462,10))))--9 for ones
			else "111000" when ((pixel_column <= std_logic_vector(to_unsigned(128,10)))AND(pixel_row >= std_logic_vector(to_unsigned(400,10))) AND (pointOnes = "1000")AND(pixel_row <= std_logic_vector(to_unsigned(462,10))))--8 for ones
			else "110111" when ((pixel_column <= std_logic_vector(to_unsigned(128,10)))AND(pixel_row >= std_logic_vector(to_unsigned(400,10))) AND (pointOnes = "0111")AND(pixel_row <= std_logic_vector(to_unsigned(462,10))))--7 for ones
			else "110110" when ((pixel_column <= std_logic_vector(to_unsigned(128,10)))AND(pixel_row >= std_logic_vector(to_unsigned(400,10))) AND (pointOnes = "0110")AND(pixel_row <= std_logic_vector(to_unsigned(462,10))))--6 for ones
			else "110101" when ((pixel_column <= std_logic_vector(to_unsigned(128,10)))AND(pixel_row >= std_logic_vector(to_unsigned(400,10))) AND (pointOnes = "0101")AND(pixel_row <= std_logic_vector(to_unsigned(462,10))))--5 for ones
			else "110100" when ((pixel_column <= std_logic_vector(to_unsigned(128,10)))AND(pixel_row >= std_logic_vector(to_unsigned(400,10))) AND (pointOnes = "0100")AND(pixel_row <= std_logic_vector(to_unsigned(462,10))))--4 for ones
			else "110011" when ((pixel_column <= std_logic_vector(to_unsigned(128,10)))AND(pixel_row >= std_logic_vector(to_unsigned(400,10))) AND (pointOnes = "0011")AND(pixel_row <= std_logic_vector(to_unsigned(462,10))))--3 for ones
			else "110010" when ((pixel_column <= std_logic_vector(to_unsigned(128,10)))AND(pixel_row >= std_logic_vector(to_unsigned(400,10))) AND (pointOnes = "0010")AND(pixel_row <= std_logic_vector(to_unsigned(462,10))))--2 for ones
			else "110001" when ((pixel_column <= std_logic_vector(to_unsigned(128,10)))AND(pixel_row >= std_logic_vector(to_unsigned(400,10))) AND (pointOnes = "0001")AND(pixel_row <= std_logic_vector(to_unsigned(462,10))))--1 for ones
			else "110000" when ((pixel_column <= std_logic_vector(to_unsigned(128,10)))AND(pixel_row >= std_logic_vector(to_unsigned(400,10))) AND (pointOnes = "0000")AND(pixel_row <= std_logic_vector(to_unsigned(462,10))))--0 for ones
			
			else "100000" when ((pixel_column <= std_logic_vector(to_unsigned(352,10)))AND(pixel_column >= std_logic_vector(to_unsigned(128,10)))AND(pixel_row >= std_logic_vector(to_unsigned(400,10)))AND(pixel_row <= std_logic_vector(to_unsigned(462,10))))--E
			
			else "000101" when ((pixel_column <= std_logic_vector(to_unsigned(368,10)))AND(pixel_row >= std_logic_vector(to_unsigned(400,10)))AND(pixel_row <= std_logic_vector(to_unsigned(462,10))))--E
			else "001110" when ((pixel_column <= std_logic_vector(to_unsigned(384,10)))AND(pixel_row >= std_logic_vector(to_unsigned(400,10)))AND(pixel_row <= std_logic_vector(to_unsigned(462,10))))--N
			else "000101" when ((pixel_column <= std_logic_vector(to_unsigned(400,10)))AND(pixel_row >= std_logic_vector(to_unsigned(400,10)))AND(pixel_row <= std_logic_vector(to_unsigned(462,10))))--E
			else "010010" when ((pixel_column <= std_logic_vector(to_unsigned(416,10)))AND(pixel_row >= std_logic_vector(to_unsigned(400,10)))AND(pixel_row <= std_logic_vector(to_unsigned(462,10))))--R
			else "000111" when ((pixel_column <= std_logic_vector(to_unsigned(432,10)))AND(pixel_row >= std_logic_vector(to_unsigned(400,10)))AND(pixel_row <= std_logic_vector(to_unsigned(462,10))))--G
			else "011001" when ((pixel_column <= std_logic_vector(to_unsigned(448,10)))AND(pixel_row >= std_logic_vector(to_unsigned(400,10)))AND(pixel_row <= std_logic_vector(to_unsigned(462,10))))--Y
			
			
			else "100000" when ((pixel_column <= std_logic_vector(to_unsigned(432,10)))AND(pixel_row >= std_logic_vector(to_unsigned(400,10))))--space
			--else "100000" when ((pixel_column <= std_logic_vector(to_unsigned(320,10)))AND(pixel_row >= std_logic_vector(to_unsigned(400,10))))--space
			
			
			

			;
		font_row_sel<=pixel_row(3 downto 1);
		font_col_sel<=pixel_column (3 downto 1);
		char_data_out<= '0' when ((pixel_row)<= std_logic_vector(to_unsigned(0,10)) OR ((pixel_row)<= std_logic_vector(to_unsigned(448,10))) OR(pixel_column)>= std_logic_vector(to_unsigned(450,10)))
			else char_data_int;
end architecture;