import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Scanner;


public class baixarArquivo {
    public static void main(String args[]) throws IOException{
        String arquivo = "";
        Scanner ler = new Scanner(System.in);
        System.out.printf("Informe o nome do arquivo para baixar:\n");
        arquivo = ler.next();

        System.out.printf(arquivo);

    
    }
}
