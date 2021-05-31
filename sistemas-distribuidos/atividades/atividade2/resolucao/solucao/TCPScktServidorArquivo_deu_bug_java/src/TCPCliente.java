/*
 * TCPCliente.java
 *
 * Created on 18 de Maio de 2006, 12:05
 *
 * Recebe o arquivo teste.txt. Para pedi-lo executar o cliente:
 * java TCPCliente <IP servidor> <porta> <id cliente>
 * Ex. java TCPCliente 127.0.0.1 6789 CESAR
 */
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Scanner;

import java.net.*;
import java.io.*;
public class TCPCliente {
    public static void main(String args[]) {
        Socket s = null;

        Scanner ler = new Scanner(System.in);
        String arquivo="";
        System.out.println("Digite o nome do arquivo, com a extensao, a ser baixado: ");
        arquivo = ler.nextLine();
                 
        
        try {
            FileWriter file = new FileWriter("./TCPScktServidorArquivo/src/arquivocriado.txt");
            PrintWriter gravarArq = new PrintWriter(file);

            s = new Socket(args[0], Integer.parseInt(args[1])); // conecta o socket aa porta remota
            DataInputStream  ent = new DataInputStream(s.getInputStream());
            DataOutputStream sai = new DataOutputStream(s.getOutputStream());
            sai.writeUTF(args[2]);
            String recebido = ent.readUTF();
            
            while (recebido != null) {
                gravarArq.printf(recebido);

                System.out.println(recebido);
                recebido = ent.readUTF();
            }
        } catch (UnknownHostException e) {
            System.out.println("Servidor desconhecido: " + e.getMessage());
        } catch (EOFException e) {
            System.out.println("--- FIM DA TRANSFERENCIA ---");
        } catch (IOException e) {
            System.out.println("E/S: " + e.getMessage());
        } finally {
            if (s!=null)
                try {
                    s.close();
                } catch (IOException e){
                    System.out.println("Encerramento do socket falhou: " + e.getMessage());
                }
        }
    }
    
}
