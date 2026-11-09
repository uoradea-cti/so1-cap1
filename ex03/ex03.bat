@echo off
REM Problema 3: primeste extensia fara punct.
if "%1"=="" goto :eof
dir /b *.%1

