library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all; --serve para fazer operações aritméticas entre vetores std_logic_vector

entity NanoControlador is
	 port(
		A, B: in std_logic_vector(7 downto 0);     -- barramento A e B de 8 bits de entrada
		ula_op: in std_logic_vector(3 downto 0);   -- barramento de 4 bits de flag ula_op pra definir a escolha da operaçao
	   C: out std_logic_vector(7 downto 0);       -- barrramento de saida C de 8 bits
		enable, clk: in BIT;								 -- enable e clk 		
		address: in INTEGER RANGE 0 TO 10			 -- vetor para posicao de memoria
			
	);
		
end NanoControlador;

ARCHITECTURE HARDWARE OF NanoControlador IS -- inicio arquitetura hardware
	SIGNAL 	A_int, -- registrador A
				B_int, -- registrador B
				data_in, -- registrador data_in
				C_int : std_logic_vector(7 DOWNTO 0);
	TYPE memory IS ARRAY (0 TO 10) OF std_logic_vector(7 DOWNTO 0); -- matriz para memoria
	SIGNAL ram: memory; 															 -- registral simulando memoria temporaria

BEGIN
	PROCESS(clk) 										-- inicio processo de clk
	BEGIN
		IF (enable = '1') THEN 						-- se enable ativo
			IF (clk'EVENT AND clk = '1') THEN 	-- se clk ativo
				A_int <= A; 							-- valor da entrada A vinculado ao registrador A_int
				B_int <= B; 							-- valor da entrada B vinculado ao registrador B_int 
				ram(address) <= data_in; 			-- resultado da operacao como data_in vinculado ao registrador na matriz memory
			END IF;
		END IF; 
	END PROCESS;
	
	data_in <= C_int; 	 -- registrador C_int vinculado ao data_in
	C <= ram(address);    -- registrador na matriz memory vinculado a saída C
	
	ULA: PROCESS(ula_op, A_int, B_int) 						-- inicio do processo da ula
	BEGIN
		CASE ula_op IS 											-- opcoes de configuracao da ula
			WHEN "0000" => C_int <= A_int + B_int; 		-- soma
			WHEN "0001" => C_int <= A_int - B_int; 		-- subtrai
			WHEN "0010" => C_int <= NOT A_int + B_int; 	-- inversor soma
			WHEN "0011" => C_int <= NOT A_int - B_int; 	-- inversor subtracao
			
			WHEN "0100" => C_int <= not A_int; 				-- not A
			WHEN "0101" => C_int <= not B_int; 				-- not B
			WHEN "0110" => C_int <= A_int or B_int;   	-- ou lógico
			WHEN "0111" => C_int <= A_int and B_int;  	-- e lógico
			WHEN "1000" => C_int <= A_int; 					-- passa A
			WHEN "1001" => C_int <= B_int; 					-- passa B
			WHEN "1010" => C_int <= A_int nor B_int; 		-- not or lógico 
			WHEN "1011" => C_int <= A_int nand B_int; 	-- not e lógico
			WHEN OTHERS => C_int <= A_int; 					-- default: passa A;
		END CASE;
	END PROCESS ULA;

END HARDWARE; 