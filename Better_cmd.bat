@echo off
chcp 65001 >nul
goto banner

:banner
echo [38;5;196m   ___ __  __ ___   [0m
echo [38;5;202m  / __│  \/  │   \ [0m
echo [38;5;208m │ (__│ │\/│ │ │) │[0m
echo [38;5;214m  \___│_│  │_│___/ [0m
echo.
echo.
echo Windows UserName = %username%
for /f "tokens=2 delims=:" %%A in ('ipconfig ^| findstr /R "IPv4.*"') do (
    set "ip=%%A"
    goto :trim
)

:trim
:: Trim leading spaces
for /f "tokens=* delims= " %%B in ("%ip%") do set "ip=%%B"
echo IP = %ip%
echo.
echo.
echo.
set /p choice=Dir│ %cd% │^> 
pause