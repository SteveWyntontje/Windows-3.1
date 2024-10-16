:: Copyright (C) Wynton de Kort. 
:: Any questions about this program can be asked to the Copyrightholder. 
:: This Program un-installs Windows 3.1 and/or VirtualBox. 
:: VirtualBox is a Program owned by Oracle. 
:: Wynton de Kort is not affiliated with Oracle. 
@echo off
echo Killing the VirtualBox Process...
taskkill /F /IM "%PROGRAMFILES%\Oracle\VirtualBox\*.exe"
echo Requesting the deletion of VirtualBox... Please wait...
RMDIR /S "%PROGRAMFILES%\Oracle\VirtualBox\"
echo Finished. Now requesting the deletion of the VM...
RMDIR /S "%USERPROFILE%\Virtualbox VMs\Windows 3.1" 
echo Finished with deleting files. 
echo Now exiting this program.
timeout /t 1 /nobreak >nul
exit