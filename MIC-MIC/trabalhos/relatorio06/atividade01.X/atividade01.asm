;   Rodar o código 1 no Mplab para piscar dois leds.
; Microcontroladores e Microprocessadores
; Aula 01
; Prof. Elton Alves
; 13/07/2021


;---Arquivos incluidos no projeto---
#include <P16f628a.inc> ; inclui o arquivo do 16f628a (registradores)

;---FUSE bits---
;Cristal oscilador externo 4MHZ
;Sem watchdog time
;Com powe up time
__config _XT_OSC & _WDT_OFF & _PWRTE_ON & _CP_OFF

;---Paginação de Memória
#define bank0 bcf STATUS, RP0 ;cria um mnemônico para o banco 0 de memória
#define bank1 bsf STATUS, RP0 ; cria um mnemônico para o banco 1 de memória

;---Saídas---
#define led1 PORTB,0 ; 0 -> Apagado e 1-> Aceso
#define led2 PORTA,0
;---Vetor de RESET---
org H'000' ; origem no endereço 000h de memória
goto inicio ; desvia do vetor de interrupção

;---Vetor de Interrupção----
org H'0004' ; todas as interruopções apontam para este endereço
retfie ; retorna a interrupção

;---Incio do Programa----
inicio
CLRF PORTB ; limpa a PORTB
CLRF PORTA
bank1
   movlw B'00000000'
   movwf TRISB ; Define toda PORTB como saída
   movwf TRISA
   ;movwf b'10000000'
   ;movwf OPTION_REG

   movlw b'00000000'
   movwf INTCON ; todas as interrupções desligadas
bank0
   movlw b'00000111'
   movwf CMCON ; define o modo de operação do comparador
;bank0 ; seçeciona o banco 0 de memória (padrão RESET)
   ; movlw H'FF' ; w=B'11111111'
   ; movwf PORTB; (RB7 configurado como saída - HIGH)
loop
bsf led1
bcf led1
bsf led2   
bcf led2
goto loop
END