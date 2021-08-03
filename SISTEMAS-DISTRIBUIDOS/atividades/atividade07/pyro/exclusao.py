# saved as greeting-server.py
import threading
import Pyro5.api
import time
import Pyro5.server
import Pyro5.core

# faça uma classe barbeiro
# metodo cortarCabelo com sleep de 5 segundos
# metodo cortarBarba com sleep de 4 segundos
# metodo cortarBigode com sleep de 3 segundos

lista = [] 
barbeiro_ocupado = []

@Pyro5.server.expose
class Exclusao(object):
    def __init__(self):
        self.nome = 'Exclusao'
        # criar metodo cortarCabelo com sleep de 5 segundos
          
    def concorrer(self, id, rc, cont, uri):
        message = id + " " + rc + " " + cont + " " + uri
        # if not lista:
        lista.append(message.split())
        print(message)
        return "Mensagem enviada: "+"\n"+message

    def lista(self):
        return lista


def enviar_mensagem():
    time.sleep(15)
    
    print(lista)

    while True:
        try:
            if lista:
                barbeiro = Pyro5.api.Proxy(uri_barbeiro)
                resposta = barbeiro.trabalhar(lista[0][0], lista[0][1], lista[0][2], lista[0][3])
                lista.pop(0)
                print(resposta)
        except Exception as e:
            print(e)
        

daemon = Pyro5.api.Daemon()  # make a Pyro daemon
uri = daemon.register(Exclusao)  # register as a Pyro object

print("Ready. Object uri Exclusao = ", uri)  # print the uri so we can use it in the client later

uri_barbeiro = input("What is the Pyro uri = ").strip()
barbeiro = Pyro5.api.Proxy(uri_barbeiro)     # get a Pyro proxy to the greeting object

# criar duas threads
thread1 = threading.Thread(target=daemon.requestLoop, args=())
thread2 = threading.Thread(target=enviar_mensagem, args=())

# ligar threads
thread1.start()
thread2.start()
thread1.join()
thread2.join()


