@echo off
REM Problema 6 - F1.BAT
REM Modificati F1.BAT astfel incat sa nu mai primeasca parametri
REM formali, ci sa isi ia datele din variabilele interpretorului.

REM Scrieti solutia mai jos:

if exist "%~dp0..\ex04\MENIU.EXE" goto start
echo EROARE: nu gasesc MENIU.EXE in ex04
goto sfarsit
:start
if "%S%"=="" goto utilizare
if "%F%"=="" goto utilizare
if not exist %S%\NUL md %S%
cd %S%
:meniu
"%~dp0..\ex04\MENIU.EXE"
if errorlevel 4 goto final
if errorlevel 3 goto optiunea3
if errorlevel 2 goto optiunea2
if errorlevel 1 goto optiunea1
goto final
:optiunea1
echo Introduceti textul (CTRL+Z apoi ENTER la final):
copy con %F%.TXT
goto meniu
:optiunea2
if not exist %F%.TXT goto lipsa_txt
sort <%F%.TXT >%F%.SRT
echo %F%.TXT a fost sortat in %F%.SRT
goto meniu
:lipsa_txt
echo EROARE: %F%.TXT nu exista! Alegeti intai optiunea 1.
goto meniu
:optiunea3
if not exist %F%.SRT goto lipsa_srt
type %F%.SRT
goto meniu
:lipsa_srt
echo EROARE: %F%.SRT nu exista! Alegeti intai optiunea 2.
goto meniu
:final
echo Directorul curent este:
cd
cd ..
goto sfarsit
:utilizare
echo Setati intai variabilele: SET S=nume_dir si SET F=nume_fisier
:sfarsit