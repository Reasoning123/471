#include <stdio.h>


          /* Ackerman.c - Answer6A
          * Author: Cardenuto,ALexander (bh10297)
          * Date: 09/09/2014
           */


int Ack(int m,int n){
	if(m == 0){
		return n + 1;
	}
	if(n==0 && m>0){
		return Ack(m-1,1);
	}
	if(n>0 && m>0){
		return Ack(m-1,Ack(m,n-1));
	}
}

int main(void){
int x = Ack(3,15);
 fprintf(stdout,"%d\n",x);
}
