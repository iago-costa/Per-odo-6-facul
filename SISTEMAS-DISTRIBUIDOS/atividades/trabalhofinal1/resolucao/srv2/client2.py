from socket import *
serverName = '225.0.0.2'
serverPort = 9000
clientSocket = socket(AF_INET, SOCK_DGRAM)
clientSocket.connect((serverName, serverPort))

        
# sentence = input("Input lowercase sentence: ")

while 1:
    # dados = clientSocket.recv(1024)
    sentence = input('Digite a mensagem: ')
    clientSocket.send(sentence.encode())
    modifiedSentence = clientSocket.recv(1024)
    print("Vindo do servidor", modifiedSentence.decode())
