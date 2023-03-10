// #include <stdio.h>
void binary(int t[],int x){
    int i =0 , j = 9,k;
    if(x>t[9]){
        printf("10");
    }
   else{
        while (i<j){
        k = (i+j)/2;
        if(x<=t[k]){
            j=k;
        }else{
            i = k+1;
        }
    }
    if(t[i]==x){
        printf("%d",i);
    }
    else{
        printf("The Element is Not There");
    }
   }
}
void main()
{
    int t[10]={2,4,12,34,45,56,59,63,70,74};
    int x;
    printf("Enter Which Number You want to Search :");
    scanf("%d", &x);
    binary(t,x);
   
}