library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity background is 
	port(
		clk : in std_logic;
		pixel_x, pixel_y : in  std_logic_vector(9 downto 0);
		q: out  std_logic_vector (7 downto 0)
	);
end entity background;

architecture behaviour of background is 
	component background_rom 
		port
		(
			address		: in std_logic_vector (14 downto 0);
			clock		: in std_logic  := '1';
			q		: out std_logic_vector (7 downto 0)
		);
	end component;

	signal address_calculation : std_logic_vector (15 downto 0);
	signal address_pass : std_logic_vector (14 downto 0);

begin
	background: background_rom port map (
		address => address_pass,
		clock=>clk,
		q=>q
	);

	address_calculation<= std_logic_vector(unsigned(pixel_y(9 downto 2)) * 160 + unsigned (pixel_x(9 downto 2)));
	address_pass <= address_calculation(14 downto 0);
end architecture behaviour;
