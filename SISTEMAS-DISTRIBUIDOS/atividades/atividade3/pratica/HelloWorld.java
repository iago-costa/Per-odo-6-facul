/** HelloWorld.java **/
import java.rmi.*;
public interface HelloWorld extends Remote {
    String hello() throws RemoteException;
}



