# faça um cliente pyro5 para enviar uma mensagem para o servidor
# Linguagem: Python 3

import threading
import time
import Pyro5.api

# classe que representa o cliente
@Pyro5.api.expose
class Cliente:
    def __init__(self):
        self.id = 'Cliente 3'
       

    def concorrer(self, id, rc, cont, uri):
        message = id+' '+rc+' '+cont+' '+uri
        print(message)
        return message




daemon = Pyro5.api.Daemon()        # make a Pyro daemon
uri_cliente = daemon.register(Cliente)    # register the greeting maker as a Pyro object
print("Ready. Object uri Cliente =", uri_cliente)       # print the uri so we can use it in the client later
# daemon.requestLoop()                    # start the event loop of the server to wait for calls


def requisicoes():
    # while True:
    uri_barbeiro = input("What is the Pyro uri = ").strip()
    barbeiro = Pyro5.api.Proxy(uri_barbeiro)     # get a Pyro proxy to the greeting object
# while True:
    print(barbeiro.concorrer("Cliente1", 'Barba', '2', str(uri_cliente)))
    lista_grupo_cliente = barbeiro.lista()
    print("Lista grupo cliente: "+str(lista_grupo_cliente))   # call method normally

    for i in range(0, len(lista_grupo_cliente)):
        print(lista_grupo_cliente[i][3])
        if lista_grupo_cliente[i][3] == uri_cliente:
            pass
        else:
            outros_clientes = Pyro5.api.Proxy(lista_grupo_cliente[i][3])     # get a Pyro proxy to the greeting object
            print(outros_clientes.concorrer("Cliente1", 'Barba', '2', str(uri_cliente)))   # call method normally

    time.sleep(6)
    print(barbeiro.concorrer("Cliente1", 'Bigode', '2', str(uri_cliente)))   # call method normally
    time.sleep(6)
    print(barbeiro.concorrer("Cliente1", 'Cabelo', '2', str(uri_cliente)))   # call method normally


# criar duas threads
thread1 = threading.Thread(target=daemon.requestLoop, args=())
thread2 = threading.Thread(target=requisicoes, args=())

# ligar threads
thread1.start()
thread2.start()
thread1.join()
thread2.join()


