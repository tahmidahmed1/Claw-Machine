-- ECE 124, LAB Session #206, Team Number #9, Tahmid Ahmed & Vidhi Patel
library ieee;
use ieee.std_logic_1164.all;


-- Single-bit comparator

entity Compx1 is 
port(

	INPUT_A, INPUT_B	: in std_logic; -- 1-bit inputs
	A_GREATER, A_EQUAL_B, B_GREATER : out std_logic
	
);

end Compx1;

architecture Compx1_logic of Compx1 is
	
	
begin

A_GREATER <= INPUT_A AND (NOT INPUT_B);
B_GREATER <= (NOT INPUT_A) AND INPUT_B;
A_EQUAL_B <= INPUT_A XNOR INPUT_B; 

end Compx1_logic;
