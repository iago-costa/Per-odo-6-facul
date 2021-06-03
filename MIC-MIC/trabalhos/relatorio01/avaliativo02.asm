org 100h; inicializando o script na memoria
mov ah, 09h ; executando interrupcao de saída
lea dx,mensagem; salvando copia da referencia no registrador de dados
int 21h ; exibindo acumulador dx do tipo dados no terminal     
int 20h ;finalizando o script
mensagem db 3fh, 24h ; escrevendo interrogacao (?) pela tabela ascII






