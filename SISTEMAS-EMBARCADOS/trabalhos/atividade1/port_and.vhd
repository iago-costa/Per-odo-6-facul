-- Porta AND


-- Definição das bibliotecas
library IEEE;
use IEEE.std_logic_1164.all;


-- Criação da entidade

ENTITY port_and IS PORT (
	
		a : IN std_logic;
		b : IN std_logic;
		c : OUT std_logic
		
		);
END ENTITY;

-- Criação da arquitetura
ARCHITECTURE HARDWARE OF port_and IS
BEGIN
	c <= a AND b;


END HARDWARE;