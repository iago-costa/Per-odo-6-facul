package CalculatorRMI;

import java.rmi.RemoteException;
import java.rmi.server.UnicastRemoteObject;

public class CommonCalculatorImpl extends UnicastRemoteObject implements ICommonCalculator {

	protected CommonCalculatorImpl() throws RemoteException {
		super();
	}

	private static final long serialVersionUID = 1L;

	@Override
	public float add(float x, float y) {
		return x + y;
	}

	@Override
	public float sub(float x, float y) throws RemoteException {
		return x - y;
	}

	@Override
	public float mul(float x, float y) throws RemoteException {
		return x * y;
	}

	@Override
	public float div(float x, float y) throws RemoteException {
		return x / y;
	}

}
