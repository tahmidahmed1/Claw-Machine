-- ECE 124, LAB Session #206, Team Number #9, Tahmid Ahmed & Vidhi Patel
library ieee;
use ieee.std_logic_1164.all; --Ask if IEEE or ieee makes a differnce
use ieee.numeric_std.all;

Entity U_D_Bin_Counter4bit is port
	(
		CLK				: in std_logic := '0';
		RESET				: in std_logic := '0';
		CLK_EN			: in std_logic := '0';
		UP1_DOWN0		: in std_logic := '0';
		COUNTER_BITS	: OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
end Entity;

ARCHITECTURE one OF U_D_Bin_Counter4bit IS

Signal ud_bin_counter 			: UNSIGNED(3 downto 0);


BEGIN

--process (CLK, CLK_EN, RESET_N, UP1_DOWN0) is
process (CLK, RESET) is
begin 
	if (RESET = '1') then -- sets to 0 when reset is pressed
			ud_bin_counter <= "0000";
			
	elsif (rising_edge(CLK)) then
	
		if ((UP1_DOWN0 = '1') AND (CLK_EN ='1')) then
			
			ud_bin_counter <= (ud_bin_counter + 1); -- counts up by 1
			
		elsif ((UP1_DOWN0 = '0') AND (CLK_EN = '1')) then
			
			ud_bin_counter <= (ud_bin_counter - 1); -- counts down by 1
			
		end if;
		
	end if;
	COUNTER_BITS <= STD_LOGIC_VECTOR(ud_bin_counter);
	
end process;


END;