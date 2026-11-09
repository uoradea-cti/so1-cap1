@echo off
REM Problema 6 - F2.BAT
REM Modificati F2.BAT astfel incat sa nu mai transmita parametri
REM formali, ci sa foloseasca variabilele interpretorului.

@echo off
set S=date1
set F=lista1
call F1.BAT
set S=date2
set F=lista2
call F1.BAT
set S=
set F=

