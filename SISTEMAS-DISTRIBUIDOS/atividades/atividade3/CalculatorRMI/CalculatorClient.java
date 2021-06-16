package CalculatorRMI;

import java.rmi.NotBoundException;
import java.rmi.RemoteException;
import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;
import java.util.concurrent.TimeUnit;

public class CalculatorClient {

	public static void main(String[] args) throws RemoteException,
			NotBoundException, InterruptedException {

		//* obtain a reference to a bootstrap remote object registry */
		Registry registry = LocateRegistry.getRegistry("localhost", 1313);

		ICalculator calculator = (ICalculator) registry.lookup("Calculator");
		int sampleSize = 10000;
		long startTime;

		startTime = System.nanoTime();
		for(int idx = 0; idx < sampleSize; idx++)
		   //System.out.println(calculator.add(1, 3));
			calculator.add(idx, idx);
		
		long duration = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - startTime);
		System.out.println("Mean Time Duration: "+duration/(float) sampleSize+" ms");
		
	}

}