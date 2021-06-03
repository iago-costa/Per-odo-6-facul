org 100h  ; inicializa o script na memoria    


int 16h ; pega valor do teclado  
mov bl, al ; movendo do registrador al para o registrador bl          
mov dl, bl ; passando o codigo ascII do acumuladorl para o dadosl      
mov ah, 2h ; chamando interrupcao para exibir caractere no terminal

int 21h ; exibindo o terminal 
int 20h ; finalizando o script





