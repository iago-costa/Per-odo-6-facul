LIBRARY ieee; ----Faz a importação das bibliotecas ieee
USE ieee.std_logic_1164.all; --importa as funções de uso

ENTITY my_mux IS -- Declaração da minha entidade
	port( -- chamada da função port pra criação de portas
			a,b,c,d: IN STD_LOGIC_VECTOR (7 DOWNTO 0);	-- declaração das variaveis de entrada
			sel: IN NATURAL RANGE 0 TO 3; -- variavel de seleção de tamanho 5 (0 a 3)
			ena: IN STD_LOGIC; ---variavel pra ativar o estado logico
			Y: OUT STD_LOGIC_VECTOR (7 DOWNTO 0) -- variavel de saida 
			); --parentese de fechamento da função
END my_mux; --fim de my_mux da minha entidade

ARCHITECTURE HARDWARE OF my_mux IS -- arquitetura do hardware para meu mux
SIGNAL X: STD_LOGIC_VECTOR (7 DOWNTO 0);	-- sinal que receberá o estado logico do vetor
BEGIN -- inicio de logica da arquitetura
X<=a WHEN sel=0 ELSE -- variavel sel=0 entao ele envia o valor de a para X
   b WHEN sel=1 ELSE -- variavel sel=1 entao ele envia o valor de b para X
   c WHEN sel=2 ELSE -- variavel sel=2 entao ele envia o valor de c para X
	d ; -- senão sel3=3 

Y<=X WHEN ena='1' ELSE -- condição da variavel de saida
	(others => 'Z'); -- caso contrario entra z como impiedancia
END HARDWARE ; -- finaliza hardware