#!/bin/bash

if [ $# -ne 3 ]; then
    echo "need 3 args"
    echo "1st arg is # of nodes"
    echo "2nd arg is elapse time in hours"
    echo "3rd arg is elapse time in minutes"
    exit 1
fi
echo "hybrid"
echo "# of nodes is $1 (# of proc is $1)"
echo "elapse time is $2 [hr]"
echo "elapse time is $3 [min]"
pjsub --interact --rsc-list "node=$1" --rsc-list "elapse=$2:$3:0"

