#!/usr/bin/env bash

# Prerequisite
# Make sure you set secret enviroment variables in Travis CI
# DOCKER_USERNAME
# DOCKER_PASSWORD

set -e
image="joxertmd/git-bash"

docker build --no-cache -t ${image}:$TRAVIS_TAG .
docker tag ${image}:$TRAVIS_TAG ${image}:latest
docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
docker push ${image}:$TRAVIS_TAG
docker push ${image}:latest

