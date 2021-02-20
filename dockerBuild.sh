#!/bin/bash

set -o errexit -o nounset

docker build -t merusso/spring-boot-demo . -f docker/Dockerfile

