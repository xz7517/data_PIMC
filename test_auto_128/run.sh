#!/bin/bash

maxtask=90
current=$(date +%s)

if [ $# -ge 1 ] ;then
    maxtask=$1
fi

for i in $(seq 30 10 $maxtask); do
    for j in $(seq 1 1 10); do
        seed=`expr $current + $j`
        ./a.out $i $seed > result_${i}_${j}.txt 2>&1 & 
    done
done
