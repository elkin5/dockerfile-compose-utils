#!/bin/sh

#compiled

cd /app
echo "Compilado desde el docker" >> compile.txt

exec "$@"
