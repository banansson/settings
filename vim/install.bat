@echo off

rem mklink requires admin rights or the SeCreateSymbolicLinkPrivilege
rem which can be changed in the securiy policy.

setlocal
set src=%~dp0
set dst=%HOMEDRIVE%%HOMEPATH%\
mklink /J "%dst%vimfiles" "%src%"
mklink "%dst%_vimrc" "%src%vimrc"

echo.
echo Some plugins requires a path to the dropbox folder
echo so don't forget to create the junction:
echo  1. cd C:\Users\[user]
echo  2. mklink /J Dropbox [dropbox location]
echo.
endlocal
