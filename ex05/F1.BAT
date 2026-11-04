@echo off
REM Problema 5 - F1.BAT
REM Imbunatatiti F1.BAT, facand verificari de existenta a
REM fisierelor daca MENIU returneaza 2 sau 3.

REM Scrieti solutia mai jos:

:bucla
..\MENIU.exe

if %errorlevel% equ 1 copy con %2.TXT
if %errorlevel% equ 2 if exist %2.TXT sort %2.TXT /o %2.SRT
if %errorlevel% equ 3 if exist %2.SRT type %2.SRT

if not %errorlevel% equ 0 goto bucla

cd
cd ..
