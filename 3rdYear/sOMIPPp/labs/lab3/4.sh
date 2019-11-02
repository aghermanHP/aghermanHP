#! /bin/sh

echo "dati un numar, pentru a iesi tastati un numar par"
read number

# fie=$(( number%2 ))
numberOfNums=1

until [ $(( number%2 )) = 0 ]
do 
echo "__pentru a iesi tastati un numar par sau dati alt numar__"
read number
numberOfNums=$((numberOfNums+1))
done

echo "ati introdus $numberOfNums numere" 
