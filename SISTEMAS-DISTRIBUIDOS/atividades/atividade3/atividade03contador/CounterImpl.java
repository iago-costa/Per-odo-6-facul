
import java.rmi.*;
import java.rmi.server.UnicastRemoteObject;

public class CounterImpl extends UnicastRemoteObject implements Counter{
	
	protected CounterImpl() throws RemoteException
    {
        super();
    }
	
	private int value;
	
	@Override
	public void initValue(int initValue) throws RemoteException {
		setValue(initValue);
		
	}

	@Override
	public void nextValue() throws RemoteException {
		setValue(getValue()+1);	
	}
	
	@Override
	public int getAtualValue() throws RemoteException {
		
		return getValue();
	}

	public int getValue() {
		return value;
	}

	public void setValue(int value) {
		this.value = value;
	}

	
	
	
	
	
	
	
	/*private int value;
	
	public CounterImpl() {
		value = 0;
	}
	
	public void increment(){
		value++;
	}*/

}
