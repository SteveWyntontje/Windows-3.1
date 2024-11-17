@echo off
echo Requesting the deletion of VirtualBox... Please wait...
:Delete VBox
set /p Delete_VBox=Do you want to delete VirtualBox? (y/n)
IF %Delete VBox% == "y" (
taskkill /IM VBox*.exe
taskkill /IM VirtualBox*.exe
MsiExec.exe /I{95DEBF01-7029-4E37-BDB1-94EFEA3B263C}
)
IF %Delete_VBox% == "n" (
timeout /t 1 /nobreak >nul
)
IF %Delete_VBox% == "" (
echo Please give an input. 
goto Delete VBox
)
echo Finished. Now requesting the deletion of the VM...
:Delete VM
set /p Delete_VM=Do you want to delete Windows 3.1? (y/n)
IF %Delete_VM% == "y" (
RMDIR /S /Q "%USERPROFILE%\Virtualbox VMs\Windows 3.1"
RMDIR /S /Q "%USERPROFILE%\Uninstall Windows 3.1"
RMDIR /S /Q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Windows 3.1"
)
IF %Delete_VM% == "n" (
timeout /t 1 /nobreak >nul
)
IF %Delete_VM% == "" (
echo Please give an input. 
goto Delete VM
)
echo Finished with deleting files. 
echo Now exiting this program.
timeout /t 2 /nobreak >nul
exit