@echo off
REM Problema 3
REM Realizati un fisier de comenzi care sa afiseze toate
REM fisierele care au extensia identica cu cea primita ca
REM parametru.

REM Scrieti solutia mai jos:

if "%1"=="" goto utilizare
echo Fisierele cu extensia .%1 din directorul curent:
if not exist *.%1 goto nuexista
for %%i in (*.%1) do echo   %%i
goto sfarsit
:nuexista
echo   (niciun fisier)
goto sfarsit
:utilizare
echo Utilizare: ex03.bat extensie
:sfarsit