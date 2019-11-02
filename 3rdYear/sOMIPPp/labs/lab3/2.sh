#! /bin/sh

echo "dati int1:"
read int1
echo "dati int2:"
read int2
echo "dati int3:"
read int3

if [ $int1 -gt $int2 ] && [ $int1 -gt $int3 ];
then echo "Greater is first int1: $int1"
elif [ $int2 -gt $int1 ] && [ $int2 -gt $int3 ];
then echo "Greater is secund int2: $int2"
elif [ $int3 -gt $int2 ] && [ $int3 -gt $int1 ];
then echo "Greater is third int3:$int3"
elif [ $int3 -eq $int2 ] && [ $int3 -gt $int1 ];
then echo "Greater is third int3:$int3 and int2:$int2"
elif [ $int2 -eq $int1 ] && [ $int2 -gt $int3 ];
then echo "Greater is third int2:$int2 and int1:$int1"
elif [ $int3 -eq $int1 ] && [ $int3 -gt $int2 ];
then echo "Greater is third int3:$int3 and int1:$int1"
fi
exit 0 