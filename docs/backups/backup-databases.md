# Backup databases

Backing up your databases are important, in case something happens to your server.

## Setup S3

First you should setup an S3 bucket. This can be done both on Digital Ocean and AWS.

When you have setup an S3 bucket. You should setup s3cmd. For setting it up on Digital Ocean, follow this guide: [https://www.digitalocean.com/docs/spaces/resources/s3cmd/](https://www.digitalocean.com/docs/spaces/resources/s3cmd/)

## Create a backup script (PostgreSQL)

Login to your server through SSH, and create a file called `backup.sh`

You can use the following script with minor changes. The changes are added as comments in the script.

```bash
# Change MY_APP to your app name
mkdir -p /home/red/backup/db/MY_APP

# Change MY_CONNECT_URL to the connect URL for your postgresql DB
# Change MY_APP to your app name
pg_dump --dbname=MY_CONNECT_URL | gzip > /home/red/backup/db/MY_APP/$(date +%Y-%m-%d).psql.gz

# Change MY_APP to your app name (twice)
s3cmd put /root/backup/db/MY_APP/$(date +%Y-%m-%d).psql.gz s3://red-production-backup/database/MY_APP/
```

With this you can also easily backup multiple databases to different locations.

## Create a backup script (MySQL)

**Coming soon**