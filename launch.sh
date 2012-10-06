#!/bin/bash

if [[ -z $1 ]]; then
    echo "You have to provide a script number"
    exit
fi

dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ ! -f "$dir/scripts/script-$1.sh" ]; then
    echo "No script found";
    exit
fi

imgs="$dir/images/img%02d.jpg"
generated="$dir/generated/video-$1.flv"

if [ -f $generated ]; then
    rm $generated
fi

source ./scripts/script-$1.sh
