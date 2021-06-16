package CalculatorRMI;

import java.rmi.RemoteException;
import java.rmi.server.UnicastRemoteObject;

public class ScientificCalculatorImpl extends UnicastRemoteObject implements
		IScientificCalculator {

	protected ScientificCalculatorImpl() throws RemoteException {
		super();
	}

	private static final long serialVersionUID = 1L;

	@Override
	public float addS(float x, float y) throws RemoteException {
		return x + y;
	}

	@Override
	public float subS(float x, float y) throws RemoteException {
		return x - y;
	}

	@Override
	public float mulS(float x, float y) throws RemoteException {
		return x * y;
	}

	@Override
	public float divS(float x, float y) throws RemoteException {
		return x / y;
	}

}
