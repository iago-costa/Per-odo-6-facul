
import pprint
import sympy as s
import math
n = 0
# functions = ["100*math.pow(n, 2)", "math.pow(2, n)"]
# functions = ["100*n**2", "2**n"]
functions = ["log(n)   ", "sqrt(n)  ", "n        ", "n*log(n) ", "n*n      ", "n*n*n    ", "2**n     ", "n!       "]

def segundos():
    x = []
    # if  tipo == "segundos":
    a = 1*1000000
    x.append(a)
    # if  tipo == "minuto":
    b = 60
    b = b*1000000
    x.append(b)
    # if  tipo == "hora":
    c = 60*60
    c = c*1000000
    x.append(c)
    # if  tipo == "dia":
    d = 60*60*24
    d = d*1000000
    x.append(d)    
    # if  tipo == "mes":
    e = 60*60*24*30
    e = e*1000000
    x.append(e)    
    # if  tipo == "ano":
    f = 60*60*24*30*12
    f = e*1000000
    x.append(f)    
    # if  tipo == "seculo":
    g = 60*60*24*30*12*100
    g = g*1000000
    
    x.append(g)        
    return x

result = {}
for i in range(len(functions)):
    result[functions[i]] = []

def calculo(function,n):
    f = 0
    if 'log(n)' in function:
        f = function.replace("n", n)
        f = s.sympify(f) #transforma em função
        f = f.evalf(3,subs={n: float(n)})
        # print(f)
        return f
   
    if 'sqrt(n)' in function:
        f = function.replace("n", n)
        f = s.sympify(f) #transforma em função
        f = f.subs('sqrt(n)',s.sqrt(float(n))) #faz substituiçõesde string para valor
        f = f.evalf(3)
        return f
    else:
        function = function.replace("n", n)
    # print(function)
        f = s.sympify(function)
        f = f.evalf(3)
        return f
    return f
    # print(f)

for i in range(len(functions)):
    for j in segundos():
        result[functions[i]].append(calculo(functions[i], str(j+1)))

pp = pprint.PrettyPrinter(indent=3)
pp.pprint(segundos())
pp.pprint(result)