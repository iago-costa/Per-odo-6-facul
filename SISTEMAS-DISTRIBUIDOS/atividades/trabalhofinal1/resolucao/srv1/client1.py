from socket import *
import struct

from datetime import datetime

data_e_hora_atuais = datetime.now()
data_e_hora_em_texto = data_e_hora_atuais.strftime('%d/%m/%Y %H:%M')

serverName = '225.0.0.1'
serverPort = 9000
clientSocket = socket(AF_INET, SOCK_DGRAM)

# from Crypto.PublicKey import RSA
from cryptography.hazmat.primitives.asymmetric import rsa
from cryptography.hazmat.primitives import serialization
from cryptography.hazmat.primitives.asymmetric import padding
from cryptography.hazmat.primitives import hashes

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

# N = 1024
# K = ""
# key = RSA.generate(N)

private_key = rsa.generate_private_key(
    public_exponent=65537,
    key_size=2048,
)
# print(key.size_in_bytes)
public_key = private_key.public_key()
private_bytes_key = private_key.private_bytes(
    encoding=serialization.Encoding.PEM,
    format=serialization.PrivateFormat.PKCS8,
    encryption_algorithm=serialization.BestAvailableEncryption(b'3321'))
public_bytes_key = public_key.public_bytes(
    encoding=serialization.Encoding.PEM,
    format=serialization.PublicFormat.SubjectPublicKeyInfo)

arq = open('.pem', 'wb')
arq.write(private_bytes_key)
arq.close()

print("sending public key - " + data_e_hora_em_texto)
clientSocket.sendto("pub_key".encode(), (serverName, serverPort))
clientSocket.sendto("client1_pub_key".encode(), (serverName, serverPort))
# print(public_key.encrypt(b"linha do tempo", padding.OAEP( mgf=padding.MGF1(algorithm=hashes.SHA256()), algorithm=hashes.SHA256(), label=None)))

clientSocket.sendto(public_bytes_key, (serverName, serverPort))
print("------------ connection closed public key sent - " +
      data_e_hora_em_texto)

while 1:

    sentence = input('Digite o nome do comando:')
    
    if (sentence == "ping"):
        clientSocket.sendto(sentence.encode(), (serverName, serverPort))
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

        print("------------ connection closed pong - " + data_e_hora_em_texto)

    if (sentence == "file"):
        clientSocket.sendto(sentence.encode(), (serverName, serverPort))

        nomeArquivo = input('Digite o nome do arquivo:')

        clientSocket.sendto(nomeArquivo.encode(), (serverName, serverPort))
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
        sentence = input(
            'Confirme de qual endereço (processo) deseja receber o arquivo? (mande o endereco)'
        )
        clientSocket.sendto(sentence.encode(), (serverName, serverPort))
        arq = open(nomeArquivo + '.txt', 'w')
        l = 0
        while 1:
            try:
                dados, addr = clientSocket.recvfrom(2048)
                l += 1
                print("linha " + str(l) + ": " + dados.decode())
                arq.write(dados.decode())
            except:
                arq.close()
                break
            if not dados:
                arq.close()
                break

        print("------------ connection closed file received - " +
              data_e_hora_em_texto)
