@echo off
REM Problema 6 - F2.BAT
REM Modificati F2.BAT astfel incat sa nu mai transmita parametri
REM formali, ci sa foloseasca variabilele interpretorului.

REM Scrieti solutia mai jos:

@echo off
set S=sub1
set F=test1
call F1.BAT

set S=sub2
set F=test2
call F1.BAT
