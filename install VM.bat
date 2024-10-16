@echo off
echo Copying files... Please wait...
xcopy "%CD%\Windows 3.1 Files\" "%USERPROFILE%\Virtualbox VMs\Windows 3.1\" /E /H /I /Q /Y
xcopy "%CD%\Uninstall\" "%USERPROFILE%\Uninstall Windows 3.1\" /E /H /I /Q /Y
xcopy "%CD%\Windows 3.1 SC\" "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Windows 3.1\" /E /H /I /Q /Y
echo Finished with copying files. Now installing the VM. 
timeout /t 3 /nobreak >nul
"%USERPROFILE%\Virtualbox VMs\Windows 3.1\Windows 3.1.vbox"
"%PROGRAMFILES%\Oracle\VirtualBox\VBoxManage.exe" modifyvm "Windows 3.1" --cpu-profile="Intel 80386" --nic1=bridged
echo Finished installing the VM.
:Update
set /p Update=Do you want to install the update? (y/n)
IF %Update% == "y"(
"%CD%\update.bat"
)
IF %Update% == "n"(
timeout /t 1 /nobreak >nul
)
IF %Update% == ""(
echo Please give a input. 
goto Update
)
echo Finished. Now exiting this program.
timeout /t 2 /nobreak >nul
exit