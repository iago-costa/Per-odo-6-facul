

// Questão 04 - última questão
// Data: 24/07/2021
// Aluno: Iago Costa
// Professor: Manoel Ribeiro
// Disciplina: Complexidade de Algoritmo

int main(int argc, char const *argv[])
{
    int i = 0;
    int a[] = {107, 35, 20, 390, 80, 54, 67, 30, 21, 450, 140, 90, 370};
    int primeiro_maior = a[0];
    int segundo_maior = 0;

    for (i = 1; i < (int)( sizeof(a) / sizeof(a[0]) ); i++)
    {
        if (a[i] > primeiro_maior)
        {
            primeiro_maior = a[i];
        }
        if (a[i] > segundo_maior && a[i] != primeiro_maior)
        {
            segundo_maior = a[i];
        }
        
    }

    printf("Primeiro maior valor: %d", primeiro_maior);
    printf("\n");
    printf("Segundo maior valor: %d", segundo_maior);
    printf("\n");


    return 0;
}
