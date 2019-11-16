#!/usr/bin/env bash

#work!
f_deduct () {
	if [[ $1 -eq 1 ]]; then
		echo 1
		return
	fi
	f_deduct $(( $1 - 1 ))
}

f_deduct 10
#

#works
f_factorial () {
        local l_var=$1
        if [[ $1 -eq 1 ]]; then
                echo $1; return
        fi
        #echo "curr value is $1"
        let l_var=$1-1
        #echo "l_var=$l_var"
        echo $(( $1 * `f_factorial $l_var` ))
}

f_factorial 3
#