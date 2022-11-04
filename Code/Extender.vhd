-- ECE 124, LAB Session #206, Team Number #9, Tahmid Ahmed & Vidhi Patel
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity Extender IS Port
(
 clk_input, reset, extender, extender_en							: IN std_logic; 
 ext_pos																		: IN std_logic_vector(3 downto 0);
 extender_out, clk_en, left_right, grappler_en					: OUT std_logic
 );
END Extender;
 

 Architecture SM of Extender is
 
  
 TYPE STATE_NAMES IS (extend_state, full_extend_state, retract_state, full_retract_state, push_extension_state, push_retraction_state);   -- list all the STATE_NAMES values

 
 SIGNAL current_state, next_state	:  STATE_NAMES;     	-- signals of type STATE_NAMES

BEGIN

 
 
 --------------------------------------------------------------------------------
 --State Machine: Moore -- Since inputs have no influence on outputs
 --------------------------------------------------------------------------------

 -- REGISTER_LOGIC PROCESS:
 
Register_Section: PROCESS (clk_input, reset, next_state)  -- this process synchronizes the activity to a clock
BEGIN
	IF (reset = '1') THEN
		current_state <= full_retract_state; -- when reset push button is pressed (pb_n[3]), the entender will revert back to the fully retracted state "0000"
	ELSIF(rising_edge(clk_input)) THEN
		current_state <= next_state;
	END IF;
END PROCESS;	



-- TRANSITION LOGIC PROCESS

Transition_Section: PROCESS (current_state, extender, extender_en, ext_pos) -- inputs that affect the state transition

BEGIN
     CASE current_state IS
         WHEN push_extension_state =>	-- state that determines whether the extender is able to extend	
				IF((extender_en='1') AND (extender='0') AND (ext_pos = "0000")) THEN -- if the RAC is not in motion (i.e. extender_en='1'), the extender push button (pb_n[1]) is no longer being pressed and the extender is fully retracted ("0000")
					next_state <= extend_state; -- then the extender is extended
				ELSE
					next_state <= push_extension_state; -- extender remains in the same position
				END IF;

			WHEN extend_state =>	-- the state that extends the extender from 	0000 --> 1000 --> 1100 --> 1110 --> 1111
				IF((extender_en='1') AND (ext_pos /= "1111")) THEN	-- if the RAC is not in motion (i.e. extender_en='1'), and the extender is not fully extended ("1111")			
					next_state <= extend_state; -- then extend further by remaining in this state (i.e. extend until fully extended)
				ELSIF ((extender_en='1') AND (ext_pos = "1111")) THEN -- if the RAC is not in motion (i.e. extender_en='1'), and the extender is fully extended ("1111")
					next_state <= full_extend_state; -- then exit this state and move to the fully extend state
				ELSE
					next_state <= current_state;
				END IF;
				
			WHEN full_extend_state => -- fully extended state "1111" 		
				IF((extender_en='1') AND (extender='1')) THEN -- if the extender push button (pb_n[1]) is pressed again and the RAC is not in motion (i.e. extender_en='1') 
					next_state <= push_retraction_state; -- then the extender will be sent to the push_retraction_state that will determine whether the extender will be retracted
				ELSE
					next_state <= full_extend_state; -- the extender will remain in the fully extended state 
				END IF;	
				
			WHEN push_retraction_state =>	-- state that determines whether the extender is able to retract	
				IF((extender_en='1') AND (extender='0') AND (ext_pos = "1111")) THEN -- if the RAC is not in motion (i.e. extender_en='1'), the extender push button (pb_n[1]) is no longer being pressed and the extender is fully extended ("1111")
					next_state <= retract_state; -- then the extender is retracted
				ELSE
					next_state <= push_retraction_state; -- extender remains in the same position of fully extended
				END IF;
			
			WHEN retract_state => -- retracts the extender from 1111 --> 1110 --> 1100 --> 1000 --> 0000		
				IF((extender_en='1') AND (ext_pos /= "0000")) THEN	-- if the RAC is not in motion (i.e. extender_en='1'), and the extender is not fully retracted ("0000")				
					next_state <= retract_state;  -- then retract further by remaining in this state (i.e. retract until fully retracted)
				ELSIF ((extender_en='1') AND (ext_pos = "0000")) THEN -- if the RAC is not in motion (i.e. extender_en='1'), and the extender is fully retracted ("0000")
					next_state <= full_retract_state; -- then exit this state and move to the fully retracted state
				ELSE
					next_state <= current_state;
				END IF;	
		 
			WHEN full_retract_state =>	-- fully retracted state "0000" -- the state the extender reverts back to when the reset push button is pressed (pb_n[3])
				IF((extender_en='1') AND (extender='1')) THEN -- if the extender push button (pb_n[1]) is pressed and the RAC is not in motion (i.e. extender_en='1') 
					next_state <= push_extension_state; -- then the extender will be sent to the push_extension_state that will determine whether the extender will be extended
				ELSE
					next_state <= full_retract_state; -- the extender will remain in the fully retracted state 
				END IF;
		 
 		END CASE;
 END PROCESS;

