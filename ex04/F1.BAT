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

if exist "%~dp0MENIU.EXE" goto start
echo EROARE: nu gasesc MENIU.EXE
goto sfarsit
:start
if "%2"=="" goto utilizare
if not exist %1\NUL md %1
cd %1
:meniu
"%~dp0MENIU.EXE"
if errorlevel 4 goto final
if errorlevel 3 goto optiunea3
if errorlevel 2 goto optiunea2
if errorlevel 1 goto optiunea1
goto final
:optiunea1
echo Introduceti textul (CTRL+Z apoi ENTER la final):
copy con %2.TXT
goto meniu
:optiunea2
sort <%2.TXT >%2.SRT
echo %2.TXT a fost sortat in %2.SRT
goto meniu
:optiunea3
type %2.SRT
goto meniu
:final
echo Directorul curent este:
cd
cd ..
goto sfarsit
:utilizare
echo Utilizare: F1.BAT subdirector fisier
:sfarsit