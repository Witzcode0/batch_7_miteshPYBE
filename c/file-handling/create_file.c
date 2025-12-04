#include<stdio.h>

void main(){
    FILE *file;

    file = fopen("example.txt", "w");
    fclose(file);

}

