from socket import *
serverName = '127.0.0.1'
serverPort = 9005

clientSocket = socket(AF_INET, SOCK_STREAM)
clientSocket.connect((serverName, serverPort))

sentence = input('Digite o nome do arquivo para baixar:')
clientSocket.send(sentence.encode())
modifiedSentence = clientSocket.recv(1024)
# arq = open('/home/backup/foo.tar.gz', 'w')
# while 1:
#     dados = conn.recv(1024)
#     if not dados:
#         break
#     arq.write(dados)
   
#     arq.close()
print('From Server:', modifiedSentence)
clientSocket.close()
