org 100h

.DATA
msg1 DB 'Entre um valor numerico positivo (de 0 ate 9): ', 24h ; 24h caracter
;de fim de string $
msg2 DB 0Dh, 0Ah, 'Entre um valor numerico positivo 2 (de 0 ate 9): ', 24h ;0Dh tecla <ENTER>
msg3 DB 0Dh, 0Ah, 'Valor soma: ', 24h ; 0Ah line feed
msg4 DB 0Dh, 0Ah, 'Caractere invalido', 24h

.CODE

JMP entrada1     
JMP entrada2
JMP imprimir
        
entrada1:
LEA DX, msg1
CALL escreva ; chamando procedimento escreva para imprimir mensagem no terminal
MOV AH, 01h ; entrada do caracter pelo teclado
INT 21h ; controle da acao
CMP AL, 30h ; desvio de deteccao de erro, caso o valor < 30h(0d)
JL erro  ; desvio para rotina erro
CMP AL, 39h ; desvio de deteccao de erro, caso o valor >=39h (9h)
JG erro  ; desvia para rotina erro
SUB AL, 30h ; efetua a subtracao do valor 30h para deixar apenas no
OR BL, AL ; registrador AL o valor numerico
            
entrada2:
LEA DX, msg2
CALL escreva
MOV AH, 01h ; entrada do caracter pelo teclado
INT 21h ; controle da acao
CMP AL, 30h ; desvio de deteccao de erro, caso o valor < 30h(0d)
JL erro  ; desvio para rotina erro
CMP AL, 39h ; desvio de deteccao de erro, caso o valor >=39h (9h)
JG erro  ; desvia para rotina erro
SUB AL, 30h ; efetua a subtracao do valor 30h para deixar apenas no
                  
ADD BL, AL ; somando AL + BL em BL

imprimir:
LEA DX, msg3 ; copiando endereco de msg para dx
CALL escreva ; chamando procedimento escreva para imprimir mensagem no terminal
MOV AH, 02h ; preparando interrupcao para imprimir caractere em dl
MOV DL, BL  ; movendo soma de BL para DL
ADD DL, 30h ; asicionando 30h para mostrar o caractere em ASCII
CALL resultado ; chamando procedimento para imprimir resultado da soma
JMP saida ; chamando rotina de finalizacao                                                                  

erro:
LEA DX, msg4 ; mensagem armazenada na variavel msg4
CALL escreva ; chamando procedimento escreva para imprimir mensagem no terminal
JMP saida ; chamando procedimento escreva para imprimir mensagem no terminal

saida:
INT 20h

escreva PROC NEAR
MOV AH, 09h ; preparando interrupcao para imprimir mensagem
INT 21h ; interrupcao que imprimi mensagem na tela
RET
escreva ENDP

resultado PROC NEAR
MOV AH, 02h ; preparando interrupcao para imprimir caractere
INT 21h ; interrupcao que imprimi caractere na tela
RET
resultado ENDP

