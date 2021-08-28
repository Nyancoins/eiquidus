#! /bin/bash

RC=1
while [ $RC -eq 1 ]
do
    echo "mongoadmin" | mongo -u mongoadmin -p  --authenticationDatabase admin --eval "db.createUser( { user: \"eiquidus\", pwd: \"Retrial-Silly4-Essence\", roles: [ \"readWrite\" ] } )" mongodb:27017/explorerdb
    RC=$?
    sleep 1
done
npm run prestart
npm run start
