@echo off
REM Problema 3
REM Realizati un fisier de comenzi care sa afiseze toate
REM fisierele care au extensia identica cu cea primita ca
REM parametru.

REM Scrieti solutia mai jos:

@echo off
:bucla
if "%1"=="" goto sfarsit
echo Fisiere cu extensia .%1:
dir /b *.%1
shift
goto bucla
:sfarsit