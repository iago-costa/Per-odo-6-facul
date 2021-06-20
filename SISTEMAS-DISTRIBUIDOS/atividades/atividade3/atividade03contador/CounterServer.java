
import java.rmi.*;
import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;

public class CounterServer {

    public static void main(String[] args) throws RemoteException{
    	Registry registry = LocateRegistry.createRegistry(5099);
		registry.rebind("CounterService", new CounterImpl());
    }
}
