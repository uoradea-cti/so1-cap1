@echo off
REM Problema 6 - F1.BAT
REM Modificati F1.BAT astfel incat sa nu mai primeasca parametri
REM formali, ci sa isi ia datele din variabilele interpretorului.

@echo off
if "%S%"=="" goto :eof
if "%F%"=="" goto :eof
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

