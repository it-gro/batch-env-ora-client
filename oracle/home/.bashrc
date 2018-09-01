
# add to $HOME/.bashrc

if [ -z "${myORAENV}" ]; then
    export myORAENV=1

    source /u01/app/oracle/product/11.2.0/xe/bin/oracle_env.sh

    if [ -f "${HOME}/.rlwrap/alias.rlwrap" ]; then
        source "${HOME}/.rlwrap/alias.rlwrap"
    fi

    for myBIN in                           \
        /usr/lib/oracle/12.2/client64/bin  \
        /opt/instantclient_12_2            \
        /opt/sqlcl/bin                     \
        /opt/sqldeveloper/sqldeveloper/bin \
        ; do
        if [ -d "${myBIN}" ]; then
            if echo "${PATH}" | grep -v "${myBIN}" > /dev/null; then
                export PATH="${myBIN}:${PATH}"   # prepend
                #export PATH="${PATH}:${myBIN}"  # append
                #echo added "${myBIN}"
            fi
        fi
    done

    for myLIB in                           \
        /usr/lib/oracle/12.2/client64/lib  \
        /opt/instantclient_12_2            \
        ; do
        if [ -d "${myLIB}" ]; then
            if echo "${LD_myLIBRARY_PATH}" | grep -v "${myLIB}" > /dev/null; then
                export LD_myLIBRARY_PATH="${myLIB}:${LD_myLIBRARY_PATH}"   # prepend
                #export LD_myLIBRARY_PATH="${LD_myLIBRARY_PATH}:${myLIB}"  # append
                #echo added "${myLIB}"
            fi
        fi
    done

    myTNS_CANDIDATE=/opt/oracle/network/admin/
    if [ -e ${myTNS_CANDIDATE}/tnsnames.ora ]; then
        export TNS_ADMIN=${myTNS_CANDIDATE}
        # echo TNS_ADMIN now: "${TNS_ADMIN}"
    fi

fi
