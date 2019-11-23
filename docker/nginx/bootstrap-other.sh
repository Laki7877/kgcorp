#!/bin/bash

docker exec -it kgcorp-nginx bash
apt-get update && apt-get -y install curl wget