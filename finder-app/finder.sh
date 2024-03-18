#!/bin/sh
filesdir=$1
searchstr=$2

if [ $# -eq 2 ]
then

if [ -d "$filesdir" ]
then

X=$(grep -r "$searchstr" "$filesdir" | wc -l)
Y=$(grep -r -l "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $Y and the number of matching lines are $X"

else

echo "Input directory does not exist"
exit 1
fi


else
echo "N inputs = $#"
echo "Invalid script number of inputs"
exit 1
fi




