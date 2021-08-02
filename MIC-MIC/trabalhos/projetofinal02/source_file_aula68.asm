;========================================================================================
;
; Curso de Assembly para PIC WR Kits Aula 68
;
;
; Contador de Objetos em Esteira Industrial com Modo de Comparação
;
;
; Período = 2 x [ ciclo de máquina x prescaler T1 x CCP1 ]
;
;
;
; Sistema Embarcado Sugerido: PARADOXUS PEPTO
;
; Disponível em https://wrkits.com.br/catalog/show/141 
;
; Clock: 4MHz    Ciclo de máquina = 1µs
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
; - Sem programação em baixa tensão, sem proteção de código, sem proteção da memória EEPROM
; - Master Clear Habilitado
	__config _XT_OSC & _WDT_OFF & _PWRTE_ON & _BOREN_OFF & _LVP_OFF & _CP_OFF & _CPD_OFF & _MCLRE_ON
	

;========================================================================================
; --- Paginação de Memória ---
	#define		bank0	bcf	STATUS,RP0		;Cria um mnemônico para selecionar o banco 0 de memória
	#define		bank1	bsf	STATUS,RP0		;Cria um mnemônico para selecionar o banco 1 de memória
	
	
;========================================================================================
; --- Mapeamento de Hardware ---
	#define		LED1	PORTA,3				;LED1 ligado ao pino RA3 (PEPTO)
	#define		LED2	PORTA,2				;LED2 ligado ao pino RA2 (PEPTO)
	#define		S1		PORTB,0				;Botão S1 ligado ao pino RB0 (PEPTO)
	#define		S2		PORTA,5				;Botão S2 ligado ao pino RA5 (PEPTO)
	#define		out     PORTB,0				;saída para indicação


;========================================================================================
; --- Registradores de Uso Geral ---
	cblock		H'20'						;Início da memória disponível para o usuário
	
	W_TEMP									;Registrador para armazenar o conteúdo temporário de work
	STATUS_TEMP								;Registrador para armazenar o conteúdo temporário de STATUS
	 
	endc									;Final da memória do usuário
	

;========================================================================================
; --- Vetor de RESET ---
	org			H'0000'						;Origem no endereço 00h de memória
	goto		inicio						;Desvia para a label início
	

;========================================================================================
; --- Vetor de Interrupção ---
	org			H'0004'						;As interrupções deste processador apontam para este endereço
	
; -- Salva Contexto --
	movwf 		W_TEMP						;Copia o conteúdo de Work para W_TEMP
	swapf 		STATUS,W  					;Move o conteúdo de STATUS com os nibbles invertidos para Work
	bank0									;Seleciona o banco 0 de memória (padrão do RESET) 
	movwf 		STATUS_TEMP					;Copia o conteúdo de STATUS com os nibbles invertidos para STATUS_TEMP
; -- Final do Salvamento de Contexto --




 
; -- Recupera Contexto (Saída da Interrupção) --
exit_ISR:

	swapf 		STATUS_TEMP,W				;Copia em Work o conteúdo de STATUS_TEMP com os nibbles invertidos
	movwf 		STATUS 						;Recupera o conteúdo de STATUS
	swapf 		W_TEMP,F 					;W_TEMP = W_TEMP com os nibbles invertidos 
	swapf 		W_TEMP,W  					;Recupera o conteúdo de Work
	
	retfie									;Retorna da interrupção


;========================================================================================	
; --- Principal ---	
inicio:

	bank1									;muda para o banco 1 de memória
	bcf			TRISB,3						;configura RB3 como saída
	 

	bank0									;muda para o banco 0 de memória
	bcf			PORTB,3						;RB3 inicia em LOW
	movlw		H'07'						;move literal 07h para work
	movwf		CMCON						;habilita comparadores com tensão de referência interna
	movlw		H'08'						;move literal 0Bh para work
	movwf		CCP1CON						;configura modo de comparação
	movlw		H'0F'						;move literal 0Fh para work
	movwf		CCPR1L						;inicializa CCPR1L em 0Fh
	movlw		H'00'						;move literal 00h para work
	movwf		CCPR1H						;inicializa CCPR1H em 00h
	movlw		H'03'						;move literal 03h para work
	movwf		T1CON						;liga Timer1, ps 1:1, clock externo assíncrono
	


loop:										;Loop infinito
   
	btfss		PORTB,3
	goto		loop						;Não, desvia para loop
	bsf			PORTB,3
	goto		$	
	
	
;========================================================================================
; --- Desenvolvimento das Sub-Rotinas ---
 							
 
     
 


;========================================================================================
; --- Final do Programa ---	
	end										;Final do Programa
	
	
	
