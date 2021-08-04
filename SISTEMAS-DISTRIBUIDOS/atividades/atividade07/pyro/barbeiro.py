
import threading
import Pyro5.api
import time

lista = [] 

@Pyro5.server.expose
class Barbeiro(object):
    def __init__(self):
        self.nome = 'Barbeiro'
          
    def cortarCabelo(self, uri):
        print("{} cortando cabelo".format(uri))
        time.sleep(5)
        print("{} acabou de cortar o cabelo".format(uri))
        lista.pop(0)

    def cortarBarba(self, uri):
        print("{} cortando barba".format(uri))
        time.sleep(4)
        print("{} acabou de cortar a barba".format(uri))
        lista.pop(0)
    
    def cortarBigode(self, uri):
        print("{} cortando bigode".format(uri))
        time.sleep(3)
        print("{} acabou de cortar o bigode".format(uri))
        lista.pop(0)

    def trabalhar(self, id, rc, cont, uri):
        message = id + " " + rc + " " + cont + " " + uri
        if not lista:
            lista.append(message.split())
            metodo = lista[0][1]
            print(message)
            if metodo == 'Cabelo':
                self.cortarCabelo(lista[0][3])
            elif metodo == 'Barba':
                self.cortarBarba(lista[0][3])
            elif metodo == 'Bigode':
                self.cortarBigode(lista[0][3])
            else:
                print("Metodo nao existente")

        return 'Barbeiro livre novamente!!!'    

daemon = Pyro5.api.Daemon()  # make a Pyro daemon
uri = daemon.register(Barbeiro)  # register as a Pyro object

print("Ready. Object uri Barbeiro = ", uri)  # print the uri so we can use it in the client later

thread1 = threading.Thread(target=daemon.requestLoop, args=())

# ligar threads
thread1.start()
thread1.join()


