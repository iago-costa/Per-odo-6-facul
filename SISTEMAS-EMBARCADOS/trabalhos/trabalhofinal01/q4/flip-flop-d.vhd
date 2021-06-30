LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY dff_logic_d IS
PORT (d, clk : IN BIT;
		q : OUT BIT
		);
END dff_logic_d;

ARCHITECTURE behavior_d OF dff_logic_d IS
BEGIN
	PROCESS(clk)
	BEGIN
		IF (clk'event AND clk = '1') THEN
			q <= d;
		END IF;
	END PROCESS;
END behavior_d;