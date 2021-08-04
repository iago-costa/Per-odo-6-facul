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
#define MOTOR1 RB0
#define MOTOR2 RB1
#define bot1 RA0
#define bot2 RA1
int main() {
    TRISA = 0x03; // Define portas RA0 e RA1 como entrada
    TRISB = 0x00; //Define todas as portas B como saida
    PORTB = 0x00;
    PORTA = 0x00;
    while (1) //Loop infinito
    {
        if (bot1 == 0) { //botao 1 sem corrente
            MOTOR1 = 1; // motor 1 acionado
            __delay_ms(4000); // delay 4 segundos
            MOTOR1 = 0; // motor 1 desligado
            bot1 = 1; // botao 1 com corrente
        }
        if (bot2 == 0) { //botao 2 sem corrente
            MOTOR2 = 1; // motor 2 acionado
            __delay_ms(4000); // delay 4 segundos
            MOTOR2 = 0; // motor 2 desligado
            bot2 = 1; // botao 2 com corrente
        }
    }
    return 0;
}