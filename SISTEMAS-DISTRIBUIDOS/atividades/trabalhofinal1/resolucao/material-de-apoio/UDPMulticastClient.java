import java.io.IOException;
import java.net.DatagramPacket;
import java.net.InetAddress;
import java.net.MulticastSocket;

public class UDPMulticastClient implements Runnable {

   public static void main(String[] args) {
      Thread t=new Thread(new UDPMulticastClient());
      t.start();
   }

   @SuppressWarnings("deprecation")
public void receiveUDPMessage(String ip, int port) throws
         IOException {
      byte[] buffer=new byte[1024];
      MulticastSocket socket = new MulticastSocket(4321);
      InetAddress group = InetAddress.getByName("230.0.0.0");
      socket.joinGroup(group);
      while(true){
         System.out.println("Aguardando por dados no multicast...");
         DatagramPacket packet=new DatagramPacket(buffer,
            buffer.length);
         socket.receive(packet);
         String msg=new String(packet.getData(),
         packet.getOffset(),packet.getLength());
         
         DatagramPacket resp = new DatagramPacket(packet.getData(), packet.getLength(),packet.getAddress(), packet.getPort());
         //envia a mesma msg de volta para todos no multicast
         
         socket.send(resp);
         //tratamento de string para receber chave publica
         //chave;se solicita arquivos;
         
         System.out.println("Mensagem UDP multicast recebida: "+msg);
         if("OK".equals(msg)) {
            System.out.println("No more message. Exiting : "+msg);
            break;
         }
      }
      socket.leaveGroup(group);
      socket.close();
   }

   @Override
   public void run(){
   try {
      receiveUDPMessage("230.0.0.0", 4321);
   }catch(IOException ex){
      ex.printStackTrace();
   }
}}