; Temporiza��o com TIMER0 e led
; Interrup��o com TIMER0 e led
; Clock: 4MHz e Ciclo de M�quina = 1us
;---Listagem do Processador Utilizado--list p=16F628A
#include <P16f628a.inc>
;---Arquivos Inclusos no Projeto --
	
; --- FUSE Bits ---
; - Cristal de 4MHz
; - Desabilitamos o Watch Dog Timer
; - Habilitamos o Power Up Timer
; - Brown Out desabilitado
; - Sem programa��o em baixa tens�o, sem prote��o de c�digo, sem prote��o da mem�ria EEPROM
__config _XT_OSC & _WDT_OFF & _PWRTE_ON & _BOREN_OFF & _LVP_OFF & _CP_OFF & _CPD_OFF & _MCLRE_ON

;---Pagina��o de Mem�ria---
#define bank0 bcf STATUS, RP0
#define bank1 bsf STATUS, RP0

;---Saidas---
#define led1 PORTA,0 ;led1 ligado em RA0
    
;---Registradores de uso geral---
cblock H'20'
W_TEMP ; registrador para armazenar o conte�do temporar�o de w
STATUS_TEMP ; registrador para armazenar o conteudo tempor�rio de STATUS
endc
    
;---Vetor de RESET
org H'0000'
goto inicio

;---Vetor de Interrup��o---
org H'0004' ; as interrup��es apontam para esse endere�o de mem�ria

;---Salva Contexto---
MOVWF W_TEMP ; copia o cont�udo de w para W_TEMP
SWAPF STATUS,W ; move o conteudo de STATUS com os nibles invertidos para w
bank0 ; seleciona o banco zero de mem�ria
MOVWF STATUS_TEMP ; copia o conte�do de STATUS com os nibles invertidos para STATUS_TEMP
;--- Final de Salvamento de Contexto ---
    
;--- Trata ISR ---
btfss INTCON, T0IF ; ocorreu um overflow no TIMER0
goto exit_ISR ; N�O, desvia para sa�da da interrup��o
movlw D'10' ; move a literal 10d para w
bcf INTCON,T0IF ; SIM limpa a flag
comf PORTA ; complementando todo registrador PORTA
    
;----Recupera contexto (sa�da da interrup��o)--
exit_ISR
    
SWAPF STATUS_TEMP,W ; copia em w o conte�do de STATUS_TEMP com nibles invertidos.
MOVWF STATUS ; recuperando o conte�do de STATUS
SWAPF W_TEMP,F ; W_TEMP = W_TEMP com nibles invertidos
SWAPF W_TEMP,W ; recupera conte�do de w
retfie ; retorna da interrup��o

inicio
    bank1 ; seleciona o banco 0 de mem�ria
	movlw H'80' ;w=80h (inicia o registrador em 0)
	movwf OPTION_REG ; configurar o OPTION_REG (Interrup��es)
	;PULL ups internos desabilitzados
	;Timer0 incrimenta com ciclo de m�quima
	;Prescaler 1:2 associado ao Timer0
	movlw H'F3' ; w = F3h
	movwf TRISA ; configura a sa�da dos LEDS
    bank0
	; seleciona banco 0 de mem�ria
	movlw H'07' ; w=7h
	movwf CMCON; CMCON = 7h desabilita os comparadores
	movlw H'A0'; w=A0h (inicia o registrador em 0)
	movwf INTCON ; configurar INTCON (Configura interrup��es)
	; habilita a interrup��o global
	; habilita a interrup��o do TIMER0

	movlw D'10'; move a literal 10 para w
	movwf TMR0 ; inicializando timer0 com 10d (256-10 = 246)
	bcf led1 ; Sim, desliga led1
	bsf led1 ; acende led1
	goto $ ; aguarda a interrup��o
	
end