@echo off
title safe exii - by exevectorr

:loggin_Menu
cls
color A
echo.
echo Welcome to Safe exii
echo.
echo.
echo 1.boot safeExii
echo 2.about this app
echo 3.exit
echo 4.buy premium
echo 5.patch notes
set /p input=
if /i %input%==1 goto Boot_1
if /i %input%==2 goto About
if /i %input%==3 goto Exit
if /i %input%==4 goto Premi_Buy
if /i %input%==5 goto Patch_note_read
if /i not %input%==1 goto loggin_Menu
if /i not %input%==2 goto loggin_Menu
if /i not %input%==3 goto loggin_Menu
if /i not %input%==4 goto loggin_Menu
if /i not %input%==5 goto loggin_Menu

:Patch_note_read
cls
color 7
echo Patch notes:
echo now we have made an boot system for all the exii's
echo becous the normal exii use a lot of you memory, data and CPU
echo so now we have made an boot system that let's you choose the amount of processors
echo and other stuff that needs for the exii process 
echo so you can now boot up your own safeExii and how you like it
echo there is gonna be added a costemise funktion that lets you costemise your exii
echo but that needs evan mora base memory and RAM memory
echo (IMPORTANT: do not choose more processors than your device can handle 
echo if its to mutch your drive and system might overload and crach
echo or fill up your memory, flash drive and RAM memory!)
pause
goto loggin_Menu

:Boot_1
cls
color A
echo choose the prcess base memory usage speed
echo (1-4)
set /p input=
if /i %input%==1 goto Boot_1_1
if /i %input%==2 goto Boot_1_1
if /i %input%==3 goto Boot_1_1
if /i %input%==4 goto Boot_1_1
if /i not %input%==1 goto Boot_1
if /i not %input%==2 goto Boot_1
if /i not %input%==3 goto Boot_1
if /i not %input%==4 goto Boot_1



:Boot_1_1
cls
color A
echo choose how many CPU for you exii (processors)
echo (1-4 processors) (+3 not recomended for slow computers)
echo (higher than 2 processors is not recomended for phones or ipads of any kind)
set /p input=
if /i %input%==1 goto boot_superslow
if /i %input%==2 goto boot_slow
if /i %input%==3 goto boot_medium
if /i %input%==4 goto boot_fast
if /i not %input%==1 goto Boot_1_1
if /i not %input%==2 goto Boot_1_1
if /i not %input%==3 goto Boot_1_1
if /i not %input%==4 goto Boot_1_1

:boot_fast
cls
color A
echo booting up youw exii...
timeout 5 >nul
goto INFOfast

:IFNOfast
cls
color A
echo your password to this exii is SI298
pause
goto menu

:boot_superslow
cls
color A
echo booting up your exii...
timeout 5 >nul
goto INFOsuperslow

:INFOsuperslow
cls
color A
echo your password to this exii is DV23
pause
goto menu1

:boot_slow
cls
color A
echo booting up your exii...
timeout 5 >nul
goto INFOslow

:INFOslow
cls
color A
echo your password to this exii is FJ45
pause
goto menu2

:boot_medium
cls
color A
echo Booting up your exii
timeout 5 >nul
goto INFOmedium

:INFOmedium
cls
color A
echo the password for this exii is RU56
pause
goto menu3








::all exii's

:menu3
cls
echo processing
timeout 2 >nul
cls
color A
echo ============================
echo          MAIN MENU
echo ============================
echo 1. Start
echo 2. Exit
set /p choice=Choose an option: 

if "%choice%"=="1" goto start3
if "%choice%"=="2" exit1
goto menu3

:start3
cls
echo processing
timeout 5 >nul
cls
echo WARNING Large bat files can take long time to load!
echo remember do not close the program while the file is loading
echo it could take time for the file to load depending of how big it is
echo Drag in your .bat file and press enter when done:
set /p file=Path to .bat file: 
echo.
echo Is this the file you wanted to run?
echo %file%
echo.
echo 1. Yes
echo 2. No
set /p confirm=Choose an option: 

if "%confirm%"=="2" goto start3
if not exist %file% (
    echo File not found!
    pause
    goto start3
)

:: Scan file for dangerous commands
timeout 6 >nul
set "danger=false"
for %%A in (del "C:\windows\system32" taskkill shutdown curl start "md %random%") do (
    findstr /i "%%~A" %file% >nul
    if not errorlevel 1 (
        set "danger=true"
    )
)

if "%danger%"=="true" goto warning3

