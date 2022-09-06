#!/bin/sh

source .env

echo "-host ${HOST}:${PORT} -db ${DB} -u ${USER} -p ${PASSWORD}"

docker run \
  -v $PWD/output:/output \
  --net=host \
  schemaspy/japanese:ipaexg00201 \
  -v $PWD/output:/output \
  -v $PWD/schemaspy.properties:/schemaspy.properties \
  -t ${DBTYPE} \
  -host ${HOST}:${PORT} -db ${DB} -u ${USER} -p ${PASSWORD} -s ${DB}
