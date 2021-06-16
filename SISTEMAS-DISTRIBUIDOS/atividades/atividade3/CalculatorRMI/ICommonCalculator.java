package CalculatorRMI;

import java.rmi.Remote;
import java.rmi.RemoteException;

public interface ICommonCalculator extends Remote {
	float add(float x, float y) throws RemoteException;

	float sub(float x, float y) throws RemoteException;

	float mul(float x, float y) throws RemoteException;

	float div(float x, float y) throws RemoteException;
}