 
import sys, struct
from socket import *
serverName = '225.0.0.2'
serverPort = 9000
serverSocket = socket(AF_INET, SOCK_DGRAM)
serverSocket.setsockopt(SOL_SOCKET, SO_REUSEADDR, 1)

# bind udp port
serverSocket.bind(('', serverPort))

# set mcast group
mreq = struct.pack('4sl', inet_aton(serverName), INADDR_ANY)
serverSocket.setsockopt(IPPROTO_IP, IP_ADD_MEMBERSHIP, mreq)

print("running server: "+serverName+":"+str(serverPort))

# try:
#     while 1:
#         data, addr = serverSocket.recvfrom(1024)
#         # print(str(len(data))+" bytes from: "+str(data)+" "+addr)
#         print(data, addr)
#         serverSocket.sendto(data, ('',addr[1]))


# except KeyboardInterrupt:
#     print('done')
#     sys.exit(0)

try:
    while 1:
     
        data, addr = serverSocket.recvfrom(1024)
        if(data.decode() == "ping"):
            print("ping recebido")

            serverSocket.sendto("pong from 225.0.0.2".encode(),('',addr[1]))
            
        else:
            try:
                arq = open(data.decode()+'.txt', 'r')
                serverSocket.sendto("file disponivel from 225.0.0.2".encode(),('',addr[1]))
                data, addr = serverSocket.recvfrom(1024)

                if(data.decode() == "225.0.0.2"):                    
                    for i in arq.readlines():
                        serverSocket.sendto(i.encode(),('',addr[1]))
                    arq.close()
                arq.close()

            except Exception as e:
                print(e)
                serverSocket.sendto("Arquivo inexistente from 225.0.0.2".encode(),('',addr[1]))
                arq.close()

except KeyboardInterrupt:
    print('done')
    sys.exit(0)

