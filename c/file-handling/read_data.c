#include<stdio.h>

void main(){
    FILE *f;

    char data[100];

    f = fopen("example.txt", "r");

    if (f == NULL) {
        printf("Error opening file!\n");
    }

    if(fgets(data, sizeof(data), f) != NULL){
            printf("Data: %s", data);
    }

    fclose(f);
}
