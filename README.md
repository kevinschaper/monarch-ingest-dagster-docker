# Monarch Ingest Dagster Docker config

This is semi-experimental. 

## Creating the docker image

```
docker image rm ingest || true
docker build -t ingest .
```

## Running the docker image

```
docker run --rm --name ingest --publish=3000:3000 ingest dagit -f monarch_ingest/ingest_pipeline.py -h 0.0.0.0 -p 3000
```
