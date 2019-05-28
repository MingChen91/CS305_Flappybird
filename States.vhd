library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity states is
    port (
		clk: in std_logic;
		pixel_x, pixel_y : in std_logic_vector(9 downto 0);
		mouse_x, mouse_y : in std_logic_vector(9 downto 0);
		left_click : in std_logic;		
		state_out: out std_logic_vector (3 downto 0);
		enable, reset : out std_logic;
		bird_dead: in std_logic
    );
end entity states;

architecture FSM of states is 
	--states
	type state_type is (s_menu, s_arcade, s_training, s_highscore);
	signal state, next_state : state_type := s_menu;

begin
	--next state logic
	next_state_fn: process
	begin 
		wait until clk'event and clk='1';
		state<=next_state;
		
		case state is 
			when s_menu =>
				--if mouse click a or b go to corresponding states
				if left_click ='1' then 
					if mouse_x >= std_logic_vector(to_unsigned(224,10)) and mouse_x < std_logic_vector(to_unsigned(416,10))
							and mouse_y >= std_logic_vector(to_unsigned(224,10)) and mouse_y < std_logic_vector(to_unsigned(256,10)) then 
						next_state<=s_arcade;
					elsif mouse_x >= std_logic_vector(to_unsigned(192,10)) and mouse_x < std_logic_vector(to_unsigned(488,10))
							and mouse_y >= std_logic_vector(to_unsigned(288,10)) and mouse_y < std_logic_vector(to_unsigned(320,10)) then 
						next_state<=s_training;
					end if;
				else
					next_state<=s_menu;
				end if;
			when s_arcade=>
				if bird_dead ='1' then
					next_state<=s_highscore;
				else 
					next_state<=s_arcade;
				end if;
			when s_training=>
				if bird_dead ='1' then
					next_state<=s_highscore;
				else 
					next_state<=s_training;
				end if;
			when s_highscore=>
				if left_click = '1' then 
					if mouse_x >= std_logic_vector(to_unsigned(192,10)) and mouse_x < std_logic_vector(to_unsigned(488,10))
							and mouse_y >= std_logic_vector(to_unsigned(192,10)) and mouse_y < std_logic_vector(to_unsigned(224,10)) then 
						next_state<=s_menu;
					else 
						next_state<=s_highscore;
					end if;
				else 
					next_state<=s_highscore;
				end if ;
		end case;
	end process next_state_fn;
	
	output_fn: process
	begin 
		wait until clk'event and clk='1';
			case state is 
				when s_menu =>
					enable<='0';
					reset <='1';
					state_out<="0000";
				when s_arcade=>
					enable<='1';
					reset <='0';
					state_out<="0001";
				when s_training=>
					enable<='1';
					reset <='0';
					state_out<="0010";
				when s_highscore=>
					enable<='0';
					reset <='0';
					state_out<="0011";
			end case;
	end process output_fn;
	

end architecture FSM;