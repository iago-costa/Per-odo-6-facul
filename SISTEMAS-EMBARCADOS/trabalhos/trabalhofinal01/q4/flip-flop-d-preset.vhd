LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY dff_logic_preset IS
PORT (clk_preset, preset : IN std_logic;
		d_preset : IN std_logic_vector(7 downto 0);
		q_preset : OUT std_logic_vector(7 downto 0)
		);
END dff_logic_preset;


ARCHITECTURE behavior_preset OF dff_logic_preset IS
BEGIN
	PROCESS(clk_preset, preset)
	BEGIN
		IF preset = '1' THEN
			q_preset <= (others => '1');
		ELSIF RISING_EDGE(clk_preset) THEN
			q_preset <= d_preset;
		END IF;
	END PROCESS;
END behavior_preset;