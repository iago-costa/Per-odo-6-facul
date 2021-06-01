/*
 * Servidor.java
 *
 * Created on 17 de Maio de 2006, 11:27
 *
 * Servidor ECHO: fica em aguardo de solicita��o de algum cliente. Quando recebe
 * simplesmente devolve a mensagem. Funcionamento: tiro unico
 */

import java.net.*;
import java.io.*;

public class Servidor {
    public static void main(String args[]) {
        DatagramSocket s = null;
        String str1 = new String("oiJuliana");
        try {

            s = new DatagramSocket(6750); // cria um socket UDP
            byte[] buffer = new byte[1000];
            System.out.println("\n\n*** Servidor aguardando request");

            

            while (true) {
                // cria datagrama para recepcionar solicita��o do cliente
                DatagramPacket req = new DatagramPacket(buffer, buffer.length);
                
                String resposta = " ";
                s.receive(req);

                String str = new String(req.getData(), "UTF-8");
                // byte[] umByteArray = "oi Juliana".getBytes();
                String s1 = "a";
                String s2 = new String("a");
                System. out. println(s1. equals(s2));

                System.out.println(str+" == "+str1);
                System.out.println(str1.equals(str));
                
                // if (str.compareToIgnoreCase(str1)) {
                //     resposta = "oi tudo bem";
                //     System.out.println(resposta);

                // }
                // if (str.equals("oi Iago")) {
                //     resposta = "oi como vai";
                //     // System.out.println("oi como vai?");
                //     System.out.println(resposta);

                // }
                // if (str.equals("break")) {
                //     // System.out.println("bye bye");
                //     resposta = "bye bye";
                //     DatagramPacket resp = new DatagramPacket(resposta.getBytes(), resposta.length(), req.getAddress(),
                //             req.getPort());
                //     s.send(resp);
                //     System.exit(0);
                // }
                System.out.println("*** Request recebido de: " +
                req.getAddress()+":"+req.getPort());

                // envia resposta
                DatagramPacket resp = new DatagramPacket(resposta.getBytes(), resposta.length(), req.getAddress(),
                        req.getPort());
                s.send(resp);
            }

        } catch (SocketException e) {
            System.out.println("Erro de socket: " + e.getMessage());
        } catch (IOException e) {
            System.out.println("Erro envio/recepcao pacote: " + e.getMessage());
        } finally {
            if (s != null)
                s.close();
        }
    }
}
