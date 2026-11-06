/*
 * Problema 4 - programul MENIU
 * Creati un program "MENIU" care returneaza una din valorile: 0, 1, 2, 3.
 */

#include <stdio.h>

int main(void)
{
    char linie[64];

    while (1) {
        printf("\n========== MENIU ==========\n");
        printf("  1 - Creare F.TXT de la tastatura\n");
        printf("  2 - Sortare F.TXT in F.SRT\n");
        printf("  3 - Afisare F.SRT\n");
        printf("  0 - Iesire\n");
        printf("Optiunea: ");

        if (fgets(linie, sizeof(linie), stdin) == NULL)
            return 0;

        if (linie[0] >= '0' && linie[0] <= '3' &&
            (linie[1] == '\n' || linie[1] == '\r' || linie[1] == '\0'))
            return linie[0] - '0';

        printf("Optiune invalida! Introduceti 0, 1, 2 sau 3.\n");
    }
}