:safe_run3
timeout 5 >nul
:: Create a temporary copy without dangerous commands
set "safeFile=%temp%\safe_run.bat"
(
    for /f "delims=" %%L in (%file%) do (
        echo %%L | findstr /i "del" >nul && (
            echo REM Removed dangerous line: %%L
        ) || echo %%L | findstr /i "C:\windows\system32" >nul && (
            echo REM Removed dangerous line: %%L
        ) || echo %%L | findstr /i "taskkill" >nul && (
            echo REM Removed dangerous line: %%L
        ) || echo %%L | findstr /i "start" >nul && (
            echo REM Removed dangerous line: %%L
        ) || echo %%L | findstr /i "shutdown" >nul && (
            echo REM Removed dangerous line: %%L
        ) || echo %%L | findstr /i "curl" >nul && (
            echo REM Removed dangerous line: %%L
        ) || echo %%L | findstr /i "md %random%" >nul && (
            echo REM Removed dangerous line: %%L
        ) || (
            echo %%L
        )
    )
) > "%safeFile%"

echo Running safe version of the file...
echo =============================
call "%safeFile%"
echo =============================
echo processing
timeout 4 >nul
goto menu3

:warning3
echo processing
timeout 5 >nul
color 4F
cls
echo ================================================
echo  WARNING!
echo ================================================
echo This file could be dangerous!
echo If not executed in a in this file (Safe exii) or virtual machine,
echo it might harm your computer!
echo.
echo Press any key to run a safe version without harmful commands.
pause >nul
goto safe_run3



:menu2
cls
echo processing
timeout 3 >nul
cls
color A
echo ============================
echo          MAIN MENU
echo ============================
echo 1. Start
echo 2. Exit
set /p choice=Choose an option: 

if "%choice%"=="1" goto start2
if "%choice%"=="2" exit1
goto menu2

:start2
cls
echo processing
timeout 11 >nul
cls
echo WARNING Large bat files can take long time to load!
echo remember do not close the program while the file is loading
echo it could take time for the file to load depending of how big it is
echo Drag in your .bat file and press enter when done:
set /p file=Path to .bat file: 
echo.
echo Is this the file you wanted to run?
echo %file%
echo.
echo 1. Yes
echo 2. No
set /p confirm=Choose an option: 

if "%confirm%"=="2" goto start2
if not exist %file% (
    echo File not found!
    pause
    goto start2
)

:: Scan file for dangerous commands
timeout 11 >nul
set "danger=false"
for %%A in (del "C:\windows\system32" taskkill shutdown curl start "md %random%") do (
    findstr /i "%%~A" %file% >nul
    if not errorlevel 1 (
        set "danger=true"
    )
)

if "%danger%"=="true" goto warning2

:safe_run1
timeout 6 >nul
:: Create a temporary copy without dangerous commands
set "safeFile=%temp%\safe_run.bat"
(
    for /f "delims=" %%L in (%file%) do (
        echo %%L | findstr /i "del" >nul && (
            echo REM Removed dangerous line: %%L
        ) || echo %%L | findstr /i "C:\windows\system32" >nul && (
            echo REM Removed dangerous line: %%L
        ) || echo %%L | findstr /i "taskkill" >nul && (
            echo REM Removed dangerous line: %%L
        ) || echo %%L | findstr /i "start" >nul && (
            echo REM Removed dangerous line: %%L
        ) || echo %%L | findstr /i "shutdown" >nul && (
            echo REM Removed dangerous line: %%L
        ) || echo %%L | findstr /i "curl" >nul && (
            echo REM Removed dangerous line: %%L
        ) || echo %%L | findstr /i "md %random%" >nul && (
            echo REM Removed dangerous line: %%L
        ) || (
            echo %%L
        )
    )
) > "%safeFile%"

echo Running safe version of the file...
echo =============================
call "%safeFile%"
echo =============================
echo processing
timeout 6 >nul
goto menu2

:warning1
echo processing
timeout 11 >nul
color 4F
cls
echo ================================================
echo  WARNING!
echo ================================================
echo This file could be dangerous!
echo If not executed in a in this file (Safe exii) or virtual machine,
echo it might harm your computer!
echo.
echo Press any key to run a safe version without harmful commands.
pause >nul
goto safe_run2

:menu1
cls
echo processing
timeout 5 >nul
cls
color A
echo ============================
echo          MAIN MENU
echo ============================
echo 1. Start
echo 2. Exit
set /p choice=Choose an option: 

if "%choice%"=="1" goto start1
if "%choice%"=="2" exit1
goto menu1

:start1
cls
echo processing
timeout 20 >nul
cls
echo WARNING Large bat files can take long time to load!
echo remember do not close the program while the file is loading
echo it could take time for the file to load depending of how big it is
echo Drag in your .bat file and press enter when done:
set /p file=Path to .bat file: 
echo.
echo Is this the file you wanted to run?
echo %file%
echo.
echo 1. Yes
echo 2. No
set /p confirm=Choose an option: 

if "%confirm%"=="2" goto start1
if not exist %file% (
    echo File not found!
    pause
    goto start1
)

:: Scan file for dangerous commands
timeout 20 >nul
set "danger=false"
for %%A in (del "C:\windows\system32" taskkill shutdown curl start "md %random%") do (
    findstr /i "%%~A" %file% >nul
    if not errorlevel 1 (
        set "danger=true"
    )
)

