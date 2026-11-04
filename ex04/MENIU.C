/*
 * Problema 4 - programul MENIU
 * Creati un program "MENIU" care returneaza una din valorile: 0, 1, 2, 3.
 */

#include <stdio.h>

int main(void)
{
    int optiune;
    printf("1 - Creeaza\n2 - Sorteaza\n3 - Afiseaza\n0 - Iesire\nOptiune: ");
    scanf("%d", &optiune);
    
    return optiune;

    return 0;
}
