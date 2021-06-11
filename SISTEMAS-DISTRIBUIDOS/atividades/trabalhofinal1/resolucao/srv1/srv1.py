 
import sys, struct, socket
# from socket import *
serverName = '225.0.0.1'
serverPort = 9000
clientSocket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
clientSocket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)

# bind udp port
clientSocket.bind(('', serverPort))


# set mcast group
mreq = struct.pack('4sl', socket.inet_aton(serverName), socket.INADDR_ANY)
clientSocket.setsockopt(socket.IPPROTO_IP, socket.IP_ADD_MEMBERSHIP, mreq)

# print("running server: "+serverName+" "+serverPort)


try:
    while 1:
        data, addr = clientSocket.recvfrom(1024)
        # print(str(len(data))+" bytes from: "+str(data)+" "+addr) 
        print(data)
except KeyboardInterrupt:
    print('done')
    sys.exit(0)
