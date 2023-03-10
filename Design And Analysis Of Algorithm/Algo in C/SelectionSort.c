// #include<stdio.h>
void selectionSort(int a[]){
    int i,n=10,minj,minx;
    for(i=0;i<n;i++){
        minj = i;
        minx = a[i];
        for(int j = i+1;j<n;j++){
            if(a[j]<minx){
                minj = j;
                minx = a[j];
            }
        }
        a[minj]=a[i];
        a[i]=minx;
    }
    for(i = 0;i<10;i++){
        printf("%d,",a[i]);
    }
}
void main(){
    int a[10] = {3,6,4,12,8,56,34,21,89,55};
    selectionSort(a);
}