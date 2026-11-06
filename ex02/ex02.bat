@echo off
REM Problema 2
REM Scrieti un fisier de comenzi care sa stearga din directorul
REM curent toate fisierele care au extensie identica cu cea
REM primita ca parametru. Fisierul de comenzi sa accepte mai
REM multe extensii deodata.

REM Scrieti solutia mai jos:

if "%1"=="" goto utilizare
:urmatoarea
if "%1"=="" goto sfarsit
if not exist *.%1 goto nuexista
del *.%1
echo Au fost sterse fisierele *.%1
goto shift_param
:nuexista
echo Nu exista fisiere cu extensia .%1
:shift_param
shift
goto urmatoarea
:utilizare
echo Utilizare: ex02.bat ext1 [ext2 ...]
:sfarsit