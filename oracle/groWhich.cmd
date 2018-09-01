@echo off
rem ############################################################################
rem $Copyright: Bruno Grossniklaus $
rem $Customer:  none $
rem $Project:   none $
rem $Version:   1 $
rem $Code:      cmd $
rem $Writer:    Bruno Grossniklaus $
rem $Remark:    unix which (bash type) for the hell shell $
rem $Creation:  2002-10-02 $
rem ############################################################################

setlocal

rem ############################################################################
rem check arg
if not "-%1-" == "--" goto arg_ok
echo usage:
echo %~f0 command
echo search path for command

goto end

:arg_ok
rem ############################################################################
rem search first argument in path
for /F %%i in ("%1") do set GRO_FOUND=%%~f$PATH:i
if not "-%GRO_FOUND%-" == "--" goto found

rem ############################################################################
rem not found in path 
echo no %1 in PATH
echo %PATH%
goto end

rem ############################################################################
rem found in path
:found
ECHO %GRO_FOUND%

rem ############################################################################
rem the end ...
:end

endlocal
