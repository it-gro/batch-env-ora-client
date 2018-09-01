#!/bin/bash
# ##########################################################################
# $Copyright: Bruno Grossniklaus $
# $Customer:  none $
# $Project:   none $
# $Version:   1 $
# $Code:      cmd $
# $Writer:    Bruno Grossniklaus $
# $Remark:    instantclient helper $
# $Creation:  $
# ##########################################################################
# $Date:      $
# $Id:        $
# ##########################################################################


# ##########################################################################
# set config
cd $(dirname $0)
export PATH="$(pwd)/$(basename $0 .sh)":"$PATH"
export LD_LIBRARY_PATH="$(pwd)/$(basename $0 .sh)":"$LD_LIBRARY_PATH"
export TNS_ADMIN="$(pwd)"
cd -

#export NLS_LANG=AMERICAN_SWITZERLAND.AL32UTF8
#export NLS_LANG=AMERICAN_SWITZERLAND.AL32UTF8
 export NLS_LANG=GERMAN_SWITZERLAND.AL32UTF8
#export NLS_LANG=AMERICAN_AMERICA.WE8ISO8859P15

# ##########################################################################
# start shell
bash
