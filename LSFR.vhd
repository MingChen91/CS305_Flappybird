library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lsfr is 
	port (
		clk : in std_logic;
		q: out std_logic_vector (7 downto 0)
	);
end entity lsfr;

architecture behaviour of lsfr is 
constant seed : std_logic_vector (7 downto 0) := "00111000";
signal q0 : std_logic := seed(0);
signal q1 : std_logic := seed(1);
signal q2 : std_logic := seed(2);
signal q3 : std_logic := seed(3);
signal q4 : std_logic := seed(4);
signal q5 : std_logic := seed(5);
signal q6 : std_logic := seed(6);
signal q7 : std_logic := seed(7);

begin
	process
	begin
		wait until clk'event and clk='1';
			q0<=q7;
			q1<=q0;
			q2<=q1 xor q7;
			q3<=q2 xor q7;
			q4<=q3 xor q7;
			q5<=q4;
			q6<=q5;
			q7<=q6;
	end process;

	q<=q7&q6&q5&q4&q3&q2&q1&q0;
end architecture;
