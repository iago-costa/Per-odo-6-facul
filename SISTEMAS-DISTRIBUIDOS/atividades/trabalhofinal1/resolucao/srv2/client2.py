# https://cryptography.io/en/latest/hazmat/primitives/asymmetric/rsa/

from socket import *
import struct

from datetime import datetime

data_e_hora_atuais = datetime.now()
data_e_hora_em_texto = data_e_hora_atuais.strftime('%d/%m/%Y %H:%M')

serverName = '225.0.0.2'
serverPort = 9000
clientSocket = socket(AF_INET, SOCK_DGRAM)


from cryptography.hazmat.primitives.asymmetric import rsa
from cryptography.hazmat.primitives import serialization
from cryptography.hazmat.primitives.asymmetric import padding
from cryptography.hazmat.primitives import hashes

clientSocket.settimeout(2)

private_key = rsa.generate_private_key(
    public_exponent=65537,
    key_size=2048,
)
# print(key.size_in_bytes)
public_key = private_key.public_key()
private_bytes_key = private_key.private_bytes(
    encoding=serialization.Encoding.PEM,
    format=serialization.PrivateFormat.PKCS8,
    encryption_algorithm=serialization.BestAvailableEncryption(b'3322'))
public_bytes_key = public_key.public_bytes(
    encoding=serialization.Encoding.PEM,
    format=serialization.PublicFormat.SubjectPublicKeyInfo)

arq = open('par2_pri_key.pem', 'wb')
arq.write(private_bytes_key)
arq.close()

print("sending public key - " + data_e_hora_em_texto)
clientSocket.sendto("pub_key".encode(), (serverName, serverPort))
clientSocket.sendto("par2_pub_key".encode(), (serverName, serverPort))
# print(public_key.encrypt(b"linha do tempo", padding.OAEP( mgf=padding.MGF1(algorithm=hashes.SHA256()), algorithm=hashes.SHA256(), label=None)))

clientSocket.sendto(public_bytes_key, (serverName, serverPort))
print("------------ connection closed public key sent - " +
      data_e_hora_em_texto)

while 1:

    sentence = input('Digite o nome do comando:')

    if (sentence == "ping"):
        clientSocket.sendto(sentence.encode(), (serverName, serverPort))
        # try:

        #     dados, addr = clientSocket.recvfrom(2048)
        # except:
        #     break
        # print(dados, addr)

        while 1:
            try:
                dados, addr = clientSocket.recvfrom(2048)
                print(dados, addr)
            except:
                break
            if not dados:
                break

        print("------------ connection closed pong - " + data_e_hora_em_texto)

    if (sentence == "file"):
        clientSocket.sendto(sentence.encode(), (serverName, serverPort))

        nomeArquivo = input('Digite o nome do arquivo:')

        clientSocket.sendto(nomeArquivo.encode(), (serverName, serverPort))

        while 1:
            try:
                dados, addr = clientSocket.recvfrom(2048)
                print(dados, addr)
            except:
                break
            if not dados:
                break
        sentence = input(
            'Confirme de qual endereço (processo) deseja receber o arquivo? (mande id do par escolhido e o seu id de par ex. 2 1)'
        )
        clientSocket.sendto(sentence.encode(), (serverName, serverPort))
        arq = open(nomeArquivo + '.txt', 'w')
        l = 0
        while 1:
            try:
                dados, addr = clientSocket.recvfrom(2048)
                cipher_linha = dados
                # print("linha " + str(l) + ": " + str(cipher_linha))
                password = b'3322'
                with open("par2_pri_key.pem", "rb") as key_file:
                    private_key = serialization.load_pem_private_key(
                        key_file.read(),
                        password=password,
                    )
                plaintext = private_key.decrypt(
                    cipher_linha,
                    padding.OAEP(
                        mgf=padding.MGF1(algorithm=hashes.SHA256()),
                        algorithm=hashes.SHA256(),
                        label=None
                    )
                )
                l += 1
                print("linha " + str(l) + ": " + plaintext.decode('utf-8'))
                arq.write(plaintext.decode('utf-8'))
            except Exception as e:
                print(e)
                if(e == 'timed out'):
                    print("------------ connection closed file received - " +
                    data_e_hora_em_texto)
                else:    
                    print("------------ connection closed file not received - " +
                        data_e_hora_em_texto)

                arq.close()
                break
            if not dados:
                print("------------ connection closed file received - " +
                    data_e_hora_em_texto)

                arq.close()
                break

