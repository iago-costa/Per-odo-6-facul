;
; Curso de Assembly para PIC WR Kits Aula 35
;
;
; Temporizador utilizando Timer0
;
; =============================
;
; Estouro = Contagem Timer0 x prescaler x ciclo de m�quina
;
; Contagem Timer0 = (256 - TMR0)
;
; Temporizador = Contagem Timer0 x prescaler x ciclo de m�quina x counter1
;
; Temporizador =     256         x   128     x      1E-6        x   128
;
; Temporizador = 4,19 segundos aproximadamente
;
; =============================
;
; Sistema Embarcado Sugerido: PARADOXUS PEPTO
;
; Dispon�vel em https://wrkits.com.br/catalog/show/141 
;
; Clock: 4MHz    Ciclo de m�quina = 1�s
;
; Autor: Eng. Wagner Rambo   Data: Junho de 2016
;
;

; --- Listagem do Processador Utilizado ---
	list	p=16F628A						;Utilizado PIC16F628A
	
	
; --- Arquivos Inclusos no Projeto ---
#include <p16F628a.inc>					;inclui o arquivo do PIC 16F628A
		
; --- FUSE Bits ---
; - Cristal de 4MHz
; - Desabilitamos o Watch Dog Timer
; - Habilitamos o Power Up Timer
; - Brown Out desabilitado
; - Sem programa��o em baixa tens�o, sem prote��o de c�digo, sem prote��o da mem�ria EEPROM
__config _XT_OSC & _WDT_OFF & _PWRTE_ON & _BOREN_OFF & _LVP_OFF & _CP_OFF & _CPD_OFF & _MCLRE_ON
		
; --- Paginacao de Memoria ---
#define	bank0 bcf STATUS, RP0 ; Cria um mnem�nico para selecionar o banco 0 de mem�ria
#define	bank1 bsf STATUS, RP0 ; Cria um mnem�nico para selecionar o banco 1 de mem�ria

; --- Mapeamento de Hardware (PARADOXUS PEPTO) ---
#define	LED1 PORTA, 3 ; LED1 ligado ao pino RA3
#define	LED2 PORTA, 2 ; LED2 ligado ao pino RA2
#define	S1 PORTB, 0	; S1 ligado ao pino RB0
#define	S2 PORTA, 5	; S2 ligado ao pino RA5/MCLRE (sera usado como entrada)

; --- Registradores de Uso Geral ---
cblock H'20' ; In�cio da mem�ria dispon�vel para o usu�rio
W_TEMP ;Registrador para armazenar o conte�do tempor�rio de work
STATUS_TEMP ;Registrador para armazenar o conte�do tempor�rio de STATUS
counter1 ;Registrador auxiliar para contagem
endc ;Final da mem�ria do usu�rio

; --- Vetor de RESET ---
	org			H'0000'						;Origem no endere�o 00h de mem�ria
	goto		inicio						;Desvia para a label in�cio
	
; --- Vetor de Interrup��o ---
	org			H'0004'						;As interrup��es deste processador apontam para este endere�o
	
; -- Salva Contexto --
	movwf 		W_TEMP						;Copia o conte�do de Work para W_TEMP
	swapf 		STATUS,W  					;Move o conte�do de STATUS com os nibbles invertidos para Work
	bank0									;Seleciona o banco 0 de mem�ria (padr�o do RESET) 
	movwf 		STATUS_TEMP					;Copia o conte�do de STATUS com os nibbles invertidos para STATUS_TEMP
; -- Final do Salvamento de Contexto --


	; Trata ISR...
	
	btfss		INTCON,T0IF					;Ocorreu um overflow no Timer0?
	goto		exit_ISR					;N�o, desvia para sa�da da interrup��o
	bcf			INTCON,T0IF					;Sim, limpa a flag
	movlw		D'0'						;Sim, move a literal 10d para work
	movwf		TMR0						;reinicializa TMR0 em 10d. Timer0 = 256 - 10 = 246
	
	decfsz		counter1,F					;Decrementa counter1. Chegou em zero?
	goto		exit_ISR					;N�o, desvia para sa�da da interrup��o

	movlw		D'128'						;move a literal 128d para work
	movwf		counter1					;reinicializa counter 1 em 18d
	
	bcf			LED1						;desligaLED1
	bcf			INTCON,T0IE					;desabilita interrup��o do Timer0
	bsf			LED2



; -- Recupera Contexto (Sa�da da Interrup��o) --
exit_ISR:

	swapf 		STATUS_TEMP,W				;Copia em Work o conte�do de STATUS_TEMP com os nibbles invertidos
	movwf 		STATUS 						;Recupera o conte�do de STATUS
	swapf 		W_TEMP,F 					;W_TEMP = W_TEMP com os nibbles invertidos 
	swapf 		W_TEMP,W  					;Recupera o conte�do de Work
	
	retfie									;Retorna da interrup��o
	
	
inicio:

	bank1									;Seleciona o banco 1 de mem�ria
	movlw		H'06'						;w = 06h
	movwf		OPTION_REG					;CONFIGURA OPTION_REG...
											;-> Pull Ups internos habilitados
											;-> Timer0 incrementa com ciclo de m�quina
											;-> Prescaler 1:128 associado ao Timer0
	movlw		H'F3'						;w = F3h
	movwf		TRISA						;Configura sa�da para os LEDs em RA3 e RA2
	bank0									;Seleciona o banco 0 de mem�ria
	movlw		H'07'						;w = 7h
	movwf		CMCON						;CMCON = 7h desabilita os comparadores internos
	movlw		H'80'						;w = 80h
	movwf		INTCON						;CONFIGURA INTCON...
											;-> Habilita Interrup��o Global
											;-> Interrup��o do Timer0 inicia desligada
	movlw		D'0'						;move a literal 0d para work
	movwf		TMR0						;inicializa TMR0 em 10d. Timer0 = 256 - 10 = 246
	
	movlw		D'128'						;move a literal 128d para work
	movwf		counter1					;inicializa counter1 em 18d
	
	bcf			LED1						;desliga LED1
	bcf			LED2						;desliga LED2
 
	
	
loop:

	btfss		S1							;S1 pressionado?
	goto		timerOn						;Sim, desvia para timerOn
	goto		loop						;N�o, continua testando bot�o
	
timerOn:

	bsf			LED1						;Liga LED1
	bsf			INTCON,T0IE					;Habilita interrup��o do Timer0
	goto		loop						;Desvia de volta para loop
	 
	 
	end										;Final do Programa
	
	
	
