package CalculatorRMI;

import java.rmi.NotBoundException;
import java.rmi.RemoteException;
import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;

public class CalculatorClient2 {

	public static void main(String[] args) throws RemoteException,
			NotBoundException {

		// obtain a reference to a bootstrap remote object registry
		Registry registry = LocateRegistry.getRegistry("localhost", 2001);

		// look for an instance of Calculator in the Naming service
		ICommonCalculator commonCalculator = (ICommonCalculator) registry.lookup("Calculator/CommonCalculator");

		//int sampleSize = 10000;
		//long t1, t2;

		//t1 = System.nanoTime();
		//for (int i = 0; i < sampleSize; i++)
		while(true)
		System.out.println(commonCalculator.sub(2,2));
			
		//t2 = System.nanoTime();

		//System.out.println("Total time: "
		//		+ TimeUnit.NANOSECONDS.toMillis(t2 - t1) + " milliseconds");

		// invoke the remote operation
		// float result = calculator.add(1, 3);

		// System.out.println("add (1, 3) = " + result);
	}

}