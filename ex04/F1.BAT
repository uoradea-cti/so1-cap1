@echo off
REM Problema 4 - F1.BAT
REM Primeste 2 parametri: S (subdirector) si F (fisier fara extensie).
REM Creeaza S, intra in S, apeleaza MENIU si, in functie de valoare:
REM   1 - creeaza prin copiere de la tastatura F.TXT
REM   2 - sorteaza F.TXT in F.SRT
REM   3 - afiseaza F.SRT
REM Daca valoarea e diferita de 0, apeleaza din nou MENIU.
REM La final afiseaza directorul curent si revine in directorul parinte.

@echo off
if "%1"=="" goto :eof
if "%2"=="" goto :eof
set S=%1
set F=%2
set MENUDIR=%CD%
if not exist "%S%" mkdir "%S%"
cd "%S%"
:meniu
"%MENUDIR%\MENIU.EXE"
if errorlevel 3 goto afiseaza
if errorlevel 2 goto sorteaza
if errorlevel 1 goto introdu
goto sfarsit
:introdu
copy con "%F%.TXT"
goto meniu
:sorteaza
sort < "%F%.TXT" > "%F%.SRT"
goto meniu
:afiseaza
type "%F%.SRT"
goto meniu
:sfarsit
cd
cd ..
set MENUDIR=

