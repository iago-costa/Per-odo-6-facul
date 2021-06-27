TITLE ADICAO DE VALORES

#MAKE_EXE#

DADOS SEGMENT 'DATA'
;a DB 0h, '$'
;b DB 0h, '$'
result DB 0h, '$'
mensagem1 DB 76h, 61h, 6Ch, 6Fh, 72h, 20h, 31h, 24h
mensagem2 DB 76h, 61h, 6Ch, 6Fh, 72h, 20h, 32h, 24h
;mensagem3 DB 73h, 6Fh, 6Dh, 61h, 24h
DADOS ENDS

PILHA SEGMENT STACK 'STACK'
DW 0100h DUP(?)
PILHA ENDS


CODIGO SEGMENT 'CODE'
MOV AX, DADOS
MOV DS, AX

MOV DX, OFFSET mensagem1
MOV AH, 09h
INT 21h ; apresentacao da mensagem1
MOV AH, 01h ; entrada do caracter pelo teclado
INT 21h
MOV BL, AL
           
MOV AH, 09h
MOV DX, OFFSET mensagem2
INT 21h ; apresentacao da mensagem2
MOV AH, 01h ;entrada do caracter pelo teclado
INT 21h ;apresentacao da mensagem2
ADD AL, BL 
 
SUB AL, 30h             
MOV result, AL 
   

;MOV DX, OFFSET mensagem3
;MOV AH, 09h
;INT 21h ; apresentacao da mensagem3                     

MOV DX, OFFSET result ;armazena o valor da soma na variavel result
MOV AH, 09h ; exibicao do resultado da soma
INT 21h
MOV AH, 4ch ;encerramento do programa
INT 21h ;Controle do SO
CODIGO ENDS
