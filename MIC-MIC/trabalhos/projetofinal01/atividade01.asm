TITLE SUBTRACAO DE VALORES

#MAKE_EXE# ; tipo de arquivo para ser gerado

DADOS SEGMENT 'DATA' ; define segmento de dados
m1 DB 0Dh, 0Ah, 'Valor 1: ', 24h
m2 DB 0Dh, 0Ah, 'Valor 2: ', 24h
m3 DB 0Dh, 0Ah, 'Result: ', 24h
msg4 DB 0Dh, 0Ah, 'Valor invalido', 24h      

escolha_1 DB 0Dh, 0Ah, 'Escolha o numero:', 24h
escolha_2 DB 0Dh, 0Ah, '1 - multiplicacao', 24h
escolha_3 DB 0Dh, 0Ah, '2 - divisao', 24h
escolha_4 DB 0Dh, 0Ah, '3 - soma', 24h
escolha_5 DB 0Dh, 0Ah, '4 - subtracao', 24h
escolha_6 DB 0Dh, 0Ah, '5 - finalizar', 24h  
quebra_linha DB 0Dh, 0Ah, 24h  
  
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
MOV DS, AX ; movendo AX para DS
MOV ES, AX ; movendo AX para ES
                      
escolha_opcao: 
MOV DX, OFFSET escolha_1
MSG ; chama macro que imprime caractere na tela
MOV DX, OFFSET escolha_2
MSG ; chama macro que imprime caractere na tela
MOV DX, OFFSET escolha_3
MSG ; chama macro que imprime caractere na tela  
MOV DX, OFFSET escolha_4
MSG ; chama macro que imprime caractere na tela  
MOV DX, OFFSET escolha_5
MSG ; chama macro que imprime caractere na tela     
MOV DX, OFFSET escolha_6
MSG ; chama macro que imprime caractere na tela
MOV DX, OFFSET quebra_linha
MSG ; chama macro que imprime caractere na tela  
CALL input ; entrada de valor
CMP AL, 31h ; se AL igual a 1 decimal faz
JE multiplicacao ; se igual chama rotina  
CMP AL, 32h ; se AL igual a 2 decimal faz
JE divisao ; se igual chama rotina 
CMP AL, 33h ; se AL igual a 3 decimal faz
JE soma ; se igual chama rotina 
CMP AL, 34h ; se AL igual a 4 decimal faz
JE subtracao ; se igual chama rotina
CMP AL, 35h ; se AL igual a 5 decimal faz
JE finaliza ; se igual chama rotina   

divisao: 
SUB AL, 30h ; subtrai o valor zero decimal do caractere                                                                                            
MOV DX, OFFSET m1
MSG ; chama macro que imprime caractere na tela
CALL input ; chama rotina input para receber caractere
SUB AL, 30h ; subtrai o valor zero decimal do caractere
MOV BH, AL ; movimenta primeiro valor de AL para BH  
MOV DX, OFFSET m2
MSG ; chama macro que imprime caractere na tela
CALL input ; chama rotina input para receber caractere
SUB AL, 30h ; subtrai o valor zero decimal do caractere
MOV BL, AL ; move segundo valor para BL
MOV AL, BH ; retorna primeiro valor para AL 
MOV AH, 0d ; zera AH para efetuar a divisao
DIV BL ; efetua a divisao 
MOV BL, AL ; guarda resultado da divisao em BL
MOV DX, OFFSET m3
MSG ; chama macro que imprime caractere na tela
JMP resultado_divisao ; jmp para imprimir resultado na tela
     
multiplicacao:                                                                                             
MOV DX, OFFSET m1
MSG ; chama macro que imprime caractere na tela
CALL input ; chama rotina input para receber caractere
SUB AL, 30h ; subtrai o valor zero decimal do caractere
MOV BL, AL ; movimenta AL para BL  
MOV DX, OFFSET m2
MSG ; chama macro que imprime caractere na tela
CALL input ; chama rotina input para receber caractere
SUB AL, 30h ; subtrai o valor zero decimal do caractere
MUL BL ; efetua a multiplicacao
MOV BX, AX ; resultado movido para BX
MOV DX, OFFSET m3
MSG ; chama macro que imprime caractere na tela
JMP resultado_multiplicacao ; jmp para imprimir resultado na tela    
      
