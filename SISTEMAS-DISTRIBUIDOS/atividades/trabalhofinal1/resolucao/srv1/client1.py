from socket import *
serverName = '225.0.0.1'
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



# modifiedSentence = clientSocket.recv(1024)

while 1:
    clientSocket.connect((serverName, serverPort))

    sentence = input('Digite o nome do arquivo para baixar:')
    clientSocket.send(sentence.encode())

    arq = open(sentence+'.txt', 'w')
    l = 0
    while not dados:
        dados = clientSocket.recv(1024)
        # sleep(1)
        print("linha "+str(l)+": "+dados.decode())
        l += 1
        if not dados:
            # break
            arq.close()
        # clientSocket.close()
        arq.write(dados.decode())
   
# print('From Server:', modifiedSentence)
