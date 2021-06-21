;*******************************
;* Programa: LACO1.ASM *
;*******************************

;programa que repete 5x ALO Mundo
org 100h

.DATA
msg DB 'Alo Mundo!', 13d, 12o, 24h ; 13d==0Dh , 12o==0Ah e 24h
(controle da String)

.CODE
LEA DX, msg
MOV CX, 5d ; estabelece em CX o valor decimal (contagem do laco de
repeticao)
MOV AH, 09h
laco:
    INT 21h
    LOOP laco ; CX sera decrementado em 1
INT 20h