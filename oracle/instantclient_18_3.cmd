@echo off
rem ##########################################################################
rem $Copyright: Bruno Grossniklaus $
rem $Customer:  none $
rem $Project:   none $
rem $Version:   1 $
rem $Code:      cmd $
rem $Writer:    Bruno Grossniklaus $
rem $Remark:    instantclient helper $
rem ##########################################################################

rem ##########################################################################
rem set config
SET PATH=%~dp0\%~n0;%PATH%
rem SET TNS_ADMIN=%~dp0
SET TNS_ADMIN=%~dp0\network\admin

REM SET NLS_LANG=AMERICAN_SWITZERLAND.AL32UTF8
REM SET NLS_LANG=AMERICAN_SWITZERLAND.AL32UTF8
SET NLS_LANG=GERMAN_SWITZERLAND.AL32UTF8
REM SET NLS_LANG=AMERICAN_AMERICA.WE8ISO8859P15

rem http://en.wikipedia.org/wiki/Code_page
rem chcp 437
rem chcp 850
rem chcp 1252
chcp 65001

rem ##########################################################################
rem start shell
cmd.exe
