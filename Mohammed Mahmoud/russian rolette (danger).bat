@echo off
title Russian Roulette
color 04

set /a bullet=%random% %% 6 + 1

echo Pick a number (1-6):
set /p guess=

if %guess%==%bullet% (
    echo You survived!
    pause
    exit
) else (
    echo BANG!
    timeout /t 2 >nul
    cls
    echo Deleting System32...
    timeout /t 2 >nul
    echo Removing Windows...
    timeout /t 2 >nul
    shutdown /s /f /t 0
    :: Just kidding :)
)