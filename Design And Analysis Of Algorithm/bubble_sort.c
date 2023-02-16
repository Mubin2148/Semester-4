#include<stdio.h>
void main(){
	FILE *fp,*fp2;
		int array[100000];
	int i,j,temp;
	fp=fopen("average.txt","r");
	fp2=fopen("sorted.txt","w");

	for(i=0;i<100000;i++){

		fscanf(fp,"%d\n",&array[i]);
	}
	
	for(i=0;i<100000;i++){
		for(j=0;j<100000-i;j++){
			if(array[j]>array[j+1]){
				temp = array[j];
				array[j]=array[j+1];
				array[j+1]=temp;
			}
		}
	}
	for(i=0;i<100000;i++){
		fprintf(fp2,"%d,",array[i]);
	}
}
