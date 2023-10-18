@echo off
title Coordinate Converter by Nehan

:menu
echo == Coordinate Converter ==
echo 1. Convert to End Dimension
echo 2. Convert to Nether Dimension
echo 3. Exit
echo.

set /p choice=Enter your choice (1/2/3): 

if "%choice%"=="" (
    echo Please make a valid selection.
    goto menu
)

if "%choice%"=="1" (
    goto end_conversion
) else if "%choice%"=="2" (
    goto nether_conversion
) else if "%choice%"=="3" (
    exit
) else (
    echo Invalid choice. Please enter 1, 2, or 3.
    goto menu
)

:end_conversion
cls
echo == End Dimension ==
set /p x_overworld=Enter the X coordinate in the Overworld: 
set /p z_overworld=Enter the Z coordinate in the Overworld: 

set /a x_end=x_overworld
set /a z_end=z_overworld

echo End Coordinates: X=%x_end%, Z=%z_end%
echo Watermark: Made by Nehan
pause
goto menu

:nether_conversion
cls
echo == Nether Dimension ==
set /p x_overworld=Enter the X coordinate in the Overworld: 
set /p z_overworld=Enter the Z coordinate in the Overworld: 

set /a x_nether=x_overworld / 8
set /a z_nether=z_overworld / 8

echo Nether Coordinates: X=%x_nether%, Z=%z_nether%
echo Watermark: Made by Nehan
pause
goto menu
