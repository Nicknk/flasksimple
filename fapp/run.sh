#!/usr/bin/env bash

PORT="${PORT:5000}"
ADDRESS="${ADDRESS:0.0.0.0}"

OPTIONS=()

echo "${PORT}"
echo "${ADDRESS}"
echo "${DEBUG}"

OPTIONS=( "-p" "${PORT}" "-a" "${ADDRESS}" )

if [ -z "${DEBUG}" ]; then
    OPTIONS+=('-d True')
fi

exec python ./app.py "{$OPTIONS[@]}"