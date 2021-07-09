
org 100h
    
    ;-------meses---------
    ;funcao para analise inicial dos registradores que contem os 2 caracteres correspondente ao mes em questao
    ;direciona para as funcoes que chamarao os meses correspondentes
       
    mes_ano:mov dx, offset ent ;chama a string contida na variavel ent e armazena no registrador dx                        
            mov ah, 9 ;prepara para exibir a string
            int 21h ;executa a instrucao
            
            mov ah, 1 ;prepara para ler um caractere do teclado 
            int 21h ;executa a instrucao
            
            mov bl, al ;armazena o valor pego na leitura no registrador bl
            
            mov ah, 1 ;prepara para ler um caractere do teclado  
            int 21h   ;executa a instrucao (valor fica armazenado no registrador al)
            
            
             
            cmp bl,'0'  ;verfica se o valor em bl eh igual a 0
            je meses_1_9;se o valor for igual a 0, pula para a funcao meses_1_9
            
            cmp bl,'1';verfica se o valor em bl eh igual a 1
            je meses_comps;se o valor for igual a 1, pula para a funcao meses_comps
            
            cmp bl,'/';verfica se o valor em bl eh igual a /
            je stop   ;se o valor for igual a /, pula para a funcao stop, finalizando o programa
            
            mov dx, offset invalido;caso nenhuma das condicionais acima forem verdadeiras, chama a string contida na variavel invalido e armazena no registrador dx                         
            jmp print;pula para a funcao print, que por sua vez ira imprimir a string e retornar ao inicio do programa                        
            
               
   ;---------meses-------- 
   
     
   ;----p/meses 11, 12 e 13--- 
   ;funcao para imprimir os meses compostos por 2 caracteres, 10, 11 e 12
        
       meses_comps:cmp al, '0'
                   je mes_outubro
                   
                   cmp al, '1'
                   je mes_novembro
                   
                   cmp al, '2'
                   je mes_dezembro
                   
                   cmp al,'/'
                   je stop 
                   
                   mov dx, offset invalido                         
                   jmp print 
                           
   
   ;----p/meses 11, 12 e 13--- 
   
    
   ;---------p/meses<=9------- 
   ;funcao para imprimir os meses compostos por 1 caractere, 1, 2, 3, 4, 5, 6 7, 8, 9   
          
          
  meses_1_9:cmp al, '1'
            je mes_janeiro
            
            cmp al, '2'
            je mes_fevereiro 
            
            cmp al, '3'
            je mes_marco 
            
            cmp al, '4'
            je mes_abril
            
            cmp al, '5'
            je mes_maio
            
            cmp al, '6'
            je mes_junho
            
            cmp al, '7'
            je mes_julho 
            
            cmp al, '8'
            je mes_agosto
            
            cmp al, '9'
            je mes_setembro
            
            cmp al,'/'
            je stop
            
            mov dx, offset invalido                         
            jmp print 
            
    
  ;---------p/meses<=9--------
  
  ;---------funcs-------------  
      
      mes_janeiro:mov dx, offset janeiro ;funcao p/chamar a string contida em janeiro
                  jmp print
      
      mes_fevereiro:mov dx, offset fevereiro
                  jmp print
                  
      mes_marco:mov dx, offset marco
                  jmp print
                  
      mes_abril:mov dx, offset abril
                  jmp print
                  
      mes_maio:mov dx, offset maio
                  jmp print
                  
      mes_junho:mov dx, offset junho
                  jmp print
                  
      mes_julho:mov dx, offset julho
                  jmp print
                  
      mes_agosto:mov dx, offset agosto
                  jmp print 
                  
      mes_setembro:mov dx, offset setembro
                  jmp print
                  
      mes_outubro:mov dx, offset outubro
                  jmp print
                  
      mes_novembro:mov dx, offset novembro
                  jmp print
                  
      mes_dezembro:mov dx, offset dezembro
                  jmp print                                                                         
              
      print:mov ah, 9  ;funcao p/ imprimir as strings
            int 21h          
            jmp mes_ano
              
       stop:mov dx, offset finaliza;funcao p/ finalizar o programa
            mov ah, 9
            int 21h
            ret
 ;---------funcs-------------
    
 ;----------strings----------  
ent db ' Digite um mes do ano (precione "//" para finalizar o programa): $'

not_igual_8 db ' N eh igual a 8', 0Dh,0Ah, '$'

igual_8 db ' Eh igual a 8', 0Dh,0Ah, '$'
 
finaliza db ' Programa finalizado $'

janeiro db ' O mes correspondente eh Janeiro!', 0Dh,0Ah, '$'

fevereiro db ' O mes correspondente eh Fevereiro!', 0Dh,0Ah, '$'

marco db ' O mes correspondente eh Marco!', 0Dh,0Ah, '$'

abril db ' O mes correspondente eh Abril!', 0Dh,0Ah, '$'

maio db ' O mes correspondente eh Maio!', 0Dh,0Ah, '$'

junho db ' O mes correspondente eh Junho!', 0Dh,0Ah, '$'

julho db ' O mes correspondente eh Julho!', 0Dh,0Ah, '$'

agosto db ' O mes correspondente eh Agosto!', 0Dh,0Ah, '$'

setembro db ' O mes correspondente eh Setembro!', 0Dh,0Ah, '$'

outubro db ' O mes correspondente eh Outubro!', 0Dh,0Ah, '$'

novembro db ' O mes correspondente eh Novembro!', 0Dh,0Ah, '$'

dezembro db ' O mes correspondente eh Dezembro!', 0Dh,0Ah, '$'

invalido db ' Valor invalido! ', 0Dh,0Ah, '$'