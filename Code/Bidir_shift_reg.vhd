-- ECE 124, LAB Session #206, Team Number #9, Tahmid Ahmed & Vidhi Patel
library ieee;
use ieee.std_logic_1164.all; --Ask if IEEE or ieee makes a differnce
use ieee.numeric_std.all;

Entity Bidir_shift_reg is port
	(
		CLK				: in std_logic := '0';
		RESET				: in std_logic := '0';
		CLK_EN			: in std_logic := '0';
		LEFT0_RIGHT1	: in std_logic := '0';
		--REG_BITS			: OUT STD_LOGIC_VECTOR(7 DOWNTO 0) 
		REG_BITS			: OUT STD_LOGIC_VECTOR(3 DOWNTO 0) -- **** altered from what was originally put double check if correct???

	);
end Entity;

ARCHITECTURE one OF Bidir_shift_reg IS

Signal sreg 					: std_logic_vector(3 downto 0);


BEGIN

process (CLK, RESET) is
begin 
	if (RESET = '1') then
			sreg <= "0000";
			
	elsif (rising_edge(CLK) AND (CLK_EN = '1')) then
	
		if (LEFT0_RIGHT1 = '1') then -- TRUE for Right Shift
			
			sreg (3 downto 0) <= '1' & sreg(3 downto 1); -- right-shift of bits
			
		elsif (LEFT0_RIGHT1 = '0') then
			
			sreg (3 downto 0) <= sreg(2 downto 0) & '0'; -- left-shift of bits
			
		end if;
		
	end if;
	REG_BITS <= sreg;
	
end process;


END one;