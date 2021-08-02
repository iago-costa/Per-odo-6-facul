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
; Disponivel em https://wrkits.com.br/catalog/show/141 
;
; Clock: 4MHz    Ciclo de maquina = ms
;
; Autor: Eng. Wagner Rambo   Data: Junho de 2016
;
;

; --- Listagem do Processador Utilizado ---
list	p=16F628A		    ; Utilizado PIC16F628A
	
	
; --- Arquivos Inclusos no Projeto ---
#include    <p16F628a.inc>	    ; inclui o arquivo do PIC 16F628A
		
; --- FUSE Bits ---
; - Cristal de 4MHz
; - Desabilitamos o Watch Dog Timer
; - Habilitamos o Power Up Timer
; - Brown Out desabilitado
; - Sem programacao em baixa tensao, sem protecao de codigo, sem protecao da memoria EEPROM
__config _XT_OSC & _WDT_OFF & _PWRTE_ON & _BOREN_OFF & _LVP_OFF & _CP_OFF & _CPD_OFF & _MCLRE_ON
		
; --- Paginacao de Memoria ---
#define	bank0 bcf STATUS, RP0 	; Cria um mnemonico para selecionar o banco 0 de memoria
#define	bank1 bsf STATUS, RP0 	; Cria um mnemonico para selecionar o banco 1 de memoria

; --- Mapeamento de Hardware (PARADOXUS PEPTO) ---
#define	MOTOR1 PORTA, 1 		; MOTOR1 ligado ao pino RA1
#define	MOTOR2 PORTA, 3 		; MOTOR2 ligado ao pino RA3

#define	BOTAO1 PORTB, 0			; BOTAO1 ligado ao pino RB0
#define	BOTAO2 PORTB, 1			; BOTAO2 ligado ao pino RB1

#define	S3 PORTA, 5			; S3 ligado ao pino RA5/MCLRE (sera usado como entrada)

; --- Registradores de Uso Geral ---
cblock	H'20' 	; Inicio da memoria disponivel para o usuario
W_TEMP 		; Registrador para armazenar o conteudo temporario de work
STATUS_TEMP 	; Registrador para armazenar o conteudo temporario de STATUS
counter1 	; Registrador auxiliar para contagem
endc 		; Final da memoria do usuario

; --- Vetor de RESET ---
org	H'0000' 	; Origem no endereco 00h de memoria
goto	inicio 	; Desvia para a label inicio
	
; --- Vetor de Interrupcao ---
org	H'0004'		; As interrupcoes deste processador apontam para este endereco
	
; -- Salva Contexto --
movwf	W_TEMP 		; Copia o conteudo de Work para W_TEMP
swapf	STATUS,W 		; Move o conteudo de STATUS com os nibbles invertidos para Work
bank0 				; Seleciona o banco 0 de memoria (padrao do RESET) 
movwf	STATUS_TEMP 	; Copia o conteudo de STATUS com os nibbles invertidos para STATUS_TEMP
; -- Final do Salvamento de Contexto --

; Trata ISR...	
btfss	INTCON, T0IF	; Ocorreu um overflow no Timer0?
goto	exit_ISR	; Nao, desvia para saida da interrupcao
bcf	INTCON,T0IF	; Sim, limpa a flag
movlw	D'0'		; Sim, move a literal 10d para work
movwf	TMR0		; reinicializa TMR0 em 10d. Timer0 = 256 - 10 = 246
	
decfsz	counter1, F	; Decrementa counter1. Chegou em zero?
goto	exit_ISR	; Nao, desvia para saida da interrupcao

movlw	D'128'		; move a literal 128d para work
movwf	counter1	; reinicializa counter 1 em 18d
	
bcf	MOTOR1		; desliga MOTOR1
bcf	MOTOR2		; desliga MOTOR2

bcf	INTCON, T0IE	; desabilita interrupcao do Timer0

; -- Recupera Contexto (Saida da Interrupcao) --
exit_ISR:
    swapf   STATUS_TEMP, W	; Copia em Work o conteudo de STATUS_TEMP com os nibbles invertidos
    movwf   STATUS 		; Recupera o conteudo de STATUS
    swapf   W_TEMP, F 		; W_TEMP = W_TEMP com os nibbles invertidos 
    swapf   W_TEMP, W  		; Recupera o conteudo de Work	
    retfie			; Retorna da interrupcao
	
inicio:

    bank1		; Seleciona o banco 1 de mem�ria
    movlw H'06'		; w = 06h
    movwf OPTION_REG    ; CONFIGURA OPTION_REG...

; -> Pull Ups internos habilitados
; -> Timer0 incrementa com ciclo de m�quina
; -> Prescaler 1:128 associado ao Timer0

    movlw H'A0'	    ; w=B'0000 0000
    movwf TRISA	    ; TRISA=H'A0' (todos bits sao saidas)

    bank0	    ; Seleciona o banco 0 de memoria
    movlw H'07'	    ; w = 7h
    movwf CMCON	    ; CMCON = 7h desabilita os comparadores internos
    movlw H'80'	    ; w = 80h
    movwf INTCON    ; CONFIGURA INTCON...

; -> Habilita Interrupcao Global
; -> Interrupcao do Timer0 inicia desligada

    movlw D'0'	    ; move a literal 0d para work
    movwf TMR0	    ; inicializa TMR0 em 10d. Timer0 = 256 - 10 = 246
		
    movlw D'128'	    ; move a literal 128d para work
    movwf counter1	    ; inicializa counter1 em 18d
		
;	bcf	MOTOR1	    ; desliga MOTOR1
;	bcf	MOTORLED1   ; desliga MOTORLED1

;	bcf	MOTOR2	    ; desliga MOTOR2
;	bcf	MOTORLED2   ; desliga MOTORLED2
 
loop:
	btfss BOTAO1	 	; BOTAO1 pressionado?
	goto timerOn1 		; Sim, desvia para timerOn1

	btfss BOTAO2	 	; BOTAO2 pressionado?
	goto timerOn2 		; Sim, desvia para timerOn2

	goto loop	 	; Nao, continua testando botao

timerOn1:
	bsf	MOTOR1			; Liga MOTOR1	
	bsf	INTCON,T0IE		; Habilita interrupcao do Timer0
	goto loop			; Desvia de volta para loop

timerOn2:
	bsf	MOTOR2			; Liga MOTOR2
	bsf	INTCON,T0IE		; Habilita interrupcao do Timer0
	goto loop			; Desvia de volta para loop


end				; Final do Programa
	
	
	
