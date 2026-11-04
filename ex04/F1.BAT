@echo off
REM Problema 4 - F1.BAT
REM Primeste 2 parametri: S (subdirector) si F (fisier fara extensie).
REM Creeaza S, intra in S, apeleaza MENIU si, in functie de valoare:
REM   1 - creeaza prin copiere de la tastatura F.TXT
REM   2 - sorteaza F.TXT in F.SRT
REM   3 - afiseaza F.SRT
REM Daca valoarea e diferita de 0, apeleaza din nou MENIU.
REM La final afiseaza directorul curent si revine in directorul parinte.

REM Scrieti solutia mai jos:
@echo off
echo.
echo ===== MENIU =====
echo 1 - Creare fisier (copiere de la tastatura)
echo 2 - Sortare fisier
echo 3 - Afisare fisier sortat
echo 0 - Iesire
choice /c 1230 /n /m "Optiunea ta: "
if errorlevel 4 exit /b 0
exit /b %errorlevel%