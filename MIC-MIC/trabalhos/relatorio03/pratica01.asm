:* Programa: MENSAGEMA. ASM *

org 100h : 64Kbytes

DATA : ODh, OAh e 24h mudanca de linha de cursor apos escrita da
mensagem

mensageml DB 'Mensagem 1', ODh, OAh, 24h; ODh tecla <ENTER>

mensagem? DB 'Mensagem 2', ODh, OAh, 24h; OAh mudanca de linha

mensagem3 DB 'Mensagem 3', ODh, OAh, 24h ; 24h identifica o final de uma sequencia
de caracter ($)

.CODE

JMP salto3 : salta para a linha 27
saltol:

LEA DX, mensageml
CALL escreva

JMP saida

salto2:

LEA DX, mensagem?
CALL escreva

JMP saltol

salto3:

LEA DX, mensagem3 : envio da mensagem 3
CALL escreva ;chama do procedimento escreva pelo CALL linha 35
JMP salto?

saida:
INT 20h

escreva PROC NEAR : procedimento escreva

MOV AH, 09h: apresentacao do caracter 09h

INT 21h; interrupcao 21h

RET : retorno do procedimento para a 1 linha apos sua chamada (30)
escreva ENDP