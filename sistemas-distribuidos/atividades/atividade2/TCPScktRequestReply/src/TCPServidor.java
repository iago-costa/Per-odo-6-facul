/*
 * TCPServidor.java
 *
 * Created on 18 de Maio de 2006, 12:19
 *
 * Servidor ECHO (Coulouris, 2001) pg. 137
 * Passar número da porta como argumento (opcional)
 * Ex. java TCPServidor <porta> ou
 *     java TCPServidor
 */
import java.net.*;
import java.io.*;
public class TCPServidor {
    public static void main(String args[]) {
        try {
            int porta = 6789; // porta do serviço
            if (args.length > 0) porta = Integer.parseInt(args[0]);
            ServerSocket escuta = new ServerSocket(porta);
            System.out.println("*** Servidor ***");
            System.out.println("*** Porta de escuta (listen): " + porta);
            while (true) {
                // accept bloqueia ateh que chegue um pedido de conexao de um cliente
                Socket cliente = escuta.accept();
                System.out.println("*** conexao aceita de (remoto): " + cliente.getRemoteSocketAddress());
                // quando chega, cria nova thread para atender em especial o cliente
                Conexao c = new Conexao(cliente);
            }
        } catch (IOException e) {
            System.out.println("Erro na escuta: " + e.getMessage());
        }
    }    
}

class Conexao extends Thread {
    DataInputStream ent;
    DataOutputStream sai;
    Socket cliente;
    
    public Conexao(Socket s) {
        try {
            cliente = s;
            ent = new DataInputStream(cliente.getInputStream());
            sai = new DataOutputStream(cliente.getOutputStream());
            this.start();
        } catch (IOException e) {
            System.out.println("Erro IO Conexao: " + e.getMessage());
        }
    }
    
    public void run() {
        try {
            String recebido = ent.readUTF();
            sai.writeUTF(recebido.toUpperCase());
        } catch (EOFException e) {
            System.out.println("Conexao: EOFException " + e.getMessage());
        } catch (IOException e) {
            System.out.println("Conexao: IOException " + e.getMessage());
        } finally {
            try {
                cliente.close();
            } catch (IOException e) {
                System.out.println("Conexao: erro close do socket");
            }
        }
    }
    
}