org 100h; inicializando o script na memoria
mov ah, 09h ; executando interrupcao de saida
lea dx,mensagem; salvando copia da referencia no registrador de dados
int 21h ; exibindo acumulador dx do tipo dados no terminal    
int 20h ; finalizando o script 
mensagem db 49h, 61h, 67h, 6fh, 24h ;escrevendo iago pela tabela ascII

;mensagem db 'iago', 24h;      



