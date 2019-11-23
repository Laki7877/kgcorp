#!/bin/bash

docker run -p 9500:80 -v $(pwd)/static:/usr/share/nginx/html --rm --name kgcorp-nginx ibmlakisik/kgcorp:nginx.v1.0