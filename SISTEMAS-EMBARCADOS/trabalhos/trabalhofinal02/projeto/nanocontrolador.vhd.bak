library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all; --serve para fazer operações aritméticas entre vetores std_logic_vector

entity NanoControlador is
			
	port(A, B: in std_logic_vector(7 downto 0); -- barramento A e B de 8 bits de entrada
		ula_op: in std_logic_vector(2 downto 0); -- barramento de 4 bits de flag ula_op pra definir a escolha da operaçao
	     	  C: out std_logic_vector(7 downto 0); -- barrramento de saida C de 8 bits
		n_inst, z_inst, c_inst, v_inst: out std_logic);
		
end NanoControlador;

architecture ULA of NanoControlador is
  signal A_int, B_int, C_int : std_logic_vector(8 downto 0);
	  begin
		   A_int <= '0' & A;

		   B_int <= '0' & B;

		   C <= C_int (7 downto 0); -- toma n-1 bits menos significativos
		
		process(ula_op, A_int, B_int)
		
			begin
					case ula_op is
					when "000" => C_int <= A_int + B_int; -- soma
					when "001" => C_int <= A_int - B_int; -- subtrai
					when "010" => C_int <= not A_int; -- not
					when "100" => C_int <= B_int; -- passa B
					when "101" => C_int <= A_int or B_int; -- ou lógico
					when "110" => C_int <= A_int and B_int; -- e lógico
					when "111" => C_int <= A_int; -- passa A
					when others => C_int <= A_int; -- default: passa A;
			end case;
		end process;

		n_inst <= C_int(7);

		z_inst <= '1' when (C_int(7 downto 0) = "00000000") else '0';
		
		c_inst <= C_int(8);
		
		v_inst <= '1' when (A_int(7)=B_int(7) and
		
		A_int(7)/=C_int(7)) else '0';

end ULA;