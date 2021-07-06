LIBRARY ieee; -- declara bibliotecas externas ieee
USE ieee.std_logic_1164.all; -- chama funcoes da biblioteca

ENTITY dff_logic_mix IS -- declara entidade
PORT ( -- declara pinagem do modelo
		clk_reset, clk_preset, preset, reset : IN std_logic; -- declara portas de entrada preset e reset
		d_preset : IN std_logic_vector(3 downto 0); -- declara vetores de entrada preset
		q_preset : OUT std_logic_vector(3 downto 0); -- declare vetor de saida preset
		d_reset : IN std_logic_vector(3 downto 0); -- declara vetor de entrada reset
		q_reset : OUT std_logic_vector(3 downto 0) -- declara vetor de saida reset
		); -- finaliza declaracao de pinagem
END dff_logic_mix; -- finaliza entidade


ARCHITECTURE behavior_mix OF dff_logic_mix IS -- declara arquitetura que usa a entidade dff_logic_mix
BEGIN -- inicio arquitetura
	PROCESS(clk_preset, clk_reset, preset, reset) -- para verificar os valores
	BEGIN -- inicio verificacao
-- parte do preset -----------------------------	
		IF preset = '1' THEN -- se preset ativo faca
			q_preset <= (others => '1');	-- vetor saida do preset com todos os valores dos indices igual a 1
		ELSIF RISING_EDGE(clk_preset) THEN -- senao se clk_preset na borda de subida faca
			q_preset <= d_preset; -- vetor saida vai ser igual ao vetor de entrada do preset atual
		END IF; -- fim do if do preset
-- finaliza preset -----------------------------
-- parte do reset ------------------------------		
		IF reset = '1' THEN -- se reset ativo faca
			q_reset <= (others => '0'); -- vetor saida do reset com todos os valores dos indices igual a 0
		ELSIF RISING_EDGE(clk_reset) THEN -- senao se clk_reset na borda de subida faca
			q_reset <= d_reset; -- vetor saida do reset vai ser igual ao vetor entrada do reset atual
		END IF; -- fim do if do reset
-- finaliza reset ------------------------------
	END PROCESS; -- finaliza verificacao
END behavior_mix; -- finaliza arquitetura

