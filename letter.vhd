library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity letter is 
	port(
			row, column : in std_logic_vector (9 downto 0);
			red,green,blue : out std_logic
	);
end entity letter;

architecture behaviour of letter is
begin
	process (row, column)
	begin
		if (("0000001000"<row) and (row<"0100000000")) then 
			red<='1';
			green<='1';
			blue<='1';
		else 
			red<='1';
			green<='1';
			blue<='0';
		end if;
	end process;
end architecture behaviour;

