#!/bin/sh


echo "Server started. Listening on port 12345..."

while true; do
    nc -l 12345
done
