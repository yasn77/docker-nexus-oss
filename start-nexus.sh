#!/bin/bash

source /docker.env
export RUN_AS_USER=root

/opt/nexus/bin/nexus $1
