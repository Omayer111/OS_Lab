#include<stdio.h>
#include <stdlib.h> 
#include "inc_prime.h"

int prime(int a[])
{
  int i=2;
  int prm=2;
  int cnt=0;
  int sum=0;
  
  for(prm=2;cnt<=9;prm++)
  {
    i=2;
    for(;i<prm;i++)
    {
      if(prm%i==0)
      {
        break;
      }
    }
    if(prm==i)
    {
        a[cnt]=prm;
        sum=sum+prm;
        cnt++;
    }
  }
  //printf("prime!!");
  //printf("%d\n",sum);
}
