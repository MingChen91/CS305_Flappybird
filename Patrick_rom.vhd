-- megafunction wizard: %rom: 1-port%
-- generation: standard
-- version: wm1.0
-- module: altsyncram 

-- ============================================================
-- file name: patrick_rom.vhd
-- megafunction name(s):
-- 			altsyncram
--
-- simulation library files(s):
-- 			altera_mf
-- ============================================================
-- ************************************************************
-- this is a wizard-generated file. do not edit this file!
--
-- 13.0.0 build 156 04/24/2013 sj full version
-- ************************************************************


--copyright (c) 1991-2013 altera corporation
--your use of altera corporation's design tools, logic functions 
--and other software and tools, and its ampp partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the altera program license 
--subscription agreement, altera megacore function license 
--agreement, or other applicable license agreement, including, 
--without limitation, that your use is for the sole purpose of 
--programming logic devices manufactured by altera and sold by 
--altera or its authorized distributors.  please refer to the 
--applicable agreement for further details.


library ieee;
use ieee.std_logic_1164.all;

library altera_mf;
use altera_mf.all;

entity patrick_rom is
	port
	(
		--address		: in std_logic_vector (9 downto 0);
		pixel_x,pixel_y : in std_logic_vector (4 downto 0);
		clock		: in std_logic  := '1';
		q		: out std_logic_vector (7 downto 0)
	);
end patrick_rom;


architecture syn of patrick_rom is

	signal sub_wire0	: std_logic_vector (7 downto 0);
	signal combined_address: std_logic_vector (9 downto 0);



	component altsyncram
	generic (
		address_aclr_a		: string;
		clock_enable_input_a		: string;
		clock_enable_output_a		: string;
		init_file		: string;
		intended_device_family		: string;
		lpm_hint		: string;
		lpm_type		: string;
		numwords_a		: natural;
		operation_mode		: string;
		outdata_aclr_a		: string;
		outdata_reg_a		: string;
		widthad_a		: natural;
		width_a		: natural;
		width_byteena_a		: natural
	);
	port (
			address_a	: in std_logic_vector (9 downto 0);
			clock0	: in std_logic ;
			q_a	: out std_logic_vector (7 downto 0)
	);
	end component;

begin
	q    <= sub_wire0(7 downto 0);

	altsyncram_component : altsyncram
	generic map (
		address_aclr_a => "none",
		clock_enable_input_a => "bypass",
		clock_enable_output_a => "bypass",
		init_file => "../sprites/patrick.mif",
		intended_device_family => "cyclone iii",
		lpm_hint => "enable_runtime_mod=no",
		lpm_type => "altsyncram",
		numwords_a => 1024,
		operation_mode => "rom",
		outdata_aclr_a => "none",
		outdata_reg_a => "clock0",
		widthad_a => 10,
		width_a => 8,
		width_byteena_a => 1
	)
	port map (
		address_a => combined_address,
		clock0 => clock,
		q_a => sub_wire0
	);

	combined_address<=pixel_y&pixel_x;


end syn;

-- ============================================================
-- cnx file retrieval info
-- ============================================================
-- retrieval info: private: addressstall_a numeric "0"
-- retrieval info: private: aclraddr numeric "0"
-- retrieval info: private: aclrbyte numeric "0"
-- retrieval info: private: aclroutput numeric "0"
-- retrieval info: private: byte_enable numeric "0"
-- retrieval info: private: byte_size numeric "8"
-- retrieval info: private: blankmemory numeric "0"
-- retrieval info: private: clock_enable_input_a numeric "0"
-- retrieval info: private: clock_enable_output_a numeric "0"
-- retrieval info: private: clken numeric "0"
-- retrieval info: private: implement_in_les numeric "0"
-- retrieval info: private: init_file_layout string "port_a"
-- retrieval info: private: init_to_sim_x numeric "0"
-- retrieval info: private: intended_device_family string "cyclone iii"
-- retrieval info: private: jtag_enabled numeric "0"
-- retrieval info: private: jtag_id string "none"
-- retrieval info: private: maximum_depth numeric "0"
-- retrieval info: private: miffilename string "patrick.mif"
-- retrieval info: private: numwords_a numeric "1024"
-- retrieval info: private: ram_block_type numeric "0"
-- retrieval info: private: regaddr numeric "1"
-- retrieval info: private: regoutput numeric "1"
-- retrieval info: private: synth_wrapper_gen_postfix string "0"
-- retrieval info: private: singleclock numeric "1"
-- retrieval info: private: usedqram numeric "0"
-- retrieval info: private: widthaddr numeric "10"
-- retrieval info: private: widthdata numeric "8"
-- retrieval info: private: rden numeric "0"
-- retrieval info: library: altera_mf altera_mf.altera_mf_components.all
-- retrieval info: constant: address_aclr_a string "none"
-- retrieval info: constant: clock_enable_input_a string "bypass"
-- retrieval info: constant: clock_enable_output_a string "bypass"
-- retrieval info: constant: init_file string "patrick.mif"
-- retrieval info: constant: intended_device_family string "cyclone iii"
-- retrieval info: constant: lpm_hint string "enable_runtime_mod=no"
-- retrieval info: constant: lpm_type string "altsyncram"
-- retrieval info: constant: numwords_a numeric "1024"
-- retrieval info: constant: operation_mode string "rom"
-- retrieval info: constant: outdata_aclr_a string "none"
-- retrieval info: constant: outdata_reg_a string "clock0"
-- retrieval info: constant: widthad_a numeric "10"
-- retrieval info: constant: width_a numeric "8"
-- retrieval info: constant: width_byteena_a numeric "1"
-- retrieval info: used_port: address 0 0 10 0 input nodefval "address[9..0]"
-- retrieval info: used_port: clock 0 0 0 0 input vcc "clock"
-- retrieval info: used_port: q 0 0 8 0 output nodefval "q[7..0]"
-- retrieval info: connect: @address_a 0 0 10 0 address 0 0 10 0
-- retrieval info: connect: @clock0 0 0 0 0 clock 0 0 0 0
-- retrieval info: connect: q 0 0 8 0 @q_a 0 0 8 0
-- retrieval info: gen_file: type_normal patrick_rom.vhd true
-- retrieval info: gen_file: type_normal patrick_rom.inc false
-- retrieval info: gen_file: type_normal patrick_rom.cmp true
-- retrieval info: gen_file: type_normal patrick_rom.bsf false
-- retrieval info: gen_file: type_normal patrick_rom_inst.vhd false
-- retrieval info: lib_file: altera_mf
