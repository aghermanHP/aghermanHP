#! /bin/sh

echo "Dati primul sir:"
read sir1
echo "Dati sirul 2:"
read sir2

sir1Length=`echo -n $sir1 | wc -m`
echo "sirul1 are:: $sir1Length"
sir2Length=`echo -n $sir2 | wc -m`
echo "sirul2 are:: $sir2Length"

if [ $sir1Length -eq $sir2Length ];
then echo "Sirurile Sunt Egale :)"
else
echo "Sirurile nu sunt egale"
fi
exit 0 