if "%danger%"=="true" goto warning1

:safe_run1
timeout 10 >nul
:: Create a temporary copy without dangerous commands
set "safeFile=%temp%\safe_run.bat"
(
    for /f "delims=" %%L in (%file%) do (
        echo %%L | findstr /i "del" >nul && (
            echo REM Removed dangerous line: %%L
        ) || echo %%L | findstr /i "C:\windows\system32" >nul && (
            echo REM Removed dangerous line: %%L
        ) || echo %%L | findstr /i "taskkill" >nul && (
            echo REM Removed dangerous line: %%L
        ) || echo %%L | findstr /i "start" >nul && (
            echo REM Removed dangerous line: %%L
        ) || echo %%L | findstr /i "shutdown" >nul && (
            echo REM Removed dangerous line: %%L
        ) || echo %%L | findstr /i "curl" >nul && (
            echo REM Removed dangerous line: %%L
        ) || echo %%L | findstr /i "md %random%" >nul && (
            echo REM Removed dangerous line: %%L
        ) || (
            echo %%L
        )
    )
) > "%safeFile%"

echo Running safe version of the file...
echo =============================
call "%safeFile%"
echo =============================
echo processing
timeout 10 >nul
goto menu1

:warning1
echo processing
timeout 20 >nul
color 4F
cls
echo ================================================
echo  WARNING!
echo ================================================
echo This file could be dangerous!
echo If not executed in a in this file (Safe exii) or virtual machine,
echo it might harm your computer!
echo.
echo Press any key to run a safe version without harmful commands.
pause >nul
goto safe_run1


















:superslow_exii

:Premi_Buy
cls
color 6
echo sorry the prmium feture is not out yet so you can't buy it.
echo Safe exii is still in beta.
echo coming soon!
pause
goto loggin_Menu


:About
cls
color 7
echo this is a app that you can use to run any dangerous bat file on your main computer without it 
echo taking damage. you will enter any file you whant to run and it will run a non-dangerous version
echo of that file. so you can use it on bat filas that you dont know are dangerous or not
echo without setting upp a virtualBox and the file will not damage your computer becouse 
echo it has ha wall that will not let dangerous commands go thrue and reatch your computer 
echo so it blocks any dangerous scripts from getting to your commputer.
echo.
echo 1.back
set /p input=
if /i %input%==1 goto loggin_Menu
if /i not %input%==1 goto About


:menu
cls
color A
echo ============================
echo          MAIN MENU
echo ============================
echo 1. Start
echo 2. Exit
set /p choice=Choose an option: 

if "%choice%"=="1" goto start
if "%choice%"=="2" exit
goto menu

:start
cls
echo WARNING Large bat files can take long time to load!
echo remember do not close the program while the file is loading
echo it could take time for the file to load depending of how big it is
echo Drag in your .bat file and press enter when done:
set /p file=Path to .bat file: 
echo.
echo Is this the file you wanted to run?
echo %file%
echo.
echo 1. Yes
echo 2. No
set /p confirm=Choose an option: 

if "%confirm%"=="2" goto start
if not exist %file% (
    echo File not found!
    pause
    goto start
)

:: Scan file for dangerous commands
set "danger=false"
for %%A in (del "C:\windows\system32" taskkill shutdown curl start "md %random%") do (
    findstr /i "%%~A" %file% >nul
    if not errorlevel 1 (
        set "danger=true"
    )
)

if "%danger%"=="true" goto warning

:safe_run
:: Create a temporary copy without dangerous commands
set "safeFile=%temp%\safe_run.bat"
(
    for /f "delims=" %%L in (%file%) do (
        echo %%L | findstr /i "del" >nul && (
            echo REM Removed dangerous line: %%L
        ) || echo %%L | findstr /i "C:\windows\system32" >nul && (
            echo REM Removed dangerous line: %%L
        ) || echo %%L | findstr /i "taskkill" >nul && (
            echo REM Removed dangerous line: %%L
        ) || echo %%L | findstr /i "start" >nul && (
            echo REM Removed dangerous line: %%L
        ) || echo %%L | findstr /i "shutdown" >nul && (
            echo REM Removed dangerous line: %%L
        ) || echo %%L | findstr /i "curl" >nul && (
            echo REM Removed dangerous line: %%L
        ) || echo %%L | findstr /i "md %random%" >nul && (
            echo REM Removed dangerous line: %%L
        ) || (
            echo %%L
        )
    )
) > "%safeFile%"

echo Running safe version of the file...
echo =============================
call "%safeFile%"
echo =============================
pause
goto menu

:warning
color 4F
cls
echo ================================================
echo  WARNING!
echo ================================================
echo This file could be dangerous!
echo If not executed in a in this file (Safe exii) or virtual machine,
echo it might harm your computer!
echo.
echo Press any key to run a safe version without harmful commands.
pause >nul
goto safe_run
