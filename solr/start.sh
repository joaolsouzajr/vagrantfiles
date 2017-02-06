#!/bin/bash

mkdir -p $PWD/cores/normativo
mkdir -p $PWD/cores/gestao

sudo chown -R 8983:8983 cores

solr_home=/opt/solr/server/solr

docker run -t --name mysolr -d \
  -v $PWD/cores/normativo:$solr_home/normativo \
  -v $PWD/cores/gestao:$solr_home/gestao \
  -p 8983:8983 lab-solr
