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

:bucla
..\MENIU.c

if %errorlevel% equ 1 copy con %2.TXT
if %errorlevel% equ 2 sort %2.TXT /o %2.SRT
if %errorlevel% equ 3 type %2.SRT

if not %errorlevel% equ 0 goto bucla

cd
cd ..
