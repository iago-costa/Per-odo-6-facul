
# 2. Reescreva o algoritmo de Intercalação (Merge), para um vetor
#    A[p,q,r] de modo que ele não utilize sentinelas e, em vez disso, pare
#    tão logo todos os elementos do arranjo L ou do arranjo R tenham sido
#    copiados de volta em A e então copie o restante do outro arranjo de
#    volta em A. Implemente esse algoritmo em C ou em Python, em que o
#    usuário entre com os valores do vetor A, de 10 posições, com q-p+1=5
#    e r-q=5. (1,0)

# Aluno: Iago Costa das Flores
# Disciplina: Complexidade de Algoritmo
# Turma: Engenharia da Computação 2018
# Data 11/07/2021
# Matricula: 201840601017
# Professor: Manoel Ribeiro

import random

A = []

for item in range(10):
    A.append(input("Digite o valor "+str(item)+" do vetor A: "))    
    # A.append(random.randrange(1, 101))

print("Vetor Completo A: ",A)
p = 1
q = 5
r = 10


def intercala(A, p, q, r):
    # n1 = q - p + 1
    # n2 = r - q
    L = []
    R = []
    
    for item in range(p-1, q):
        L.append(A[item])
        
    for item in range(q, len(A)):
        R.append(A[item])

    L = sorted(L)
    R = sorted(R)
    print("Vetor L: ",L)
    print("Vetor R: ",R)

    i = 0
    j = 0
    item = 0
    for item in range(p-1, r):
    # while L != [] or R != []:
        # print(item)
        if L == [] and R == []:
            pass
        elif L == [] or R == []:
            if L == []:
                print(item, " R proximo: ", R[i])
                A[item] = R[i]
                R.pop(i)

            elif R == []:
                print(item, " L proximo: ", L[j])
                A[item] = L[i]
                L.pop(i)
        else:
            if L[i] <= R[j]:
                print(item, " L escolhido: ", L[i])
                A[item] = L[i]
                L.pop(i)
            else:
                print(item, " R escolhido: ", R[j])
                A[item] = R[j]
                R.pop(j)
        item += 1        

    print("Vetor L: ",L)
    print("Vetor R: ",R)

    print(A)
intercala(A, p, q, r)
