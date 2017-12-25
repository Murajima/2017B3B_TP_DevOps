#!/bin/bash
set -e
cd /usr/src/app/
echo "---> Starting in DEV mode"
NODE_ENV=development MONGO_HOST=52.11.192.36 MONGO_USER=root MONGO_DATABASE=test MONGO_PASSWORD=123456 node app.js

exit 0;
