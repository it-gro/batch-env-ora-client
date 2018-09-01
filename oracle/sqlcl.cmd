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
SET PATH=%~dp0\%~n0\bin;%PATH%
SET JAVA_HOME=%~dp0\sqldeveloper\jdk\jre
IF NOT EXIST %JAVA_HOME%\bin\java.exe GOTO no_sqldeveloper
SET PATH=%JAVA_HOME%\bin;%PATH%

SET TNS_ADMIN=%~dp0

REM SET NLS_LANG=AMERICAN_SWITZERLAND.AL32UTF8
REM SET NLS_LANG=AMERICAN_SWITZERLAND.AL32UTF8
SET NLS_LANG=GERMAN_SWITZERLAND.AL32UTF8
REM SET NLS_LANG=AMERICAN_AMERICA.WE8ISO8859P15

rem http://en.wikipedia.org/wiki/Code_page
rem chcp 437
rem chcp 850
rem chcp 1252
chcp 65001
GOTO OK


:no_sqldeveloper
rem ##########################################################################
ECHO nicht vorhanden: %JAVA_HOME%\bin\java.exe
PAUSE
exit


:OK
rem ##########################################################################
rem start shell
cmd.exe
