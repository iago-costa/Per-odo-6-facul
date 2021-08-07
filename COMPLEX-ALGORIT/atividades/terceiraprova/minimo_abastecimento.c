#include <stdlib.h>
#include <stdio.h>

// Quero dirigir um carro de uma cidade A a uma cidade B ao longo de uma rodovia.
// O tanque de combustível tem capacidade suficiente para cobrir N quilômetros.
// Mapa da rodovia indica a localização dos postos de combustível.
// Dê um algoritmo que garanta uma viagem com número mínimo de re-abastecimentos.

int minimo_abastecimento // função que calcula o número mínimo de abastecimentos
    (
        int consumo_litro_por_km,             // Consumo de combustível por quilômetro
        int tanque_km,                        // Capacidade do tanque
        int percurso_km,                      // Percurso a percorrer
        int *postos_combustiveis_km,          // Posições dos postos de combustível
        int postos_combustiveis_km_quantidade // Quantidade de postos de combustível
    );

int consumo_entre_postos // função que calcula o consumo entre postos de combustível
    (
        int posto_proximo,       // Posição do posto de combustível mais próximo
        int posto_atual,         // Posição do posto de combustível atual
        int consumo_litro_por_km // Consumo de combustível por quilômetro
    );                           // Consumo entre postos

int main(int argc, char const *argv[])
{
    int vetor[] = {2, 6, 8, 12, 15, 19, 22, 25, 28, 35, 39, 41, 43, 47, 49};
    int consumo_litro_por_km = 1;
    int tanque_km = 9;
    int percurso_km = 50;
    int tamanho_vetor = (sizeof(vetor) / sizeof(vetor[0]));
    
    printf("Inicio do percurso \n");
        // int consumo_litro_por_km,  // Consumo de combustível por quilômetro
        // int tanque_km, // Capacidade do tanque
        // int percurso_km, // Percurso a percorrer
        // int *postos_combustiveis_km, // Posições dos postos de combustível
        // int postos_combustiveis_km_quantidade // Quantidade de postos de combustível
    int abastecimentos = minimo_abastecimentos(consumo_litro_por_km, tanque_km, percurso_km, vetor, tamanho_vetor);
    printf("\nFim do percurso!!! \n \n");
    printf("Consumo litro/km foi %d, Capacidade do tanque era %d litros\ne o tamanho do percurso era %d Kms", consumo_litro_por_km, tanque_km, percurso_km);
    printf("\nO número de abastecimentos foi %d, de %d postos de combustível. \n \n", abastecimentos, tamanho_vetor);

    return 0;
}

int minimo_abastecimentos // função que calcula o número mínimo de abastecimentos
    (
        int consumo_litro_por_km,             // Consumo de combustível por quilômetro
        int tanque_km,                        // Capacidade do tanque
        int percurso_km,                      // Percurso a percorrer
        int *postos_combustiveis_km,          // Posições dos postos de combustível
        int postos_combustiveis_km_quantidade // Quantidade de postos de combustível
    )
{
    int tanque_restante_km = 0,         // Capacidade do tanque restante
        posto_combustivel_atual_km = 0, // Posição atual do posto de combustível
        contador_abastecimentos = 0,    // Contador de abastecimentos
        percurso_restante_km = 0,       // Percurso a percorrer restante
        consumo_entre_postos_atual = 0, // Consumo entre postos atual
        i = 0;                          // Número de postos de combustível
    tanque_restante_km = tanque_km;     // inicializa o tanque restante com o tanque inicial

    // imprimir numero de postos de combustiveis
    printf("Números de postos %d \n", postos_combustiveis_km_quantidade);
    for (int posicao_atual_km = 0; posicao_atual_km < percurso_km; posicao_atual_km++) // percorre o percurso
    {
        printf("Tanque restante: %d \n", tanque_restante_km);                        // Mostra o tanque restante
        printf("Posto de combustível atual: %d \n", posto_combustivel_atual_km + 1); // Mostra o posto de combustível atual
        printf("Posição atual do motorista: %d \n", posicao_atual_km);               // Mostra a posição atual do posto de combustível
        percurso_restante_km = percurso_km - posicao_atual_km;                       // Calcula o percurso restante
        printf("Percurso restante: %d \n", percurso_restante_km);                    // Mostra o percurso restante
        printf("Percurso total: %d \n", percurso_km);                                // Mostra o percurso total
        printf("======  %d (km rodados) ====== \n \n", posicao_atual_km);            //Iterador

        for (i = 0; i < postos_combustiveis_km_quantidade; i++) // percorre todos os postos de combustiveis
        {
            if (posicao_atual_km == postos_combustiveis_km[i]) // Se encontrou o posto de combustível
            {
                if (i != (postos_combustiveis_km_quantidade - 1)) // Se não for o último posto de combustível
                {
                    consumo_entre_postos_atual = consumo_entre_postos(postos_combustiveis_km[i + 1], postos_combustiveis_km[i], consumo_litro_por_km);
                    if (tanque_restante_km > consumo_entre_postos_atual) // Se o tanque do motorista está suficiente para o consumo
                    {
                        printf("Motorista não abasteceu no posto %d \n", i); // Não abasteceu
                        posto_combustivel_atual_km = i;                      // reinicia o posto de combustível
                    }
                    if (tanque_restante_km < consumo_entre_postos_atual) // Se o tanque do motorista não está suficiente para o consumo
                    {
                        tanque_restante_km = tanque_km;                  // Reinicia o tanque
                        posto_combustivel_atual_km = i;                  // reinicia o posto de combustível
                        printf("Motorista abasteceu no posto %d \n", i); // Abastece no posto de combustível
                        contador_abastecimentos += 1;                    // Incrementa o contador de abastecimentos
                    }
                }
                if (i == (postos_combustiveis_km_quantidade - 1)) // Se for o último posto de combustível
                {
                    consumo_entre_postos_atual = consumo_entre_postos(percurso_km, postos_combustiveis_km[i], consumo_litro_por_km);

                    if (tanque_restante_km > consumo_entre_postos_atual) // Se o tanque do motorista está suficiente para o consumo
                    {
                        printf("Motorista não abasteceu no posto %d \n", i); // Não abasteceu
                        posto_combustivel_atual_km = i;                      // reinicia o posto de combustível
                    }
                    if (tanque_restante_km < consumo_entre_postos_atual) // Se o tanque do motorista não está suficiente para o consumo
                    {
                        tanque_restante_km = tanque_km;                  // Reinicia o tanque
                        posto_combustivel_atual_km = i;                  // seta posto de combustível
                        printf("Motorista abasteceu no posto %d \n", i); // Abastece no posto de combustível
                        contador_abastecimentos += 1;                    // Incrementa o contador de abastecimentos
                    }
                }
            }
        }

        if (tanque_restante_km == 0) // Se o tanque estiver vazio
        {
            printf("Gasolina acabou!! \n"); // A gasolina acabou
            return contador_abastecimentos; // Retorna o contador de abastecimentos
        }

        tanque_restante_km = tanque_restante_km - (consumo_litro_por_km * 1); // Calcula o tanque restante
    }
    return contador_abastecimentos; // Retorna o contador de abastecimentos
}

int consumo_entre_postos // Função que calcula o consumo entre postos de combustível
    (
        int posto_proximo,       // Posto de combustível próximo
        int posto_atual,         // Posto de combustível atual
        int consumo_litro_por_km // Consumo de litros por km
    )
{
    return (posto_proximo - posto_atual) * consumo_litro_por_km; // Calcula o consumo entre postos
}
