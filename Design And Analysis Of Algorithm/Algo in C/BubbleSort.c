// #include<stdio.h>
void bubbleSort(int array[]){
    int i,j,temp;
	for(i=0;i<10;i++){
		for(j=0;j<10-i;j++){
			if(array[j]>array[j+1]){
				temp = array[j];
				array[j]=array[j+1];
				array[j+1]=temp;
			}
		}
	}
	for(i=0;i<10;i++){
		printf("%d,",array[i]);
	}
}
void main(){
		int array[10]={2,6,4,1,3,7,9,23,20,67};
		bubbleSort(array);
}