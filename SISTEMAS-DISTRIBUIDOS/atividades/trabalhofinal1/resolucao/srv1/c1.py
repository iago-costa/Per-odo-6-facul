# https://cryptography.io/en/latest/hazmat/primitives/asymmetric/rsa/

import sys

# importando tudo da biblioteca sockets
from socket import *

#scripts extras para data
from datetime import datetime


# definindo nome do servidor para conectar
serverName = '225.0.0.1'

# definindo porta para comunicação udp
serverPort = 9000

#configurado socket udp para o cliente do par
clientSocket = socket(AF_INET, SOCK_DGRAM)

# importações necessárias para criptografia RSA e geração de chaves
# públicas e privadas
from cryptography.hazmat.primitives.asymmetric import rsa
from cryptography.hazmat.primitives import serialization
from cryptography.hazmat.primitives.asymmetric import padding
from cryptography.hazmat.primitives import hashes

# setando 2 segundos de espera para o socket
clientSocket.settimeout(2)

# clientSocket.connect((serverName, serverPort))

# Gerando a chave privada para esse par específico
private_key = rsa.generate_private_key(
    public_exponent=65537,
    key_size=2048,
)

# Gerando chave pública a partir da chave privada desse par
public_key = private_key.public_key()

# Convertendo a chave privada em bytes para salvar como arquivo .pem
private_bytes_key = private_key.private_bytes(
    encoding=serialization.Encoding.PEM,
    format=serialization.PrivateFormat.PKCS8,
    encryption_algorithm=serialization.BestAvailableEncryption(b'3321'))

# Convertendo a chave pública em bytes para envio 
public_bytes_key = public_key.public_bytes(
    encoding=serialization.Encoding.PEM,
    format=serialization.PublicFormat.SubjectPublicKeyInfo)

# Salvando chave privada em arquivo
arq = open('par1_pri_key.pem', 'wb')
arq.write(private_bytes_key)
arq.close()

# enviando e avisando sobre chave pública para os outros processos
data_e_hora_atuais = datetime.now()
data_e_hora_em_texto = data_e_hora_atuais.strftime('%d/%m/%Y %H:%M')
print("sending public key - " + data_e_hora_em_texto)
clientSocket.sendto("pub_key".encode(), (serverName, serverPort)) # avisando sobre o envio da chave pública
clientSocket.sendto("par1_pub_key".encode(), (serverName, serverPort)) # enviando o nome do par
clientSocket.sendto(public_bytes_key, (serverName, serverPort)) # enviando a chave em bytes
data_e_hora_atuais = datetime.now() 
data_e_hora_em_texto = data_e_hora_atuais.strftime('%d/%m/%Y %H:%M')
print("------------ connection closed public key sent - " +
      data_e_hora_em_texto)

try:
    # Loop infinito para realizar ping nos pares e solicitar arquivos para baixar
    while 1:

        # espera entrada para saber qual função vai ativar se é o ping ou file (para baixar arquivos)
        sentence = input('Digite o nome do comando:')

        # if que realiza o ping no multcast os pares conectados irão retornar pong
        if (sentence == "ping"):
            #envio da mensagem ping
            clientSocket.sendto(sentence.encode(), (serverName, serverPort))

            # while fica recebendo todos os envios de pong dos pares
            while 1:
                try:
                    dados, addr = clientSocket.recvfrom(2048) #recebe os valores
                    print(dados, addr) #printa na tela o pong recebido
                except:
                    break # se tiver alguma exceção ele finaliza o while
                if not dados:
                    break # se não tiver recebido mais dados ele também finaliza
            data_e_hora_atuais = datetime.now()
            data_e_hora_em_texto = data_e_hora_atuais.strftime('%d/%m/%Y %H:%M')
            print("------------ connection closed pong - " + data_e_hora_em_texto) #avisando a finalização do pong

        # if para opção para fazer download de algum arquivo dos pares conectados
        if (sentence == "file"):
            clientSocket.sendto(sentence.encode(), (serverName, serverPort)) # envia solicitação para os pares


            nomeArquivo = input('Digite o nome do arquivo:') # defini o nome do arquivo

            clientSocket.sendto(nomeArquivo.encode(), (serverName, serverPort)) # envia o nome do arquivo para os pares

            # while infinito que recebe todas as repostas dos pares
            while 1:
                try:
                    dados, addr = clientSocket.recvfrom(2048) # recebendo respostas
                    print(dados, addr) # imprimindo na tela os dados recebidos
                except:
                    break # se der execeção ele para
                if not dados:
                    break # se não tiver mais dados ele para o while
            
            #escolhendo de qual par receber o arquivo e o seu identificador de par
            sentence = input(
                'Confirme de qual endereço (processo) deseja receber o arquivo? (mande id do par escolhido e o seu id de par ex. 2 1)'
            )

            #Caso queira da exit na escolha do par ou nenhum par tenho arquivo desejado
            if(sentence == "e"):
                break

            #enviando escolha do par
            clientSocket.sendto(sentence.encode(), (serverName, serverPort))

            # abrindo arquivo para salvar os dados recebidos linha por linha 
            arq = open(nomeArquivo + '.txt', 'w')
            l = 0 #contador de linhas para o print

            password = b'3321' # senha para ler a chave privada

            #lendo a chave privada
            with open("par1_pri_key.pem", "rb") as key_file:
                private_key = serialization.load_pem_private_key(
                    key_file.read(),
                    password=password,
                )

            # while infinito para receber todas as linhas do arquivo que está baixando
            while 1:
                try:
                    dados, addr = clientSocket.recvfrom(2048) #recebimento dos dados
                    cipher_linha = dados # trocando de variável a linha criptografada
                    
                    # print("linha " + str(l) + ": " + str(cipher_linha))

                    # descriptografando a linha recebida com a chave privada do par
                    plaintext = private_key.decrypt(
                        cipher_linha,
                        padding.OAEP(
                            mgf=padding.MGF1(algorithm=hashes.SHA256()),
                            algorithm=hashes.SHA256(),
                            label=None
                        )
                    )
                    l += 1 # contando linha para o print
                    print("linha " + str(l) + ": " + plaintext.decode('utf-8'))
                    
                    # escrevendo linha no arquivo, uso do decode é por que a linha ainda está em bytes
                    arq.write(plaintext.decode('utf-8'))

                except Exception as e:
                    # esse if, é por que quando termina o envio completo de linhas ele dá timed-out 
                    # porém envia tudo e salva certo no arquivo
                    if str(e) == 'timed out': 
                        data_e_hora_atuais = datetime.now()
                        data_e_hora_em_texto = data_e_hora_atuais.strftime('%d/%m/%Y %H:%M')
                        print("------------ connection closed file received - " +
                        data_e_hora_em_texto)
                    
                    #qualquer outro tipo de execeção vai ser erro de envio
                    else:
                        print(e)
                        data_e_hora_atuais = datetime.now()
                        data_e_hora_em_texto = data_e_hora_atuais.strftime('%d/%m/%Y %H:%M')
                        print("------------ connection closed file not received - " +
                            data_e_hora_em_texto)

                    # fechamento do envio e finalização do while infinito
                    arq.close()
                    break

except KeyboardInterrupt:
    # caso clique control + c ele interrompe a execução do bind e finaliza o script
    # clientSocket.shutdown(1)
    print('done')
    sys.exit(0)

