-- ECE 124, LAB Session #206, Team Number #9, Tahmid Ahmed & Vidhi Patel
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY LogicalStep_Lab4_top IS
   PORT
	(
	Clkin_50			: in	std_logic;
	pb_n			: in	std_logic_vector(3 downto 0);
 	sw   			: in  std_logic_vector(7 downto 0); 
	leds			: out std_logic_vector(7 downto 0);

------------------------------------------------------------------	
	--xreg, yreg	: out std_logic_vector(3 downto 0);-- (for SIMULATION only)
	--xPOS, yPOS	: out std_logic_vector(3 downto 0);-- (for SIMULATION only)
------------------------------------------------------------------	
   seg7_data 	: out std_logic_vector(6 downto 0); -- 7-bit outputs to a 7-segment display (for LogicalStep only)
	seg7_char1  : out	std_logic;				    		-- seg7 digit1 selector (for LogicalStep only)
	seg7_char2  : out	std_logic				    		-- seg7 digit2 selector (for LogicalStep only)
	
	);
END LogicalStep_Lab4_top;

ARCHITECTURE Circuit OF LogicalStep_Lab4_top IS

-- Provided Project Components Used
------------------------------------------------------------------- 
COMPONENT Clock_Source 	port (SIM_FLAG: in boolean;clk_input: in std_logic;clock_out: out std_logic);
END COMPONENT;

component SevenSegment
  port 
   (
      hex	   :  in  std_logic_vector(3 downto 0);   -- The 4 bit data to be displayed
      sevenseg :  out std_logic_vector(6 downto 0)    -- 7-bit outputs to a 7-segment
   ); 
end component SevenSegment;
--
component segment7_mux 
  port 
   (
      clk         : in  std_logic := '0';
		DIN2 		   : in  std_logic_vector(6 downto 0);	
		DIN1 		   : in  std_logic_vector(6 downto 0);
		DOUT			: out	std_logic_vector(6 downto 0);
		DIG2			: out	std_logic;
		DIG1			: out	std_logic
   );
end component segment7_mux;
------------------------------------------------------------------
-- Add any Other Components here
------------------------------------------------------------------

component Bidir_shift_reg -- Used for the extender arm to create a left_right directional change
	port
	(
		CLK				: in std_logic := '0';
		RESET				: in std_logic := '0';
		CLK_EN			: in std_logic := '0';
		LEFT0_RIGHT1	: in std_logic := '0';
		REG_BITS			: OUT STD_LOGIC_VECTOR(3 DOWNTO 0) 
	);
end component Bidir_shift_reg;

