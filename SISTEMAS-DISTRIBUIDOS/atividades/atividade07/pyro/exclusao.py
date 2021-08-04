import threading
import Pyro5.api
import time
lista = []
lista_ordenada = [] 
@Pyro5.server.expose
class Exclusao(object):
    def __init__(self):
        self.nome = 'Exclusao'
    def concorrer(self, id, rc, cont, uri):
        message = id + " " + rc + " " + cont + " " + uri        
        lista.append(message.split())
        return "Mensagem enviada: "+message
def lista_ordenada(lista):
    return sorted(lista, key = lambda x: int(x[2]))
def enviar_mensagem():
    time.sleep(15)
    barbeiro = Pyro5.api.Proxy(uri_barbeiro)
    while True:
        try:
            time.sleep(1)
            if lista:
                lista_ordered = lista_ordenada(lista)
                resposta = barbeiro.trabalhar(lista_ordered[0][0], lista_ordered[0][1], lista_ordered[0][2], lista_ordered[0][3])
                lista.remove(lista_ordered[0])
                print("Tamanho da lista "+str(len(lista)))
                print(resposta)
            else:
                print("Lista vazia \n Barbeiro aguardando clientes!!!")
                time.sleep(5)
        except Exception as e:
            print(e)
daemon = Pyro5.api.Daemon()  # make a Pyro daemon
uri = daemon.register(Exclusao)  # register as a Pyro object
print("Ready. Object uri Exclusao = ", uri)  # print the uri so we can use it in the client later
uri_barbeiro = input("What is the Pyro uri = ").strip()
barbeiro = Pyro5.api.Proxy(uri_barbeiro)     # get a Pyro proxy to the greeting object
thread1 = threading.Thread(target=daemon.requestLoop, args=())
thread2 = threading.Thread(target=enviar_mensagem, args=())
thread1.start()
thread2.start()
thread1.join()
thread2.join()


