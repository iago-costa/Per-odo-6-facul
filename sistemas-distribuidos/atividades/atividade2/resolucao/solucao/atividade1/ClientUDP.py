import threading

from socket import *
serverName = '127.0.0.1'
serverPort = 9000
clientSocket = socket(AF_INET, SOCK_DGRAM)
clientSocket.connect((serverName, serverPort))


def main(mensagem,cliente):
    mensagem = mensagem.split(",")
    # print(mensagem)
    try:
        for i in mensagem:
            # sentence = input("Input lowercase sentence: ")
            clientSocket.send((str(i)+";"+cliente).encode())
            modifiedSentence = clientSocket.recv(1024)
            print("Vindo do servidor", modifiedSentence.decode())

    except Exception as e:        
        print(" ")
    # clientSocket.close()

if __name__ == '__main__':
    pessoa1 = threading.Thread(target=main, args=["1;4;VVFF,1;4;VVFV,1;5;VVVFV,1;4;FFFV,1;4;VVFV","cicrano"])
    pessoa2 = threading.Thread(target=main, args=["1;4;VFFF,1;4;FFFF,1;5;FVVFF,1;4;VVVV,1;4;VVFV","fulano"])
    pessoa3 = threading.Thread(target=main, args=["1;4;VVFV,1;4;VFFF,1;5;FFFFF,1;4;VVFV,1;4;FVFV","fulano de tal"])
    
    pessoa1.start()
    pessoa2.start()
    pessoa3.start()


