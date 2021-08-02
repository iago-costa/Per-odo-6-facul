;========================================================================================
;
; Curso de Assembly para PIC WR Kits Aula 68
;
;
; Contador de Objetos em Esteira Industrial com Modo de Compara��o
;
;
; Per�odo = 2 x [ ciclo de m�quina x prescaler T1 x CCP1 ]
;
;
;
; Sistema Embarcado Sugerido: PARADOXUS PEPTO
;
; Dispon�vel em https://wrkits.com.br/catalog/show/141 
;
; Clock: 4MHz    Ciclo de m�quina = 1�s
;
; Autor: Eng. Wagner Rambo   Data: Fevereiro de 2017
;
;
;========================================================================================


;========================================================================================
; --- Listagem do Processador Utilizado ---
	list	p=16F628A						;Utilizado PIC16F628A
		

;========================================================================================	
; --- Arquivos Inclusos no Projeto ---
	#include <p16F628a.inc>					;inclui o arquivo do PIC 16F628A
	

;========================================================================================
; --- FUSE Bits ---
; - Cristal de 4MHz
; - Desabilitamos o Watch Dog Timer
; - Habilitamos o Power Up Timer
; - Brown Out desabilitado
; - Sem programa��o em baixa tens�o, sem prote��o de c�digo, sem prote��o da mem�ria EEPROM
; - Master Clear Habilitado
	__config _XT_OSC & _WDT_OFF & _PWRTE_ON & _BOREN_OFF & _LVP_OFF & _CP_OFF & _CPD_OFF & _MCLRE_ON
	

;========================================================================================
; --- Pagina��o de Mem�ria ---
	#define		bank0	bcf	STATUS,RP0		;Cria um mnem�nico para selecionar o banco 0 de mem�ria
	#define		bank1	bsf	STATUS,RP0		;Cria um mnem�nico para selecionar o banco 1 de mem�ria
	
	
;========================================================================================
; --- Mapeamento de Hardware ---
	#define		LED1	PORTA,3				;LED1 ligado ao pino RA3 (PEPTO)
	#define		LED2	PORTA,2				;LED2 ligado ao pino RA2 (PEPTO)
	#define		S1		PORTB,0				;Bot�o S1 ligado ao pino RB0 (PEPTO)
	#define		S2		PORTA,5				;Bot�o S2 ligado ao pino RA5 (PEPTO)
	#define		out     PORTB,0				;sa�da para indica��o


;========================================================================================
; --- Registradores de Uso Geral ---
	cblock		H'20'						;In�cio da mem�ria dispon�vel para o usu�rio
	
	W_TEMP									;Registrador para armazenar o conte�do tempor�rio de work
	STATUS_TEMP								;Registrador para armazenar o conte�do tempor�rio de STATUS
	 
	endc									;Final da mem�ria do usu�rio
	

;========================================================================================
; --- Vetor de RESET ---
	org			H'0000'						;Origem no endere�o 00h de mem�ria
	goto		inicio						;Desvia para a label in�cio
	

;========================================================================================
; --- Vetor de Interrup��o ---
	org			H'0004'						;As interrup��es deste processador apontam para este endere�o
	
; -- Salva Contexto --
	movwf 		W_TEMP						;Copia o conte�do de Work para W_TEMP
	swapf 		STATUS,W  					;Move o conte�do de STATUS com os nibbles invertidos para Work
	bank0									;Seleciona o banco 0 de mem�ria (padr�o do RESET) 
	movwf 		STATUS_TEMP					;Copia o conte�do de STATUS com os nibbles invertidos para STATUS_TEMP
; -- Final do Salvamento de Contexto --




 
; -- Recupera Contexto (Sa�da da Interrup��o) --
exit_ISR:

	swapf 		STATUS_TEMP,W				;Copia em Work o conte�do de STATUS_TEMP com os nibbles invertidos
	movwf 		STATUS 						;Recupera o conte�do de STATUS
	swapf 		W_TEMP,F 					;W_TEMP = W_TEMP com os nibbles invertidos 
	swapf 		W_TEMP,W  					;Recupera o conte�do de Work
	
	retfie									;Retorna da interrup��o


;========================================================================================	
; --- Principal ---	
inicio:

	bank1									;muda para o banco 1 de mem�ria
	bcf			TRISB,3						;configura RB3 como sa�da
	 

	bank0									;muda para o banco 0 de mem�ria
	bcf			PORTB,3						;RB3 inicia em LOW
	movlw		H'07'						;move literal 07h para work
	movwf		CMCON						;habilita comparadores com tens�o de refer�ncia interna
	movlw		H'08'						;move literal 0Bh para work
	movwf		CCP1CON						;configura modo de compara��o
	movlw		H'0F'						;move literal 0Fh para work
	movwf		CCPR1L						;inicializa CCPR1L em 0Fh
	movlw		H'00'						;move literal 00h para work
	movwf		CCPR1H						;inicializa CCPR1H em 00h
	movlw		H'03'						;move literal 03h para work
	movwf		T1CON						;liga Timer1, ps 1:1, clock externo ass�ncrono
	


loop:										;Loop infinito
   
	btfss		PORTB,3
	goto		loop						;N�o, desvia para loop
	bsf			PORTB,3
	goto		$	
	
	
;========================================================================================
; --- Desenvolvimento das Sub-Rotinas ---
 							
 
     
 


;========================================================================================
; --- Final do Programa ---	
	end										;Final do Programa
	
	
	
