#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Please specify all the parameters:"
    echo "writer.sh [writefile] [writestr]"  
    echo "[writefile]: file full path + filename"
    echo "[writestr]: string to write inside writefile"
    exit 1
elif [ -d "$1" ]; then
    echo "The first argument must be a file path, no file path found at: $1"
    exit 1
fi

writefile=$1
writestr=$2

# Create the directory in case it is not created yet
path=$(dirname $writefile)
mkdir -p $path

echo "$writestr" > $writefile