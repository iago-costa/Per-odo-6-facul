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
class Barbeiro(object):
    def __init__(self):
        self.nome = 'Barbeiro'
        # criar metodo cortarCabelo com sleep de 5 segundos
          
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
                # barbeiro_ocupado.append("True")
                self.cortarCabelo(lista[0][3])
            elif metodo == 'Barba':
                # barbeiro_ocupado.append(True)
                self.cortarBarba(lista[0][3])
            elif metodo == 'Bigode':
                # barbeiro_ocupado.append(True)
                self.cortarBigode(lista[0][3])
            else:
                print("Metodo nao existente")

            # barbeiro_ocupado.pop(0)
            # barbeiro_ocupado.append("False")

        # if lista:    
        #     while lista:
        #         if barbeiro_ocupado != []:
        #             if barbeiro_ocupado[0] == True:
        #                 # print("Barbeiro está ocupado")
        #                 lista.append(message.split())
        #                 time.sleep(1)
        #             else:
        #                 lista.append(message.split())
        #                 metodo = lista[0][1]
        #                 print(message)
        #                 if metodo == 'Cabelo':
        #                     barbeiro_ocupado.append(True)
        #                     self.cortarCabelo(lista[0][3])
        #                 elif metodo == 'Barba':
        #                     barbeiro_ocupado.append(True)
        #                     self.cortarBarba(lista[0][3])
        #                 elif metodo == 'Bigode':
        #                     barbeiro_ocupado.append(True)
        #                     self.cortarBigode(lista[0][3])
        #                 else:
        #                     print("Metodo nao existente")
                        
        #                 barbeiro_ocupado.pop(0)
        #                 barbeiro_ocupado.append(False)
        #         else:
        #             lista.append(message.split())
        #             metodo = lista[0][1]
        #             print(message)
        #             if metodo == 'Cabelo':
        #                 barbeiro_ocupado.append(True)
        #                 self.cortarCabelo(lista[0][3])
        #             elif metodo == 'Barba':
        #                 barbeiro_ocupado.append(True)
        #                 self.cortarBarba(lista[0][3])
        #             elif metodo == 'Bigode':
        #                 barbeiro_ocupado.append(True)
        #                 self.cortarBigode(lista[0][3])
        #             else:
        #                 print("Metodo nao existente")
                    
        #             barbeiro_ocupado.pop(0)
        #             barbeiro_ocupado.append(False)
        return 'Barbeiro livre novamente!!!'    

    def concorrer(self, id, rc, cont, uri):
        message = id + " " + rc + " " + cont + " " + uri
        if not lista:
            lista.append(message.split())
            print(message)


    def lista(self):
        return lista


daemon = Pyro5.api.Daemon()  # make a Pyro daemon
uri = daemon.register(Barbeiro)  # register as a Pyro object

print("Ready. Object uri Barbeiro = ", uri)  # print the uri so we can use it in the client later

# criar duas threads
thread1 = threading.Thread(target=daemon.requestLoop, args=())

# ligar threads
thread1.start()
thread1.join()


