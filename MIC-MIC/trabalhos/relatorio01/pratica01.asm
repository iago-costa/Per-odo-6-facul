org 100h
MOV AH, 09h
MOV DX, OFFSET mensagem
INT 21h
INT 20h
mensagem DB 41h, 6Ch, 6Fh, 20h, 6Dh, 75h, 6Eh, 64h, 6Fh, 21h, 24h



