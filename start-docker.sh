#!/usr/bin/env sh
docker rm buwiki
docker run \
    --name buwiki \
    --publish 80:8000 \
    -v "$PWD/mkdocs.yml:/workdir/mkdocs.yml" \
    -v "$PWD/docs:/workdir/docs" \
    buwiki:latest
