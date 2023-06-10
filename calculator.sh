#!/bin/bash

read -p "Enter first number: " num_1
echo ${num_1}

read -p "Enter operator: " operator
echo ${operator}

read -ep "Enter second number: " num_2 
echo ${num_2}

case ${operator} in 
    '+')
        echo "Answer: $((num_1+num_2))"
        ;;

    '-')
        echo "Answer: $((num_1-num_2))"
        ;;

    '*')
        echo "Answer: $((num_1*num_2))"
        ;;

    '/')
        echo "Answer: $((num_1/num_2))"
        ;;
        
    '%')
        echo "Answer: $((num_1%num_2))"
        ;;

    '**')
        echo "Answer: $((num_1**num_2))"
        ;;
    *) echo "Invalid Operator"
	   exit;;
esac










