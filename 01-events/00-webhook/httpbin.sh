#!/bin/bash

export GUNICORN_CMD_ARGS="--capture-output --error-logfile - --access-logfile - --access-logformat '%(h)s %(t)s %(r)s %(s)s Host: %({Host}i)s}'"

docker run -d -p 8080:80 \
	-e GUNICORN_CMD_ARGS="${GUNICORN_CMD_ARGS}" \
	kennethreitz/httpbin
