#!/bin/sh

MYSELF=$(realpath $0)
DIRNAME=$(dirname $MYSELF)
DIR=$(realpath $DIRNAME/..)

. $DIRNAME/funcs.sh

assign_docker_command

$DOCKER run --rm --name ansible -it -v $DIR:/tmp/ansible:z --workdir=/tmp/ansible ansible:latest
