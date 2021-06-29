TITLE SUBTRACAO DE VALORES

#MAKE_EXE#

DADOS SEGMENT 'DATA'
;a DB 0h, '$'
;b DB 0h, '$'
;result DB 0h, '$'
m1 DB 'Valor 1 ', 24h
m2 DB 0Dh, 0Ah, 'Valor 2 ', 24h
m3 DB 0Dh, 0Ah, 'Soma ', 24h 
m3 DB 0Dh, 0Ah, 'Caractere invalido ', 24h
DADOS ENDS

PILHA SEGMENT STACK 'STACK'
DW 0100h DUP(?)
PILHA ENDS

CODIGO SEGMENT 'CODE'
ASSUME CS:CODIGO, DS:DADOS, SS:PILHA

fim MACRO
MOV AH, 4ch ;encerramento do programa
INT 21h ;Controle do SO     
ENDM       

msg MACRO           
MOV AH, 09h
INT 21h ; apresentacao da mensagem
ENDM

INICIO PROC FAR 
MOV AX, DADOS
MOV DS, AX 
MOV ES, AX
           
           
MOV DX, OFFSET m1
MSG
CALL input
;MOV BL, AL
           
MOV DX, OFFSET m2
MSG
CALL input 

;SUB BL, AL 
;SUB BL, 30h
;MOV AL, BL             
;MOV result, BL 
   

MOV DX, OFFSET m3
MSG
       
       
;LEA DX, BL ;armazena o valor da soma na variavel result
;MSG
         
         
FIM

                    
INICIO ENDP
CODIGO ENDS
                                        
input PROC NEAR ; inicio procedimento input
MOV AH, 01h ; entrada do caracter pelo teclado
INT 21h
CMP AL, 30h ; compara o valor recebido ao o decimal em ascII
JL erro ; salta se caracteres recebido menor que zero --> 30h
CMP AL, 40h ; compara valor recebido ao decimal em ascII
JGE erro ; salta se caractere recebido maior ou igual a 40h
JMP fim_validacao ; salta para rotina fim_validacao

erro: ; rotina erro
LEA DX, m4 ; obtem endereco da variavel msg4
MSG ; chama macro para imprimir mensagem
FIM ; finaliza programa com macro

fim_validacao: ; rotina fiM_validacao
SUB AL, 30h ; subtrai o valor zero decimal do caractere
RET ; retorna da rotina
input ENDP ; fim do procedimento input   
           
;END INICIO