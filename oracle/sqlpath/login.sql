------------------------------------------------------------------------------
-- $Copyright: Bruno Grossniklaus $
-- $Customer:  none $
-- $Project:   OPLS: Kurs Oracle PL/SQL Grundlagen $
-- $Code:      sqlplus 8.0 $
-- $Writer:    Bruno Grossniklaus, bruno at it-grossniklaus dot ch $
-- $Remark:     $
-- $Creation:  2011-04-30 $
------------------------------------------------------------------------------

------------------------------------------------------------------------------
-- 

ALTER SESSION SET nls_territory='SWITZERLAND';
ALTER SESSION SET nls_language='AMERICAN';
ALTER SESSION SET nls_date_format='yyyy.mm.dd hh24:mi:ss';
ALTER SESSION SET nls_date_language='GERMAN';

------------------------------------------------------------------------------
-- 
-- COLUMN table_name FORMAT A30
-- COLUMN parameter  FORMAT A30
-- COLUMN value      FORMAT A30
-- COLUMN username   FORMAT A30
--  
-- SELECT * FROM nls_session_parameters;
-- SELECT sysdate FROM DUAL;
