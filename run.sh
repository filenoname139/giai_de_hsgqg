#!/bin/bash
if [ -z "$1" ]; then
    echo "error: Please provide a file name"
    exit 1
fi
FILE_NAME=$1
EXE_NAME="${EXE_NAME%.*}"
g++ FILE_NAME -o EXE_NAME
if [ $? -eq 0 ]; then
    echo "-----------------------------"
    echo "Running: FILE_NAME"
    echo "-----------------------------"
    ./"$EXE_NAME" < "$2"
else
    echo "-----------------------------"
    echo "Build failed"
fi
