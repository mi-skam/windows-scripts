@echo off
setlocal

:: Check if WSL is installed by attempting to run it and capture its output
wsl -l >nul 2>&1
if %ERRORLEVEL% equ 0 (
    wsl %*
) else (
    echo Error: Command failed with error code %ERRORLEVEL%. (wsl not installed?)
)