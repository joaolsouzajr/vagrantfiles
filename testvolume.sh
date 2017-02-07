#!/bin/sh

#cria novo arquivo em tmp
docker run -it -v $PWD/volume:/tmp fedora touch /tmp/novoarq.txt
