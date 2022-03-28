# Monarch Ingest Dagster Docker config

This is semi-experimental. 

Maybe starting with a plain Ubuntu 20.02 isn't ideal, to install docker I followed: https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04 and then ran `sudo usermod -aG docker $USER`

## Creating the docker image

```
docker image rm ingest || true
docker build -t ingest .
```

## Running the docker image

```
docker run --rm --name ingest --publish=3000:3000 ingest dagit -f monarch_ingest/ingest_pipeline.py -h 0.0.0.0 -p 3000
```
