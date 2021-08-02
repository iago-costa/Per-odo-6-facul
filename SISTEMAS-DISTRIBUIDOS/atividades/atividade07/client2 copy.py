# faça um cliente pyro5 para enviar uma mensagem para o servidor
# Linguagem: Python 3

import random
import socket
import struct
import sys
import threading
import time

# # message = 'very important data'
# multicast_group = ('224.3.29.71', 10000)

# # Create the datagram socket
# sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

# # Set a timeout so the socket does not block indefinitely when trying
# # to receive data.
# sock.settimeout(0.2)

# # Set the time-to-live for messages to 1 so they do not go past the
# # local network segment.
# ttl = struct.pack('b', 1)
# sock.setsockopt(socket.IPPROTO_IP, socket.IP_MULTICAST_TTL, ttl)


# classe que representa o cliente
class Cliente:
    def __init__(self, nome):
        self.nome = nome
       

    def Concorrer(self, id, rc, cont, uri):
        message = id+' '+rc+' '+cont
        # try:
        #     # Send data to the multicast group
        #     print >>sys.stderr, 'sending "%s"' % message
        #     sent = sock.sendto(message, multicast_group)
            
        #     # Look for responses from all recipients
        #     while True:
        #         print >>sys.stderr, 'waiting to receive'
        #         try:
        #             data, server = sock.recvfrom(16)
        #         except socket.timeout:
        #             print >>sys.stderr, 'timed out, no more responses'
        #             break
        #         else:
        #             if data == 'ok':
        #                 print >>sys.stderr, 'received "%s" from %s' % (data, server)
        # finally:
        #     print >>sys.stderr, 'closing socket'
        #     sock.close()
        return message

import Pyro5.api



daemon = Pyro5.api.Daemon()        # make a Pyro daemon
uri_cliente = daemon.register(Cliente)    # register the greeting maker as a Pyro object
print("Ready. Object uri Cliente =", uri_cliente)       # print the uri so we can use it in the client later
# daemon.requestLoop()                    # start the event loop of the server to wait for calls





# for item in range(0, int(80)):
#     # variavel aleatoria de 0 a 4
#     variavel_aleatoria = random.randint(0, 4)
#     # recurso aleaotorio entre Cabelo, Barba e Bigode
#     recurso_aleatorio = random.randint(0, 2)
#     recurso = ''
#     if recurso_aleatorio == 0:
#         recurso = "Cabelo"
#     elif recurso_aleatorio == 1:
#         recurso = "Barba"
#     else:
#         recurso = "Bigode"
#     nome = 'Fulano'+str(variavel_aleatoria)
#     print(barbeiro.concorrer(nome, recurso, '1'))   # call method normally





def requisicoes():
    uri_barbeiro = input("What is the Pyro uri = ").strip()
    barbeiro = Pyro5.api.Proxy(uri_barbeiro)     # get a Pyro proxy to the greeting object
# while True:
    barbeiro.concorrer("Cliente1", 'Barba', '2', str(uri_cliente))
    lista_grupo_cliente = barbeiro.lista()
    print(lista_grupo_cliente)   # call method normally

    for i in range(0, len(lista_grupo_cliente)):
        if lista_grupo_cliente[i][3] == uri_cliente:
            break
        else:
            outros_clientes = Pyro5.api.Proxy(lista_grupo_cliente[i][3])     # get a Pyro proxy to the greeting object
            print(outros_clientes.concorrer("Cliente1", 'Barba', '2', str(uri_cliente)))   # call method normally
        print(lista_grupo_cliente[i][3])

    time.sleep(10)
    print(barbeiro.concorrer("Cliente1", 'Bigode', '2', str(uri_cliente)))   # call method normally
    time.sleep(10)
    print(barbeiro.concorrer("Cliente1", 'Cabelo', '2', str(uri_cliente)))   # call method normally


# criar duas threads
thread1 = threading.Thread(target=daemon.requestLoop, args=())
thread2 = threading.Thread(target=requisicoes, args=())

# ligar threads
thread1.start()
thread2.start()

# desligar threads
# thread1.join()
# thread2.join()


# print(barbeiro.concorrer("Fulano2", 'Barba', '2', uri))   # call method normally
# print(barbeiro.concorrer("Fulano3", 'Bigode', '3', uri))   # call method normally
# print(barbeiro.concorrer("Fulano4", 'Cabelo', '4', uri))   # call method normally
# print(barbeiro.concorrer(uri, 'Barba', '5'))   # call method normally
# print(barbeiro.concorrer(uri, 'Bigode', '6'))   # call method normally
# print(barbeiro.concorrer(uri, 'Cabelo', '7'))   # call method normally
# print(barbeiro.concorrer(uri, 'Barba', '8'))   # call method normally
# print(barbeiro.concorrer(uri, 'Bigode', '9'))   # call method normally

