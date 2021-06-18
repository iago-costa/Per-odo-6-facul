package udpmix;

import java.net.*;
import java.io.*;
import java.util.*;
import java.security.*;
import javax.crypto.Cipher;

/*Array que guarda informacao de usuarios na rede*/
class Conectadoss{
	
	private static Conectadoss instancia;
	public static Conectadoss getInstance() {
        if (instancia == null)
            instancia = new Conectadoss();
        return instancia;
    }
	
	public  ArrayList <String> teste = new ArrayList<String>();
	
	public int chave_tcp_global = 13268;
	
	public int chave_udp_global = 13;
	
	public String arquivo = "cavalo.png";
	
	public ArrayList<String> getTeste(){
		return teste;
	}
}

/*Criação da classe TCP para receber arquivo*/
class ThreadTcp implements Runnable{
	Conectadoss co = Conectadoss.getInstance();
	ServerSocket servsock = new ServerSocket(co.chave_tcp_global);
	
	ThreadTcp() throws IOException{
		
	}
	
	public void run() {
		try {
		while (true) {
			Socket sock = servsock.accept();
			
			// envia o arquivo (transforma em byte array)
			File myFile = new File (co.arquivo);
			
			byte [] mybytearray  = new byte [(int)myFile.length()];
			FileInputStream fis = new FileInputStream(myFile);
			BufferedInputStream bis = new BufferedInputStream(fis);
			bis.read(mybytearray,0,mybytearray.length);
			OutputStream os = sock.getOutputStream();
			System.out.println("Enviando...");
			os.write(mybytearray,0,mybytearray.length);
			os.flush();
			sock.close();
		      }
		} catch (SocketException e) {
            System.out.println("Erro de socket: " + e.getMessage());
        } catch (IOException e) {
            System.out.println("Erro envio/recepcao pacote: " + e.getMessage());         
        } finally {
           
        }
	}
	
}

class Decripta {
	public static String decriptografa(byte[] texto, PrivateKey chave) {
	    byte[] dectyptedText = null;
	    
	    try {
	      final Cipher cipher = Cipher.getInstance("RSA");
	      // Decriptografa o texto puro usando a chave Privada
	      cipher.init(Cipher.DECRYPT_MODE, chave);
	      dectyptedText = cipher.doFinal(texto);

	    } catch (Exception ex) {
	      ex.printStackTrace();
	    }
	    System.out.println(new String(dectyptedText));
	    return new String(dectyptedText);
	  }
}

/*Criação da classe do Servidor*/

class ThreadServidor implements Runnable {
	int porta;
	
	//Inicia o servidor na porta especificada
	
	ThreadServidor(int valor){
		this.porta = valor;
	}
	
	
	
	//Comandos que serao executados pelo servidor
	
	@Override
	public void run() {
		Thread thread = Thread.currentThread(); //pega a thread atual pra printar coisas e debuggar
		DatagramSocket s = null;
		Decripta des = new Decripta();
		try {
            //comandos para UDP servidor sozinho
			s = new DatagramSocket(porta); // cria um socket UDP na porta em portas aleatorias
            byte[] buffer = new byte[1000];
          
            //aplicação ta travando em 2 momentos 1 quando espera mensagem servidor e 2 quando espera multicast
    		while (true) {
    			
                // cria datagrama para recepcionar solicitação do cliente
                DatagramPacket req = new DatagramPacket(buffer, buffer.length);
                s.receive(req);
                
                System.out.println("Zap recebido: " + new String(req.getData(),0,req.getLength()));
                String descript = new String(req.getData(),0,req.getLength());
             
                DatagramPacket resp = new DatagramPacket(req.getData(), req.getLength(),
                        req.getAddress(), req.getPort());
                s.send(resp);
            }
            
        } catch (SocketException e) {
            System.out.println("Erro de socket: " + e.getMessage());
        } catch (IOException e) {
            System.out.println("Erro envio/recepcao pacote: " + e.getMessage());         
        } finally {
            if (s != null) s.close();
        }
	}
    
    }

//Essa classe cria uma thread só pra ficar aguardando mensagem no multicast
class ThreadMulticast implements Runnable{
	
	//Array que guarda usuario conectados na rede
	Conectadoss conectados = Conectadoss.getInstance();
	
