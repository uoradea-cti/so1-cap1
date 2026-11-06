@echo off
REM Problema 5 - F1.BAT
REM Imbunatatiti F1.BAT, facand verificari de existenta a
REM fisierelor daca MENIU returneaza 2 sau 3.

REM Scrieti solutia mai jos:

if exist "%~dp0..\ex04\MENIU.EXE" goto start
echo EROARE: nu gasesc MENIU.EXE in ex04
goto sfarsit
:start
if "%2"=="" goto utilizare
if not exist %1\NUL md %1
cd %1
:meniu
"%~dp0..\ex04\MENIU.EXE"
if errorlevel 4 goto final
if errorlevel 3 goto optiunea3
if errorlevel 2 goto optiunea2
if errorlevel 1 goto optiunea1
goto final
:optiunea1
echo Introduceti textul (CTRL+Z apoi ENTER la final):
copy con %2.TXT
goto meniu
:optiunea2
if not exist %2.TXT goto lipsa_txt
sort <%2.TXT >%2.SRT
echo %2.TXT a fost sortat in %2.SRT
goto meniu
:lipsa_txt
echo EROARE: %2.TXT nu exista! Alegeti intai optiunea 1.
goto meniu
:optiunea3
if not exist %2.SRT goto lipsa_srt
type %2.SRT
goto meniu
:lipsa_srt
echo EROARE: %2.SRT nu exista! Alegeti intai optiunea 2.
goto meniu
:final
echo Directorul curent este:
cd
cd ..
goto sfarsit
:utilizare
echo Utilizare: F1.BAT subdirector fisier
:sfarsit