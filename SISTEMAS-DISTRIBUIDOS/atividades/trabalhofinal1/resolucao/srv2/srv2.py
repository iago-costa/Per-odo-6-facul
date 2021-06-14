 
import sys, struct, socket
from Crypto.PublicKey import RSA

from datetime import datetime
data_e_hora_atuais = datetime.now()
data_e_hora_em_texto = data_e_hora_atuais.strftime('%d/%m/%Y %H:%M')

from cryptography.hazmat.primitives import serialization
from cryptography.hazmat.primitives.asymmetric import padding
from cryptography.hazmat.primitives import hashes

serverName = '225.0.0.2'
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
nomeArquivoKeyPublic = ""

try:
    while 1:
        
        data, addr = serverSocket.recvfrom(4096)
        if(data.decode() == "pub_key"):
            client, addr = serverSocket.recvfrom(4096)
            nomeArquivoKeyPublic = client.decode()
            try:
                arq = open(nomeArquivoKeyPublic+'.pem', 'wb')
                data, addr = serverSocket.recvfrom(4096)
                # print(data.decode()+" - "+data_e_hora_em_texto)
                arq.write(data)
                arq.close()
                print("recebido pub_key - "+nomeArquivoKeyPublic+" - "+data_e_hora_em_texto)

                # with open(nomeArquivoKeyPublic+'.pem', 'rb') as key_file:
                #     public_key = serialization.load_pem_public_key(key_file.read())
                # messsage = b"linha do tempo"

                # cipher_text = public_key.encrypt(messsage, padding.OAEP( mgf=padding.MGF1(algorithm=hashes.SHA256()), algorithm=hashes.SHA256(), label=None))
                # print(cipher_text)

                # messageDecrypt = public_key.decrypt(cipher_text, padding.OAEP( mgf=padding.MGF1(algorithm=hashes.SHA256()), algorithm=hashes.SHA256(), label=None))
                # print(messageDecrypt)
                # print("------------------------------ fim do try das chaves")

            except Exception as e:
                print(e)
                # serverSocket.sendto("Arquivo inexistente from 225.0.0.2".encode(),('',addr[1]))
                arq.close()

        if(data.decode() == "ping"):
            print("ping recebido - "+data_e_hora_em_texto)

            serverSocket.sendto("pong from 225.0.0.2".encode(),('',addr[1]))
            
        else:
            try:
                arq = open(data.decode()+'.txt', 'r')
                serverSocket.sendto("file disponivel from 225.0.0.2 id=2".encode(),('',addr[1]))
                
                data, addr = serverSocket.recvfrom(4096)
                r = data.decode().split()
                # print(r)
                if(r[0] == "2"):                    
                    
                    with open('par'+r[1]+'_pub_key.pem', 'rb') as key_file:
                        public_key = serialization.load_pem_public_key(key_file.read())
                    
                    print("arquivo enviado - "+data_e_hora_em_texto)

                    for i in arq.readlines():
                        cipher_text = public_key.encrypt(bytes(i, encoding = "utf-8"), padding.OAEP( mgf=padding.MGF1(algorithm=hashes.SHA256()), algorithm=hashes.SHA256(), label=None))
                        serverSocket.sendto(cipher_text,('',addr[1]))
                    arq.close()
                    print("arquivo enviado - "+data_e_hora_em_texto)

                arq.close()

            except Exception as e:
                print(e)
                serverSocket.sendto("Arquivo inexistente from 225.0.0.2".encode(),('',addr[1]))
                arq.close()

except KeyboardInterrupt:
    print('done')
    sys.exit(0)

