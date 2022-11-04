-- ECE 124, LAB Session #206, Team Number #9, Tahmid Ahmed & Vidhi Patel
library ieee;
use ieee.std_logic_1164.all;


-- 4-bit comparator

entity Compx4 is
port(

	var_A	: in std_logic_vector(3 downto 0); 
	var_B 	: in std_logic_vector(3 downto 0); 
	AGTB, AEQB, ALTB : out std_logic 
	
);
end Compx4;

architecture Compx4_logic of Compx4 is 

	component Compx1 port(

	INPUT_A, INPUT_B	: in std_logic; -- 4-bit inputs
	A_GREATER, A_EQUAL_B, B_GREATER : out std_logic
	
	);
	
	end component;
	
	
	
	signal A3GTB3		: std_logic;
	signal A3EQB3		: std_logic;
	signal A3LTB3		: std_logic;
	
	signal A2GTB2		: std_logic;
	signal A2EQB2		: std_logic;
	signal A2LTB2		: std_logic;

	
	signal A1GTB1		: std_logic;
	signal A1EQB1		: std_logic;
	signal A1LTB1		: std_logic;

	
	signal A0GTB0		: std_logic;
	signal A0EQB0		: std_logic;
	signal A0LTB0		: std_logic;

	
	
begin 

	INST1: Compx1 port map(var_A(3), var_B(3), A3GTB3, A3EQB3, A3LTB3);
	INST2: Compx1 port map(var_A(2), var_B(2), A2GTB2, A2EQB2, A2LTB2);
	INST3: Compx1 port map(var_A(1), var_B(1), A1GTB1, A1EQB1, A1LTB1); 
	INST4: Compx1 port map(var_A(0), var_B(0), A0GTB0, A0EQB0, A0LTB0);
	
	AGTB <= (A3GTB3 OR (A3EQB3 AND A2GTB2) OR (A3EQB3 AND A2EQB2 AND A1GTB1) OR (A3EQB3 AND A2EQB2 AND A1EQB1 AND A0GTB0));
	ALTB <= (A3LTB3 OR (A3EQB3 AND A2LTB2) OR (A3EQB3 AND A2EQB2 AND A1LTB1) OR (A3EQB3 AND A2EQB2 AND A1EQB1 AND A0LTB0));
	AEQB <= A0EQB0 AND A1EQB1 AND A2EQB2 AND A3EQB3;
	
	
end Compx4_logic;
