@echo off
REM Problema 7 - F3.BAT
REM Primeste ca parametru numele unui subdirector S pe care trebuie
REM sa il stearga impreuna cu toate fisierele pe care le contine.
REM Lansati F3.BAT avand ca parametri subdirectoarele create anterior.
REM Se presupune ca S nu contine alte subdirectoare.

REM Scrieti solutia mai jos:

if "%1"=="" goto utilizare
:urmatorul
if "%1"=="" goto sfarsit
if not exist %1\NUL goto lipsa
del /Q %1\*.*
rd %1
echo Subdirectorul %1 a fost sters.
goto shift_param
:lipsa
echo Subdirectorul %1 nu exista.
:shift_param
shift
goto urmatorul
:utilizare
echo Utilizare: F3.BAT subdirector1 [subdirector2 ...]
:sfarsit