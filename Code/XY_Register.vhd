-- ECE 124, LAB Session #206, Team Number #9, Tahmid Ahmed & Vidhi Patel
library ieee;
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;


-- when motion push button is pressed (pb_n[2]), the X and Y values dictated by the switches ae captured in the holding registers
Entity XY_Register is port
	(
		clk				: in std_logic;
		target			: in std_logic_vector (3 downto 0); -- input of the user
		reset				: in std_logic := '0'; -- resets register to 0
		Capture_XY		: in std_logic; -- Enable for the register
		reg				: OUT STD_LOGIC_VECTOR(3 DOWNTO 0) -- Output of the register
	);
end XY_Register;

ARCHITECTURE one OF XY_Register IS


BEGIN

process (reset, target, Capture_XY) is
begin 
	if (reset = '1') then
			reg <= "0000"; -- If reset is pressed, set output of register to be '0000' --> 0 position for the arm			
	elsif ( (rising_edge(clk)) AND (Capture_XY = '1')) then
		reg <= target; -- When enable for the register is activated then, set the output of the register to be the target
	
	end if;
	
end process;


END one;