	@Override
	public void run() {
		
		Thread thread = Thread.currentThread(); //pega a thread atual pra printar coisas e debuggar
		DatagramSocket s = null;
		
		try {
			byte[] buffe=new byte[1024];
			MulticastSocket socket = new MulticastSocket(4321);
			InetAddress group = InetAddress.getByName("230.0.0.0");
			socket.joinGroup(group);
			
			while(true) {
                
				//System.out.println("Aguardando por dados no multicast no usuario...");
    			
				DatagramPacket packet=new DatagramPacket(buffe, buffe.length);
    			socket.receive(packet);
    			String msg=new String(packet.getData(),
    			packet.getOffset(),packet.getLength());

    			System.out.println("");
    			System.out.println("Mensagem UDP multicast recebida: "+msg);
    			
    			/*
    			 * Tratamento de String para verificar o que fazer
    			 * com a mensagem recebida e guardar chaves publicas
    			 * ou privadas
    			 * no formato chave;se solicita arquivos;se saiu;chave publica
    			 * */
    			
    			// pegamos a msg com as informacoes passadas e iremos tratar ela
    			String novo_user = new String(packet.getData(),0,packet.getLength());
    			String[] verifica_info = novo_user.split(";");
    			
    			if(verifica_info.length==4) {
    				//separamos cada uma das informacoes passadas para verificar cada uma individualmente
        			String nome_user = verifica_info[0]; //salva o nome de quem entrou nessa var
        			String solicita_algo = verifica_info[1]; //vamos usar essa var pra verificar se alguem na rede solicita algo
        			String deseja_sair = verifica_info[2]; //vamos usar essa var pra verificar se o usuario vai sair
        			String chave_publica = verifica_info[3];
        			
        			if(conectados.teste.contains(nome_user+";"+chave_publica)) {
        				
        			} else {
        				conectados.teste.add(nome_user+";"+chave_publica);
        			}
        			
        			if(!solicita_algo.equalsIgnoreCase("n")) {

        				if(solicita_algo.equals(conectados.arquivo)) {
        					System.out.println("Eu tenho esse arquivo: " + conectados.teste.get(0)); //verica no arraylist
        					Usuario u = new Usuario();
        					String[] user_quetem = conectados.teste.get(0).split(";");
        					u.clienteMensagemMulti("230.0.0.0", 4321, "Usuario: "+user_quetem[0] + "| Chave TCP: " + conectados.chave_tcp_global + "| Chave UDP: " + conectados.chave_udp_global +"| Tem o arquivo,af");
        				}
        			}
        			
        			if(deseja_sair.equals("1")) {
        				System.out.println("Usuario "+nome_user+" saiu...");
        				conectados.teste.remove(nome_user+";"+chave_publica);
        			}
    			} else {
    				
    			}
    			
    			if("OK".equals(msg)){
    				System.out.println("iih vai sair : "+msg);
    				break;
    			}
			}
			// apos tudo encerra o multicast
    		//sai do grupo e encerra o socket
			socket.leaveGroup(group);
        	socket.close();
        	
		} catch (SocketException e) {
            System.out.println("Erro de socket: " + e.getMessage());
        } catch (IOException e) {
            System.out.println("Erro envio/recepcao pacote: " + e.getMessage());         
        } finally {
            if (s != null) s.close();
        }
	}
	
}

/*Criação da classe do Cliente*/

class ThreadCliente implements Runnable {
    protected String servidor="localhost";
    protected String msg="mensagem default";
    protected int porta=6790;
    
    //Inicia o cliente com as especificacoes passadas
    
    ThreadCliente(String servidor, int porta, String msg) {
        this.servidor = servidor;
        this.porta = porta;
        this.msg = msg;
    }
    
    //Comando que serao executados pelo cliente
    
    	public void run() { // a interface Runnable exige a implementação do método run
        Thread thread = Thread.currentThread();
        DatagramSocket s = null;
        try {
            s = new DatagramSocket(); // cria um socket UDP
            byte[] m = msg.getBytes(); // transforma arg em bytes
            InetAddress serv = InetAddress.getByName(servidor);
            
            DatagramPacket req = new DatagramPacket(m, msg.length(), serv, porta);
            s.send(req); // envia datagrama contendo a mensagem m
            System.out.println("* Mensagem enviada: " + msg);
            
            byte[] buffer = new byte[1000];
            DatagramPacket resp = new DatagramPacket(buffer, buffer.length);
            s.setSoTimeout(10000); // timeout em ms
            s.receive(resp); // aguarda resposta do servidor - bloqueante
            
        } catch (SocketException e) {
            // timeout, erro na criação
            System.out.println("* " + thread.getName() + " * Erro socket: " + e.getMessage());
        } catch (IOException e) {
            System.out.println("* " + thread.getName() + " * Erro envio/recepcao do pacote: " + e.getMessage());
        }  finally {
            if (s != null) s.close();
        } 
    }}


