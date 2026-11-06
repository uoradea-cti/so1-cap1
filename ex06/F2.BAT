@echo off
REM Problema 6 - F2.BAT
REM Modificati F2.BAT astfel incat sa nu mai transmita parametri
REM formali, ci sa foloseasca variabilele interpretorului.

REM Scrieti solutia mai jos:

set S=DIR1
set F=FIS1
call "%~dp0F1.BAT"
set S=DIR2
set F=FIS2
call "%~dp0F1.BAT"
set S=DIR3
set F=FIS3
call "%~dp0F1.BAT"
set S=
set F=