subtracao: ; rotina para subtracao de dois numeros
SUB AL, 30h ; subtrai o valor zero decimal do caractere                                                                                            
MOV DX, OFFSET m1
MSG ; chama macro que imprime caractere na tela
CALL input ; chama rotina input para receber caractere
MOV BH, AL ; guardando primeiro valor em BH 
MOV DX, OFFSET m2
MSG ; chama macro que imprime caractere na tela
CALL input ; chama rotina input para receber caractere
MOV BL, AL ; guardando primeiro valor em BL
MOV DX, OFFSET m3
MSG ; chama macro que imprime caractere na tela
SUB BH, BL ; subtrai BH-BL para BH
JGE valor_positivo ; se BH>=BL pula para rotina valor_positivo 
JL valor_negativo  ; se BH<BL pula para rotina valor_negativo 

soma: ;rotina para soma de dois numeros
SUB AL, 30h ; subtrai o valor zero decimal do caractere                                                                                            
MOV DX, OFFSET m1
MSG ; chama macro que imprime caractere na tela
CALL input ; chama rotina input para receber caractere
MOV BH, AL ; guardando primeiro valor em BH  
MOV DX, OFFSET m2
MSG ; chama macro que imprime caractere na tela
CALL input ; chama rotina input para receber caractere
MOV BL, AL ; guardando segundo valor em BL
MOV DX, OFFSET m3
MSG ; chama macro que imprime caractere na tela
ADD BH, BL ; soma BH+BL para BH
SUB BH, 30h ; limpando buffer 0 decimal   
SUB BH, 30h ; limpando buffer 0 decimal 
JMP resultado ; chama rotina para resultado da subtracao ou soma

valor_positivo: ; rotina valor positivo
JMP resultado ; chama rotina para resultado da subtracao ou soma
                
valor_negativo:
NEG BH ; transforma o valor negativo (complemento de dois) em seu equivalente positivo
MOV AL, 2Dh ; movimenta o valor 2Dh para o AL (ASCII 2Dh = -)
MOV AH, 0Eh ; chama comando da interrupcao
INT 10h ; mostra na tela o caractere negativo
JMP resultado ; chama rotina para resultado da subtracao        

resultado_divisao: ; resultado funciona para divisao
MOV AL, BL ; movimenta resultado de BL para AL
ADD AL, 30h ; adiciona o 0 decimal em ascII ao caractere
MOV AH, 0Eh ; comando para interrupcao
INT 10h ; mostra caractere na tela
JMP escolha_opcao ; volta para selecao de opcao

resultado_multiplicacao: ; resultado_2 funciona para multiplicacao
MOV AX, BX ; movimenta resultado de BX para AX
ADD AX, 30h ; adiciona o 0 decimal em ascII ao caractere
MOV AH, 0Eh ; comando para interrupcao
INT 10h ; mostra caractere na tela
JMP escolha_opcao ; volta para selecao de opcao

resultado: ; resultado que funciona para soma e subtracao
MOV AL, BH ; movimenta resultado de BH para AL
ADD AL, 30h ; adiciona o 0 decimal em ascII ao caractere
MOV AH, 0Eh ; comando para interrupcao
INT 10h ; mostra caractere na tela
JMP escolha_opcao ; volta para selecao de opcao
         
finaliza: ;finaliza o script geral
FIM                   

INICIO_SCRIPT ENDP ; finaliza procedimento inicio_script   

input PROC NEAR ; inicio procedimento input
MOV AH, 01h ; entrada do caractere pelo teclado
INT 21h ; chama interrupcao para receber caractere
CMP AL, 30h ; compara o valor recebido ao decimal em ascII
JL erro ; salta se caracteres recebido menor que zero --> 30h
CMP AL, 40h ; compara valor recebido ao decimal em ascII
JGE erro ; salta se caractere recebido maior ou igual a 40h
JMP fim_validacao ; salta para rotina fim_validacao

erro: ; rotina erro
MOV DX, OFFSET msg4 ; obtem endereco da variavel msg4
MSG ; chama macro para imprimir mensagem
FIM ; finaliza programa com macro

fim_validacao: ; rotina fiM_validacao
RET ; retorna da rotina
input ENDP ; fim do procedimento input   

CODIGO ENDS ; finaliza o segmento de codigo
                                        
END INICIO_SCRIPT