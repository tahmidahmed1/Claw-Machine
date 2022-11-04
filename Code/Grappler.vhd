-- ECE 124, LAB Session #206, Team Number #9, Tahmid Ahmed & Vidhi Patel
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity Grappler IS Port
(
 clk_input, reset, grappler, grappler_en	: IN std_logic; -- inputs taken into the grappler
 grappler_on										: OUT std_logic -- output to the led(1)
 );
END Grappler;
 

 
 Architecture SM of Grappler is
 
  
 TYPE STATE_NAMES IS (press_open_state, press_close_state, release_open_state, release_close_state);   -- list of all the STATE_NAMES values 

 
 SIGNAL current_state, next_state	:  STATE_NAMES;     	-- signals of type STATE_NAMES

BEGIN

 
 
 --------------------------------------------------------------------------------
 --State Machine: Moore -- Since inputs have no influence on outputs
 --------------------------------------------------------------------------------

 -- REGISTER_LOGIC PROCESS:
 
Register_Section: PROCESS (clk_input, reset, next_state, current_state)  -- this process synchronizes the activity to a clock
BEGIN
	IF (reset = '1') THEN
		current_state <= release_open_state; -- current_state will be original_state if reset is 1
	ELSIF(rising_edge(clk_input)) THEN
		current_state <= next_state; -- next_state on rising edge of clk_input
	END IF;
END PROCESS;	



-- TRANSITION LOGIC PROCESS

Transition_Section: PROCESS (grappler, grappler_en, current_state) 

BEGIN
     CASE current_state IS
			
			WHEN release_close_state =>	
				IF((grappler_en='1') AND (grappler='1')) THEN  -- if the grappler push button (pb_n(0)) is pressed and grappler is enabled then it will move to the press_open_state
					next_state <= press_open_state;
				ELSE
					next_state <= release_close_state; -- else it will stay in the same state
				END IF;
			
			WHEN press_open_state =>
				IF((grappler_en='1') AND (grappler='0')) THEN -- if the grappler push button (pb_n(0)) is not pressed and grappler is enabled then it will move to the release_open_state
					next_state <= release_open_state;
				ELSE
					next_state <= press_open_state; -- else it will stay in the same state
				END IF;
					
			WHEN release_open_state =>
				IF((grappler_en='1') AND (grappler='1')) THEN -- if the grappler push button (pb_n(0)) is pressed and grappler is enabled then it will move to the press_close_state
					next_state <= press_close_state;
				ELSE
					next_state <= release_open_state; -- else it will stay in the same state
				END IF;
			
			WHEN press_close_state =>
				IF((grappler_en='1') AND (grappler='0')) THEN -- if the grappler push button (pb_n(0)) is not pressed and grappler is enabled then it will move to the release_close_state
					next_state <= release_close_state;
				ELSE
					next_state <= press_close_state; -- else it will stay in the same state
				END IF;

 		END CASE;
 END PROCESS;

-- DECODER SECTION PROCESS

Decoder_Section: PROCESS (current_state) 

BEGIN
     CASE current_state IS 		
			
			WHEN release_close_state => -- during this state the grappler is closed
				grappler_on <= '1'; -- led(1) is OFF
				
			WHEN press_open_state => 	-- during this state the grappler is closed
				grappler_on <= '1'; -- led(1) is OFF
				
			WHEN release_open_state => 	-- during this state the grappler is open
				grappler_on <= '0'; -- led(1) is ON
			
			WHEN press_close_state => 	-- during this state the grappler is open
				grappler_on <= '0'; -- led(1) is ON

	  END CASE;
 END PROCESS;

 END ARCHITECTURE SM;
