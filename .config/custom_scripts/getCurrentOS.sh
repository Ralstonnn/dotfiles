#!/bin/bash

OS=$(uname -s)

case $OS in
    Linux)
        echo "linux"
        ;;
    Darwin)
        echo "mac"
        ;;
    CYGWIN*|MINGW32*|MSYS*|MINGW*)
        echo "windows"
        ;;
    *)
        echo "unknown"
        ;;
esac

