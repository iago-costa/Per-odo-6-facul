#include <stdio.h>
int max(int V[], int n);
main(){
int V[]= {200,5,8,70,2,250,150};
int maximo;
maximo = max(V,7);
printf("ValorMaximo=%d",maximo);
}
int max (int V[], int n) {
	int S;
	if (n == 1) return V[0];
 	else {
	 	S =max(V, n-1);
	 	printf("N=%d S=%d\n",n,S);
		if (S > V[n-1]) return S;
		else return V[n-1];
		 } 
}
