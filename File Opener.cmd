@echo off
color 0B
mode con:cols=80 lines=20
title File Opener by @FreeLicense4All"
::-------------------------------------------------------------------------------
"%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system" >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo Requesting administrative privileges to start process...
    echo Set UAC = CreateObject^("Shell.Application"^) > "%TEMP%\uac.vbs"
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%TEMP%\uac.vbs"
    "%TEMP%\uac.vbs"
    del /q /f "%TEMP%\uac.vbs"
    exit /b
) else (
    GOTO UAC2
)
:UAC2
IF EXIST "%TEMP%\uac.vbs" (del /q /f "%TEMP%\uac.vbs")
pushd %CD% & CD /d %~dp0
::-------------------------------------------------------------------------------
@echo.
@echo.
@echo.
@echo    //////////////////////////////////////////////////////////////
@echo    /                                                            /
@echo    /           Internet Download Manager Activator              /
@echo    /                                                            /
@echo    /                  Dont close this window                    /
@echo    /                                                            /
@echo    /               Join Tg ID: @FreeLicense4All                 /
@echo    /                                                            /
@echo    //////////////////////////////////////////////////////////////
@echo.
@echo	Check opens a new window to activate IDM.
@echo off
FOR %%i IN ("IDM*.exe") DO Set FileName="%%i"
@echo.
@echo Process:
@echo		1. Recommend to uncheeck IDM Update 
@echo		2. Click on Crack button.
@echo		3. Close and you are done.
:: Start the installation in the background
start "" /wait %FileName% /VERYSILENT
@echo you have activated IDM.
start "" "https://t.me/FreeLicense4All"