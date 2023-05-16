#!/bin/bash

read -p "Введите путь к дирректории: " FROMDIR

dir=$(ls -l "$FROMDIR" | tr -s ' ' '\t' | cut -f '3' | sort -u)
for i in $dir; do
    mkdir -p "$FROMDIR/$i"
done

dirfile=$(ls -l "$FROMDIR" | tr -s ' ' '\t' | cut -f '3 9')
count=0
for i in $dirfile; do
    count=$((count+1))
        if (($count%2))
            then
                dir=$i
                echo $dir = $i zero
            else
                if [ -f "$FROMDIR/$i" ]
                    then
                        cp "$FROMDIR/$i" "$FROMDIR/$dir/$i"
                fi
        fi
done
