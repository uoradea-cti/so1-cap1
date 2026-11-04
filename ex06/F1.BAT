@echo off
REM Problema 6 - F1.BAT
REM Modificati F1.BAT astfel incat sa nu mai primeasca parametri
REM formali, ci sa isi ia datele din variabilele interpretorului.

REM Scrieti solutia mai jos:

:bucla
..\MENIU.exe

if %errorlevel% equ 1 copy con %F%.TXT
if %errorlevel% equ 2 if exist %F%.TXT sort %F%.TXT /o %F%.SRT
if %errorlevel% equ 3 if exist %F%.SRT type %F%.SRT

if not %errorlevel% equ 0 goto bucla

cd
cd ..
