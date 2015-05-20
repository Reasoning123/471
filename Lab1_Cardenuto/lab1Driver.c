  /* Author: Cardenuto, ALexander (bh10297)
      Date: 09/05/2014
*/
#include "openssl/bio.h"
#include "openssl/blowfish.h"
//wgifuewhfw
#include <stdio.h>
//#include "lab1_1.h"
#include <limits.h>
    int gcdI(int i, int j) {
       while ( i != j) { 
           if (i > j) {
              i = i - j;
           } else {
              j = j - i;
           }
       }      
       return i;
    }

int  gcdR(int i, int j) {
	if(i == j){
		return i;
	}
	if(i > j){
		gcdR((i-j),j);
	}else{
		gcdR(i,(j-i));
	}	
}

int main(void) { 
   int ans;
   printf("\n\n");
   ans = gcdI(56,14 );
   printf("gcdI of 56,14 is %d\n", ans);

   ans = gcdR(56,14);
   printf("gcdR of 56,14 is %d\n", ans);
   printf("\n");
 
   printf("\n");
   
  
   return 0;
}


