@echo off
REM Problema 5 - F1.BAT
REM Imbunatatiti F1.BAT, facand verificari de existenta a
REM fisierelor daca MENIU returneaza 2 sau 3.

REM Scrieti solutia mai jos:

if not exist %1 md %1
cd %1

:meniu
call ..\MENIU.BAT
set v=%errorlevel%
if %v%==0 goto sfarsit
if %v%==1 goto opt1
if %v%==2 goto opt2
if %v%==3 goto opt3
goto meniu

:opt1
copy con %2.txt
goto meniu

:opt2
if not exist %2.txt (
    echo Eroare: fisierul %2.txt nu exista. Alegeti mai intai optiunea 1.
    goto meniu
)
sort %2.txt > %2.srt
goto meniu

:opt3
if not exist %2.srt (
    echo Eroare: fisierul %2.srt nu exista. Alegeti mai intai optiunea 2.
    goto meniu
)
type %2.srt
goto meniu

:sfarsit
echo Director curent: %cd%
cd ..