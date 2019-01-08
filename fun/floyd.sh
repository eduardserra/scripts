#
# floyd.sh
# Plots Floyd's triangle
#
# Carlos Alonso
# 2019/01/08

#!/bin/bash

clear
echo -n "Number of rows:"
read rows
# Check if rows is a number
# -eq operator works only with numbers
# Uncomment next line to see test -eq behavior
#if ! test $rows -eq $rows
if ! test $rows -eq $rows  2> /dev/null
    then
        echo "Integers only"
else

    for ((i=1;i <= rows; i++))
    do
            for ((j=0; j < i; j++))
            do
                echo -n "*" 
            done
            echo
    done     
fi