LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY dff_logic_reset IS --- Declara entidade
PORT (clk_reset, reset : IN std_logic; -- declara variável lógica clk_reset e reset
		d_reset : IN bit_vector(7 downto 0); -- declara vetor d_reset de entrada
		q_reset : OUT bit_vector(7 downto 0) -- declara vetor q_reset de saida		
		);
END dff_logic_reset; -- finaliza declaracao da entidade

ARCHITECTURE behavior_reset OF dff_logic_reset IS -- declara a arquitetura para a entidade declarada
BEGIN -- inicio arquitetura
	PROCESS(clk_reset, reset) -- 
	BEGIN
		IF reset = '1' THEN
			q_reset <= (others => '0');
		ELSIF RISING_EDGE(clk_reset) THEN
			q_reset <= d_reset;
		END IF;
	END PROCESS;
END behavior_reset;	
		