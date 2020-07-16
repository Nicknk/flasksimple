#!/usr/bin/env bash

if [ -n "${DEBUG}" ]; then
    exec python ./app.py -d 1
else
    exec python ./app.py
fi