// #include <stdio.h>
void insertionSort(int a[]){
      int i, j, temp = 0;

    for (i = 2; i < 10; i++){
        temp = a[i];
        j = i - 1;
        while (temp < a[j] && j > 0){
            a[j + 1] = a[j];
            j = j - 1;
        }
        a[j + 1] = temp;
    }
    for (i = 1; i < 10; i++){
        printf("%d,", a[i]);
    }
}
void main()
{
    int a[10]={4,3,2,6,100,5,12,9,45,48};
    insertionSort(a);
}