package CalculatorRMI;

import java.rmi.Remote;
import java.rmi.RemoteException;

public interface IScientificCalculator extends Remote {
	float addS(float x, float y) throws RemoteException;

	float subS(float x, float y) throws RemoteException;

	float mulS(float x, float y) throws RemoteException;

	float divS(float x, float y) throws RemoteException;
}