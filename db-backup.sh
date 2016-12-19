#!/bin/bash

#
# db-backup.sh will dump all the databases in the MITH's AWS RDS database
# instance, encrypt the dump file, and send it to Amazon S3. It is intended to 
# run every week since RDS rolling backups expire after a week.
# 
# To get this to work you'll need to:
#
# 1. Put the RDS MySQL database host, username and password in
#    /root/.my.cnf for mysql
#
# 2. Make sure that MITH's gpg key has been imported. 
#    See Box://MITH Box/MITH Server Public Keys/
#
# 3. Set AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY in the environment for the
#    the aws command line to work. Or configure it manually by calling
#    aws configure when logged in as root
#    

cd /root/db-backups/

GPG_KEY="jflidr@icloud.com"
AWS_PROFILE="max1"
S3_BUCKET="mith-db-backups"
DATE=`date +%Y-%m-%d`
DUMP_FILE="${DATE}.sql.gz.gpg"

/usr/bin/mysqldump --skip-triggers \
                   --all-databases \
                   --log-error /dev/null \
    | gzip - \
    | gpg --encrypt \
          --recipient $GPG_KEY \
          --cipher-algo AES256 \
          --output ${DUMP_FILE}

/usr/local/bin/aws \
    --quiet \
    --profile $AWS_PROFILE \
    s3 cp $DUMP_FILE s3://${S3_BUCKET}/$DUMP_FILE

rm $DUMP_FILE