//Classe que faz uso dos comandos do cliente e do servidor
class Usuario{
	
	//inicia a conexão com o servidor
	void iniciaServidor() {
		Thread servidor1 = new Thread(new ThreadServidor(6789));
		servidor1.start();
	}
	
	/*agora do lado do cliente precisamos fazer ele ter a opcao de mandar mensagem
	* para um servidor privado (outro servidor de outro usuario)
	* ou mandar mensagem para o grupo multistream com todos os usuarios
	*/
	
	//metodo que manda mensagem para um servidor isolado
	void clienteMensagemServer(String servidor, int porta, String msg) { //precisa passar server, porta e msg para iniciar a mensagem
		Thread cliente1 = new Thread(new ThreadCliente(servidor,porta,msg)); //passa pro cliente que vai enviar a msg
		cliente1.start();
		
	}
	
	//metodo que manda mensagem para o multistream
	void clienteMensagemMulti(String ipAddress, int port, String messagem) throws IOException {

			DatagramSocket socket = new DatagramSocket();
		      InetAddress group = InetAddress.getByName(ipAddress);
		      byte[] msg = messagem.getBytes();
		      DatagramPacket packet = new DatagramPacket(msg, msg.length,
		         group, port);
		      socket.send(packet);
		      byte[] buffer = new byte[1000];
		      DatagramPacket resp = new DatagramPacket(buffer, buffer.length);
	            socket.setSoTimeout(10000); // timeout em ms
	            socket.receive(resp); // aguarda resposta do servidor - bloqueante
	            System.out.println("* Resposta do servidor multicast a mensagem enviada: " + new String(resp.getData()));
	            socket.close();
	}
	
	//Metodo que recebe mensagens multistream
	void usuarioIniciaMulti() {
		
		//precisa informar os dados passados: nome;solicita_algo;saiu_da_rede
		
		Thread servmulti = new Thread(new ThreadMulticast());
    	servmulti.start();
	}
	Conectadoss co = Conectadoss.getInstance();
	void recebeArquivo(int chave) {
		try {
		    int bytesRead;
		    int current = 0;
		    Socket sock = new Socket("127.0.0.1",chave); //MUDAR AQUI TAMBÉMMMMM
	
		    // recebendo o arquivo
		    byte [] mybytearray  = new byte [115000];
		    InputStream is = sock.getInputStream();
		    FileOutputStream fos = new FileOutputStream("copia.png");
		    BufferedOutputStream bos = new BufferedOutputStream(fos);
		    bytesRead = is.read(mybytearray,0,mybytearray.length);
		    current = bytesRead;
	
		    do {
		       bytesRead =
		          is.read(mybytearray, current, (mybytearray.length-current));
		       if(bytesRead >= 0) current += bytesRead;
		    } while(bytesRead > -1);
		    System.out.println("Arquivo copia.png recebido");
		    bos.write(mybytearray, 0 , current);
		    bos.close();
		    sock.close();
		} catch (SocketException e) {
            System.out.println("Erro de socket: " + e.getMessage());
        } catch (IOException e) {
            System.out.println("Erro envio/recepcao pacote: " + e.getMessage());         
        } finally {
           
        }
		
		
	}
}

/*
* Nesse caso, teremos usuarios e um servidor multicast para os usuarios se conectarem
* Um usuario eh um cliente e um servidor, que pode se conectar com um server multicast
*/

public class Udpmix {
	
