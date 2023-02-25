#!/bin/bash

# crontab -e
# */1 * * * * bash ~/trace.moe/mongodb-restart.sh

netstat -anop | grep 0.0.0.0:27017
if [ $? -ne 1 ]
then
echo $(date +%T%n%F)" Mongodb Services alive " >> ~/trace.moe/mongodb.log
exit
fi

echo $(date +%T%n%F)" Restart mongodb Services " >> ~/trace.moe/mongodb.log

docker restart tracemoe_mongo_1

