# Grub-2.0 
Grub is a system for crawling and indexing documents. This is a work in progress.

# Deploy a Solr "Neural" Indexer.
These scripts deploy a single Solr instance running on Google Cloud.

There is also a [Docker version of Solr available](https://hub.docker.com/_/solr), if you don't use Google Cloud.

## Option #1 - Run on Google Cloud
Start by creating a file called secrets.sh:

```
$ vi secrets.sh
TOKEN=f00bar
:x
```

Next, deploy the instance:
```
$ ./deploy-solr.sh
```

Instance will be running in 2.5 minutes, listening on port 8389.

URL goes like: http://solr:password@x.x.x.x:8389

## Option #2 - Run a Docker Container
Run Solr in a Docker container:

```
 docker run -p 8983:8983 -t solr
```

# API

## Fastener
Deploy a controller box for managing spot Solr instances using an API. The scripts should be copied to Google Compute instance templates.

```
$ ./deploy-fastener.sh
```

Instance will be running and listening on port 80.