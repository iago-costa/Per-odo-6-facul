 
import sys, struct, socket
from Crypto.PublicKey import RSA

from datetime import datetime
data_e_hora_atuais = datetime.now()
data_e_hora_em_texto = data_e_hora_atuais.strftime('%d/%m/%Y %H:%M')

serverName = '225.0.0.3'
serverPort = 9000

serverSocket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

# Allow multiple sockets to use the same PORT number
serverSocket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)

# bind udp port
serverSocket.bind(('', serverPort))

# set mcast group
mreq = struct.pack('4sl', socket.inet_aton(serverName), socket.INADDR_ANY)
serverSocket.setsockopt(socket.IPPROTO_IP, socket.IP_ADD_MEMBERSHIP, mreq)


print("running server: "+serverName+":"+str(serverPort)+" - "+data_e_hora_em_texto)

# try:
#     while 1:
#         data, addr = serverSocket.recvfrom(4096)
#         # print(str(len(data))+" bytes from: "+str(data)+" "+addr)
#         print(data, addr)
#         serverSocket.sendto(data, ('',addr[1]))

# except KeyboardInterrupt:
#     print('done')
#     sys.exit(0)

try:
    while 1:
        
        data, addr = serverSocket.recvfrom(4096)
        if(data.decode() == "pub_key"):
            client, addr = serverSocket.recvfrom(4096)
            try:
                arq = open(client.decode()+'.key', 'w')
                # while 
                data, addr = serverSocket.recvfrom(4096)
                pub_key = RSA.construct(data.decode())
                arq.write(pub_key)
                arq.close()
                print("recebido pub_key - "+client.decode()+" - "+data_e_hora_em_texto)

            except Exception as e:
                print(e)
                # serverSocket.sendto("Arquivo inexistente from 225.0.0.3".encode(),('',addr[1]))
                arq.close()

        if(data.decode() == "ping"):
            print("ping recebido - "+data_e_hora_em_texto)

            serverSocket.sendto("pong from 225.0.0.3".encode(),('',addr[1]))
            
        else:
            try:
                arq = open(data.decode()+'.txt', 'r')
                serverSocket.sendto("file disponivel from 225.0.0.3".encode(),('',addr[1]))
                
                data, addr = serverSocket.recvfrom(4096)

                if(data.decode() == "225.0.0.3"):                    
                    print("arquivo enviado - "+data_e_hora_em_texto)
                    for i in arq.readlines():
                        serverSocket.sendto(i.encode(),('',addr[1]))
                    arq.close()
                arq.close()

            except Exception as e:
                print(e)
                serverSocket.sendto("Arquivo inexistente from 225.0.0.3".encode(),('',addr[1]))
                arq.close()

except KeyboardInterrupt:
    print('done')
    sys.exit(0)

