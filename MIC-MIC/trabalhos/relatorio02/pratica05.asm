;*******************************
;* Programa: MULT.ASM *
;*******************************
.MODEL small
.STACK 512d 

.DATA
a DW 1d
b DB 3d
x DB 0, '$' 

.CODE
MOV AX, @DATA
MOV DS, AX 
MOV AX, a
MOV BL, b
MUL BL
MOV x, AL
ADD x, 30h
MOV DX, OFFSET x  
MOV AH, 09h 
INT 21h  
MOV AH, 04Ch
INT 21h
