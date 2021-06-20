//
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 
//
Algoritmo "Escalas"
// Disciplina  : [Complexidade de Algoritmos]
// Professor(a): Manoel
// Descrição   : Vetores
// Autor(a)    : Iago
// Data atual  : 18/06/2021
Var
// Seção de Declarações das variáveis 
n, i, j, soma : INTEIRO
vet, vet_two: vetor [1..5] de inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   vet[1] <- 1
   vet[2] <- 2
   vet[3] <- 3
   vet[4] <- 4
   vet[5] <- 5
   soma <- 1
   para i de 2 ate 5 faca
     soma <- 0
     //soma <- vet[i-1]
     //para j de i-1 ate i faca
       //soma <- soma+vet[j]
     soma <- soma+vet[i]
     soma <- soma+vet[i-1]
       //escreval(i,j)

     //fimpara
     vet[i] <- soma
   fimpara
Fimalgoritmo

