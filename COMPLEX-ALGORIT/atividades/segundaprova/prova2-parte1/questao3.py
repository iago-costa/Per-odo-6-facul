
# 3. Para o algoritmo de busca binária, considere que o vetor A, seja inteiro
#    e que esteja ordenado. Escreva o algoritmo Busca-Binaria-
#    Recursiva(A,v,inf,sup), em que v é o valor que se verifica se tem em
#    A, inf a posição inferior do vetor e sup a posição superior do vetor. Se
#    o valor de v estive contido em A retorne o índice do vetor A, em que
#    v está contido. Se v não estiver em A retorne a palavra NIL. Determine
#    o tempo de execução desse algoritmo no pior caso em notação Θ.
#    Implemente esse algoritmo em C ou python, e teste em uma função
#    principal em que o usuário entre com os valores de A e de v.(1,0).

# Aluno: Iago Costa das Flores
# Disciplina: Complexidade de Algoritmo
# Turma: Engenharia da Computação 2018
# Data 11/07/2021
# Matricula: 201840601017
# Professor: Manoel Ribeiro
A = [12, 25, 34, 48, 56, 68, 73, 85, 96]

print("Vetor Completo A: ",A)

def busca_binaria_recursiva(A, v, inv, sup):
    valor_central = int(len(A)/2)
    # return valor_central
    if v <= A[valor_central]:
        for item in range(inv, valor_central):
            if v == A[item]:
                return item
    else:
        for item in range(valor_central, sup):
            if v == A[item]:
                return item
    return "NIL"

print("Valor v está na posição : ", busca_binaria_recursiva(A, v=73, inv=0, sup=8))