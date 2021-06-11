;Escreva um pseudocódigo em Assembly correspondente ao código em linguagem C, a seguir: *

; unsigned int x = 5;
; unsigned int y = 10;
; unsigned int soma, sub;
; main(){
;     x = x + 8;
;     soma = x + y;
;     x = x - 3;
;     sub = x - y;

; }

org 100h
.MODEL small; tipo de memoria que deve ser usada; small ocupa 64kb  

.STACK 512d ; reserva de espaco na pilha -tamanho da pilha

.DATA
x DW 7d
y DW 12d
somatorio DW 0, '$'
subtracao DW 0, '$'

.CODE
MOV AX, @DATA ; acesso do segmento de codigo ao segmento de dados
MOV DS, AX
MOV AX, x
ADD AX, y
MOV soma, AX
MOV DX, OFFSET soma  ; armazena o valor de x(tamanho) em memoria
MOV AH, 09h ; exibicao dos resultados da soma de soma
INT 21h