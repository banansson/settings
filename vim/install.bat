@echo off

rem mklink requires admin rights or the SeCreateSymbolicLinkPrivilege
rem which can be changed in the securiy policy.

setlocal
set src=%~dp0
set dst=%HOMEDRIVE%%HOMEPATH%\
rem mklink /J "%dst%vimfiles" "%src%"
rem mklink "%dst%_vimrc" "%src%vimrc"