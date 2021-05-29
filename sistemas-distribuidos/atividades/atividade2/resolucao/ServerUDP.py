
from socket import *

def main():
    serverPort = 9000
    serverSocket = socket(AF_INET, SOCK_DGRAM)
    serverSocket.bind(('', serverPort))
    print("O servidor esta pronto")
    while 1:
        message, clientAddress = serverSocket.recvfrom(2048)
        message = message.decode().split(";")
        print("Vindo dos Cliente", (message[3]+": "+message[0]+";"+message[1]+";"+message[2]).encode())
        a = 0
        e = 0
        for i in message[2]:
            # print(i)
            if i == "F":
                e += 1
            if i == "V":
                a += 1

        # print(message)
        # if (message == ):

        modifiedMessage = (message[3]+": "+message[0]+";"+str(a)+";"+str(e)).encode()
        serverSocket.sendto(modifiedMessage, clientAddress)



if __name__ == '__main__':
    main()    