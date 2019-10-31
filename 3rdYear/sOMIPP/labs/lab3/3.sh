#! /bin/sh
litera=a
until [ $litera = "q" ]
do
echo "dati o litera:"
read litera
sir="${sir}$litera"
echo "pentru a iesi introduceti q"
done
echo "Sirul introdus este: $sir"
exit 0 