component U_D_Bin_Counter4bit -- Used for the XY motion to create a up_down counter for X and Y positions
	port
	(
		CLK				: in std_logic := '0';
		RESET				: in std_logic := '0';
		CLK_EN			: in std_logic := '0';
		UP1_DOWN0		: in std_logic := '0';
		COUNTER_BITS	: OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
end component U_D_Bin_Counter4bit;

component Grappler -- Created to operate the grappler feature of the RAC
	port
	(
		 clk_input, reset, grappler, grappler_en	: IN std_logic;
		 grappler_on										: OUT std_logic
	);
end component Grappler;

component Extender -- Created to operate the extender feature of the RAC
	port
	(
		 clk_input, reset, extender, extender_en							: IN std_logic;
		 ext_pos																		: IN std_logic_vector(3 downto 0);
		 extender_out, clk_en, left_right, grappler_en					: OUT std_logic
	);
end component Extender;

component XY_Motion -- Created to operate the grappler feature of the RAC
	port
	(
		 clk_input, reset, X_LT, X_EQ, X_GT, motion, Y_LT, Y_EQ, Y_GT, extender_out 		: IN std_logic;
		 clk_en_X, up_down_X, error, Capture_XY, clk_en_Y, up_down_Y, extender_en			: OUT std_logic
	);
end component XY_Motion;

component Compx4 -- 4-bit comparator for the XY Motion
	port
	(
		var_A	: in std_logic_vector(3 downto 0); 
		var_B 	: in std_logic_vector(3 downto 0); 
		AGTB, AEQB, ALTB : out std_logic 
	);
end component Compx4;

component Synch_Inverter2 is port( -- Given in the project downloads
	sync_clk			: in std_logic := '0';
	input3,input2,input1,input0	: in std_logic := '0';
	sync_reset,sync_motion,sync_extender,sync_grappler	: out std_logic
	);
end component Synch_Inverter2;

component XY_Register -- Used in XY motion to enable different X and Y positions for the RAC.
	port
	(
		clk				: in std_logic;
		target			: in std_logic_vector (3 downto 0);
		reset				: in std_logic := '0';
		Capture_XY		: in std_logic;
		reg				: OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
end component XY_Register;


------------------------------------------------------------------
-- provided signals

-------------------------------------------------------------------
------------------------------------------------------------------	
constant SIM_FLAG : boolean := FALSE; -- set to FALSE when compiling for FPGA download to LogicalStep board
------------------------------------------------------------------	
------------------------------------------------------------------	
-- Create any additional internal signals to be used
signal clk_in, clock	: std_logic;
signal inverted_extender, inverted_motion, inverted_grappler : std_logic; -- inverted signals for push buttons
signal reset : std_logic; -- signal that resets ALL registers and State Machines


signal clk_en_X, up_down_X, error, Capture_XY, clk_en_Y, up_down_Y: std_logic; -- output signals for XY_Motion 

signal X_reg, X_pos, Y_reg, Y_pos : std_logic_vector(3 downto 0); -- 4 bit output signals for simulation

signal X_LT, X_EQ, X_GT, Y_LT, Y_EQ, Y_GT: std_logic; -- used as comparators for redirecting back to XY Motion

signal X_decoder_out, Y_decoder_out : std_logic_vector(6 downto 0); -- output signals for display seven segment display

signal clk_en, left_right: std_logic; -- used for funtionality of extender and bir-dir-shift-register respectively

signal ext_pos : std_logic_vector (3 downto 0); -- 4-bits to output the position of extender

signal grappler_on : std_logic; -- output of grappler

signal extender_en, extender_out, grappler_en : std_logic; -- Connection between state machines


BEGIN
clk_in <= clkin_50;

Clock_Selector: Clock_source port map(SIM_FLAG, clk_in, clock); -- clock: main clock driven by clock source block


-- Calling our instances below for the program to function:
inst1: Synch_Inverter2 port map (clock, pb_n(3), pb_n(2), pb_n(1), pb_n(0), reset, inverted_motion, inverted_extender, inverted_grappler);
inst2: Bidir_shift_reg port map(clock, reset, clk_en, left_right, ext_pos);

inst3: U_D_Bin_Counter4bit port map(clock, reset, clk_en_X, up_down_X, X_pos);
inst4: U_D_Bin_Counter4bit port map(clock, reset, clk_en_Y, up_down_Y, Y_pos);

inst5: XY_Register port map(clock, sw(7 downto 4), reset, Capture_XY, X_reg);
inst6: XY_Register port map(clock, sw(3 downto 0), reset,  Capture_XY, Y_reg);

inst7: Compx4 port map (X_pos, X_reg, X_GT, X_EQ, X_LT);
inst8: Compx4 port map (Y_pos, Y_reg, Y_GT, Y_EQ, Y_LT);

inst9: XY_Motion port map (clock, reset, X_LT, X_EQ,  X_GT, inverted_motion, Y_LT, Y_EQ, Y_GT, extender_out, clk_en_X, up_down_X, error, capture_XY, clk_en_Y, up_down_Y, extender_en);

inst10: Extender port map (clock, reset, inverted_extender, extender_en, ext_pos, extender_out, clk_en, left_right, grappler_en);

inst11: Grappler port map (clock, reset, inverted_grappler, grappler_en, grappler_on);

inst12: SevenSegment port map (X_pos, X_decoder_out);
inst13: SevenSegment port map (Y_pos, Y_decoder_out);

inst14: segment7_mux port map (clk_in, Y_decoder_out, X_decoder_out, seg7_data(6 downto 0), seg7_char2, seg7_char1);

leds(0) <= error; -- shows System Fault Error 
leds(1) <= grappler_on; -- shows Grappler open/close status (1 means CLOSED; 0 means OPEN)
leds (5 downto 2) <= ext_pos; -- shows extender position

-- For simulation below:
--xPOS <= X_pos;
--xreg <= X_reg;
--yPOS <= Y_pos;
--yreg <= Y_reg;
END Circuit;
