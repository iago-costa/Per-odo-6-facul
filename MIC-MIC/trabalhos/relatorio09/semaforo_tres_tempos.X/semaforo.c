/*
 * File:   semaforo.c
 * Author: Iago
 *
 * Created on July 28, 2021, 10:50 AM
 */

#include <xc.h>
#pragma config FOSC = INTOSCIO  // Oscillator Selection bits (HS oscillator: High-speed crystal/resonator on RA6/OSC2/CLKOUT and RA7/OSC1/CLKIN)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config MCLRE = OFF       // RA5/MCLR/VPP Pin Function Select bit (RA5/MCLR/VPP pin function is MCLR)
#pragma config BOREN = OFF      // Brown-out Detect Enable bit (BOD disabled)
#pragma config LVP = OFF        // Low-Voltage Programming Enable bit (RB4/PGM pin has digital I/O function, HV on MCLR must be used for programming)
#pragma config CPD = OFF        // Data EE Memory Code Protection bit (Data memory code protection off)
#pragma config CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)

#define _XTAL_FREQ 4000000

#define LED1 RA0
#define LED2 RA1
#define LED3 RA2

#define LED4 RA3
#define LED5 RB4
#define LED6 RB0
    
#define LED7 RB1
#define LED8 RB2
#define LED9 RB3
    
void main (){
    
    PORTB=0x00;
    TRISB=0x00;
    PORTA=0x00;
    TRISA=0x00;
    
    while(1)
    {
        // semaforo 1 aberto e demais fechados
        LED1=0;
        LED2=0;
        LED3=1;
        
        LED4=1;
        LED5=0;
        LED6=0;
	
        LED7=1;
        LED8=0;
        LED9=0;
        
        __delay_ms(5000);
        
        LED1=0;
        LED2=1;
        LED3=0;
        
        LED4=1;
        LED5=0;
        LED6=0;
	
        LED7=1;
        LED8=0;
        LED9=0;
	
        __delay_ms(1000);
        
        // semaforo 2 aberto e demais fechados        
        LED1=1;
        LED2=0;
        LED3=0;
	
        LED4=0;
        LED5=0;
        LED6=1;
	
        LED7=1;
        LED8=0;
        LED9=0;
        
        __delay_ms(5000);
        
        LED1=1;
        LED2=0;
        LED3=0;
	
        LED4=0;
        LED5=1;
        LED6=0;
	
        LED7=1;
        LED8=0;
        LED9=0;
        
        __delay_ms(1000);
        
        // semaforo 3 aberto e demais fechados        
        LED1=1;
        LED2=0;
        LED3=0;
	
        LED4=1;
        LED5=0;
        LED6=0;
	
        LED7=0;
        LED8=0;
        LED9=1;
        
        __delay_ms(5000);
        
        LED1=1;
        LED2=0;
        LED3=0;
	
        LED4=1;
        LED5=0;
        LED6=0;
	
        LED7=0;
        LED8=1;
        LED9=0;
        
        __delay_ms(1000);
            
    }
}