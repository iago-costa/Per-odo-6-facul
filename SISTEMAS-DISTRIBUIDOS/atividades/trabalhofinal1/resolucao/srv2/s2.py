#importação de bibliotecas para configuração de socket udp multicast
import sys, struct, socket
import json

from datetime import datetime

# importação de bibliotecas para geração de chaves públicas e privadas
from cryptography.hazmat.primitives import serialization
from cryptography.hazmat.primitives.asymmetric import padding
from cryptography.hazmat.primitives import hashes

# define o nome do server do par
serverName = '225.0.0.2'
#define a porta para conexão
serverPort = 9000

# configurando socket udp
serverSocket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

# Allow multiple sockets to use the same PORT number
serverSocket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)

# bind udp port
serverSocket.bind(('', serverPort))

# set mcast group
mreq = struct.pack('4sl', socket.inet_aton(serverName), socket.INADDR_ANY)
serverSocket.setsockopt(socket.IPPROTO_IP, socket.IP_ADD_MEMBERSHIP, mreq)

# imprimindo na tela o início do servidor do par
data_e_hora_atuais = datetime.now()
data_e_hora_em_texto = data_e_hora_atuais.strftime('%d/%m/%Y %H:%M')
print("running server: " + serverName + ":" + str(serverPort) + " - " +
      data_e_hora_em_texto)

nomeArquivoKeyPublic = ""

cont = {"escolhido": 0, "falhas": 0, "sucesso": 0}

# try e except para salvamento ou leitura do arquivo rel.txt que contém o histórico de cada par
try:
    with open('rel2.txt', 'r') as key_file:
        result = key_file.read()
except:
    with open('rel2.txt', 'w') as key_file:
        key_file.write(str(cont))

# try para while infinito que mantém o servidor do par online 
try:
    while 1:

        data, addr = serverSocket.recvfrom(4096)

        # opção de recebimento da chave pública
        if (data.decode() == "pub_key"):
            # recebe nome para chave publica
            client, addr = serverSocket.recvfrom(4096)
            # guarda nome para chave em uma variável
            nomeArquivoKeyPublic = client.decode()
            
            # try para salvar a chave pública
            try:
                
                # abrindo arquivo
                arq = open(nomeArquivoKeyPublic + '.pem', 'wb')
                data, addr = serverSocket.recvfrom(4096) # recebendo chave pública em bytes

                arq.write(data) # salvando chave pública em arquivo
                arq.close() # fechando arquivo

                # imprimindo recebimento de chave pública
                data_e_hora_atuais = datetime.now()
                data_e_hora_em_texto = data_e_hora_atuais.strftime(
                    '%d/%m/%Y %H:%M')
                print("recebido pub_key - " + nomeArquivoKeyPublic + " - " +
                      data_e_hora_em_texto)

            except Exception as e:
                print(e)
                arq.close()

        #opção de recebimento do ping
        if (data.decode() == "ping"):

            # imprimindo na tela o print recebido
            data_e_hora_atuais = datetime.now()
            data_e_hora_em_texto = data_e_hora_atuais.strftime(
                '%d/%m/%Y %H:%M')
            print("ping recebido - " + data_e_hora_em_texto)
            
            #enviando de volta o pong para o par que enviou o ping
            serverSocket.sendto("pong from 225.0.0.2".encode(), ('', addr[1]))

        # opção de recebimento do file
        if (data.decode() == "file"):
            try:

                # recebe o nome do arquivo para download
                data, addr = serverSocket.recvfrom(4096)

                #verifica se o par possui o arquivo 
                arq = open(data.decode() + '.txt', 'r')

                # se não der exceção o par possui o arquivo
                # abre o rel2.txt que possui a nota do par para downloads de arquivos 
                with open('rel2.txt', 'r') as key_file:
                    result = key_file.read()

                # concatenação de strings para retornar ao par externo que possui o arquivo para download
                conctResult = "file disponivel from 225.0.0.2 id=2 " + result

                # retorno da resposta
                serverSocket.sendto(conctResult.encode(), ('', addr[1]))

                # recebe para qual par deve enviar o download
                data, addr = serverSocket.recvfrom(4096)
                
                # separa em list a resposta
                r = data.decode().split(" ")

                # se o primeiro termo da lista for 2 ele continuar a execução para enviar o arquivo linha-a-linha
                if (r[0] == "2"):
                    result = result.replace("'", '"') # arruma a string para converter em dicionário
                    cont = json.loads(result) # transforma string para dicionário para manipulação
                    cont["escolhido"] += 1 # conta mais um para escolhido
                    
                    # tenta abrir a chave pública do par que solicitou o download,
                    # pegando o segundo argumento da lista,
                    # recebida.
                    try:

                        #realiza leitura da chave pública
                        with open('par' + r[1] + '_pub_key.pem',
                                  'rb') as key_file:
                            public_key = serialization.load_pem_public_key(
                                key_file.read())

                        # for para envio de linha por linha
                        for i in arq.readlines():

                            # criptografa cada linha antes de enviar com a chave pública do par que solicitou
                            cipher_text = public_key.encrypt(
                                bytes(i, encoding="utf-8"),
                                padding.OAEP(mgf=padding.MGF1(
                                    algorithm=hashes.SHA256()),
                                             algorithm=hashes.SHA256(),
                                             label=None))

                            #envia a mensagem criptograda
                            serverSocket.sendto(cipher_text, ('', addr[1]))

                        # após finalizar o for fecha o arquivo aberto
                        arq.close()

                        # imprimi na tela o envio do arquivo
                        data_e_hora_atuais = datetime.now()
                        data_e_hora_em_texto = data_e_hora_atuais.strftime(
                            '%d/%m/%Y %H:%M')
                        print("file sent - " + data_e_hora_em_texto)

                        cont["sucesso"] += 1 # conta mais para sucesso de envios
                        print(cont) # imprimi o contaador

                        #salva o contador no arquivo de relatório novamente
                        with open('rel2.txt', 'w') as key_file:
                            key_file.write(str(cont))

                    except Exception as e:
                        # imprimi na tela o erro e que o arquivo não foi enviado
                        print(e) 
                        data_e_hora_atuais = datetime.now()
                        data_e_hora_em_texto = data_e_hora_atuais.strftime(
                            '%d/%m/%Y %H:%M')
                        print("file not sent - " + data_e_hora_em_texto)
                        
                        cont["falhas"] += 1 # conta mais um como falha de envio
                        print(cont) # imprimi o contador

                        #salva o contador no arquivo de relatório novamente
                        with open('rel2.txt', 'w') as key_file:
                            key_file.write(str(cont))
                arq.close()

            except Exception as e:
                # se o aquivo não existir envia para o par a informação
                print(e)
                serverSocket.sendto(
                    "Arquivo inexistente from 225.0.0.2 ou Falha na conexao".
                    encode(), ('', addr[1]))
                

except KeyboardInterrupt:
    # caso clique control + c ele interrompe a execução do bind e finaliza o script
    print('done')
    sys.exit(0)
