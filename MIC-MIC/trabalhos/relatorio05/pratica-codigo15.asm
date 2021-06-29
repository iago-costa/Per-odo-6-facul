TITLE Teste de Segmento 7

#MAKE_EXE#

DADOS SEGMENT 'DATA'
msg1 DB 'Entre valor 1 (de 0 a 9) .....: ', 24h
msg2 DB 0Dh, 0Ah, 'Entre valor 2 (de 0 a 9) .....: ', 24h
msg3 DB 0Dh, 0Ah, 'Resultado ....................: ', 24h
msg4 DB 0Dh, 0Ah, 'Valor invalido', 24h
DADOS ENDS

PILHA SEGMENT STACK 'STACK'
DW 0100h DUP(?)
PILHA ENDS

CODIGO SEGMENT 'CODE'
ASSUME CS:CODIGO, DS:DADOS, SS:PILHA

INICIO PROC FAR
MOV AX, DADOS
MOV DS, AX
MOV ES, AX

MOV DX, OFFSET msg1
MSG
CALL entrada
MOV BH, AL

MOV DX, OFFSET msg2
MSG
CALL entrada
MOV BL, AL

MOV DX, OFFSET msg3
MSG
SUB BH, BL ; Se o valor BH<BL, altera SF=1, indicando BH como negativo.
JS negativo ; verifica se SF= 1, fazendo o desvio de programa
JGE positivo ; verifica se o valor de BH>=BL, se V desvio de programa

negativo:
NEG BH ; transforma o valor negativo (complemento de dois) em seu equivalente positivo
MOV AL, 2Dh ; movimenta o valor 2Dh para o AL (ASCII 2Dh = -)
MOV AH, 0Eh
INT 10h
JMP mostra ; mostra e apresenta o valor numerico armazenado na memoria

positivo:
JMP mostra

mostra:
MOV AL, BH
MOV DL, AL
ADD AL, 30h
MOV AH, 0Eh
INT 10h
FIM
RET
INICIO ENDP
CODIGO ENDS

fim MACRO
MOV AH, 4Ch
INT 21h
ENDM

msg MACRO
MOV AH, 09h
INT 21h
ENDM

entrada PROC NEAR
MOV AH, 01h
INT 21h
CMP AL, 30h
JL erro
CMP AL, 40h
JGE erro
JMP fim_validacao

erro:
LEA DX, msg4
MSG
FIM

fim_validacao:
SUB AL, 30h
RET
entrada ENDP

END INICIO

