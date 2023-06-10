#!/bin/bash

read -p "Enter first number: " num_1
echo ${num_1}

read -p "Enter operator: " operator
echo ${operator}

read -ep "Enter second number: " num_2 
echo ${num_2}

case ${operator} in 
    '+')
        echo "Answer: $((num_1+num_2))"     # Addition
        ;;

    '-')
        echo "Answer: $((num_1-num_2))"     # Subtraction
        ;;

    '*')
        echo "Answer: $((num_1*num_2))"     # Multiplication
        ;;

    '/')
        echo "Answer: $((num_1/num_2))"     # Division
        ;;
        
    '%')
        echo "Answer: $((num_1%num_2))"     # Modulus
        ;;

    '**')
        echo "Answer: $((num_1**num_2))"       # Exponent
        ;;
    *) echo "Invalid Operator"
	   exit;;
esac










