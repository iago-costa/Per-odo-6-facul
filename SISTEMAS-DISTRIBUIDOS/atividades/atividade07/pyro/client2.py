
import random
import threading
import time
import Pyro5.api

# classe que representa o cliente
@Pyro5.api.expose
class Cliente:
    def __init__(self):
        self.id = 'Cliente 2'
       
    def concorrer(self, id, rc, cont, uri):
        message = id+' '+rc+' '+cont+' '+uri
        print("Chamada de função por: "+str(uri))
        return message


daemon = Pyro5.api.Daemon()        # make a Pyro daemon
uri_cliente = daemon.register(Cliente)    # register the greeting maker as a Pyro object
print("Ready. Object uri Exclusao =", uri_cliente)       # print the uri so we can use it in the client later

def requisicoes():
    uri_exclusao = input("What is the Pyro uri = ").strip()
    exclusao = Pyro5.api.Proxy(uri_exclusao)     # get a Pyro proxy to the greeting object
    time.sleep(10)
    lista1 = [random.randint(0,50) for x in range(20)]
    lista2 = [random.randint(0,50) for x in range(20)]
    lista3 = [random.randint(0,50) for x in range(20)]
    
    for item in range(0, 20):
        time.sleep(8)
        print(exclusao.concorrer("Cliente2", 'Barba', str(lista1[item]), str(uri_cliente)))

        time.sleep(1)
        print(exclusao.concorrer("Cliente2", 'Bigode', str(lista2[item]), str(uri_cliente)))   # call method normally

        time.sleep(3)
        print(exclusao.concorrer("Cliente2", 'Cabelo', str(lista3[item]), str(uri_cliente)))   # call method normally

thread1 = threading.Thread(target=daemon.requestLoop, args=())
thread2 = threading.Thread(target=requisicoes, args=())

# ligar threads
thread1.start()
thread2.start()
thread1.join()
thread2.join()


