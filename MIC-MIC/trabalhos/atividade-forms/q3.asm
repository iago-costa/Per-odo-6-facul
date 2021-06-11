;3. Descubra os erros nas seguintes instruções:• MOV BH, AX; • MOV DX, CL; • ADD AL, 207H; • MOV 7632H, CX; • MOV [WORD1],[WORD2] *

; MOV BH, AX  --> MOV 8bits, 16 bits nao é possivel essa manipulacao nos registradores
; MOV DX, CL  --> MOV 16 bits, 8 bits segundo o emu isso também não é possivel pela diferença de bits entre os registradores
; ADD AL, 207H  -->  esse caractere é inválido para a tabela ascII
; MOV 7632H, CX  ---> armazenando o valor de um registrador em hexadecimal
; MOV [WORD1],[WORD2]  ---> esse tipo de manipulacao é invalido pois são dois conjuntos de bytes