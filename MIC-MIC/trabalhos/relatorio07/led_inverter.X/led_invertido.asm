; Microcontroladores e Microprocessadores
; Aula 02
; Prof. Elton Alves
; Led invertido
; Iago Costa

;list p=16f628A ; microcrontrolador utilizado
;---Arquivos incluidos no projeto---    
#include <P16f628a.inc> ; inclui o arquivo do 16f628a (registradores)

;---FUSE bits---    
;Cristal oscilador externo 4MHZ
;Sem watchdog time
;Com powe up time
__config _XT_OSC & _WDT_OFF & _PWRTE_ON & _CP_OFF 
    
;---Pagina??o de Mem?ria
#define bank0 bcf STATUS, RP0 ;cria um mnemonico para o banco 0 de memoria
#define bank1 bsf STATUS, RP0 ; cria um mnemonico para o banco 1 de memoria
  
;---Entradas---
#define botao1 PORTB, RB0 ; botao 1 ligado em RB0
#define botao2 PORTB, RB1 ; botao 2 ligado em RB1
#define botao3 PORTB, RB2 ; botao 3 ligado em RB2

;---Sa?das---
#define led1 PORTA, RA0 ;led1 ligado em RA0
#define led2 PORTA, RA1 ;led2 ligado em RA1
#define led3 PORTA, RA2 ;led2 ligado em RA2
 
;---Vetor de RESET---
org H'000' ; origem no endereco 000h de memoria
goto inicio ; desvia do vetor de interrupcao

;---Vetor de Interrupcao----
org H'0004' ; todas as interrupcoes apontam para este endereco
retfie ; retorna a interrupcao
     
;---Programa Principal----
inicio
    CLRF PORTA ; Limpa PORTA
    CLRF PORTB ; Limpa PORTB

bank1 ; seleciona o banco 1 de mem?ria
    movlw H'A0' ; w=B'0000 0000
    movwf TRISA ; TRISA=H'A0' (todos bits sao saidas)
    movlw H'FF' ; w=B'1111 1111'
    movwf TRISB ;TRISB=H'FF' todos sao entradas

bank0 ; seleciona o banco 0 de memoria (padrao RESET)
    movlw H'A0' ; w=B'0000 0000'
    movwf PORTA; (Leds iniciam desligados-escrevo no PORTB)

; goto $ ; segura o c?digo - $ indica a posicial atual do c?digo (loop infinito)

 
loop ; loop infinito
    
    call trata_but1 ; chama sub-rotina-trata_but1	
    call trata_but2 ; chama sub-rotina_trata_but2
    call trata_but3 ; chama sub-rotina_trata_but3

    goto loop ;volta para o label loop

;---Desenvolvimento das Sub-rotinas----
    
trata_but1 ; sub-rotina para tratar bot?o 1
    btfsc botao1 ; botao foi pressionado?
    goto  liga_led1; Nao pressiona, desvia para label apaga_led1
    bcf   led1; Sim, desliga led1
    return ; retorno da subrotina
    
liga_led1
    bsf led1; apaga led1
    return ;retorna da sub-rotina
    
trata_but2 ; sub-rotina para tratar bot?o 2
    btfsc botao2 ; botao foi pressionado?
    goto  liga_led2; Nao pressiona, desvia para label apaga_led2
    bcf   led2; Sim, desliga led2
    return ; retorno da subrotina
    
liga_led2
    bsf led2; apaga led2
    return ;retorna da sub-rotina

trata_but3 ; sub-rotina para tratar botao 3
    btfsc botao3 ; botao foi pressionado?
    goto  liga_led3; Nao pressiona, desvia para label apaga_led2
    bcf   led3; Sim, desliga led3
    return ; retorno da subrotina
    
liga_led3
    bsf led3; apaga led3
    return ;retorna da sub-rotina
    
end 