#!/bin/sh
# usage: ./start_docker.sh <GPU number>
docker build docker -t lidardocker && \
docker run -u $(id -u):$(id -g) --gpus='all' --rm -it -v /data:/data -v /data2:/data2 -v /data3:/data3 -e USER=$USER -e CUDA_VISIBLE_DEVICES=$1 -e HOME=/data/$USER -w $PWD lidardocker bash

