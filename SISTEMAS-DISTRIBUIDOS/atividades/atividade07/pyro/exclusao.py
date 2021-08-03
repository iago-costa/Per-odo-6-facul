
import threading
import Pyro5.api
import time

lista = []
lista_ordenada = [] 
barbeiro_ocupado = []

@Pyro5.server.expose
class Exclusao(object):
    def __init__(self):
        self.nome = 'Exclusao'
      
          
    def concorrer(self, id, rc, cont, uri):
        message = id + " " + rc + " " + cont + " " + uri
        # if not lista:
        
        lista.append(message.split())
        lista_ordenada = sorted(lista, key = lambda x: int(x[2]))
        print("lista_ordenada"+str(lista_ordenada))
        return "Mensagem enviada: "+message
        
    def lista(self):
        return lista_ordenada


def enviar_mensagem():
    time.sleep(15)
    
    while True:
        try:
            if lista_ordenada:
                print(lista_ordenada)
                barbeiro = Pyro5.api.Proxy(uri_barbeiro)
                resposta = barbeiro.trabalhar(lista_ordenada[0][0], lista_ordenada[0][1], lista_ordenada[0][2], lista_ordenada[0][3])
                lista_ordenada.pop(0)
                print(resposta)
        except Exception as e:
            print(e)
        

daemon = Pyro5.api.Daemon()  # make a Pyro daemon
uri = daemon.register(Exclusao)  # register as a Pyro object

print("Ready. Object uri Exclusao = ", uri)  # print the uri so we can use it in the client later

uri_barbeiro = input("What is the Pyro uri = ").strip()
barbeiro = Pyro5.api.Proxy(uri_barbeiro)     # get a Pyro proxy to the greeting object

thread1 = threading.Thread(target=daemon.requestLoop, args=())
thread2 = threading.Thread(target=enviar_mensagem, args=())

# ligar threads
thread1.start()
thread2.start()
thread1.join()
thread2.join()


