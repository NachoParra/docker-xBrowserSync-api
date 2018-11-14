#!/bin/sh
echo "creating /data"
mkdir /data
echo "creating /data/db"
mkdir /data/db
echo "intallaing nodejs mongodb npm python make"
apk add --no-cache nodejs mongodb npm python make
echo "download xbrowsersync api"
cd /
wget https://github.com/xBrowserSync/API/archive/master.zip
echo "unzip"
unzip master.zip 
echo "moving folders"
mv /API-master/* /xbrowsersync/
cd /xbrowsersync
echo "npm install"
npm install --unsafe-perm
echo "starting mongodb"
mongod &
echo "waiting 20s"
sleep 20s
echo "database init"
mongo < /xbrowsersync/db.init