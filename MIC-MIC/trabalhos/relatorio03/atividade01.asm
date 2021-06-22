org 100h ; 64Kbytes

.DATA ; 0Dh, 0Ah e 24h mudanca de linha de cursor apos escrita da mensagem

nome1 DB 'Iago ', 0Dh, 0Ah, 24h ; 0Dh tecla <ENTER>     

nome2 DB 'Costa ', 0Dh, 0Ah, 24h ; 

nome3 DB 'das ', 0Dh, 0Ah, 24h ;

nome4 DB 'Flores ', 0Dh, 0Ah, 24h ;


.CODE

JMP salto4 ; salta para a linha 33

saltol:
LEA DX, nome4 ; envio nome4
CALL escreva  ; chama do procedimento escreva pelo CALL
JMP saida ;salta para a linha 38

salto2:
LEA DX, nome3 ; envio nome3
CALL escreva  ; chama do procedimento escreva pelo CALL
JMP saltol ; salta para a linha 18

salto3:
LEA DX, nome2 ; envio nome2
CALL escreva ; chama do procedimento escreva pelo CALL
JMP salto2 ; salta para a linha 23
          
salto4:
LEA DX, nome1 ; envio nome1
CALL escreva ; chama do procedimento escreva pelo CALL
JMP salto3 ; salta para a linha 28          
          
saida:
INT 20h ; Finaliza o programa

escreva PROC NEAR ; procedimento escreva
MOV AH, 09h ;apresentacao do caracter 09h
INT 21h; interrupcao 21h
RET ; retorno do procedimento para a 1 linha apos sua chamada (30)
escreva ENDP