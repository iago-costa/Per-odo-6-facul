/** QuestionServer.java **/
import java.rmi.*;
import java.rmi.server.*;
import java.rmi.registry.*;

public class QuestionServer implements Question {
    public QuestionServer() {}

    // main()
    public static void main(String[] args) {
        try{
//            Instancia o objeto servidor e a sua stub
            QuestionServer server = new QuestionServer();
            Question stub = (Question) UnicastRemoteObject.exportObject(server, 0);
//            Registra a stub no RMI Registry para que ela seja obtida pelos clientes
            Registry registry = LocateRegistry.getRegistry();
            registry.bind("Question", stub);

            System.out.println("Servidor pronto");
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    // question()
    public String question(String questionario) throws RemoteException {
        System.out.println("Executando question()");
        String[] vetor_questionario;
        vetor_questionario = questionario.split(";");

        int acertos = 0,
            erros = 0;

//        for (int i = 0; i < vetor_questionario.length; i++) {
//            System.out.println(i+" "+vetor_questionario[i]);
//        }

        for (int i=0; i < vetor_questionario[2].length(); i++) {
            char c = vetor_questionario[2].charAt(i);
            if (c == 'V') {
                acertos += 1;
            }else if (c == 'F') {
                erros += 1;
            }
        }
        String msgFinal = vetor_questionario[0]+";"+acertos+";"+erros;
        return msgFinal;
    }

}
