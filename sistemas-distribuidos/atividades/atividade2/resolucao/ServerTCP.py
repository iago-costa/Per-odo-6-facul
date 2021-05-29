# https://wiki.python.org.br/TransferirArquivosViaSockets
from socket import *

serverPort = 9005
serverSocket = socket(AF_INET, SOCK_STREAM)
serverSocket.bind(('', serverPort))
serverSocket.listen(5)
print('o servidor esta pronto')


while 1:
    connectionSocket, addr = serverSocket.accept()
    sentence = connectionSocket.recv(1024)
    try:
        arq = open(sentence.decode()+'.txt', 'r')
        for i in arq.readlines():
            connectionSocket.send(i.encode())
        arq.close()
    except Exception as e:
        print(e)
        connectionSocket.send("Arquivo inexistente".encode())
        # connectionSocket.close()
    connectionSocket.close()

 
