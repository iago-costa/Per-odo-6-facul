#include <stdio.h>
int somav(int V[], int n);
main(){
int V[]= {200,5,8,70,2,250,150};
int soma;
soma = somav(V,7);
printf("SomaVetor=%d",soma);
}
int somav (int V[], int n) {
	int S;
	if (n == 0) return 0;
 	else {
	    S=somav(V, n-1);
	    S=S + V[n-1];
	    printf("n=%d  S=%d\n",n,S);
		return S;
		 } 
}
