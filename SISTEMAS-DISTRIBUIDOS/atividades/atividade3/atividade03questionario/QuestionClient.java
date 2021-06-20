/** HelloClient.java **/
import java.rmi.registry.*;
public class QuestionClient {
    public static void main(String[] args) {
        String host = (args.length < 1) ? null : args[0];

        try {
            // Obtém uma referência para o registro do RMI
            Registry registry = LocateRegistry.getRegistry(host);
            // Obtém a stub do servidor
            Question stub = (Question) registry.lookup("Question");
            // Chama o método do servidor e imprime a mensagem

            String msg = stub.question("1;6;VVFVFF");
            System.out.println("Mensagem do Cliente: 1;6;VVFVFF");
            System.out.println("Mensagem do Servidor: " + msg);

            String msg1 = stub.question("2;6;VFFVFF");
            System.out.println("Mensagem do Cliente: 2;6;VFFVFF");
            System.out.println("Mensagem do Servidor: " + msg1);

            String msg2 = stub.question("3;6;FFFVFF");
            System.out.println("Mensagem do Cliente: 3;6;FFFVFF");
            System.out.println("Mensagem do Servidor: " + msg2);

        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}