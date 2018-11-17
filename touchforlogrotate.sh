#!/bin/bash

DIR=`echo $(cd "$(dirname "$0")"; pwd)`
LOGDIR="${DIR}/logs"

sourcelogpath="${DIR}/mxonline_uwsgi.log"
touchfile="${DIR}/.touchforlogrotate"


DATE=`date +"%Y%m%d_%H%M%S"`
echo $DATE
destlogpath="${LOGDIR}/mxonline_uwsgi_${DATE}.log"

mv $sourcelogpath $destlogpath
touch $touchfile