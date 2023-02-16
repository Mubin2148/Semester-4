#include<stdio.h>
void main(){
	int array[5]  ={10,20,30,40,50};
	int i=0,j =4,k,x;
	printf("enter the number :");
	scanf("%d",&x);
	while(i<j){
		k = (i+j)/2;
		if(x<=array[k]){
			j=k;
		}
		else{
			i=k+1;
		}		
	}
	if(array[i]!=x){
		i = -1;
	}
	printf("the number is found at : %d",i);
}
