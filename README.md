# trace.moe

[![License](https://img.shields.io/github/license/soruly/trace.moe.svg?style=flat-square)](https://github.com/soruly/trace.moe/blob/master/LICENSE)
[![Discord](https://img.shields.io/discord/437578425767559188.svg?style=flat-square)](https://discord.gg/K9jn6Kj)

Anime Scene Search Engine

Trace back the scene where an anime screenshots is taken from.

It tells you which anime, which episode, and the exact moment this scene appears.

![](demo-result.jpg)

Try this image yourself.

![](demo.jpg)

## Web Integrations

Link to trace.moe from other websites, you can pass image URL in query string like this:

```
https://trace.moe/?url=http://searchimageurl
```

## trace.moe API

For Bots/Apps, refer to https://soruly.github.io/trace.moe-api/

## System Overview

This repo is just an index page for the whole trace.moe system. It consists of different parts as below:

![](overview.png)

Client-side (gray parts):

- [trace.moe-www](https://github.com/soruly/trace.moe-www) - web server serving the webpage [trace.moe](https://trace.moe)
- [trace.moe-WebExtension](https://github.com/soruly/trace.moe-WebExtension) - browser add-ons to help copying and pasting images
- [trace.moe-telegram-bot](https://github.com/soruly/trace.moe-telegram-bot) - official Telegram Bot

Server-side (blue and red parts):

- [trace.moe-api](https://github.com/soruly/trace.moe-api) - API server for image search and database updates
- [trace.moe-media](https://github.com/soruly/trace.moe-media) - media server for video storage and scene preview generation
- [LireSolr](https://github.com/soruly/liresolr) - image analysis and search plugin for Solr
- [trace.moe-worker](https://github.com/soruly/trace.moe-worker) - includes hasher, loader and watcher

Others:

- [anilist-crawler](https://github.com/soruly/anilist-crawler) - getting anilist info and store in mariaDB
- [slides](https://github.com/soruly/slides) - past presentation slides on the project

## Hosting your own trace.moe system

You're going to need these docker images.

| Parts                                                                  | Docker CI Build                                                                                                                                                                              | Docker Image                                                                                                                                                                                                  |
| ---------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [MariaDB](https://mariadb.org/)                                        |                                                                                                                                                                                              | [![Docker Image Size](https://img.shields.io/docker/image-size/_/mariadb/latest?style=flat-square)](https://hub.docker.com/_/mariadb)                                                                         |
| [Adminer](https://www.adminer.org/)                                    |                                                                                                                                                                                              | [![Docker Image Size](https://img.shields.io/docker/image-size/_/adminer/latest?style=flat-square)](https://hub.docker.com/_/adminer)                                                                         |
| [redis](https://redis.io/)                                             |                                                                                                                                                                                              | [![Docker Image Size](https://img.shields.io/docker/image-size/_/redis/latest?style=flat-square)](https://hub.docker.com/_/redis)                                                                             |
| [liresolr](https://github.com/soruly/liresolr)                         | [![GitHub Workflow Status](https://img.shields.io/github/workflow/status/soruly/liresolr/Docker%20Image%20CI?style=flat-square)](https://github.com/soruly/liresolr/actions)                 | [![Docker Image Size](https://img.shields.io/docker/image-size/soruly/liresolr/latest?style=flat-square)](https://github.com/soruly/liresolr/pkgs/container/liresolr)                                         |
| [trace.moe-www](https://github.com/soruly/trace.moe-www)               | [![GitHub Workflow Status](https://img.shields.io/github/workflow/status/soruly/trace.moe-www/Docker%20Image%20CI?style=flat-square)](https://github.com/soruly/trace.moe-www/actions)       | [![Docker Image Size](https://img.shields.io/docker/image-size/soruly/trace.moe-www/latest?style=flat-square)](https://github.com/soruly/trace.moe-www/pkgs/container/trace.moe-www)                          |
| [trace.moe-api](https://github.com/soruly/trace.moe-api)               | [![GitHub Workflow Status](https://img.shields.io/github/workflow/status/soruly/trace.moe-api/Docker%20Image%20CI?style=flat-square)](https://github.com/soruly/trace.moe-api/actions)       | [![Docker Image Size](https://img.shields.io/docker/image-size/soruly/trace.moe-api/latest?style=flat-square)](https://github.com/soruly/trace.moe-api/pkgs/container/trace.moe-api)                          |
| [trace.moe-media](https://github.com/soruly/trace.moe-media)           | [![GitHub Workflow Status](https://img.shields.io/github/workflow/status/soruly/trace.moe-media/Docker%20Image%20CI?style=flat-square)](https://github.com/soruly/trace.moe-media/actions)   | [![Docker Image Size](https://img.shields.io/docker/image-size/soruly/trace.moe-media/latest?style=flat-square)](https://github.com/soruly/trace.moe-media/pkgs/container/trace.moe-media)                    |
| [trace.moe-worker-hasher](https://github.com/soruly/trace.moe-worker)  | [![GitHub Workflow Status](https://img.shields.io/github/workflow/status/soruly/trace.moe-worker/Docker%20Image%20CI?style=flat-square)](https://github.com/soruly/trace.moe-worker/actions) | [![Docker Image Size](https://img.shields.io/docker/image-size/soruly/trace.moe-worker-hasher/latest?style=flat-square)](https://github.com/soruly/trace.moe-worker/pkgs/container/trace.moe-worker-hasher)   |
| [trace.moe-worker-loader](https://github.com/soruly/trace.moe-worker)  | [![GitHub Workflow Status](https://img.shields.io/github/workflow/status/soruly/trace.moe-worker/Docker%20Image%20CI?style=flat-square)](https://github.com/soruly/trace.moe-worker/actions) | [![Docker Image Size](https://img.shields.io/docker/image-size/soruly/trace.moe-worker-loader/latest?style=flat-square)](https://github.com/soruly/trace.moe-worker/pkgs/container/trace.moe-worker-loader)   |
| [trace.moe-worker-watcher](https://github.com/soruly/trace.moe-worker) | [![GitHub Workflow Status](https://img.shields.io/github/workflow/status/soruly/trace.moe-worker/Docker%20Image%20CI?style=flat-square)](https://github.com/soruly/trace.moe-worker/actions) | [![Docker Image Size](https://img.shields.io/docker/image-size/soruly/trace.moe-worker-watcher/latest?style=flat-square)](https://github.com/soruly/trace.moe-worker/pkgs/container/trace.moe-worker-watcher) |

1. Copy `.env.example` to `.env` and update config as you need

```
WWW_PORT=3310
API_PORT=3311
MEDIA_PORT=3312
ADMINER_PORT=3313
SOLR_PORT=8983

NEXT_PUBLIC_API_ENDPOINT=http://172.17.0.1:3311         # external URL
NEXT_PUBLIC_MEDIA_ENDPOINT=http://172.17.0.1:3312       # external URL
NEXT_PUBLIC_ANILIST_ENDPOINT=https://graphql.anilist.co # external URL

WATCH_DIR=/home/soruly/trace.moe-incoming/  # suggest using fast drives
MEDIA_DIR=/home/soruly/trace.moe-media/     # suggest using large drives
HASH_DIR=/home/soruly/trace.moe-hash/       # suggest using fast drives
SOLR_DIR=/home/soruly/mycores               # suggest using super fast drives
MYSQL_DIR=/home/soruly/mysql

TRACE_MEDIA_SALT=YOUR_TRACE_MEDIA_SALT
TRACE_API_SALT=YOUR_TRACE_API_SALT
TRACE_API_SECRET=YOUR_TRACE_API_SECRET
MARIADB_ROOT_PASSWORD=YOUR_MARIADB_ROOT_PASSWORD
```

2. Ensure the directories are created and are empty before starting the containers. And for `SOLR_DIR`, you must set the owner to uid,gid to 8983

```bash
mkdir -p /home/soruly/trace.moe-incoming/
mkdir -p /home/soruly/trace.moe-media/
mkdir -p /home/soruly/trace.moe-hash/
mkdir -p /home/soruly/mycores
mkdir -p /home/soruly/mysql
sudo chown 8983:8983 /home/soruly/mycores
```

3. Start the containers

```bash
docker-compose up -d
```

4. Once the cluster is ready, you can adding files to incoming folder

The files in incoming folder must be contained in 1-level folders, e.g.

```
trace.moe-incoming/foo.mp4  <= not ok
trace.moe-incoming/1/foo.mp4 <= ok
trace.moe-incoming/1/bar/foo.mp4 <= ok, but will be uploaded as /1/foo.mp4
```

trace.moe assumes the folder name is anilist ID. If your data is not related to anilist ID, you can use any id/text you want. The system would still work without anilist data.

Do not create the folders in the incoming directory. You should first put video files in folders, then move/copy the folders into the incoming directory.

Once the video files are in incoming directory, the watcher would start uploading the video to trace.moe-media. When it's done, it would delete the video in incoming directory. After Hash worker and Load workers complete the job, you can search the video by image in your www website at WWW_PORT.

5. Multi-Solr-Core Mode

```bash
sudo rm -rf /home/soruly/mycores
sudo mkdir -p /home/soruly/mycores
sudo chown 8983:8983 /home/soruly/mycores

docker run --name solr -d -p 8983:8983 -v /home/soruly/mycores:/var/solr ghcr.io/soruly/liresolr:latest solr-precreate cl_0 /opt/solr/server/solr/configsets/liresolr
docker stop solr
docker rm solr

docker run --name solr -d -p 8983:8983 -v /home/soruly/mycores:/var/solr ghcr.io/soruly/liresolr:latest solr-precreate cl_1 /opt/solr/server/solr/configsets/liresolr
docker stop solr
docker rm solr

docker run --name solr -d -p 8983:8983 -v /home/soruly/mycores:/var/solr ghcr.io/soruly/liresolr:latest solr-precreate cl_2 /opt/solr/server/solr/configsets/liresolr
docker stop solr
docker rm solr

docker run --name solr -d -p 8983:8983 -v /home/soruly/mycores:/var/solr ghcr.io/soruly/liresolr:latest solr-precreate cl_3 /opt/solr/server/solr/configsets/liresolr
docker stop solr
docker rm solr

# Then change docker-compose.yml, make SOLA_SOLR_SIZE to 4
# and add "- SOLR_HEAP=2G" as environment to liresolr.
# 4 and 2G are just reference and can be other value.

# Then docker-compose up -d

docker stop tracemoe-hasher-1

# Move files at /home/soruly/trace.moe-media to /home/soruly/trace.moe-incoming

# Restart watcher
docker restart tracemoe-watcher-1

# After watcher finishing its uploading workload, go to adminer and update the cl table
UPDATE cl SET status='HASHED'

# Restart loader to rebalance the hash files to multi solr cores
docker restart tracemoe-loader-1
```

6. Milvus-Search Mode

```bash
cp milvus.yaml.example milvus.yaml

# Then change minio.accessKeyID, minio.secretAccessKey
# and minio.bucketName in milvus.yaml to your S3 service.
# Note that your S3 service is connected by minio gateway via .env config

# Then docker-compose up -d
```
