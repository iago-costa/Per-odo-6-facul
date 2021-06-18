; Comparar o conteudo dos registradores AL e conteudo de BL sao iguais

; Se iguais somar 1 ao registrador AL

; Apos a execucao da decisao sobre a condicao ser F ou V, conteudo de BL deve ser
; diminuído em 1

;:O programa deve apresentar os valores dos registradores



;* Programa: CONDICI.ASM *


.MODEL small

.STACK 512d

.DATA

a DB 6d ;6 decimal

b DB 6d

.CODE   

MOV AX, @DATA
MOV DS, AX

MOV AL, a
MOV BL, b

CMP AL, BL ; SE (AL=BL) ENTAO
JE entao ; salto (=)
JMP fimse ; se V desvia para linha 26

entao:
INC AL ; incremento do valor Olh a AL
CALL apoio ; chamada do procedimento apoio
MOV DL, AL ; transferencia do valor AL para DL (07h)
CALL escreva ; chamada do procedimento escreva

fimse: ;fechamento
DEC BL ;decremento 01h sobre BL (05h)
CALL apoio ; chama o procedimento apoio
MOV DL, BL ; movimentacao do valor
CALL escreva ; chamada do procedimento escreva

INT 20h

escreva PROC NEAR
ADD DL, 30h
CMP DL, 39h
JLE valor
ADD DL, 07h

valor:
INT 21h
RET
escreva ENDP
       
       
apoio PROC NEAR ; prepara o ambiente para apresentacao de um caracter por vez
MOV AH, 02h
MOV CL, 04h
SHR DL, CL
RET
apoio ENDP