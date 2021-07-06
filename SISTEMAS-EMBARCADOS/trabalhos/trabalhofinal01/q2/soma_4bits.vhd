library ieee;   -- Bbliotecas
use ieee.std_logic_1164.all; --importa as funcoes de uso

entity soma_4bits is -- criacao da entidade

port
(
A: in std_logic_vector(3 downto 0); --variavel de entrada do valor A
B: in std_logic_vector(3 downto 0); --variavel de entrada do valor B
cin: in std_logic; --vai 1 de entrada
cout:out std_logic; --vai 1 de saida da operacao
S: out std_logic_vector(3 downto 0) -- variavel do valor se saida S
);
end soma_4bits; --final da entidade

architecture somador of soma_4bits is
begin

	process (A,B,cin) --processo para o meio somador
	variable temp:std_logic_vector(3 downto 0); -- recebera os valores das somas de A e B
	variable c:std_logic; -- fará a funcao do cin e do cout
	begin
	c := cin; -- atualiza o vai 1 de entrada para que as operacoes 
	
	--0-eraçoes  logicas para  bits
	temp(0) := A(0) xor B(0) xor c;
	c := (A(0) and B(0)) or ((A(0) xor B(0)) and c);
	
	temp(1) := A(1) xor B(1) xor c;
	c := (A(1) and B(1)) or ((A(1) xor B(1)) and c);

	temp(2) := A(2) xor B(2) xor c;
	c := (A(2) and B(2)) or ((A(2) xor B(2)) and c);

	temp(3) := A(3) xor B(3) xor c;
	c := (A(3) and B(3)) or ((A(3) xor B(3)) and c);

	cout <= c; -- variavel cout recebera o valor de c 
	S <= temp; -- variavel temp recebera o valor da saida S
	end process; -- final do processo
end somador; -- final do somador