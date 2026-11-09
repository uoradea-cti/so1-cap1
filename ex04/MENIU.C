/*
 * Problema 4 - programul MENIU
 * Creati un program "MENIU" care returneaza una din valorile: 0, 1, 2, 3.
 */

#include <stdio.h>

int main(void)
{
    int alegere;

    printf("0 - Iesire\n");
    printf("1 - Introducere text in fisier\n");
    printf("2 - Sortare fisier\n");
    printf("3 - Afisare fisier sortat\n");
    printf("Alegerea: ");

    if (scanf("%d", &alegere) != 1 || alegere < 0 || alegere > 3)
        return 0;

    return alegere;
}
