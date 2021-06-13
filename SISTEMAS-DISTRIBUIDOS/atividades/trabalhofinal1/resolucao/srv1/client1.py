from socket import *
import struct
serverName = '225.0.0.1'
serverPort = 9000
clientSocket = socket(AF_INET, SOCK_DGRAM)

# Set the time-to-live for messages to 1 so they do not go past the
# local network segment.
# ttl = struct.pack('b', 1)
# clientSocket.setsockopt(socket.IPPROTO_IP, socket.IP_MULTICAST_TTL, ttl)

# clientSocket.connect((serverName, serverPort))

# sentence = input("Input lowercase sentence: ")

# while 1:
#     # clientSocket.connect((serverName, serverPort))
#     # dados = clientSocket.recv(1024)
#     sentence = input('Digite a mensagem: ')
#     clientSocket.sendto(sentence.encode(),(serverName, serverPort))
#     modifiedSentence = clientSocket.recv(1024)
#     print("Vindo do servidor", modifiedSentence.decode())
#     clientSocket.close()


# modifiedSentence = clientSocket.recv(1024)

clientSocket.settimeout(2)

while 1:

    sentence = input('Digite o nome do comando:')
    if (sentence == "ping"):
        clientSocket.sendto(sentence.encode(),(serverName, serverPort))
        # try:

        #     dados, addr = clientSocket.recvfrom(1024)
        # except:
        #     break
        # print(dados, addr)

        while 1:
            try:
                dados, addr = clientSocket.recvfrom(1024)
                print(dados, addr)
            except:
                break
            if not dados:
                break

        print("------------ connection closed pong")

    if(sentence == "file"):
        nomeArquivo = input('Digite o nome do arquivo:')
        
        clientSocket.sendto(nomeArquivo.encode(),(serverName, serverPort))
        # try:
        #     dados, addr = clientSocket.recvfrom(1024)
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
        #         dados, addr = clientSocket.recvfrom(1024)
        #     except:
        #         break
        # arq.close()

        while 1:
            try:
                dados, addr = clientSocket.recvfrom(1024)
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
                dados, addr = clientSocket.recvfrom(1024)                
                l += 1
                print("linha "+str(l)+": "+dados.decode())
                arq.write(dados.decode())
            except:
                arq.close()
                break
            if not dados:
                arq.close()
                break

        print("------------ connection closed file received")

