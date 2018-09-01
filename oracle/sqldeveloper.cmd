@echo off
rem ##########################################################################
rem $Copyright: Bruno Grossniklaus $
rem $Customer:  none $
rem $Project:   none $
rem $Version:   1 $
rem $Code:      cmd $
rem $Writer:    Bruno Grossniklaus $
rem $Remark:    sqlcl helper $
rem ##########################################################################

rem ##########################################################################
rem set config
IF NOT EXIST "%~dp0\%~n0\"sqldeveloper.exe GOTO no_sqldeveloper

rem SET TNS_ADMIN=%~dp0
SET TNS_ADMIN=%~dp0\network\admin

REM SET NLS_LANG=AMERICAN_SWITZERLAND.AL32UTF8
REM SET NLS_LANG=AMERICAN_SWITZERLAND.AL32UTF8
SET NLS_LANG=GERMAN_SWITZERLAND.AL32UTF8
REM SET NLS_LANG=AMERICAN_AMERICA.WE8ISO8859P15
GOTO OK


:no_sqldeveloper
rem ##########################################################################
ECHO nicht vorhanden: %~dp0\%~n0\sqldeveloper.exe
PAUSE
exit


:OK
rem ##########################################################################
rem start
cd /d "%~dp0\%~n0"
sqldeveloper.exe
