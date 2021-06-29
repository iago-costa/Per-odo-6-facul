TITLE ADICAO DE VALORES

#MAKE_EXE#

DADOS SEGMENT 'DATA'
;a DB 0h, '$'
;b DB 0h, '$'
;result DB 0h, '$'
msg1 DB 76h, 61h, 6Ch, 6Fh, 72h, 20h, 31h, 24h
msg2 DB 0Dh, 0Ah, 76h, 61h, 6Ch, 6Fh, 72h, 20h, 32h, 24h
msg3 DB 0Dh, 0Ah, 73h, 6Fh, 6Dh, 61h, 24h
DADOS ENDS

PILHA SEGMENT STACK 'STACK'
DW 0100h DUP(?)
PILHA ENDS

CODIGO SEGMENT 'CODE'

JMP entrada1     
JMP entrada2
JMP imprimir
        
entrada1:
MOV DX, OFFSET msg1
CALL FAR PTR escreva ; chamando procedimento escreva para imprimir mensagem no terminal
MOV AH, 01h ; entrada do caracter pelo teclado
INT 21h ; controle da acao
CMP AL, 30h ; desvio de deteccao de erro, caso o valor < 30h(0d)
JL erro  ; desvio para rotina erro
CMP AL, 39h ; desvio de deteccao de erro, caso o valor >=39h (9h)
JG erro  ; desvia para rotina erro
SUB AL, 30h ; efetua a subtracao do valor 30h para deixar apenas no
OR BL, AL ; registrador AL o valor numerico
            
entrada2:
MOV DX, OFFSET msg2
CALL FAR PTR escreva
MOV AH, 01h ; entrada do caracter pelo teclado
INT 21h ; controle da acao
CMP AL, 30h ; desvio de deteccao de erro, caso o valor < 30h(0d)
JL erro  ; desvio para rotina erro
CMP AL, 39h ; desvio de deteccao de erro, caso o valor >=39h (9h)
JG erro  ; desvia para rotina erro
SUB AL, 30h ; efetua a subtracao do valor 30h para deixar apenas no
                  
ADD BL, AL ; somando AL + BL em BL

imprimir:
MOV DX, OFFSET msg3 ; copiando endereco de msg para dx
CALL FAR PTR escreva ; chamando procedimento escreva para imprimir mensagem no terminal
MOV AH, 02h ; preparando interrupcao para imprimir caractere em dl
MOV DL, BL  ; movendo soma de BL para DL
ADD DL, 30h ; asicionando 30h para mostrar o caractere em ASCII
CALL FAR PTR resultado ; chamando procedimento para imprimir resultado da soma
JMP saida ; chamando rotina de finalizacao                                                                  

erro:
;MOV DX, msg4 ; mensagem armazenada na variavel msg4
;CALL escreva ; chamando procedimento escreva para imprimir mensagem no terminal
JMP saida ; chamando procedimento escreva para imprimir mensagem no terminal

saida:
INT 20h

escreva PROC FAR
MOV AH, 09h ; preparando interrupcao para imprimir mensagem
INT 21h ; interrupcao que imprimi mensagem na tela
RETF
escreva ENDP

resultado PROC FAR
MOV AH, 02h ; preparando interrupcao para imprimir caractere
INT 21h ; interrupcao que imprimi caractere na tela
RETF
resultado ENDP
CODIGO ENDS