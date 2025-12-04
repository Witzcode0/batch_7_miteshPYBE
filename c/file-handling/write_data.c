#include<stdio.h>

void main(){
    FILE *f;

    char data[100];

    f = fopen("example.txt", "w");
    if (f == NULL) {
        printf("Error opening file!\n");
    }

    printf("Enetr something... : ");
    gets(data);

    fprintf(f, "%s", data);

    fclose(f);
}
