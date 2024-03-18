#!/bin/sh

writefile=$1
writestr=$2


if [ $# -eq 2 ]
then

    if [ -e "$writefile" ]
    then
        echo "$writestr">"$writefile"
        exit 0
    else
        filedir=$(dirname "$writefile")
        mkdir -p "$filedir"
        touch "$writefile"
        if [ -e "$writefile" ]
        then
            echo "$writestr">"$writefile"
        else
            echo "Error in file creation"
            exit 1
        fi

    fi  

else
    echo "Invalid number of inputs"
    exit 1
fi