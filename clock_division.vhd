library IEEE;
use  IEEE.STD_LOGIC_1164.all;
use  IEEE.STD_LOGIC_ARITH.all;
use  IEEE.STD_LOGIC_UNSIGNED.all;

entity clock_division is
	port(clk: in std_logic;
			clock_25: out std_logic);
end clock_division; 

architecture arc of clock_division is 
begin
	process(clk)
	variable count:std_logic_vector(1 downto 0);
	begin 
		if(rising_edge(clk))then
			count := count + "01";
		end if;
		if(count = "10") then
			count := "00";
			clock_25 <= '1';
		end if;
	end process;
end architecture arc;