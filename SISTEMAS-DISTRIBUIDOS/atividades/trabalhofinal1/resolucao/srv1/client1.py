from socket import *
import struct

from datetime import datetime
data_e_hora_atuais = datetime.now()
data_e_hora_em_texto = data_e_hora_atuais.strftime('%d/%m/%Y %H:%M')

serverName = '225.0.0.1'
serverPort = 9000
clientSocket = socket(AF_INET, SOCK_DGRAM)

from Crypto.PublicKey import RSA

# from Crypto.Util.randpool import RandomPool

# texto = "texto a encriptar"

# Você deve usar a melhor fonte de dados aleatórios que tiver à
# disposição. Pra manter o exemplo mais portável, usaremos o
# RandomPool do próprio PyCrypto:

# pool = RandomPool(384)
# pool.stir()
 
# randfunc(n) deve retornar uma string de dados aleatórios de
# comprimento n, no caso de RandomPool, o método get_bytes
# randfunc = pool.get_bytes
 
# Se tiver uma fonte segura (como /dev/urandom em sistemas unix), ela
# deve ser usada ao invés de RandomPool
 
# pool = open("/dev/urandom")
# randfunc = pool.read

# Tamanho da chave, em bits
# N = 256

# O algoritmo RSA usado aqui não utiliza K, que pode ser uma string
# nula.
# K = ""

# Geramos a chave (contendo a chave pública e privada):
# key = RSA.generate(N, randfunc)

# Criptografamos o texto com a chave:
# enc = key.encrypt(texto, K)

# Podemos decriptografar usando a chave:
# dec = key.decrypt(enc)

# Separando apenas a chave pública:
# pub_key = key.publickey()

# Criptografando com a chave pública:
# enc = pub_key.encrypt(texto, K)

# Decriptografando com a chave privada:
# dec = key.decrypt(enc)

# As informações da chave são compostas de seis atributos: 'n', 'e',
# 'd', 'p', 'q' e 'u'. Se quiser armazenar ou enviar uma chave você
# pode usar pickle ou simplesmente usar esses atributos com o método
# construct. Por exemplo:
 
# Os atributos 'n' e 'e' correspondem à chave pública:
# n, e = key.n, key.e

# E recriamos a chave pública com esses dados:
# pub_key = RSA.construct((n, e))


# Set the time-to-live for messages to 1 so they do not go past the
# local network segment.
# ttl = struct.pack('b', 1)
# clientSocket.setsockopt(socket.IPPROTO_IP, socket.IP_MULTICAST_TTL, ttl)

# clientSocket.connect((serverName, serverPort))

# sentence = input("Input lowercase sentence: ")

# while 1:
#     # clientSocket.connect((serverName, serverPort))
#     # dados = clientSocket.recv(2048)
#     sentence = input('Digite a mensagem: ')
#     clientSocket.sendto(sentence.encode(),(serverName, serverPort))
#     modifiedSentence = clientSocket.recv(2048)
#     print("Vindo do servidor", modifiedSentence.decode())
#     clientSocket.close()


# modifiedSentence = clientSocket.recv(2048)

clientSocket.settimeout(2)

N = 1024
K = ""
key = RSA.generate(N)
# print(key.size_in_bytes)

while 1:


    # arq = open('client1_pri_key.key', 'w')
    # arq.write(str(key))
    # arq.close()
    print("sending public key - " + data_e_hora_em_texto)
    clientSocket.sendto("pub_key".encode(),(serverName, serverPort))
    clientSocket.sendto("client1_pub_key".encode(),(serverName, serverPort))
    print(key.encrypt("linha do tempo", K))
    n, e = key.n, key.e   
    clientSocket.sendto(str((n, e)).encode(),(serverName, serverPort))
    print("------------ connection closed public key sent - " + data_e_hora_em_texto)
    
    sentence = input('Digite o nome do comando:')
    if (sentence == "ping"):
        clientSocket.sendto(sentence.encode(),(serverName, serverPort))
        # try:

        #     dados, addr = clientSocket.recvfrom(2048)
        # except:
        #     break
        # print(dados, addr)

        while 1:
            try:
                dados, addr = clientSocket.recvfrom(2048)
                print(dados, addr)
            except:
                break
            if not dados:
                break

        print("------------ connection closed pong - "+data_e_hora_em_texto)

    if(sentence == "file"):
        clientSocket.sendto(sentence.encode(),(serverName, serverPort))

        nomeArquivo = input('Digite o nome do arquivo:')
        
        clientSocket.sendto(nomeArquivo.encode(),(serverName, serverPort))
        # try:
        #     dados, addr = clientSocket.recvfrom(2048)
        # except:
        #     break
        # print(dados, addr)
        # arq = open(sentence+'.txt', 'w')
        # l = 0

        # while dados:
        #     # sleep(1)
        #     print("linha "+str(l)+": "+dados.decode())
        #     l += 1
        #     if not dados:
        #         break
        #         arq.close()
        #     # clientSocket.close()
        #     arq.write(dados.decode())
        #     try:
        #         dados, addr = clientSocket.recvfrom(2048)
        #     except:
        #         break
        # arq.close()

        while 1:
            try:
                dados, addr = clientSocket.recvfrom(2048)
                print(dados, addr)
            except:
                break
            if not dados:
                break
        sentence = input('Confirme de qual endereço (processo) deseja receber o arquivo? (mande o endereco)')
        clientSocket.sendto(sentence.encode(),(serverName, serverPort))
        arq = open(nomeArquivo+'.txt', 'w')
        l = 0
        while 1:
            try:
                dados, addr = clientSocket.recvfrom(2048)                
                l += 1
                print("linha "+str(l)+": "+dados.decode())
                arq.write(dados.decode())
            except:
                arq.close()
                break
            if not dados:
                arq.close()
                break

        print("------------ connection closed file received - "+data_e_hora_em_texto)

