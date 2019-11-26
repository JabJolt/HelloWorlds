#!/usr/bin/env bash

op_arr=("+" "-" "/" "%" "*" "**")

while :; do
        read arg0 arg1 arg2
        if [[ "$arg0" == "exit" ]]; then
                echo bye
                break
        elif [[ ! "${op_arr[*]}" =~ "$arg1" || -z "$arg1" ]]; then
                echo error
                break
        fi
        echo $(( ${arg0}${arg1}${arg2} ))
done