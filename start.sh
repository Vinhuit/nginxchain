#!/bin/sh

/bin/sed -i "s,HOST,${TARGET_SERVER}," /etc/nginx/conf.d/default.conf
#/bin/sed -i "s/<host_placeholder>/${HOST_SERVER}/" /etc/nginx/conf.d/default.conf

/bin/sed -i "s/80/${PORT}/" /etc/nginx/conf.d/default.conf
echo $TARGET_SERVER
cat /etc/nginx/conf.d/default.conf
nginx -g "daemon off;"