	public static byte[] criptografa(String texto, PublicKey chave) {
	    byte[] cipherText = null;

	    try {
      final Cipher cipher = Cipher.getInstance("RSA");
	      // Criptografa o texto puro usando a chave Púlica
	      cipher.init(Cipher.ENCRYPT_MODE, chave);
	      cipherText = cipher.doFinal(texto.getBytes());
	    } catch (Exception e) {
	      e.printStackTrace();
	    }

	    return cipherText;
	  }
	
	
    public static void main(String args[]) throws IOException, ClassNotFoundException {
    	
    	System.out.println("WHATSAPP 2\n");
    	
    	//lendo valores para iniciar o servidor
    	
    	System.out.print("porta do seu servidor: ");
    	Scanner ler = new Scanner(System.in);
    	int porta;
    	porta = ler.nextInt();
    	
    	// cria um servidor na porta escolhida
    	
    	Thread servidor1 = new Thread(new ThreadServidor(porta));
    	servidor1.start();
    	
    	//entra na rede multicast
    	Thread servmulti = new Thread(new ThreadMulticast());
    	servmulti.start();
    	
    	//inicia servidor tcp para ler arquivos
    	Thread servtcp = new Thread (new ThreadTcp()); 
    	servtcp.start();
    	
    	// cria um usuario
    	Usuario u = new Usuario();
    	
    	//cria chave publica
    	String chavepublica = "chavepublica.key";
    	Conectadoss co = Conectadoss.getInstance();
    	co.chave_udp_global = porta;
    	// inicia os dados do usuario
    	System.out.print("informe ao grupo que vc chegou nome;solicita_arquivo: ");
    	Scanner informar = new Scanner(System.in);
    	String dados;
    	dados = informar.next()+";"+"0"+";"+chavepublica; //nome;solicita_arquivo;sair;chave_publica
    	u.clienteMensagemMulti("230.0.0.0", 4321, dados);
    	
    	System.out.println("Conectado a rede!");
    	
    	System.out.println("");
    	while(true) {
	    	//usuario digita o que quer
	    	System.out.print("Digite o que deseja [1] Mandar ZAP [2] Mensagem Pro Grupo [3] Ver Usuários Online [4] Pegar Arquivo [5] Sair: "); //mandar zap troca pra solicitar arquivo
	    	Scanner ver = new Scanner(System.in);
	    	int desejo;
	    	desejo = ver.nextInt();
	    	
	    	if(desejo==1) {
	    		System.out.print("Digite o udp: ");
	    		Scanner id_msg = new Scanner(System.in);
	    		Decripta des = new Decripta();
	        	int porta_id;
	    		porta_id = id_msg.nextInt();
	        	
	    		System.out.print("Digite o tcp: ");
	    		Scanner id_ms = new Scanner(System.in);
	        	int porta_i;
	    		porta_i = id_ms.nextInt();
	    		
	    		ObjectInputStream inputStream = null;
	    		
	    		System.out.println("Digite a mensagem: ");
	    		String zapzap = new Scanner(System.in).next();
	    		
	    		inputStream = new ObjectInputStream(new FileInputStream("C:/keys/public.key"));
	    		final PublicKey chavePublica =(PublicKey) inputStream.readObject();
	    		final byte[] msg = criptografa(zapzap, chavePublica);
	    		
	    		ObjectInputStream inputStream2 = new ObjectInputStream(new FileInputStream("C:/keys/private.key"));
	    		final PrivateKey chavePrivada =(PrivateKey) inputStream2.readObject();
	    		final String msgee = des.decriptografa(msg, chavePrivada);
	    		
	    		System.out.println("Criptografada: "+msg.toString());
	    		System.out.println("Decriptografada: "+msgee);
	    		u.clienteMensagemServer("localhost", porta_id,msgee );
	    		
	    		u.recebeArquivo(porta_i);
	    		
	    		
	    	} 
	    	
	    	if(desejo==2) {
	    		u.clienteMensagemMulti("230.0.0.0", 4321, dados);
	    	}
	    	
	    	if(desejo==3) {
	    		//printa usuarios conectados
				int i = 0;
			    for (String contato: co.teste) {
			      System.out.printf("Posição %d- %s\n", i, contato);
			      i++;
			    }
	    	}
	    	
	    	//encerra as conexoes e envia uma mensagem informando que saiu
	    	if(desejo==5) {
	    		System.out.println("Saindo...");
	    		String[] info = dados.split(";");
	    		String msgfinal = info[0]+";"+"n"+";"+"1"+";"+chavepublica; //athos;n;1;chave
	    		u.clienteMensagemMulti("230.0.0.0", 4321, msgfinal); 
	    		servmulti.stop();
	    		servidor1.stop();
	    		System.exit(0);
	    	}
	    	
	    	if(desejo==4) {
	    		System.out.print("Digite o nome do arquivo que deseja e a extensao: ");
	    		Scanner verarquivo = new Scanner(System.in);
	        	String qualarquivo = verarquivo.next();
	    		//u.recebeArquivo("cavalo.png");
	    		String[] info = dados.split(";");
	    		String msgfinal = info[0]+";"+qualarquivo+";"+"0"+";"+chavepublica; //athos;n;1;chave
	    		u.clienteMensagemMulti("230.0.0.0", 4321, msgfinal);
	    	}
   }
    }
}