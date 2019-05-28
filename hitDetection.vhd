library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity hitDetection is 
    port (
		bird_Location, item_Location: in signed(21 downto 0);
		vertical_sync: in std_logic;
		state_out: in std_logic_vector(3 downto 0);
		pipe_gap: in signed (10 downto 0);
		pipe_Location: in signed(43 downto 0);
		bird_hit: out std_logic_vector(3 downto 0):="1111";
		level: out std_logic_vector(1 downto 0);
		scoreOnes, scoreTens: out std_logic_vector(3 downto 0)
    );
end entity hitDetection;

architecture behaviour of hitDetection is
	constant bird_height : signed(10 downto 0) := to_signed(32,11);
	constant bird_width : signed (10 downto 0) := to_signed(32,11);
	constant pipe_width : signed (10 downto 0) := to_signed(16,11);
	constant item_width : signed (10 downto 0) := to_signed(32,11);
	constant item_height : signed(10 downto 0) := to_signed(32,11);


	signal birdx : signed (10 downto 0);
	signal birdy : signed (10 downto 0);
	signal pipex : signed (10 downto 0);
	signal pipey : signed (10 downto 0);
	signal pipe2x : signed (10 downto 0);
	signal pipe2y : signed (10 downto 0);
	signal itemx : signed (10 downto 0);
	signal itemy : signed (10 downto 0);
	signal BirdPassed : std_logic:= '1';
	signal scoreCounterOnes : integer range 0 to 9;
	signal scoreCounterTens : integer range 0 to 9;
	begin
	--separate bits
	birdx<=bird_Location(21 downto 11);
	birdy<=bird_Location(10 downto 0);
	pipe2x<=pipe_Location(43 downto 33);
	pipe2y<=pipe_Location(32 downto 22);
	pipex<=pipe_Location(21 downto 11);
	pipey<=pipe_Location(10 downto 0);
	itemx<=item_Location(21 downto 11);
	itemy<=item_Location(10 downto 0);
	
check_collision:process
begin
	wait until vertical_sync = '1' and vertical_sync'event;
	--bird_hit(3 downto 0) <= "1111";
	if((birdy <= pipey) OR (birdy + bird_height >= pipey+pipe_gap))then
		if(((birdx <= pipex)AND((birdx+bird_width<= pipex+ pipe_width) and (birdx+bird_width>= pipex)) ))then --check if top right edge is in the pipe
			bird_hit(0) <= '0';
		elsif(((birdx+bird_width >= pipex)AND((birdx<= pipex+ pipe_width) and (birdx>= pipex)) ))then--checking if back end is in the pipe 
			bird_hit(0) <= '0';
		elsif((birdx>pipex)AND(birdx+bird_width < pipex+pipe_width))then--checking if the bird is in the middle of the pipe
			bird_hit(0) <= '0';
		end if;
	end if;
	--hit 2nd pipe
	if((birdy <= pipe2y) OR (birdy + bird_height >= pipe2y+pipe_gap))then
		if(((birdx <= pipe2x)AND((birdx+bird_width<= pipe2x+ pipe_width) and (birdx+bird_width>= pipe2x)) ))then --check if top right edge is in the pipe
			bird_hit(0) <= '0';
		elsif(((birdx+bird_width >= pipe2x)AND((birdx<= pipe2x+ pipe_width) and (birdx>= pipe2x)) ))then--checking if back end is in the pipe 
			bird_hit(0) <= '0';
		elsif((birdx>pipe2x)AND(birdx+bird_width < pipe2x+pipe_width))then--checking if the bird is in the middle of the pipe
			bird_hit(0) <= '0';
		end if;
	end if;
	
	--check if bird is inside the pipe to increase the score 
	if((birdx > pipex) AND (birdx < pipex+pipe_width)) OR ((birdx > pipe2x) AND (birdx < pipe2x+pipe_width)) then
		if(BirdPassed = '1')then 
			scoreCounterOnes <= scoreCounterOnes + 1;
			if(scoreCounterOnes = 9) then 
				scoreCounterOnes <= 0;
				scoreCounterTens <= scoreCounterTens +1;
			end if;
		end if;
		bird_hit(3) <= '0';
		BirdPassed <='0';
	end if;
			
	--Check if bird has passed pipe
	if(birdx > pipex+pipe_width) OR (birdx > pipe2x+pipe_width) OR(state_out = "0000")then
		BirdPassed <='1';
		bird_hit(0) <= '1';
	end if;
	
	
	--Check if bird has hit an item
	if(((birdy >= itemy)AND (birdy <= itemy+item_height)) OR ((birdy + bird_width >= itemy) AND (birdy+bird_height <= itemy+item_height)))then--this checks if the bird is touching the item on the left and right side 
		if(((birdx <= itemx)AND((birdx+bird_width<= itemx+ item_width) and (birdx+bird_width>= itemx)) ))then --check if top right edge is in the pipe
			bird_hit(1) <= '0';
		elsif(((birdx+bird_width >= itemx)AND((birdx<= itemx+ item_width) and (birdx>= itemx)) ))then--checking if back end is in the pipe 
			bird_hit(1) <= '0';
		elsif((birdx>itemx)AND(birdx+bird_width < itemx+item_width))then--checking if the bird is in the middle of the pipe
			bird_hit(1) <= '0';
		end if;
	end if;
	
	--Check if bird has passed item
	if(itemx <= to_signed(0,11))then
		bird_hit(1) <= '1';
	end if;
	
	if(state_out ="0000") then
		scoreCounterOnes<=0;
		scoreCounterTens<=0;
	end if;
	scoreOnes <= std_logic_vector(to_signed(scoreCounterOnes, 4));
	scoreTens <= std_logic_vector(to_signed(scoreCounterTens, 4));

end process check_collision;

	level <= "00" when ((state_out = "0010") OR ((scoreCounterTens = 0) AND (scoreCounterOnes <= 5)))else 
		 "01" when ((scoreCounterTens = 1) OR ((scoreCounterTens = 0) AND (scoreCounterOnes >= 5))) else
		 "10" when ((scoreCounterTens = 2)) else
		 "11";
end architecture;