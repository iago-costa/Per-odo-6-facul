 
import sys, struct
from socket import *
serverName = '225.0.0.3'
serverPort = 9000
clientSocket = socket(AF_INET, SOCK_DGRAM)
clientSocket.setsockopt(SOL_SOCKET, SO_REUSEADDR, 1)

# bind udp port
clientSocket.bind(('', serverPort))

# set mcast group
mreq = struct.pack('4sl', inet_aton(serverName), INADDR_ANY)
clientSocket.setsockopt(IPPROTO_IP, IP_ADD_MEMBERSHIP, mreq)

print("running server: "+serverName+" "+str(serverPort))

try:
    while 1:
        data, addr = clientSocket.recvfrom(1024)
        # print(str(len(data))+" bytes from: "+str(data)+" "+addr)
        print(data)
except KeyboardInterrupt:
    print('done')
    sys.exit(0)
