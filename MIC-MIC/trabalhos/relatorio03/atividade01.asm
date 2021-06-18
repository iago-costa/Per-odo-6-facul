;* Programa: MENSAGEMA. ASM *

org 100h ; 64Kbytes

.DATA ; 0Dh, 0Ah e 24h mudanca de linha de cursor apos escrita da mensagem

mensageml DB 'Mensagem 1', 0Dh, 0Ah, 24h ; 0Dh tecla <ENTER>
mensagem2 DB 'Mensagem 2', 0Dh, 0Ah, 24h ; 0Ah mudanca de linha
mensagem3 DB 'Mensagem 3', 0Dh, 0Ah, 24h ; 24h identifica o final de uma sequencia de caracter ($)


.CODE

JMP salto3 ; salta para a linha 27

saltol:
LEA DX, mensageml
CALL escreva
JMP saida

salto2:
LEA DX, mensagem2
CALL escreva
JMP saltol

salto3:
LEA DX, mensagem3 ; envio da mensagem 3
CALL escreva ;chama do procedimento escreva pelo CALL
JMP salto2

saida:
INT 20h

escreva PROC NEAR ;procedimento escreva
MOV AH, 09h ;apresentacao do caracter 09h
INT 21h; interrupcao 21h
RET ; retorno do procedimento para a 1 linha apos sua chamada (30)
escreva ENDP