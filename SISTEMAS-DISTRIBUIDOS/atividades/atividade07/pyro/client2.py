
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
print("Ready. Object uri Cliente =", uri_cliente)       # print the uri so we can use it in the client later

def requisicoes():

    uri_exclusao = input("What is the Pyro uri = ").strip()
    exclusao = Pyro5.api.Proxy(uri_exclusao)     # get a Pyro proxy to the greeting object
    time.sleep(10)

    for item in range(0, 20):
        time.sleep(6)    
        print(exclusao.concorrer("Cliente2", 'Barba', str(item), str(uri_cliente)))

        time.sleep(6)
        print(exclusao.concorrer("Cliente2", 'Bigode', str(item), str(uri_cliente)))   # call method normally

        time.sleep(6)
        print(exclusao.concorrer("Cliente2", 'Cabelo', str(item), str(uri_cliente)))   # call method normally



# criar duas threads
thread1 = threading.Thread(target=daemon.requestLoop, args=())
thread2 = threading.Thread(target=requisicoes, args=())

# ligar threads
thread1.start()
thread2.start()
thread1.join()
thread2.join()


