; Rodar o código 11 no Emu8086
;*******************************
;* Programa: CONDIC3.ASM *
;*******************************


org 100h

.DATA
msg1 DB 'Entre um valor numerico positivo (de 0 ate 9): ', 24h ; 24h caracter
de fim de string $
msg2 DB 0Dh, 0Ah, 'Valor impar', 24h ;0Dh tecla <ENTER>
msg3 DB 0Dh, 0Ah, 'Valor par', 24h ; 0Ah line feed
msg4 DB 0Dh, 0Ah, 'Caractere invalido', 24h

.CODE
LEA DX, msg1
CALL escreva

MOV AH, 01h ; entrada do caracter pelo teclado
INT 21h ; controle da acao

CMP AL, 30h ; desvio de deteccao de erro, caso o valor < 30h(0d)
JL erro  ; desvio para linha 40

CMP AL, 39h ; desvio de deteccao de erro, caso o valor >=39h (9h)
JG erro  ; desvia para linha 40

SUB AL, 30h ;efetua a subtracao do valor 30h para deixar apenas no
registrador AL o valor numerico
AND AL, 01h ;01h=00000001b compara com o registrador PF
JPE par     ;desvio (JPE quando AND for V)
JPO impar ;(JPO quando AND for F) ambasdesviam a execucao do
;programa para o trecho de validade
par:
LEA DX, msg3
CALL escreva
JMP saida

impar:
LEA DX, msg2
CALL escreva
JMP saida

erro:
LEA DX, msg4 ; mensagem armazenada na variavel msg4
CALL escreva
JMP saida

saida:
INT 20h

escreva PROC NEAR
MOV AH, 09h
INT 21h
RET
escreva ENDP