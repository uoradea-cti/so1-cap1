@echo off
REM Problema 7 - F3.BAT
REM Primeste ca parametru numele unui subdirector S pe care trebuie
REM sa il stearga impreuna cu toate fisierele pe care le contine.
REM Lansati F3.BAT avand ca parametri subdirectoarele create anterior.
REM Se presupune ca S nu contine alte subdirectoare.

REM Scrieti solutia mai jos:

:bucla
if "%1"=="" goto sfarsit
if not exist %1\nul (
    echo Eroare: subdirectorul %1 nu exista.
    shift
    goto bucla
)
del /q %1*.*
rd %1
shift
goto bucla

:sfarsit