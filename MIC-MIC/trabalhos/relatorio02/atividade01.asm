.MODEL small; tipo de memoria que deve ser usada; small ocupa 64kb  
.STACK 512d ; reserva de espaco na pilha - tamanho da pilha

.DATA
a DW 102d ; definindo valor 102
b DW 130d ; definindo valor 130
x DW 0h, '$'    

.CODE
MOV AX, @DATA ; acesso do segmento de codigo ao segmento de dados
MOV DS, AX

MOV AX, a ; movimentacao do valor da variavel a para AX
ADD AX, b ; efetuado a adicao

MOV x, AX ; movimenta o valor somado (x=a+b)
ADD x, 30h ; encontra-se o valor da adicao do valor 30h a x
MOV DX, OFFSET x ; armazena o valor de x(tamanho) em memoria

MOV AH, 09h ; exibicao dos resultados da soma de x
INT 21h

MOV AH, 4Ch ; encerramento do programa
INT 21h ; controle do SO