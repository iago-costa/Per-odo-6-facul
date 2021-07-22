; Microcontroladores e Microprocessadores
; Aula 02
; Prof. Elton Alves
; Semaforo

;list p=16f628A ; microcrontrolador utilizado
;---Arquivos incluidos no projeto---    
#include <P16f628a.inc> ; inclui o arquivo do 16f628a (registradores)

;---FUSE bits---    
;Cristal oscilador externo 4MHZ
;Sem watchdog time
;Com power up time
__config _XT_OSC & _WDT_OFF & _PWRTE_ON & _CP_OFF 
    
;---Paginacaoo de Mem?ria
#define bank0 bcf STATUS, RP0 ;cria um mnemonico para o banco 0 de memoria
#define bank1 bsf STATUS, RP0 ; cria um mnemonico para o banco 1 de memoria

;---Saidas---
#define led1 PORTA, RA0 ; led1 ligado em RA0
#define led2 PORTA, RA1 ;led2 ligado em RA1
#define led3 PORTA, RA2 ;led2 ligado em RA2
 
;---Vetor de RESET---
org H'000' ; origem no endereco 000h de memoria
goto inicio ; desvia do vetor de interrupcao

;---Vetor de Interrup??o----
org H'0004'  ; todas as interrupcoes apontam para este endereco
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

bank0 ; seleciona o banco 0 de mem?ria (padr?o RESET)
    movlw H'A0' ; w=B'0000 0000'
    movwf PORTA; (Leds iniciam desligados-escrevo no PORTB)
 
loop ; loop infinito
    call apaga_led3
    call acende_led1
    call delay500ms
    call apaga_led1
    call acende_led2
    call delay500ms
    call apaga_led2
    call acende_led3
    call delay500ms
   
    goto loop ;volta para o label loop

;---Desenvolvimento das Sub-rotinas----
acende_led1
    bsf led1
    return
apaga_led1
    bcf led1; apaga led1
    return ;retorna da sub-rotina  
acende_led2
    bsf led2
    return
apaga_led2
    bcf led2; apaga led2
    return ;retorna da sub-rotina
acende_led3
    bsf led3
    return
apaga_led3
    bcf led3; apaga led3
    return ;retorna da sub-rotina
delay500ms
    movlw D'200' ; move o valor para W (constante)
    movwf H'20' ; inicializa��o da variavel tempo0 (posi��o de mem�ria do registrador de uso geral)
aux1
    movlw D'250'
    movwf H'21'
aux2 ; gastar 1 ciclo de m�quina (aproximar mais o tempo de 500ms)
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    decfsz H'20' ; decrementa o tempo1 at� que seja igual a 0(decremente em uma unidade e verifica se � 0)
    goto aux2 ; vai para label aux2
    ; 250 x 10 ciclos de m�quina = 2500
    decfsz H'32'; decrementa o tempo0 at� seja igual a 0
    goto aux1; vai para label aux1
    ; 3 ciclos de m�quina
    ; 2500x200 = 500000
    return       
end 