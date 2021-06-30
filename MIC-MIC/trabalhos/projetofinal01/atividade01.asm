TITLE SUBTRACAO DE VALORES

#MAKE_EXE# ; tipo de arquivo para ser gerado

DADOS SEGMENT 'DATA' ; define segmento de dados
m1 DB 'Valor 1: ', 24h
m2 DB 0Dh, 0Ah, 'Valor 2: ', 24h
m3 DB 0Dh, 0Ah, 'Result: ', 24h
msg4 DB 0Dh, 0Ah, 'Valor invalido', 24h   
DADOS ENDS
     
PILHA SEGMENT STACK 'STACK' ; define segmento de pilha
DW 0100h DUP(?) ; define tamanho da pilha
PILHA ENDS
   
CODIGO SEGMENT 'CODE' ; define segmento de codigo
ASSUME CS:CODIGO, DS:DADOS, SS:PILHA ; declara cada segmento aos
;registradores

fim MACRO ; define macro de finalizacao
MOV AH, 4ch ;encerramento do programa
INT 21h ;Controle do SO     
ENDM ; finaliza macro fim      

msg MACRO ; define macro para imprimir mensagem na tela         
MOV AH, 09h
INT 21h ; apresentacao da mensagem
ENDM ; finaliza macro msg    

INICIO_SCRIPT PROC FAR ; inicia procedimento INICIO do tipo FAR
MOV AX, DADOS ; acesso do segmento de codigo ao segmento de dados
MOV DS, AX ; movendo acesso para ds
MOV ES, AX ; 
                             
MOV DX, OFFSET m1
MSG ; chama macro que imprime caractere na tela
CALL input ; chama rotina input para receber caractere
MOV BH, AL
           
MOV DX, OFFSET m2
MSG ; chama macro que imprime caractere na tela
CALL input ; chama rotina input para receber caractere
MOV BL, AL

MOV DX, OFFSET m3
MSG ; chama macro que imprime caractere na tela

SUB BH, BL ; subtrai BH-BL para BH
JGE valor_positivo ; se BH>=BL pula para rotina valor_positivo 
JL valor_negativo  ; se BH<BL pula para rotina valor_negativo 
   
valor_positivo: ; rotina valor positivo
CALL resultado ; chama rotina para resultado da subtracao
             
valor_negativo:
NEG BH ; transforma o valor negativo (complemento de dois) em seu equivalente positivo
MOV AL, 2Dh ; movimenta o valor 2Dh para o AL (ASCII 2Dh = -)
MOV AH, 0Eh ; chama comando da interrupcao
INT 10h ; mostra na tela o caractere negativo
CALL resultado ; chama rotina para resultado da subtracao        

resultado:
MOV AL, BH ; movimenta resultado de BH para AL
MOV DL, AL ; movimenta resultado de AL para DL
ADD AL, 30h ; adiciona o 0 decimal em ascII ao caractere
MOV AH, 0Eh ; comando para interrupcao
INT 10h ; mostra caractere na tela
FIM ; finaliza 
RET ; retorna da chamada de rotina
         
FIM ; finaliza o script
                   
INICIO_SCRIPT ENDP ; finaliza procedimento inicio_script   

input PROC NEAR ; inicio procedimento input
MOV AH, 01h ; entrada do caracter pelo teclado
INT 21h
CMP AL, 30h ; compara o valor recebido ao o decimal em ascII
JL erro ; salta se caracteres recebido menor que zero --> 30h
CMP AL, 40h ; compara valor recebido ao decimal em ascII
JGE erro ; salta se caractere recebido maior ou igual a 40h
JMP fim_validacao ; salta para rotina fim_validacao

erro: ; rotina erro
MOV DX, OFFSET msg4 ; obtem endereco da variavel msg4
MSG ; chama macro para imprimir mensagem
FIM ; finaliza programa com macro

fim_validacao: ; rotina fiM_validacao
SUB AL, 30h ; subtrai o valor zero decimal do caractere
RET ; retorna da rotina
input ENDP ; fim do procedimento input   

CODIGO ENDS ; finaliza o segmento de codigo
                                        
END INICIO_SCRIPT