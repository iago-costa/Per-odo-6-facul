.MODEL small; tipo de memoria que deve ser usada; small ocupa 64kb  
.STACK 512d ; reserva de espaco na pilha - tamanho da pilha

.DATA
v1 DW 1d ; definindo valor v1
v2 DW 1d ; definindo valor v2
v3 DB 4d ; definindo valor v3
v4 DW 0h, '$'    

.CODE
MOV AX, @DATA ; acesso do segmento de codigo ao segmento de dados
MOV DS, AX
MOV AX, v1 ; movendo do valor da variavel v1 para AX 
ADD AX, v2 ; efetuado a adicao

MOV BL, v3 ; movendo v3 para BL 
MUL BL     ; multiplicando v3 com a soma (v1+v2)

MOV v4, AX ; movimenta o valor somado e multiplicado (v4=(v1+v2)*v3)
ADD v4, 30h ; encontra-se o valor da equacao do valor 30h a v4
MOV DX, OFFSET v4 ; armazena o valor de v4 em memoria

MOV AH, 09h ; exibicao dos resultados da equacao
INT 21h

MOV AH, 4Ch ; encerramento do programa
INT 21h ; controle do SO