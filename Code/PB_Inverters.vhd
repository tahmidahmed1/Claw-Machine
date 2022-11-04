-- ECE 124, LAB Session #206, Team Number #9, Tahmid Ahmed & Vidhi Patel
LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- Convert signal inputs to Active_HIGH
ENTITY PB_Inverters IS -- NOT USED IN LAB 4
	PORT 
	( 
		pb_n : IN std_logic_vector(3 downto 0); -- pb inputs
		--pb : OUT std_logic_vector(3 downto 0)  -- pb inverted outputs
		pb_3, pb_2, pb_1, pb_0 : OUT std_logic -- Change June 30 - Vidhi 
	);

END PB_Inverters;

ARCHITECTURE gates OF PB_Inverters IS 

BEGIN
 
-- Change June 30 - Vidhi 
--pb <= not(pb_n); -- process to invert the inputs

-- Change June 30 - Vidhi 
	pb_3 <= not(pb_n(3));
	pb_2 <= not(pb_n(2));
	pb_1 <= not(pb_n(1));
	pb_0 <= not(pb_n(0)); 
				  
END gates;
