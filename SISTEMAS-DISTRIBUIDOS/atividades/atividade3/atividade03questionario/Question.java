import java.rmi.*;
public interface Question extends Remote {
    String question(String questionario) throws RemoteException;
}