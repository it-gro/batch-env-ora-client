#!/usr/bin/env bash
# ##########################################################################
# $Copyright: Bruno Grossniklaus $
# $Customer:  none $
# $Project:   none $
# $Version:   1 $
# $Code:      sh $
# $Writer:    Bruno Grossniklaus $
# $Remark:    sqldeveloper helper $
# ##########################################################################


# ##########################################################################
# set config
myBase=$(realpath $(dirname $0))
#export PATH="${myBase}/$(basename $0 .sh)/bin":"$PATH"
#export TNS_ADMIN="${myBase}"
export TNS_ADMIN="${myBase}/network/admin"

# der SQL Developer hat seine eigene Einstellungen unter
#   Extras / Voreinstellungen / Datenbank / NLS
#export NLS_LANG=AMERICAN_SWITZERLAND.AL32UTF8
#export NLS_LANG=AMERICAN_SWITZERLAND.AL32UTF8
#export NLS_LANG=GERMAN_SWITZERLAND.AL32UTF8
#export NLS_LANG=AMERICAN_AMERICA.WE8ISO8859P15

# ##########################################################################
# start sqldeveloper
bash "${myBase}/$(basename $0 .sh)"/$(basename $0)
