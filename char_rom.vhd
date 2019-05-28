---
--pong game 2018
---

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library altera_mf;
use altera_mf.all;

entity char_rom is
	port
	(
		--address			: 	in std_logic_vector (8 downto 0)
		character_address	:	in std_logic_vector (5 downto 0);
		font_row, font_col	:	in std_logic_vector (2 downto 0);
		clock				: 	in std_logic ;
		--q					: 	out std_logic_vector (7 downto 0)
		rom_mux_output		:	out std_logic
	);
end char_rom;


architecture syn of char_rom is

	signal rom_data		: std_logic_vector (7 downto 0);
	signal rom_address	: std_logic_vector (8 downto 0);

	component altsyncram
	generic (
		address_aclr_a			: string;
		clock_enable_input_a	: string;
		clock_enable_output_a	: string;
		init_file				: string;
		intended_device_family	: string;
		lpm_hint				: string;
		lpm_type				: string;
		numwords_a				: natural;
		operation_mode			: string;
		outdata_aclr_a			: string;
		outdata_reg_a			: string;
		widthad_a				: natural;
		width_a					: natural;
		width_byteena_a			: natural
	);
	port (
		clock0		: in std_logic ;
		address_a	: in std_logic_vector (8 downto 0);
		q_a			: out std_logic_vector (7 downto 0)
	);
	end component;

begin
	--rom_mux_output	<= sub_wire0(7 downto 0);

	altsyncram_component : altsyncram
	generic map (
		address_aclr_a => "none",
		clock_enable_input_a => "bypass",
		clock_enable_output_a => "bypass",
		init_file => "tcgrom.mif",
		intended_device_family => "cyclone iii",
		lpm_hint => "enable_runtime_mod=no",
		lpm_type => "altsyncram",
		numwords_a => 512,
		operation_mode => "rom",
		outdata_aclr_a => "none",
		outdata_reg_a => "unregistered",
		widthad_a => 9,
		width_a => 8,
		width_byteena_a => 1
	)
	port map (
		clock0 => clock,
		address_a => rom_address,
		q_a => rom_data
	);

	rom_address <= character_address & font_row;
	rom_mux_output <= rom_data (conv_integer(not font_col(2 downto 0)));

end syn;