@echo off
echo Copying files... Please wait...
xcopy "%CD%\Uninstall\" "%USERPROFILE%\Uninstall Windows 3.1\" /E /H /I /Q /Y
xcopy "%CD%\Windows 3.1 SC\" "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\" /E /H /I /Q /Y
echo Finished. Now exiting this program.
timeout /t 2 /nobreak >nul
exit