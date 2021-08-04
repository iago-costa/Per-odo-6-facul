//Created on August 4, 2021, 12:58 PM
#include<xc.h>
#pragma config FOSC = INTOSCIO // Oscillator Selection bits (HS oscillator: High-speed crystal/resonator on RA6/OSC2/CLKOUT and RA7/OSC1/CLKIN)
#pragma config WDTE = OFF      // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = OFF     // Power-up Timer Enable bit (PWRT disabled)
#pragma config MCLRE = OFF     // RA5/MCLR/VPP Pin Function Select bit
//(RA5/MCLR/VPP pin function is MCLR)
#pragma config BOREN = OFF     // Brown-out Detect Enable bit (BOD disabled)
#pragma config LVP = OFF       // Low-Voltage Programming Enable bit //(RB4/PGM pin has digital I/O function, HV on MCLR must be used for //programming)
#pragma config CPD = OFF       // Data EE Memory Code Protection bit (Data memory code protection off)
#pragma config CP = OFF
#define _XTAL_FREQ 4000000 //Define a utilizacao do clock interno de 4 Mhz
#define MOTOR1 RA1
#define MOTOR2 RA3
#define bot1 RB0
#define bot2 RB1
int main() {
    TRISB = 0x00; //Define todas as portas B como saida
    PORTB = 0x00;
    PORTA = 0x00;
    TRISA = 0x00;
    while (1) //Loop infinito
    {
        if (bot1 == 0) { //botao 1 acionado
            MOTOR1 = 1;
            __delay_ms(500);
            MOTOR1 = 0;
            bot1 = 1;
        }
        if (bot2 == 0) { //botao 2 acionado
            MOTOR2 = 1;
            __delay_ms(500);
            MOTOR2 = 0;
            bot2 = 1;        
        }        
    }
    return 0;
}