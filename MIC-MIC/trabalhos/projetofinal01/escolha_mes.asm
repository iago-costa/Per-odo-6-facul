;******************************
;* Programa: ESCOLHA_MES.ASM *;
;****************************** 

INCLUDE 'emu8086.inc' ; chamada da biblioteca emu8086.inc    

org 100h 

.DATA
valor DW 0
mensagem DB 0Dh, 0Ah,'DIGITE UM VALOR DO MES (1-12):',0 ; valor da variavel e 0
mes1 DB 0Dh, 0Ah,'MES 1 E JANEIRO',0
mes2 DB 0Dh, 0Ah,'MES 2 E FEVEREIRO',0
mes3 DB 0Dh, 0Ah,'MES 3 E MARCO',0
mes4 DB 0Dh, 0Ah,'MES 4 E ABRIL',0 
mes5 DB 0Dh, 0Ah,'MES 5 E MAIO',0 
mes6 DB 0Dh, 0Ah,'MES 6 E JUNHO',0 
mes7 DB 0Dh, 0Ah,'MES 7 E JULHO',0 
mes8 DB 0Dh, 0Ah,'MES 8 E AGOSTO',0 
mes9 DB 0Dh, 0Ah,'MES 9 E SETEMBRO',0 
mes10 DB 0Dh, 0Ah,'MES 10 E OUTUBRO',0 
mes11 DB 0Dh, 0Ah,'MES 11 E NOVEMBRO',0 
mes12 DB 0Dh, 0Ah,'MES 12 E DEZEMBRO',0  
invalido DB 0Dh, 0Ah,'VALOR INVALIDO',0 


.CODE
LEA SI,mensagem ; aponta para SI(acesso ao conteudo da string)
                ;o endereco de memoria da variavelmensagem
CALL PRINT_STRING ; acessa o conteudo do registrador SI
CALL SCAN_NUM ; efetua a leitura do teclado
MOV valor, CX ; armazena o valor do teclado em CX
;PUTC 13d
;PUTC 10d

CMP valor,1D ; compara o conteudo do valor com 1   
JE case1    ;salta pra case1

CMP valor,2D ; compara o conteudo do valor com 2  
JE case2    ;salta pra case2

CMP valor,3D ; compara o conteudo do valor com 3   
JE case3

CMP valor,4D ; compara o conteudo do valor com 4   
JE case4    ;salta pra case4

CMP valor, 5D; compara o conteudo do valor com 5   
JE case5 

CMP valor, 6D; compara o conteudo do valor com 6   
JE case6

CMP valor, 7D; compara o conteudo do valor com 7   
JE case7

CMP valor, 8D; compara o conteudo do valor com 8   
JE case8

CMP valor, 9D; compara o conteudo do valor com 9   
JE case9

CMP valor, 10D; compara o conteudo do valor com 10   
JE case10

CMP valor, 11D; compara o conteudo do valor com 11   
JE case11

CMP valor, 12D; compara o conteudo do valor com 12  
JE case12

 JMP default
 
  case1:
  LEA SI, mes1     ;apresenta a mensagem de mes1
  CALL PRINT_STRING ;chamada da subrotina pra imprimir a string
  JMP saida         ;salto para saida
 
  case2:
  LEA SI, mes2     ;apresenta a mensagem de mes
  CALL PRINT_STRING;chamada da subrotina pra imprimir a string 
  JMP saida        ;salto para saida
  
  case3:
  LEA SI, mes3
  CALL PRINT_STRING
  JMP saida 
  
  case4:
  LEA SI, mes4 
  CALL PRINT_STRING
  JMP saida 
    
    case5:
  LEA SI, mes5 
  CALL PRINT_STRING
  JMP saida 
  
  
  case6:
  LEA SI, mes6 
  CALL PRINT_STRING
  JMP saida
  
  case7:
  LEA SI, mes7 
  CALL PRINT_STRING
  JMP saida
  
  case8:
  LEA SI, mes8 
  CALL PRINT_STRING
  JMP saida
  
  case9:
  LEA SI, mes9 
  CALL PRINT_STRING
  JMP saida
  
  case10:
  LEA SI, mes10 
  CALL PRINT_STRING
  JMP saida
  
  case11:
  LEA SI, mes11 
  CALL PRINT_STRING
  JMP saida
  
  case12:
  LEA SI, mes12
  CALL PRINT_STRING
  JMP saida 
   
   default:
   LEA SI,invalido
   CALL PRINT_STRING
   JMP saida 
 

DEFINE_PRINT_STRING ; biblioteca emu8086.inc
DEFINE_SCAN_NUM ; biblioteca emu8086.inc

 saida:
    mov ax, 4c00h ; exit to operating system.
    int 21h
END 

end start ; set entry point and stop the assembler.