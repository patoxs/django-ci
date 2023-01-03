#!/bin/sh 
set -e

echo "[exec manage.py]"

sh -c "./manage.py $*"

