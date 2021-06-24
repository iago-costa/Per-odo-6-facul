org 100h

.DATA
msg DB 13d, 12o, 24h ; 13d==0Dh , 12o==0Ah e 24h
;(controle da String)

.CODE
MOV BL, 30h ; adiciona 0 em ascII para BL
MOV CX, 9d ; estabelece em CX o valor decimal (contagem do laco de repeticao)

laco:    
    CALL contador ; chama procedimento contador
    CALL escreva ; chama procedimento escreva
    LOOP laco ; CX sera decrementado em 1
INT 20h ; finaliza o script


escreva PROC NEAR
LEA DX, msg ; msg para quebra de linha no terminal
MOV AH, 09h ; preparando interrupcao para imprimir mensagem
INT 21h ; interrupcao que imprimi mensagem na tela
RET
escreva ENDP

contador PROC NEAR
MOV AH, 02h ; prepara interrupcao para imprimir caractere
INC BL ; incrementa mais um em BL
LEA DL, BL ; copia enredeco de BL para DL
INT 21h ; exibicao do caractere no terminal
RET    
contador ENDP