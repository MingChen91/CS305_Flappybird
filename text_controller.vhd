library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.all;


entity text_controller is 
	port(
		enable: in std_logic;
		clk_25Mhz : in std_logic;
		pixel_row, pixel_column : in std_logic_vector (9 downto 0);
		char_data_out : out std_logic	
	);
end entity text_controller;

architecture behaviour of text_controller is
	component char_rom
		PORT
			(
				character_address	:	IN STD_LOGIC_VECTOR (5 DOWNTO 0);
				font_row, font_col	:	IN STD_LOGIC_VECTOR (2 DOWNTO 0);
				clock				: 	IN STD_LOGIC ;
				rom_mux_output		:	OUT STD_LOGIC
			);
		end component;
		signal font_row_sel, font_col_sel : std_logic_vector (2 downto 0);
		signal character_address : std_logic_vector (5 downto 0);

	begin
		char_data:char_rom port map(
			character_address=> character_address,
			font_row=> font_row_sel,font_col => font_col_sel,
			clock=>clk_25Mhz,
			rom_mux_output=>char_data_out
		);

		character_address <="000001";
		font_row_sel<=pixel_row(4 downto 2);
		font_col_sel<=pixel_column (4 downto 2);

end architecture;