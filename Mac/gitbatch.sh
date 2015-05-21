#!/bin/sh

RED='\033[0;31m'
NC='\033[0m'

for dir in `ls` 
do
    dir=${dir%*/}
    cd ${dir##*/}
    echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
    printf "${RED}"    
    echo `pwd`
    printf "${NC}"
    echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
    git $1
    cd ..
done
