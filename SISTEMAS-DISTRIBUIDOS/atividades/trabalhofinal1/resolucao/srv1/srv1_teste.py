import threading
import sys, struct, socket
# from socket import *
serverName = '225.0.0.1'
serverPort = 9000

serverSocket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
serverSocket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)

# bind udp port
serverSocket.bind(('', serverPort))


# set mcast group
mreq = struct.pack('4sl', socket.inet_aton(serverName), socket.INADDR_ANY)
serverSocket.setsockopt(socket.IPPROTO_IP, socket.IP_ADD_MEMBERSHIP, mreq)


clientSocket = socket(socket.AF_INET, socket.SOCK_DGRAM)
clientSocket.connect((serverName, serverPort))

ativacao = 0

def ServerSocket(serverName, serverPort):


    # print("running server: "+serverName+" "+serverPort)
    try:
        data, addr = serverSocket.recvfrom(1024)
        # print(str(len(data))+" bytes from: "+str(data)+" "+addr) 
        print(data)
    except KeyboardInterrupt:
        print('done')
        sys.exit(0)

def ClientSocket(serverName, serverPort):

    # dados = clientSocket.recv(1024)
    sentence = input('Digite a mensagem: ')
    clientSocket.send(sentence.encode())
    modifiedSentence = clientSocket.recv(1024)
    print("Vindo do servidor", modifiedSentence.decode())

if __name__ == '__main__':
    Server = threading.Thread(target=ServerSocket, args=[serverName, serverPort])
    Server.start()
    while 1:
        
        if():
            Client = threading.Thread(target=ClientSocket, args=[serverName, serverPort])
            Client.start()
        else:
            Server = threading.Thread(target=ServerSocket, args=[serverName, serverPort])
            Server.start()


