
import pprint
import sympy as s
import math
n = 0
# functions = ["100*math.pow(n, 2)", "math.pow(2, n)"]
# functions = ["8*n**2", "64*n*log(n)", "2**n"]
# functions = ["100*n**2", "2**n"]

# functions = ["100*n**2", "5*n**3"]
# functions = ["n**5", "2**n"]
functions = ["2*n**3", "(2*n**3)/729"]

# functions = ["log(n)   ", "sqrt(n)  ", "n        ", "n*log(n) ", "n*n      ", "n*n*n    ", "2**n     ", "n!       "]

# def segundos():
#     x = []
#     # if  tipo == "segundos":
#     a = 1*1000000
#     x.append(a)
#     # if  tipo == "minuto":
#     b = 60
#     b = b*1000000
#     x.append(b)
#     # if  tipo == "hora":
#     c = 60*60
#     c = c*1000000
#     x.append(c)
#     # if  tipo == "dia":
#     d = 60*60*24
#     d = d*1000000
#     x.append(d)    
#     # if  tipo == "mes":
#     e = 60*60*24*30
#     e = e*1000000
#     x.append(e)    
#     # if  tipo == "ano":
#     f = 60*60*24*30*12
#     f = e*1000000
#     x.append(f)    
#     # if  tipo == "seculo":
#     g = 60*60*24*30*12*100
#     g = g*1000000
    
#     x.append(g)        
#     return x

# carregar funções
result = {}
for i in range(len(functions)):
    result[functions[i]] = []


# função que faz os cálculos
def calculo(function,n):
    f = 0
    if 'log(n)' in function:
        f = function.replace("n", n)
        f = s.sympify(f) #transforma em função
        f = f.evalf(9,subs={n: float(n)})
        # print(f)
        return f
   
    if 'sqrt(n)' in function:
        f = function.replace("n", n)
        f = s.sympify(f) #transforma em função
        f = f.subs('sqrt(n)',s.sqrt(float(n))) #faz substituiçõesde string para valor
        f = f.evalf(9)
        return f
    else:
        function = function.replace("n", n)
    # print(function)
        f = s.sympify(function)
        f = f.evalf(10)
        return f
    return f
    # print(f)


# Guardando valores
for i in range(len(functions)):
    # for j in segundos():
    #     result[functions[i]].append(calculo(functions[i], str(j+1)))
    for j in range(194):
        result[functions[i]].append(calculo(functions[i], str(j+1)))


# pp = pprint.PrettyPrinter(indent=3)
# pp.pprint(segundos())
# pp.pprint(result)



# para dois algoritmos
w = 0
for i,j in zip(result[functions[0]],result[functions[1]]):
    w = w+1
    # print(i,j)
    # for j in :
    if i > j:
        print(str(w)+": programa A é lerdo! --> A="+str(i)+" B="+str(j))
    if i < j:
        print(str(w)+": programa B é lerdo! --> A="+str(i)+" B="+str(j))
    if i == j:
        print(str(w)+": programas igualados! --> A="+str(i)+" B="+str(j))




# para três algoritmos
# w = 0
# for i,j,k in zip(result[functions[0]],result[functions[1]],result[functions[2]]):
#     w = w+1
#     # print(i,j)
#     # for j in :
#     # if i > j and i > k:
#     #     print(str(w)+": programa A é lerdo! --> A="+str(i)+" B="+str(j)+" C="+str(k))
#     # elif j > i and j > k:
#     #     print(str(w)+": programa B é lerdo! --> A="+str(i)+" B="+str(j)+" C="+str(k))
#     # elif i == j and i == k:
#     #     print(str(w)+": programas igualados! --> A="+str(i)+" B="+str(j)+" C="+str(k))
#     # elif k > i and k > j:
#     #     print(str(w)+": programa C é lerdo! --> A="+str(i)+" B="+str(j)+" C="+str(k))
#     # else:    
#     #     print(str(w)+": não entrou no if! --> A="+str(i)+" B="+str(j)+" C="+str(k))

#     if i < j and i < k:
#         print(str(w)+": programa A é mais rápido! --> A="+str(i)+" B="+str(j)+" C="+str(k))
#     elif j < i and j < i:
#         print(str(w)+": programa B é mais rápido! --> A="+str(i)+" B="+str(j)+" C="+str(k))
#     elif i == j and i == k:
#         print(str(w)+": programas igualados! --> A="+str(i)+" B="+str(j)+" C="+str(k))
#     elif k < i and k < j:
#         print(str(w)+": programa C é mais rápido! --> A="+str(i)+" B="+str(j)+" C="+str(k))
#     else:    
#         print(str(w)+": não entrou no if! --> A="+str(i)+" B="+str(j)+" C="+str(k))


