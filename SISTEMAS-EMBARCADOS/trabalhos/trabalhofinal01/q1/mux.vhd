LIBRARY ieee;
USE ieee.std_logic_1164.all;
-----------------------------------------------------------
ENTITY mux IS
	PORT(
		a, b, c, d: IN STD_LOGIC_VECTOR (7 DOWNTO 0);	
		sel: IN NATURAL RANGE 0 TO 3;
		ena: IN STD_LOGIC;
		y: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		);
END ENTITY;
---------------------------------------------------------
ARCHITECTURE HARDWARE OF mux IS
	SIGNAL x: STD_LOGIC_VECTOR (7 DOWNTO 0);	
BEGIN
	x <= a WHEN sel=0 ELSE
		  b WHEN sel=1 ELSE
		  c WHEN sel=2 ELSE
		  d;

	y <= x WHEN ena='1' ELSE
		(others => 'Z');
END HARDWARE;