#!/bin/bash

sortarray () {
    for ((i=0; i <= $((${#array[@]} - 2)); ++i))
    do
        for ((j=((i + 1)); j <= ((${#array[@]} - 1)); ++j))
        do
            if [[ ${array[i]} -gt ${array[j]} ]]
            then
                # echo $i $j ${array[i]} ${array[j]}
                tmp=${array[i]}
                array[i]=${array[j]}
                array[j]=$tmp         
            fi
        done
    done
}
IFS=','
read -a array
size=${#array[@]}

sortarray 0 $((size-1)) array
echo "$(IFS=,;echo "${array[*]}")"
