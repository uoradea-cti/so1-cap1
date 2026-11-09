@echo off
REM Problema 5 - F1.BAT
REM Imbunatatiti F1.BAT, facand verificari de existenta a
REM fisierelor daca MENIU returneaza 2 sau 3.

@echo off
if "%1"=="" goto :eof
if "%2"=="" goto :eof
set S=%1
set F=%2
set MENUDIR=%CD%
if not exist "%S%" mkdir "%S%"
cd "%S%"
:meniu
"%MENUDIR%\MENIU.EXE"
if errorlevel 3 goto verifica_sortat
if errorlevel 2 goto verifica_text
if errorlevel 1 goto introdu
goto sfarsit
:introdu
copy con "%F%.TXT"
goto meniu
:verifica_text
if not exist "%F%.TXT" goto ontbreekt_text
sort < "%F%.TXT" > "%F%.SRT"
goto meniu
:ontbreekt_text
echo Fisierul %F%.TXT nu exista.
goto meniu
:verifica_sortat
if not exist "%F%.SRT" goto ontbreekt_sortat
type "%F%.SRT"
goto meniu
:ontbreekt_sortat
echo Fisierul %F%.SRT nu exista.
goto meniu
:sfarsit
cd
cd ..
set MENUDIR=

