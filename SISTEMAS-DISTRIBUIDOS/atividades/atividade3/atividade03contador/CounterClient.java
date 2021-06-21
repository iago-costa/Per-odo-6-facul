
import java.net.MalformedURLException;
import java.rmi.*;

public class CounterClient {

	public static void main(String[] args) throws MalformedURLException, RemoteException, NotBoundException {	
			
			Counter c = (Counter) Naming.lookup("rmi://localhost:5099/CounterService");
	        System.out.println("Setando valor inicial = 2");
	        c.initValue(2);
	        System.out.println("Incrementando contador");
	        c.nextValue();
	        System.out.println("Incrementando contador");
	        c.nextValue();
	        System.out.println("Valor do contador apos as incrmentacoes: "+c.getAtualValue());
	}     
}
