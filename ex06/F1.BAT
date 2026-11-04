@echo off
REM Problema 6 - F1.BAT
REM Modificati F1.BAT astfel incat sa nu mai primeasca parametri
REM formali, ci sa isi ia datele din variabilele interpretorului.

REM Scrieti solutia mai jos:
if not exist %S% md %S%
cd %S%

:meniu
call ..\MENIU.BAT
set v=%errorlevel%
if %v%==0 goto sfarsit
if %v%==1 goto opt1
if %v%==2 goto opt2
if %v%==3 goto opt3
goto meniu

:opt1
copy con %F%.txt
goto meniu

:opt2
if not exist %F%.txt (
    echo Eroare: fisierul %F%.txt nu exista. Alegeti mai intai optiunea 1.
    goto meniu
)
sort %F%.txt > %F%.srt
goto meniu

:opt3
if not exist %F%.srt (
    echo Eroare: fisierul %F%.srt nu exista. Alegeti mai intai optiunea 2.
    goto meniu
)
type %F%.srt
goto meniu

:sfarsit
echo Director curent: %cd%
cd ..
