#!/usr/bin/env bash
# ##########################################################################
# $Copyright: Bruno Grossniklaus $
# $Customer:  none $
# $Project:   none $
# $Version:   1 $
# $Code:      sh $
# $Writer:    Bruno Grossniklaus $
# $Remark:    sqlcl helper $
# ##########################################################################


# ##########################################################################
# set config
myBase=$(realpath $(dirname $0))
export PATH="${myBase}/$(basename $0 .sh)/bin":"$PATH"
export LD_LIBRARY_PATH="${myBase}/$(basename $0 .sh)/lib":"$LD_LIBRARY_PATH"
#export TNS_ADMIN="${myBase}"
export TNS_ADMIN="${myBase}/network/admin"

#export NLS_LANG=AMERICAN_SWITZERLAND.AL32UTF8
#export NLS_LANG=AMERICAN_SWITZERLAND.AL32UTF8
 export NLS_LANG=GERMAN_SWITZERLAND.AL32UTF8
#export NLS_LANG=AMERICAN_AMERICA.WE8ISO8859P15

# ##########################################################################
# start shell
bash  # --norc --noprofile
