#!/bin/sh
export XBROWSERSYNC_DB_USER=xbrowsersyncdb
export XBROWSERSYNC_DB_PWD=xbrowsersyncdb
alias ll='ls -AlF'
mongod &
sleep 20s
node /xbrowsersync/dist/api.js