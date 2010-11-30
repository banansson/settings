@echo off

rem mklink requires admin rights or the SeCreateSymbolicLinkPrivilege
rem which can be changed in the securiy policy.

setlocal
set src=%~dp0
set dst=%HOMEDRIVE%%HOMEPATH%\
mklink /J "%dst%vimfiles" "%src%"
mklink "%dst%_vimrc" "%src%vimrc"