-- DECODER SECTION PROCESS

Decoder_Section: PROCESS (current_state) 

BEGIN
     CASE current_state IS
         WHEN push_extension_state => -- state that determines whether the extender is able to extend			
			extender_out <= '0'; -- the extender is not extending and is not fully extended
			grappler_en <= '0'; -- the extender is not fully extended, thus the grappler is not enabled to open or close
			clk_en <= '0'; -- the Bidirectional Shift Register will not change when the clk_en is 0 (i.e. the leds do not need to change in this state)
			left_right <= '0'; -- the shift register is set to shift left, but since the clk_en is 0 the leds do not change **** should I change this to 1 so that it easier for the extend state to shift right?????
			
         WHEN extend_state =>	-- the state that extends the extender from 	0000 --> 1000 --> 1100 --> 1110 --> 1111	
			extender_out <= '1'; -- the extender is extending
			grappler_en <= '0'; -- extender is not fully extended, thus the grappler is not enabled to open or close
			clk_en <= '1'; -- the Bidirectional Shift Register will change when the clk_en is 1 (i.e. the leds need to change in this state to correspond to the extenders position)
			left_right <= '1'; -- the shift register is set to shift right    0000 		--> 		1000 		--> 		1100 		--> 		1110 		--> 		1111
									 -- one bit change								 	retracted			extending 1			extending 2			extending 3		fully extended
			
         WHEN full_extend_state => 	-- fully extended state "1111" 	
			extender_out <= '1'; -- the extender is fully extended
			grappler_en <= '1'; -- extender is fully extended, thus the grappler is enabled to open or close
			clk_en <= '0'; -- the Bidirectional Shift Register will not change when the clk_en is 0 (i.e. the leds do not need to change in this state) 
			left_right <= '0'; -- the shift register is set to shift left, but since the clk_en is 0 the leds do not change
			
         WHEN push_retraction_state =>	-- state that determines whether the extender is able to retract		
			extender_out <= '1'; -- the extender is fully extended
			grappler_en <= '1'; -- extender is fully extended, thus the grappler is enabled to open or close
			clk_en <= '0'; -- the Bidirectional Shift Register will not change when the clk_en is 0 (i.e. the leds do not need to change in this state) 
			left_right <= '0'; -- the shift register is set to shift left, but since the clk_en is 0 the leds do not change
			
         WHEN  retract_state=> -- the state that retracts the extender from 1111 --> 1110 --> 1100 --> 1000 --> 0000			
			extender_out <= '1'; -- the extender is still extended, as it has not fully retracted
			grappler_en <= '0'; -- extender is not fully extended, thus the grappler is not enabled to open or close
			clk_en <= '1'; -- the Bidirectional Shift Register will change when the clk_en is 1 (i.e. the leds need to change in this state to correspond to the extenders position)
			left_right <= '0'; -- the shift register is set to shift left    1111 		--> 		1110 		--> 		1100 		--> 		1000 		-->		0000	
									 -- one bit change								fully extended			extending 3			extending 2			extending 1		 	retracted
			
         WHEN full_retract_state =>	-- fully retracted state "0000" -- the state the extender reverts back to when the reset push button is pressed (pb_n[3])	
			extender_out <= '0'; -- extender is not extending and is retracted fully
			grappler_en <= '0'; -- extender is not fully extended, thus the grappler is not enabled to open or close
			clk_en <= '0'; -- the Bidirectional Shift Register will not change when the clk_en is 0 (i.e. the leds do not need to change in this state) 
			left_right <= '0'; -- the shift register is set to shift left, but since the clk_en is 0 the leds do not change

	  END CASE;
 END PROCESS;

 END ARCHITECTURE SM;
