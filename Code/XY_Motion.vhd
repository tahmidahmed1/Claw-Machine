-- ECE 124, LAB Session #206, Team Number #9, Tahmid Ahmed & Vidhi Patel
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity XY_Motion IS Port
(
 clk_input, reset, X_LT, X_EQ, X_GT, motion, Y_LT, Y_EQ, Y_GT, extender_out 		: IN std_logic;
 clk_en_X, up_down_X, error, Capture_XY, clk_en_Y, up_down_Y, extender_en			: OUT std_logic
 );
END XY_Motion;
 

 Architecture SM of XY_Motion is
 
  
 TYPE STATE_NAMES IS (original_state, press_state, release_state, error_state, flashing_error_state);   -- list all the STATE_NAMES values

 
 SIGNAL current_state, next_state	:  STATE_NAMES;     	-- signals of type STATE_NAMES

BEGIN

 
 
 --------------------------------------------------------------------------------
 --State Machine: Mealy -- Since input (motion) influences the output
 --------------------------------------------------------------------------------

 -- REGISTER_LOGIC PROCESS:
 
Register_Section: PROCESS (clk_input, reset, next_state)  -- this process synchronizes the activity to a clock
BEGIN
	IF (reset = '1') THEN
		current_state <= original_state; -- current_state becomes original_state if reset is pressed
	ELSIF(rising_edge(clk_input)) THEN
		current_state <= next_state; -- current_state becomes next_state on rising edge of clk_input
	END IF;
END PROCESS;	



-- TRANSITION LOGIC PROCESS

Transition_Section: PROCESS (current_state, motion, extender_out) 

BEGIN
     CASE current_state IS
         WHEN original_state =>		
				IF(motion ='1') THEN -- if the motion push button (pb_n(2)) is pressed then it will move to the press_state
					next_state <= press_state;  
				ELSE
					next_state <= original_state; -- Else stay in same state
				END IF;

         WHEN press_state =>		
				IF ((extender_out = '1') AND ((x_EQ = '0') OR (Y_EQ = '0'))) THEN -- if the extender is out and X or Y positions changed from current position then it will move to the error_state
					next_state <= error_state;
				ELSIF(motion ='0') THEN -- if the motion push button (pb_n(2)) is not pressed then it will move to the release_state
					next_state <= release_state;
				ELSE
					next_state <= press_state; -- Else stay in same state
				END IF;

         WHEN error_state =>	-- Intermediate state be	
				IF((motion ='1') AND (extender_out = '0')) THEN -- if the motion push button (pb_n(2)) is pressed and extender is retracted then it will move to the press_state
					next_state <= press_state;
				ELSIF((motion='0') AND (extender_out = '0')) THEN -- if the motion push button (pb_n(2)) is not pressed and extender is retracted then it will move to the release_state
					next_state <= release_state;
				ELSE
					next_state <= flashing_error_state; -- Else stay in same state
				END IF;
				
			WHEN flashing_error_state =>		
				IF((motion ='1') AND (extender_out = '0')) THEN -- if the motion push button (pb_n(2)) is pressed and extender is retracted then it will move to the press_state
					next_state <= press_state;
				ELSIF((motion='0') AND (extender_out = '0')) THEN -- if the motion push button (pb_n(2)) is not pressed and extender is retracted then it will move to the release_state
					next_state <= release_state;
				ELSE
					next_state <= error_state; -- Else stay in same state
				END IF;
				
			WHEN release_state =>		
				IF ((extender_out = '1') AND ((x_EQ = '0') OR (Y_EQ = '0'))) THEN -- if the extender is out and X or Y positions changed from current position then it will move to the error_state
					next_state <= error_state;
				ELSIF(motion ='1') THEN -- if the motion push button (pb_n(2)) is pressed then it will move to the press_state
					next_state <= press_state;
				ELSE
					next_state <= release_state; -- Else stay in same state
				END IF;
				
         
				
 		END CASE;
 END PROCESS;

-- DECODER SECTION PROCESS

Decoder_Section: PROCESS (current_state, motion, X_LT, X_EQ, X_GT, Y_LT, Y_EQ, Y_GT, extender_out) 

