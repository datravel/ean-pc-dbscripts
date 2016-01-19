#!/bin/sh

. ./config.sh

CREATE_SQL=$(mktemp --suffix _create_eanprod.sql)

sed -e "s/eanprod/\`$MYSQL_DB\`/g" MySQL/MySQL_create_eanprod.sql > $CREATE_SQL

CMD_MYSQL="${MYSQL_DIR}mysql  --local-infile=1 --default-character-set=utf8 --protocol=${MYSQL_PROTOCOL} --port=${MYSQL_PORT} --user=${MYSQL_USER} --password=${MYSQL_PASS} --host=${MYSQL_HOST} --database=${MYSQL_DB}"

cat $CREATE_SQL | $CMD_MYSQL

rm $CREATE_SQL
