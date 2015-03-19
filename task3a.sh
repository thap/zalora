#!/bin/bash
DIR='/home/Marketing Report/Data/'
HOST=10.11.12.13
PORT=22
USER=helloFTP
PASSWD=world
FILES=webtrekk_marketing*
ftp -n ftp://$USER:$PASSWD@$HOST:$PORT <<END
mget $FILES
bye
END
mv $FILES $DIR

SCRIPT_DIR='/home/Marketing Report/Scripts/'

PY_SCRIPT=ZMR.py
python ${SCRIPT_DIR}${PY_SCRIPT}

DBHOST=10.11.12.13
DBPORT=5439
DB=zalora
DBUSER=helloDB
DBPASSWD=world
SQL_SCRIPT=UpdateWebtrekk.sql
echo $DBPASSWD > ~/.pgpass
psql -h $DBHOST -p $DBPORT -d $DB -U $DBUSER -w -f ${SCRIPT_DIR}${SQL_SCRIPT}