BEGIN
     CASE current_state IS
         WHEN original_state => -- Initital State where X and Y position is 0
			clk_en_X <= '0'; -- setting x to 0 as there are no changes
			error <= '0'; -- no error since no changes
			Capture_XY <= '0'; -- setting to 0 as default
			clk_en_Y <= '0'; -- setting y to 0 as there are no changes
			extender_en <= '1'; -- enabelling extender as no position changing here
			
         WHEN press_state =>		
			clk_en_X <= '0'; -- no x movement for up_down counter
			error <= '0'; -- no error as no x and y changes started
			Capture_XY <= '1'; -- enabled to capture target x and y position values
			clk_en_Y <= '0'; -- no y movement for up_down counter
			extender_en <= '1'; -- extender can move as no x and y changes started
			
			WHEN error_state =>
			IF (motion = '1') THEN -- if motion is pressed, record x and y target positions
				Capture_XY <= '1';
			ELSE
				Capture_XY <= '0'; -- else don't record
			END IF;
			clk_en_X <= '0'; -- no x movement for up_down counter
			error <= '1'; -- there is error so enables the error led
			clk_en_Y <= '0'; -- no y movement for up_down counter

         WHEN flashing_error_state =>		
			IF (motion = '1') THEN -- if motion is pressed, record x and y target positions
				Capture_XY <= '1';
			ELSE
				Capture_XY <= '0'; -- else don't record
			END IF;
			clk_en_X <= '0'; -- no x movement for up_down counter
			error <= '0'; -- there is no error so disables the error led
			clk_en_Y <= '0'; -- no x movement for up_down counter

         WHEN release_state => -- does the movement if and only if there is no error and target value is not reached		
			clk_en_X <= '1';  -- enables x movement for up_down counter
			error <= '0'; -- there is no error so disables the error led
			Capture_XY <= '0';  -- disabled to not capture target x and y position values
			clk_en_Y <= '1'; -- enables y movement for up_down counter
			extender_en <= '1'; -- here extender can move since no x and y movement happens yet unless the below conditions are met
			
			IF ((motion = '0') AND (X_GT = '1')) THEN -- if the motion push button (pb_n(2)) is not pressed and x position is greater than current x position set up_down_X to 0 (counts up) and disable extender
				up_down_X <= '0';
				extender_en <= '0';
			ELSIF ((motion = '1') OR (X_EQ = '1'))THEN -- else if the motion push button (pb_n(2)) is pressed or x position is equal to current x position then set clk_en_X to 0
				clk_en_X <= '0';
				IF(motion = '1') THEN -- if the motion push button (pb_n(2)) is pressed then enable to capture target X value
					Capture_XY <= '1';
				END IF;
			ELSIF ((motion='0') AND (X_LT='1'))THEN -- else if the motion push button (pb_n(2)) is not pressed and x position is less than current x position then set up_down_X to 1 (counts down) and disable extender
				up_down_X <='1';
				extender_en <= '0';
			END IF;
			
			IF ((motion = '0') AND (Y_GT = '1')) THEN -- if the motion push button (pb_n(2)) is not pressed and y position is greater than current y position set up_down_Y to 0 (counts up) and disable extender
				up_down_Y <= '0';
				extender_en <= '0';
			ELSIF ((motion = '1') OR (Y_EQ = '1'))THEN -- else if the motion push button (pb_n(2)) is pressed or Y position is equal to current Y position then set clk_en_Y to 0
				clk_en_Y <= '0';
				IF(motion = '1') THEN -- if the motion push button (pb_n(2)) is pressed then enable to capture target Y value
					Capture_XY <= '1';
				END IF;
			ELSIF ((motion='0') AND (Y_LT='1'))THEN -- else if the motion push button (pb_n(2)) is not pressed and y position is less than current y position then set up_down_Y to 1 (counts down) and disable extender
				up_down_Y <='1';
				extender_en <= '0';
			END IF;
			
     
	  END CASE;
 END PROCESS;

 END ARCHITECTURE SM;