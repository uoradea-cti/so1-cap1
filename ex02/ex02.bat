@echo off
REM Problema 2: primeste extensii fara punct, separate prin spatii.
if "%1"=="" goto :eof
:sterge
if "%1"=="" goto :eof
if exist *.%1 goto sterge_fisiere
echo Nu exista fisiere cu extensia %1.
goto urmatoarea_extensie
:sterge_fisiere
del *.%1
:urmatoarea_extensie
shift
goto sterge

