package CalculatorRMI;

import java.rmi.NotBoundException;
import java.rmi.RemoteException;
import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;

public class CalculatorClient1 {

	public static void main(String[] args) throws RemoteException,
			NotBoundException, InterruptedException {

		//* obtain a reference to a bootstrap remote object registry */
		Registry registry = LocateRegistry.getRegistry("localhost", 2001);

		ICommonCalculator commonCalculator = (ICommonCalculator) registry.lookup("Calculator/CommonCalculator");
		
		System.out.println("Calculadora commum encontrada no Serviço de nomes..");
		Thread.sleep(10000);
		
		//IScientificCalculator scientificCalculator = (IScientificCalculator) registry
		//		.lookup("Calculator/ScientificCalculator");

		//ICalculator calculator2 = (ICalculator) registry
		//		.lookup("ScientificCalculator");

		// int sampleSize = 10000;
		// long t1, t2;

		// t1 = System.nanoTime();
		// for (int i = 0; i < sampleSize; i++)
		 //while(true)
		System.out.println("Calculadora Comum: " + commonCalculator.add(1, 1));
		//System.out.println("Calculadora Cientifica: " + scientificCalculator.addS(1, 1));

		// t2 = System.nanoTime();

		// System.out.println("Total time: "
		// + TimeUnit.NANOSECONDS.toMillis(t2 - t1) + " milliseconds");

		// invoke the remote operation
		// float result = calculator.add(1, 3);

		// System.out.println("add (1, 3) = " + result);
	}

}